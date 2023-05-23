function createNode(element) {
    return document.createElement(element);
}

function append(parent, el) {
    return parent.appendChild(el);
}

const emp_ul = document.getElementById("employees");
const url = "http://localhost:8080/ords/hr2/firewall";
fetch(url)
    .then((resp) => resp.json())
    .then(function (data) {
        let employees = data.items; //.results;
        return employees.map(function (firewalls) {
            // if (employee.job=='CLERK') {
            let li = createNode("li"),
                span = createNode("span");
            span.innerHTML = `${firewalls.logs_id}     ${firewalls.device_id}       ${firewalls.log_date}      ${firewalls.log_date}`;
            append(li, span);
            append(emp_ul, li);
            // } 
        });
    })
    .catch(function (error) {
        console.log(JSON.stringify(error));
    });