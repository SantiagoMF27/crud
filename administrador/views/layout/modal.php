    <!--Modal para CRUD-->
    <div class="modal fade" id="modalCRUD" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel"></h5>
                    <button type="button" class="btn btn-danger close" data-dismiss="modal" aria-label="Close" title="Cerrar">
                        <span aria-hidden="true">X</span>
                    </button>
                </div>
                <form id="formUsuarios">
                    <div class="modal-body">
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label for="" class="col-form-label">Nombres</label>
                                    <input type="text" class="form-control" id="nombres" aria-required="true" required
                                        autocomplete="off">
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label for="" class="col-form-label">Apellidos</label>
                                    <input type="text" class="form-control" id="apellidos" aria-required="true" required
                                        autocomplete="off">
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-12">
                                    <label for="pais" class="form-label">Pais</label>
                                    <select id="pais" class="form-control">
                                        <option value="">Seleccione</option>
                                        <option value="1">Afganistán</option>
                                        <option value="2">Albania</option>
                                        <option value="3">Alemania</option>
                                        <option value="4">Andorra</option>
                                        <option value="5">Angola</option>
                                        <option value="6">Anguilla</option>
                                        <option value="7">Antártida</option>
                                        <option value="8">Antigua y Barbuda</option>
                                        <option value="9">Antillas Holandesas</option>
                                        <option value="10">Arabia Saudí</option>
                                        <option value="11">Argelia</option>
                                        <option value="12">Argentina</option>
                                        <option value="13">Armenia</option>
                                        <option value="14">Aruba</option>
                                        <option value="15">Australia</option>
                                        <option value="16">Austria</option>
                                        <option value="17">Azerbaiyán</option>
                                        <option value="18">Bahamas</option>
                                        <option value="19">Bahrein</option>
                                        <option value="20">Bangladesh</option>
                                        <option value="21">Barbados</option>
                                        <option value="22">Bielorrusia</option>
                                        <option value="23">Bélgica</option>
                                        <option value="24">Belice</option>
                                        <option value="25">Benin</option>
                                        <option value="26">Bermudas</option>
                                        <option value="27">Bhután</option>
                                        <option value="28">Bolivia</option>
                                        <option value="29">Bosnia y Herzegovina</option>
                                        <option value="30">Botswana</option>
                                        <option value="31">Brasil</option>
                                        <option value="32">Brunei</option>
                                        <option value="33">Bulgaria</option>
                                        <option value="34">Burkina Faso</option>
                                        <option value="35">Burundi</option>
                                        <option value="36">Cabo Verde</option>
                                        <option value="37">Camboya</option>
                                        <option value="38">Camerún</option>
                                        <option value="39">Canadá</option>
                                        <option value="40">República Centroafricana</option>
                                        <option value="41">Chad</option>
                                        <option value="42">República Checa</option>
                                        <option value="43">Chile</option>
                                        <option value="44">China</option>
                                        <option value="45">Chipre</option>
                                        <option value="46">Ciudad del Vaticano</option>
                                        <option value="47" selected>Colombia</option>
                                        <option value="48">Comoras</option>
                                        <option value="49">República Democrática del Congo</option>
                                        <option value="50">Congo</option>
                                        <option value="51">Corea del Norte</option>
                                        <option value="52">Corea del Sur</option>
                                        <option value="53">Costa de Marfíl</option>
                                        <option value="54">Costa Rica</option>
                                        <option value="55">Croacia</option>
                                        <option value="56">Cuba</option>
                                        <option value="57">Dinamarca</option>
                                        <option value="58">Dominica</option>
                                        <option value="59">Republica Dominicana</option>
                                        <option value="60">Ecuador</option>
                                        <option value="61">Egipto</option>
                                        <option value="62">El Salvador</option>
                                        <option value="63">Emiratos Árabes Unidos</option>
                                        <option value="64">Eritrea</option>
                                        <option value="65">Eslovaquia</option>
                                        <option value="66">Eslovenia</option>
                                        <option value="67">España</option>
                                        <option value="68">Estados Unidos</option>
                                        <option value="69">Estonia</option>
                                        <option value="70">Etiopía</option>
                                        <option value="71">Filipinas</option>
                                        <option value="72">Finlandia</option>
                                        <option value="73">Fiyi</option>
                                        <option value="74">Francia</option>
                                        <option value="75">Gabón</option>
                                        <option value="76">Gambia</option>
                                        <option value="77">Georgia</option>
                                        <option value="78">Ghana</option>
                                        <option value="79">Gibraltar</option>
                                        <option value="80">Granada</option>
                                        <option value="81">Grecia</option>
                                        <option value="82">Groenlandia</option>
                                        <option value="83">Guadalupe</option>
                                        <option value="84">Guam</option>
                                        <option value="85">Guatemala</option>
                                        <option value="86">Guayana Francesa</option>
                                        <option value="87">Guinea</option>
                                        <option value="88">Guinea Ecuatorial</option>
                                        <option value="89">Guinea-Bissau</option>
                                        <option value="90">Guayana</option>
                                        <option value="91">Haití</option>
                                        <option value="92">Honduras</option>
                                        <option value="93">Hong Kong</option>
                                        <option value="94">Hungría</option>
                                        <option value="95">India</option>
                                        <option value="96">Indonesia</option>
                                        <option value="97">Irán</option>
                                        <option value="98">Iraq</option>
                                        <option value="99">Irlanda</option>
                                        <option value="100">Islandia</option>
                                        <option value="101">Israel</option>
                                        <option value="102">Italia</option>
                                        <option value="103">Isla Bouvet</option>
                                        <option value="104">Islas Caimán</option>
                                        <option value="105">Islas Cocos</option>
                                        <option value="106">Islas Cook</option>
                                        <option value="107">Islas Faroe</option>
                                        <option value="108">Islas Georgias del Sur y Sandwich del Sur</option>
                                        <option value="109">Islas Gland</option>
                                        <option value="110">Islas Heard y McDonald</option>
                                        <option value="111">Islas Malvinas</option>
                                        <option value="112">Islas Marshall</option>
                                        <option value="113">Islas Marianas del Norte</option>
                                        <option value="114">Isla de Navidad</option>
                                        <option value="115">Isla Norfolk</option>
                                        <option value="116">Islas Pitcairn</option>
                                        <option value="117">Islas Salomón</option>
                                        <option value="118">Islas Turcas y Caicos</option>
                                        <option value="119">Islas Ultramarinas de Estados Unidos</option>
                                        <option value="120">Islas Vírgenes Británicas</option>
                                        <option value="121">Islas Vírgenes de los Estados Unidos</option>
                                        <option value="122">Jamaica</option>
                                        <option value="123">Japón</option>
                                        <option value="124">Jordania</option>
                                        <option value="125">Kazajistán</option>
                                        <option value="126">Kenia</option>
                                        <option value="127">Kirguizistán</option>
                                        <option value="128">Kiribati</option>
                                        <option value="129">Kuwait</option>
                                        <option value="130">Laos</option>
                                        <option value="131">Lesotho</option>
                                        <option value="132">Letonia</option>
                                        <option value="133">Líbano</option>
                                        <option value="134">Liberia</option>
                                        <option value="135">Libia</option>
                                        <option value="136">Liechtenstein</option>
                                        <option value="137">Lituania</option>
                                        <option value="138">Luxemburgo</option>
                                        <option value="139">Macao</option>
                                        <option value="140">Macedonia</option>
                                        <option value="141">Madagascar</option>
                                        <option value="142">Malasia</option>
                                        <option value="143">Malawi</option>
                                        <option value="144">Maldivas</option>
                                        <option value="145">Malí</option>
                                        <option value="146">Malta</option>
                                        <option value="147">Marruecos</option>
                                        <option value="148">Martinica</option>
                                        <option value="149">Mauricio</option>
                                        <option value="150">Mauritania</option>
                                        <option value="151">Mayotte</option>
                                        <option value="152">México</option>
                                        <option value="153">Micronesia</option>
                                        <option value="154">Moldavia</option>
                                        <option value="155">Mónaco</option>
                                        <option value="156">Mongolia</option>
                                        <option value="157">Montserrat</option>
                                        <option value="158">Mozambique</option>
                                        <option value="159">Myanmar</option>
                                        <option value="160">Namibia</option>
                                        <option value="161">Nauru</option>
                                        <option value="162">Nepal</option>
                                        <option value="163">Nicaragua</option>
                                        <option value="164">Níger</option>
                                        <option value="165">Nigeria</option>
                                        <option value="166">Niue</option>
                                        <option value="167">Noruega</option>
                                        <option value="168">Nueva Caledonia</option>
                                        <option value="169">Nueva Zelanda</option>
                                        <option value="170">Omán</option>
                                        <option value="171">Países Bajos</option>
                                        <option value="172">Pakistán</option>
                                        <option value="173">Palau</option>
                                        <option value="174">Palestina</option>
                                        <option value="175">Panamá</option>
                                        <option value="176">Papúa Nueva Guinea</option>
                                        <option value="177">Paraguay</option>
                                        <option value="178">Perú</option>
                                        <option value="179">Polinesia Francesa</option>
                                        <option value="180">Polonia</option>
                                        <option value="181">Portugal</option>
                                        <option value="182">Puerto Rico</option>
                                        <option value="183">Qatar</option>
                                        <option value="184">Reino Unido</option>
                                        <option value="185">Reunión</option>
                                        <option value="186">Ruanda</option>
                                        <option value="187">Rumania</option>
                                        <option value="188">Rusia</option>
                                        <option value="189">Sahara Occidental</option>
                                        <option value="190">Samoa</option>
                                        <option value="191">Samoa Americana</option>
                                        <option value="192">San Cristóbal y Nevis</option>
                                        <option value="193">San Marino</option>
                                        <option value="194">San Pedro y Miquelón</option>
                                        <option value="195">San Vicente y las Granadinas</option>
                                        <option value="196">Santa Helena</option>
                                        <option value="197">Santa Lucía</option>
                                        <option value="198">Santo Tomé y Príncipe</option>
                                        <option value="199">Senegal</option>
                                        <option value="200">Serbia y Montenegro</option>
                                        <option value="201">Seychelles</option>
                                        <option value="202">Sierra Leona</option>
                                        <option value="203">Singapur</option>
                                        <option value="204">Siria</option>
                                        <option value="205">Somalia</option>
                                        <option value="206">Sri Lanka</option>
                                        <option value="207">Suazilandia</option>
                                        <option value="208">Sudáfrica</option>
                                        <option value="209">Sudán</option>
                                        <option value="210">Suecia</option>
                                        <option value="211">Suiza</option>
                                        <option value="212">Surinam</option>
                                        <option value="213">Svalbard y Jan Mayen</option>
                                        <option value="214">Tailandia</option>
                                        <option value="215">Taiwán</option>
                                        <option value="216">Tanzania</option>
                                        <option value="217">Tayikistán</option>
                                        <option value="218">Territorio Británico del Océano Índico</option>
                                        <option value="219">Territorios Australes Franceses</option>
                                        <option value="220">Timor Oriental</option>
                                        <option value="221">Togo</option>
                                        <option value="222">Tokelau</option>
                                        <option value="223">Tonga</option>
                                        <option value="224">Trinidad y Tobago</option>
                                        <option value="225">Túnez</option>
                                        <option value="226">Turkmenistán</option>
                                        <option value="227">Turquía</option>
                                        <option value="228">Tuvalu</option>
                                        <option value="229">Ucrania</option>
                                        <option value="230">Uganda</option>
                                        <option value="231">Uruguay</option>
                                        <option value="232">Uzbekistán</option>
                                        <option value="233">Vanuatu</option>
                                        <option value="234">Venezuela</option>
                                        <option value="235">Vietnam</option>
                                        <option value="236">Wallis y Futuna</option>
                                        <option value="237">Yemen</option>
                                        <option value="238">Yibuti</option>
                                        <option value="239">Zambia</option>
                                        <option value="240">Zimbabue</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label for="" class="col-form-label">Tipo de Documento</label>
                                    <select id="tp_documento" class="form-control" aria-required="true" required>
                                    <option value="">Seleccione</option>
                                            <option value="1" selected>CC. Cédula de Ciudadanía.</option>
                                            <option value="2">CI. Carné de Identidad.</option>
                                            <option value="3">CE. Cédula de Extranjería.</option>
                                            <option value="4">DNI. Documento Nacional de Identidad.</option>
                                            <option value="5">DUI. Documento Único de Identidad.</option>
                                            <option value="6">ID. Identificación Oficial.</option>
                                            <option value="7">PT. Tarjeta Pasaporte. PT</option>
                                            <option value="8">RC. Registro Civil.</option>
                                            <option value="9">TI. Tarjeta de Identidad.</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label for="" class="col-form-label">Número de Documento</label>
                                    <input type="number" class="form-control" id="documento" aria-required="true"
                                        required autocomplete="off">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label for="" class="col-form-label">Genero</label>
                                    <select id="genero" class="form-control" aria-required="true" required>
                                        <option value="">Seleccione</option>
                                        <option value="1">Femenino</option>
                                        <option value="2" selected>Masculino</option>
                                        <option value="3">Otro</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label for="" class="col-form-label">Estado</label>
                                    <select id="estado" class="form-control" aria-required="true" required>
                                        <option value="">Seleccione</option>
                                        <option value="1" selected>Activo</option>
                                        <option value="2">Inactivo</option>
                                        <option value="3">Suspendido</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-danger" data-dismiss="modal" title="Cancelar">Cancelar</button>
                        <button type="submit" id="btnGuardar" class="btn btn-primary" title="Guardar">Guardar</button>
                    </div>
                </form>
            </div>
        </div>
    </div>