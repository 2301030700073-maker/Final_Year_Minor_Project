package androidx.compose.foundation.gestures;

import androidx.compose.ui.Alignment;
import androidx.compose.ui.MotionDurationScale;
import androidx.work.OperationKt;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ScrollableKt$DefaultScrollMotionDurationScale$1 implements MotionDurationScale {
    @Override // kotlin.coroutines.CoroutineContext
    public final Object fold(Object obj, Function2 function2) {
        return function2.invoke(obj, this);
    }

    @Override // kotlin.coroutines.CoroutineContext
    public final CoroutineContext.Element get(CoroutineContext.Key key) {
        return OperationKt.get(this, key);
    }

    @Override // kotlin.coroutines.CoroutineContext.Element
    public final CoroutineContext.Key getKey() {
        return Alignment.Companion.$$INSTANCE;
    }

    @Override // androidx.compose.ui.MotionDurationScale
    public final float getScaleFactor() {
        return 1.0f;
    }

    @Override // kotlin.coroutines.CoroutineContext
    public final CoroutineContext minusKey(CoroutineContext.Key key) {
        return OperationKt.minusKey(this, key);
    }

    @Override // kotlin.coroutines.CoroutineContext
    public final CoroutineContext plus(CoroutineContext coroutineContext) {
        return OperationKt.plus(this, coroutineContext);
    }
}
