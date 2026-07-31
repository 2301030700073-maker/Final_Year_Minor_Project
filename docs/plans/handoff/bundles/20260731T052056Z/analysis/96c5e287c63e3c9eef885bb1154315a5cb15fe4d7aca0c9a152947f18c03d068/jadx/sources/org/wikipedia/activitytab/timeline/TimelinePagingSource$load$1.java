package org.wikipedia.activitytab.timeline;

import androidx.paging.PagingSource;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class TimelinePagingSource$load$1 extends ContinuationImpl {
    public int I$0;
    public PagingSource.LoadParams L$0;
    public TimelinePageKey L$1;
    public List L$2;
    public Map L$3;
    public Iterator L$5;
    public String L$8;
    public int label;
    public /* synthetic */ Object result;
    public final /* synthetic */ TimelinePagingSource this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TimelinePagingSource$load$1(TimelinePagingSource timelinePagingSource, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.this$0 = timelinePagingSource;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.load(null, this);
    }
}
