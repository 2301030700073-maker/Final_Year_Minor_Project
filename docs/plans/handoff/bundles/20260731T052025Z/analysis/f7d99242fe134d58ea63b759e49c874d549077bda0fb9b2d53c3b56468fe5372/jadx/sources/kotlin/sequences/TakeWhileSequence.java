package kotlin.sequences;

import androidx.core.view.TreeIterator;
import java.util.Iterator;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class TakeWhileSequence implements Sequence {
    public final /* synthetic */ int $r8$classId;
    public final Function1 predicate;
    public final Sequence sequence;

    public TakeWhileSequence(Sequence sequence, Function1 function1, int i) {
        this.$r8$classId = i;
        switch (i) {
            case 1:
                SequencesKt___SequencesKt$flatMap$2 sequencesKt___SequencesKt$flatMap$2 = SequencesKt___SequencesKt$flatMap$2.INSTANCE;
                this.sequence = sequence;
                this.predicate = function1;
                break;
            case 2:
                sequence.getClass();
                this.sequence = sequence;
                this.predicate = function1;
                break;
            default:
                this.sequence = sequence;
                this.predicate = function1;
                break;
        }
    }

    @Override // kotlin.sequences.Sequence
    public final Iterator iterator() {
        switch (this.$r8$classId) {
            case 0:
                return new FilteringSequence$iterator$1(this);
            case 1:
                return new FilteringSequence$iterator$1(this, (byte) 0);
            default:
                return new TreeIterator(this);
        }
    }
}
