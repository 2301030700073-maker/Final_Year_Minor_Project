package com.fsck.k9.backends;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AndroidAlarmManager$1$onReceive$1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ Function0 $callback;
    public final /* synthetic */ int $r8$classId;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ AndroidAlarmManager$1$onReceive$1(Function0 function0, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.$callback = function0;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        Function0 function0 = this.$callback;
        switch (i) {
            case 0:
                return new AndroidAlarmManager$1$onReceive$1(function0, continuation, 0);
            default:
                return new AndroidAlarmManager$1$onReceive$1(function0, continuation, 1);
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        CoroutineScope coroutineScope = (CoroutineScope) obj;
        Continuation continuation = (Continuation) obj2;
        switch (i) {
            case 0:
                ((AndroidAlarmManager$1$onReceive$1) create(coroutineScope, continuation)).invokeSuspend(unit);
                break;
            default:
                ((AndroidAlarmManager$1$onReceive$1) create(coroutineScope, continuation)).invokeSuspend(unit);
                break;
        }
        return unit;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Function0 function0 = this.$callback;
        switch (i) {
            case 0:
                ResultKt.throwOnFailure(obj);
                function0.invoke();
                break;
            default:
                ResultKt.throwOnFailure(obj);
                function0.invoke();
                break;
        }
        return unit;
    }
}
