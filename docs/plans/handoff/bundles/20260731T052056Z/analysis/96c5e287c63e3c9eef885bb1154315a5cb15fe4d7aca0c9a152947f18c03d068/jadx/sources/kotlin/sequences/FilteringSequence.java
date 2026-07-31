package kotlin.sequences;

import java.util.Iterator;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class FilteringSequence implements Sequence {
    public final Function1 predicate;
    public final boolean sendWhen;
    public final Sequence sequence;

    public FilteringSequence(Sequence sequence, boolean z, Function1 function1) {
        this.sequence = sequence;
        this.sendWhen = z;
        this.predicate = function1;
    }

    @Override // kotlin.sequences.Sequence
    public final Iterator iterator() {
        return new FilteringSequence$iterator$1(this);
    }
}
