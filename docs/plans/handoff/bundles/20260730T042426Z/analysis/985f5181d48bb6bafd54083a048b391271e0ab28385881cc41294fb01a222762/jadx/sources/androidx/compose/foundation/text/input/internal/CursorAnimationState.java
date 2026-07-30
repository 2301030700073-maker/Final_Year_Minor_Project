package androidx.compose.foundation.text.input.internal;

import androidx.compose.runtime.MutableFloatState;
import androidx.compose.runtime.PrimitiveSnapshotStateKt;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlinx.coroutines.CoroutineScopeKt;

/* compiled from: CursorAnimationState.kt */
/* loaded from: classes.dex */
public final class CursorAnimationState {
    private AtomicReference animationJob = new AtomicReference(null);
    private final MutableFloatState cursorAlpha$delegate = PrimitiveSnapshotStateKt.mutableFloatStateOf(0.0f);

    /* JADX INFO: Access modifiers changed from: private */
    public final void setCursorAlpha(float f) {
        this.cursorAlpha$delegate.setFloatValue(f);
    }

    public final float getCursorAlpha() {
        return this.cursorAlpha$delegate.getFloatValue();
    }

    public final Object snapToVisibleAndAnimate(Continuation continuation) {
        Object coroutineScope = CoroutineScopeKt.coroutineScope(new CursorAnimationState$snapToVisibleAndAnimate$2(this, null), continuation);
        return coroutineScope == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? coroutineScope : Unit.INSTANCE;
    }
}
