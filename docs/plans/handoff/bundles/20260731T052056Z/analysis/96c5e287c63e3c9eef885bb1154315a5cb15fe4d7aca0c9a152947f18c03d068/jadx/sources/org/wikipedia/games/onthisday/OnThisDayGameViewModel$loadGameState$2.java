package org.wikipedia.games.onthisday;

import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import org.wikipedia.dataclient.page.PageSummary;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class OnThisDayGameViewModel$loadGameState$2 extends SuspendLambda implements Function2 {
    public final /* synthetic */ boolean $useDateFromState;
    public int I$0;
    public Object L$0;
    public ArrayList L$1;
    public OnThisDayGameViewModel L$2;
    public Iterator L$3;
    public PageSummary L$5;
    public int label;
    public final /* synthetic */ OnThisDayGameViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OnThisDayGameViewModel$loadGameState$2(OnThisDayGameViewModel onThisDayGameViewModel, boolean z, Continuation continuation) {
        super(2, continuation);
        this.this$0 = onThisDayGameViewModel;
        this.$useDateFromState = z;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new OnThisDayGameViewModel$loadGameState$2(this.this$0, this.$useDateFromState, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((OnThisDayGameViewModel$loadGameState$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x019e, code lost:
    
        if (r9 == r4) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x01ba, code lost:
    
        if (r2.publishGameState(r7, r17) == r4) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00f4, code lost:
    
        if (r3 == r4) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00cc, code lost:
    
        if (r5 != r4) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x006b, code lost:
    
        if (r2.migrateInProgressGameFromPrefsToDatabase(r17) == r4) goto L61;
     */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0175  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x01a9  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x013b  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x019e -> B:10:0x01a1). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r18) {
        /*
            Method dump skipped, instructions count: 466
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.games.onthisday.OnThisDayGameViewModel$loadGameState$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
