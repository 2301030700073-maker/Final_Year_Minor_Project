package com.braze.dispatch;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* loaded from: classes2.dex */
public final class e extends SuspendLambda implements Function2 {

    /* renamed from: a, reason: collision with root package name */
    public long f36a;
    public int b;
    public /* synthetic */ Object c;
    public final /* synthetic */ f d;
    public final /* synthetic */ long e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(f fVar, long j, Continuation continuation) {
        super(2, continuation);
        this.d = fVar;
        this.e = j;
    }

    public static final String a() {
        return "Requesting data flush from automatic sync policy";
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        e eVar = new e(this.d, this.e, continuation);
        eVar.c = obj;
        return eVar;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((e) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0059  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x0063 -> B:6:0x0066). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r14) {
        /*
            r13 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r13.b
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L2a
            if (r1 == r3) goto L20
            if (r1 != r2) goto L18
            long r3 = r13.f36a
            java.lang.Object r1 = r13.c
            kotlinx.coroutines.CoroutineScope r1 = (kotlinx.coroutines.CoroutineScope) r1
            kotlin.ResultKt.throwOnFailure(r14)
            goto L66
        L18:
            java.lang.IllegalStateException r14 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r14.<init>(r0)
            throw r14
        L20:
            long r3 = r13.f36a
            java.lang.Object r1 = r13.c
            kotlinx.coroutines.CoroutineScope r1 = (kotlinx.coroutines.CoroutineScope) r1
            kotlin.ResultKt.throwOnFailure(r14)
            goto L46
        L2a:
            kotlin.ResultKt.throwOnFailure(r14)
            java.lang.Object r14 = r13.c
            r1 = r14
            kotlinx.coroutines.CoroutineScope r1 = (kotlinx.coroutines.CoroutineScope) r1
            com.braze.dispatch.f r14 = r13.d
            long r4 = r14.g
            long r6 = r13.e
            r13.c = r1
            r13.f36a = r4
            r13.b = r3
            java.lang.Object r14 = kotlinx.coroutines.DelayKt.delay(r6, r13)
            if (r14 != r0) goto L45
            return r0
        L45:
            r3 = r4
        L46:
            com.braze.Braze$Companion r14 = com.braze.Braze.INSTANCE
            com.braze.dispatch.f r5 = r13.d
            android.content.Context r5 = r5.f37a
            com.braze.Braze r14 = r14.getInstance(r5)
            r14.requestImmediateDataFlush()
        L53:
            boolean r14 = kotlinx.coroutines.CoroutineScopeKt.isActive(r1)
            if (r14 == 0) goto L87
            r13.c = r1
            r13.f36a = r3
            r13.b = r2
            java.lang.Object r14 = kotlinx.coroutines.DelayKt.delay(r3, r13)
            if (r14 != r0) goto L66
            return r0
        L66:
            com.braze.support.BrazeLogger r5 = com.braze.support.BrazeLogger.INSTANCE
            java.lang.String r6 = com.braze.dispatch.f.m
            com.braze.support.BrazeLogger$Priority r7 = com.braze.support.BrazeLogger.Priority.V
            com.braze.dispatch.e$$ExternalSyntheticLambda0 r10 = new com.braze.dispatch.e$$ExternalSyntheticLambda0
            r10.<init>()
            r11 = 12
            r12 = 0
            r8 = 0
            r9 = 0
            com.braze.support.BrazeLogger.brazelog$default(r5, r6, r7, r8, r9, r10, r11, r12)
            com.braze.Braze$Companion r14 = com.braze.Braze.INSTANCE
            com.braze.dispatch.f r5 = r13.d
            android.content.Context r5 = r5.f37a
            com.braze.Braze r14 = r14.getInstance(r5)
            r14.requestImmediateDataFlush()
            goto L53
        L87:
            kotlin.Unit r14 = kotlin.Unit.INSTANCE
            return r14
        */
        throw new UnsupportedOperationException("Method not decompiled: com.braze.dispatch.e.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
