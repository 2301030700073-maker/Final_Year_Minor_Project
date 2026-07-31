package com.braze.managers;

import com.braze.support.BrazeLogger;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* loaded from: classes2.dex */
public final class v extends SuspendLambda implements Function1 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ y f138a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public v(y yVar, Continuation continuation) {
        super(1, continuation);
        this.f138a = yVar;
    }

    public static final String a() {
        return "Ending subscription on a delay";
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Continuation continuation) {
        return new v(this.f138a, continuation);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return new v(this.f138a, (Continuation) obj).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this.f138a, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.managers.v$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return v.a();
            }
        }, 7, (Object) null);
        this.f138a.a();
        return Unit.INSTANCE;
    }
}
