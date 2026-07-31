package androidx.datastore.core;

import com.fsck.k9.sasl.OAuthBearer;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DataStoreImpl$data$1$5 extends SuspendLambda implements Function3 {
    public final /* synthetic */ int $r8$classId = 1;
    public int label;
    public /* synthetic */ Object this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DataStoreImpl$data$1$5(DataStoreImpl dataStoreImpl, Continuation continuation) {
        super(3, continuation);
        this.this$0 = dataStoreImpl;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                return new DataStoreImpl$data$1$5((DataStoreImpl) this.this$0, (Continuation) obj3).invokeSuspend(unit);
            default:
                ((Boolean) obj2).getClass();
                DataStoreImpl$data$1$5 dataStoreImpl$data$1$5 = new DataStoreImpl$data$1$5(3, (Continuation) obj3);
                dataStoreImpl$data$1$5.this$0 = (FileReadScope) obj;
                return dataStoreImpl$data$1$5.invokeSuspend(unit);
        }
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i = this.$r8$classId;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        Continuation continuation = null;
        switch (i) {
            case 0:
                int i2 = this.label;
                if (i2 == 0) {
                    ResultKt.throwOnFailure(obj);
                    DataStoreImpl dataStoreImpl = (DataStoreImpl) this.this$0;
                    this.label = 1;
                    if (DataStoreImpl.access$decrementCollector(dataStoreImpl, this) == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                } else {
                    if (i2 != 1) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    ResultKt.throwOnFailure(obj);
                }
                return Unit.INSTANCE;
            default:
                int i3 = this.label;
                if (i3 == 0) {
                    ResultKt.throwOnFailure(obj);
                    FileReadScope fileReadScope = (FileReadScope) this.this$0;
                    this.label = 1;
                    if (!fileReadScope.closed.get()) {
                        Object access$runFileDiagnosticsIfNotCorruption = OAuthBearer.access$runFileDiagnosticsIfNotCorruption(fileReadScope.file, new FileReadScope$readData$2(fileReadScope, continuation, 0), this);
                        return access$runFileDiagnosticsIfNotCorruption == coroutineSingletons ? coroutineSingletons : access$runFileDiagnosticsIfNotCorruption;
                    }
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("This scope has already been closed.");
                } else {
                    if (i3 == 1) {
                        ResultKt.throwOnFailure(obj);
                        return obj;
                    }
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                }
                return null;
        }
    }

    public /* synthetic */ DataStoreImpl$data$1$5(int i, Continuation continuation) {
        super(i, continuation);
    }
}
