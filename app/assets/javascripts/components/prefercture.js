Todo.Prefecture = Vue.component('prefecture', {
  template: `
    <h3>
      {{ prefecture.id }} ：　{{ prefecture.name }}
    </h3>
  `,
  props: ['prefecture']
});
