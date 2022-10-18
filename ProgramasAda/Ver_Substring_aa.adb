WITH Ada.Text_Io; USE Ada.Text_Io;

procedure Ver_Substring_aa is
   -- salida: 11 booleanos(SE)
   -- post: corresponden a cada uno de los casos de pruebas diseñados.

   --Pre={n>=0}
   FUNCTION Substring_Aa(S : String) RETURN Boolean IS
   -- EJERCICIO 5- ESPECIFICA E IMPLEMENTA recursivamente el subprograma
   --   Substring_aa que decide si el string S contiene el substring 'aa'.
   BEGIN
      -- Completar
      IF S'Length < 2 THEN RETURN False;
      ELSE RETURN S(S'First..S'First+1)="aa" OR Substring_Aa(S(S'First+1..S'Last));
      END IF;
   END Substring_Aa;
   --Post={Substring_Aa(S)<=>\existsj(S'First<=j<S'Last^S(j)=a^S(j+1)=a}


begin
   Put_Line("-------------------------------------");
   Put("La palabra vacia no contiene el string 'aa': ");
   Put(Boolean'Image(Substring_aa("")));
   New_Line;
   New_Line;
   New_Line;
   Put_Line("-------------------------------------");
   Put_Line("Palabras de 1 caracter");
   Put("-- La palabra de 1 caracter 'a' no contiene el substring 'aa': ");
   Put(Boolean'Image(Substring_aa("a")));
   New_Line;
   Put("-- La palabra de 1 caracter 'b' no contiene el substring 'aa': ");
   Put(Boolean'Image(Substring_aa("b")));
   New_Line;
   New_Line;
   New_Line;
   Put_Line("-------------------------------------");
   Put_Line("Palabras de varios caracteres");
   Put("-- 'aaaa' contiene el substring 'aa': ");
   Put(Boolean'Image(Substring_aa("aaaa")));
   New_Line;
   Put("-- 'bbbb' no contiene el substring 'aa': ");
   Put(Boolean'Image(Substring_aa("bbbb")));
   New_Line;
   Put("-- 'abab' no contiene el substring 'aa': ");
   Put(Boolean'Image(Substring_aa("abab")));
   New_Line;
   Put("-- 'baba' no contiene el substring 'aa': ");
   Put(Boolean'Image(Substring_aa("baba")));
   New_Line;
   Put("-- 'abba' no contiene el substring 'aa': ");
   Put(Boolean'Image(Substring_aa("abba")));
   New_Line;
   Put("-- 'aabb' contiene el substring 'aa': ");
   Put(Boolean'Image(Substring_aa("aabb")));
   New_Line;
   Put("-- 'baab' contiene el substring 'aa': ");
   Put(Boolean'Image(Substring_aa("baab")));
   New_Line;
   Put("-- 'bbaa' contiene el substring 'aa': ");
   Put(Boolean'Image(Substring_aa("bbaa")));
   New_Line;
   Put_Line("-------------------------------------");
end Ver_Substring_aa;
