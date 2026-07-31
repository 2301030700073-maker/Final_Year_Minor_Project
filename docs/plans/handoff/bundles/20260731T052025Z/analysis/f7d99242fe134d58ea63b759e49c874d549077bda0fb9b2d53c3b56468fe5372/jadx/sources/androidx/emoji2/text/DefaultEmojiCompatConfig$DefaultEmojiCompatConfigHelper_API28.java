package androidx.emoji2.text;

import android.content.pm.PackageManager;
import android.content.pm.Signature;
import okio.AsyncTimeout;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DefaultEmojiCompatConfig$DefaultEmojiCompatConfigHelper_API28 extends AsyncTimeout.Companion {
    @Override // okio.AsyncTimeout.Companion
    public final Signature[] getSigningSignatures(PackageManager packageManager, String str) {
        return packageManager.getPackageInfo(str, 64).signatures;
    }
}
