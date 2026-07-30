package androidx.compose.foundation.contextmenu;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* compiled from: ContextMenuGestures.android.kt */
/* loaded from: classes.dex */
final class ContextMenuGestures_androidKt$awaitFirstRightClickDown$1 extends ContinuationImpl {
    Object L$0;
    int label;
    /* synthetic */ Object result;

    ContextMenuGestures_androidKt$awaitFirstRightClickDown$1(Continuation continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object awaitFirstRightClickDown;
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        awaitFirstRightClickDown = ContextMenuGestures_androidKt.awaitFirstRightClickDown(null, this);
        return awaitFirstRightClickDown;
    }
}
