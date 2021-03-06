glabel func_808B7BCC
/* 004BC 808B7BCC 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 004C0 808B7BD0 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 004C4 808B7BD4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 004C8 808B7BD8 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 004CC 808B7BDC AFA5002C */  sw      $a1, 0x002C($sp)           
/* 004D0 808B7BE0 240501F4 */  addiu   $a1, $zero, 0x01F4         ## $a1 = 000001F4
/* 004D4 808B7BE4 24840210 */  addiu   $a0, $a0, 0x0210           ## $a0 = 00000210
/* 004D8 808B7BE8 0C01DE5F */  jal     Math_ApproxS
              
/* 004DC 808B7BEC 2406001E */  addiu   $a2, $zero, 0x001E         ## $a2 = 0000001E
/* 004E0 808B7BF0 860E00B6 */  lh      $t6, 0x00B6($s0)           ## 000000B6
/* 004E4 808B7BF4 860F0210 */  lh      $t7, 0x0210($s0)           ## 00000210
/* 004E8 808B7BF8 26040208 */  addiu   $a0, $s0, 0x0208           ## $a0 = 00000208
/* 004EC 808B7BFC 3C054248 */  lui     $a1, 0x4248                ## $a1 = 42480000
/* 004F0 808B7C00 01CFC021 */  addu    $t8, $t6, $t7              
/* 004F4 808B7C04 A61800B6 */  sh      $t8, 0x00B6($s0)           ## 000000B6
/* 004F8 808B7C08 0C01DE80 */  jal     Math_ApproxF
              
/* 004FC 808B7C0C 3C063FC0 */  lui     $a2, 0x3FC0                ## $a2 = 3FC00000
/* 00500 808B7C10 2604020C */  addiu   $a0, $s0, 0x020C           ## $a0 = 0000020C
/* 00504 808B7C14 24050190 */  addiu   $a1, $zero, 0x0190         ## $a1 = 00000190
/* 00508 808B7C18 0C01DE5F */  jal     Math_ApproxS
              
/* 0050C 808B7C1C 2406000F */  addiu   $a2, $zero, 0x000F         ## $a2 = 0000000F
/* 00510 808B7C20 8619020E */  lh      $t9, 0x020E($s0)           ## 0000020E
/* 00514 808B7C24 8608020C */  lh      $t0, 0x020C($s0)           ## 0000020C
/* 00518 808B7C28 03284821 */  addu    $t1, $t9, $t0              
/* 0051C 808B7C2C A609020E */  sh      $t1, 0x020E($s0)           ## 0000020E
/* 00520 808B7C30 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 00524 808B7C34 8604020E */  lh      $a0, 0x020E($s0)           ## 0000020E
/* 00528 808B7C38 C6040208 */  lwc1    $f4, 0x0208($s0)           ## 00000208
/* 0052C 808B7C3C C6080008 */  lwc1    $f8, 0x0008($s0)           ## 00000008
/* 00530 808B7C40 8604020E */  lh      $a0, 0x020E($s0)           ## 0000020E
/* 00534 808B7C44 46040182 */  mul.s   $f6, $f0, $f4              
/* 00538 808B7C48 46083280 */  add.s   $f10, $f6, $f8             
/* 0053C 808B7C4C 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 00540 808B7C50 E60A0024 */  swc1    $f10, 0x0024($s0)          ## 00000024
/* 00544 808B7C54 C6100208 */  lwc1    $f16, 0x0208($s0)          ## 00000208
/* 00548 808B7C58 C6040010 */  lwc1    $f4, 0x0010($s0)           ## 00000010
/* 0054C 808B7C5C 920A0175 */  lbu     $t2, 0x0175($s0)           ## 00000175
/* 00550 808B7C60 46100482 */  mul.s   $f18, $f0, $f16            
/* 00554 808B7C64 314B0002 */  andi    $t3, $t2, 0x0002           ## $t3 = 00000000
/* 00558 808B7C68 46049180 */  add.s   $f6, $f18, $f4             
/* 0055C 808B7C6C 1160002A */  beq     $t3, $zero, .L808B7D18     
/* 00560 808B7C70 E606002C */  swc1    $f6, 0x002C($s0)           ## 0000002C
/* 00564 808B7C74 8E03016C */  lw      $v1, 0x016C($s0)           ## 0000016C
/* 00568 808B7C78 50600028 */  beql    $v1, $zero, .L808B7D1C     
/* 0056C 808B7C7C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00570 808B7C80 C4680028 */  lwc1    $f8, 0x0028($v1)           ## 00000028
/* 00574 808B7C84 C60A0028 */  lwc1    $f10, 0x0028($s0)          ## 00000028
/* 00578 808B7C88 3C0142F0 */  lui     $at, 0x42F0                ## $at = 42F00000
/* 0057C 808B7C8C 44818000 */  mtc1    $at, $f16                  ## $f16 = 120.00
/* 00580 808B7C90 460A4001 */  sub.s   $f0, $f8, $f10             
/* 00584 808B7C94 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
/* 00588 808B7C98 4600803C */  c.lt.s  $f16, $f0                  
/* 0058C 808B7C9C 00000000 */  nop
/* 00590 808B7CA0 4502001E */  bc1fl   .L808B7D1C                 
/* 00594 808B7CA4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00598 808B7CA8 44819000 */  mtc1    $at, $f18                  ## $f18 = 200.00
/* 0059C 808B7CAC 00000000 */  nop
/* 005A0 808B7CB0 4612003C */  c.lt.s  $f0, $f18                  
/* 005A4 808B7CB4 00000000 */  nop
/* 005A8 808B7CB8 45020018 */  bc1fl   .L808B7D1C                 
/* 005AC 808B7CBC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 005B0 808B7CC0 C46C002C */  lwc1    $f12, 0x002C($v1)          ## 0000002C
/* 005B4 808B7CC4 C46E0024 */  lwc1    $f14, 0x0024($v1)          ## 00000024
/* 005B8 808B7CC8 8E06002C */  lw      $a2, 0x002C($s0)           ## 0000002C
/* 005BC 808B7CCC 0C032D65 */  jal     Math3D_Dist2DSq              
/* 005C0 808B7CD0 8E070024 */  lw      $a3, 0x0024($s0)           ## 00000024
/* 005C4 808B7CD4 3C014480 */  lui     $at, 0x4480                ## $at = 44800000
/* 005C8 808B7CD8 44812000 */  mtc1    $at, $f4                   ## $f4 = 1024.00
/* 005CC 808B7CDC 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 005D0 808B7CE0 24051072 */  addiu   $a1, $zero, 0x1072         ## $a1 = 00001072
/* 005D4 808B7CE4 4604003C */  c.lt.s  $f0, $f4                   
/* 005D8 808B7CE8 240600F0 */  addiu   $a2, $zero, 0x00F0         ## $a2 = 000000F0
/* 005DC 808B7CEC 02003825 */  or      $a3, $s0, $zero            ## $a3 = 00000000
/* 005E0 808B7CF0 4502000A */  bc1fl   .L808B7D1C                 
/* 005E4 808B7CF4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 005E8 808B7CF8 0C02003E */  jal     func_800800F8              
/* 005EC 808B7CFC AFA00010 */  sw      $zero, 0x0010($sp)         
/* 005F0 808B7D00 0C22DF4E */  jal     func_808B7D38              
/* 005F4 808B7D04 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 005F8 808B7D08 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 005FC 808B7D0C 8E06014C */  lw      $a2, 0x014C($s0)           ## 0000014C
/* 00600 808B7D10 0C00FAFE */  jal     func_8003EBF8              
/* 00604 808B7D14 24850810 */  addiu   $a1, $a0, 0x0810           ## $a1 = 00000810
.L808B7D18:
/* 00608 808B7D18 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L808B7D1C:
/* 0060C 808B7D1C 0C00BE5D */  jal     func_8002F974              
/* 00610 808B7D20 24052024 */  addiu   $a1, $zero, 0x2024         ## $a1 = 00002024
/* 00614 808B7D24 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00618 808B7D28 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 0061C 808B7D2C 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00620 808B7D30 03E00008 */  jr      $ra                        
/* 00624 808B7D34 00000000 */  nop
