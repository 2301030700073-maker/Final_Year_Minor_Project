package androidx.compose.foundation.lazy.layout;

import androidx.compose.runtime.Latch;
import androidx.compose.ui.unit.Constraints;
import com.caverock.androidsvg.SVG;
import java.util.ArrayList;
import kotlin.jvm.functions.Function1;
import org.wikipedia.util.FileUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LazyLayoutPrefetchState {
    public int lastNumberOfNestedPrefetchItems;
    public final Function1 onNestedPrefetch;
    public Latch prefetchHandleProvider;
    public final SVG prefetchMetrics = new SVG(3);
    public int realizedNestedPrefetchCount = -1;
    public int idealNestedPrefetchCount = -1;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class NestedPrefetchScopeImpl {
        public final ArrayList _requests = new ArrayList();
        public final int nestedPrefetchItemCount;

        public NestedPrefetchScopeImpl(int i) {
            this.nestedPrefetchItemCount = i;
        }

        public final void schedulePrecomposition(int i) {
            LazyLayoutPrefetchState lazyLayoutPrefetchState = LazyLayoutPrefetchState.this;
            Latch latch = lazyLayoutPrefetchState.prefetchHandleProvider;
            if (latch == null) {
                return;
            }
            this._requests.add(new PrefetchHandleProvider$HandleAndRequestImpl(latch, i, lazyLayoutPrefetchState.prefetchMetrics, null));
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface PrefetchHandle {
        void cancel();

        void markAsUrgent();
    }

    public LazyLayoutPrefetchState(Function1 function1) {
        this.onNestedPrefetch = function1;
    }

    /* renamed from: schedulePrecompositionAndPremeasure-_EkL_-Y$foundation, reason: not valid java name */
    public final PrefetchHandle m168schedulePrecompositionAndPremeasure_EkL_Y$foundation(int i, long j, boolean z, Function1 function1) {
        Latch latch = this.prefetchHandleProvider;
        if (latch == null) {
            return DummyHandle.INSTANCE;
        }
        PrefetchScheduler prefetchScheduler = (PrefetchScheduler) latch.spareList;
        boolean z2 = prefetchScheduler instanceof AndroidPrefetchScheduler;
        PrefetchHandleProvider$HandleAndRequestImpl prefetchHandleProvider$HandleAndRequestImpl = new PrefetchHandleProvider$HandleAndRequestImpl(latch, i, this.prefetchMetrics, function1);
        prefetchHandleProvider$HandleAndRequestImpl.premeasureConstraints = new Constraints(j);
        if (!z2) {
            prefetchScheduler.schedulePrefetch(prefetchHandleProvider$HandleAndRequestImpl);
        } else if (z) {
            AndroidPrefetchScheduler androidPrefetchScheduler = (AndroidPrefetchScheduler) prefetchScheduler;
            androidPrefetchScheduler.prefetchRequests.add(new PriorityTask(1, prefetchHandleProvider$HandleAndRequestImpl));
            if (!androidPrefetchScheduler.prefetchScheduled) {
                androidPrefetchScheduler.prefetchScheduled = true;
                androidPrefetchScheduler.view.post(androidPrefetchScheduler);
            }
        } else {
            AndroidPrefetchScheduler androidPrefetchScheduler2 = (AndroidPrefetchScheduler) prefetchScheduler;
            androidPrefetchScheduler2.prefetchRequests.add(new PriorityTask(0, prefetchHandleProvider$HandleAndRequestImpl));
            if (!androidPrefetchScheduler2.prefetchScheduled) {
                androidPrefetchScheduler2.prefetchScheduled = true;
                androidPrefetchScheduler2.view.post(androidPrefetchScheduler2);
            }
        }
        FileUtil.traceValue("compose:lazy:schedule_prefetch:index", i);
        return prefetchHandleProvider$HandleAndRequestImpl;
    }
}
