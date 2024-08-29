public class SimpleFormController {
    public String name { get; set; }
    public Integer age { get; set; }
    
    public String result { get; set; }

    public SimpleFormController() {
        name = '';
        age = 0;
        result = '';
    }

    // 处理表单提交的操作
    public void submitForm() {
        if (String.isNotBlank(name) && age != null) {
            result = 'Hello ' + name + '! You are ' + age + ' years old.';
        } else {
            result = 'Please enter both your name and age.';
        }
    }
}
