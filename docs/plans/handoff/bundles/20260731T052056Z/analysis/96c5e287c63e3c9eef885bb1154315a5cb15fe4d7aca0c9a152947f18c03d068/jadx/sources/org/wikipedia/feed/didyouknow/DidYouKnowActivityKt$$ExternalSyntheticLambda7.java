package org.wikipedia.feed.didyouknow;

import androidx.compose.foundation.lazy.DefaultLazyListPrefetchStrategy;
import androidx.compose.foundation.lazy.grid.LazyGridState;
import androidx.compose.foundation.lazy.layout.LazyLayoutPrefetchState;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.runtime.snapshots.SnapshotId_jvmKt;
import java.util.Collection;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import org.wikipedia.dataclient.page.PageSummary;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class DidYouKnowActivityKt$$ExternalSyntheticLambda7 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ int f$1;

    public /* synthetic */ DidYouKnowActivityKt$$ExternalSyntheticLambda7(int i, Collection collection) {
        this.$r8$classId = 2;
        this.f$1 = i;
        this.f$0 = collection;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Object obj2 = this.f$0;
        int i2 = this.f$1;
        switch (i) {
            case 0:
                PageSummary pageSummary = (PageSummary) obj;
                pageSummary.getClass();
                ((Function3) obj2).invoke(pageSummary, 50, "dyk-" + i2);
                return unit;
            case 1:
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
                return unit;
            default:
                return Boolean.valueOf(((List) obj).addAll(i2, (Collection) obj2));
        }
    }

    public /* synthetic */ DidYouKnowActivityKt$$ExternalSyntheticLambda7(int i, int i2, Object obj) {
        this.$r8$classId = i2;
        this.f$0 = obj;
        this.f$1 = i;
    }
}
