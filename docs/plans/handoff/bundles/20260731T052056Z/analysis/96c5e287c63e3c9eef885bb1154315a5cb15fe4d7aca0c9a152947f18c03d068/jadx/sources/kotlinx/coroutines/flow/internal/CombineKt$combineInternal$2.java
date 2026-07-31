package kotlinx.coroutines.flow.internal;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import okhttp3.Dispatcher$promoteAndExecute$Effects;
import org.wikipedia.readinglist.RemoveFromReadingListsDialog$Callback;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class CombineKt$combineInternal$2 extends SuspendLambda implements Function2 {
    public final /* synthetic */ Object $arrayFactory;
    public Object $flows;
    public final /* synthetic */ int $r8$classId = 0;
    public final /* synthetic */ Object $this_combineInternal;
    public final /* synthetic */ Object $transform;
    public int I$0;
    public int I$1;
    public Object L$0;
    public Object L$1;
    public Object L$2;
    public int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CombineKt$combineInternal$2(Continuation continuation, Function0 function0, Function3 function3, FlowCollector flowCollector, Flow[] flowArr) {
        super(2, continuation);
        this.$flows = flowArr;
        this.$arrayFactory = function0;
        this.$transform = function3;
        this.$this_combineInternal = flowCollector;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        Object obj2 = this.$this_combineInternal;
        Object obj3 = this.$transform;
        Object obj4 = this.$arrayFactory;
        switch (i) {
            case 0:
                CombineKt$combineInternal$2 combineKt$combineInternal$2 = new CombineKt$combineInternal$2(continuation, (Function0) obj4, (Function3) obj3, (FlowCollector) obj2, (Flow[]) this.$flows);
                combineKt$combineInternal$2.L$0 = obj;
                return combineKt$combineInternal$2;
            default:
                return new CombineKt$combineInternal$2((Dispatcher$promoteAndExecute$Effects) obj4, (boolean[]) obj3, (RemoveFromReadingListsDialog$Callback) obj2, continuation);
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
        return ((CombineKt$combineInternal$2) create(coroutineScope, continuation)).invokeSuspend(unit);
    }

    /* JADX WARN: Code restructure failed: missing block: B:65:0x01fb, code lost:
    
        if (r5.invoke(r3, r15, r22) == r11) goto L73;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0218, code lost:
    
        if (r5.invoke(r3, r8, r22) == r11) goto L73;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x01fe, code lost:
    
        if (r10 != 0) goto L70;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x00d3  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x01af  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x01ba A[LOOP:1: B:52:0x01ba->B:59:0x01db, LOOP_START, PHI: r10 r13
      0x01ba: PHI (r10v3 int) = (r10v2 int), (r10v4 int) binds: [B:51:0x01b7, B:59:0x01db] A[DONT_GENERATE, DONT_INLINE]
      0x01ba: PHI (r13v5 kotlin.collections.IndexedValue) = (r13v4 kotlin.collections.IndexedValue), (r13v8 kotlin.collections.IndexedValue) binds: [B:51:0x01b7, B:59:0x01db] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:69:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r14v11, types: [kotlinx.coroutines.channels.Channel] */
    /* JADX WARN: Type inference failed for: r14v6, types: [kotlinx.coroutines.channels.Channel] */
    /* JADX WARN: Type inference failed for: r14v8, types: [kotlinx.coroutines.channels.Channel] */
    /* JADX WARN: Type inference failed for: r6v12, types: [int] */
    /* JADX WARN: Type inference failed for: r6v7, types: [int] */
    /* JADX WARN: Type inference failed for: r6v9, types: [int] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x00cd -> B:7:0x00ce). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:56:0x01fb -> B:38:0x01fe). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:58:0x0218 -> B:38:0x01fe). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r23) {
        /*
            Method dump skipped, instructions count: 546
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CombineKt$combineInternal$2(Dispatcher$promoteAndExecute$Effects dispatcher$promoteAndExecute$Effects, boolean[] zArr, RemoveFromReadingListsDialog$Callback removeFromReadingListsDialog$Callback, Continuation continuation) {
        super(2, continuation);
        this.$arrayFactory = dispatcher$promoteAndExecute$Effects;
        this.$transform = zArr;
        this.$this_combineInternal = removeFromReadingListsDialog$Callback;
    }
}
