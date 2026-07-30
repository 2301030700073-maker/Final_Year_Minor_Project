package org.fdroid.download;

import io.ktor.client.plugins.ResponseException;
import java.io.IOException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: HttpPoster.kt */
/* loaded from: classes2.dex */
final class HttpPoster$post$1 extends SuspendLambda implements Function2 {
    final /* synthetic */ String $json;
    int label;
    final /* synthetic */ HttpPoster this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    HttpPoster$post$1(HttpPoster httpPoster, String str, Continuation continuation) {
        super(2, continuation);
        this.this$0 = httpPoster;
        this.$json = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new HttpPoster$post$1(this.this$0, this.$json, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
        return ((HttpPoster$post$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        HttpManager httpManager;
        String str;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        try {
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                httpManager = this.this$0.httpManager;
                str = this.this$0.url;
                String str2 = this.$json;
                this.label = 1;
                if (HttpManager.post$default(httpManager, str, str2, null, this, 4, null) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        } catch (ResponseException e) {
            throw new IOException(e);
        }
    }
}
