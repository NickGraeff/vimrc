Vim�UnDo� ��?�צ��c�D���,9����-MX6a�KC      	rm $1.lst                             X�X    _�                            ����                                                                                                                                                                                                                                                                                                                                                             X�%     �         !      (yasm -g dwarf2 -f elf64 $1.asm -l $1.lst5�_�                       $    ����                                                                                                                                                                                                                                                                                                                                                             X�(     �         !      *yasm -g dwarf2 -f elf64 main.asm -l $1.lst5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             X�0     �         !      gcc -g -o $1 $1.o -pthread5�_�                       
    ����                                                                                                                                                                                                                                                                                                                                                             X�3     �         !      gcc -g -o $1 main.o -pthread5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             X�8     �          !       5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             X�:     �                 ddddddd5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             X�:     �                 #!/bin/bash5�_�      	                      ����                                                                                                                                                                                                                                                                                                                                                             X�:     �                  5�_�      
           	           ����                                                                                                                                                                                                                                                                                                                                                             X�:     �                 # -----5�_�   	              
           ����                                                                                                                                                                                                                                                                                                                                                             X�:     �                 %#  Ensure some arguments were entered5�_�   
                         ����                                                                                                                                                                                                                                                                                                                                                             X�:     �                 #  Disply usage message if not5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             X�:     �                  5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             X�:     �                 if [ -z $1 ]; then5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             X�:     �                 4	echo "Usage:  ./asm13 <asmMainFile (no extension)>"5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             X�:     �                 	exit5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             X�:     �                 fi5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             X�:     �                  5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             X�:     �                 # -----5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             X�;     �                 $#  Verify no extensions were entered5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             X�;     �                  5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             X�;     �                 if [ ! -e "$1.asm" ]; then5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             X�;     �                  	echo "Error, $1.asm not found."5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             X�;     �                 +	echo "Note, do not enter file extensions."5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             X�;     �                 	exit5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             X�;    �                 fi5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             X�S     �   
            rm $1.o5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             X�T     �   
            rm 1.o5�_�                           ����                                                                                                                                                                                                                                                                                                                                                           X�U     �   
            rm .o5�_�                            ����                                                                                                                                                                                                                                                                                                                                                           X�W    �               	rm $1.lst5��