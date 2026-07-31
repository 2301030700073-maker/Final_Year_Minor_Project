package kotlin.ranges;

import com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;
import kotlin.collections.IntIterator;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class IntProgressionIterator extends IntIterator {
    public final int finalElement;
    public boolean hasNext;
    public int next;
    public final int step;

    public IntProgressionIterator(int i, int i2, int i3) {
        this.step = i3;
        this.finalElement = i2;
        boolean z = false;
        if (i3 <= 0 ? i >= i2 : i <= i2) {
            z = true;
        }
        this.hasNext = z;
        this.next = z ? i : i2;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.hasNext;
    }

    @Override // kotlin.collections.IntIterator
    public final int nextInt() {
        int i = this.next;
        if (i != this.finalElement) {
            this.next = this.step + i;
            return i;
        }
        if (this.hasNext) {
            this.hasNext = false;
            return i;
        }
        CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m();
        return 0;
    }
}
