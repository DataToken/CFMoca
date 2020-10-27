<!---
  Top Navigation
--->
<cfoutput>
  <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">
  <!--- Sidebar Toggle (Topbar) --->
  <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3" type="button" data-toggle="collapse" data-target="##navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <i class="fa fa-bars"></i>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
     <ul class="navbar-nav ml-auto">

      <div class="topbar-divider d-none d-sm-block"></div>
      <cfif isAuthenticated()>
      <li class="nav-item dropdown no-arrow">
        <a class="nav-link dropdown-toggle" id="navbarDropdown" data-toggle="dropdown" href="##" role="button" aria-haspopup="true" aria-expanded="false">#e(getSession().user.properties.email)#</a>
        <!---Menu dropdown--->
        <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="navbarDropdown">
        <cfif hasPermission("accounts.show")>
          #linkTo(route="account", class="dropdown-item", text="Account")#
          <div class="dropdown-divider"></div>
        </cfif>
        #linkTo(route="logout", class="dropdown-item", text="Logout")#
        </div>
      </li>

      <cfelse>
         <li>#linkTo(route="login", class="btn btn-outline-primary", text="Login")#</li>
      </cfif>

    </ul>

  </div>
</nav>
</cfoutput>
