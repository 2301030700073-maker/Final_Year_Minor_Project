package androidx.compose.foundation.gestures;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* compiled from: Scrollable.kt */
/* loaded from: classes.dex */
final class ScrollableKt$semanticsScrollBy$1 extends ContinuationImpl {
    Object L$0;
    Object L$1;
    int label;
    /* synthetic */ Object result;

    ScrollableKt$semanticsScrollBy$1(Continuation continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object m218semanticsScrollByd4ec7I;
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        m218semanticsScrollByd4ec7I = ScrollableKt.m218semanticsScrollByd4ec7I(null, 0L, this);
        return m218semanticsScrollByd4ec7I;
    }
}
