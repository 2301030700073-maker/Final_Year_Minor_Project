package io.ktor.client.plugins;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* compiled from: HttpCallValidator.kt */
/* loaded from: classes.dex */
final class HttpCallValidator$validateResponse$1 extends ContinuationImpl {
    Object L$0;
    Object L$1;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ HttpCallValidator this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    HttpCallValidator$validateResponse$1(HttpCallValidator httpCallValidator, Continuation continuation) {
        super(continuation);
        this.this$0 = httpCallValidator;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object validateResponse;
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        validateResponse = this.this$0.validateResponse(null, this);
        return validateResponse;
    }
}
