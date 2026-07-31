package org.wikipedia.feed.personalization.interest;

import kotlin.coroutines.jvm.internal.ContinuationImpl;
import retrofit2.Retrofit;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class InterestSelectionRepository$deleteAllInterests$1 extends ContinuationImpl {
    public int label;
    public /* synthetic */ Object result;
    public final /* synthetic */ Retrofit this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InterestSelectionRepository$deleteAllInterests$1(Retrofit retrofit, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.this$0 = retrofit;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.deleteAllInterests(this);
    }
}
