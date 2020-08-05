class Department {
    private title = "Title";
    constructor(private name: string, private score: number) {
        
    }
    describe(this: Department) {
        console.log(this.title + ": " + this.name + "\nScore: " + this.score);
    }
}

const department = new Department("ITDepartment", 1.8);
department.describe();