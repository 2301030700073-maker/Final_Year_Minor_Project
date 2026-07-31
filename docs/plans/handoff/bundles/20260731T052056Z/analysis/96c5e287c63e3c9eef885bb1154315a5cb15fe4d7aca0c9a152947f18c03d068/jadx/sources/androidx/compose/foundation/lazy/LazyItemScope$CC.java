package androidx.compose.foundation.lazy;

import androidx.appcompat.widget.PopupMenu$1;
import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.foundation.lazy.layout.LazyLayoutPrefetchState;
import androidx.compose.foundation.text.BasicTextKt$$ExternalSyntheticLambda3;
import androidx.compose.material3.AppBarKt$$ExternalSyntheticLambda11;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.runtime.snapshots.SnapshotId_jvmKt;
import androidx.compose.ui.Modifier;
import coil3.network.HttpException;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* renamed from: androidx.compose.foundation.lazy.LazyItemScope$-CC, reason: invalid class name */
/* loaded from: classes.dex */
public abstract /* synthetic */ class LazyItemScope$CC {
    public static Modifier fillParentMaxWidth$default(LazyItemScopeImpl lazyItemScopeImpl) {
        return new ParentSizeElement(lazyItemScopeImpl.maxWidthState);
    }

    public static void item$default(LazyListIntervalContent lazyListIntervalContent, String str, ComposableLambdaImpl composableLambdaImpl, int i) {
        if ((i & 1) != 0) {
            str = null;
        }
        lazyListIntervalContent.intervals.addInterval(1, new LazyListInterval(str != null ? new AppBarKt$$ExternalSyntheticLambda11(8, str) : null, new BasicTextKt$$ExternalSyntheticLambda3(12), new ComposableLambdaImpl(new LazyListIntervalContent$$ExternalSyntheticLambda2(composableLambdaImpl, 0), true, -857469575)));
    }

    public static HttpException m(String str) {
        InlineClassHelperKt.throwIllegalArgumentExceptionForNullCheck(str);
        return new HttpException();
    }

    public static LazyLayoutPrefetchState.PrefetchHandle schedulePrefetch$default(PopupMenu$1 popupMenu$1, int i) {
        LazyListState lazyListState = (LazyListState) popupMenu$1.this$0;
        Snapshot currentThreadSnapshot = SnapshotId_jvmKt.getCurrentThreadSnapshot();
        Function1 readObserver = currentThreadSnapshot != null ? currentThreadSnapshot.getReadObserver() : null;
        Snapshot makeCurrentNonObservable = SnapshotId_jvmKt.makeCurrentNonObservable(currentThreadSnapshot);
        try {
            LazyListMeasureResult lazyListMeasureResult = (LazyListMeasureResult) lazyListState.layoutInfoState.getValue();
            SnapshotId_jvmKt.restoreNonObservable(currentThreadSnapshot, makeCurrentNonObservable, readObserver);
            return lazyListState.prefetchState.m168schedulePrecompositionAndPremeasure_EkL_Y$foundation(i, lazyListMeasureResult.childConstraints, lazyListState.executeRequestsInHighPriorityMode, new BasicTextKt$$ExternalSyntheticLambda3(i, lazyListMeasureResult));
        } catch (Throwable th) {
            SnapshotId_jvmKt.restoreNonObservable(currentThreadSnapshot, makeCurrentNonObservable, readObserver);
            throw th;
        }
    }
}
