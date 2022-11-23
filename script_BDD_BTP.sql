Sub Create_Tables()

DoCmd.RunSQL "CREATE TABLE Client(" & _
   "id VARCHAR(50)," & _
   "anneeNaiss INT," & _
   "ville VARCHAR(50)," & _
   "nom VARCHAR(50)," & _
   "PRIMARY KEY(id)" & _
");"   

DoCmd.RunSQL "CREATE TABLE Commande(" & _
   "num VARCHAR(50)," & _
   "idC VARCHAR(50)," & _
   "labelP VARCHAR(50)," & _
   "qte INT," & _
   "id VARCHAR(50) NOT NULL," & _
   "PRIMARY KEY(num, idC, labelP)," & _
   "FOREIGN KEY(id) REFERENCES Client(id)" & _
");"   

DoCmd.RunSQL "CREATE TABLE Fournisseur(" & _
   "id VARCHAR(50)," & _
   "nom VARCHAR(50)," & _
   "age INT," & _
   "ville VARCHAR(50)," & _
   "PRIMARY KEY(id)" & _
");"   

DoCmd.RunSQL "CREATE TABLE Produit(" & _
   "label VARCHAR(50)," & _
   "idF VARCHAR(50)," & _
   "prix CURRENCY," & _
   "id VARCHAR(50) NOT NULL," & _
   "num VARCHAR(50) NOT NULL," & _
   "idC VARCHAR(50) NOT NULL," & _
   "labelP VARCHAR(50) NOT NULL," & _
   "PRIMARY KEY(label, idF)," & _
   "FOREIGN KEY(id) REFERENCES Fournisseur(id)," & _
   "FOREIGN KEY(num, idC, labelP) REFERENCES Commande(num, idC, labelP)" & _
");"   

End Sub