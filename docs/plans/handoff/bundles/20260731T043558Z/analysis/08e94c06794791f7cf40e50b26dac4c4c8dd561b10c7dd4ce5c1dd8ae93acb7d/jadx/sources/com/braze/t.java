package com.braze;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt__BuildersKt;
import kotlinx.coroutines.CoroutineScope;

/* loaded from: classes2.dex */
public final class t extends SuspendLambda implements Function2 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ boolean f259a;
    public final /* synthetic */ boolean b;
    public final /* synthetic */ Braze c;
    public final /* synthetic */ Function0 d;
    public final /* synthetic */ Function0 e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public t(boolean z, boolean z2, Braze braze, Function0 function0, Function0 function02, Continuation continuation) {
        super(2, continuation);
        this.f259a = z;
        this.b = z2;
        this.c = braze;
        this.d = function0;
        this.e = function02;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new t(this.f259a, this.b, this.c, this.d, this.e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((t) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        BuildersKt__BuildersKt.runBlocking$default(null, new s(this.f259a, this.b, this.c, this.d, this.e, null), 1, null);
        return Unit.INSTANCE;
    }
}
