package androidx.room.util;

import androidx.camera.camera2.impl.LowLightBoostControl;
import androidx.room.RoomDatabase;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CompletableDeferredImpl;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DBUtil__DBUtil_androidKt$performBlocking$1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ Object $block;
    public final /* synthetic */ Object $db;
    public final /* synthetic */ boolean $inTransaction;
    public final /* synthetic */ boolean $isReadOnly;
    public final /* synthetic */ int $r8$classId = 0;
    public int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DBUtil__DBUtil_androidKt$performBlocking$1(RoomDatabase roomDatabase, boolean z, boolean z2, Function1 function1, Continuation continuation) {
        super(2, continuation);
        this.$db = roomDatabase;
        this.$isReadOnly = z;
        this.$inTransaction = z2;
        this.$block = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        Object obj2 = this.$block;
        Object obj3 = this.$db;
        switch (i) {
            case 0:
                return new DBUtil__DBUtil_androidKt$performBlocking$1((RoomDatabase) obj3, this.$isReadOnly, this.$inTransaction, (Function1) obj2, continuation);
            case 1:
                return new DBUtil__DBUtil_androidKt$performBlocking$1(continuation, (RoomDatabase) obj3, this.$isReadOnly, this.$inTransaction, (Function1) obj2);
            default:
                return new DBUtil__DBUtil_androidKt$performBlocking$1(continuation, (LowLightBoostControl) obj3, (CompletableDeferredImpl) obj2, this.$isReadOnly, this.$inTransaction);
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        CoroutineScope coroutineScope = (CoroutineScope) obj;
        Continuation continuation = (Continuation) obj2;
        switch (i) {
        }
        return ((DBUtil__DBUtil_androidKt$performBlocking$1) create(coroutineScope, continuation)).invokeSuspend(unit);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0052  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r10) {
        /*
            Method dump skipped, instructions count: 284
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.util.DBUtil__DBUtil_androidKt$performBlocking$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DBUtil__DBUtil_androidKt$performBlocking$1(Continuation continuation, LowLightBoostControl lowLightBoostControl, CompletableDeferredImpl completableDeferredImpl, boolean z, boolean z2) {
        super(2, continuation);
        this.$db = lowLightBoostControl;
        this.$block = completableDeferredImpl;
        this.$isReadOnly = z;
        this.$inTransaction = z2;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DBUtil__DBUtil_androidKt$performBlocking$1(Continuation continuation, RoomDatabase roomDatabase, boolean z, boolean z2, Function1 function1) {
        super(2, continuation);
        this.$db = roomDatabase;
        this.$isReadOnly = z;
        this.$inTransaction = z2;
        this.$block = function1;
    }
}
