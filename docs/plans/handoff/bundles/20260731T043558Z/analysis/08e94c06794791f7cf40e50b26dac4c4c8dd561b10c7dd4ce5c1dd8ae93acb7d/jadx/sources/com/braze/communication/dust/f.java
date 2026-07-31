package com.braze.communication.dust;

import com.google.common.net.HttpHeaders;
import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import java.net.URL;
import java.net.URLConnection;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* loaded from: classes2.dex */
public final class f extends SuspendLambda implements Function2 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f18a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(String str, Continuation continuation) {
        super(2, continuation);
        this.f18a = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new f(this.f18a, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return new f(this.f18a, (Continuation) obj2).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        URLConnection uRLConnection = (URLConnection) FirebasePerfUrlConnection.instrument(new URL(this.f18a).openConnection());
        uRLConnection.setRequestProperty(HttpHeaders.ACCEPT, "text/event-stream");
        uRLConnection.setDoInput(true);
        uRLConnection.connect();
        return uRLConnection;
    }
}
