{% if (theme.reward.enable and page.reward !== false) or page.reward === true %}
  <div class="post-reward">
    <input type="checkbox" name="reward" id="reward" hidden />
    <label class="reward-button" for="reward">{{ __('posts.reward') }}</label>
    <div class="qr-code">
      {% set qrCode = theme.reward.qrCode %}
      {% if qrCode.wechat %}
        <label class="qr-code-image" for="reward">
          <img class="image" src="{{url_for(qrCode.wechat)}}" title="wechat">
          <p>微信打赏</p>
        </label>
      {% endif %}
      {% if qrCode.alipay %}
        <label class="qr-code-image" for="reward">
          <img class="image" src="{{url_for(qrCode.alipay)}}" title="alipay">
          <p>支付宝打赏</p>
        </label>
      {% endif %}
    </div>
  </div>
{% endif %}