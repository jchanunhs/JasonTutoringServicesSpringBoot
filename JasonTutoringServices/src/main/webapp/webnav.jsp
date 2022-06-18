<nav id = "webnav">
    <div class = "navtitle">Website Directories</div>
    <a href = "/" id="${pageContext.request.requestURI eq '/index.jsp' ? 'active-link' : ''}">Home</a>
    <a href = "/about" id="${pageContext.request.requestURI eq '/about.jsp' ? 'active-link' : ''}">About</a>
    <a href = "/services" id="${pageContext.request.requestURI eq '/services.jsp' ? 'active-link' : ''}">Tutoring Services</a>
    <a href = "/whycs" id="${pageContext.request.requestURI eq '/whycs.jsp' ? 'active-link' : ''}">Why C.S. Major?</a>
    <a href = "/jobs" id="${pageContext.request.requestURI eq '/jobs.jsp' ? 'active-link' : ''}">C.S. Jobs</a>
    <a href = "/faq" id="${pageContext.request.requestURI eq '/faq.jsp' ? 'active-link' : ''}">FAQ</a>
    <a href = "/contact" id="${pageContext.request.requestURI eq '/contact.jsp' ? 'active-link' : ''}">Contact Me</a>
</nav>