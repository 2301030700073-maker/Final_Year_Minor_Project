package androidx.compose.foundation.lazy;

import androidx.compose.foundation.lazy.layout.NestedPrefetchScope;
import androidx.compose.foundation.lazy.layout.PrefetchScheduler;

/* compiled from: LazyListPrefetchStrategy.kt */
/* loaded from: classes.dex */
public interface LazyListPrefetchStrategy {
    PrefetchScheduler getPrefetchScheduler();

    void onNestedPrefetch(NestedPrefetchScope nestedPrefetchScope, int i);

    void onScroll(LazyListPrefetchScope lazyListPrefetchScope, float f, LazyListLayoutInfo lazyListLayoutInfo);

    void onVisibleItemsUpdated(LazyListPrefetchScope lazyListPrefetchScope, LazyListLayoutInfo lazyListLayoutInfo);

    /* compiled from: LazyListPrefetchStrategy.kt */
    /* renamed from: androidx.compose.foundation.lazy.LazyListPrefetchStrategy$-CC, reason: invalid class name */
    public abstract /* synthetic */ class CC {
        public static PrefetchScheduler $default$getPrefetchScheduler(LazyListPrefetchStrategy lazyListPrefetchStrategy) {
            return null;
        }
    }
}
