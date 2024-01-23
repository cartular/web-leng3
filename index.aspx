<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="PortfolioVaras.index" %>

<!DOCTYPE html>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons+Round"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Rounded:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
    <link rel="stylesheet" type="text/css" href="/css/estilos.css"/>
    <link rel="shortcut icon" href="\assets\img\flor.png" type="image/x-icon">
    <style>
 
    @import url('https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500;600&display=swap');
    </style>
    <script src="https://unpkg.com/scrollreveal"></script>
    <script>
        ScrollReveal({ reset: true, cleanup:true });
    </script>
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  
    <title>Portfolio</title>
</head>
<body>
  <form id="form1" runat="server">
   
    <nav>
    <div class="container">     
      <div class="button-container">
        <a href="#home-section" class="icon-button" onmouseover="addAnimation(this)" onmouseout="removeAnimation(this)"><i class="material-icons">home</i></a>
        <a href="#code-section" class="icon-button" onmouseover="addAnimation(this)" onmouseout="removeAnimation(this)"><i class="material-icons">code</i></a>
        <a href="#person-section" class="icon-button" onmouseover="addAnimation(this)" onmouseout="removeAnimation(this)"><i class="material-icons">person</i></a>
        <a href="#chat-section" class="icon-button" onmouseover="addAnimation(this)" onmouseout="removeAnimation(this)"><i class="material-icons">chat</i></a>
      </div>
    </div>
    </nav>

<!-- HOME  -->
    <section id="home-section" name="home-section">      
      <div class="container2">        
        <div class="text-container">
          <h1 class="text-style1" style="font-size: 20px;">Hi! I'm</h1>
          <p class="text-style1">Catalina Varas</p>
          <p class="text-style2" style="margin-top: 0%;">Full stack web developer</p>
          <p class="text-style2">I see every challenge as a new opportunity to learn.</p>
          <div class="button-container2">
            <a class="custom-button" href="\assets\pdf\cata.pdf" download="cv.pdf" style="text-decoration: none; ">Download CV</a>
            <a class="custom-button" href="#chat-section" style="scroll-behavior: smooth; text-decoration: none; ">Contact me</a>
          </div>        
        </div>
        <img class="imagen-pequena" src="\assets\img\home.png"/>
      </div>
    </section>
<!-- CONOCIMIENTOS -->
<section id="code-section" name="code-section">
      <div class="title-container">
        <h2 class="titulo" id="code-title">Knowledge</h2>
      </div>
      <div class="container3">
        <div class="section-container">
          <p class="section-title">Frontend</p>
          <ul>
            <li onclick="toggleAccordion('htmlAccordion')">
              <span class="material-icons-round">verified</span>
              <span class="text-small">HTML</span></li>         
              <div id="htmlAccordion" class="accordion-content">
                <p>Información sobre HTML.</p>
              </div>            
            <li onclick="toggleAccordion('cssAccordion')">
              <span class="material-icons-round">verified</span>
              <span class="text-small">CSS</span></li>
              <div id="cssAccordion" class="accordion-content">
                <p>Información sobre CSS.</p>
              </div>    
            <li onclick="toggleAccordion('JSAccordion')">
              <span class="material-icons-round">verified</span>
              <span class="text-small">JavaScript</span></li>
              <div id="JSAccordion" class="accordion-content">
                <p>Información sobre JS.</p>
              </div>
            <li onclick="toggleAccordion('TSAccordion')">
              <span class="material-icons-round">verified</span>
              <span class="text-small">TypeScript</span></li>
              <div id="TSAccordion" class="accordion-content">
                <p>Información sobre TypeScript.</p>
              </div>
            <li onclick="toggleAccordion('RSAccordion')">
              <span class="material-icons-round">verified</span>
              <span class="text-small">React JS</span></li>
              <div id="RSAccordion" class="accordion-content">
                <p>Información sobre React JS.</p>
              </div>
            <li onclick="toggleAccordion('AngAccordion')">
              <span class="material-icons-round">verified</span>
              <span class="text-small">Angular</span></li>
              <div id="AngAccordion" class="accordion-content">
                <p>Información sobre Angular.</p>
              </div>
            <li onclick="toggleAccordion('NAccordion')">
              <span class="material-icons-round">verified</span>
              <span class="text-small">Next JS</span></li>
              <div id="NAccordion" class="accordion-content">
                <p>Información sobre Next JS.</p>
              </div>
            <li onclick="toggleAccordion('BAccordion')">
              <span class="material-icons-round">verified</span>
              <span class="text-small">Bootstrap</span> </li>
              <div id="BAccordion" class="accordion-content">
                <p>Información sobre Bootstrap.</p>
              </div>
            <li onclick="toggleAccordion('SAccordion')">
              <span class="material-icons-round">verified</span>
              <span class="text-small">Sass</span></li>
              <div id="SAccordion" class="accordion-content">
                <p>Información sobre Sass.</p>
              </div>
            <li onclick="toggleAccordion('LAccordion')">
              <span class="material-icons-round">verified</span>
              <span class="text-small">Less</span></li>
              <div id="LAccordion" class="accordion-content">
                <p>Información sobre Less.</p>
              </div>
            <li onclick="toggleAccordion('ReAccordion')">
              <span class="material-icons-round">verified</span>
              <span class="text-small">Redux</span></li>
              <div id="ReAccordion" class="accordion-content">
                <p>Información sobre Redux.</p>
              </div>
          </ul>        
        </div>
      </div>
      <div class="container3">
        <div class="section-container">
          <p class="section-title">Backend</p>
          <ul>
            <li onclick="toggleAccordion('NoAccordion')">
              <span class="material-icons-round">verified</span>
              <span class="text-small">Node.js</span></li>
              <div id="NoAccordion" class="accordion-content">
                <p>Información sobre Node.js</p>
              </div>
            <li onclick="toggleAccordion('ExAccordion')">
              <span class="material-icons-round">verified</span>
              <span class="text-small">Express JS</span></li>
              <div id="ExAccordion" class="accordion-content">
                <p>Información sobre Express JS</p>
              </div>
            <li onclick="toggleAccordion('SQLAccordion')">
              <span class="material-icons-round">verified</span>
              <span class="text-small">MySQL</span> </li>
              <div id="SQLAccordion" class="accordion-content">
                <p>Información sobre MySQL</p>
              </div>
            <li onclick="toggleAccordion('PoAccordion')">
              <span class="material-icons-round">verified</span>
              <span class="text-small">PostgreSQL</span> </li>
              <div id="PoAccordion" class="accordion-content">
                <p>Información sobre PostgreSQL</p>
              </div>
            <li onclick="toggleAccordion('SeAccordion')">
              <span class="material-icons-round">verified</span>
              <span class="text-small">Sequelize</span></li>
              <div id="SeAccordion" class="accordion-content">
                <p>Información sobre Sequelize</p>
              </div>
          </ul>
        </div>
      </div>
      <div class="container3">
        <div class="section-container">
          <p class="section-title">Technologies and Software</p>
          <ul>
            <li onclick="toggleAccordion('GAccordion')">
              <span class="material-icons-round">verified</span>
              <span class="text-small">Git</span></li>
              <div id="GAccordion" class="accordion-content">
                <p>Información sobre Git</p>
              </div>
            <li onclick="toggleAccordion('GHAccordion')">
              <span class="material-icons-round">verified</span>
              <span class="text-small">GitHub</span> </li>
              <div id="GHAccordion" class="accordion-content">
                <p>Información sobre GitHub</p>
              </div> 
            <li onclick="toggleAccordion('FiAccordion')">
              <span class="material-icons-round">verified</span>
              <span class="text-small">Figma</span></li>
              <div id="FiAccordion" class="accordion-content">
                <p>Información sobre Figma</p>
              </div> 
            <li onclick="toggleAccordion('DoAccordion')">
              <span class="material-icons-round">verified</span>
              <span class="text-small">Docker</span></li>
              <div id="DoAccordion" class="accordion-content">
                <p>Información sobre Docker</p>
              </div> 
            <li onclick="toggleAccordion('ClAccordion')">
              <span class="material-icons-round">verified</span>
              <span class="text-small">Cloudinary</span></li>
              <div id="ClAccordion" class="accordion-content">
                <p>Información sobre Cloudinary</p>
              </div> 
          </ul>
        </div>
      </div>
      <div class="title-container">
        <h2 class="titulo">Skills</h2>
      </div>
      <div class="container3">
      <div class="section-container">
        <ul class="skills-list">
          <li><span class="material-icons-round">verified</span><span class="text-small">Leadership</span></li>
          <li><span class="material-icons-round">verified</span><span class="text-small">Time management</span></li>
          <li><span class="material-icons-round">verified</span><span class="text-small">Conflict resolution</span> </li>
          <li><span class="material-icons-round">verified</span><span class="text-small">Self-taught</span></li>
          <li><span class="material-icons-round">verified</span><span class="text-small">Communication and active listening</span></li>
          <li><span class="material-icons-round">verified</span><span class="text-small">Teamwork</span> </li>
          <li><span class="material-icons-round">verified</span><span class="text-small">Adaptation to change</span> </li>
        </ul>
      </div>
    </div>
</section>
<!-- ABOUT -->
<section id="person-section" name="person-section" style="margin-top: 50px; margin-right: 50px;">
  <div class="section-container2">
    
      <div class="right-text-container">
          
          <h3 class="titulo-about">About me</h3>
          <p>Hello! I'm Catalina Varas, a passionate technology enthusiast and a future computer engineer. </p>
          <p>My strengths lie in my ability to creatively and logically solve problems, as well as my agility in adapting to rapidly evolving technological advancements.</p>
    
          <h3 class="titulo-about">My strengths</h3>
          <p>My strengths include problem-solving, creative and logical thinking, and a quick adaptability to changes in technology. </p>
          <p>I consider myself a curious individual who is always eager to learn new skills and techniques to enhance my capabilities.</p>
      
      </div>
      <div class="bottom-text-container">
        
          <h3 class="titulo-about">My motivations</h3>
          <p>My primary motivation as a computer engineer is to contribute to the development of innovative solutions that improve people's lives and transform the way we interact with technology.</p>
          <p> I firmly believe in the power of computer science to address complex challenges and drive progress in various fields, such as education, healthcare, the environment, and communication. I am passionate about leveraging technology as a tool for positive change and making a meaningful impact on society.</p>
      
          <h3 class="titulo-about">My objectives</h3>
          <p>One of my goals as a future computer engineer is to expand my knowledge and skills in areas like software development and artificial intelligence</p>
          <p>I want to utilize my experience to drive innovation and lead projects that help build a better world.</p>
        
      </div>
      <img class="imagen-portfolio" src="/assets/img/cataportfolio.JPG" style="width: 30%; float: right; margin-right: 20px; border-radius: 5px; 
      border: 2px solid #ddbea9; box-shadow: 0px 0px 5px 2px rgba(221, 190, 169, 0.5);"/>
  </div>
</section>
<!-- CONTACTO -->
<section id="chat-section" name="chat-section">
  <div class="container4">
    <h2>Contact me</h2>
    <p>I would love to work with you</p>
    
    <input type="text" class="my-input" id="ombre" runat="server" name="nombre" placeholder="Name"/>
    <input type="text" class="my-input" id="mail" runat="server" name="email" placeholder="Email address"/> 
    <input type="text" class="my-input" id="dad" runat="server" name="edad" placeholder="Age" /> 
  
    <div class="hola-input" style="height:40px;">
        <asp:DropDownList runat="server" ID="ddlAsunto" CssClass="hola-input" style="background-color:transparent;border: 1px solid #ddbea9;
        width: 81.25%;
        padding: 7px;
        margin-top: 10px;
        height:30px;
        position: relative;
        border-radius: 5px;
        cursor: pointer;
        color:#ddbea9;
        " AppendDataBoundItems="true">
            <asp:ListItem Text="Subject" Value="" Disabled="true" Selected="True"></asp:ListItem>
        </asp:DropDownList>
    </div>
     
  

    <textarea id="consulta" class="my-input custom-input" runat="server" name="consulta" placeholder="Tell me, how can I help you?" style="outline: none; box-shadow: 0 0 5px rgba(221, 190, 169, 0.5); border-color: #ddbea9;  height: 150px;
margin-top:10px;"></textarea>
       <div id="confirmationMessage" class="confirmation-message" runat="server" visible="false">
        <i class="fas fa-check-circle" style="color: green"></i> Solicitud enviada con éxito
    </div>
    <style>
    /* Estilos para el mensaje de confirmación */
    #chat-section .confirmation-message {
    background-color: rgba(0, 255, 0, 0.15); /* Verde con opacidad */
    border: 1px solid #ddbea9;
    width: 80%;
    padding: 7px;
    margin-top: 10px;
    margin-left:115px;
    border-radius: 5px;
    font-family: "Montserrat", sans-serif;
    color: #ddbea9; /* Color del texto del mensaje de confirmación */
    text-align:center
}

/* Estilos para el ícono de check */
#chat-section .confirmation-message i {
    margin-right: 5px; /* Espacio entre el ícono y el texto */
}

      </style>
  </div>
  <div class="button-container3" style="text-align: right; margin-top: 10px; display: flex; justify-content: flex-end; margin-right: 100px;">
    <asp:Button ID="sendButton" runat="server" Text="Send" Height="35px"  
        Width="100px" Style="background-color: #ddbea9;
        color: #80836C;
        border: none;
        padding: 5px 20px;
        border-radius: 5px;
        cursor: pointer;
        transition: background-color 0.3s;
        font-weight: 600;
        margin-right: 10px;" OnClick="sendButton_Click" />

    <asp:Button ID="btn_bdd" runat="server" Visible="False" CssClass="db" OnClick="btn_bdd_Click" text="Base Datos" Height="35px" Width="100px" 
        style=" border-style: none;
        border-color: inherit;
        border-width: medium;
        background-color: #ddbea9;
        color: #80836C;
        padding: 5px 5px;
        border-radius: 5px;
        cursor: pointer;
        transition: background-color 0.3s;
        font-weight: 600;
        font-size:14px;"/>
</div>

    

</section>

<!-- FOOTER -->
<footer>
  <p>Creado por Catalina Varas.</p>
  <p>Créditos a Dariana Rengifo.</p>
  <div class="social-icons">
    <a href="https://wa.me/3513415377" target="_blank"><i class="fab fa-whatsapp"></i></a>
    <a href="https://www.linkedin.com/in/catalinavaras/" target="_blank"><i class="fab fa-linkedin"></i></a>
    <a href="https://www.behance.net/catalinavaras3" target="_blank"><i class="fab fa-behance"></i></a>
    <a href="https://github.com/cartular" target="_blank"><i class="fab fa-github"></i></a>
  </div>
</footer>

<script>
var inputs = document.getElementsByClassName("my-input");
for (var i = 0; i < inputs.length; i++) {
  inputs[i].addEventListener("input", function() {
    this.style.color = "white";
  });
}
</script>
<script>
    ScrollReveal().reveal('.titulo',{delay: 200, duration: 2000 , origin:'left', distance:'50px'});
    ScrollReveal().reveal('#person-section .titulo-about',{delay: 200, duration: 2000 , origin:'left', distance:'50px'});
    ScrollReveal().reveal('#chat-section h2',{delay: 200, duration: 2000 , origin:'left', distance:'50px'});
    ScrollReveal().reveal('#project-section h2',{delay: 200, duration: 2000 , origin:'left', distance:'50px'});
    ScrollReveal().reveal('#home-section .text-style1',{delay: 200, duration: 2000 , origin:'bottom', distance:'50px'});
    ScrollReveal().reveal('#home-section .imagen-pequena',{delay: 200, duration: 2000 , origin:'bottom', distance:'50px'});
    ScrollReveal().reveal('.imagen-portfolio',{delay: 200, duration: 2000 , origin:'bottom', distance:'50px'});
    
</script>
<script>
function toggleAccordion(accordionId) {
  var accordion = document.getElementById(accordionId);
  var isExpanded = accordion.classList.contains('show');

  // Cerrar todos los acordeones abiertos
  var accordions = document.getElementsByClassName('accordion-content');
  for (var i = 0; i < accordions.length; i++) {
    accordions[i].classList.remove('show');
  }

  // Abrir el acordeón clickeado si no estaba abierto previamente
  if (!isExpanded) {
    accordion.classList.add('show');
  }
}
</script>
<script>

function validateEmail() {
  var emailInput = document.getElementById('email-input');
  var email = emailInput.value;
  var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
  var errorMessage = document.getElementById('error-message');
  var successMessage = document.getElementById('success-message');

  if (emailRegex.test(email)) {
    // El correo electrónico es válido
    errorMessage.style.display = 'none';
    successMessage.style.display = 'block';
  } else {
    // El correo electrónico es inválido
    errorMessage.style.display = 'block';
    successMessage.style.display = 'none';
  }
}
</script>
<script src="https://mozilla.github.io/pdf.js/build/pdf.js"></script>
<script>
  document.addEventListener("DOMContentLoaded", function() {
    var pdfViewer = document.getElementById("pdf-viewer");

    PDFJS.getDocument("/assets/pdf/CertificadoIngles.pdf").promise.then(function(pdf) {
      pdf.getPage(1).then(function(page) {
        var viewport = page.getViewport({ scale: 1 });
        var canvas = document.createElement("canvas");
        var context = canvas.getContext("2d");
        canvas.height = viewport.height;
        canvas.width = viewport.width;
        pdfViewer.appendChild(canvas);
        page.render({ canvasContext: context, viewport: viewport });
      });
    });
  });

</script>
<script type="text/javascript">
    function redirectToBDD() {
        // Redirige a la página "BDD.aspx" utilizando JavaScript
        window.location.href = "~/BDD.aspx";
    }
</script>
     
     

</form>

</body>
</html>
