Write-Host "Iniciando auditoría automática de Open Hub Tec..."

$archivosRequeridos = @("README.md", "CHECKLIST-AUDITORIA.md", "AUDITORIA-CMMI-MOPROSOFT.md", "SISTEMA-INSIGNIAS.md", "RESULTADO-AUDITORIA.md")
$errores = 0

foreach ($archivo in $archivosRequeridos) {
    if (Test-Path $archivo) {
        Write-Host "[OK] $archivo encontrado." -ForegroundColor Green
    } else {
        Write-Host "[X] Falta el archivo $archivo." -ForegroundColor Red
        $errores++
    }
}

if ($errores -gt 0) {
    Write-Host "Auditoría fallida: Faltan $errores archivos requeridos."
    exit 1
} else {
    Write-Host "Auditoría superada. Estructura básica de calidad presente."
    exit 0
}
