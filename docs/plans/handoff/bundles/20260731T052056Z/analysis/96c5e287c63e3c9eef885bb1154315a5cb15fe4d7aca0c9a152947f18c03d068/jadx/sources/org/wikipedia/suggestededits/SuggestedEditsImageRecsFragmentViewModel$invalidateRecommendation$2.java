package org.wikipedia.suggestededits;

import java.util.List;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SuggestedEditsImageRecsFragmentViewModel$invalidateRecommendation$2 extends SuspendLambda implements Function2 {
    public final /* synthetic */ boolean $accepted;
    public final /* synthetic */ List $reasonCodes;
    public final /* synthetic */ long $revId;
    public String L$0;
    public int label;
    public final /* synthetic */ SuggestedEditsImageRecsFragmentViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SuggestedEditsImageRecsFragmentViewModel$invalidateRecommendation$2(SuggestedEditsImageRecsFragmentViewModel suggestedEditsImageRecsFragmentViewModel, long j, boolean z, List list, Continuation continuation) {
        super(2, continuation);
        this.this$0 = suggestedEditsImageRecsFragmentViewModel;
        this.$revId = j;
        this.$accepted = z;
        this.$reasonCodes = list;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new SuggestedEditsImageRecsFragmentViewModel$invalidateRecommendation$2(this.this$0, this.$revId, this.$accepted, this.$reasonCodes, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((SuggestedEditsImageRecsFragmentViewModel$invalidateRecommendation$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:48:0x0040, code lost:
    
        if (r0 == r6) goto L42;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0101 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0102 A[RETURN] */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v2 */
    /* JADX WARN: Type inference failed for: r3v3 */
    /* JADX WARN: Type inference failed for: r3v6, types: [kotlin.collections.EmptyList] */
    /* JADX WARN: Type inference failed for: r3v7, types: [java.util.ArrayList] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r19) {
        /*
            Method dump skipped, instructions count: 259
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.suggestededits.SuggestedEditsImageRecsFragmentViewModel$invalidateRecommendation$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
