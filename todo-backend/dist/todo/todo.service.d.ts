import { PrismaService } from 'src/prisma/prisma.service';
import { Prisma, Todo } from '@prisma/client';
export declare class TodoService {
    private prisma;
    constructor(prisma: PrismaService);
    create(data: Prisma.TodoCreateInput): Promise<Todo>;
    findAll(params: {
        skip?: number;
        take?: number;
        cursor?: Prisma.TodoWhereUniqueInput;
        where?: Prisma.TodoWhereInput;
        orderBy?: Prisma.TodoOrderByWithRelationInput;
    }): Promise<Todo[]>;
    findOne(todoWhereUniqueInput: Prisma.TodoWhereUniqueInput): Promise<Todo>;
    update(params: {
        where: Prisma.TodoWhereUniqueInput;
        data: Omit<Prisma.TodoUpdateInput, "userId">;
    }): Promise<Todo>;
    remove(where: Prisma.TodoWhereUniqueInput): Promise<Todo>;
}
