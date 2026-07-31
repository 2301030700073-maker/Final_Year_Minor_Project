package androidx.paging;

import androidx.compose.animation.core.Animatable;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class Pager$pageFetcher$2 extends SuspendLambda implements Function1 {
    public final /* synthetic */ Object $pagingSourceFactory;
    public final /* synthetic */ int $r8$classId;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ Pager$pageFetcher$2(int i, Object obj, Continuation continuation) {
        super(1, continuation);
        this.$r8$classId = i;
        this.$pagingSourceFactory = obj;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Object obj2 = this.$pagingSourceFactory;
        Continuation continuation = (Continuation) obj;
        switch (i) {
            case 0:
                return new Pager$pageFetcher$2(0, (Function0) obj2, continuation).invokeSuspend(unit);
            default:
                new Pager$pageFetcher$2(1, (Animatable) obj2, continuation).invokeSuspend(unit);
                return unit;
        }
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i = this.$r8$classId;
        Object obj2 = this.$pagingSourceFactory;
        switch (i) {
            case 0:
                ResultKt.throwOnFailure(obj);
                return ((Function0) obj2).invoke();
            default:
                ResultKt.throwOnFailure(obj);
                ((Animatable) obj2).endAnimation();
                return Unit.INSTANCE;
        }
    }
}
