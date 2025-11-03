const opetations = ['+', '-', '*', '/', '.'];
let result = '';


function OnButton(value){
    let display = document.getElementById('display');
    switch(value){
        case 'C':
            result = ''
            break;
        case '=':
            if (result === ''){
                 result = '0';
            }
            else{
            try{
                result = String(eval(result));
            }
            catch(e){
            }
        }
            break;
        
        case '-':
            let lastOper1 = result. slice(-1)
            if(lastOper1 === '-' || lastOper1 === '.'){
                return;
            }
            result += value;
            break;
        case '+':
        case '*':
        case '/':
        case '.':
            if (result === '') {
                return; 
            }
            let lastOper2 = result.slice(-1)
            if(opetations.includes(lastOper2))
                return;
            result += value;
            break;
        default:
            if(result === '0')
                result = value;
            else{
                  result += value;
            }
             break;
    }
    display.value = result;
}

     




