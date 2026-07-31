package androidx.compose.foundation;

import java.io.Serializable;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import org.wikipedia.readinglist.database.ReadingListPage;
import org.wikipedia.savedpages.SavedPageSyncService;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class MutatorMutex$mutateWith$2 extends SuspendLambda implements Function2 {
    public final /* synthetic */ Object $block;
    public final /* synthetic */ Serializable $priority;
    public final /* synthetic */ int $r8$classId = 0;
    public Object $receiver;
    public Object L$0;
    public Object L$1;
    public Object L$2;
    public Object L$3;
    public Object L$4;
    public int label;
    public Object this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MutatorMutex$mutateWith$2(MutatePriority mutatePriority, MutatorMutex mutatorMutex, Function2 function2, Object obj, Continuation continuation) {
        super(2, continuation);
        this.$priority = mutatePriority;
        this.this$0 = mutatorMutex;
        this.$block = function2;
        this.$receiver = obj;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        Object obj2 = this.$block;
        Serializable serializable = this.$priority;
        switch (i) {
            case 0:
                MutatorMutex$mutateWith$2 mutatorMutex$mutateWith$2 = new MutatorMutex$mutateWith$2((MutatePriority) serializable, (MutatorMutex) this.this$0, (Function2) obj2, this.$receiver, continuation);
                mutatorMutex$mutateWith$2.L$0 = obj;
                return mutatorMutex$mutateWith$2;
            default:
                MutatorMutex$mutateWith$2 mutatorMutex$mutateWith$22 = new MutatorMutex$mutateWith$2((ReadingListPage) serializable, (SavedPageSyncService) obj2, continuation);
                mutatorMutex$mutateWith$22.L$2 = obj;
                return mutatorMutex$mutateWith$22;
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
        return ((MutatorMutex$mutateWith$2) create(coroutineScope, continuation)).invokeSuspend(unit);
    }

    /* JADX WARN: Code restructure failed: missing block: B:121:0x0113, code lost:
    
        if (r2 == r3) goto L108;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x03b4, code lost:
    
        if (r0 != r3) goto L109;
     */
    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:115:0x014b  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0280  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x028e  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x02b9  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x034f  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0389  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x038e  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0223  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0230  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x023b  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0246  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0275  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0242  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0235  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0226  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0180 A[Catch: all -> 0x0193, TryCatch #3 {all -> 0x0193, blocks: (B:80:0x0167, B:81:0x017a, B:83:0x0180, B:85:0x018e, B:90:0x0197), top: B:79:0x0167 }] */
    /* JADX WARN: Removed duplicated region for block: B:93:0x01a5  */
    /* JADX WARN: Type inference failed for: r1v26 */
    /* JADX WARN: Type inference failed for: r1v29 */
    /* JADX WARN: Type inference failed for: r1v36, types: [java.util.Set] */
    /* JADX WARN: Type inference failed for: r1v69, types: [java.util.Set] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r35) {
        /*
            Method dump skipped, instructions count: 1238
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.MutatorMutex$mutateWith$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MutatorMutex$mutateWith$2(ReadingListPage readingListPage, SavedPageSyncService savedPageSyncService, Continuation continuation) {
        super(2, continuation);
        this.$priority = readingListPage;
        this.$block = savedPageSyncService;
    }
}
