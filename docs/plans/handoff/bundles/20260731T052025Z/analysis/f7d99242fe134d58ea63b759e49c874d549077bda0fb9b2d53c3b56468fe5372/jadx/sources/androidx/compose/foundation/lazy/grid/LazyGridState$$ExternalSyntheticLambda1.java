package androidx.compose.foundation.lazy.grid;

import androidx.compose.foundation.lazy.DefaultLazyListPrefetchStrategy;
import androidx.compose.foundation.lazy.layout.LazyLayoutPrefetchState;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.runtime.snapshots.SnapshotId_jvmKt;
import java.util.Collection;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class LazyGridState$$ExternalSyntheticLambda1 implements Function1 {
    public final /* synthetic */ int $r8$classId = 1;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ int f$1;

    public /* synthetic */ LazyGridState$$ExternalSyntheticLambda1(int i, Collection collection) {
        this.f$1 = i;
        this.f$0 = collection;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        Object obj2 = this.f$0;
        int i2 = this.f$1;
        switch (i) {
            case 0:
                LazyLayoutPrefetchState.NestedPrefetchScopeImpl nestedPrefetchScopeImpl = (LazyLayoutPrefetchState.NestedPrefetchScopeImpl) obj;
                DefaultLazyListPrefetchStrategy defaultLazyListPrefetchStrategy = ((LazyGridState) obj2).prefetchStrategy;
                Snapshot currentThreadSnapshot = SnapshotId_jvmKt.getCurrentThreadSnapshot();
                SnapshotId_jvmKt.restoreNonObservable(currentThreadSnapshot, SnapshotId_jvmKt.makeCurrentNonObservable(currentThreadSnapshot), currentThreadSnapshot != null ? currentThreadSnapshot.getReadObserver() : null);
                defaultLazyListPrefetchStrategy.getClass();
                int i3 = nestedPrefetchScopeImpl.nestedPrefetchItemCount;
                if (i3 == -1) {
                    i3 = 2;
                }
                for (int i4 = 0; i4 < i3; i4++) {
                    nestedPrefetchScopeImpl.schedulePrecomposition(i2 + i4);
                }
                return Unit.INSTANCE;
            default:
                return Boolean.valueOf(((List) obj).addAll(i2, (Collection) obj2));
        }
    }

    public /* synthetic */ LazyGridState$$ExternalSyntheticLambda1(LazyGridState lazyGridState, int i) {
        this.f$0 = lazyGridState;
        this.f$1 = i;
    }
}
