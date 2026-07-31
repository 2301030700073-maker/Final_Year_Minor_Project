package kotlin.sequences;

import java.util.Iterator;
import kotlin.collections.IndexingIterator;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class TakeSequence implements Sequence, DropTakeSequence {
    public final Sequence sequence;

    public TakeSequence(Sequence sequence) {
        this.sequence = sequence;
    }

    @Override // kotlin.sequences.DropTakeSequence
    public final Sequence drop(int i) {
        return i >= 50 ? EmptySequence.INSTANCE : new SubSequence(this.sequence, i, 50);
    }

    @Override // kotlin.sequences.Sequence
    public final Iterator iterator() {
        return new IndexingIterator(this);
    }

    @Override // kotlin.sequences.DropTakeSequence
    public final Sequence take() {
        return this;
    }
}
