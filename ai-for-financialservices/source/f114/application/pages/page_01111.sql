prompt --application/pages/page_01111
begin
--   Manifest
--     PAGE: 01111
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>7687429086004423
,p_default_application_id=>114
,p_default_id_offset=>8992108442064454
,p_default_owner=>'DOCUSER'
);
wwv_flow_imp_page.create_page(
 p_id=>1111
,p_name=>'AI for Financial Services'
,p_alias=>'AI-FOR-FINANCIAL-SERVICES'
,p_step_title=>'AI for Financial Services'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'Y'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'13'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(33108781291067829)
,p_plug_name=>'oda'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(71109283471149467)
,p_plug_display_sequence=>20
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' <!-- ODA-->',
'<script src="#APP_FILES#oda/settings#MIN#.js"></script>',
'<script src="#APP_FILES#oda/web-sdk.js" onload="initSdk(''Bots'')"></script>',
'<link rel="stylesheet" href="#APP_FILES#oda/redwood-base-madhu.css" > ',
'   <!-- ODA-->'))
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(114374687655307550)
,p_plug_name=>'AI for FS Home'
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>',
'<!-- Google fonts',
'<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />',
'<link href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700" rel="stylesheet" type="text/css" /> ',
'-->',
'<link href="#APP_FILES#templates/startbootstrap-agency-gh-pages/css/styles.css?id=1" rel="stylesheet" />',
'  ',
'<!-- Navigation-->',
'        <nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav" style="background: rgb(2,0,36);background: linear-gradient(90deg, rgba(2,0,36,1) 0%, rgba(48,45,41,1) 58%, rgba(0,212,255,1) 100%);">',
'            <div class="container">',
'                <a class="navbar-brand" href="#page-top" style="color:#FFD700">',
'                     <img src="#APP_FILES#icons/app-icon-512.png" alt="..." />  ',
'                    AI for Financial Services',
'                    </a> ',
'                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">',
'                    Menu',
'                    <i class="fas fa-bars ms-1"></i>',
'                </button>',
'                <div class="collapse navbar-collapse" id="navbarResponsive">',
'                    <ul class="navbar-nav text-uppercase ms-auto py-4 py-lg-0">',
'                        <!-- <li class="nav-item"><a class="nav-link" href="f?p=&APP_ID.:89:&SESSION.::&DEBUG.::::">Services</a></li>',
'                        <li class="nav-item"><a class="nav-link" href="f?p=&APP_ID.:89:&SESSION.::&DEBUG.::::">Core Banking</a></li>',
'                        <li class="nav-item"><a class="nav-link" href="#about">About</a></li> ',
'                        <li class="nav-item"><a class="nav-link" href="#contact">Contact</a></li> -->',
'                        <li class="nav-item"><a class="nav-link" href="f?p=&APP_ID.:89:&SESSION.::&DEBUG.::::">Home</a></li>',
'                        <li class="nav-item"><a class="nav-link" href="f?p=&APP_ID.:86:&SESSION.::&DEBUG.::::">Register</a></li>',
'                        <li class="nav-item"><a class="nav-link" href="&LOGOUT_URL.">Logout</a></li> ',
'                    </ul>',
'                </div>',
'            </div>',
'        </nav>',
'        <!-- Masthead-->',
'        <!-- <header class="masthead">',
'            <div class="container">',
'                <div class="masthead-subheading">Secure. Real-Time. Intelligent Banking!</div>',
'                <div class="my-3" style=''color:white''>Thrive on your technology and data competitive advantage to drive sustainable growth. Rewire to gain more operational efficiency, shift to business model innovation, evolve to meet changing custom'
||unistr('er needs, and become a people-first financial services institution with Oracle\2019s AI-driven applications and cloud services.</div>'),
'                 <a class="btn btn-primary btn-xl text-uppercase" href="f?p=&APP_ID.:89:&SESSION.::&DEBUG.::::">Core Banking - Dashboard</a> ',
'                 <a class="btn btn-primary btn-xl text-uppercase" href="f?p=117.:1:&SESSION.::&DEBUG.::::">Healthcare Services</a> ',
'            </div>',
'        </header> -->',
'        <!-- Services-->',
'        <section class="page-section" id="services">',
'            <div class="container">',
'                <div class="text-center">',
'                    <h2 class="section-heading text-uppercase">Services</h2>',
'                    <h3 class="section-subheading text-muted">Lorem ipsum dolor sit amet consectetur.</h3>',
'                </div>',
'                <div class="row text-center">',
'                    <!-- <div class="col-md-4"><a class="nav-link" href="f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::"> <br/>  -->',
'                    <div class="col-md-4"><a class="nav-link" href="f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::"> <br/> ',
'                        <img class="img-fluid" src="#APP_FILES#images/customerhome.png" width=''326px'' height=''200px'' />',
'                        <h4 class="nav-item">Customer </h4>',
'                        <p class="text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minima maxime quam architecto quo inventore harum ex magni, dicta impedit.</p>',
'                     </a></div> ',
'                    <div class="col-md-4"><a class="nav-link" href="f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::">',
'                        <img class="img-fluid" src=''#APP_FILES#images/bankerhome.png''  width=''256px'' height=''259px'' />',
'                        <h4 class="my-3"> Bank Employee  </h4>',
'                        <p class="text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minima maxime quam architecto quo inventore harum ex magni, dicta impedit.</p>',
'                    </a></div> ',
'                    <div class="col-md-4"><a class="nav-link" href="f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::">',
'                        <img class="img-fluid" src=''#APP_FILES#images/developerhome.png'' width=''256px'' height=''250px'' />',
'                        <h4 class="my-3">Developer</h4>',
'                        <p class="text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minima maxime quam architecto quo inventore harum ex magni, dicta impedit.</p>',
'                    </a></div> ',
'                </div>',
'            </div>',
'        </section>',
'        <!-- Portfolio Grid-->',
'        <section class="page-section bg-light" id="portfolio">',
'            <div class="container">',
'                <div class="text-center">',
'                    <h2 class="section-heading text-uppercase">Core Banking</h2>',
'                    <h3 class="section-subheading text-muted">Lorem ipsum dolor sit amet consectetur.</h3>',
'                </div>',
'                <div class="row">',
'                    <div class="col-lg-4 col-sm-6 mb-4">',
'                        <!-- Portfolio item 1 #APP_FILES#templates/startbootstrap-agency-gh-pages/assets/img/portfolio/1a.jpg -->',
'                        <div class="portfolio-item">',
'                            <a class="portfolio-link" data-bs-toggle="modal" href="#portfolioModal1">',
'                                <div class="portfolio-hover">',
'                                    <div class="portfolio-hover-content"><i class="fas fa-plus fa-3x"></i></div>',
'                                </div>',
'                                <img class="img-fluid" src="#APP_FILES#images/ind1600.jpg" alt="..." />',
'                            </a>',
'                            <div class="portfolio-caption">',
'                                <div class="portfolio-caption-heading">PAY</div>',
'                                <div class="portfolio-caption-subheading text-muted">Cards, Bills, Loans</div>',
'                            </div>',
'                        </div>',
'                    </div>',
'                    <div class="col-lg-4 col-sm-6 mb-4">',
'                        <!-- Portfolio item 2-->',
'                        <div class="portfolio-item">',
'                            <a class="portfolio-link" data-bs-toggle="modal" href="#portfolioModal2">',
'                                <div class="portfolio-hover">',
'                                    <div class="portfolio-hover-content"><i class="fas fa-plus fa-3x"></i></div>',
'                                </div>',
'                                <img class="img-fluid" src="#APP_FILES#images/ind2600.jpg" alt="..." />',
'                            </a>',
'                            <div class="portfolio-caption">',
'                                <div class="portfolio-caption-heading">SAVE</div>',
'                                <div class="portfolio-caption-subheading text-muted">Accounts, Deposits</div>',
'                            </div>',
'                        </div>',
'                    </div>',
'                    <div class="col-lg-4 col-sm-6 mb-4">',
'                        <!-- Portfolio item 3-->',
'                        <div class="portfolio-item">',
'                            <a class="portfolio-link" data-bs-toggle="modal" href="#portfolioModal1">',
'                                <div class="portfolio-hover">',
'                                    <div class="portfolio-hover-content"><i class="fas fa-plus fa-3x"></i></div>',
'                                </div>',
'                                <img class="img-fluid" src="#APP_FILES#images/ind3600.jpg" alt="..." />',
'                            </a>',
'                            <div class="portfolio-caption">',
'                                <div class="portfolio-caption-heading">INVEST</div>',
'                                <div class="portfolio-caption-subheading text-muted">Bonds, Mutual Funds</div>',
'                            </div>',
'                        </div>',
'                    </div>',
'                    <div class="col-lg-4 col-sm-6 mb-4 mb-lg-0">',
'                        <!-- Portfolio item 4-->',
'                        <div class="portfolio-item">',
'                            <a class="portfolio-link" data-bs-toggle="modal" href="#portfolioModal1">',
'                                <div class="portfolio-hover">',
'                                    <div class="portfolio-hover-content"><i class="fas fa-plus fa-3x"></i></div>',
'                                </div>',
'                                <img class="img-fluid" src="#APP_FILES#images/ind4600.jpg" alt="..." />',
'                            </a>',
'                            <div class="portfolio-caption">',
'                                <div class="portfolio-caption-heading">BORROW</div>',
'                                <div class="portfolio-caption-subheading text-muted">Loans, EMI, Mortgage</div>',
'                            </div>',
'                        </div>',
'                    </div>',
'                    <div class="col-lg-4 col-sm-6 mb-4 mb-sm-0">',
'                        <!-- Portfolio item 5-->',
'                        <div class="portfolio-item">',
'                            <a class="portfolio-link" data-bs-toggle="modal" href="#portfolioModal1">',
'                                <div class="portfolio-hover">',
'                                    <div class="portfolio-hover-content"><i class="fas fa-plus fa-3x"></i></div>',
'                                </div>',
'                                <img class="img-fluid" src="#APP_FILES#images/ind6600.jpg" alt="..." />',
'                            </a>',
'                            <div class="portfolio-caption">',
'                                <div class="portfolio-caption-heading">INSURE</div>',
'                                <div class="portfolio-caption-subheading text-muted">Cars, Health, Business</div>',
'                            </div>',
'                        </div>',
'                    </div>',
'                    <div class="col-lg-4 col-sm-6">',
'                        <!-- Portfolio item 6-->',
'                        <div class="portfolio-item">',
'                            <a class="portfolio-link" data-bs-toggle="modal" href="#portfolioModal1">',
'                                <div class="portfolio-hover">',
'                                    <div class="portfolio-hover-content"><i class="fas fa-plus fa-3x"></i></div>',
'                                </div>',
'                                <img class="img-fluid" src="#APP_FILES#images/ind7600.jpg" alt="..." />',
'                            </a>',
'                            <div class="portfolio-caption">',
'                                <div class="portfolio-caption-heading">OFFERS</div>',
'                                <div class="portfolio-caption-subheading text-muted">Healthcare, Retail</div>',
'                            </div>',
'                        </div>',
'                    </div>',
'                </div>',
'            </div>',
'        </section>',
'        <!-- About-->',
'        <!-- <section class="page-section" id="about">',
'            <div class="container">',
'                <div class="text-center">',
'                    <h2 class="section-heading text-uppercase">About</h2>',
'                    <h3 class="section-subheading text-muted">Lorem ipsum dolor sit amet consectetur.</h3>',
'                </div>',
'                <ul class="timeline">',
'                    <li>',
'                        <div class="timeline-image"><img class="rounded-circle img-fluid" src="#APP_FILES#templates/startbootstrap-agency-gh-pages/assets/img/about/1.jpg" alt="..." /></div>',
'                        <div class="timeline-panel">',
'                            <div class="timeline-heading">',
'                                <h4>1999-2000</h4>',
'                                <h4 class="subheading">Secure Banking with Lockers</h4>',
'                            </div>',
'                            <div class="timeline-body"><p class="text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt ut voluptatum eius sapiente, totam reiciendis temporibus qui quibusdam, recusandae sit vero unde, sed, incidun'
||'t et ea quo dolore laudantium consectetur!</p></div>',
'                        </div>',
'                    </li>',
'                    <li class="timeline-inverted">',
'                        <div class="timeline-image"><img class="rounded-circle img-fluid" src="#APP_FILES#templates/startbootstrap-agency-gh-pages/assets/img/about/2.jpg" alt="..." /></div>',
'                        <div class="timeline-panel">',
'                            <div class="timeline-heading">',
'                                <h4>March 2001</h4>',
'                                <h4 class="subheading">Internet Banking</h4>',
'                            </div>',
'                            <div class="timeline-body"><p class="text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt ut voluptatum eius sapiente, totam reiciendis temporibus qui quibusdam, recusandae sit vero unde, sed, incidun'
||'t et ea quo dolore laudantium consectetur!</p></div>',
'                        </div>',
'                    </li>',
'                    <li>',
'                        <div class="timeline-image"><img class="rounded-circle img-fluid" src="#APP_FILES#templates/startbootstrap-agency-gh-pages/assets/img/about/3.jpg" alt="..." /></div>',
'                        <div class="timeline-panel">',
'                            <div class="timeline-heading">',
'                                <h4>April 2007</h4>',
'                                <h4 class="subheading">Mobile Banking</h4>',
'                            </div>',
'                            <div class="timeline-body"><p class="text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt ut voluptatum eius sapiente, totam reiciendis temporibus qui quibusdam, recusandae sit vero unde, sed, incidun'
||'t et ea quo dolore laudantium consectetur!</p></div>',
'                        </div>',
'                    </li>',
'                    <li class="timeline-inverted">',
'                        <div class="timeline-image"><img class="rounded-circle img-fluid" src="#APP_FILES#templates/startbootstrap-agency-gh-pages/assets/img/about/4.jpg" alt="..." /></div>',
'                        <div class="timeline-panel">',
'                            <div class="timeline-heading">',
'                                <h4>April 2015</h4>',
'                                <h4 class="subheading">Unified Payment Interface</h4>',
'                            </div>',
'                            <div class="timeline-body"><p class="text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt ut voluptatum eius sapiente, totam reiciendis temporibus qui quibusdam, recusandae sit vero unde, sed, incidun'
||'t et ea quo dolore laudantium consectetur!</p></div>',
'                        </div>',
'                    </li>',
'                    <li class="timeline-inverted">',
'                        <div class="timeline-image">',
'                            <h4>',
'                                Be Part',
'                                <br />',
'                                Of Our',
'                                <br />',
'                                Story!',
'                            </h4>',
'                        </div>',
'                    </li>',
'                </ul>',
'            </div>',
'        </section> -->',
'        <!-- Team',
'        <section class="page-section bg-light" id="team">',
'            <div class="container">',
'                <div class="text-center">',
'                    <h2 class="section-heading text-uppercase">Our Amazing Team</h2>',
'                    <h3 class="section-subheading text-muted">Lorem ipsum dolor sit amet consectetur.</h3>',
'                </div>',
'                <div class="row">',
'                    <div class="col-lg-4">',
'                        <div class="team-member">',
'                            <img class="mx-auto rounded-circle" src="#APP_FILES#templates/startbootstrap-agency-gh-pages/assets/img/team/1.jpg" alt="..." />',
'                            <h4>Parveen Anand</h4>',
'                            <p class="text-muted">Lead Designer</p>',
'                            <a class="btn btn-dark btn-social mx-2" href="#!" aria-label="Parveen Anand Twitter Profile"><i class="fab fa-twitter"></i></a>',
'                            <a class="btn btn-dark btn-social mx-2" href="#!" aria-label="Parveen Anand Facebook Profile"><i class="fab fa-facebook-f"></i></a>',
'                            <a class="btn btn-dark btn-social mx-2" href="#!" aria-label="Parveen Anand LinkedIn Profile"><i class="fab fa-linkedin-in"></i></a>',
'                        </div>',
'                    </div>',
'                    <div class="col-lg-4">',
'                        <div class="team-member">',
'                            <img class="mx-auto rounded-circle" src="#APP_FILES#templates/startbootstrap-agency-gh-pages/assets/img/team/2.jpg" alt="..." />',
'                            <h4>Diana Petersen</h4>',
'                            <p class="text-muted">Lead Marketer</p>',
'                            <a class="btn btn-dark btn-social mx-2" href="#!" aria-label="Diana Petersen Twitter Profile"><i class="fab fa-twitter"></i></a>',
'                            <a class="btn btn-dark btn-social mx-2" href="#!" aria-label="Diana Petersen Facebook Profile"><i class="fab fa-facebook-f"></i></a>',
'                            <a class="btn btn-dark btn-social mx-2" href="#!" aria-label="Diana Petersen LinkedIn Profile"><i class="fab fa-linkedin-in"></i></a>',
'                        </div>',
'                    </div>',
'                    <div class="col-lg-4">',
'                        <div class="team-member">',
'                            <img class="mx-auto rounded-circle" src="#APP_FILES#templates/startbootstrap-agency-gh-pages/assets/img/team/3.jpg" alt="..." />',
'                            <h4>Larry Parker</h4>',
'                            <p class="text-muted">Lead Developer</p>',
'                            <a class="btn btn-dark btn-social mx-2" href="#!" aria-label="Larry Parker Twitter Profile"><i class="fab fa-twitter"></i></a>',
'                            <a class="btn btn-dark btn-social mx-2" href="#!" aria-label="Larry Parker Facebook Profile"><i class="fab fa-facebook-f"></i></a>',
'                            <a class="btn btn-dark btn-social mx-2" href="#!" aria-label="Larry Parker LinkedIn Profile"><i class="fab fa-linkedin-in"></i></a>',
'                        </div>',
'                    </div>',
'                </div>',
'                <div class="row">',
'                    <div class="col-lg-8 mx-auto text-center"><p class="large text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aut eaque, laboriosam veritatis, quos non quis ad perspiciatis, totam corporis ea, alias ut unde.</p><'
||'/div>',
'                </div>',
'            </div>',
'        </section> -->',
'        <!-- Clients-->',
'        <!-- <div class="py-5">',
'            <div class="container">',
'                <div class="row align-items-center">',
'                    <div class="col-md-3 col-sm-6 my-3">',
'                        <a href="#!"><img class="img-fluid img-brand d-block mx-auto" src="#APP_FILES#templates/startbootstrap-agency-gh-pages/assets/img/logos/microsoft.svg" alt="..." aria-label="Microsoft Logo" /></a>',
'                    </div>',
'                    <div class="col-md-3 col-sm-6 my-3">',
'                        <a href="#!"><img class="img-fluid img-brand d-block mx-auto" src="#APP_FILES#templates/startbootstrap-agency-gh-pages/assets/img/logos/google.svg" alt="..." aria-label="Google Logo" /></a>',
'                    </div>',
'                    <div class="col-md-3 col-sm-6 my-3">',
'                        <a href="#!"><img class="img-fluid img-brand d-block mx-auto" src="#APP_FILES#templates/startbootstrap-agency-gh-pages/assets/img/logos/facebook.svg" alt="..." aria-label="Facebook Logo" /></a>',
'                    </div>',
'                    <div class="col-md-3 col-sm-6 my-3">',
'                        <a href="#!"><img class="img-fluid img-brand d-block mx-auto" src="#APP_FILES#templates/startbootstrap-agency-gh-pages/assets/img/logos/ibm.svg" alt="..." aria-label="IBM Logo" /></a>',
'                    </div>',
'                </div>',
'            </div>',
'        </div> -->',
'        <!-- Contact-->',
'          ',
'        <!-- Portfolio item 1 modal popup-->',
'        <div class="portfolio-modal modal fade" id="portfolioModal1" tabindex="-1" role="dialog" aria-hidden="true">',
'            <div class="modal-dialog">',
'                <div class="modal-content">',
'                    <div class="close-modal" data-bs-dismiss="modal"><img src="#APP_FILES#templates/startbootstrap-agency-gh-pages/assets/img/close-icon.svg" alt="Close modal" /></div>',
'                    <div class="container">',
'                        <div class="row justify-content-center">',
'                            <div class="col-lg-8">',
'                                <div class="modal-body">',
'                                    <!-- Project details-->',
'                                    <h2 class="text-uppercase">Project Name</h2>',
'                                    <p class="item-intro text-muted">Lorem ipsum dolor sit amet consectetur.</p>',
'                                    <img class="img-fluid d-block mx-auto" src="#APP_FILES#templates/startbootstrap-agency-gh-pages/assets/img/portfolio/1a.jpg" alt="..." />',
'                                    <p>Use this area to describe your project. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Est blanditiis dolorem culpa incidunt minus dignissimos deserunt repellat aperiam quasi sunt officia expedita bea'
||'tae cupiditate, maiores repudiandae, nostrum, reiciendis facere nemo!</p>',
'                                    <ul class="list-inline">',
'                                        <li>',
'                                            <strong>Client:</strong>',
'                                            Threads',
'                                        </li>',
'                                        <li>',
'                                            <strong>Category:</strong>',
'                                            Illustration',
'                                        </li>',
'                                    </ul>',
'                                    <button class="btn btn-primary btn-xl text-uppercase" data-bs-dismiss="modal" type="button">',
'                                        <i class="fas fa-xmark me-1"></i>',
'                                        Close Project',
'                                    </button>',
'                                </div>',
'                            </div>',
'                        </div>',
'                    </div>',
'                </div>',
'            </div>',
'        </div>',
'        <!-- Portfolio item 2 modal popup-->',
'        <div class="portfolio-modal modal fade" id="portfolioModal2" tabindex="-1" role="dialog" aria-hidden="true">',
'            <div class="modal-dialog">',
'                <div class="modal-content">',
'                    <div class="close-modal" data-bs-dismiss="modal"><img src="#APP_FILES#templates/startbootstrap-agency-gh-pages/assets/img/close-icon.svg" alt="Close modal" /></div>',
'                    <div class="container">',
'                        <div class="row justify-content-center">',
'                            <div class="col-lg-8">',
'                                <div class="modal-body">',
'                                    <!-- Project details-->',
'                                    <h2 class="text-uppercase">Project Name</h2>',
'                                    <p class="item-intro text-muted">Lorem ipsum dolor sit amet consectetur.</p>',
'                                    <img class="img-fluid d-block mx-auto" src="#APP_FILES#templates/startbootstrap-agency-gh-pages/assets/img/portfolio/2a.jpg" alt="..." />',
'                                    <p>Use this area to describe your project. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Est blanditiis dolorem culpa incidunt minus dignissimos deserunt repellat aperiam quasi sunt officia expedita bea'
||'tae cupiditate, maiores repudiandae, nostrum, reiciendis facere nemo!</p>',
'                                    <ul class="list-inline">',
'                                        <li>',
'                                            <strong>Client:</strong>',
'                                            Explore',
'                                        </li>',
'                                        <li>',
'                                            <strong>Category:</strong>',
'                                            Graphic Design',
'                                        </li>',
'                                    </ul>',
'                                    <button class="btn btn-primary btn-xl text-uppercase" data-bs-dismiss="modal" type="button">',
'                                        <i class="fas fa-xmark me-1"></i>',
'                                        Close Project',
'                                    </button>',
'                                </div>',
'                            </div>',
'                        </div>',
'                    </div>',
'                </div>',
'            </div>',
'        </div>',
'        <!-- Portfolio item 3 modal popup-->',
'        <div class="portfolio-modal modal fade" id="portfolioModal3" tabindex="-1" role="dialog" aria-hidden="true">',
'            <div class="modal-dialog">',
'                <div class="modal-content">',
'                    <div class="close-modal" data-bs-dismiss="modal"><img src="#APP_FILES#templates/startbootstrap-agency-gh-pages/assets/img/close-icon.svg" alt="Close modal" /></div>',
'                    <div class="container">',
'                        <div class="row justify-content-center">',
'                            <div class="col-lg-8">',
'                                <div class="modal-body">',
'                                    <!-- Project details-->',
'                                    <h2 class="text-uppercase">Project Name</h2>',
'                                    <p class="item-intro text-muted">Lorem ipsum dolor sit amet consectetur.</p>',
'                                    <img class="img-fluid d-block mx-auto" src="#APP_FILES#templates/startbootstrap-agency-gh-pages/assets/img/portfolio/3a.jpg" alt="..." />',
'                                    <p>Use this area to describe your project. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Est blanditiis dolorem culpa incidunt minus dignissimos deserunt repellat aperiam quasi sunt officia expedita bea'
||'tae cupiditate, maiores repudiandae, nostrum, reiciendis facere nemo!</p>',
'                                    <ul class="list-inline">',
'                                        <li>',
'                                            <strong>Client:</strong>',
'                                            Finish',
'                                        </li>',
'                                        <li>',
'                                            <strong>Category:</strong>',
'                                            Identity',
'                                        </li>',
'                                    </ul>',
'                                    <button class="btn btn-primary btn-xl text-uppercase" data-bs-dismiss="modal" type="button">',
'                                        <i class="fas fa-xmark me-1"></i>',
'                                        Close Project',
'                                    </button>',
'                                </div>',
'                            </div>',
'                        </div>',
'                    </div>',
'                </div>',
'            </div>',
'        </div>',
'        <!-- Portfolio item 4 modal popup-->',
'        <div class="portfolio-modal modal fade" id="portfolioModal4" tabindex="-1" role="dialog" aria-hidden="true">',
'            <div class="modal-dialog">',
'                <div class="modal-content">',
'                    <div class="close-modal" data-bs-dismiss="modal"><img src="#APP_FILES#templates/startbootstrap-agency-gh-pages/assets/img/close-icon.svg" alt="Close modal" /></div>',
'                    <div class="container">',
'                        <div class="row justify-content-center">',
'                            <div class="col-lg-8">',
'                                <div class="modal-body"> ',
'                                    <h2 class="text-uppercase">Project Name</h2>',
'                                    <p class="item-intro text-muted">Lorem ipsum dolor sit amet consectetur.</p>',
'                                    <img class="img-fluid d-block mx-auto" src="#APP_FILES#templates/startbootstrap-agency-gh-pages/assets/img/portfolio/4a.jpg" alt="..." />',
'                                    <p>Use this area to describe your project. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Est blanditiis dolorem culpa incidunt minus dignissimos deserunt repellat aperiam quasi sunt officia expedita bea'
||'tae cupiditate, maiores repudiandae, nostrum, reiciendis facere nemo!</p>',
'                                    <ul class="list-inline">',
'                                        <li>',
'                                            <strong>Client:</strong>',
'                                            Lines',
'                                        </li>',
'                                        <li>',
'                                            <strong>Category:</strong>',
'                                            Branding',
'                                        </li>',
'                                    </ul>',
'                                    <button class="btn btn-primary btn-xl text-uppercase" data-bs-dismiss="modal" type="button">',
'                                        <i class="fas fa-xmark me-1"></i>',
'                                        Close Project',
'                                    </button>',
'                                </div>',
'                            </div>',
'                        </div>',
'                    </div>',
'                </div>',
'            </div>',
'        </div>  ',
'        ',
'         ',
' <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script> ',
'<script src="#APP_FILES#templates/startbootstrap-agency-gh-pages/js/scripts.js"></script>'))
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp.component_end;
end;
/
