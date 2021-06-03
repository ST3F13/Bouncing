// app/javascript/plugins/flatpickr.js
import flatpickr from "flatpickr";

const initFlatpickr = () => {
    if (document.querySelector(".datepicker")) {
        flatpickr(".datepicker", {});
    }
}

export { initFlatpickr };
