package org.wikipedia.readinglist.db;

import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.wikipedia.dataclient.Service;
import org.wikipedia.page.PageTitle;
import org.wikipedia.readinglist.database.ReadingList;
import org.wikipedia.readinglist.database.ReadingListPage;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ReadingListPageDao$movePageToList$1 extends ContinuationImpl {
    public ReadingListPageDao_Impl L$0;
    public ReadingList L$1;
    public ReadingList L$2;
    public PageTitle L$3;
    public ReadingListPage L$4;
    public int label;
    public /* synthetic */ Object result;
    public final /* synthetic */ ReadingListPageDao_Impl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ReadingListPageDao$movePageToList$1(ReadingListPageDao_Impl readingListPageDao_Impl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.this$0 = readingListPageDao_Impl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return Service.CC.movePageToList$suspendImpl(this.this$0, null, null, null, this);
    }
}
