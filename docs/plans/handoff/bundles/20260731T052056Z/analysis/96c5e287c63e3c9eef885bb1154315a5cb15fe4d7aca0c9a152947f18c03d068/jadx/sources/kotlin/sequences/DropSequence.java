package kotlin.sequences;

import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import java.util.Iterator;
import kotlin.collections.IndexingIterator;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class DropSequence implements Sequence, DropTakeSequence {
    public final /* synthetic */ int $r8$classId;
    public final int count;
    public final Sequence sequence;

    public DropSequence(Sequence sequence, int i, int i2) {
        this.$r8$classId = i2;
        switch (i2) {
            case 1:
                this.sequence = sequence;
                this.count = i;
                if (i >= 0) {
                    return;
                }
                Gson$$ExternalSyntheticBUOutline0.m(i, "count must be non-negative, but was ");
                throw null;
            default:
                sequence.getClass();
                this.sequence = sequence;
                this.count = i;
                if (i >= 0) {
                    return;
                }
                Gson$$ExternalSyntheticBUOutline0.m(i, "count must be non-negative, but was ");
                throw null;
        }
    }

    @Override // kotlin.sequences.DropTakeSequence
    public final Sequence drop(int i) {
        int i2 = this.$r8$classId;
        Sequence sequence = this.sequence;
        int i3 = this.count;
        switch (i2) {
            case 0:
                int i4 = i3 + i;
                return i4 < 0 ? new DropSequence(this, i, 0) : new DropSequence(sequence, i4, 0);
            default:
                return i >= i3 ? EmptySequence.INSTANCE : new SubSequence(sequence, i, i3);
        }
    }

    @Override // kotlin.sequences.Sequence
    public final Iterator iterator() {
        switch (this.$r8$classId) {
            case 0:
                return new IndexingIterator(this);
            default:
                return new IndexingIterator(this, (byte) 0);
        }
    }

    @Override // kotlin.sequences.DropTakeSequence
    public final Sequence take(int i) {
        int i2 = this.$r8$classId;
        Sequence sequence = this.sequence;
        int i3 = this.count;
        switch (i2) {
            case 0:
                int i4 = i3 + i;
                return i4 < 0 ? new DropSequence(this, i, 1) : new SubSequence(sequence, i3, i4);
            default:
                return i >= i3 ? this : new DropSequence(sequence, i, 1);
        }
    }
}
