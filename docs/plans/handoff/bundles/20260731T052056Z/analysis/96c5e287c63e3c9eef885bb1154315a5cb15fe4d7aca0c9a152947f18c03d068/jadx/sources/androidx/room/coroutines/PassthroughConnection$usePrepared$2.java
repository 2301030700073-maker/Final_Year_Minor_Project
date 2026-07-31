package androidx.room.coroutines;

import androidx.sqlite.SQLiteStatement;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class PassthroughConnection$usePrepared$2 extends SuspendLambda implements Function1 {
    public final /* synthetic */ Function1 $block;
    public final /* synthetic */ String $sql;
    public final /* synthetic */ PassthroughConnection this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PassthroughConnection$usePrepared$2(PassthroughConnection passthroughConnection, String str, Function1 function1, Continuation continuation) {
        super(1, continuation);
        this.this$0 = passthroughConnection;
        this.$sql = str;
        this.$block = function1;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        String str = this.$sql;
        Function1 function1 = this.$block;
        return new PassthroughConnection$usePrepared$2(this.this$0, str, function1, (Continuation) obj).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        ResultKt.throwOnFailure(obj);
        SQLiteStatement prepare = this.this$0.delegate.prepare(this.$sql);
        try {
            Object invoke = this.$block.invoke(prepare);
            TuplesKt.closeFinally(prepare, null);
            return invoke;
        } finally {
        }
    }
}
