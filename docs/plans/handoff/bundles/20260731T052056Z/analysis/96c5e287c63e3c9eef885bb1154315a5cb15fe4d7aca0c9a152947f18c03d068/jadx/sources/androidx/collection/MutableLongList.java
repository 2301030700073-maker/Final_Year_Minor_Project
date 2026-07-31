package androidx.collection;

import java.util.Arrays;
import kotlin.ranges.IntRange;
import kotlin.text.RegexKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class MutableLongList {
    public int _size;
    public long[] content;

    public MutableLongList(int i) {
        this.content = i == 0 ? LongSetKt.EmptyLongArray : new long[i];
    }

    public final void add(long j) {
        int i = this._size + 1;
        long[] jArr = this.content;
        if (jArr.length < i) {
            jArr = Arrays.copyOf(jArr, Math.max(i, (jArr.length * 3) / 2));
            this.content = jArr;
        }
        int i2 = this._size;
        jArr[i2] = j;
        this._size = i2 + 1;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof MutableLongList) {
            MutableLongList mutableLongList = (MutableLongList) obj;
            int i = mutableLongList._size;
            int i2 = this._size;
            if (i == i2) {
                long[] jArr = this.content;
                long[] jArr2 = mutableLongList.content;
                IntRange until = RegexKt.until(0, i2);
                int i3 = until.first;
                int i4 = until.last;
                if (i3 > i4) {
                    return true;
                }
                while (jArr[i3] == jArr2[i3]) {
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

    public final int hashCode() {
        long[] jArr = this.content;
        int i = this._size;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            long j = jArr[i3];
            i2 += ((int) (j ^ (j >>> 32))) * 31;
        }
        return i2;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append((CharSequence) "[");
        long[] jArr = this.content;
        int i = this._size;
        int i2 = 0;
        while (true) {
            if (i2 >= i) {
                sb.append((CharSequence) "]");
                break;
            }
            long j = jArr[i2];
            if (i2 == -1) {
                sb.append((CharSequence) "...");
                break;
            }
            if (i2 != 0) {
                sb.append((CharSequence) ", ");
            }
            sb.append(j);
            i2++;
        }
        return sb.toString();
    }

    public /* synthetic */ MutableLongList() {
        this(16);
    }
}
