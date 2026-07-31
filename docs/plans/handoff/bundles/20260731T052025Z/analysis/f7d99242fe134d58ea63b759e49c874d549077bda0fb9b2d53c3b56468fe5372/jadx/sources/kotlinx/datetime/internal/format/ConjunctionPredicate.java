package kotlinx.datetime.internal.format;

import java.util.ArrayList;
import java.util.Iterator;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ConjunctionPredicate implements Predicate {
    public final ArrayList predicates;

    public ConjunctionPredicate(ArrayList arrayList) {
        this.predicates = arrayList;
    }

    @Override // kotlinx.datetime.internal.format.Predicate
    public final boolean test(Object obj) {
        ArrayList arrayList = this.predicates;
        if (arrayList.isEmpty()) {
            return true;
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            if (!((Predicate) it.next()).test(obj)) {
                return false;
            }
        }
        return true;
    }
}
