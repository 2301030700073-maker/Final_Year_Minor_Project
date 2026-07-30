package androidx.compose.ui.node;

import androidx.compose.runtime.collection.MutableVector;
import java.util.Arrays;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: NestedVectorStack.kt */
/* loaded from: classes.dex */
public final class NestedVectorStack {
    private int size;
    private int[] currentIndexes = new int[16];
    private MutableVector[] vectors = new MutableVector[16];

    public final boolean isNotEmpty() {
        int i = this.size;
        return i > 0 && this.currentIndexes[i - 1] >= 0;
    }

    public final Object pop() {
        int i = this.size;
        if (i <= 0) {
            throw new IllegalStateException("Cannot call pop() on an empty stack. Guard with a call to isNotEmpty()");
        }
        int i2 = i - 1;
        int i3 = this.currentIndexes[i2];
        MutableVector mutableVector = this.vectors[i2];
        Intrinsics.checkNotNull(mutableVector);
        if (i3 > 0) {
            this.currentIndexes[i2] = r3[i2] - 1;
        } else if (i3 == 0) {
            this.vectors[i2] = null;
            this.size--;
        }
        return mutableVector.getContent()[i3];
    }

    public final void push(MutableVector mutableVector) {
        if (mutableVector.isEmpty()) {
            return;
        }
        int i = this.size;
        int[] iArr = this.currentIndexes;
        if (i >= iArr.length) {
            int[] copyOf = Arrays.copyOf(iArr, iArr.length * 2);
            Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(this, newSize)");
            this.currentIndexes = copyOf;
            MutableVector[] mutableVectorArr = this.vectors;
            Object[] copyOf2 = Arrays.copyOf(mutableVectorArr, mutableVectorArr.length * 2);
            Intrinsics.checkNotNullExpressionValue(copyOf2, "copyOf(this, newSize)");
            this.vectors = (MutableVector[]) copyOf2;
        }
        this.currentIndexes[i] = mutableVector.getSize() - 1;
        this.vectors[i] = mutableVector;
        this.size++;
    }
}
