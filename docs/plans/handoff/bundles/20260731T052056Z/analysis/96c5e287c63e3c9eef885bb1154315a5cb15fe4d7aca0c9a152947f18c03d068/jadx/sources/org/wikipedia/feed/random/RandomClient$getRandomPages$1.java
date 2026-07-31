package org.wikipedia.feed.random;

import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.wikipedia.dataclient.WikiSite;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class RandomClient$getRandomPages$1 extends ContinuationImpl {
    public int I$0;
    public WikiSite L$0;
    public int label;
    public /* synthetic */ Object result;
    public final /* synthetic */ RandomClient this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RandomClient$getRandomPages$1(RandomClient randomClient, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.this$0 = randomClient;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.getRandomPages(null, 0, this);
    }
}
