<?php
 require_once 'conexao.php';
 //sessão.
 session_start();
 //botão enviar.
 require ('fpdf181/fpdf.php');

 class PDF extends FPDF {
	// Cabeçalho
	function Header()
	{
		
	
            // Logo
			// Arial bold 15
			$this->SetFont('Arial','B',15);
			// Move to the right
			$this->Cell(70);
			// Title
			//$this->Cell(50,10,utf8_decode('Prova de Matématica - E.E.E.P MARWIN'),0,1,'C');
			//$this->Cell(50,10,utf8_decode('Nome do Aluno: _________________________________________'),0,1,'L');
			//$this->Cell(30,10,'Title',1,0,'C');
			// Line break
			$this->Ln(20);
			
			
		
		
	}
	
	 
	// Rodapé
	function Footer()
	{
		// Position at 1.5 cm from bottom
		$this->SetY(-15);
		// Arial italic 8
		$this->SetFont('Arial','I',8);
		// Page number
		$this->Cell(0,10,utf8_decode('Página ').$this->PageNo().'/{nb}',0,0,'C');
	}
}
 

	// Instanciação 
	$pdf = new PDF();
	$pdf->AliasNbPages();
	$pdf->AddPage();
    $pdf->MultiCell(140,10,utf8_decode('Prova de Matématica - E.E.E.P Marwin'),2,0);
    $pdf->MultiCell(120,10,utf8_decode('Análise Combinatória'),2,0);
    //$pdf->Image('img/governo.jpg',170,6,30);
	$pdf->MultiCell(200,12,utf8_decode('Nome:________________________________________________    Nº.:__'),2,1);
	$pdf->MultiCell(200,12,utf8_decode('Professor:___________           Ano:__               Turma:________________ '),2,1);
	$pdf->MultiCell(200,12,' ',2,1);
	$pdf->SetFont('Times','',12);
    //Questões
    $idquestao = array();
    for($n = 1; $n<11; $n++){
        $idquestao[$n] = rand(1, 35);
    }


	for($n = 1; $n < 11; $n++){
		$result_questoes = "SELECT * FROM questoes WHERE idquestao = '{$idquestao[$n]}' LIMIT 1";
		$resultado_questoes = mysqli_query($conn, $result_questoes);
		$row_questoes = mysqli_fetch_assoc($resultado_questoes);

		$pdf->MultiCell(0,10,utf8_decode("$n. "). $row_questoes['questao'],0,'L', false);

		
    }
  
    
	$pdf->Output();