function createNode(element) {
    return document.createElement(element);
}

function append(parent, el) {
    return parent.appendChild(el);
}

const emp_ul = document.getElementById("employees");
const url = "http://localhost:8080/ords/hr2/virus";
fetch(url)
    .then((resp) => resp.json())
    .then(function (data) {
        let employees = data.items; //.results;
        return employees.map(function (virues) {
            // if (employee.job=='CLERK') {
            let li = createNode("li"),
                span = createNode("span");
            span.innerHTML = `${virues.report_id}     ${virues.device_name}  ${virues.report_date}      ${virues.virus_name}      ${virues.status}`;
            append(li, span);
            append(emp_ul, li);
            // } 
        });
    })
    .catch(function (error) {
        console.log(JSON.stringify(error));
    });