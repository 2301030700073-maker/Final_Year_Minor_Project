package kotlin.jvm.internal;

import com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;
import kotlin.collections.IntIterator;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ArrayIntIterator extends IntIterator {
    public final int[] array;
    public int index;

    public ArrayIntIterator(int[] iArr) {
        this.array = iArr;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.index < this.array.length;
    }

    @Override // kotlin.collections.IntIterator
    public final int nextInt() {
        try {
            int[] iArr = this.array;
            int i = this.index;
            this.index = i + 1;
            return iArr[i];
        } catch (ArrayIndexOutOfBoundsException e) {
            this.index--;
            CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m$2(e.getMessage());
            return 0;
        }
    }
}
