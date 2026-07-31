package kotlin.sequences;

import androidx.compose.material3.TextKt$$ExternalSyntheticLambda1;
import java.util.HashSet;
import java.util.Iterator;
import kotlin.collections.AbstractIterator;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DistinctIterator extends AbstractIterator {
    public final HashSet observed;
    public final Iterator source;

    public DistinctIterator(Iterator it, TextKt$$ExternalSyntheticLambda1 textKt$$ExternalSyntheticLambda1) {
        it.getClass();
        this.source = it;
        this.observed = new HashSet();
    }

    @Override // kotlin.collections.AbstractIterator
    public final void computeNext() {
        Object next;
        do {
            Iterator it = this.source;
            if (!it.hasNext()) {
                this.state = 2;
                return;
            }
            next = it.next();
        } while (!this.observed.add(next));
        this.nextValue = next;
        this.state = 1;
    }
}
