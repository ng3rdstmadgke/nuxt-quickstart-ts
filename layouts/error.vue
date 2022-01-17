<template>
  <v-app dark>
    <div class="text-h2">
      {{ $props.error.statusCode }} {{ $props.error.message }}
    </div>
  </v-app>
</template>

<script>
/**
 * このページは error({statusCode: xxx message: "..."}) で呼び出される。
 * パラメータ中のstatusCode, messageプロパティは必須
 * errorメソッド: https://nuxtjs.org/ja/docs/internals-glossary/context#error
 */
export default {
  layout: 'empty',

  props: {
    error: {
      type: Object,
      default: null
    }
  },

  data () {
    return {
    }
  },

  /**
   * headプロパティはhtmlのheadタグに相当する要素を返却する
   * https://nuxtjs.org/ja/docs/components-glossary/head/
   */
  head () {
    return {
      title: `${this.error.statusCode} ${this.error.message}`
    }
  }
}
</script>