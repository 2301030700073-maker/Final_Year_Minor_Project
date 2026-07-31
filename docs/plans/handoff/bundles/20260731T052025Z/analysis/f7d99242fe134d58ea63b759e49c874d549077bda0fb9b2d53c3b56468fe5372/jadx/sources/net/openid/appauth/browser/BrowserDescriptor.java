package net.openid.appauth.browser;

import android.content.pm.PackageInfo;
import android.content.pm.Signature;
import android.util.Base64;
import androidx.compose.ui.Modifier;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.HashSet;
import java.util.Iterator;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class BrowserDescriptor {
    public final String packageName;
    public final HashSet signatureHashes;
    public final Boolean useCustomTab;
    public final String version;

    public BrowserDescriptor(PackageInfo packageInfo, boolean z) {
        String str = packageInfo.packageName;
        Signature[] signatureArr = packageInfo.signatures;
        HashSet hashSet = new HashSet();
        for (Signature signature : signatureArr) {
            try {
                hashSet.add(Base64.encodeToString(MessageDigest.getInstance("SHA-512").digest(signature.toByteArray()), 10));
            } catch (NoSuchAlgorithmException unused) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Platform does not supportSHA-512 hashing");
                throw null;
            }
        }
        String str2 = packageInfo.versionName;
        this.packageName = str;
        this.signatureHashes = hashSet;
        this.version = str2;
        this.useCustomTab = Boolean.valueOf(z);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof BrowserDescriptor)) {
            return false;
        }
        BrowserDescriptor browserDescriptor = (BrowserDescriptor) obj;
        return this.packageName.equals(browserDescriptor.packageName) && this.version.equals(browserDescriptor.version) && this.useCustomTab == browserDescriptor.useCustomTab && this.signatureHashes.equals(browserDescriptor.signatureHashes);
    }

    public final int hashCode() {
        int m = (this.useCustomTab.booleanValue() ? 1 : 0) + Modifier.CC.m(this.packageName.hashCode() * 92821, this.version, 92821);
        Iterator it = this.signatureHashes.iterator();
        while (it.hasNext()) {
            m = (m * 92821) + ((String) it.next()).hashCode();
        }
        return m;
    }
}
