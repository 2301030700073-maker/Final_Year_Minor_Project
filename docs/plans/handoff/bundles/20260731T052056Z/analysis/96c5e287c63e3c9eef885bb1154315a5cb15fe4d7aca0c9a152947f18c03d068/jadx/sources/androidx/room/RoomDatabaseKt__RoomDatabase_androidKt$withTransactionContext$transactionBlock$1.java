package androidx.room;

import androidx.room.coroutines.PooledConnectionImpl;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class RoomDatabaseKt__RoomDatabase_androidKt$withTransactionContext$transactionBlock$1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ Function1 $block;
    public final /* synthetic */ int $r8$classId;
    public /* synthetic */ Object L$0;
    public int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RoomDatabaseKt__RoomDatabase_androidKt$withTransactionContext$transactionBlock$1(Function1 function1, Continuation continuation) {
        super(2, continuation);
        this.$r8$classId = 0;
        this.$block = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        switch (this.$r8$classId) {
            case 0:
                RoomDatabaseKt__RoomDatabase_androidKt$withTransactionContext$transactionBlock$1 roomDatabaseKt__RoomDatabase_androidKt$withTransactionContext$transactionBlock$1 = new RoomDatabaseKt__RoomDatabase_androidKt$withTransactionContext$transactionBlock$1(this.$block, continuation);
                roomDatabaseKt__RoomDatabase_androidKt$withTransactionContext$transactionBlock$1.L$0 = obj;
                return roomDatabaseKt__RoomDatabase_androidKt$withTransactionContext$transactionBlock$1;
            case 1:
                RoomDatabaseKt__RoomDatabase_androidKt$withTransactionContext$transactionBlock$1 roomDatabaseKt__RoomDatabase_androidKt$withTransactionContext$transactionBlock$12 = new RoomDatabaseKt__RoomDatabase_androidKt$withTransactionContext$transactionBlock$1(1, continuation, this.$block);
                roomDatabaseKt__RoomDatabase_androidKt$withTransactionContext$transactionBlock$12.L$0 = obj;
                return roomDatabaseKt__RoomDatabase_androidKt$withTransactionContext$transactionBlock$12;
            default:
                RoomDatabaseKt__RoomDatabase_androidKt$withTransactionContext$transactionBlock$1 roomDatabaseKt__RoomDatabase_androidKt$withTransactionContext$transactionBlock$13 = new RoomDatabaseKt__RoomDatabase_androidKt$withTransactionContext$transactionBlock$1(2, continuation, this.$block);
                roomDatabaseKt__RoomDatabase_androidKt$withTransactionContext$transactionBlock$13.L$0 = obj;
                return roomDatabaseKt__RoomDatabase_androidKt$withTransactionContext$transactionBlock$13;
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        switch (i) {
        }
        return ((RoomDatabaseKt__RoomDatabase_androidKt$withTransactionContext$transactionBlock$1) create((PooledConnectionImpl.TransactionImpl) obj, (Continuation) obj2)).invokeSuspend(unit);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i = this.$r8$classId;
        Function1 function1 = this.$block;
        switch (i) {
            case 0:
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i2 = this.label;
                if (i2 == 0) {
                    ResultKt.throwOnFailure(obj);
                    if (((CoroutineScope) this.L$0).getCoroutineContext().get(TransactionElement.Key) != null) {
                        this.label = 1;
                        Object invoke = function1.invoke(this);
                        return invoke == coroutineSingletons ? coroutineSingletons : invoke;
                    }
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Expected a TransactionElement in the CoroutineContext but none was found.");
                } else {
                    if (i2 == 1) {
                        ResultKt.throwOnFailure(obj);
                        return obj;
                    }
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                }
                return null;
            case 1:
                CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i3 = this.label;
                if (i3 != 0) {
                    if (i3 == 1) {
                        ResultKt.throwOnFailure(obj);
                        return obj;
                    }
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                Object invoke2 = function1.invoke(this);
                return invoke2 == coroutineSingletons2 ? coroutineSingletons2 : invoke2;
            default:
                CoroutineSingletons coroutineSingletons3 = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i4 = this.label;
                if (i4 != 0) {
                    if (i4 == 1) {
                        ResultKt.throwOnFailure(obj);
                        return obj;
                    }
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                Object invoke3 = function1.invoke(this);
                return invoke3 == coroutineSingletons3 ? coroutineSingletons3 : invoke3;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ RoomDatabaseKt__RoomDatabase_androidKt$withTransactionContext$transactionBlock$1(int i, Continuation continuation, Function1 function1) {
        super(2, continuation);
        this.$r8$classId = i;
        this.$block = function1;
    }
}
