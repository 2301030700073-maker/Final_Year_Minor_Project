package com.fsck.k9.ui.messageview;

import androidx.biometric.BiometricPrompt;
import com.fsck.k9.view.MessageWebView;
import kotlin.Function;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class MessageContainerView$displayMessageViewContainer$3 implements MessageWebView.OnPageFinishedListener, FunctionAdapter {
    public final /* synthetic */ BiometricPrompt $tmp0;

    public MessageContainerView$displayMessageViewContainer$3(BiometricPrompt biometricPrompt) {
        this.$tmp0 = biometricPrompt;
    }

    public final boolean equals(Object obj) {
        if ((obj instanceof MessageWebView.OnPageFinishedListener) && (obj instanceof FunctionAdapter)) {
            return getFunctionDelegate().equals(((FunctionAdapter) obj).getFunctionDelegate());
        }
        return false;
    }

    @Override // kotlin.jvm.internal.FunctionAdapter
    public final Function getFunctionDelegate() {
        return new FunctionReferenceImpl(0, 0, BiometricPrompt.class, this.$tmp0, "onLoadFinished", "onLoadFinished()V");
    }

    public final int hashCode() {
        return getFunctionDelegate().hashCode();
    }

    @Override // com.fsck.k9.view.MessageWebView.OnPageFinishedListener
    public final void onPageFinished() {
        ((MessageTopView) this.$tmp0.mClientFragmentManager).displayViewOnLoadFinished(true);
    }
}
