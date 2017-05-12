Todo.Prefectures = Vue.component('prefectures', {
  template: `
    <ul>
      <li v-for="item in items">
        <h3>{{ item.name }}</h3>
      </li>
    </ul>
  `,
  props: {
    items: {
      type: Array
    }
  }
});
