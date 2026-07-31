package androidx.compose.ui.text;

import androidx.compose.ui.text.internal.InlineClassHelperKt;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class MultiParagraph {
    public Object intrinsics;
    public int lineCount;
    public int maxLines;
    public Object paragraphInfoList;
    public Object placeholderRects;

    public int add(long j) {
        int i = this.maxLines + 1;
        long[] jArr = (long[]) this.intrinsics;
        int length = jArr.length;
        if (i > length) {
            int i2 = length * 2;
            long[] jArr2 = new long[i2];
            int[] iArr = new int[i2];
            ArraysKt.copyInto(jArr, jArr2, 0, 0, jArr.length);
            ArraysKt.copyInto$default(0, 0, 14, (int[]) this.placeholderRects, iArr);
            this.intrinsics = jArr2;
            this.placeholderRects = iArr;
        }
        int i3 = this.maxLines;
        this.maxLines = i3 + 1;
        int length2 = ((int[]) this.paragraphInfoList).length;
        if (this.lineCount >= length2) {
            int i4 = length2 * 2;
            int[] iArr2 = new int[i4];
            int i5 = 0;
            while (i5 < i4) {
                int i6 = i5 + 1;
                iArr2[i5] = i6;
                i5 = i6;
            }
            ArraysKt.copyInto$default(0, 0, 14, (int[]) this.paragraphInfoList, iArr2);
            this.paragraphInfoList = iArr2;
        }
        int i7 = this.lineCount;
        int[] iArr3 = (int[]) this.paragraphInfoList;
        this.lineCount = iArr3[i7];
        long[] jArr3 = (long[]) this.intrinsics;
        jArr3[i3] = j;
        ((int[]) this.placeholderRects)[i3] = i7;
        iArr3[i7] = i3;
        while (i3 > 0) {
            int i8 = ((i3 + 1) >> 1) - 1;
            if (Intrinsics.compare(jArr3[i8], j) <= 0) {
                break;
            }
            swap(i8, i3);
            i3 = i8;
        }
        return i7;
    }

    public void requireLineIndexInRange(int i) {
        int i2 = this.lineCount;
        boolean z = false;
        if (i >= 0 && i < i2) {
            z = true;
        }
        if (z) {
            return;
        }
        InlineClassHelperKt.throwIllegalArgumentException("lineIndex(" + i + ") is out of bounds [0, " + i2 + ')');
    }

    public void swap(int i, int i2) {
        long[] jArr = (long[]) this.intrinsics;
        int[] iArr = (int[]) this.placeholderRects;
        int[] iArr2 = (int[]) this.paragraphInfoList;
        long j = jArr[i];
        jArr[i] = jArr[i2];
        jArr[i2] = j;
        int i3 = iArr[i];
        int i4 = iArr[i2];
        iArr[i] = i4;
        iArr[i2] = i3;
        iArr2[i4] = i;
        iArr2[i3] = i2;
    }
}
