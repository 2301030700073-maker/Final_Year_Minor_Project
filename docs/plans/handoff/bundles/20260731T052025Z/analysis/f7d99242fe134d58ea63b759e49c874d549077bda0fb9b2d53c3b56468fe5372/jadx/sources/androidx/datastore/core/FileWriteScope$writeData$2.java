package androidx.datastore.core;

import java.io.Serializable;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$IntRef;
import kotlin.jvm.internal.Ref$ObjectRef;
import org.jetbrains.compose.resources.DefaultAndroidResourceReader;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FileWriteScope$writeData$2 extends SuspendLambda implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public Object $value;
    public Object L$0;
    public Object L$1;
    public int label;
    public final /* synthetic */ Object this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FileWriteScope$writeData$2(DataStoreImpl dataStoreImpl, CoroutineContext coroutineContext, Function2 function2, Continuation continuation) {
        super(1, continuation);
        this.$r8$classId = 2;
        this.L$0 = dataStoreImpl;
        this.L$1 = coroutineContext;
        this.this$0 = function2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Continuation continuation) {
        int i = this.$r8$classId;
        Object obj = this.this$0;
        switch (i) {
            case 0:
                return new FileWriteScope$writeData$2((FileWriteScope) obj, this.$value, continuation);
            case 1:
                return new FileWriteScope$writeData$2((Ref$ObjectRef) this.L$1, (DataStoreImpl) obj, (Ref$IntRef) this.$value, continuation, 1);
            case 2:
                return new FileWriteScope$writeData$2((DataStoreImpl) this.L$0, (CoroutineContext) this.L$1, (Function2) obj, continuation);
            default:
                return new FileWriteScope$writeData$2((Function1) this.L$1, (DefaultAndroidResourceReader) obj, (String) this.$value, continuation, 3);
        }
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Continuation continuation = (Continuation) obj;
        switch (i) {
        }
        return ((FileWriteScope$writeData$2) create(continuation)).invokeSuspend(unit);
    }

    /* JADX WARN: Code restructure failed: missing block: B:89:0x014c, code lost:
    
        if (r12 != r6) goto L79;
     */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00ba  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00c4  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00d9  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00bf  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r12) {
        /*
            Method dump skipped, instructions count: 452
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.core.FileWriteScope$writeData$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FileWriteScope$writeData$2(FileWriteScope fileWriteScope, Object obj, Continuation continuation) {
        super(1, continuation);
        this.$r8$classId = 0;
        this.this$0 = fileWriteScope;
        this.$value = obj;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ FileWriteScope$writeData$2(Object obj, Object obj2, Serializable serializable, Continuation continuation, int i) {
        super(1, continuation);
        this.$r8$classId = i;
        this.L$1 = obj;
        this.this$0 = obj2;
        this.$value = serializable;
    }
}
