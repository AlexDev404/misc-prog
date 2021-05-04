<?php

class Css_Js_Manager_General_Option{

    public $plugin_name;

    private $setting = array();

    private $active_tab;

    private $this_tab = 'default';

    public $version;

    private $tab_name = "CSS JS Manager";

    private $setting_key = 'http2_push_content_general';

    public $as = array('script', 'style', "embed", "fetch", "font", "image", "object", "video");

    public $to = array("push-preload", "push", "preload");

    function __construct($plugin_name, $version){
        $this->plugin_name = $plugin_name;
        $this->version = $version;
        $this->active_tab = (isset($_GET['tab'])) ? $_GET['tab'] : 'default';
        

        if($this->this_tab == $this->active_tab){
            add_action($this->plugin_name.'_tab_content', array($this,'tab_content'));
        }

        add_action($this->plugin_name.'_tab', array($this,'tab'),1);

        add_filter('pre_update_option_http2_push_general_list',array($this, 'remove_blank_values'));
        
        

    }

    function remove_blank_values($resources){
        if(is_array($resources)):
            foreach($resources as $key => $link){
                if($link['url'] == "" || !in_array($link['as'], $this->as) || !in_array($link['to'], $this->to)){
                    unset($resources[$key]);
                } 
            }
        endif;
        return $resources;
    }

    function tab(){
        ?>
        <a class=" px-3 text-light d-flex align-items-center  border-left border-right  <?php echo ($this->active_tab == $this->this_tab ? 'bg-primary' : 'bg-secondary'); ?>" href="<?php echo admin_url( 'admin.php?page='.sanitize_text_field($_GET['page']).'&tab='.$this->this_tab ); ?>">
            <?php _e( $this->tab_name, 'css-js-manager' ); ?> 
        </a>
        <?php
    }

    function tab_content(){
       ?>
        <noscript>You need to enable JavaScript to run this app.</noscript>
         <div id="root"></div>
         <script>
var css_js_manager = {
        ajax_url: "<?php echo admin_url( 'admin-ajax.php' ); ?>",
        loading:
          "<?php echo plugin_dir_url( __FILE__ ); ?>img/loading.gif",
        tip:
          "<?php echo plugin_dir_url( __FILE__ ); ?>img/tip.svg",
        basename:"<?php echo $_SERVER['REQUEST_URI']; ?>"  
      };
           </script>
         <script>
      !(function(l) {
        function e(e) {
          for (
            var r, t, n = e[0], o = e[1], u = e[2], f = 0, i = [];
            f < n.length;
            f++
          )
            (t = n[f]), p[t] && i.push(p[t][0]), (p[t] = 0);
          for (r in o)
            Object.prototype.hasOwnProperty.call(o, r) && (l[r] = o[r]);
          for (s && s(e); i.length; ) i.shift()();
          return c.push.apply(c, u || []), a();
        }
        function a() {
          for (var e, r = 0; r < c.length; r++) {
            for (var t = c[r], n = !0, o = 1; o < t.length; o++) {
              var u = t[o];
              0 !== p[u] && (n = !1);
            }
            n && (c.splice(r--, 1), (e = f((f.s = t[0]))));
          }
          return e;
        }
        var t = {},
          p = { 2: 0 },
          c = [];
        function f(e) {
          if (t[e]) return t[e].exports;
          var r = (t[e] = { i: e, l: !1, exports: {} });
          return l[e].call(r.exports, r, r.exports, f), (r.l = !0), r.exports;
        }
        (f.m = l),
          (f.c = t),
          (f.d = function(e, r, t) {
            f.o(e, r) ||
              Object.defineProperty(e, r, { enumerable: !0, get: t });
          }),
          (f.r = function(e) {
            "undefined" != typeof Symbol &&
              Symbol.toStringTag &&
              Object.defineProperty(e, Symbol.toStringTag, { value: "Module" }),
              Object.defineProperty(e, "__esModule", { value: !0 });
          }),
          (f.t = function(r, e) {
            if ((1 & e && (r = f(r)), 8 & e)) return r;
            if (4 & e && "object" == typeof r && r && r.__esModule) return r;
            var t = Object.create(null);
            if (
              (f.r(t),
              Object.defineProperty(t, "default", { enumerable: !0, value: r }),
              2 & e && "string" != typeof r)
            )
              for (var n in r)
                f.d(
                  t,
                  n,
                  function(e) {
                    return r[e];
                  }.bind(null, n)
                );
            return t;
          }),
          (f.n = function(e) {
            var r =
              e && e.__esModule
                ? function() {
                    return e.default;
                  }
                : function() {
                    return e;
                  };
            return f.d(r, "a", r), r;
          }),
          (f.o = function(e, r) {
            return Object.prototype.hasOwnProperty.call(e, r);
          }),
          (f.p = "/");
        var r = (window.webpackJsonp = window.webpackJsonp || []),
          n = r.push.bind(r);
        (r.push = e), (r = r.slice());
        for (var o = 0; o < r.length; o++) e(r[o]);
        var s = n;
        a();
      })([]);</script>
       <?php
    }

    
}

new Css_Js_Manager_General_Option($this->plugin_name, $this->version);