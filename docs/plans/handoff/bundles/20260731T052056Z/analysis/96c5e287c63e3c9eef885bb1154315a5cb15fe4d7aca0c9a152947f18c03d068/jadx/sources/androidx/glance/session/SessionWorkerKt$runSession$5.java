package androidx.glance.session;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SessionWorkerKt$runSession$5 extends SuspendLambda implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public /* synthetic */ boolean Z$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ SessionWorkerKt$runSession$5(int i, int i2, Continuation continuation) {
        super(i, continuation);
        this.$r8$classId = i2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = 2;
        switch (this.$r8$classId) {
            case 0:
                SessionWorkerKt$runSession$5 sessionWorkerKt$runSession$5 = new SessionWorkerKt$runSession$5(i, 0, continuation);
                sessionWorkerKt$runSession$5.Z$0 = ((Boolean) obj).booleanValue();
                return sessionWorkerKt$runSession$5;
            default:
                SessionWorkerKt$runSession$5 sessionWorkerKt$runSession$52 = new SessionWorkerKt$runSession$5(i, 1, continuation);
                sessionWorkerKt$runSession$52.Z$0 = ((Boolean) obj).booleanValue();
                return sessionWorkerKt$runSession$52;
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Boolean bool = (Boolean) obj;
        bool.booleanValue();
        Continuation continuation = (Continuation) obj2;
        switch (i) {
        }
        return ((SessionWorkerKt$runSession$5) create(bool, continuation)).invokeSuspend(unit);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                ResultKt.throwOnFailure(obj);
                return Boolean.valueOf(this.Z$0);
            default:
                ResultKt.throwOnFailure(obj);
                return Boolean.valueOf(!this.Z$0);
        }
    }
}
