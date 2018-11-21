#******************************************************************************#
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: yholub <marvin@42.fr>                      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/11/02 14:51:00 by yholub            #+#    #+#              #
#    Updated: 2017/11/13 16:02:53 by yholub           ###   ########.fr        #
#                                                                              #
#******************************************************************************#

NAME = libft.a

SRC = ft_atoi.c\
ft_bzero.c\
ft_isalnum.c\
ft_isalpha.c\
ft_isascii.c\
ft_isdigit.c\
ft_isprint.c\
ft_iswhitespace.c\
ft_memccpy.c\
ft_memchr.c\
ft_memcmp.c\
ft_memcpy.c\
ft_memmove.c\
ft_memset.c\
ft_strcat.c\
ft_strchr.c\
ft_strcmp.c\
ft_strcpy.c\
ft_strdup.c\
ft_strlcat.c\
ft_strlen.c\
ft_strncat.c\
ft_strncmp.c\
ft_strncpy.c\
ft_strnstr.c\
ft_strrchr.c\
ft_strstr.c\
ft_tolower.c\
ft_toupper.c\
ft_itoa.c\
ft_memalloc.c\
ft_memdel.c\
ft_putchar.c\
ft_putchar_fd.c\
ft_putendl.c\
ft_putendl_fd.c\
ft_putnbr.c\
ft_putnbr_fd.c\
ft_putstr.c\
ft_putstr_fd.c\
ft_strclr.c\
ft_strdel.c\
ft_strequ.c\
ft_striter.c\
ft_striteri.c\
ft_strjoin.c\
ft_strmap.c\
ft_strmapi.c\
ft_strnequ.c\
ft_strnew.c\
ft_strsplit.c\
ft_strsub.c\
ft_strtrim.c\
ft_lstadd.c\
ft_lstdel.c\
ft_lstdelone.c\
ft_lstiter.c\
ft_lstmap.c\
ft_lstnew.c\
get_next_line.c\

OSRC = $(patsubst %.c, %.o, $(SRC))
all: $(NAME)
    
$(NAME): $(OSRC)
	ar cr $(NAME) $(OSRC)
	ranlib $(NAME)

%.o : %.c
	gcc -c -Wall -Wextra -Werror $<

clean:
	rm -f $(OSRC)

fclean: clean
	rm -f $(NAME)

re: fclean all
