package org.wikipedia.pageimages.db;

import java.util.Iterator;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.wikipedia.dataclient.Service;
import org.wikipedia.history.HistoryEntry;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class PageImageDao$upsertForTimeSpent$1 extends ContinuationImpl {
    public int I$0;
    public int I$1;
    public PageImageDao_Impl L$0;
    public HistoryEntry L$1;
    public Iterator L$4;
    public int label;
    public /* synthetic */ Object result;
    public final /* synthetic */ PageImageDao_Impl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PageImageDao$upsertForTimeSpent$1(PageImageDao_Impl pageImageDao_Impl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.this$0 = pageImageDao_Impl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return Service.CC.upsertForTimeSpent$suspendImpl(this.this$0, null, 0, this);
    }
}
