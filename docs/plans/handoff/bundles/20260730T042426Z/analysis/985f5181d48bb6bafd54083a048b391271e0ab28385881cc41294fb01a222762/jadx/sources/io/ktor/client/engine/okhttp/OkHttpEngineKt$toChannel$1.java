package io.ktor.client.engine.okhttp;

import io.ktor.client.request.HttpRequestData;
import io.ktor.utils.io.WriterScope;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import okio.BufferedSource;

/* compiled from: OkHttpEngine.kt */
/* loaded from: classes.dex */
final class OkHttpEngineKt$toChannel$1 extends SuspendLambda implements Function2 {
    final /* synthetic */ CoroutineContext $context;
    final /* synthetic */ HttpRequestData $requestData;
    final /* synthetic */ BufferedSource $this_toChannel;
    private /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    Object L$4;
    Object L$5;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    OkHttpEngineKt$toChannel$1(BufferedSource bufferedSource, CoroutineContext coroutineContext, HttpRequestData httpRequestData, Continuation continuation) {
        super(2, continuation);
        this.$this_toChannel = bufferedSource;
        this.$context = coroutineContext;
        this.$requestData = httpRequestData;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        OkHttpEngineKt$toChannel$1 okHttpEngineKt$toChannel$1 = new OkHttpEngineKt$toChannel$1(this.$this_toChannel, this.$context, this.$requestData, continuation);
        okHttpEngineKt$toChannel$1.L$0 = obj;
        return okHttpEngineKt$toChannel$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(WriterScope writerScope, Continuation continuation) {
        return ((OkHttpEngineKt$toChannel$1) create(writerScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:12:0x005a A[Catch: all -> 0x008f, TryCatch #3 {all -> 0x008f, blocks: (B:9:0x0087, B:10:0x0054, B:12:0x005a, B:14:0x0060, B:16:0x0064, B:20:0x0093), top: B:8:0x0087 }] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00b0  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00b6  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0097 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r5v5, types: [java.io.Closeable] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0084 -> B:8:0x0087). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r18) {
        /*
            r17 = this;
            r7 = r17
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r7.label
            r8 = 1
            r9 = 0
            if (r1 == 0) goto L3c
            if (r1 != r8) goto L34
            java.lang.Object r1 = r7.L$5
            kotlin.jvm.internal.Ref$IntRef r1 = (kotlin.jvm.internal.Ref$IntRef) r1
            java.lang.Object r2 = r7.L$4
            okio.BufferedSource r2 = (okio.BufferedSource) r2
            java.lang.Object r3 = r7.L$3
            io.ktor.client.request.HttpRequestData r3 = (io.ktor.client.request.HttpRequestData) r3
            java.lang.Object r4 = r7.L$2
            kotlin.coroutines.CoroutineContext r4 = (kotlin.coroutines.CoroutineContext) r4
            java.lang.Object r5 = r7.L$1
            java.io.Closeable r5 = (java.io.Closeable) r5
            java.lang.Object r6 = r7.L$0
            io.ktor.utils.io.WriterScope r6 = (io.ktor.utils.io.WriterScope) r6
            kotlin.ResultKt.throwOnFailure(r18)     // Catch: java.lang.Throwable -> L30
            r10 = r1
            r11 = r2
            r12 = r3
            r13 = r4
            r14 = r5
            r15 = r6
            goto L87
        L30:
            r0 = move-exception
            r1 = r0
            goto L9e
        L34:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r1 = "call to 'resume' before 'invoke' with coroutine"
            r0.<init>(r1)
            throw r0
        L3c:
            kotlin.ResultKt.throwOnFailure(r18)
            java.lang.Object r1 = r7.L$0
            io.ktor.utils.io.WriterScope r1 = (io.ktor.utils.io.WriterScope) r1
            okio.BufferedSource r5 = r7.$this_toChannel
            kotlin.coroutines.CoroutineContext r2 = r7.$context
            io.ktor.client.request.HttpRequestData r3 = r7.$requestData
            kotlin.jvm.internal.Ref$IntRef r4 = new kotlin.jvm.internal.Ref$IntRef     // Catch: java.lang.Throwable -> L30
            r4.<init>()     // Catch: java.lang.Throwable -> L30
            r15 = r1
            r13 = r2
            r12 = r3
            r10 = r4
            r11 = r5
            r14 = r11
        L54:
            boolean r1 = r11.isOpen()     // Catch: java.lang.Throwable -> L8f
            if (r1 == 0) goto L93
            boolean r1 = kotlinx.coroutines.JobKt.isActive(r13)     // Catch: java.lang.Throwable -> L8f
            if (r1 == 0) goto L93
            int r1 = r10.element     // Catch: java.lang.Throwable -> L8f
            if (r1 < 0) goto L93
            io.ktor.utils.io.ByteWriteChannel r1 = r15.getChannel()     // Catch: java.lang.Throwable -> L8f
            io.ktor.client.engine.okhttp.OkHttpEngineKt$toChannel$1$1$1 r3 = new io.ktor.client.engine.okhttp.OkHttpEngineKt$toChannel$1$1$1     // Catch: java.lang.Throwable -> L8f
            r3.<init>()     // Catch: java.lang.Throwable -> L8f
            r7.L$0 = r15     // Catch: java.lang.Throwable -> L8f
            r7.L$1 = r14     // Catch: java.lang.Throwable -> L8f
            r7.L$2 = r13     // Catch: java.lang.Throwable -> L8f
            r7.L$3 = r12     // Catch: java.lang.Throwable -> L8f
            r7.L$4 = r11     // Catch: java.lang.Throwable -> L8f
            r7.L$5 = r10     // Catch: java.lang.Throwable -> L8f
            r7.label = r8     // Catch: java.lang.Throwable -> L8f
            r2 = 0
            r5 = 1
            r6 = 0
            r4 = r17
            java.lang.Object r1 = io.ktor.utils.io.ByteWriteChannel.DefaultImpls.write$default(r1, r2, r3, r4, r5, r6)     // Catch: java.lang.Throwable -> L8f
            if (r1 != r0) goto L87
            return r0
        L87:
            io.ktor.utils.io.ByteWriteChannel r1 = r15.getChannel()     // Catch: java.lang.Throwable -> L8f
            r1.flush()     // Catch: java.lang.Throwable -> L8f
            goto L54
        L8f:
            r0 = move-exception
            r1 = r0
            r5 = r14
            goto L9e
        L93:
            kotlin.Unit r1 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L8f
            if (r14 == 0) goto Lae
            r14.close()     // Catch: java.lang.Throwable -> L9b
            goto Lae
        L9b:
            r0 = move-exception
            r9 = r0
            goto Lae
        L9e:
            if (r5 == 0) goto La9
            r5.close()     // Catch: java.lang.Throwable -> La4
            goto La9
        La4:
            r0 = move-exception
            r2 = r0
            kotlin.ExceptionsKt.addSuppressed(r1, r2)
        La9:
            r16 = r9
            r9 = r1
            r1 = r16
        Lae:
            if (r9 != 0) goto Lb6
            kotlin.jvm.internal.Intrinsics.checkNotNull(r1)
            kotlin.Unit r0 = kotlin.Unit.INSTANCE
            return r0
        Lb6:
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.client.engine.okhttp.OkHttpEngineKt$toChannel$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
