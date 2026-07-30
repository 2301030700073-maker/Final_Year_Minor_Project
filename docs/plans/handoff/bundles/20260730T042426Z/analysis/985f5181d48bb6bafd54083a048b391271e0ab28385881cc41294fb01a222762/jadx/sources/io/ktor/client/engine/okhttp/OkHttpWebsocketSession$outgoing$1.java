package io.ktor.client.engine.okhttp;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.channels.ActorScope;
import okhttp3.Request;

/* compiled from: OkHttpWebsocketSession.kt */
/* loaded from: classes.dex */
final class OkHttpWebsocketSession$outgoing$1 extends SuspendLambda implements Function2 {
    final /* synthetic */ Request $engineRequest;
    private /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    int label;
    final /* synthetic */ OkHttpWebsocketSession this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    OkHttpWebsocketSession$outgoing$1(OkHttpWebsocketSession okHttpWebsocketSession, Request request, Continuation continuation) {
        super(2, continuation);
        this.this$0 = okHttpWebsocketSession;
        this.$engineRequest = request;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        OkHttpWebsocketSession$outgoing$1 okHttpWebsocketSession$outgoing$1 = new OkHttpWebsocketSession$outgoing$1(this.this$0, this.$engineRequest, continuation);
        okHttpWebsocketSession$outgoing$1.L$0 = obj;
        return okHttpWebsocketSession$outgoing$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(ActorScope actorScope, Continuation continuation) {
        return ((OkHttpWebsocketSession$outgoing$1) create(actorScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x008b A[Catch: all -> 0x001e, TryCatch #4 {all -> 0x001e, blocks: (B:7:0x001a, B:8:0x0083, B:10:0x008b, B:12:0x0095, B:13:0x0074, B:17:0x00a9, B:19:0x00ad, B:20:0x00bc, B:22:0x00c0, B:25:0x00d0, B:33:0x00e3, B:34:0x00e8), top: B:6:0x001a }] */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0082 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00e9 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0080 -> B:8:0x0083). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r10) {
        /*
            Method dump skipped, instructions count: 272
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.client.engine.okhttp.OkHttpWebsocketSession$outgoing$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
