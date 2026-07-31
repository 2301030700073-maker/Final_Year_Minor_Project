package org.jetbrains.compose.resources;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class AsyncCache$getOrLoad$2 extends SuspendLambda implements Function2 {
    final /* synthetic */ Object $key;
    final /* synthetic */ Function1 $load;
    int I$0;
    private /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    Object L$4;
    int label;
    final /* synthetic */ AsyncCache this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AsyncCache$getOrLoad$2(AsyncCache asyncCache, Object obj, Function1 function1, Continuation continuation) {
        super(2, continuation);
        this.this$0 = asyncCache;
        this.$key = obj;
        this.$load = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        AsyncCache$getOrLoad$2 asyncCache$getOrLoad$2 = new AsyncCache$getOrLoad$2(this.this$0, this.$key, this.$load, continuation);
        asyncCache$getOrLoad$2.L$0 = obj;
        return asyncCache$getOrLoad$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((AsyncCache$getOrLoad$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0063, code lost:
    
        if (r9 != false) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x004f, code lost:
    
        if (r8.lock(r10) == r5) goto L21;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v5, types: [kotlinx.coroutines.Deferred] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r11) {
        /*
            r10 = this;
            java.lang.Object r0 = r10.L$0
            kotlinx.coroutines.CoroutineScope r0 = (kotlinx.coroutines.CoroutineScope) r0
            int r1 = r10.label
            r2 = 2
            r3 = 1
            r4 = 0
            kotlin.coroutines.intrinsics.CoroutineSingletons r5 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r1 == 0) goto L31
            if (r1 == r3) goto L1f
            if (r1 != r2) goto L19
            java.lang.Object r10 = r10.L$1
            kotlinx.coroutines.Deferred r10 = (kotlinx.coroutines.Deferred) r10
            kotlin.ResultKt.throwOnFailure(r11)
            return r11
        L19:
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1.m$2(r10)
            return r4
        L1f:
            java.lang.Object r1 = r10.L$4
            kotlin.jvm.functions.Function1 r1 = (kotlin.jvm.functions.Function1) r1
            java.lang.Object r6 = r10.L$3
            java.lang.Object r7 = r10.L$2
            org.jetbrains.compose.resources.AsyncCache r7 = (org.jetbrains.compose.resources.AsyncCache) r7
            java.lang.Object r8 = r10.L$1
            kotlinx.coroutines.sync.Mutex r8 = (kotlinx.coroutines.sync.Mutex) r8
            kotlin.ResultKt.throwOnFailure(r11)
            goto L52
        L31:
            kotlin.ResultKt.throwOnFailure(r11)
            org.jetbrains.compose.resources.AsyncCache r7 = r10.this$0
            kotlinx.coroutines.sync.MutexImpl r8 = r7.mutex
            java.lang.Object r6 = r10.$key
            kotlin.jvm.functions.Function1 r1 = r10.$load
            r10.L$0 = r0
            r10.L$1 = r8
            r10.L$2 = r7
            r10.L$3 = r6
            r10.L$4 = r1
            r11 = 0
            r10.I$0 = r11
            r10.label = r3
            java.lang.Object r11 = r8.lock(r10)
            if (r11 != r5) goto L52
            goto L88
        L52:
            java.util.LinkedHashMap r11 = r7.cache     // Catch: java.lang.Throwable -> L8a
            java.lang.Object r11 = r11.get(r6)     // Catch: java.lang.Throwable -> L8a
            kotlinx.coroutines.Deferred r11 = (kotlinx.coroutines.Deferred) r11     // Catch: java.lang.Throwable -> L8a
            if (r11 == 0) goto L65
            r9 = r11
            kotlinx.coroutines.JobSupport r9 = (kotlinx.coroutines.JobSupport) r9     // Catch: java.lang.Throwable -> L8a
            boolean r9 = r9.isCancelled()     // Catch: java.lang.Throwable -> L8a
            if (r9 == 0) goto L73
        L65:
            org.jetbrains.compose.resources.AsyncCache$getOrLoad$2$deferred$1$1 r11 = new org.jetbrains.compose.resources.AsyncCache$getOrLoad$2$deferred$1$1     // Catch: java.lang.Throwable -> L8a
            r11.<init>(r4, r1)     // Catch: java.lang.Throwable -> L8a
            kotlinx.coroutines.DeferredCoroutine r11 = kotlinx.coroutines.JobKt.async$default(r0, r4, r11, r3)     // Catch: java.lang.Throwable -> L8a
            java.util.LinkedHashMap r0 = r7.cache     // Catch: java.lang.Throwable -> L8a
            r0.put(r6, r11)     // Catch: java.lang.Throwable -> L8a
        L73:
            r8.unlock(r4)
            r10.L$0 = r4
            r10.L$1 = r4
            r10.L$2 = r4
            r10.L$3 = r4
            r10.L$4 = r4
            r10.label = r2
            java.lang.Object r10 = r11.await(r10)
            if (r10 != r5) goto L89
        L88:
            return r5
        L89:
            return r10
        L8a:
            r10 = move-exception
            r8.unlock(r4)
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jetbrains.compose.resources.AsyncCache$getOrLoad$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
