package androidx.room.rxjava3;

import androidx.room.RoomDatabase;
import androidx.room.util.DBUtil;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class RxRoom$createMaybe$1 extends SuspendLambda implements Function2 {
    final /* synthetic */ Function1 $block;
    final /* synthetic */ RoomDatabase $db;
    final /* synthetic */ boolean $inTransaction;
    final /* synthetic */ boolean $isReadOnly;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RxRoom$createMaybe$1(RoomDatabase roomDatabase, Continuation continuation, Function1 function1, boolean z, boolean z2) {
        super(2, continuation);
        this.$db = roomDatabase;
        this.$isReadOnly = z;
        this.$inTransaction = z2;
        this.$block = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new RxRoom$createMaybe$1(this.$db, continuation, this.$block, this.$isReadOnly, this.$inTransaction);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((RxRoom$createMaybe$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
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
        RoomDatabase roomDatabase = this.$db;
        boolean z = this.$isReadOnly;
        boolean z2 = this.$inTransaction;
        Function1 function1 = this.$block;
        this.label = 1;
        Object performSuspending = DBUtil.performSuspending(roomDatabase, z, z2, function1, this);
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        return performSuspending == coroutineSingletons ? coroutineSingletons : performSuspending;
    }
}
