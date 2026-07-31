package org.wikipedia.savedpages;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.internal.connection.RealCall;
import okio.BlackholeSink;
import org.wikipedia.dataclient.okhttp.OkHttpConnectionFactory;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SavedPageSyncService$reqSaveUrl$2 extends SuspendLambda implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Request $request;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ SavedPageSyncService$reqSaveUrl$2(Request request, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.$request = request;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        Request request = this.$request;
        switch (i) {
            case 0:
                return new SavedPageSyncService$reqSaveUrl$2(request, continuation, 0);
            default:
                return new SavedPageSyncService$reqSaveUrl$2(request, continuation, 1);
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        CoroutineScope coroutineScope = (CoroutineScope) obj;
        Continuation continuation = (Continuation) obj2;
        switch (i) {
        }
        return ((SavedPageSyncService$reqSaveUrl$2) create(coroutineScope, continuation)).invokeSuspend(unit);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i = this.$r8$classId;
        Request request = this.$request;
        switch (i) {
            case 0:
                ResultKt.throwOnFailure(obj);
                OkHttpClient okHttpClient = OkHttpConnectionFactory.client;
                okHttpClient.getClass();
                Response execute = new RealCall(okHttpClient, request).execute();
                try {
                    Long l = new Long(execute.body.source().readAll(new BlackholeSink(1)));
                    execute.close();
                    return l;
                } finally {
                }
            default:
                ResultKt.throwOnFailure(obj);
                OkHttpClient okHttpClient2 = OkHttpConnectionFactory.client;
                okHttpClient2.getClass();
                return new RealCall(okHttpClient2, request).execute();
        }
    }
}
