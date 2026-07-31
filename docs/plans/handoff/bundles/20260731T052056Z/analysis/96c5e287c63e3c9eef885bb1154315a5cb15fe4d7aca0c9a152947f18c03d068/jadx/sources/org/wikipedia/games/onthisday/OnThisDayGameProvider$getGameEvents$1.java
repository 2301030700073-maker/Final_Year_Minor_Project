package org.wikipedia.games.onthisday;

import j$.time.LocalDate;
import java.util.ArrayList;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class OnThisDayGameProvider$getGameEvents$1 extends ContinuationImpl {
    public int I$0;
    public int I$1;
    public LocalDate L$1;
    public ArrayList L$2;
    public int label;
    public /* synthetic */ Object result;
    public final /* synthetic */ OnThisDayGameProvider this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OnThisDayGameProvider$getGameEvents$1(OnThisDayGameProvider onThisDayGameProvider, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.this$0 = onThisDayGameProvider;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.getGameEvents(null, null, this);
    }
}
