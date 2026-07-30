package com.braze.requests.framework;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* loaded from: classes2.dex */
public final class d extends SuspendLambda implements Function2 {

    /* renamed from: a, reason: collision with root package name */
    public int f193a;
    public /* synthetic */ Object b;
    public final /* synthetic */ g c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(g gVar, Continuation continuation) {
        super(2, continuation);
        this.c = gVar;
    }

    public static final String a() {
        return "A maximum of 5 invalid api key errors reached. Device data will remain unaffected, but future requests will not be made.";
    }

    public static final String b() {
        return "Caught exception during request sweep";
    }

    public static final String c() {
        return "Request sweeper job has finished.";
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        d dVar = new d(this.c, continuation);
        dVar.b = obj;
        return dVar;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        d dVar = new d(this.c, (Continuation) obj2);
        dVar.b = (CoroutineScope) obj;
        return dVar.invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0085  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x00b1 -> B:6:0x002e). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r14) {
        /*
            r13 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r13.f193a
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L26
            if (r1 == r3) goto L1e
            if (r1 != r2) goto L16
            java.lang.Object r1 = r13.b
            kotlinx.coroutines.CoroutineScope r1 = (kotlinx.coroutines.CoroutineScope) r1
            kotlin.ResultKt.throwOnFailure(r14)
            goto L2e
        L16:
            java.lang.IllegalStateException r14 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r14.<init>(r0)
            throw r14
        L1e:
            java.lang.Object r1 = r13.b
            kotlinx.coroutines.CoroutineScope r1 = (kotlinx.coroutines.CoroutineScope) r1
            kotlin.ResultKt.throwOnFailure(r14)
            goto L7a
        L26:
            kotlin.ResultKt.throwOnFailure(r14)
            java.lang.Object r14 = r13.b
            r1 = r14
            kotlinx.coroutines.CoroutineScope r1 = (kotlinx.coroutines.CoroutineScope) r1
        L2e:
            boolean r14 = kotlinx.coroutines.CoroutineScopeKt.isActive(r1)
            if (r14 == 0) goto Lb4
            com.braze.requests.framework.g r14 = r13.c
            java.util.concurrent.atomic.AtomicInteger r14 = r14.k
            int r14 = r14.get()
            r4 = 5
            if (r14 < r4) goto L53
            com.braze.support.BrazeLogger r5 = com.braze.support.BrazeLogger.INSTANCE
            java.lang.String r6 = com.braze.requests.framework.g.n
            com.braze.support.BrazeLogger$Priority r7 = com.braze.support.BrazeLogger.Priority.I
            com.braze.requests.framework.d$$ExternalSyntheticLambda0 r10 = new com.braze.requests.framework.d$$ExternalSyntheticLambda0
            r10.<init>()
            r11 = 12
            r12 = 0
            r8 = 0
            r9 = 0
            com.braze.support.BrazeLogger.brazelog$default(r5, r6, r7, r8, r9, r10, r11, r12)
            goto Lb4
        L53:
            com.braze.requests.framework.g r14 = r13.c     // Catch: java.lang.Exception -> L59
            com.braze.requests.framework.g.a(r14)     // Catch: java.lang.Exception -> L59
            goto L7a
        L59:
            r14 = move-exception
            r7 = r14
            com.braze.support.BrazeLogger r4 = com.braze.support.BrazeLogger.INSTANCE
            java.lang.String r5 = com.braze.requests.framework.g.n
            com.braze.support.BrazeLogger$Priority r6 = com.braze.support.BrazeLogger.Priority.E
            com.braze.requests.framework.d$$ExternalSyntheticLambda1 r9 = new com.braze.requests.framework.d$$ExternalSyntheticLambda1
            r9.<init>()
            r10 = 8
            r11 = 0
            r8 = 0
            com.braze.support.BrazeLogger.brazelog$default(r4, r5, r6, r7, r8, r9, r10, r11)
            long r4 = com.braze.requests.framework.g.p
            r13.b = r1
            r13.f193a = r3
            java.lang.Object r14 = kotlinx.coroutines.DelayKt.delay(r4, r13)
            if (r14 != r0) goto L7a
            return r0
        L7a:
            com.braze.requests.framework.g r14 = r13.c
            java.util.LinkedHashMap r14 = r14.e
            boolean r4 = r14.isEmpty()
            if (r4 == 0) goto L85
            goto Lb4
        L85:
            java.util.Set r14 = r14.entrySet()
            java.util.Iterator r14 = r14.iterator()
        L8d:
            boolean r4 = r14.hasNext()
            if (r4 == 0) goto Lb4
            java.lang.Object r4 = r14.next()
            java.util.Map$Entry r4 = (java.util.Map.Entry) r4
            java.lang.Object r4 = r4.getValue()
            com.braze.requests.framework.b r4 = (com.braze.requests.framework.b) r4
            java.util.ArrayList r4 = r4.e
            boolean r4 = r4.isEmpty()
            if (r4 != 0) goto L8d
            r13.b = r1
            r13.f193a = r2
            r4 = 50
            java.lang.Object r14 = kotlinx.coroutines.DelayKt.delay(r4, r13)
            if (r14 != r0) goto L2e
            return r0
        Lb4:
            com.braze.support.BrazeLogger r4 = com.braze.support.BrazeLogger.INSTANCE
            java.lang.String r5 = com.braze.requests.framework.g.n
            com.braze.support.BrazeLogger$Priority r6 = com.braze.support.BrazeLogger.Priority.V
            com.braze.requests.framework.d$$ExternalSyntheticLambda2 r9 = new com.braze.requests.framework.d$$ExternalSyntheticLambda2
            r9.<init>()
            r10 = 12
            r11 = 0
            r7 = 0
            r8 = 0
            com.braze.support.BrazeLogger.brazelog$default(r4, r5, r6, r7, r8, r9, r10, r11)
            kotlin.Unit r14 = kotlin.Unit.INSTANCE
            return r14
        */
        throw new UnsupportedOperationException("Method not decompiled: com.braze.requests.framework.d.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
