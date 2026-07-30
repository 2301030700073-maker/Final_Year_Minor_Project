package androidx.compose.foundation.text.selection;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* compiled from: SelectionGestures.kt */
/* loaded from: classes.dex */
final class SelectionGesturesKt$mouseSelection$1 extends ContinuationImpl {
    Object L$0;
    Object L$1;
    int label;
    /* synthetic */ Object result;

    SelectionGesturesKt$mouseSelection$1(Continuation continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object mouseSelection;
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        mouseSelection = SelectionGesturesKt.mouseSelection(null, null, null, null, this);
        return mouseSelection;
    }
}
