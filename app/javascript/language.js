function pullDownLanguage() {

  const pullDownButton = document.getElementById("lang-select");
  const pullDownLists = document.getElementById("lang-list");
  const nameTitle = document.getElementById("name-title");
  const buyTitle = document.getElementById("buy-title");
  const memo = document.getElementById("memo");
  const limitTitle = document.getElementById("limit-title")
  const statusTitle = document.getElementById("status-title")
  const productInput = document.querySelector("#product-input a")
  const logOut = document.querySelector("#logout a")
  const keyWord= document.getElementById("keyword")
  const searchBtn = document.querySelector("#search-btn")

  pullDownButton.addEventListener('click', function() {
    if (pullDownLists.getAttribute("style") == "display:block;") {
      pullDownLists.removeAttribute("style", "display:block;")
    } else {
      pullDownLists.setAttribute("style", "display:block;");
    }
  })
  const en = document.getElementById("en");
  en.addEventListener("click", function() {
    console.log("USA");
    nameTitle.innerHTML = "Product name"
    buyTitle.innerHTML = "Purchase date"
    memo.innerHTML = "memo"
    limitTitle.innerHTML = "until Deadline"
    statusTitle.innerHTML = "Status"
    productInput.innerHTML = "Register"
    logOut.innerHTML = "Log Out"
    keyWord.placeholder = "Product input"
    searchBtn.value = "Search"
  })

  const ja = document.getElementById("ja");
  ja.addEventListener("click", function() {
    console.log("日本");
    nameTitle.innerHTML = "商品名"
    buyTitle.innerHTML = "購入日"
    memo.innerHTML = "一言メモ"
    limitTitle.innerHTML = "期限まであと"
    statusTitle.innerHTML = "状態"
    productInput.innerHTML = "商品登録"
    logOut.innerHTML = "ログアウト"
    keyWord.placeholder = "商品名を入力"
    searchBtn.value = "検索"
  })

  const zh = document.getElementById("zh");
  zh.addEventListener("click", function() {
    console.log("中国");
    nameTitle.innerHTML = "产品名称"
    buyTitle.innerHTML = "购买日期"
    memo.innerHTML = "笔　记"
    limitTitle.innerHTML = "直到有效期"
    statusTitle.innerHTML = "状态"
    productInput.innerHTML = "商品登录"
    logOut.innerHTML = "登　　出"
    keyWord.placeholder = "产品名称输入"
    searchBtn.value = "搜索"
  })
}
window.addEventListener('load', pullDownLanguage)
