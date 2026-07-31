package com.braze.requests;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* loaded from: classes2.dex */
public final class t extends SuspendLambda implements Function2 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ u f201a;
    public final /* synthetic */ com.braze.requests.framework.h b;
    public final /* synthetic */ com.braze.requests.framework.c c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public t(u uVar, com.braze.requests.framework.h hVar, com.braze.requests.framework.c cVar, Continuation continuation) {
        super(2, continuation);
        this.f201a = uVar;
        this.b = hVar;
        this.c = cVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new t(this.f201a, this.b, this.c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((t) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        u uVar = this.f201a;
        new d(this.b, uVar.f202a, uVar.b, uVar.c, uVar.d, uVar.g, uVar.e, uVar.f, uVar.h, this.c).c();
        return Unit.INSTANCE;
    }
}
