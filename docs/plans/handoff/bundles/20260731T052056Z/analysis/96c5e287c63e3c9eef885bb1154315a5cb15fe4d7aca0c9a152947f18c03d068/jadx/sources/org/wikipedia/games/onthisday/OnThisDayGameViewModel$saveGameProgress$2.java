package org.wikipedia.games.onthisday;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class OnThisDayGameViewModel$saveGameProgress$2 extends SuspendLambda implements Function2 {
    public final /* synthetic */ int $nextQuestionIndex;
    public final /* synthetic */ int $status;
    public int label;
    public final /* synthetic */ OnThisDayGameViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OnThisDayGameViewModel$saveGameProgress$2(OnThisDayGameViewModel onThisDayGameViewModel, int i, int i2, Continuation continuation) {
        super(2, continuation);
        this.this$0 = onThisDayGameViewModel;
        this.$status = i;
        this.$nextQuestionIndex = i2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new OnThisDayGameViewModel$saveGameProgress$2(this.this$0, this.$status, this.$nextQuestionIndex, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((OnThisDayGameViewModel$saveGameProgress$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(18:0|1|(1:(1:4)(2:35|36))(4:37|(1:39)(1:85)|40|(7:42|(3:68|(3:71|(1:80)(3:76|77|78)|69)|82)(1:46)|47|(1:49)(1:67)|50|51|(4:53|(1:55)(3:59|60|61)|56|(1:58))(2:65|66))(2:83|84))|5|(1:7)(1:34)|8|(1:10)|11|(10:29|30|14|(1:16)(1:28)|17|18|19|(1:21)|22|23)|13|14|(0)(0)|17|18|19|(0)|22|23) */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x016d, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x016e, code lost:
    
        org.wikipedia.util.log.L.w(r0);
        r6 = null;
     */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0129  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0175  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x012f  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r22) {
        /*
            Method dump skipped, instructions count: 392
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.games.onthisday.OnThisDayGameViewModel$saveGameProgress$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
