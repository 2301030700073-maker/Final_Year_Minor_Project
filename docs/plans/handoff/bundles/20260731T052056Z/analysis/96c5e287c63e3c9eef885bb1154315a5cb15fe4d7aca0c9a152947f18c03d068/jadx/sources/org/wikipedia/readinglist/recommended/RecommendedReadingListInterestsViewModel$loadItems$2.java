package org.wikipedia.readinglist.recommended;

import java.util.Iterator;
import java.util.List;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class RecommendedReadingListInterestsViewModel$loadItems$2 extends SuspendLambda implements Function2 {
    public int I$0;
    public int I$1;
    public int I$2;
    public List L$0;
    public List L$1;
    public Object L$2;
    public Iterator L$4;
    public int label;
    public final /* synthetic */ RecommendedReadingListInterestsViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RecommendedReadingListInterestsViewModel$loadItems$2(RecommendedReadingListInterestsViewModel recommendedReadingListInterestsViewModel, Continuation continuation) {
        super(2, continuation);
        this.this$0 = recommendedReadingListInterestsViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new RecommendedReadingListInterestsViewModel$loadItems$2(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((RecommendedReadingListInterestsViewModel$loadItems$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:130:0x01b2, code lost:
    
        if (r4 == r3) goto L88;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0289, code lost:
    
        if (r6 == r3) goto L88;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:106:0x010e A[LOOP:6: B:104:0x0108->B:106:0x010e, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:110:0x0145  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x018e  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0244  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x02ec  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x01e1  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0210  */
    /* JADX WARN: Type inference failed for: r14v17, types: [java.util.List] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x0289 -> B:8:0x028c). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r25) {
        /*
            Method dump skipped, instructions count: 818
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.readinglist.recommended.RecommendedReadingListInterestsViewModel$loadItems$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
