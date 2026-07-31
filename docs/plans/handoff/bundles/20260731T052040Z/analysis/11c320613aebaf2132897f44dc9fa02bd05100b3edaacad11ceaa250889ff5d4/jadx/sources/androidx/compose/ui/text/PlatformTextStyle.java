package androidx.compose.ui.text;

import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class PlatformTextStyle {
    public final PlatformParagraphStyle paragraphStyle;

    public PlatformTextStyle(PlatformParagraphStyle platformParagraphStyle) {
        this.paragraphStyle = platformParagraphStyle;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof PlatformTextStyle) {
            return Intrinsics.areEqual(this.paragraphStyle, ((PlatformTextStyle) obj).paragraphStyle);
        }
        return false;
    }

    public final int hashCode() {
        PlatformParagraphStyle platformParagraphStyle = this.paragraphStyle;
        if (platformParagraphStyle != null) {
            return platformParagraphStyle.hashCode();
        }
        return 0;
    }

    public final String toString() {
        return "PlatformTextStyle(spanStyle=null, paragraphSyle=" + this.paragraphStyle + ')';
    }
}
