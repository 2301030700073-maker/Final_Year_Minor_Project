package kotlin.sequences;

import java.util.Iterator;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class FlatteningSequence implements Sequence {
    public final Function1 iterator;
    public final Sequence sequence;
    public final Function1 transformer;

    public FlatteningSequence(Sequence sequence, Function1 function1, Function1 function12) {
        function1.getClass();
        this.sequence = sequence;
        this.transformer = function1;
        this.iterator = function12;
    }

    @Override // kotlin.sequences.Sequence
    public final Iterator iterator() {
        return new FilteringSequence$iterator$1(this);
    }
}
