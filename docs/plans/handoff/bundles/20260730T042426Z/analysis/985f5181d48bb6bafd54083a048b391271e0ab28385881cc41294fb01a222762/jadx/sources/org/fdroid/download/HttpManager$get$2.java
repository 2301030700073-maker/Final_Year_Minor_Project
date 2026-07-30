package org.fdroid.download;

import io.ktor.client.statement.HttpResponse;
import io.ktor.client.statement.HttpStatement;
import io.ktor.http.Url;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Ref$LongRef;

/* compiled from: HttpManager.kt */
/* loaded from: classes2.dex */
final class HttpManager$get$2 extends SuspendLambda implements Function3 {
    final /* synthetic */ BytesReceiver $receiver;
    final /* synthetic */ DownloadRequest $request;
    final /* synthetic */ Ref$LongRef $skipBytes;
    /* synthetic */ Object L$0;
    /* synthetic */ Object L$1;
    int label;
    final /* synthetic */ HttpManager this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    HttpManager$get$2(HttpManager httpManager, DownloadRequest downloadRequest, Ref$LongRef ref$LongRef, BytesReceiver bytesReceiver, Continuation continuation) {
        super(3, continuation);
        this.this$0 = httpManager;
        this.$request = downloadRequest;
        this.$skipBytes = ref$LongRef;
        this.$receiver = bytesReceiver;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Mirror mirror, Url url, Continuation continuation) {
        HttpManager$get$2 httpManager$get$2 = new HttpManager$get$2(this.this$0, this.$request, this.$skipBytes, this.$receiver, continuation);
        httpManager$get$2.L$0 = mirror;
        httpManager$get$2.L$1 = url;
        return httpManager$get$2.invokeSuspend(Unit.INSTANCE);
    }

    /* compiled from: HttpManager.kt */
    /* renamed from: org.fdroid.download.HttpManager$get$2$1, reason: invalid class name */
    static final class AnonymousClass1 extends SuspendLambda implements Function2 {
        final /* synthetic */ BytesReceiver $receiver;
        final /* synthetic */ Ref$LongRef $skipBytes;
        /* synthetic */ Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(Ref$LongRef ref$LongRef, BytesReceiver bytesReceiver, Continuation continuation) {
            super(2, continuation);
            this.$skipBytes = ref$LongRef;
            this.$receiver = bytesReceiver;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$skipBytes, this.$receiver, continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(HttpResponse httpResponse, Continuation continuation) {
            return ((AnonymousClass1) create(httpResponse, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x00bc  */
        /* JADX WARN: Removed duplicated region for block: B:15:0x00e2  */
        /* JADX WARN: Removed duplicated region for block: B:18:0x009e  */
        /* JADX WARN: Removed duplicated region for block: B:22:0x00e4  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x00d4 -> B:7:0x00d7). Please report as a decompilation issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r15) {
            /*
                Method dump skipped, instructions count: 239
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.fdroid.download.HttpManager$get$2.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            Mirror mirror = (Mirror) this.L$0;
            Url url = (Url) this.L$1;
            HttpManager httpManager = this.this$0;
            DownloadRequest downloadRequest = this.$request;
            long j = this.$skipBytes.element;
            this.L$0 = null;
            this.label = 1;
            obj = httpManager.getHttpStatement(downloadRequest, mirror, url, j, this);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                return Unit.INSTANCE;
            }
            ResultKt.throwOnFailure(obj);
        }
        AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$skipBytes, this.$receiver, null);
        this.label = 2;
        if (((HttpStatement) obj).execute(anonymousClass1, this) == coroutine_suspended) {
            return coroutine_suspended;
        }
        return Unit.INSTANCE;
    }
}
