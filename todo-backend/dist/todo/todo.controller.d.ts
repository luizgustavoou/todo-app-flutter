import { TodoService } from './todo.service';
import { CreateTodoDto } from './dto/create-todo.dto';
import { UpdateTodoDto } from './dto/update-todo.dto';
export declare class TodoController {
    private readonly todoService;
    constructor(todoService: TodoService);
    create(createTodoDto: CreateTodoDto): Promise<{
        id: string;
        userId: number;
        title: string;
        completed: boolean;
        createdAt: Date;
    }>;
    findAll(): Promise<{
        id: string;
        userId: number;
        title: string;
        completed: boolean;
        createdAt: Date;
    }[]>;
    findOne(id: string): Promise<{
        id: string;
        userId: number;
        title: string;
        completed: boolean;
        createdAt: Date;
    }>;
    update(id: string, updateTodoDto: UpdateTodoDto): Promise<{
        id: string;
        userId: number;
        title: string;
        completed: boolean;
        createdAt: Date;
    }>;
    remove(id: string): Promise<{
        id: string;
        userId: number;
        title: string;
        completed: boolean;
        createdAt: Date;
    }>;
}
