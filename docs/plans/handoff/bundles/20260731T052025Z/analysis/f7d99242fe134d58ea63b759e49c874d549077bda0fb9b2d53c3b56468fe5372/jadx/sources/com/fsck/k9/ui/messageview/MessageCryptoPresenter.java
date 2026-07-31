package com.fsck.k9.ui.messageview;

import android.content.Context;
import android.content.pm.PackageManager;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import com.fsck.k9.mailstore.CryptoResultAnnotation;
import org.openintents.openpgp.OpenPgpDecryptionResult;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MessageCryptoPresenter {
    public CryptoResultAnnotation cryptoResultAnnotation;
    public final MessageViewFragment$messageCryptoMvpView$1 messageCryptoMvpView;
    public boolean reloadOnResumeWithoutRecreateFlag;

    public MessageCryptoPresenter(MessageViewFragment$messageCryptoMvpView$1 messageViewFragment$messageCryptoMvpView$1) {
        this.messageCryptoMvpView = messageViewFragment$messageCryptoMvpView$1;
    }

    public static Drawable getOpenPgpApiProviderIcon(Context context, String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            return context.getPackageManager().getApplicationIcon(str);
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }

    public final OpenPgpDecryptionResult getDecryptionResultForReply() {
        OpenPgpDecryptionResult openPgpDecryptionResult;
        CryptoResultAnnotation cryptoResultAnnotation = this.cryptoResultAnnotation;
        if (cryptoResultAnnotation == null || (openPgpDecryptionResult = cryptoResultAnnotation.openPgpDecryptionResult) == null || cryptoResultAnnotation.openPgpSignatureResult == null) {
            return null;
        }
        return openPgpDecryptionResult;
    }
}
