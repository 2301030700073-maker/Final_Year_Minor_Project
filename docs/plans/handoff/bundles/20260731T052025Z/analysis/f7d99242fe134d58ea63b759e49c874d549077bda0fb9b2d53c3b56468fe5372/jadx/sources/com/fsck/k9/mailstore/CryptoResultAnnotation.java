package com.fsck.k9.mailstore;

import android.app.PendingIntent;
import com.fsck.k9.mail.internet.MimeBodyPart;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.openintents.openpgp.OpenPgpDecryptionResult;
import org.openintents.openpgp.OpenPgpError;
import org.openintents.openpgp.OpenPgpSignatureResult;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CryptoResultAnnotation {
    public final CryptoResultAnnotation encapsulatedResult;
    public final int errorType;
    public final OpenPgpDecryptionResult openPgpDecryptionResult;
    public final OpenPgpError openPgpError;
    public final PendingIntent openPgpInsecureWarningPendingIntent;
    public final PendingIntent openPgpPendingIntent;
    public final OpenPgpSignatureResult openPgpSignatureResult;
    public final MimeBodyPart replacementData;

    public CryptoResultAnnotation(CryptoResultAnnotation cryptoResultAnnotation, CryptoResultAnnotation cryptoResultAnnotation2) {
        if (cryptoResultAnnotation.encapsulatedResult != null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1((Object) "cannot replace an encapsulated result, this is a bug!");
            throw null;
        }
        this.errorType = cryptoResultAnnotation.errorType;
        this.replacementData = cryptoResultAnnotation.replacementData;
        this.openPgpDecryptionResult = cryptoResultAnnotation.openPgpDecryptionResult;
        this.openPgpSignatureResult = cryptoResultAnnotation.openPgpSignatureResult;
        this.openPgpPendingIntent = cryptoResultAnnotation.openPgpPendingIntent;
        this.openPgpInsecureWarningPendingIntent = cryptoResultAnnotation.openPgpInsecureWarningPendingIntent;
        this.openPgpError = cryptoResultAnnotation.openPgpError;
        this.encapsulatedResult = cryptoResultAnnotation2;
    }

    public CryptoResultAnnotation(int i, MimeBodyPart mimeBodyPart, OpenPgpDecryptionResult openPgpDecryptionResult, OpenPgpSignatureResult openPgpSignatureResult, PendingIntent pendingIntent, PendingIntent pendingIntent2, OpenPgpError openPgpError, boolean z) {
        this.errorType = i;
        this.replacementData = mimeBodyPart;
        this.openPgpDecryptionResult = openPgpDecryptionResult;
        this.openPgpSignatureResult = openPgpSignatureResult;
        this.openPgpPendingIntent = pendingIntent;
        this.openPgpError = openPgpError;
        this.openPgpInsecureWarningPendingIntent = pendingIntent2;
        this.encapsulatedResult = null;
    }
}
