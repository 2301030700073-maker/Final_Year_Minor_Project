package org.wikipedia.activitytab.timeline;

import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class HistoryEntryPagingSource$fetch$1 extends ContinuationImpl {
    public int I$0;
    public int I$1;
    public Cursor L$0;
    public int label;
    public /* synthetic */ Object result;
    public final /* synthetic */ ReadingListPagingSource this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HistoryEntryPagingSource$fetch$1(ReadingListPagingSource readingListPagingSource, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.this$0 = readingListPagingSource;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.fetch(0, null, this);
    }
}
