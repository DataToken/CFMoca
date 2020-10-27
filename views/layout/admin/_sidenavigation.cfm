<!---
  Side Navigation
--->
<cfoutput>
<ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

  <!--- Sidebar - Brand --->
    <div class="sidebar-brand-text mx-3 ">#linkTo(route="root", class="text-white navbar-brand", text=getSetting('general_sitename'))#</div>

  <!--- Divider --->
  <hr class="sidebar-divider my-0">


  <!--- Nav Item - Dashboard --->
  <li class="nav-item active">
    <a class="nav-link" href="/admin">
      <i class="fas fa-fw fa-tachometer-alt"></i>
      <span>Dashboard</span></a>
  </li>
  
  <!---
        These links should show and hide depending on the Users permissions
        The only catch with this approach is that they might have a permission "lower" down the chain
        than the one you're testing for.
      --->

      <cfif hasPermission("admin.users.index")>
      	<li class="nav-item active">
           #linkTo(route="users", class="nav-link", text="Users")#
        </li>
      </cfif>


      <!--- Heading --->
      <div class="sidebar-heading">
        Content
      </div>
      <cfif hasPermission("admin.pages.index")>
        <li class="nav-item">
           #linkTo(route="pages", class="nav-link", text="Pages")#
        </li>
      </cfif>

      <!--- Heading --->
      <div class="sidebar-heading">
        Site Settings
      </div>
      <cfif hasPermission("admin.settings.index")>
        <li class="nav-item">
           #linkTo(route="settings", class="nav-link", text="Settings")#
        </li>
      </cfif>

      <cfif hasPermission("admin.permissions.index")>
        <li class="nav-item">
           #linkTo(route="permissions", class="nav-link", text="Permissions")#
        </li>
      </cfif>

      <cfif hasPermission("admin.roles.index")>
        <li class="nav-item">
           #linkTo(route="roles", class="nav-link", text="Roles")#
        </li>
      </cfif>

      <!--- Heading --->
      <div class="sidebar-heading">
        Logs
      </div>
      
      <cfif hasPermission("admin.auditlogs.index")>

        <li class="nav-item">
           #linkTo(route="logs", class="nav-link", text="Site Log")#
        </li>
      </cfif>

      <!--- Divider --->
      <hr class="sidebar-divider d-none d-md-block">

      <!--- Sidebar Toggler (Sidebar) --->
      <div class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
      </div>
    </ul>
</cfoutput>
