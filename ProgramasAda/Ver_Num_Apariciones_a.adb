WITH Ada.Text_Io; USE Ada.Text_Io;
WITH Ada.Integer_Text_Io; USE Ada.Integer_Text_Io;

procedure Ver_Num_Apariciones_a is
   -- salida: 11 enteros(SE)
   -- post: corresponden a cada uno de los casos de pruebas dise?ados.

   --Pre={n>=0}
   FUNCTION Num_Apariciones_A (S: String) RETURN Integer IS
   -- EJERCICIO 4- ESPECIFICA E IMPLEMENTA recursivamente el subprograma
   --   Num_Apariciones_a que devuelve el numero de apariciones del car?cter 'a' en el string S
   BEGIN
      -- Completar
       IF S'Length=0 THEN
         RETURN 0;
      ELSE
         IF S'Length=1 THEN
            IF S(S'First)='a' THEN
               RETURN 1;
            ELSE
               RETURN 0;
            END IF;
         ELSE
            IF S(S'First)='a' THEN
               RETURN Num_Apariciones_A(S(S'First+1..S'Last))+1;
            ELSE
               RETURN Num_Apariciones_A(S(S'First+1..S'Last));
            END IF;
         END IF;
      END IF;
   END Num_Apariciones_A ;
   --Post={return=Ni(S'First<=i<=S'Last^S(i)=a}

begin
   Put_Line("-------------------------------------");
   Put("La palabra vacia contiene 0 apariciones del caracter 'a': ");
   Put(Num_Apariciones_a(""));
   New_Line;
   New_Line;
   New_Line;
   Put_Line("-------------------------------------");
   Put_Line("Palabras de 1 caracter");
   Put("-- La palabra de 1 caracter 'a' contiene 1 aparicion del caracter 'a': ");
   Put(Num_Apariciones_a("a"));
   New_Line;
   Put("-- La palabra de 1 caracter 'b' contiene 0 apariciones del caracter 'a': ");
   Put(Num_Apariciones_a("b"));
   New_Line;
   New_Line;
   New_Line;
   Put_Line("-------------------------------------");
   Put_Line("Palabras de varios caracteres");
   Put("-- 'aaaa' contiene 4 apariciones del caracter 'a': ");
   Put(Num_Apariciones_a("aaaa"));
   New_Line;
   Put("-- 'bbbb' contiene 0 apariciones del caracter 'a': ");
   Put(Num_Apariciones_a("bbbb"));
   New_Line;
   Put("-- 'abab' contiene 2 apariciones del caracter 'a': ");
   Put(Num_Apariciones_a("abab"));
   New_Line;
   Put("-- 'baba' contiene 2 apariciones del caracter 'a': ");
   Put(Num_Apariciones_a("baba"));
   New_Line;
   Put("-- 'abba' contiene 2 apariciones del caracter 'a': ");
   Put(Num_Apariciones_a("abba"));
   New_Line;
   Put("-- 'baab' contiene 2 apariciones del caracter 'a': ");
   Put(Num_Apariciones_a("baab"));
   New_Line;
   Put("-- 'abbb' contiene 1 aparicion del caracter 'a': ");
   Put(Num_Apariciones_a("abbb"));
   New_Line;
   Put("-- 'babb' contiene 1 aparicion del caracter 'a': ");
   Put(Num_Apariciones_a("babb"));
   New_Line;
   Put("-- 'bbab' contiene 1 aparicion del caracter 'a': ");
   Put(Num_Apariciones_a("bbab"));
   New_Line;
   Put("-- 'bbba' contiene 1 aparicion del caracter 'a': ");
   Put(Num_Apariciones_a("bbba"));
   New_Line;
   Put_Line("-------------------------------------");
end Ver_Num_Apariciones_a;
