package kotlinx.datetime.internal.format;

import androidx.room.InvalidationTracker$implementation$1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ComparisonPredicate implements Predicate {
    public final Object expectedValue;
    public final InvalidationTracker$implementation$1 getter;

    public ComparisonPredicate(Object obj, InvalidationTracker$implementation$1 invalidationTracker$implementation$1) {
        this.expectedValue = obj;
        this.getter = invalidationTracker$implementation$1;
    }

    @Override // kotlinx.datetime.internal.format.Predicate
    public final boolean test(Object obj) {
        return Intrinsics.areEqual(this.getter.invoke(obj), this.expectedValue);
    }
}
