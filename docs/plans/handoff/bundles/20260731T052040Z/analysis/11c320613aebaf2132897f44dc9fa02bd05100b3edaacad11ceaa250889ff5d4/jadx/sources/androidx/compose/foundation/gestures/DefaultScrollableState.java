package androidx.compose.foundation.gestures;

import androidx.compose.foundation.MutatePriority;
import androidx.compose.foundation.MutatorMutex;
import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.compose.runtime.Updater;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.JobKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class DefaultScrollableState implements ScrollableState {
    public final ParcelableSnapshotMutableState isLastScrollBackwardState;
    public final ParcelableSnapshotMutableState isLastScrollForwardState;
    public final ParcelableSnapshotMutableState isScrollingState;
    public final Function1 onDelta;
    public final DefaultScrollableState$scrollScope$1 scrollScope = new DefaultScrollableState$scrollScope$1(this);
    public final MutatorMutex scrollMutex = new MutatorMutex();

    public DefaultScrollableState(Function1 function1) {
        this.onDelta = function1;
        Boolean bool = Boolean.FALSE;
        this.isScrollingState = Updater.mutableStateOf$default(bool);
        this.isLastScrollForwardState = Updater.mutableStateOf$default(bool);
        this.isLastScrollBackwardState = Updater.mutableStateOf$default(bool);
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public final float dispatchRawDelta(float f) {
        return ((Number) this.onDelta.invoke(Float.valueOf(f))).floatValue();
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public final /* synthetic */ boolean getCanScrollBackward() {
        return true;
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public final /* synthetic */ boolean getCanScrollForward() {
        return true;
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public final boolean isScrollInProgress() {
        return ((Boolean) this.isScrollingState.getValue()).booleanValue();
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public final Object scroll(MutatePriority mutatePriority, Function2 function2, ContinuationImpl continuationImpl) {
        Object coroutineScope = JobKt.coroutineScope(new DefaultScrollableState$scroll$2(this, mutatePriority, function2, null), continuationImpl);
        return coroutineScope == CoroutineSingletons.COROUTINE_SUSPENDED ? coroutineScope : Unit.INSTANCE;
    }
}
