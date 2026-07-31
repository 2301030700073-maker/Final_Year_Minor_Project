package org.wikipedia.diff;

import androidx.compose.foundation.gestures.ScrollingLogic;
import androidx.compose.foundation.gestures.ScrollingLogic$nestedScrollScope$1;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$LongRef;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ArticleEditDetailsViewModel$getRevisionDetails$2 extends SuspendLambda implements Function2 {
    public final /* synthetic */ int $r8$classId = 1;
    public final /* synthetic */ long $revisionIdFrom;
    public long $revisionIdTo;
    public /* synthetic */ Object L$0;
    public Object L$1;
    public Object L$3;
    public Object L$4;
    public int label;
    public final /* synthetic */ Object this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ArticleEditDetailsViewModel$getRevisionDetails$2(ScrollingLogic scrollingLogic, Ref$LongRef ref$LongRef, long j, Continuation continuation) {
        super(2, continuation);
        this.L$4 = scrollingLogic;
        this.this$0 = ref$LongRef;
        this.$revisionIdFrom = j;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        Object obj2 = this.this$0;
        switch (i) {
            case 0:
                ArticleEditDetailsViewModel$getRevisionDetails$2 articleEditDetailsViewModel$getRevisionDetails$2 = new ArticleEditDetailsViewModel$getRevisionDetails$2((ArticleEditDetailsViewModel) obj2, this.$revisionIdTo, this.$revisionIdFrom, continuation);
                articleEditDetailsViewModel$getRevisionDetails$2.L$0 = obj;
                return articleEditDetailsViewModel$getRevisionDetails$2;
            default:
                ArticleEditDetailsViewModel$getRevisionDetails$2 articleEditDetailsViewModel$getRevisionDetails$22 = new ArticleEditDetailsViewModel$getRevisionDetails$2((ScrollingLogic) this.L$4, (Ref$LongRef) obj2, this.$revisionIdFrom, continuation);
                articleEditDetailsViewModel$getRevisionDetails$22.L$0 = obj;
                return articleEditDetailsViewModel$getRevisionDetails$22;
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                return ((ArticleEditDetailsViewModel$getRevisionDetails$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            default:
                return ((ArticleEditDetailsViewModel$getRevisionDetails$2) create((ScrollingLogic$nestedScrollScope$1) obj, (Continuation) obj2)).invokeSuspend(unit);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:84:0x018e, code lost:
    
        if (r1 == r14) goto L78;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x0209, code lost:
    
        if (r0 == r14) goto L78;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x010a, code lost:
    
        if (r3 == r14) goto L78;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:41:0x024e  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0251  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x01bb  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x01e4  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x016c  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x01e8  */
    /* JADX WARN: Type inference failed for: r0v15, types: [int] */
    /* JADX WARN: Type inference failed for: r0v36 */
    /* JADX WARN: Type inference failed for: r0v43 */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Type inference failed for: r13v3, types: [boolean] */
    /* JADX WARN: Type inference failed for: r13v4 */
    /* JADX WARN: Type inference failed for: r1v10 */
    /* JADX WARN: Type inference failed for: r1v11, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v12 */
    /* JADX WARN: Type inference failed for: r1v13, types: [org.wikipedia.dataclient.mwapi.MwQueryPage] */
    /* JADX WARN: Type inference failed for: r1v24, types: [org.wikipedia.dataclient.mwapi.MwQueryPage] */
    /* JADX WARN: Type inference failed for: r2v11, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r2v14, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r8v12, types: [java.lang.Object, org.wikipedia.dataclient.mwapi.MwQueryPage] */
    /* JADX WARN: Type inference failed for: r8v13 */
    /* JADX WARN: Type inference failed for: r8v24 */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r20) {
        /*
            Method dump skipped, instructions count: 626
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.diff.ArticleEditDetailsViewModel$getRevisionDetails$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ArticleEditDetailsViewModel$getRevisionDetails$2(ArticleEditDetailsViewModel articleEditDetailsViewModel, long j, long j2, Continuation continuation) {
        super(2, continuation);
        this.this$0 = articleEditDetailsViewModel;
        this.$revisionIdTo = j;
        this.$revisionIdFrom = j2;
    }
}
