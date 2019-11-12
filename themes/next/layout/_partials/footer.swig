<div class="copyright" style="text-align: center;">{#
#}{% set current = date(Date.now(), "YYYY") %}{#
#}&copy; {% if theme.footer.since and theme.footer.since != current %}{{ theme.footer.since }} &mdash; {% endif %}{#
#}<span itemprop="copyrightYear">{{ current }}</span>
  <span class="with-love">
    <i class="fa fa-user-secret" aria-hidden="true"></i>
  </span>
  <span class="author" itemprop="copyrightHolder">{{ theme.footer.copyright || config.author }}</span>
</div>

<div style="text-align: center;">
{% if theme.post_wordcount.totalcount %}
    <span class="post-meta-item-icon">
      <i class="fa fa-database" aria-hidden="true"></i>
    </span>
    {% if theme.post_wordcount.item_text %}
      <span class="post-meta-item-text">{{ __('post.totalcount') }}&#58;</span>
    {% endif %}
    <span title="{{ __('post.totalcount') }}">{#
    #}{{ totalcount(site, '0,0.0a') }}{#
  #}</span>
{% endif %}
<span class="post-meta-divider">|</span>
<script async src="//busuanzi.ibruce.info/busuanzi/2.3/busuanzi.pure.mini.js"></script>
<span id="busuanzi_container_site_uv" style='display:none'>
    <span class="post-meta-item-icon">
      <i class="fa fa-street-view" aria-hidden="true"></i>
    </span>
    <span class="post-meta-item-text">本站总访问量:</span>
    <span id="busuanzi_value_site_uv"></span>
</span>
</div>

<script type="text/javascript">
document.getElementsByClassName("popup-trigger")[0].removeAttribute("target");
</script>

{% if theme.footer.custom_text %}
  <div class="footer-custom">{#
  #}{{ theme.footer.custom_text }}{#
#}</div>
{% endif %}
