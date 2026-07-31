package androidx.collection;

import java.util.Arrays;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MutableIntList {
    public int _size;
    public int[] content;

    public MutableIntList(int i) {
        this.content = i == 0 ? IntSetKt.EmptyIntArray : new int[i];
    }

    public final void add(int i) {
        ensureCapacity(this._size + 1);
        int[] iArr = this.content;
        int i2 = this._size;
        iArr[i2] = i;
        this._size = i2 + 1;
    }

    public final void ensureCapacity(int i) {
        int[] iArr = this.content;
        if (iArr.length < i) {
            this.content = Arrays.copyOf(iArr, Math.max(i, (iArr.length * 3) / 2));
        }
    }

    public final boolean equals(Object obj) {
        if (obj instanceof MutableIntList) {
            MutableIntList mutableIntList = (MutableIntList) obj;
            int i = mutableIntList._size;
            int i2 = this._size;
            if (i == i2) {
                int[] iArr = this.content;
                int[] iArr2 = mutableIntList.content;
                IntRange until = RangesKt.until(0, i2);
                int i3 = until.first;
                int i4 = until.last;
                if (i3 > i4) {
                    return true;
                }
                while (iArr[i3] == iArr2[i3]) {
                    if (i3 == i4) {
                        return true;
                    }
                    i3++;
                }
                return false;
            }
        }
        return false;
    }

    public final int get(int i) {
        if (i >= 0 && i < this._size) {
            return this.content[i];
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Index must be between 0 and size");
        return 0;
    }

    public final int hashCode() {
        int[] iArr = this.content;
        int i = this._size;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            i2 += iArr[i3] * 31;
        }
        return i2;
    }

    public final int last() {
        int i = this._size;
        if (i != 0) {
            return this.content[i - 1];
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m("IntList is empty.");
        return 0;
    }

    public final void removeAt(int i) {
        int i2;
        if (i < 0 || i >= (i2 = this._size)) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Index must be between 0 and size");
            return;
        }
        int[] iArr = this.content;
        int i3 = iArr[i];
        if (i != i2 - 1) {
            ArraysKt___ArraysKt.copyInto(i, i + 1, i2, iArr, iArr);
        }
        this._size--;
    }

    public final void set(int i, int i2) {
        if (i < 0 || i >= this._size) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Index must be between 0 and size");
            return;
        }
        int[] iArr = this.content;
        int i3 = iArr[i];
        iArr[i] = i2;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append((CharSequence) "[");
        int[] iArr = this.content;
        int i = this._size;
        int i2 = 0;
        while (true) {
            if (i2 >= i) {
                sb.append((CharSequence) "]");
                break;
            }
            int i3 = iArr[i2];
            if (i2 == -1) {
                sb.append((CharSequence) "...");
                break;
            }
            if (i2 != 0) {
                sb.append((CharSequence) ", ");
            }
            sb.append(i3);
            i2++;
        }
        return sb.toString();
    }

    public /* synthetic */ MutableIntList() {
        this(16);
    }
}
