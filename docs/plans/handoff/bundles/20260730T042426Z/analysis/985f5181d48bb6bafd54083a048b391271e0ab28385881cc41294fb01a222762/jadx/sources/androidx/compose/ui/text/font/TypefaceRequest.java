package androidx.compose.ui.text.font;

import ch.qos.logback.core.CoreConstants;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: FontFamilyResolver.kt */
/* loaded from: classes.dex */
public final class TypefaceRequest {
    private final FontFamily fontFamily;
    private final int fontStyle;
    private final int fontSynthesis;
    private final FontWeight fontWeight;
    private final Object resourceLoaderCacheKey;

    public /* synthetic */ TypefaceRequest(FontFamily fontFamily, FontWeight fontWeight, int i, int i2, Object obj, DefaultConstructorMarker defaultConstructorMarker) {
        this(fontFamily, fontWeight, i, i2, obj);
    }

    /* renamed from: copy-e1PVR60$default, reason: not valid java name */
    public static /* synthetic */ TypefaceRequest m2187copye1PVR60$default(TypefaceRequest typefaceRequest, FontFamily fontFamily, FontWeight fontWeight, int i, int i2, Object obj, int i3, Object obj2) {
        if ((i3 & 1) != 0) {
            fontFamily = typefaceRequest.fontFamily;
        }
        if ((i3 & 2) != 0) {
            fontWeight = typefaceRequest.fontWeight;
        }
        FontWeight fontWeight2 = fontWeight;
        if ((i3 & 4) != 0) {
            i = typefaceRequest.fontStyle;
        }
        int i4 = i;
        if ((i3 & 8) != 0) {
            i2 = typefaceRequest.fontSynthesis;
        }
        int i5 = i2;
        if ((i3 & 16) != 0) {
            obj = typefaceRequest.resourceLoaderCacheKey;
        }
        return typefaceRequest.m2188copye1PVR60(fontFamily, fontWeight2, i4, i5, obj);
    }

    /* renamed from: copy-e1PVR60, reason: not valid java name */
    public final TypefaceRequest m2188copye1PVR60(FontFamily fontFamily, FontWeight fontWeight, int i, int i2, Object obj) {
        return new TypefaceRequest(fontFamily, fontWeight, i, i2, obj, null);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TypefaceRequest)) {
            return false;
        }
        TypefaceRequest typefaceRequest = (TypefaceRequest) obj;
        return Intrinsics.areEqual(this.fontFamily, typefaceRequest.fontFamily) && Intrinsics.areEqual(this.fontWeight, typefaceRequest.fontWeight) && FontStyle.m2163equalsimpl0(this.fontStyle, typefaceRequest.fontStyle) && FontSynthesis.m2172equalsimpl0(this.fontSynthesis, typefaceRequest.fontSynthesis) && Intrinsics.areEqual(this.resourceLoaderCacheKey, typefaceRequest.resourceLoaderCacheKey);
    }

    public int hashCode() {
        FontFamily fontFamily = this.fontFamily;
        int hashCode = (((((((fontFamily == null ? 0 : fontFamily.hashCode()) * 31) + this.fontWeight.hashCode()) * 31) + FontStyle.m2164hashCodeimpl(this.fontStyle)) * 31) + FontSynthesis.m2173hashCodeimpl(this.fontSynthesis)) * 31;
        Object obj = this.resourceLoaderCacheKey;
        return hashCode + (obj != null ? obj.hashCode() : 0);
    }

    public String toString() {
        return "TypefaceRequest(fontFamily=" + this.fontFamily + ", fontWeight=" + this.fontWeight + ", fontStyle=" + ((Object) FontStyle.m2165toStringimpl(this.fontStyle)) + ", fontSynthesis=" + ((Object) FontSynthesis.m2174toStringimpl(this.fontSynthesis)) + ", resourceLoaderCacheKey=" + this.resourceLoaderCacheKey + CoreConstants.RIGHT_PARENTHESIS_CHAR;
    }

    private TypefaceRequest(FontFamily fontFamily, FontWeight fontWeight, int i, int i2, Object obj) {
        this.fontFamily = fontFamily;
        this.fontWeight = fontWeight;
        this.fontStyle = i;
        this.fontSynthesis = i2;
        this.resourceLoaderCacheKey = obj;
    }

    public final FontFamily getFontFamily() {
        return this.fontFamily;
    }

    public final FontWeight getFontWeight() {
        return this.fontWeight;
    }

    /* renamed from: getFontStyle-_-LCdwA, reason: not valid java name */
    public final int m2189getFontStyle_LCdwA() {
        return this.fontStyle;
    }
}
