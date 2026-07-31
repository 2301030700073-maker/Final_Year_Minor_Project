package com.braze;

import com.braze.managers.u0;
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
public final class j extends SuspendLambda implements Function2 {

    /* renamed from: a, reason: collision with root package name */
    public /* synthetic */ Object f91a;
    public final /* synthetic */ Braze b;
    public final /* synthetic */ String c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j(Braze braze, String str, Continuation continuation) {
        super(2, continuation);
        this.b = braze;
        this.c = str;
    }

    public static final String a(String str) {
        return i.a("Getting Banner for ", str);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        j jVar = new j(this.b, this.c, continuation);
        jVar.f91a = obj;
        return jVar;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((j) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        CoroutineScope coroutineScope = (CoroutineScope) this.f91a;
        BrazeLogger brazeLogger = BrazeLogger.INSTANCE;
        final String str = this.c;
        BrazeLogger.brazelog$default(brazeLogger, (Object) coroutineScope, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.j$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return j.a(str);
            }
        }, 7, (Object) null);
        return ((u0) this.b.getUdm$android_sdk_base_release()).B.a(this.c);
    }
}
