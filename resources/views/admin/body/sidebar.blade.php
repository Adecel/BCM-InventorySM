<div class="vertical-menu">

<div data-simplebar class="h-100">

    <!-- User details -->

    <!--- Sidemenu -->
    <div id="sidebar-menu">
        <!-- Left Menu Start -->
        <ul class="metismenu list-unstyled" id="side-menu">
            <li class="menu-title">Menu</li>

            <li>
                <a href="index.html" class="waves-effect">
                    <i class="ri-dashboard-line"></i>
                    <span>Tableau de bord</span>
                </a>
            </li>

<!-- ---- Gérer les fournisseurs (Supplier) ---- -->
            <li>
                <a href="javascript: void(0);" class="has-arrow waves-effect">
                    <i class="ri-mail-send-line"></i>
                    <span>Gérer les fournisseurs</span>
                </a>
                <ul class="sub-menu" aria-expanded="false">
                    <li><a href="{{ route('supplier.all') }}">Tous les fournisseurs</a></li>
                </ul>
            </li>
<!-- ---- "End" -- Gérer les fournisseurs (Supplier) ---- -->

<!-- ---- Gérer les clients (Manage Customers) ---- -->
            <li>
                <a href="javascript: void(0);" class="has-arrow waves-effect">
                    <i class="ri-mail-send-line"></i>
                    <span>Gérer les clients</span>
                </a>
                <ul class="sub-menu" aria-expanded="false">
                    <li><a href="{{ route('customer.all') }}">Tous les clients</a></li>
                </ul>
            </li>
<!-- ---- "End" -- Gérer les clients (Manage Customers) ---- -->

<!-- ---- Gérer les clients (Manage Units) ---- -->
            <li>
                <a href="javascript: void(0);" class="has-arrow waves-effect">
                    <i class="ri-mail-send-line"></i>
                    <span>Gérer les unités</span>
                </a>
                <ul class="sub-menu" aria-expanded="false">
                    <li><a href="{{ route('unit.all') }}">Tous les unités</a></li>
                </ul>
            </li>
<!-- ---- "End" -- Gérer les clients (Manage Units) ---- -->

<!-- ---- Gérer les clients (Manage Category) ---- -->
            <li>
                <a href="javascript: void(0);" class="has-arrow waves-effect">
                    <i class="ri-mail-send-line"></i>
                    <span>Gérer les catégories</span>
                </a>
                <ul class="sub-menu" aria-expanded="false">
                    <li><a href="{{ route('category.all') }}">Toutes les catégories</a></li>
                </ul>
            </li>
<!-- ---- "End" -- Gérer les clients (Manage Category) ---- -->

<!-- ---- Gérer les clients (Manage Product) ---- -->
            <li>
                <a href="javascript: void(0);" class="has-arrow waves-effect">
                    <i class="ri-mail-send-line"></i>
                    <span>Gérer les produits</span>
                </a>
                <ul class="sub-menu" aria-expanded="false">
                    <li><a href="{{ route('product.all') }}">Tous les produits </a></li>
                </ul>
            </li>
<!-- ---- "End" -- Gérer les clients (Manage Product) ---- -->

<!-- ---- Gérer les clients (Manage Purchase) ---- -->
            <li>
                <a href="javascript: void(0);" class="has-arrow waves-effect">
                    <i class="ri-mail-send-line"></i>
                    <span>Gérer les achats</span>
                </a>
                <ul class="sub-menu" aria-expanded="false">
                    <li><a href="{{ route('purchase.all') }}">Tous les achats </a></li>
                    <li><a href="{{ route('purchase.pending') }}">Approbation d'achat</a></li>
                </ul>
            </li>
<!-- ---- "End" -- Gérer les clients (Manage Purchase) ---- -->

<!-- ---- Gérer les clients (Manage Purchase) ---- -->
        <li>
            <a href="javascript: void(0);" class="has-arrow waves-effect">
                <i class="ri-mail-send-line"></i>
                <span>Gérer la facture</span>
            </a>
            <ul class="sub-menu" aria-expanded="false">
                <li><a href="{{ route('invoice.all') }}">Toutes les factures</a></li>
                <li><a href=" ">Section approbation des factures</a></li>

            </ul>
        </li>
<!-- ---- "End" -- Gérer les clients (Manage Purchase) ---- -->

            <!-- <li>
                <a href="javascript: void(0);" class="has-arrow waves-effect">
                    <i class="ri-layout-3-line"></i>
                    <span>Layouts</span>
                </a>
                <ul class="sub-menu" aria-expanded="true">
                    <li>
                        <a href="javascript: void(0);" class="has-arrow">Vertical</a>
                        <ul class="sub-menu" aria-expanded="true">
                            <li><a href="layouts-dark-sidebar.html">Dark Sidebar</a></li>
                            <li><a href="layouts-compact-sidebar.html">Compact Sidebar</a></li>
                            <li><a href="layouts-icon-sidebar.html">Icon Sidebar</a></li>
                            <li><a href="layouts-boxed.html">Boxed Layout</a></li>
                            <li><a href="layouts-preloader.html">Preloader</a></li>
                            <li><a href="layouts-colored-sidebar.html">Colored Sidebar</a></li>
                        </ul>
                    </li>

                    <li>
                        <a href="javascript: void(0);" class="has-arrow">Horizontal</a>
                        <ul class="sub-menu" aria-expanded="true">
                            <li><a href="layouts-horizontal.html">Horizontal</a></li>
                            <li><a href="layouts-hori-topbar-light.html">Topbar light</a></li>
                            <li><a href="layouts-hori-boxed-width.html">Boxed width</a></li>
                            <li><a href="layouts-hori-preloader.html">Preloader</a></li>
                            <li><a href="layouts-hori-colored-header.html">Colored Header</a></li>
                        </ul>
                    </li>
                </ul>
            </li> -->

            <li class="menu-title">Pages</li>

            <!-- <li>
                <a href="javascript: void(0);" class="has-arrow waves-effect">
                    <i class="ri-account-circle-line"></i>
                    <span>Authentication</span>
                </a>
                <ul class="sub-menu" aria-expanded="false">
                    <li><a href="auth-login.html">Login</a></li>
                    <li><a href="auth-register.html">S'inscrire</a></li>
                    <li><a href="auth-recoverpw.html">Recuperer mot de passe</a></li>
                    <li><a href="auth-lock-screen.html">Lock Screen</a></li>
                </ul>
            </li>

            <li>
                <a href="javascript: void(0);" class="has-arrow waves-effect">
                    <i class="ri-profile-line"></i>
                    <span>Utility</span>
                </a>
                <ul class="sub-menu" aria-expanded="false">
                    <li><a href="pages-starter.html">Starter Page</a></li>
                    <li><a href="pages-timeline.html">Timeline</a></li>
                    <li><a href="pages-directory.html">Directory</a></li>
                    <li><a href="pages-invoice.html">Invoice</a></li>
                    <li><a href="pages-404.html">Error 404</a></li>
                    <li><a href="pages-500.html">Error 500</a></li>
                </ul>
            </li> -->

        </ul>
    </div>
    <!-- Sidebar -->
</div>
</div>