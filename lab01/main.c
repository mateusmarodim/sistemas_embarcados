// Exemplo de projeto em C com fun��o em ASM
void AscendeLEDs(int valor);
void ApagaLEDs(void);
void GPIO_Init(void);
void SysTick_Init(void);
void PLL_Init(void);
int main()
{
	PLL_Init();
	GPIO_Init();
	SysTick_Init();
	while(1)
	{	
		int value = 10;
		for (int i = 0; i < value; i++) {
			ApagaLEDs();
			AscendeLEDs(i);
		}
	}
}