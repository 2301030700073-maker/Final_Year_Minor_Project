package androidx.compose.foundation;

import android.content.ContentResolver;
import android.content.Context;
import android.net.Uri;
import androidx.compose.material3.internal.InternalMutatorMutex;
import androidx.loader.content.Loader$ForceLoadContentObserver;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.flow.FlowCollector;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MutatorMutex$mutate$2 extends SuspendLambda implements Function2 {
    public final /* synthetic */ Object $block;
    public final /* synthetic */ Object $priority;
    public final /* synthetic */ int $r8$classId;
    public /* synthetic */ Object L$0;
    public Object L$1;
    public Object L$2;
    public Object L$3;
    public int label;
    public final /* synthetic */ Object this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MutatorMutex$mutate$2(ContentResolver contentResolver, Uri uri, Loader$ForceLoadContentObserver loader$ForceLoadContentObserver, BufferedChannel bufferedChannel, Context context, Continuation continuation) {
        super(2, continuation);
        this.$r8$classId = 2;
        this.L$0 = contentResolver;
        this.L$3 = uri;
        this.this$0 = loader$ForceLoadContentObserver;
        this.$priority = bufferedChannel;
        this.$block = context;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        Object obj2 = this.$block;
        Object obj3 = this.$priority;
        Object obj4 = this.this$0;
        switch (i) {
            case 0:
                MutatorMutex$mutate$2 mutatorMutex$mutate$2 = new MutatorMutex$mutate$2((MutatePriority) obj3, (MutatorMutex) obj4, (Function1) obj2, continuation, 0);
                mutatorMutex$mutate$2.L$0 = obj;
                return mutatorMutex$mutate$2;
            case 1:
                MutatorMutex$mutate$2 mutatorMutex$mutate$22 = new MutatorMutex$mutate$2((MutatePriority) obj3, (InternalMutatorMutex) obj4, (Function1) obj2, continuation, 1);
                mutatorMutex$mutate$22.L$0 = obj;
                return mutatorMutex$mutate$22;
            default:
                MutatorMutex$mutate$2 mutatorMutex$mutate$23 = new MutatorMutex$mutate$2((ContentResolver) this.L$0, (Uri) this.L$3, (Loader$ForceLoadContentObserver) obj4, (BufferedChannel) obj3, (Context) obj2, continuation);
                mutatorMutex$mutate$23.L$2 = obj;
                return mutatorMutex$mutate$23;
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                return ((MutatorMutex$mutate$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 1:
                return ((MutatorMutex$mutate$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            default:
                return ((MutatorMutex$mutate$2) create((FlowCollector) obj, (Continuation) obj2)).invokeSuspend(unit);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0066  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0071 A[Catch: all -> 0x002f, TRY_LEAVE, TryCatch #6 {all -> 0x002f, blocks: (B:9:0x002a, B:11:0x0059, B:17:0x0069, B:19:0x0071, B:28:0x003f, B:30:0x0052), top: B:4:0x001c }] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0097  */
    /* JADX WARN: Type inference failed for: r15v16, types: [kotlin.coroutines.CoroutineContext] */
    /* JADX WARN: Type inference failed for: r15v3, types: [kotlin.coroutines.CoroutineContext] */
    /* JADX WARN: Type inference failed for: r1v0, types: [kotlin.coroutines.CoroutineContext$Key, kotlinx.coroutines.Job$Key, kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r1v8, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r2v14, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0094 -> B:10:0x002d). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r15) {
        /*
            Method dump skipped, instructions count: 574
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.MutatorMutex$mutate$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ MutatorMutex$mutate$2(MutatePriority mutatePriority, Object obj, Function1 function1, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.$priority = mutatePriority;
        this.this$0 = obj;
        this.$block = function1;
    }
}
