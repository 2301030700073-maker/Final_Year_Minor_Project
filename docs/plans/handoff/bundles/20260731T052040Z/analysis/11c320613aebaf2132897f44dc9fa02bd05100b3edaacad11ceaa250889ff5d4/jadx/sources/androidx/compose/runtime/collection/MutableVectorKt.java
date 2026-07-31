package androidx.compose.runtime.collection;

import androidx.compose.ui.Modifier;
import java.util.List;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class MutableVectorKt {
    public static final void checkIndex(int i, List list) {
        int size = list.size();
        if (i < 0 || i >= size) {
            throwListIndexOutOfBoundsException(i, size);
        }
    }

    public static final void checkSubIndex(List list, int i, int i2) {
        if (i > i2) {
            throwReversedIndicesException(i, i2);
        }
        if (i < 0) {
            throwNegativeIndexException(i);
        }
        if (i2 > list.size()) {
            throwOutOfRangeException(i2, list.size());
        }
    }

    private static final void throwListIndexOutOfBoundsException(int i, int i2) {
        throw new IndexOutOfBoundsException("Index " + i + " is out of bounds. The list has " + i2 + " elements.");
    }

    private static final void throwNegativeIndexException(int i) {
        throw new IndexOutOfBoundsException(Modifier.CC.m("fromIndex (", i, ") is less than 0."));
    }

    private static final void throwOutOfRangeException(int i, int i2) {
        throw new IndexOutOfBoundsException("toIndex (" + i + ") is more than than the list size (" + i2 + ')');
    }

    private static final void throwReversedIndicesException(int i, int i2) {
        throw new IllegalArgumentException("Indices are out of order. fromIndex (" + i + ") is greater than toIndex (" + i2 + ").");
    }
}
