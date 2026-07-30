package androidx.compose.ui.platform;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* compiled from: PlatformTextInputModifierNode.kt */
/* loaded from: classes.dex */
final class PlatformTextInputModifierNodeKt$establishTextInputSession$1 extends ContinuationImpl {
    int label;
    /* synthetic */ Object result;

    PlatformTextInputModifierNodeKt$establishTextInputSession$1(Continuation continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return PlatformTextInputModifierNodeKt.establishTextInputSession(null, null, this);
    }
}
