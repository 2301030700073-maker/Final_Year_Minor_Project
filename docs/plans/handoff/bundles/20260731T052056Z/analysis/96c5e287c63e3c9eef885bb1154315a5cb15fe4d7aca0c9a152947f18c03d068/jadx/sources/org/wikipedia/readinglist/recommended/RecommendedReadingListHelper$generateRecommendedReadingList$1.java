package org.wikipedia.readinglist.recommended;

import java.util.Iterator;
import java.util.List;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.Ref$IntRef;
import org.wikipedia.readinglist.database.RecommendedPage;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class RecommendedReadingListHelper$generateRecommendedReadingList$1 extends ContinuationImpl {
    public int I$0;
    public int I$1;
    public int I$2;
    public int I$3;
    public int I$4;
    public int I$5;
    public List L$0;
    public List L$10;
    public List L$11;
    public Iterator L$12;
    public RecommendedPage L$15;
    public List L$2;
    public List L$3;
    public Ref$IntRef L$4;
    public List L$5;
    public List L$6;
    public Iterator L$7;
    public Object L$9;
    public boolean Z$0;
    public int label;
    public /* synthetic */ Object result;
    public final /* synthetic */ RecommendedReadingListHelper this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RecommendedReadingListHelper$generateRecommendedReadingList$1(RecommendedReadingListHelper recommendedReadingListHelper, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.this$0 = recommendedReadingListHelper;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.generateRecommendedReadingList(false, this);
    }
}
