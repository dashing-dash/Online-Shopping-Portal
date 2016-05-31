

<div id = "topSearch">
    <div class="container_16">
        <div class="grid_16">
            <div class="grid_9">


                <input type="text" id="search" class="searchBox" placeholder="Search an item ..."/>

            </div>
            <div class="grid_6" id="topNav">
                <ul>
                    <li><a href="index.jsp">HOME</a></li>
                    <li><a href="viewProducts_.jsp">PRODUCTS</a></li>
                    <li><a href="_newLogin.jsp">Login</a></li>
                    <li><a href="_newRegister.jsp">Register</a></li>
                    
                    
                </ul>
            </div>
        </div>
    </div>
</div>


<script type="text/javascript">
    $(document).ready(function (){
             
        $('#search').keyup (function (){
            searchbar = $('#search').attr('value');//get attr
            if (searchbar.length >= 2){
                $.get('findProductLoad_1.jsp', {searchvar:searchbar}, function (data){
                            //alert(data);
                        // $('#loadSearches').css("background-color", "yellow");
                        $('#loadSearches').html(data).slideDown("slow");
                   
                });
                       
            }else {
                 $('#loadSearches').slideUp("slow");
                $('#loadSearches').html("");
            }
        });
    });
            
</script>


<div class="container_16" id="loadSearches" ></div>
