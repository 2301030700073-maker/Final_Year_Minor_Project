package androidx.compose.foundation.lazy.layout;

import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;

/* compiled from: LazyLayoutPrefetchState.kt */
/* loaded from: classes.dex */
public final class LazyLayoutPrefetchState {
    private final Function1 onNestedPrefetch;
    private PrefetchHandleProvider prefetchHandleProvider;
    private final PrefetchMetrics prefetchMetrics = new PrefetchMetrics();
    private final PrefetchScheduler prefetchScheduler;

    /* compiled from: LazyLayoutPrefetchState.kt */
    public interface PrefetchHandle {
        void cancel();

        void markAsUrgent();
    }

    public LazyLayoutPrefetchState(PrefetchScheduler prefetchScheduler, Function1 function1) {
        this.prefetchScheduler = prefetchScheduler;
        this.onNestedPrefetch = function1;
    }

    public final PrefetchScheduler getPrefetchScheduler$foundation_release() {
        return this.prefetchScheduler;
    }

    public final PrefetchHandleProvider getPrefetchHandleProvider$foundation_release() {
        return this.prefetchHandleProvider;
    }

    public final void setPrefetchHandleProvider$foundation_release(PrefetchHandleProvider prefetchHandleProvider) {
        this.prefetchHandleProvider = prefetchHandleProvider;
    }

    /* renamed from: schedulePrefetch-0kLqBqw, reason: not valid java name */
    public final PrefetchHandle m353schedulePrefetch0kLqBqw(int i, long j) {
        PrefetchHandle m360schedulePrefetchVKLhPVY;
        PrefetchHandleProvider prefetchHandleProvider = this.prefetchHandleProvider;
        return (prefetchHandleProvider == null || (m360schedulePrefetchVKLhPVY = prefetchHandleProvider.m360schedulePrefetchVKLhPVY(i, j, this.prefetchMetrics)) == null) ? DummyHandle.INSTANCE : m360schedulePrefetchVKLhPVY;
    }

    public final List collectNestedPrefetchRequests$foundation_release() {
        Function1 function1 = this.onNestedPrefetch;
        if (function1 == null) {
            return CollectionsKt.emptyList();
        }
        NestedPrefetchScopeImpl nestedPrefetchScopeImpl = new NestedPrefetchScopeImpl();
        function1.invoke(nestedPrefetchScopeImpl);
        return nestedPrefetchScopeImpl.getRequests();
    }

    /* compiled from: LazyLayoutPrefetchState.kt */
    private final class NestedPrefetchScopeImpl implements NestedPrefetchScope {
        private final List _requests = new ArrayList();

        public NestedPrefetchScopeImpl() {
        }

        public final List getRequests() {
            return this._requests;
        }

        @Override // androidx.compose.foundation.lazy.layout.NestedPrefetchScope
        public void schedulePrefetch(int i) {
            long j;
            j = LazyLayoutPrefetchStateKt.ZeroConstraints;
            m354schedulePrefetch0kLqBqw(i, j);
        }

        /* renamed from: schedulePrefetch-0kLqBqw, reason: not valid java name */
        public void m354schedulePrefetch0kLqBqw(int i, long j) {
            PrefetchHandleProvider prefetchHandleProvider$foundation_release = LazyLayoutPrefetchState.this.getPrefetchHandleProvider$foundation_release();
            if (prefetchHandleProvider$foundation_release == null) {
                return;
            }
            this._requests.add(prefetchHandleProvider$foundation_release.m359createNestedPrefetchRequestVKLhPVY(i, j, LazyLayoutPrefetchState.this.prefetchMetrics));
        }
    }
}
