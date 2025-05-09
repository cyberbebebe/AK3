syntax unified
.cpu cortex-m4
.thumb

.global lab1


// Константи для прикладу
.equ A, 7
.equ B, 3
.equ C, 2

lab1:
    push {lr}       // Зберігаємо посилання повернення

    // Обчислення (a - b)*3 + 2^c

    mov r0, #A      // Завантажуємо a в r0
    mov r1, #B      // Завантажуємо b в r1
    mov r2, #C      // Завантажуємо c в r2

    // Обчислюємо (a - b)
    sub r3, r0, r1  // r3 = a - b

    // Множимо на 3 (r3 * 3)
    mov r4, #3
    mul r3, r3, r4  // r3 = (a - b) * 3

    // Обчислюємо 2^c (1 << c)
    mov r4, #1

    lsl r4, r4, r2  // r4 = 1 << c = 2^c

    // Додаємо результати
    add r0, r3, r4  // r0 = (a-b)*3 + 2^c

    pop {pc}        // Повертаємось

