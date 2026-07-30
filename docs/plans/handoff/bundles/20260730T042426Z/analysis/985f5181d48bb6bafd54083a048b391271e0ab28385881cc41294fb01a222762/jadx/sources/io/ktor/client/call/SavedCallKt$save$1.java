package io.ktor.client.call;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* compiled from: SavedCall.kt */
/* loaded from: classes.dex */
final class SavedCallKt$save$1 extends ContinuationImpl {
    Object L$0;
    int label;
    /* synthetic */ Object result;

    SavedCallKt$save$1(Continuation continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return SavedCallKt.save(null, this);
    }
}
