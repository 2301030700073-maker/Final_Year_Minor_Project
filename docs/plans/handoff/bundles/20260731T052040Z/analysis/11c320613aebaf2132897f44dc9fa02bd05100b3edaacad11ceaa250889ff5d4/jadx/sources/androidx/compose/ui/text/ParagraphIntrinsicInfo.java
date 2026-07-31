package androidx.compose.ui.text;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.text.platform.AndroidParagraphIntrinsics;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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
        return Modifier.CC.m(sb, this.endIndex, ')');
    }
}
