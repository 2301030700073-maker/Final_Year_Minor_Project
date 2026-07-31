package androidx.core.provider;

import android.net.Uri;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FontsContractCompat$FontInfo {
    public final boolean mItalic;
    public final int mResultCode;
    public final int mTtcIndex;
    public final Uri mUri;
    public final String mVariationSettings;
    public final int mWeight;

    public FontsContractCompat$FontInfo(String str, String str2) {
        this.mUri = new Uri.Builder().scheme("systemfont").authority(str).build();
        this.mTtcIndex = 0;
        this.mWeight = 400;
        this.mItalic = false;
        this.mVariationSettings = str2;
        this.mResultCode = 0;
    }

    public FontsContractCompat$FontInfo(Uri uri, int i, int i2, boolean z, String str, int i3) {
        uri.getClass();
        this.mUri = uri;
        this.mTtcIndex = i;
        this.mWeight = i2;
        this.mItalic = z;
        this.mVariationSettings = str;
        this.mResultCode = i3;
    }
}
