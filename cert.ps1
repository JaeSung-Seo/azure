### Root Certificate 
$cert = New-SelfSignedCertificate -type custom -KeySpec Signature `
-Subject "CN=P2SRootCert" -KeyExportPolicy Exportable `
-HashAlgorithm sha256 -KeyLength 2048  `
-CertStoreLocation "Cert:\CurrentUser\My" -KeyUsageProperty Sign -KeyUsage CertSign


New-SelfSignedCertificate -type custom -DnsName P2SChildCert -KeySpec Signature `
-Subject "CN=P2ChildCert" -KeyExportPolicy Exportable `
-HashAlgorithm sha256 -KeyLength 2048  `
-CertStoreLocation "Cert:\CurrentUser\My" `
-Signer $cert -TextExtension @("2.5.29.37={text}1.3.6.1.5.5.7.3.2")