package net.thunderbird.core.ui.compose.designsystem.molecule.swipe;

import androidx.room.coroutines.PooledConnectionImpl;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SwipeableRowKt$SwipeableRow$3$1$2 extends SuspendLambda implements Function2 {
    public final /* synthetic */ Function1 $onSwipeChange;
    public final /* synthetic */ int $r8$classId;
    public /* synthetic */ Object L$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SwipeableRowKt$SwipeableRow$3$1$2(Function1 function1, Continuation continuation) {
        super(2, continuation);
        this.$r8$classId = 0;
        this.$onSwipeChange = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        Function1 function1 = this.$onSwipeChange;
        switch (i) {
            case 0:
                SwipeableRowKt$SwipeableRow$3$1$2 swipeableRowKt$SwipeableRow$3$1$2 = new SwipeableRowKt$SwipeableRow$3$1$2(function1, continuation);
                swipeableRowKt$SwipeableRow$3$1$2.L$0 = obj;
                return swipeableRowKt$SwipeableRow$3$1$2;
            case 1:
                SwipeableRowKt$SwipeableRow$3$1$2 swipeableRowKt$SwipeableRow$3$1$22 = new SwipeableRowKt$SwipeableRow$3$1$2(1, continuation, function1);
                swipeableRowKt$SwipeableRow$3$1$22.L$0 = obj;
                return swipeableRowKt$SwipeableRow$3$1$22;
            default:
                SwipeableRowKt$SwipeableRow$3$1$2 swipeableRowKt$SwipeableRow$3$1$23 = new SwipeableRowKt$SwipeableRow$3$1$2(2, continuation, function1);
                swipeableRowKt$SwipeableRow$3$1$23.L$0 = obj;
                return swipeableRowKt$SwipeableRow$3$1$23;
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                ((SwipeableRowKt$SwipeableRow$3$1$2) create((SwipeDirection) obj, (Continuation) obj2)).invokeSuspend(unit);
                break;
        }
        return ((SwipeableRowKt$SwipeableRow$3$1$2) create((PooledConnectionImpl.TransactionImpl) obj, (Continuation) obj2)).invokeSuspend(unit);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i = this.$r8$classId;
        Function1 function1 = this.$onSwipeChange;
        switch (i) {
            case 0:
                SwipeDirection swipeDirection = (SwipeDirection) this.L$0;
                ResultKt.throwOnFailure(obj);
                function1.invoke(swipeDirection);
                return Unit.INSTANCE;
            case 1:
                ResultKt.throwOnFailure(obj);
                PooledConnectionImpl.TransactionImpl transactionImpl = (PooledConnectionImpl.TransactionImpl) this.L$0;
                transactionImpl.getClass();
                return function1.invoke(transactionImpl.getRawConnection());
            default:
                ResultKt.throwOnFailure(obj);
                PooledConnectionImpl.TransactionImpl transactionImpl2 = (PooledConnectionImpl.TransactionImpl) this.L$0;
                transactionImpl2.getClass();
                return function1.invoke(transactionImpl2.getRawConnection());
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ SwipeableRowKt$SwipeableRow$3$1$2(int i, Continuation continuation, Function1 function1) {
        super(2, continuation);
        this.$r8$classId = i;
        this.$onSwipeChange = function1;
    }
}
