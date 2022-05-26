$(document).ready(function()
{
	//funzione di controllo validità campi
	function checkData()
	{
		let expressionNome = /^[a-zàéèìòù\s'\.]{1,50}$/i;
		let expressionAnno = /^(?:(?:31(\/|-|\.)(?:0?[13578]|1[02]))\1|(?:(?:29|30)(\/|-|\.)(?:0?[1,3-9]|1[0-2])\2))(?:(?:1[6-9]|[2-9]\d)?\d{2})$|^(?:29(\/|-|\.)0?2\3(?:(?:(?:1[6-9]|[2-9]\d)?(?:0[48]|[2468][048]|[13579][26])|(?:(?:16|[2468][048]|[3579][26])00))))$|^(?:0?[1-9]|1\d|2[0-8])(\/|-|\.)(?:(?:0?[1-9])|(?:1[0-2]))\4(?:(?:1[6-9]|[2-9]\d)?\d{2})$/;
		let expressionUsername = /^[a-z0-9àéèìòù\s'\.,-]{1,255}$/i;
		let expressionEmail = /^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/;
		let expressionIndirizzo = /^[a-zA-Z]{3,}[\d]{1,}$/;
		let expressionCap = /^[0-9]{5}$/;
		let expressionPassword = /^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,}$/;
		let expressionCodiceFiscale = /^(?:[A-Z][AEIOU][AEIOUX]|[AEIOU]X{2}|[B-DF-HJ-NP-TV-Z]{2}[A-Z]){2}(?:[\dLMNP-V]{2}(?:[A-EHLMPR-T](?:[04LQ][1-9MNP-V]|[15MR][\dLMNP-V]|[26NS][0-8LMNP-U])|[DHPS][37PT][0L]|[ACELMRT][37PT][01LM]|[AC-EHLMPR-T][26NS][9V])|(?:[02468LNQSU][048LQU]|[13579MPRTV][26NS])B[26NS][9V])(?:[A-MZ][1-9MNP-V][\dLMNP-V]{2}|[A-M][0L](?:[1-9MNP-V][\dLMNP-V]|[0L][1-9MNP-V]))[A-Z]$/i;
		let expressionCitta = /^([a-zA-Z\u0080-\u024F]+(?:. |-| |'))*[a-zA-Z\u0080-\u024F]*$/;
		let expressionProvincia = /^[a-zA-Z]{2}$/;
		
		return new Array
		(
			expressionNome.test($('#nomeReg').val()),
			expressionNome.test($('#cognomeReg').val()),
			expressionUsername.test($('#usernameReg').val()),
			expressionEmail.test($('#emailReg').val()),
			expressionCodiceFiscale.test($('#codicefiscaleReg').val()),
			expressionAnno.test($('#annoReg').val()),
			expressionIndirizzo.test($('#indirizzoReg').val()),
			expressionCitta.test($('#cittaReg').val()),
			expressionCap.test($('#capReg').val()),
			expressionProvincia.test($('#provinciaReg').val()),
			expressionPassword.test($('#passwordReg').val()),
			$('#passwordValidReg').val().equals($('#passwordReg').val()),
			$('#accept').val().equals("accepted")
		);
	}
	
	//funzione di invio dati in post al controller
	function sendData()
	{
		$.post
	    (
	      'registrazione/convalida',
	      {
			nome:$('#titleCl').val(),
	        cognome:$('#authorCl').val(),
	        username:$('#yearCl').val(),
	        email:$('#priceCl').val(),
	        codicefiscale:$('#descriptionCl').val(),
	        anno:$('#quantityCl').val(),
	        indirizzo:$('#titleCl').val(),
	        citta:$('#authorCl').val(),
	        cap:$('#yearCl').val(),
	        provincia:$('#priceCl').val(),
	        password:$('#descriptionCl').val()
	      },
	      function (response)
	      {
	        if (response === 'save success')
				location.href = '/centroSportivo/index';
			else
				$('#errorAlert').css({'display':'block'});
	      }
	    );
	}
	
	//azione click button di registrazione
	$('#submitReg').click(function()
	{
		let verifiedData = checkData();
		if (verifiedData[0] && 
			verifiedData[1] && 
			verifiedData[2] && 
			verifiedData[3] && 
			verifiedData[4] &&
			verifiedData[5] &&
			verifiedData[6] && 
			verifiedData[7] && 
			verifiedData[8] && 
			verifiedData[9] && 
			verifiedData[10] && 
			verifiedData[11] && 
			verifiedData[12])
			{
				sendData();
			}
		else
		{
			if (!verifiedData[0])
			{
				$('#nameError').css({'display':'block'});
				return;
			}
			
			if (!verifiedData[1])
			{
				$('#surnameError').css({'display':'block'});
				return;
			}
			
			if (!verifiedData[2])
			{
				$('#passwordError').css({'display':'block'});
				return;
			}
			
			if (!verifiedData[3])
			{
				$('#emailError').css({'display':'block'});
				return;
			}
			
			if (!verifiedData[4])
			{
				$('#telError').css({'display':'block'});
				return;
			}
			
			if (!verifiedData[5])
			{
				$('#addressError').css({'display':'block'});
				return;
			}
			
			if (!verifiedData[6])
				{
					$('#capError').css({'display':'block'});
					return;
				}
				
			if (!verifiedData[7])
			{
				$('#authorClError').css({'display':'block'});
				return;
			}
			
			if (!verifiedData[8])
			{
				$('#yearClError').css({'display':'block'});
				return;
			}
			
			if (!verifiedData[9])
			{
				$('#priceClError').css({'display':'block'});
				return;
			}
			
			if (!verifiedData[10])
			{
				$('#descriptionClError').css({'display':'block'});
				return;
			}
			
			if (!verifiedData[11])
			{
				$('#quantityClError').css({'display':'block'});
				return;
			}
			
			if (!verifiedData[12])
			{
				$('#quantityClError').css({'display':'block'});
				return;
			}
		}
	});
	
	//reset dei messaggi di errore al focus
	$('#titleCl').focusin(function ()
	{
	  $('#titleClError').css({'display':'none'});
	});
	$('#authorCl').focusin(function ()
	{
	  $('#authorClError').css({'display':'none'});
	});
	$('#yearCl').focusin(function ()
	{
	  $('#yearClError').css({'display':'none'});
	});
	$('#priceCl').focusin(function ()
	{
	  $('#priceClError').css({'display':'none'});
	});
	$('#descriptionCl').focusin(function ()
	{
	  $('#descriptionClError').css({'display':'none'});
	});
	$('#quantityCl').focusin(function ()
	{
	  $('#quantityClError').css({'display':'none'});
	});
});