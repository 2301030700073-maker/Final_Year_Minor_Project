package kotlinx.coroutines;

import java.util.Iterator;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.sequences.SequenceBuilderIterator;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class JobSupport$children$1 extends RestrictedSuspendLambda implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public int I$0;
    public int I$1;
    public Object L$0;
    public Object L$3;
    public Object L$4;
    public int label;
    public final /* synthetic */ Object this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ JobSupport$children$1(Object obj, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.this$0 = obj;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        Object obj2 = this.this$0;
        switch (i) {
            case 0:
                JobSupport$children$1 jobSupport$children$1 = new JobSupport$children$1((JobSupport) obj2, continuation, 0);
                jobSupport$children$1.L$0 = obj;
                return jobSupport$children$1;
            default:
                JobSupport$children$1 jobSupport$children$12 = new JobSupport$children$1((Iterator) obj2, continuation, 1);
                jobSupport$children$12.L$4 = obj;
                return jobSupport$children$12;
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        SequenceBuilderIterator sequenceBuilderIterator = (SequenceBuilderIterator) obj;
        Continuation continuation = (Continuation) obj2;
        switch (i) {
        }
        return ((JobSupport$children$1) create(sequenceBuilderIterator, continuation)).invokeSuspend(unit);
    }

    /* JADX WARN: Removed duplicated region for block: B:87:0x01d4  */
    /* JADX WARN: Removed duplicated region for block: B:92:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:72:0x01d6 -> B:68:0x01ec). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r20) {
        /*
            Method dump skipped, instructions count: 504
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.JobSupport$children$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
