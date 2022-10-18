WITH Ada.Text_Io; USE Ada.Text_Io;

PROCEDURE Ver_Contiene_A IS
   -- salida: 7 booleanos(SE)
   -- post: corresponden a cada uno de los casos de pruebas diseñados.

   --Pre={n>=0}
   FUNCTION Contiene_A (S : String) RETURN Boolean IS
   -- EJERCICIO 3- ESPECIFICA E IMPLEMENTA recursivamente el subprograma
   --   Contiene_a que decide si el string S contiene el carácter 'a'.
   BEGIN
      -- Completar
      IF S'Length = 0 THEN RETURN False;
      ELSE RETURN S(S'First)='a' OR Contiene_A(S(S'First+1..S'Last));
      END IF;
   END Contiene_A;
    --Post={Contiene_A(S)<=>\existsj(S'First<=j<=S'Last^S(j)=a}

BEGIN
   Put_Line("-------------------------------------");
   Put("La palabra vacia no contiene el caracter 'a': ");
   Put(Boolean'Image(Contiene_a("")));
   New_Line;
   New_Line;
   New_Line;
   Put_Line("-------------------------------------");
   Put_Line("Palabras de un caracter");
   Put("-- La palabra de 1 caracter 'a' contiene el caracter 'a': ");
   Put(Boolean'Image(Contiene_a("a")));
   New_Line;
   Put("-- La palabra de 1 caracter 'b' no contiene el caracter 'a': ");
   Put(Boolean'Image(Contiene_a("b")));
   New_Line;
   New_Line;
   New_Line;
   Put_Line("-------------------------------------");
   Put_Line("Palabras de varios caracteres");
   Put("-- 'abcd' contiene el caracter 'a': ");
   Put(Boolean'Image(Contiene_a("abcd")));
   New_Line;
   Put("-- 'dcba' contiene el caracter 'a': ");
   Put(Boolean'Image(Contiene_a("dcba")));
   New_Line;
   Put("-- 'dcbabcd' contiene el caracter 'a': ");
   Put(Boolean'Image(Contiene_a("dcbabcd")));
   New_Line;
   Put("-- Pero 'dcbbcd' no contiene el caracter 'a': ");
   Put(Boolean'Image(Contiene_a("dcbbcd")));
   New_Line;
   Put_Line("-------------------------------------");
END Ver_Contiene_A;
