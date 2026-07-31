package androidx.compose.ui.text;

import androidx.compose.animation.core.Animation;
import androidx.compose.ui.text.platform.AndroidParagraphIntrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ParagraphIntrinsicInfo {
    public final int endIndex;
    public final AndroidParagraphIntrinsics intrinsics;
    public final int startIndex;

    public ParagraphIntrinsicInfo(AndroidParagraphIntrinsics androidParagraphIntrinsics, int i, int i2) {
        this.intrinsics = androidParagraphIntrinsics;
        this.startIndex = i;
        this.endIndex = i2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ParagraphIntrinsicInfo) {
            ParagraphIntrinsicInfo paragraphIntrinsicInfo = (ParagraphIntrinsicInfo) obj;
            if (this.intrinsics == paragraphIntrinsicInfo.intrinsics && this.startIndex == paragraphIntrinsicInfo.startIndex && this.endIndex == paragraphIntrinsicInfo.endIndex) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (((this.intrinsics.hashCode() * 31) + this.startIndex) * 31) + this.endIndex;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ParagraphIntrinsicInfo(intrinsics=");
        sb.append(this.intrinsics);
        sb.append(", startIndex=");
        sb.append(this.startIndex);
        sb.append(", endIndex=");
        return Animation.CC.m(sb, this.endIndex, ')');
    }
}
