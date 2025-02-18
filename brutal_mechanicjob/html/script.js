ChoosedButton = 0
InSubMenu = false
DiagnosticRun = false
CanUpdate = false
ChoosedPlayer = null
Problems = 0
Currentvehicle = null
ShowTaskMenu = true

if (localStorage.getItem("ShowTaskMenu") != "null"){
  ShowTaskMenu = localStorage.getItem("ShowTaskMenu")
}
else{
  localStorage.setItem("ShowTaskMenu", ShowTaskMenu)
}

window.addEventListener('message', function(event) {
    let data = event.data

    if (data.action === "OpenJobMenu"){
      InteractionsTable = data.interactionstable
      CreateJobMenu()
    }
    else if (data.action === "OpenInteractionMenu"){
      InteractionTable = {"Type" : data.type, "Label" : data.label, "Table" : data.table}
      CreateInteractionMenu()
    }
    else if (data.action === "OpenArmory"){
      CreateArmoryMenu()
    }
    else if (data.action === "OpenBillingMenu"){
      ClosestPlayers = data.closestplayers
      BasicBills = data.basicbills
      ShowBillCreator()
    }
    else if (data.action === "OpenShopMenu"){
      ShopItems = data.items
      MoneyForm = data.moneyform
      Card = data.card
      CreateShop(Card)
    }
    else if (data.action === "TaskMenu"){
      if (ShowTaskMenu){
        ShowTaskMenu = false
        $(".tasks").css("display", "none")
      }
      else{
        ShowTaskMenu = true
      }
      localStorage.setItem("ShowTaskMenu", ShowTaskMenu)
      $.post('https://'+GetParentResourceName()+'/UseButton', JSON.stringify({action:"TaskMenu", value:ShowTaskMenu}))
    }
    else if (data.action === "OpenTaskMenu"){
      Tasks = data.table
      CreateTasks()
    }
    else if (data.action === "RefreshTaskMenu"){
      RefreshTasks()
    }
    else if (data.action === "OpenMechanicCallsMenu"){
      MechanicCalls = data.table
      ShowCalls()
    }
    else if (data.action === "OpenMechanicCallMenu"){
      ShowCreateCall()
    }
    else if (data.action === "OpenDiagnosticTablet"){
      if (Currentvehicle != data.vehicle){
        BackToStart()
      }
      Currentvehicle = data.vehicle
      VehicleData = data.vehicledata
      VehiclePlate = data.plate
      VehicleClass = data.class
      DiagnosticTexts = data.texts
      RunTime = data.time
      ShowDiagnostic()
      if (CanUpdate){
        UpdateDiagnostic()
      }
    }
    else if (data.action === "OpenLiftMenu"){
      ShowVehicleLift()
    }
    else if (data.action === "ControlReleased"){
      Control = data.control
      if(Control === "up" || Control === "down" ){
        ChangeFocus(Control)
      }
      else if(Control === "enter"){
        document.getElementById("circle_"+ChoosedButton).click()
      }
      else if(Control === "backspace"){
        if(InSubMenu){
          BackJobMenu()
        }
        else{
          Close()
        }
      }
    }
    else if (data.action === "close"){
      Close()
    }
})

document.onkeydown = function(data) {
  if (event.key == 'Escape') {
    Close()
  }
}

function Close(){
  HideCalls()
  HideCreateCall()
  CloseShop()
  HideJobMenu()
  HideInteractionMenu()
  HideDiagnostic()
  HideVehicleLift()
  HideBillCreator()
  setTimeout(function(){
    $('.modal').modal('hide')
  },500)
  $.post('https://'+GetParentResourceName()+'/UseButton', JSON.stringify({action:"Close"}))
}

/////////////////////////////////////////////////////////////////////      |  _ \  __ )        \  |  ____|  \  | |   | \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
/////////////////////////////////////////////////////////////////////      | |   | __ \       |\/ |  __|     \ | |   | \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
/////////////////////////////////////////////////////////////////////  \   | |   | |   |      |   |  |     |\  | |   | \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
///////////////////////////////////////////////////////////////////// \___/ \___/ ____/      _|  _| _____|_| \_|\___/  \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
                                           
function ChangeFocus(direction){
  if(direction === "up"){
    if(InSubMenu === false){
      if(InteractionsTable.length >= ChoosedButton +2){
        ChoosedButton++
      }
      else if(InteractionsTable.length === ChoosedButton +1){
        ChoosedButton = 0
      }
    }
    else{
      if(InteractionsTable[SubNumber].table.length > ChoosedButton + 1){
        ChoosedButton++
      }
      else if(InteractionsTable[SubNumber].table.length === ChoosedButton +1){
        ChoosedButton = 0
      }
    }
  }
  else{
    if(InSubMenu === false){
      if(ChoosedButton === 0){
        ChoosedButton = InteractionsTable.length -1
      }
      else{
        ChoosedButton = ChoosedButton -1
      }
    }
    else{
      if(ChoosedButton === 0){
        ChoosedButton = InteractionsTable[SubNumber].table.length -1
      }
      else{
        ChoosedButton = ChoosedButton -1
      }
    }
  }

  if(InSubMenu){
    for(let i=0; i<InteractionsTable[SubNumber].table.length; i++){
      document.getElementById("circle_"+i).classList.remove("hovered_circle")
    }
    Circle_Label = InteractionsTable[SubNumber].table[ChoosedButton].label
  }
  else{
    for(let i=0; i<InteractionsTable.length; i++){
      document.getElementById("circle_"+i).classList.remove("hovered_circle")
    }
    Circle_Label = InteractionsTable[ChoosedButton].label
  }

  document.getElementById("circle_"+ChoosedButton).classList.add("hovered_circle")
  $(".circles_label").html(Circle_Label)
}

function CreateJobMenu(){
  InSubMenu = false
  let Num_elements = InteractionsTable.length
  let Angle = 144/(Num_elements-1)
  let Rot = -108
  ChoosedButton = 0

  document.getElementById("job_menu").style.animation = "ShowJobMenu 1s ease";

  $(".job_menu").css("display","block")

  $(".circle_container").html("")
  for(let i=0; i<Num_elements; i++){
    if (InteractionsTable[i].table == undefined){
      $(".circle_container").append(`
      <button class="circle_element" id="circle_${i}" onclick="SendBackIntButton(id, false)">${InteractionsTable[i].icon}</button>
      `)
    }
    else{
      $(".circle_container").append(`
      <button class="circle_element" id="circle_${i}" onclick="ChangeJobButtons(id)">${InteractionsTable[i].icon}</button>
      `)
    }
    
    $(".job_menu #circle_"+i).css("transform", "rotate("+Rot+"deg) translate(150px) rotate("+Rot*(-1)+"deg)")
    Rot = Rot - Angle
  }
  document.getElementById("circle_"+ChoosedButton).classList.add("hovered_circle")
  $(".circles_label").html(InteractionsTable[0].label)
}

function HideJobMenu(){
  document.getElementById("job_menu").style.animation = "HideJobMenu 1s ease";
  setTimeout(function(){
    $(".job_menu").css("display","none")
  },900)
}

function ChangeJobButtons(id){
  InSubMenu = true
  document.getElementById("job_menu").style.animation = "ChangeJobMenu 0.8s ease";

  SubNumber = id.split('_').pop();
  let Num_elements = InteractionsTable[SubNumber].table.length
  let Angle = 144/(Num_elements-1)
  let Rot = -108

  setTimeout(function(){
    $(".circle_container").html("")
    for(let i=0; i<Num_elements; i++){
      $(".circle_container").append(`
      <button class="circle_element" id="circle_${i}" onclick="SendBackIntButton(id, true)">${InteractionsTable[SubNumber].table[i].icon}</button>
      `)
      $(".job_menu #circle_"+i).css("transform", "rotate("+Rot+"deg) translate(150px) rotate("+Rot*(-1)+"deg)")
      Rot = Rot - Angle
    }
    ChoosedButton = 0
    document.getElementById("circle_"+ChoosedButton).classList.add("hovered_circle")
    $(".circles_label").html(InteractionsTable[SubNumber].table[0].label)
  },400)

  if (SubNumber == 2){
	$.post('https://'+GetParentResourceName()+'/UseButton', JSON.stringify({action:"JobMenuObject"}))
  }
}

function BackJobMenu(){
  InSubMenu = false
  let Num_elements = InteractionsTable.length
  let Angle = 144/(Num_elements-1)
  let Rot = -108

  document.getElementById("job_menu").style.animation = "BackJobMenu 0.8s ease";

  setTimeout(function(){
    $(".circle_container").html("")
    for(let i=0; i<Num_elements; i++){
      if (InteractionsTable[i].table == undefined){
        $(".circle_container").append(`
        <button class="circle_element" id="circle_${i}" onclick="SendBackIntButton(id, false)">${InteractionsTable[i].icon}</button>
        `)
      }
      else{
        $(".circle_container").append(`
        <button class="circle_element" id="circle_${i}" onclick="ChangeJobButtons(id)">${InteractionsTable[i].icon}</button>
        `)
      }
      $(".job_menu #circle_"+i).css("transform", "rotate("+Rot+"deg) translate(150px) rotate("+Rot*(-1)+"deg)")
      Rot = Rot - Angle
    }
    ChoosedButton = 0
    document.getElementById("circle_"+ChoosedButton).classList.add("hovered_circle")
    $(".circles_label").html(InteractionsTable[0].label)
  },400)
}

function SendBackIntButton(id, value){
  let idnumber = id.split('_').pop()
  
  if (value == true){
    let number = +SubNumber + 1
    for(let i=0; i<InteractionsTable[SubNumber].table.length; i++){
      if (i == idnumber){
        $.post('https://'+GetParentResourceName()+'/UseButton', JSON.stringify({action:"JobMenu", id:InteractionsTable[SubNumber].table[i].id, number}))
        break
      }
    }
  }
  else{
    for(let i=0; i<InteractionsTable.length; i++){
      if (i == idnumber){
        HideJobMenu()
        $.post('https://'+GetParentResourceName()+'/UseButton', JSON.stringify({action:"JobMenu", id:InteractionsTable[i].id, idnumber}))
        break
      }
    }
  }
}


//////////////////////////////////////////////////////////////// INTERACTIONS \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

function CreateInteractionMenu(){
  $(".interactions h2").html(InteractionTable.Label)

  $(".int_con_sec").html("")
  for(let i=0; i<InteractionTable.Table.length; i++){
    $(".int_con_sec").append(`
    <div class="col">
        <div class="d-flex flex-column justify-content-center align-items-center">
            <button class="long_btn mb-2" id="${InteractionTable.Table[i].id}" onclick="SetDress(id)">${InteractionTable.Table[i].label}</button>
        </div>
    </div>
    `)
    if (InteractionTable.Table[i].label.length > 17){
      $("#"+InteractionTable.Table[i].id).css("font-size", "15px")
    }
  }
  document.getElementById("interactions").style.animation = "ShowIneractionMenu 0.7s ease";
  $(".interactions").css("display","block")
}

function SetDress(id){
  Close()
  $.post('https://'+GetParentResourceName()+'/UseButton', JSON.stringify({action:"Interactionmenu", id, table:InteractionTable}))
}

function CreateArmoryMenu(){
  $(".interactions h2").html("Storage")

  $(".int_con_sec").html("")
  $(".int_con_sec").html(`
		<div class="col">
			<div class="d-flex flex-column justify-content-center align-items-center">
			<button class="long_btn mb-2" onclick="Armory()">Armory</button>
			</div>
		</div>
		<div class="col">
			<div class="d-flex flex-column justify-content-center align-items-center">
			<button class="long_btn mb-2" onclick="Buy()">Shop</button>
			</div>
		</div>
	`)

  document.getElementById("interactions").style.animation = "ShowIneractionMenu 0.7s ease";
  $(".interactions").css("display","block")
}

function Armory(){
  Close()
  $.post('https://'+GetParentResourceName()+'/UseButton', JSON.stringify({action:"Armory"}))
}

function Buy(){
  HideInteractionMenu()
  $.post('https://'+GetParentResourceName()+'/UseButton', JSON.stringify({action:"ArmoryShop"}))
}

function HideInteractionMenu(){
  document.getElementById("interactions").style.animation = "HideInteractionMenu 0.7s ease";
  setTimeout(function(){
    $(".interactions").css("display","none")
  },680)
}

///////////////////////////////////////////////////////////////// SHOP MENU \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

function CreateShop(value){
  $(".shop").css("display", "block")
  document.getElementById("shop").style.animation = "Show_Menu 0.5s ease"

  if (value == true){
    $(".slider_btn").css("display", "block")
    $("#shop_back").css("display", "block")
  }
  else{
    $(".slider_btn").css("display", "none")
    $("#shop_back").css("display", "none")
  }

  $(".shop_elements_container").html("")
  for(let i=0; i<ShopItems.length; i++){
    $(".shop_elements_container").append(`
    <div class="col">
        <div class="d-flex flex-column justify-content-center align-items-center">
            <div class="shop_element">
                <div class="price">${ShopItems[i].price+MoneyForm}</div>
                <img class="mx-auto d-block" src="assets/shop_items/${ShopItems[i].item}.png"></img>
                <h4>${ShopItems[i].label}</h4>
                <div class="mx-auto d-block">
                    <div class="input-group input-group-lg num">
                        <input class="form-control" id="${ShopItems[i].item}" type="text" autofocus="autofocus" value="0" oninput="setlenght(id)" onkeypress="return isNumber(event)">
                    </div>
                </div>
            </div>
        </div>
    </div>
    `)
  }
}

function BuyInShop(){
  BuyItems = []
  for (let i = 0; i < ShopItems.length; i++) {
    if (document.getElementById(ShopItems[i].item).value > 0){
      BuyItems.push([ShopItems[i].item, document.getElementById(ShopItems[i].item).value, ShopItems[i].price, ShopItems[i].label])
    }
  }

  if (BuyItems.length > 0){
    let Element = document.getElementById("slider_shop")
    let Left = Element.offsetLeft
    if (Left == 0){
      $.post('https://'+GetParentResourceName()+'/UseButton', JSON.stringify({action:"BuyInShop", BuyItems, paytype:"money"}))
    }
    else{
      $.post('https://'+GetParentResourceName()+'/UseButton', JSON.stringify({action:"BuyInShop", BuyItems, paytype:"bank"}))
    }
  }

  setTimeout(function(){
    for (let i = 0; i < ShopItems.length; i++) {
      document.getElementById(ShopItems[i].item).value = 0
    }
    changemoney()
  }, 200)
}

function changemoney(){
  let AllMoney = 0
  for (let i = 0; i < ShopItems.length; i++) {
    AllMoney += ShopItems[i].price * document.getElementById(ShopItems[i].item).value
  }
  $('.checkout_container h3').html('TOTAL: '+AllMoney+'<money>'+MoneyForm+'</money>')
}

function ChangeSliderbtn(){
  let Element = document.getElementById("slider_shop")
  let Left = Element.offsetLeft
  if (Left == 0){
    Element.style.left = "50%"
  }
  else{
    Element.style.left = "0%"
  }
}

function CloseShop(){
  document.getElementById("shop").style.animation = "Hide_Menu 0.5s ease"
  setTimeout(function(){
    $(".shop").css("display", "none")
  }, 500)
}

/////////////////////////////////////////////////////////////// DIAGNOSTIC TABLET \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

function ShowDiagnostic(){
  document.getElementById("diagnostic_tablet").style.animation = "none"
  document.getElementById("diagnostic_tablet").style.animation = "showmenu 0.4s ease"
  $(".diagnostic_tablet").css("display", "block")
  $(".diagnostic_tablet").css("opacity", "1")
  $(".start_container#left .content").html(VehiclePlate)
  $(".start_container#right .content").html(VehicleClass)
}

function HideDiagnostic(){
  document.getElementById("diagnostic_tablet").style.animation = "hidemenu 0.4s ease"
  setTimeout(function(){
    if (DiagnosticRun){
      $(".diagnostic_tablet").css("opacity", "0")
    }
    else{
      $(".diagnostic_tablet").css("display", "none")
    }
  }, 350)
}

setTimeout(function(){
  PreloadTablet()
}, 3000)

function PreloadTablet(){
  DiagnosticRun = true
  document.getElementById("start_page").style.animation = "hide_page 0.8s ease"
  setTimeout(function(){
    $(".diagnostic_page").css("display", "block")
    $(".start_page").css("display", "none")
  }, 750)
  imgsOut()
  setTimeout(function(){
    BackToStart()
  }, 2500)
  setTimeout(function(){
    $(".diagnostic_tablet").css("display", "none")
  }, 3300)
}

function RunDiagnostic(){
  Problems = 0
  DiagnosticRun = true
  CanUpdate = false
  document.getElementById("start_page").style.animation = "hide_page 0.8s ease"
  setTimeout(function(){
    $(".diagnostic_page").css("display", "block")
    $(".start_page").css("display", "none")
  }, 750)
  imgsOut()

  $(".parts_element .status").html("CHECKING")
  $(".parts_element .description").css("display", "none")
  $(".parts_element .repair_btn").css("display", "none")

  $(".status_text").html('CHECKING')

  for (let i = 0; i < 4; i++) {
    document.getElementById("part"+i).classList.remove("problem")
    document.getElementById("hp"+i).classList.remove("problem")
    document.getElementById("part"+i).classList.remove("good")
    document.getElementById("hp"+i).classList.remove("good")

    document.getElementById("part"+i).style.animation = "diagnostic_parts_load "+RunTime/4+"s ease, appear_parts 1s ease"
    document.getElementById("part"+i).style.animationDelay = RunTime/4*i+"s, "+i*0.3+"s"
    document.getElementById("part"+i).style.animationFillMode = "both";

    document.getElementById("check_line"+i).style.animation = "diagnostic_line "+RunTime/4+"s ease"
    document.getElementById("check_line"+i).style.animationDelay = RunTime/4*i+"s"
    document.getElementById("check_line"+i).style.animationFillMode = "both";
  }

  appear()
}

const sleep = (time) => {
  return new Promise((resolve) => setTimeout(resolve, time))
}

const appear = async () => {
  for (let i = 0; i < VehicleData.length; i++) {
    if (DiagnosticRun == false){
      break
    }
    await sleep(RunTime/4*1000)
    if (DiagnosticRun == false){
      break
    }
    if (VehicleData[i]){
      Problems ++
      document.getElementById("part"+i).className += " problem";
      $(".parts_element#part"+i+" .status").html("PROBLEM")
      $(".parts_element#part"+i+" .description").css("display", "block")
      $(".parts_element#part"+i+" .description").html(DiagnosticTexts[i])
      $(".parts_element#part"+i+" .repair_btn").css("display", "block")
      document.getElementById("hp"+i).className += " problem";
    }
    else{
      document.getElementById("part"+i).className += " good";
      $(".parts_element#part"+i+" .status").html("GOOD")
      $(".parts_element#part"+i+" .description").css("display", "block")
      $(".parts_element#part"+i+" .description").html(DiagnosticTexts[4])
      document.getElementById("hp"+i).className += " good";
    }
    
    if (i == 3){
      $(".status_text").html("FINISHED")
      if (Problems > 0){
        $(".side_lines").attr("src","assets/lines_r.svg")
        $(".side_lines2").attr("src","assets/lines_r.svg")
      }
      else{
        $(".side_lines").attr("src","assets/lines_g.svg")
        $(".side_lines2").attr("src","assets/lines_g.svg")
      }
      CanUpdate = true
    }
  }
}

function UpdateDiagnostic(){
  Problems = 0
  for (let i = 0; i < 4; i++) {
    document.getElementById("part"+i).classList.remove("problem")
    document.getElementById("hp"+i).classList.remove("problem")
    document.getElementById("part"+i).classList.remove("good")
    document.getElementById("hp"+i).classList.remove("good")
  }

  for (let i = 0; i < VehicleData.length; i++) {
    if (VehicleData[i]){
      Problems ++
      document.getElementById("part"+i).className += " problem";
      $(".parts_element#part"+i+" .status").html("PROBLEM")
      $(".parts_element#part"+i+" .description").css("display", "block")
      $(".parts_element#part"+i+" .description").html(DiagnosticTexts[i])
      $(".parts_element#part"+i+" .repair_btn").css("display", "block")
      document.getElementById("hp"+i).className += " problem";
    }
    else{
      document.getElementById("part"+i).className += " good";
      $(".parts_element#part"+i+" .status").html("GOOD")
      $(".parts_element#part"+i+" .description").css("display", "block")
      $(".parts_element#part"+i+" .description").html(DiagnosticTexts[4])
      $(".parts_element#part"+i+" .repair_btn").css("display", "none")
      document.getElementById("hp"+i).className += " good";
    }
    
    if (i == 3){
      $(".status_text").html("FINISHED")
      if (Problems > 0){
        $(".side_lines").attr("src","assets/lines_r.svg")
        $(".side_lines2").attr("src","assets/lines_r.svg")
      }
      else{
        $(".side_lines").attr("src","assets/lines_g.svg")
        $(".side_lines2").attr("src","assets/lines_g.svg")
      }
    }
  }
}

function BackToStart(){
  if (DiagnosticRun){
    DiagnosticRun = false
    document.getElementById("diagnostic_page").style.animation = "hide_page 0.8s ease"
    setTimeout(function(){
      document.getElementById("start_page").style.animation = "show_page 0.8s ease"
      document.getElementById("diagnostic_page").style.animation = ""
      document.getElementById("homebar").style.animation = ""
      $(".start_page").css("display", "block")
      $(".diagnostic_page").css("display", "none")
    }, 750)
  
    document.getElementById("homebar").style.animation = "homebar 0.8s ease"
    document.getElementById("start_diagnostic").disabled = true
  
    setTimeout(function(){
      document.getElementById("start_diagnostic").disabled = false
    }, 4000)
  
    imgsIn()
  }
}

function imgsOut(){
  $(".gears").css("transform", "translate(-130px, -60px)")
  $(".turbo").css("transform", "translate(130px, -50px) rotate(-8.5deg)")
}

function imgsIn(){
  $(".gears").css("transform", "none")
  $(".turbo").css("transform", "rotate(-8.5deg)")
}

preload_image("assets/tablet_main.webp")

function preload_image(im_url) {
  let img = new Image();
  img.src = im_url;
}

function StartRepair(id){
  Close()
  $.post('https://'+GetParentResourceName()+'/UseButton', JSON.stringify({action:"DiagnosticTablet", id}))
}

function MoveLift(id){
  $.post('https://'+GetParentResourceName()+'/UseButton', JSON.stringify({action:"VehicleLift", type:id}))
}

function ShowVehicleLift(){
  document.getElementById("vehicle_lift").style.animation = "appear_lift 0.4s ease"
  $(".vehicle_lift").css("display", "block")
}

function HideVehicleLift(){
  document.getElementById("vehicle_lift").style.animation = "hide_lift 0.4s ease"
  setTimeout(function(){
    $(".vehicle_lift").css("display", "none")
  }, 400)
}

function ShowBillCreator(){
  ChoosedPlayer = null
  $(".bill_creator .players_con .row").html("")
  if (ClosestPlayers.length > 0){
    for (let i = 0; i < ClosestPlayers.length; i++) {
      if (i < 4){
        $(".bill_creator .players_con .row").append(`
        <div class="col px-0 d-flex flex-column align-items-center">
            <button class="player_btn" id="player_${i}" onclick="ChoosePlayer(id)"><span>${ClosestPlayers[i].name}</span><div class="id">${ClosestPlayers[i].id}</div></button>
        </div>
        `)
      }
    }
  }
  else{
    $(".bill_creator .players_con .row").append(`
    <div class="no_players">No one is near you!</div>
    `)
  }
  
  ImportBills()

  document.getElementById("bill_creator").style.animation = "showmenu 0.4s ease"
  $(".bill_creator").css("display", "block")
}

function HideBillCreator(){
  document.getElementById("bill_creator").style.animation = "hidemenu 0.4s ease"
  setTimeout(function(){
    $(".bill_creator").css("display", "none")
  }, 400)
}

function ChoosePlayer(id){
  for(let i=0; i<ClosestPlayers.length; i++){
    if (i < 4){
      document.getElementById("player_"+i).classList.remove("choosed_player")
    }
  }
  document.getElementById(id).classList.add("choosed_player")
  ChoosedPlayer = $(`#${id} .id`).html()
  RefreshSendBill()
}

function ImportBills(){
  TypeAheadList = []
  for(let i = 0; i < BasicBills.length; i++){
    TypeAheadList.push(BasicBills[i][0])
  }

  var $input = $(".typeahead");

  $input.typeahead('destroy');

  $input.typeahead({
    autocomplete: true,
    source: TypeAheadList,
  });

  $input.change(function() {
      var current = $input.typeahead("getActive");
      matches = [];

      if (current) {
        if (current.name == $input.val()) {
          matches.push(current.name);
        }
      }
  });
}

function SyncAmount(id){
  let name = document.getElementById(id).value
  let amount = document.getElementById("in_amount")
  let ismatch = "false"

  for(let i = 0; i < BasicBills.length; i++){
    if (name == BasicBills[i][0]){
      ismatch = i
    }
  }

  if (ismatch != "false"){
    amount.value = BasicBills[ismatch][1]
  }
  RefreshSendBill()
}

function SendBill(){
  let id = ChoosedPlayer
  let label = document.getElementById("in_name").value
  let amount = document.getElementById("in_amount").value
  $.post('https://'+GetParentResourceName()+'/UseButton', JSON.stringify({action:"CreateBill", id, label, amount}))
  ChoosedPlayer = null
  document.getElementById("in_name").value = ""
  document.getElementById("in_amount").value = ""
  for(let i=0; i<ClosestPlayers.length; i++){
    if (i < 4){
      document.getElementById("player_"+i).classList.remove("choosed_player")
    }
  }
  document.getElementById("bill_btn").disabled = true
}

function RefreshSendBill(){
  if (document.getElementById("in_name").value.length > 0 && document.getElementById("in_amount").value.length > 0 && ChoosedPlayer != null){
    document.getElementById("bill_btn").disabled = false
  }
  else{
    document.getElementById("bill_btn").disabled = true
  }
}

function CreateTasks(){
  document.getElementById("tasks").style.animation = "showmenu 0.4s ease"
  if (ShowTaskMenu){
    $(".tasks").css("display", "block")
  }
  $(".tasks .container").html("")

  for(let i = 0; i < Tasks.length; i++){
    $(".tasks .container").append(`
      <div class="task_element d-flex flex-column justify-content-center" id="task_${i}">
      <img class="indicator" src="assets/task.svg">
      ${Tasks[i].text}
      </div>
    `)
  }
  document.getElementById("task_0").classList.add("current")
  $("#task_0 .indicator").attr("src","assets/task_current.svg")
}

function RefreshTasks(){
  if (ShowTaskMenu){
    $(".tasks").css("display", "block")
  }
  let notadded = true
  for(let i = 0; i < Tasks.length; i++){
    if (Tasks[i].done){
      if (notadded && i+1 <= Tasks.length && Tasks[i+1] != undefined){
        if (Tasks[i+1].done == false){
          Tasks[i+1].done = true
          notadded = false
        }
      }

      $("#task_"+i+" .indicator").attr("src","assets/task_done.svg")
      document.getElementById("task_"+i).classList.remove("current")
      document.getElementById("task_"+i).classList.add("done")
      if ((+i+1) < Tasks.length){
        $("#task_"+(+i+1)+" .indicator").attr("src","assets/task_current.svg")
        document.getElementById("task_"+(+i+1)).classList.add("current")
      }
      else{
        setTimeout(function(){
          document.getElementById("tasks").style.animation = "hidemenu 0.4s ease"
          setTimeout(function(){
            $(".tasks").css("display", "none")
          }, 400)
        }, 5000)
      }
    }
    else if (i == 0){
      Tasks[i].done = true
      document.getElementById("task_"+i).classList.remove("current")
      document.getElementById("task_"+i).classList.add("done")
      $("#task_"+i+" .indicator").attr("src","assets/task_done.svg")
      document.getElementById("task_"+(+i+1)).classList.add("current")
      $("#task_"+(+i+1)+" .indicator").attr("src","assets/task_current.svg")
    }
  }
}

function ShowCalls(){
  let IsanyCall = false
  $(".calls .container").html("")
  for(let i = 0; i < MechanicCalls.length; i++){
    if (MechanicCalls[i].closed === false){
      IsanyCall = true
      $(".calls .container").append(`
        <div class="call_element" id="call_${i}">
            <div class="name">${MechanicCalls[i].name}</div>
            <div class="text">${MechanicCalls[i].text}</div>
            <div class="row mt-2" style="width: 90%; margin-left: 5%;">
                <div class="col d-flex flex-column align-items-center px-0">
                    <button class="basic_btn" id="close_${i}" onclick="CloseCall(id)">CANCEL</button>
                </div>
                <div class="col d-flex flex-column align-items-center px-0">
                    <button class="basic_btn green" id="pin_${i}" onclick="SendPin(id)">PIN</button>
                </div>
            </div>
            <div class="time">${GetTime(MechanicCalls[i].time)} minutes ago</div>
            <div class="call_number">Call #${i+1}</div>
        </div>
      `)
    }
  }

  if (IsanyCall == false){
    $(".calls .container").html(`
      <div class="no_calls">There aren't any calls</div>
    `)
  }

  document.getElementById("calls").style.animation = "appear_calls 0.6s ease"
  $(".calls").css("display", "block")
}

function SendPin(id){
  let tableid = id.split('_').pop()
  let coords = MechanicCalls[tableid].coords
  $.post('https://'+GetParentResourceName()+'/UseButton', JSON.stringify({action:"ShowBlip", tableid : +tableid + +1, coords}))
  Close()
}

function CloseCall(id){
  let tableid = id.split('_').pop()
  $.post('https://'+GetParentResourceName()+'/UseButton', JSON.stringify({action:"CloseCall", tableid : +tableid + +1}))
}

function HideCalls(){
  document.getElementById("calls").style.animation = "hide_calls 0.6s ease"
  setTimeout(function(){
    $(".calls").css("display", "none")
  }, 400)
}

function ShowCreateCall(){
  document.getElementById("create_call").style.animation = "appear_lift 0.6s ease"
  $(".create_call").css("display", "block")
}

function HideCreateCall(){
  document.getElementById("create_call").style.animation = "hide_lift 0.6s ease"
  setTimeout(function(){
    $(".create_call").css("display", "none")
  }, 400)
}

function CreateCall(){
  let text = document.getElementById("in_call_reason").value
  let time = Math.round(Date.now() / (1000 * 60))
  $.post('https://'+GetParentResourceName()+'/UseButton', JSON.stringify({action:"CreateCall", text, time}))
  Close()
  document.getElementById("in_call_reason").value = ""
}

function RefreshCreateCallBTN(id){
  if (document.getElementById(id).value.length > 0){
    document.getElementById("create_call").disabled = false
  }
  else{
    document.getElementById("create_call").disabled = true
  }
}

/////////////////////////////////////////////////////////////// BASIC FUNCTIONS \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

function isNumber(evt) {
  evt = (evt) ? evt : window.event
  var charCode = (evt.which) ? evt.which : evt.keyCode
  if (charCode > 31 && (charCode < 48 || charCode > 57)) {
      return false
  }
  return true
}

function setlenght(id) {
  if (document.getElementById(id).value.length === 2 && document.getElementById(id).value[0] == 0){
    document.getElementById(id).value = document.getElementById(id).value.substring(1)
  }
  if (document.getElementById(id).value.length === 4){
    document.getElementById(id).value = document.getElementById(id).value.substring(1)
  }
  if (document.getElementById(id).value.length === 0){
    document.getElementById(id).value = 0
  }
  changemoney()
  return true
}

function show(element){
  $("#"+element).css("display","block")
  document.getElementById(element).style.animation = "showmenu 0.6s ease";
}

function hide(element){
  document.getElementById(element).style.animation = "hidemenu 0.4s ease";
  setTimeout(function(){
    $("#"+element).css("display","none")
  }, 350)
}

function dragElement(elmnt) {
  var pos1 = 0, pos2 = 0, pos3 = 0, pos4 = 0;

  elmnt.onmousedown = dragMouseDown;

  function dragMouseDown(e) {
    e = e || window.event;
    e.preventDefault();

    pos3 = e.clientX;
    pos4 = e.clientY;
    document.onmouseup = closeDragElement;
    document.onmousemove = elementDrag;
  }

  function elementDrag(e) {
    e = e || window.event;
    e.preventDefault();

    pos1 = pos3 - e.clientX;
    pos2 = pos4 - e.clientY;
    pos3 = e.clientX;
    pos4 = e.clientY;

    elmnt.style.opacity = "0.8"

    elmnt.style.top = (elmnt.offsetTop - pos2) + "px";
    elmnt.style.left = (elmnt.offsetLeft - pos1) + "px";
  }

  function closeDragElement() {
    elmnt.style.opacity = "1"
    document.onmouseup = null;
    document.onmousemove = null;
  }
}

function elementsOverlap(el1, el2) {
  const domRect1 = el1.getBoundingClientRect();
  const domRect2 = el2.getBoundingClientRect();

  return !(
    domRect1.top+50 > domRect2.bottom ||
    domRect1.right-50 < domRect2.left ||
    domRect1.bottom-50 < domRect2.top ||
    domRect1.left+50 > domRect2.right
  );
}

function GetTime(createdtime){
  let time = Math.round(Date.now() / (1000 * 60)+1) - createdtime
  return time
}

function fancyTimeFormat(duration)
{   
    var hrs = ~~(duration / 3600);
    var mins = ~~((duration % 3600) / 60);
    var secs = ~~duration % 60;

    var ret = "";

    if (hrs > 0) {
        ret += "" + hrs + ":" + (mins < 10 ? "0" : "");
    }

    ret += "" + mins + ":" + (secs < 10 ? "0" : "");
    ret += "" + secs;
    return ret;
}
