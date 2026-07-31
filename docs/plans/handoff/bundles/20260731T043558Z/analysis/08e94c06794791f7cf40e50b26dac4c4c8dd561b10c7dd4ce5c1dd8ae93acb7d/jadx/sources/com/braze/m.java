package com.braze;

import com.braze.events.IValueCallback;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* loaded from: classes2.dex */
public final class m extends SuspendLambda implements Function2 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ IValueCallback f108a;
    public final /* synthetic */ Braze b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m(IValueCallback iValueCallback, Braze braze, Continuation continuation) {
        super(2, continuation);
        this.f108a = iValueCallback;
        this.b = braze;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new m(this.f108a, this.b, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new m(this.f108a, this.b, (Continuation) obj2).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        if (Braze.INSTANCE.isDisabled()) {
            this.f108a.onError();
            return Unit.INSTANCE;
        }
        this.f108a.onSuccess(((com.braze.managers.u) this.b.getDeviceIdProvider$android_sdk_base_release()).a());
        return Unit.INSTANCE;
    }
}
