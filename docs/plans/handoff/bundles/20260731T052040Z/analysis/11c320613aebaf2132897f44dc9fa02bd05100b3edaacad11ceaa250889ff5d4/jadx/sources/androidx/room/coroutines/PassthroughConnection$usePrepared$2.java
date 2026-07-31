package androidx.room.coroutines;

import androidx.core.os.BundleKt;
import androidx.sqlite.SQLiteStatement;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class PassthroughConnection$usePrepared$2 extends SuspendLambda implements Function1 {
    final /* synthetic */ Function1 $block;
    final /* synthetic */ String $sql;
    int label;
    final /* synthetic */ PassthroughConnection this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PassthroughConnection$usePrepared$2(PassthroughConnection passthroughConnection, String str, Function1 function1, Continuation continuation) {
        super(1, continuation);
        this.this$0 = passthroughConnection;
        this.$sql = str;
        this.$block = function1;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return new PassthroughConnection$usePrepared$2(this.this$0, this.$sql, this.$block, (Continuation) obj).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        if (this.label != 0) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$2("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.throwOnFailure(obj);
        SQLiteStatement prepare = this.this$0.delegate.prepare(this.$sql);
        try {
            Object invoke = this.$block.invoke(prepare);
            BundleKt.closeFinally(prepare, null);
            return invoke;
        } finally {
        }
    }
}
