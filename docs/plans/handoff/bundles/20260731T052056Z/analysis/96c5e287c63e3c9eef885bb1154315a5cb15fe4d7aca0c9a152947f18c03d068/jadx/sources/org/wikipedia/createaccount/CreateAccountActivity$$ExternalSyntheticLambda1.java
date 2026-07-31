package org.wikipedia.createaccount;

import android.net.Uri;
import android.view.View;
import com.caverock.androidsvg.SVGAndroidRenderer;
import java.util.regex.Pattern;
import kotlin.jvm.internal.Intrinsics;
import org.jsoup.Jsoup;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.captcha.CaptchaHandler;
import org.wikipedia.databinding.ItemNotificationBinding;
import org.wikipedia.extensions.ContextKt;
import org.wikipedia.util.UriUtil;
import org.wikipedia.views.WikiErrorView;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class CreateAccountActivity$$ExternalSyntheticLambda1 implements View.OnClickListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ CreateAccountActivity f$0;

    public /* synthetic */ CreateAccountActivity$$ExternalSyntheticLambda1(CreateAccountActivity createAccountActivity, int i) {
        this.$r8$classId = i;
        this.f$0 = createAccountActivity;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i = this.$r8$classId;
        CreateAccountActivity createAccountActivity = this.f$0;
        switch (i) {
            case 0:
                Pattern pattern = CreateAccountActivity.USERNAME_PATTERN;
                String string = createAccountActivity.getString(R.string.create_account_ip_block_help_url);
                string.getClass();
                Uri parse = Uri.parse(string);
                parse.getClass();
                UriUtil.visitInExternalBrowser(createAccountActivity, parse);
                return;
            case 1:
                Pattern pattern2 = CreateAccountActivity.USERNAME_PATTERN;
                SVGAndroidRenderer instrument = ContextKt.getInstrument(createAccountActivity);
                if (instrument != null) {
                    SVGAndroidRenderer.submitInteraction$default(instrument, "click", null, null, "error_back_button", null, null, 246);
                }
                ItemNotificationBinding itemNotificationBinding = createAccountActivity.binding;
                if (itemNotificationBinding == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    throw null;
                }
                ((WikiErrorView) itemNotificationBinding.notificationWikiCode).setVisibility(8);
                CaptchaHandler captchaHandler = createAccountActivity.captchaHandler;
                if (captchaHandler != null) {
                    captchaHandler.requestNewCaptcha();
                    return;
                } else {
                    Intrinsics.throwUninitializedPropertyAccessException("captchaHandler");
                    throw null;
                }
            case 2:
                Pattern pattern3 = CreateAccountActivity.USERNAME_PATTERN;
                SVGAndroidRenderer instrument2 = ContextKt.getInstrument(createAccountActivity);
                if (instrument2 != null) {
                    SVGAndroidRenderer.submitInteraction$default(instrument2, "click", null, null, "error_retry_button", null, null, 246);
                }
                ItemNotificationBinding itemNotificationBinding2 = createAccountActivity.binding;
                if (itemNotificationBinding2 != null) {
                    ((WikiErrorView) itemNotificationBinding2.notificationWikiCode).setVisibility(8);
                    return;
                } else {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    throw null;
                }
            case 3:
                Pattern pattern4 = CreateAccountActivity.USERNAME_PATTERN;
                SVGAndroidRenderer instrument3 = ContextKt.getInstrument(createAccountActivity);
                if (instrument3 != null) {
                    SVGAndroidRenderer.submitInteraction$default(instrument3, "click", null, null, "create_account_button", null, null, 246);
                }
                if (Intrinsics.areEqual(createAccountActivity.requestSource, "yir")) {
                    UriUtil.submit$default(238, null, "create_account_click", null, "explore_prompt", null);
                }
                createAccountActivity.validateThenCreateAccount();
                return;
            case 4:
                Pattern pattern5 = CreateAccountActivity.USERNAME_PATTERN;
                SVGAndroidRenderer instrument4 = ContextKt.getInstrument(createAccountActivity);
                if (instrument4 != null) {
                    SVGAndroidRenderer.submitInteraction$default(instrument4, "click", null, null, "fancy_captcha_submit", null, null, 246);
                }
                createAccountActivity.validateThenCreateAccount();
                return;
            case 5:
                Pattern pattern6 = CreateAccountActivity.USERNAME_PATTERN;
                SVGAndroidRenderer instrument5 = ContextKt.getInstrument(createAccountActivity);
                if (instrument5 != null) {
                    SVGAndroidRenderer.submitInteraction$default(instrument5, "click", null, null, "login_button", null, null, 246);
                }
                if (Intrinsics.areEqual(createAccountActivity.requestSource, "yir")) {
                    UriUtil.submit$default(238, null, "login_click", null, "explore_prompt", null);
                }
                createAccountActivity.setResult(3);
                createAccountActivity.finish();
                return;
            case 6:
                Pattern pattern7 = CreateAccountActivity.USERNAME_PATTERN;
                SVGAndroidRenderer instrument6 = ContextKt.getInstrument(createAccountActivity);
                if (instrument6 != null) {
                    SVGAndroidRenderer.submitInteraction$default(instrument6, "click", null, null, "privacy_policy_link", null, null, 246);
                }
                String string2 = createAccountActivity.getString(R.string.privacy_policy_url);
                string2.getClass();
                Uri parse2 = Uri.parse(string2);
                parse2.getClass();
                UriUtil.visitInExternalBrowser(createAccountActivity, parse2);
                return;
            default:
                Pattern pattern8 = CreateAccountActivity.USERNAME_PATTERN;
                SVGAndroidRenderer instrument7 = ContextKt.getInstrument(createAccountActivity);
                if (instrument7 != null) {
                    SVGAndroidRenderer.submitInteraction$default(instrument7, "click", null, null, "forgot_password_link", null, null, 246);
                }
                WikipediaApp wikipediaApp = WikipediaApp.instance;
                String string3 = Jsoup.getInstance().getString(R.string.forget_password_link, createAccountActivity.wiki.languageCode);
                string3.getClass();
                Uri parse3 = Uri.parse(string3);
                parse3.getClass();
                UriUtil.visitInExternalBrowser(createAccountActivity, parse3);
                return;
        }
    }
}
