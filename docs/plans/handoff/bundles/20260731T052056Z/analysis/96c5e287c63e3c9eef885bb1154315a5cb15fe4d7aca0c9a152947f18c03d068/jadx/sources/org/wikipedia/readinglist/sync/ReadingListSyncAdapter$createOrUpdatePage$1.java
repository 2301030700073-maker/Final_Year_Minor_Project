package org.wikipedia.readinglist.sync;

import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.wikipedia.readinglist.database.ReadingList;
import org.wikipedia.readinglist.database.ReadingListPage;
import org.wikipedia.readinglist.sync.SyncedReadingLists;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ReadingListSyncAdapter$createOrUpdatePage$1 extends ContinuationImpl {
    public ReadingList L$0;
    public SyncedReadingLists.RemoteReadingListEntry L$1;
    public ReadingListPage L$3;
    public int label;
    public /* synthetic */ Object result;
    public final /* synthetic */ ReadingListSyncAdapter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ReadingListSyncAdapter$createOrUpdatePage$1(ReadingListSyncAdapter readingListSyncAdapter, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.this$0 = readingListSyncAdapter;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.createOrUpdatePage(null, null, this);
    }
}
