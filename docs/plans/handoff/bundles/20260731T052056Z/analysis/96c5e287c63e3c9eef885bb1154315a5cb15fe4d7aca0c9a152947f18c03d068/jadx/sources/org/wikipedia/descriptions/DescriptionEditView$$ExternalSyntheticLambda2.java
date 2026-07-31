package org.wikipedia.descriptions;

import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.os.Build;
import android.view.View;
import android.view.Window;
import androidx.core.view.WindowInsetsControllerCompat$Impl23;
import androidx.core.view.WindowInsetsControllerCompat$Impl26;
import androidx.core.view.WindowInsetsControllerCompat$Impl30;
import androidx.core.view.WindowInsetsControllerCompat$Impl35;
import androidx.paging.HintHandler;
import kotlin.jvm.internal.Intrinsics;
import org.wikipedia.R;
import org.wikipedia.captcha.CaptchaHandler;
import org.wikipedia.descriptions.DescriptionEditView;
import org.wikipedia.media.AvPlayer;
import org.wikipedia.util.ShareUtil;
import retrofit2.OkHttpCall;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class DescriptionEditView$$ExternalSyntheticLambda2 implements View.OnClickListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ DescriptionEditView f$0;

    public /* synthetic */ DescriptionEditView$$ExternalSyntheticLambda2(DescriptionEditView descriptionEditView, int i) {
        this.$r8$classId = i;
        this.f$0 = descriptionEditView;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        DescriptionEditView.Callback callback;
        int i = this.$r8$classId;
        DescriptionEditView descriptionEditView = this.f$0;
        switch (i) {
            case 0:
                int i2 = DescriptionEditView.$r8$clinit;
                descriptionEditView.validateText();
                if (!view.isEnabled() || (callback = descriptionEditView.callback) == null) {
                    return;
                }
                ((AvPlayer) callback).onSaveClick();
                return;
            case 1:
                int i3 = DescriptionEditView.$r8$clinit;
                descriptionEditView.performReadArticleClick();
                return;
            case 2:
                DescriptionEditView.Callback callback2 = descriptionEditView.callback;
                if (callback2 != null) {
                    DescriptionEditFragment descriptionEditFragment = (DescriptionEditFragment) ((AvPlayer) callback2).player;
                    CaptchaHandler captchaHandler = descriptionEditFragment.captchaHandler;
                    if (captchaHandler == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("captchaHandler");
                        throw null;
                    }
                    if (captchaHandler.isActive()) {
                        CaptchaHandler captchaHandler2 = descriptionEditFragment.captchaHandler;
                        if (captchaHandler2 != null) {
                            captchaHandler2.cancelCaptcha();
                            return;
                        } else {
                            Intrinsics.throwUninitializedPropertyAccessException("captchaHandler");
                            throw null;
                        }
                    }
                    OkHttpCall.AnonymousClass1 anonymousClass1 = descriptionEditFragment._binding;
                    anonymousClass1.getClass();
                    if (((DescriptionEditView) anonymousClass1.this$0).showingReviewContent()) {
                        OkHttpCall.AnonymousClass1 anonymousClass12 = descriptionEditFragment._binding;
                        anonymousClass12.getClass();
                        ((DescriptionEditView) anonymousClass12.this$0).loadReviewContent(false);
                        return;
                    } else {
                        Window window = descriptionEditFragment.requireActivity().getWindow();
                        window.getClass();
                        HintHandler hintHandler = new HintHandler(window.getDecorView());
                        int i4 = Build.VERSION.SDK_INT;
                        (i4 >= 35 ? new WindowInsetsControllerCompat$Impl35(window, hintHandler) : i4 >= 30 ? new WindowInsetsControllerCompat$Impl30(window, hintHandler) : i4 >= 26 ? new WindowInsetsControllerCompat$Impl26(window, hintHandler) : new WindowInsetsControllerCompat$Impl23(window, hintHandler)).hide();
                        descriptionEditFragment.requireActivity().getOnBackPressedDispatcher().onBackPressed();
                        return;
                    }
                }
                return;
            case 3:
                int i5 = DescriptionEditView.$r8$clinit;
                descriptionEditView.performReadArticleClick();
                return;
            default:
                DescriptionEditView.Callback callback3 = descriptionEditView.callback;
                if (callback3 != null) {
                    DescriptionEditFragment descriptionEditFragment2 = (DescriptionEditFragment) ((AvPlayer) callback3).player;
                    try {
                        descriptionEditFragment2.voiceSearchLauncher.launch(new Intent("android.speech.action.RECOGNIZE_SPEECH").putExtra("android.speech.extra.LANGUAGE_MODEL", "free_form"), null);
                        return;
                    } catch (ActivityNotFoundException unused) {
                        ShareUtil.showMessage(descriptionEditFragment2.requireActivity(), R.string.error_voice_search_not_available);
                        return;
                    }
                }
                return;
        }
    }
}
