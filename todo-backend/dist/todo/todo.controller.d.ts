import { TodoService } from './todo.service';
import { CreateTodoDto } from './dto/create-todo.dto';
import { UpdateTodoDto } from './dto/update-todo.dto';
export declare class TodoController {
    private readonly todoService;
    constructor(todoService: TodoService);
    create(createTodoDto: CreateTodoDto): Promise<{
        id: string;
        title: string;
        completed: boolean;
        createdAt: Date;
        userId: string;
    }>;
    findAll(): Promise<{
        id: string;
        title: string;
        completed: boolean;
        createdAt: Date;
        userId: string;
    }[]>;
    findOne(id: string): Promise<{
        id: string;
        title: string;
        completed: boolean;
        createdAt: Date;
        userId: string;
    }>;
    update(id: string, updateTodoDto: UpdateTodoDto): Promise<{
        id: string;
        title: string;
        completed: boolean;
        createdAt: Date;
        userId: string;
    }>;
    remove(id: string): Promise<{
        id: string;
        title: string;
        completed: boolean;
        createdAt: Date;
        userId: string;
    }>;
}
