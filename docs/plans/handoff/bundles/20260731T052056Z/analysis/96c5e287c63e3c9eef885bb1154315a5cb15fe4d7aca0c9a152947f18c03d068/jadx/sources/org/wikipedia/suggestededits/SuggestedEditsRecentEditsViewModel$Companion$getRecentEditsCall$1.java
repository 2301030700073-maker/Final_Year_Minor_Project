package org.wikipedia.suggestededits;

import java.util.List;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.wikipedia.dataclient.Service;
import org.wikipedia.dataclient.mwapi.MwQueryResponse;
import org.wikipedia.suggestededits.SuggestedEditsRecentEditsViewModel;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SuggestedEditsRecentEditsViewModel$Companion$getRecentEditsCall$1 extends ContinuationImpl {
    public int I$0;
    public List L$4;
    public Service L$5;
    public MwQueryResponse L$6;
    public List L$7;
    public List L$8;
    public int label;
    public /* synthetic */ Object result;
    public final /* synthetic */ SuggestedEditsRecentEditsViewModel.Companion this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SuggestedEditsRecentEditsViewModel$Companion$getRecentEditsCall$1(SuggestedEditsRecentEditsViewModel.Companion companion, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.this$0 = companion;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.getRecentEditsCall(null, 0, null, null, null, null, this);
    }
}
