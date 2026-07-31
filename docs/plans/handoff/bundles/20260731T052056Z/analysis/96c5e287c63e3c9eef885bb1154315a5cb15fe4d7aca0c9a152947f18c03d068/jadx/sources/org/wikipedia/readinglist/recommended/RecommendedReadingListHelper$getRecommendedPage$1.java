package org.wikipedia.readinglist.recommended;

import java.util.Collection;
import java.util.Iterator;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.wikipedia.dataclient.WikiSite;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class RecommendedReadingListHelper$getRecommendedPage$1 extends ContinuationImpl {
    public int I$0;
    public int I$1;
    public int I$2;
    public int I$3;
    public WikiSite L$1;
    public Collection L$5;
    public Iterator L$6;
    public Object L$7;
    public int label;
    public /* synthetic */ Object result;
    public final /* synthetic */ RecommendedReadingListHelper this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RecommendedReadingListHelper$getRecommendedPage$1(RecommendedReadingListHelper recommendedReadingListHelper, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.this$0 = recommendedReadingListHelper;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.getRecommendedPage(null, 0, 0, this);
    }
}
