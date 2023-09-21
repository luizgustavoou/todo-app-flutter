import { Injectable } from '@nestjs/common';
import { CreateTodoDto } from './dto/create-todo.dto';
import { UpdateTodoDto } from './dto/update-todo.dto';
import { PrismaService } from 'src/prisma/prisma.service';
import { Prisma, Todo } from '@prisma/client';

@Injectable()
export class TodoService {
  constructor(private prisma: PrismaService) { }

  async create(data: Prisma.TodoCreateInput): Promise<Todo> {
    return this.prisma.todo.create({
      data
    });
  }

  findAll(params: {
    skip?: number;
    take?: number;
    cursor?: Prisma.TodoWhereUniqueInput;
    where?: Prisma.TodoWhereInput;
    orderBy?: Prisma.TodoOrderByWithRelationInput

  }): Promise<Todo[]> {
    const { skip,
      take,
      cursor,
      where,
      orderBy } = params;

    return this.prisma.todo.findMany({
      skip,
      take,
      cursor,
      where,
      orderBy
    });
  }

  async findOne(todoWhereUniqueInput: Prisma.TodoWhereUniqueInput): Promise<Todo> {
    return this.prisma.todo.findUnique({
      where: todoWhereUniqueInput
    });
  }

  async update(params: {
    where: Prisma.TodoWhereUniqueInput;
    data: Omit<Prisma.TodoUpdateInput, "userId">;
  }): Promise<Todo> {
    const { data, where } = params;

    return this.prisma.todo.update({
      data,
      where
    });
  }

  async remove(where: Prisma.TodoWhereUniqueInput): Promise<Todo> {
    return this.prisma.todo.delete({
      where,
    });
  }
}
