package androidx.room.coroutines;

import androidx.room.Transactor;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class PassthroughConnection$withTransaction$2 extends SuspendLambda implements Function1 {
    final /* synthetic */ Function2 $block;
    final /* synthetic */ Transactor.SQLiteTransactionType $type;
    int label;
    final /* synthetic */ PassthroughConnection this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PassthroughConnection$withTransaction$2(PassthroughConnection passthroughConnection, Transactor.SQLiteTransactionType sQLiteTransactionType, Function2 function2, Continuation continuation) {
        super(1, continuation);
        this.this$0 = passthroughConnection;
        this.$type = sQLiteTransactionType;
        this.$block = function2;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return new PassthroughConnection$withTransaction$2(this.this$0, this.$type, this.$block, (Continuation) obj).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i = this.label;
        if (i != 0) {
            if (i == 1) {
                ResultKt.throwOnFailure(obj);
                return obj;
            }
            _UtilJvmKt$$ExternalSyntheticLambda1.m$2("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.throwOnFailure(obj);
        PassthroughConnection passthroughConnection = this.this$0;
        Transactor.SQLiteTransactionType sQLiteTransactionType = this.$type;
        Function2 function2 = this.$block;
        this.label = 1;
        Object transaction = passthroughConnection.transaction(sQLiteTransactionType, function2, this);
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        return transaction == coroutineSingletons ? coroutineSingletons : transaction;
    }
}
