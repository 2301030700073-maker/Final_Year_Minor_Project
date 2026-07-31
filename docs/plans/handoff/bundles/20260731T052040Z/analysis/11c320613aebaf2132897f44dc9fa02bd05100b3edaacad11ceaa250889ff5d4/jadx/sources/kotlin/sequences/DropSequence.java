package kotlin.sequences;

import java.util.Iterator;
import kotlin.collections.IndexingIterator;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class DropSequence implements Sequence, DropTakeSequence {
    public final int count;
    public final Sequence sequence;

    public DropSequence(Sequence sequence, int i) {
        sequence.getClass();
        this.sequence = sequence;
        this.count = i;
        if (i >= 0) {
            return;
        }
        throw new IllegalArgumentException(("count must be non-negative, but was " + i + '.').toString());
    }

    @Override // kotlin.sequences.DropTakeSequence
    public final Sequence drop(int i) {
        int i2 = this.count + i;
        return i2 < 0 ? new DropSequence(this, i) : new DropSequence(this.sequence, i2);
    }

    @Override // kotlin.sequences.Sequence
    public final Iterator iterator() {
        return new IndexingIterator(this);
    }

    @Override // kotlin.sequences.DropTakeSequence
    public final Sequence take() {
        int i = this.count;
        int i2 = i + 50;
        return i2 < 0 ? new TakeSequence(this) : new SubSequence(this.sequence, i, i2);
    }
}
