package org.wikipedia.captcha;

import android.os.Build;
import android.view.View;
import android.view.Window;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.activity.OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;
import androidx.appcompat.app.AppCompatActivity;
import androidx.compose.animation.core.Animation;
import androidx.compose.material3.ThumbNode$onAttach$1;
import androidx.core.view.WindowInsetsControllerCompat$Impl23;
import androidx.core.view.WindowInsetsControllerCompat$Impl26;
import androidx.core.view.WindowInsetsControllerCompat$Impl30;
import androidx.core.view.WindowInsetsControllerCompat$Impl35;
import androidx.lifecycle.ViewModelKt;
import androidx.paging.HintHandler;
import coil3.util.ContextsKt;
import com.caverock.androidsvg.SVGAndroidRenderer;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.StandaloneCoroutine;
import org.wikipedia.R;
import org.wikipedia.databinding.GroupCaptchaBinding;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.diff.DiffLineView$$ExternalSyntheticLambda0;
import org.wikipedia.login.LoginClient$login$$inlined$CoroutineExceptionHandler$1;
import org.wikipedia.page.LinkMovementMethodExt;
import org.wikipedia.util.StringUtil;
import org.wikipedia.views.ViewAnimations;
import org.wikipedia.views.ViewUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class CaptchaHandler {
    public final AppCompatActivity activity;
    public final GroupCaptchaBinding binding;
    public CaptchaResult captchaResult;
    public StandaloneCoroutine clientJob;
    public final SVGAndroidRenderer instrument;
    public final boolean isModal;
    public final String prevTitle;
    public final View primaryView;
    public String token;
    public final WikiSite wiki;

    public CaptchaHandler(AppCompatActivity appCompatActivity, WikiSite wikiSite, View view, View view2, String str, String str2, boolean z, SVGAndroidRenderer sVGAndroidRenderer) {
        wikiSite.getClass();
        view2.getClass();
        this.activity = appCompatActivity;
        this.wiki = wikiSite;
        this.primaryView = view2;
        this.prevTitle = str;
        this.isModal = z;
        this.instrument = sVGAndroidRenderer;
        GroupCaptchaBinding bind = GroupCaptchaBinding.bind(view);
        TextView textView = bind.requestAccountText;
        this.binding = bind;
        Button button = bind.captchaSubmitButton;
        button.setText(str2);
        button.setVisibility((str2 == null || str2.length() == 0) ? 8 : 0);
        StringUtil stringUtil = StringUtil.INSTANCE;
        textView.setText(StringUtil.fromHtml(appCompatActivity.getString(R.string.edit_section_captcha_request_an_account_message)));
        textView.setMovementMethod(new LinkMovementMethodExt((LinkMovementMethodExt.UrlHandler) new OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0(11, this)));
        textView.setVisibility(z ? 0 : 8);
        bind.captchaImage.setOnClickListener(new DiffLineView$$ExternalSyntheticLambda0(5, this));
    }

    public final void cancelCaptcha() {
        if (this.captchaResult == null) {
            return;
        }
        this.captchaResult = null;
        EditText editText = this.binding.captchaText.getEditText();
        if (editText != null) {
            editText.setText("");
        }
        hideCaptcha();
    }

    public final String captchaWord() {
        if (!isActive()) {
            return null;
        }
        EditText editText = this.binding.captchaText.getEditText();
        return String.valueOf(editText != null ? editText.getText() : null);
    }

    public final void handleCaptcha(boolean z) {
        if (this.captchaResult == null) {
            return;
        }
        SVGAndroidRenderer sVGAndroidRenderer = this.instrument;
        if (sVGAndroidRenderer != null) {
            SVGAndroidRenderer.submitInteraction$default(sVGAndroidRenderer, "fancy_captcha_show", null, null, null, null, null, 254);
        }
        AppCompatActivity appCompatActivity = this.activity;
        appCompatActivity.getClass();
        Window window = appCompatActivity.getWindow();
        window.getClass();
        HintHandler hintHandler = new HintHandler(window.getDecorView());
        int i = Build.VERSION.SDK_INT;
        (i >= 35 ? new WindowInsetsControllerCompat$Impl35(window, hintHandler) : i >= 30 ? new WindowInsetsControllerCompat$Impl30(window, hintHandler) : i >= 26 ? new WindowInsetsControllerCompat$Impl26(window, hintHandler) : new WindowInsetsControllerCompat$Impl23(window, hintHandler)).hide();
        GroupCaptchaBinding groupCaptchaBinding = this.binding;
        if (!z) {
            if (this.isModal) {
                int i2 = ViewAnimations.$r8$clinit;
                LinearLayout linearLayout = groupCaptchaBinding.rootView;
                View view = this.primaryView;
                view.getClass();
                ViewAnimations.fadeIn(linearLayout, null);
                ViewAnimations.fadeOut(view, null);
            } else {
                groupCaptchaBinding.rootView.setVisibility(0);
            }
        }
        EditText editText = groupCaptchaBinding.captchaText.getEditText();
        if (editText != null) {
            editText.setText("");
        }
        ImageView imageView = groupCaptchaBinding.captchaImage;
        CaptchaResult captchaResult = this.captchaResult;
        captchaResult.getClass();
        WikiSite wikiSite = this.wiki;
        wikiSite.getClass();
        ViewUtil.loadImage$default(imageView, Animation.CC.m(wikiSite.url().concat("/w/".concat("index.php")), "?title=Special:Captcha/image&wpCaptchaId=", captchaResult.captchaId), null, 8);
    }

    public final void hideCaptcha() {
        setErrorText(null);
        boolean z = this.isModal;
        GroupCaptchaBinding groupCaptchaBinding = this.binding;
        if (!z) {
            groupCaptchaBinding.rootView.setVisibility(8);
            return;
        }
        ContextsKt supportActionBar = this.activity.getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setTitle(this.prevTitle);
        }
        int i = ViewAnimations.$r8$clinit;
        LinearLayout linearLayout = groupCaptchaBinding.rootView;
        View view = this.primaryView;
        view.getClass();
        ViewAnimations.fadeIn(view, null);
        ViewAnimations.fadeOut(linearLayout, null);
    }

    public final boolean isActive() {
        return this.captchaResult != null;
    }

    public final void requestNewCaptcha() {
        this.binding.captchaImageProgress.setVisibility(0);
        this.clientJob = AwaitKt.launch$default(ViewModelKt.getLifecycleScope(this.activity), new LoginClient$login$$inlined$CoroutineExceptionHandler$1(this), null, new ThumbNode$onAttach$1(24, this, null), 2);
    }

    public final void setErrorText(String str) {
        GroupCaptchaBinding groupCaptchaBinding = this.binding;
        if (str == null || str.length() == 0) {
            groupCaptchaBinding.captchaText.setError(null);
            groupCaptchaBinding.captchaText.setHint(this.activity.getString(R.string.edit_section_captcha_hint));
        } else {
            groupCaptchaBinding.captchaText.setError(str);
            groupCaptchaBinding.captchaText.setHint((CharSequence) null);
        }
    }

    public /* synthetic */ CaptchaHandler(AppCompatActivity appCompatActivity, WikiSite wikiSite, View view, View view2, String str, String str2, SVGAndroidRenderer sVGAndroidRenderer, int i) {
        this(appCompatActivity, wikiSite, view, view2, str, str2, true, (i & 128) != 0 ? null : sVGAndroidRenderer);
    }
}
