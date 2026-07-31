package androidx.compose.ui.text.font;

import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class TypefaceRequest {
    public final SystemFontFamily fontFamily;
    public final int fontStyle;
    public final int fontSynthesis;
    public final FontWeight fontWeight;
    public final Object resourceLoaderCacheKey;

    public TypefaceRequest(SystemFontFamily systemFontFamily, FontWeight fontWeight, int i, int i2, Object obj) {
        this.fontFamily = systemFontFamily;
        this.fontWeight = fontWeight;
        this.fontStyle = i;
        this.fontSynthesis = i2;
        this.resourceLoaderCacheKey = obj;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TypefaceRequest)) {
            return false;
        }
        TypefaceRequest typefaceRequest = (TypefaceRequest) obj;
        return Intrinsics.areEqual(this.fontFamily, typefaceRequest.fontFamily) && Intrinsics.areEqual(this.fontWeight, typefaceRequest.fontWeight) && this.fontStyle == typefaceRequest.fontStyle && this.fontSynthesis == typefaceRequest.fontSynthesis && Intrinsics.areEqual(this.resourceLoaderCacheKey, typefaceRequest.resourceLoaderCacheKey);
    }

    public final int hashCode() {
        SystemFontFamily systemFontFamily = this.fontFamily;
        int hashCode = (((((((systemFontFamily == null ? 0 : systemFontFamily.hashCode()) * 31) + this.fontWeight.weight) * 31) + this.fontStyle) * 31) + this.fontSynthesis) * 31;
        Object obj = this.resourceLoaderCacheKey;
        return hashCode + (obj != null ? obj.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("TypefaceRequest(fontFamily=");
        sb.append(this.fontFamily);
        sb.append(", fontWeight=");
        sb.append(this.fontWeight);
        sb.append(", fontStyle=");
        String str = "Invalid";
        int i = this.fontStyle;
        sb.append((Object) (i == 0 ? "Normal" : i == 1 ? "Italic" : "Invalid"));
        sb.append(", fontSynthesis=");
        int i2 = this.fontSynthesis;
        if (i2 == 0) {
            str = "None";
        } else if (i2 == 1) {
            str = "Weight";
        } else if (i2 == 2) {
            str = "Style";
        } else if (i2 == 65535) {
            str = "All";
        }
        sb.append((Object) str);
        sb.append(", resourceLoaderCacheKey=");
        sb.append(this.resourceLoaderCacheKey);
        sb.append(')');
        return sb.toString();
    }
}
