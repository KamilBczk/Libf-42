# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: kbiczyk <kbiczyk@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/09/03 11:36:26 by kbiczyk           #+#    #+#              #
#    Updated: 2021/09/07 18:34:18 by kbiczyk          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRC = ft_atoi.c ft_split.c ft_bzero.c ft_calloc.c ft_isalnum.c ft_isalpha.c ft_isascii.c ft_isdigit.c ft_isprint.c ft_memchr.c ft_memcmp.c ft_memcpy.c ft_memmove.c ft_memset.c ft_putchar_fd.c ft_putendl_fd.c ft_putnbr_fd.c ft_putstr_fd.c ft_strchr.c ft_strdup.c ft_strjoin.c ft_strlcpy.c ft_strlen.c ft_strncmp.c ft_strnstr.c ft_strtrim.c ft_substr.c ft_tolower.c ft_toupper.c ft_strlcpy.c ft_strlcat.c ft_strtrim.c ft_strlcpy.c ft_strrchr.c ft_itoa.c

OBJS = ${SRC:.c=.o}

NAME = libft.a

FLAGS = -Wall -Wextra -Werror

RM = rm -f

${NAME}:	${OBJS}
			gcc ${FLAGS} -c ${SRC}
			ar -rc ${NAME} ${OBJS}
			ranlib ${NAME}
clean:
			 ${RM} ${OBJS}

fclean:		clean
			${RM} ${NAME}

re:		fclean
		make