package androidx.compose.ui.platform;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* compiled from: PlatformTextInputModifierNode.kt */
/* loaded from: classes.dex */
final class PlatformTextInputModifierNodeKt$interceptedTextInputSession$1 extends ContinuationImpl {
    int label;
    /* synthetic */ Object result;

    PlatformTextInputModifierNodeKt$interceptedTextInputSession$1(Continuation continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object interceptedTextInputSession;
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        interceptedTextInputSession = PlatformTextInputModifierNodeKt.interceptedTextInputSession(null, null, null, this);
        return interceptedTextInputSession;
    }
}
