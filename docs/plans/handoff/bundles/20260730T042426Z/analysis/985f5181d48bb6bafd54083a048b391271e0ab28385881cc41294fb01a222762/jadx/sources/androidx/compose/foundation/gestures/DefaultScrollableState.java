package androidx.compose.foundation.gestures;

import androidx.compose.foundation.MutatePriority;
import androidx.compose.foundation.MutatorMutex;
import androidx.compose.foundation.gestures.ScrollableState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScopeKt;

/* compiled from: ScrollableState.kt */
/* loaded from: classes.dex */
final class DefaultScrollableState implements ScrollableState {
    private final MutableState isLastScrollBackwardState;
    private final MutableState isLastScrollForwardState;
    private final MutableState isScrollingState;
    private final Function1 onDelta;
    private final ScrollScope scrollScope = new ScrollScope() { // from class: androidx.compose.foundation.gestures.DefaultScrollableState$scrollScope$1
        @Override // androidx.compose.foundation.gestures.ScrollScope
        public float scrollBy(float f) {
            MutableState mutableState;
            MutableState mutableState2;
            if (Float.isNaN(f)) {
                return 0.0f;
            }
            float floatValue = ((Number) DefaultScrollableState.this.getOnDelta().invoke(Float.valueOf(f))).floatValue();
            mutableState = DefaultScrollableState.this.isLastScrollForwardState;
            mutableState.setValue(Boolean.valueOf(floatValue > 0.0f));
            mutableState2 = DefaultScrollableState.this.isLastScrollBackwardState;
            mutableState2.setValue(Boolean.valueOf(floatValue < 0.0f));
            return floatValue;
        }
    };
    private final MutatorMutex scrollMutex = new MutatorMutex();

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public /* synthetic */ boolean getCanScrollBackward() {
        return ScrollableState.CC.$default$getCanScrollBackward(this);
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public /* synthetic */ boolean getCanScrollForward() {
        return ScrollableState.CC.$default$getCanScrollForward(this);
    }

    public DefaultScrollableState(Function1 function1) {
        this.onDelta = function1;
        Boolean bool = Boolean.FALSE;
        this.isScrollingState = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(bool, null, 2, null);
        this.isLastScrollForwardState = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(bool, null, 2, null);
        this.isLastScrollBackwardState = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(bool, null, 2, null);
    }

    public final Function1 getOnDelta() {
        return this.onDelta;
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public Object scroll(MutatePriority mutatePriority, Function2 function2, Continuation continuation) {
        Object coroutineScope = CoroutineScopeKt.coroutineScope(new DefaultScrollableState$scroll$2(this, mutatePriority, function2, null), continuation);
        return coroutineScope == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? coroutineScope : Unit.INSTANCE;
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public float dispatchRawDelta(float f) {
        return ((Number) this.onDelta.invoke(Float.valueOf(f))).floatValue();
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public boolean isScrollInProgress() {
        return ((Boolean) this.isScrollingState.getValue()).booleanValue();
    }
}
