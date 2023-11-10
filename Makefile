CC = CC
CFLAGS = -Wall -Wextra -Werror
DEBUG = -g

SOURSES = ft_printf.c ft_putchr.c ft_putstr.c ft_putnbr.c ft_putunbr.c \
ft_puthex.c ft_putptr.c

OBJECTS = $(SOURSES:.c=.o)

NAME = libftprintf.a

# PROG = printf

all: $(NAME) $(PROG)

$(NAME): $(OBJECTS)
	ar rcs $(NAME) $(OBJECTS)

# $(PROG): $(OBJECTS)
# 	$(CC) $(CFLAGS) $(DEBUG) $(OBJECTS) -o printf

clean:
	rm -f $(OBJECTS)

fclean: clean
	rm -f $(NAME)

re: fclean all
