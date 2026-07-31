package kotlin.sequences;

import androidx.compose.material3.TextKt$$ExternalSyntheticLambda1;
import androidx.core.view.TreeIterator;
import java.util.Iterator;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DistinctSequence implements Sequence {
    public final /* synthetic */ int $r8$classId;
    public final Function1 keySelector;
    public final Object source;

    public /* synthetic */ DistinctSequence(int i, Object obj, Function1 function1) {
        this.$r8$classId = i;
        this.source = obj;
        this.keySelector = function1;
    }

    @Override // kotlin.sequences.Sequence
    public final Iterator iterator() {
        switch (this.$r8$classId) {
            case 0:
                return new DistinctIterator(new TreeIterator((TakeWhileSequence) this.source), (TextKt$$ExternalSyntheticLambda1) this.keySelector);
            default:
                return new SubSequence$iterator$1(this);
        }
    }
}
