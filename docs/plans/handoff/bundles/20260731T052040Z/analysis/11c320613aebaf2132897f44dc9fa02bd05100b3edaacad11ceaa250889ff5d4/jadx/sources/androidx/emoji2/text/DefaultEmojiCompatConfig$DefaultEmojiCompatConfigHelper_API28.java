package androidx.emoji2.text;

import android.content.pm.PackageManager;
import android.content.pm.Signature;
import io.noties.markwon.BlockHandlerDef;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class DefaultEmojiCompatConfig$DefaultEmojiCompatConfigHelper_API28 extends BlockHandlerDef {
    @Override // io.noties.markwon.BlockHandlerDef
    public final Signature[] getSigningSignatures(PackageManager packageManager, String str) {
        return packageManager.getPackageInfo(str, 64).signatures;
    }
}
