function szamitas(){
        var bruttopolol=Math.round(dbl.value*arl.value*(1+(afal.value/100)));
        var bruttopolos=Math.round(dbs.value*ars.value*(1+(afas.value/100)));
        var bruttobogre=Math.round(dbb.value*arb.value*(1+(afab.value/100)));
        var bruttosapka=Math.round(dbbs.value*arbs.value*(1+(afabs.value/100)));
        document.getElementById('bruttol').value = bruttopolol;
        document.getElementById('bruttos').value = bruttopolos;
        document.getElementById('bruttob').value = bruttobogre;
        document.getElementById('bruttobs').value = bruttosapka;
        document.getElementById('bruttoossz').value = bruttopolol+bruttopolos+bruttobogre+bruttosapka;
        
    }


