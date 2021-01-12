/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   rush01.c                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: asobreir <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/01/10 21:25:51 by asobreir          #+#    #+#             */
/*   Updated: 2021/01/10 22:01:16 by ida-cruz         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <unistd.h>

void	ft_putchar(char c);

void	print_top_bottom(int x, char a, char b, char c)
{
	int i;

	i = 1;
	if (x >= 1)
	{
		ft_putchar(a);
		x = x - 1;
		while (i < x)
		{
			ft_putchar(b);
			i++;
		}
		if (x == i)
		{
			ft_putchar(c);
		}
		ft_putchar('\n');
	}
}

void	print_middle(int x, int y, char b)
{
	int j;
	int i;

	j = 1;
	while (y - 1 != j++)
	{
		i = 1;
		if (y >= 2 && x >= 1)
		{
			ft_putchar(b);
			i++;
		}
		while (i < x)
		{
			ft_putchar(' ');
			i++;
		}
		if (x == 1)
			ft_putchar('\n');
		if (i == x)
		{
			ft_putchar(b);
			ft_putchar('\n');
		}
	}
}

void	rush(int x, int y)
{
	if (y >= 1)
		print_top_bottom(x, '/', '*', 92);
	if (y >= 2)
	{
		print_middle(x, y, '*');
		print_top_bottom(x, 92, '*', '/');
	}
}
