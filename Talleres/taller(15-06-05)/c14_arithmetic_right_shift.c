/*
 * Example #14
 * Bit right shift.
 *
 * Copyright (c) 2014  Pavel Tisnovsky, Red Hat
 * All rights reserved.
 * 
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *     * Redistributions of source code must retain the above copyright
 *       notice, this list of conditions and the following disclaimer.
 *     * Redistributions in binary form must reproduce the above copyright
 *       notice, this list of conditions and the following disclaimer in the
 *       documentation and/or other materials provided with the distribution.
 *     * Neither the name of the Red Hat nor the
 *       names of its contributors may be used to endorse or promote products
 *       derived from this software without specific prior written permission.
 * 
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
 * WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 * DISCLAIMED. IN NO EVENT SHALL Pavel Tisnovsky BE LIABLE FOR ANY
 * DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
 * (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 * LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
 * ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
 * SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 *
 */

#include <stdio.h>

int main(void)
{
    unsigned int i = 1;

    printf("1000 >> 0 = %d\n",  1000 >> 0);
    printf("1000 >> 1 = %d\n",  1000 >> 1);
    printf("1000 >> 2 = %d\n",  1000 >> 2);
    printf("1000 >> 3 = %d\n",  1000 >> 3);
    printf("1000 >> 4 = %d\n",  1000 >> 4);
    printf("1000 >> 10 = %d\n", 1000 >> 10);
    printf("1000 >> 20 = %d\n", 1000 >> 20);
    printf("\n");

    printf("3000 >> 0 = %d\n",  3000 >> 0);
    printf("3000 >> 1 = %d\n",  3000 >> 1);
    printf("3000 >> 2 = %d\n",  3000 >> 2);
    printf("3000 >> 3 = %d\n",  3000 >> 3);
    printf("3000 >> 4 = %d\n",  3000 >> 4);
    printf("3000 >> 10 = %d\n", 3000 >> 10);
    printf("3000 >> 20 = %d\n", 3000 >> 20);
    printf("\n");

    return 0;
}

