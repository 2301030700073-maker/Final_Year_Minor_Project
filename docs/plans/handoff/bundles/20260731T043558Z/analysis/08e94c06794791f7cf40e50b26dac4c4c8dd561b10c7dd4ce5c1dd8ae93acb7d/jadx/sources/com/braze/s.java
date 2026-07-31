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
public final class s extends SuspendLambda implements Function2 {

    /* renamed from: a, reason: collision with root package name */
    public /* synthetic */ Object f207a;
    public final /* synthetic */ boolean b;
    public final /* synthetic */ boolean c;
    public final /* synthetic */ Braze d;
    public final /* synthetic */ Function0 e;
    public final /* synthetic */ Function0 f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public s(boolean z, boolean z2, Braze braze, Function0 function0, Function0 function02, Continuation continuation) {
        super(2, continuation);
        this.b = z;
        this.c = z2;
        this.d = braze;
        this.e = function0;
        this.f = function02;
    }

    public static final String a(Function0 function0) {
        return "Early returning because the Braze instance isn't fully initialized. Always use Braze.getInstance(context) to get the latest Braze instance. Please report to Braze if the issue continues. > " + ((String) function0.invoke());
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        s sVar = new s(this.b, this.c, this.d, this.e, this.f, continuation);
        sVar.f207a = obj;
        return sVar;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((s) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        CoroutineScope coroutineScope = (CoroutineScope) this.f207a;
        if (this.b && Braze.INSTANCE.isDisabled()) {
            return Unit.INSTANCE;
        }
        if (!this.c || this.d.udm != null) {
            this.e.invoke();
            return Unit.INSTANCE;
        }
        BrazeLogger brazeLogger = BrazeLogger.INSTANCE;
        BrazeLogger.Priority priority = BrazeLogger.Priority.W;
        final Function0 function0 = this.f;
        BrazeLogger.brazelog$default(brazeLogger, (Object) coroutineScope, priority, (Throwable) null, false, new Function0() { // from class: com.braze.s$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return s.a(Function0.this);
            }
        }, 6, (Object) null);
        return Unit.INSTANCE;
    }
}
