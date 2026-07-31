package androidx.compose.foundation.lazy;

import androidx.compose.foundation.gestures.ScrollScope;
import androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimator;
import androidx.compose.runtime.ParcelableSnapshotMutableIntState;
import androidx.compose.ui.node.LayoutNode;
import coil3.util.AndroidSystemCallbacks;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class LazyListState$scrollToItem$2 extends SuspendLambda implements Function2 {
    final /* synthetic */ int $index;
    final /* synthetic */ int $scrollOffset;
    int label;
    final /* synthetic */ LazyListState this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LazyListState$scrollToItem$2(LazyListState lazyListState, int i, int i2, Continuation continuation) {
        super(2, continuation);
        this.this$0 = lazyListState;
        this.$index = i;
        this.$scrollOffset = i2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new LazyListState$scrollToItem$2(this.this$0, this.$index, this.$scrollOffset, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        LazyListState$scrollToItem$2 lazyListState$scrollToItem$2 = (LazyListState$scrollToItem$2) create((ScrollScope) obj, (Continuation) obj2);
        Unit unit = Unit.INSTANCE;
        lazyListState$scrollToItem$2.invokeSuspend(unit);
        return unit;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        if (this.label != 0) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$2("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.throwOnFailure(obj);
        LazyListState lazyListState = this.this$0;
        int i = this.$index;
        int i2 = this.$scrollOffset;
        AndroidSystemCallbacks androidSystemCallbacks = lazyListState.scrollPosition;
        if (((ParcelableSnapshotMutableIntState) androidSystemCallbacks.imageLoader).getIntValue() != i || ((ParcelableSnapshotMutableIntState) androidSystemCallbacks.activityCallbacks).getIntValue() != i2) {
            LazyLayoutItemAnimator lazyLayoutItemAnimator = lazyListState.itemAnimator;
            lazyLayoutItemAnimator.releaseAnimations();
            lazyLayoutItemAnimator.keyIndexMap = null;
            DefaultLazyListPrefetchStrategy defaultLazyListPrefetchStrategy = lazyListState.prefetchStrategy;
        }
        androidSystemCallbacks.update(i, i2);
        androidSystemCallbacks.componentCallbacks = null;
        LayoutNode layoutNode = lazyListState.remeasurement;
        if (layoutNode != null) {
            layoutNode.forceRemeasure();
        }
        return Unit.INSTANCE;
    }
}
