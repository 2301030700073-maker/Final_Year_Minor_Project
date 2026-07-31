package org.wikipedia.activitytab.timeline;

import org.wikipedia.history.db.HistoryEntryWithImageDao_Impl;
import org.wikipedia.readinglist.db.ReadingListPageDao_Impl;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ReadingListPagingSource implements TimelineSource {
    public final /* synthetic */ int $r8$classId = 1;
    public final Object dao;

    public ReadingListPagingSource(HistoryEntryWithImageDao_Impl historyEntryWithImageDao_Impl) {
        historyEntryWithImageDao_Impl.getClass();
        this.dao = historyEntryWithImageDao_Impl;
    }

    /* JADX WARN: Code restructure failed: missing block: B:45:0x005f, code lost:
    
        if (kotlinx.coroutines.AwaitKt.delay(500, r4) == r3) goto L29;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x00a5  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00f1  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0066  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0050  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0120  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0178 A[LOOP:1: B:57:0x0172->B:59:0x0178, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x01c2  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x01c4  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0134  */
    @Override // org.wikipedia.activitytab.timeline.TimelineSource
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.io.Serializable fetch(int r28, org.wikipedia.activitytab.timeline.Cursor r29, kotlin.coroutines.jvm.internal.ContinuationImpl r30) {
        /*
            Method dump skipped, instructions count: 476
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.activitytab.timeline.ReadingListPagingSource.fetch(int, org.wikipedia.activitytab.timeline.Cursor, kotlin.coroutines.jvm.internal.ContinuationImpl):java.io.Serializable");
    }

    @Override // org.wikipedia.activitytab.timeline.TimelineSource
    public final String getId() {
        switch (this.$r8$classId) {
            case 0:
                return "reading_list";
            default:
                return "history_entry";
        }
    }

    public ReadingListPagingSource(ReadingListPageDao_Impl readingListPageDao_Impl) {
        readingListPageDao_Impl.getClass();
        this.dao = readingListPageDao_Impl;
    }
}
