package org.wikipedia.games.onthisday;

import androidx.lifecycle.MutableLiveData;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.wikipedia.games.onthisday.OnThisDayGameViewModel;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class OnThisDayGameViewModel$publishGameState$1 extends ContinuationImpl {
    public MutableLiveData L$1;
    public OnThisDayGameViewModel.GameState L$2;
    public int label;
    public /* synthetic */ Object result;
    public final /* synthetic */ OnThisDayGameViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OnThisDayGameViewModel$publishGameState$1(OnThisDayGameViewModel onThisDayGameViewModel, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.this$0 = onThisDayGameViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.publishGameState(null, this);
    }
}
