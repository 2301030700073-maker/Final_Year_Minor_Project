package androidx.room;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.ContinuationInterceptor$Key;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.internal.ThreadLocalElement;
import net.newpipe.app.AppKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class RoomDatabaseKt__RoomDatabase_androidKt$startTransactionCoroutine$2$1$1 extends SuspendLambda implements Function2 {
    final /* synthetic */ CancellableContinuation $continuation;
    final /* synthetic */ RoomDatabase $this_startTransactionCoroutine;
    final /* synthetic */ Function2 $transactionBlock;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RoomDatabaseKt__RoomDatabase_androidKt$startTransactionCoroutine$2$1$1(RoomDatabase roomDatabase, CancellableContinuation cancellableContinuation, Function2 function2, Continuation continuation) {
        super(2, continuation);
        this.$this_startTransactionCoroutine = roomDatabase;
        this.$continuation = cancellableContinuation;
        this.$transactionBlock = function2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        RoomDatabaseKt__RoomDatabase_androidKt$startTransactionCoroutine$2$1$1 roomDatabaseKt__RoomDatabase_androidKt$startTransactionCoroutine$2$1$1 = new RoomDatabaseKt__RoomDatabase_androidKt$startTransactionCoroutine$2$1$1(this.$this_startTransactionCoroutine, this.$continuation, this.$transactionBlock, continuation);
        roomDatabaseKt__RoomDatabase_androidKt$startTransactionCoroutine$2$1$1.L$0 = obj;
        return roomDatabaseKt__RoomDatabase_androidKt$startTransactionCoroutine$2$1$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((RoomDatabaseKt__RoomDatabase_androidKt$startTransactionCoroutine$2$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Continuation continuation;
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            CoroutineContext.Element element = ((CoroutineScope) this.L$0).getCoroutineContext().get(ContinuationInterceptor$Key.$$INSTANCE);
            element.getClass();
            CoroutineDispatcher coroutineDispatcher = (CoroutineDispatcher) element;
            RoomDatabase roomDatabase = this.$this_startTransactionCoroutine;
            CoroutineContext plus = AppKt.plus(coroutineDispatcher, new TransactionElement(coroutineDispatcher));
            CoroutineContext plus2 = plus.plus(new ThreadLocalElement(plus, roomDatabase.suspendingTransactionContext));
            CancellableContinuation cancellableContinuation = this.$continuation;
            Function2 function2 = this.$transactionBlock;
            this.L$0 = cancellableContinuation;
            this.label = 1;
            obj = JobKt.withContext(plus2, function2, this);
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            if (obj == coroutineSingletons) {
                return coroutineSingletons;
            }
            continuation = cancellableContinuation;
        } else {
            if (i != 1) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$2("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            continuation = (Continuation) this.L$0;
            ResultKt.throwOnFailure(obj);
        }
        continuation.resumeWith(obj);
        return Unit.INSTANCE;
    }
}
