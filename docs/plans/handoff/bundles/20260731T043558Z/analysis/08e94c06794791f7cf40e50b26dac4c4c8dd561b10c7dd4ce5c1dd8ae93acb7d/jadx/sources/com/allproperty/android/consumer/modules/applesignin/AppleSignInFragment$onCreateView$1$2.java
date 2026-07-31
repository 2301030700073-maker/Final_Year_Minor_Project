package com.allproperty.android.consumer.modules.applesignin;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: AppleSignInFragment.kt */
@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes2.dex */
/* synthetic */ class AppleSignInFragment$onCreateView$1$2 extends FunctionReferenceImpl implements Function1<LoginResult, Unit> {
    AppleSignInFragment$onCreateView$1$2(Object obj) {
        super(1, obj, AppleSignInFragment.class, "onCallback", "onCallback(Lcom/allproperty/android/consumer/modules/applesignin/LoginResult;)V", 0);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(LoginResult loginResult) {
        invoke2(loginResult);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(LoginResult p0) {
        Intrinsics.checkNotNullParameter(p0, "p0");
        ((AppleSignInFragment) this.receiver).onCallback(p0);
    }
}
