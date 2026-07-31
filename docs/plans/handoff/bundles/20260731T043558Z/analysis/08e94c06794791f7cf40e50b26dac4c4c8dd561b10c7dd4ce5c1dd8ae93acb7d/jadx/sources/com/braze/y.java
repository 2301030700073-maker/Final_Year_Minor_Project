package com.braze;

import com.braze.support.BrazeLogger;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* loaded from: classes2.dex */
public final class y extends SuspendLambda implements Function2 {

    /* renamed from: a, reason: collision with root package name */
    public /* synthetic */ Object f288a;

    public y(Continuation continuation) {
        super(2, continuation);
    }

    public static final String a() {
        return "Waited on previous tasks to finish!";
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        y yVar = new y(continuation);
        yVar.f288a = obj;
        return yVar;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        y yVar = new y((Continuation) obj2);
        yVar.f288a = (CoroutineScope) obj;
        return yVar.invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, this.f288a, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.y$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return y.a();
            }
        }, 7, (Object) null);
        return Unit.INSTANCE;
    }
}
