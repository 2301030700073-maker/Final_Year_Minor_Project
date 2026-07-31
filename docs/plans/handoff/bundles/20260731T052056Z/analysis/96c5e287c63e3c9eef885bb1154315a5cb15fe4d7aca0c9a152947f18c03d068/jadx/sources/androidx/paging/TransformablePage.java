package androidx.paging;

import androidx.compose.ui.Modifier;
import java.util.Arrays;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class TransformablePage {
    public final List data;
    public final List hintOriginalIndices;
    public final int hintOriginalPageOffset;
    public final int[] originalPageOffsets;

    public TransformablePage(int[] iArr, List list, int i, List list2) {
        iArr.getClass();
        list.getClass();
        this.originalPageOffsets = iArr;
        this.data = list;
        this.hintOriginalPageOffset = i;
        this.hintOriginalIndices = list2;
        if (iArr.length == 0) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("originalPageOffsets cannot be empty when constructing TransformablePage");
            throw null;
        }
        if (list2 == null || list2.size() == list.size()) {
            return;
        }
        list2.getClass();
        throw new IllegalArgumentException(("If originalIndices (size = " + list2.size() + ") is provided, it must be same length as data (size = " + list.size() + ')').toString());
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || TransformablePage.class != obj.getClass()) {
            return false;
        }
        TransformablePage transformablePage = (TransformablePage) obj;
        return Arrays.equals(this.originalPageOffsets, transformablePage.originalPageOffsets) && Intrinsics.areEqual(this.data, transformablePage.data) && this.hintOriginalPageOffset == transformablePage.hintOriginalPageOffset && Intrinsics.areEqual(this.hintOriginalIndices, transformablePage.hintOriginalIndices);
    }

    public final int hashCode() {
        int m = (Modifier.CC.m(Arrays.hashCode(this.originalPageOffsets) * 31, 31, this.data) + this.hintOriginalPageOffset) * 31;
        List list = this.hintOriginalIndices;
        return m + (list != null ? list.hashCode() : 0);
    }

    public final String toString() {
        return "TransformablePage(originalPageOffsets=" + Arrays.toString(this.originalPageOffsets) + ", data=" + this.data + ", hintOriginalPageOffset=" + this.hintOriginalPageOffset + ", hintOriginalIndices=" + this.hintOriginalIndices + ')';
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public TransformablePage(List list, int i) {
        this(new int[]{i}, list, i, null);
        list.getClass();
    }
}
