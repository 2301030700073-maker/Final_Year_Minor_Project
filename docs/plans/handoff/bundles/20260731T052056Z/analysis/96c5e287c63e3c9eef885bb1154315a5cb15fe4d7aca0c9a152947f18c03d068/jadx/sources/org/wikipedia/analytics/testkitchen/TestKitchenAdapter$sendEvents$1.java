package org.wikipedia.analytics.testkitchen;

import java.util.List;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class TestKitchenAdapter$sendEvents$1 extends ContinuationImpl {
    public List L$1;
    public int label;
    public /* synthetic */ Object result;
    public final /* synthetic */ TestKitchenAdapter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TestKitchenAdapter$sendEvents$1(TestKitchenAdapter testKitchenAdapter, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.this$0 = testKitchenAdapter;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.sendEvents(null, null, this);
    }
}
