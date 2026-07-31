package kotlin.sequences;

import androidx.compose.ui.text.SaversKt$$ExternalSyntheticLambda3;
import androidx.core.view.TreeIterator;
import java.util.Iterator;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class MergingSequence implements Sequence {
    public final /* synthetic */ int $r8$classId;
    public final Object sequence1;
    public final Object sequence2;

    public MergingSequence(Sequence sequence, Sequence sequence2, SaversKt$$ExternalSyntheticLambda3 saversKt$$ExternalSyntheticLambda3) {
        this.$r8$classId = 0;
        this.sequence1 = sequence;
        this.sequence2 = sequence2;
    }

    @Override // kotlin.sequences.Sequence
    public final Iterator iterator() {
        switch (this.$r8$classId) {
            case 0:
                return new TreeIterator(this);
            case 1:
                return new SubSequence$iterator$1(this);
            default:
                return new TreeIterator(this, (byte) 0);
        }
    }

    public /* synthetic */ MergingSequence(Object obj, Function1 function1, int i) {
        this.$r8$classId = i;
        this.sequence1 = obj;
        this.sequence2 = function1;
    }
}
