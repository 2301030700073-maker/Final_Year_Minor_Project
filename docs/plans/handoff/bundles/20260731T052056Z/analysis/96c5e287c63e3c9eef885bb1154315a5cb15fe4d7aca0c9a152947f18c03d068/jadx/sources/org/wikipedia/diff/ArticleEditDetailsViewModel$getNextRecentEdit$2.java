package org.wikipedia.diff;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ArticleEditDetailsViewModel$getNextRecentEdit$2 extends SuspendLambda implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public int label;
    public final /* synthetic */ ArticleEditDetailsViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ ArticleEditDetailsViewModel$getNextRecentEdit$2(ArticleEditDetailsViewModel articleEditDetailsViewModel, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.this$0 = articleEditDetailsViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        ArticleEditDetailsViewModel articleEditDetailsViewModel = this.this$0;
        switch (i) {
            case 0:
                return new ArticleEditDetailsViewModel$getNextRecentEdit$2(articleEditDetailsViewModel, continuation, 0);
            default:
                return new ArticleEditDetailsViewModel$getNextRecentEdit$2(articleEditDetailsViewModel, continuation, 1);
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
        return ((ArticleEditDetailsViewModel$getNextRecentEdit$2) create(coroutineScope, continuation)).invokeSuspend(unit);
    }

    /* JADX WARN: Code restructure failed: missing block: B:48:0x009a, code lost:
    
        if (r12 == r11) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:?, code lost:
    
        return r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0072, code lost:
    
        if (r12 == r11) goto L25;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r12) {
        /*
            Method dump skipped, instructions count: 334
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.diff.ArticleEditDetailsViewModel$getNextRecentEdit$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
