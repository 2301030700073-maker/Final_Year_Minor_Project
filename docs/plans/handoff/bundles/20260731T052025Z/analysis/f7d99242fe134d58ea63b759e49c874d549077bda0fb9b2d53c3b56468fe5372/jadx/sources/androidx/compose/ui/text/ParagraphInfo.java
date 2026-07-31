package androidx.compose.ui.text;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.compose.ui.geometry.Rect;
import kotlin.ranges.RangesKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ParagraphInfo {
    public final float bottom;
    public final int endIndex;
    public final int endLineIndex;
    public final AndroidParagraph paragraph;
    public final int startIndex;
    public final int startLineIndex;
    public final float top;

    public ParagraphInfo(AndroidParagraph androidParagraph, int i, int i2, int i3, int i4, float f, float f2) {
        this.paragraph = androidParagraph;
        this.startIndex = i;
        this.endIndex = i2;
        this.startLineIndex = i3;
        this.endLineIndex = i4;
        this.top = f;
        this.bottom = f2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ParagraphInfo) {
            ParagraphInfo paragraphInfo = (ParagraphInfo) obj;
            if (this.paragraph == paragraphInfo.paragraph && this.startIndex == paragraphInfo.startIndex && this.endIndex == paragraphInfo.endIndex && this.startLineIndex == paragraphInfo.startLineIndex && this.endLineIndex == paragraphInfo.endLineIndex && Float.compare(this.top, paragraphInfo.top) == 0 && Float.compare(this.bottom, paragraphInfo.bottom) == 0) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Float.floatToIntBits(this.bottom) + CameraDevices$CC.m(((((((((this.paragraph.hashCode() * 31) + this.startIndex) * 31) + this.endIndex) * 31) + this.startLineIndex) * 31) + this.endLineIndex) * 31, this.top, 31);
    }

    public final Rect toGlobal(Rect rect) {
        return rect.m448translatek4lQ0M((Float.floatToRawIntBits(0.0f) << 32) | (Float.floatToRawIntBits(this.top) & 4294967295L));
    }

    /* renamed from: toGlobal-xdX6-G0, reason: not valid java name */
    public final long m689toGlobalxdX6G0(long j, boolean z) {
        if (z) {
            long j2 = TextRange.Zero;
            if (TextRange.m698equalsimpl0(j, j2)) {
                return j2;
            }
        }
        int i = TextRange.$r8$clinit;
        int i2 = this.startIndex;
        return ParagraphKt.TextRange(((int) (j >> 32)) + i2, ((int) (j & 4294967295L)) + i2);
    }

    public final Rect toLocal(Rect rect) {
        float f = -this.top;
        return rect.m448translatek4lQ0M((Float.floatToRawIntBits(0.0f) << 32) | (Float.floatToRawIntBits(f) & 4294967295L));
    }

    public final int toLocalIndex(int i) {
        int i2 = this.endIndex;
        int i3 = this.startIndex;
        return RangesKt.coerceIn(i, i3, i2) - i3;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ParagraphInfo(paragraph=");
        sb.append(this.paragraph);
        sb.append(", startIndex=");
        sb.append(this.startIndex);
        sb.append(", endIndex=");
        sb.append(this.endIndex);
        sb.append(", startLineIndex=");
        sb.append(this.startLineIndex);
        sb.append(", endLineIndex=");
        sb.append(this.endLineIndex);
        sb.append(", top=");
        sb.append(this.top);
        sb.append(", bottom=");
        return CameraDevices$CC.m(sb, this.bottom, ')');
    }
}
