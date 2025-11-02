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
        
        case '+':
        case '-':
        case '*':
        case '/':
        case '.':
            if (result === '') {
                return; 
            }
            let lastOper = result.slice(-1)
            if(opetations.includes(lastOper))
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

     


