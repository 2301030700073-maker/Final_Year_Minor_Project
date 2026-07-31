package org.wikipedia.activitytab.timeline;

import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.history.db.HistoryEntryWithImageDao_Impl;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class UserContribPagingSource implements TimelineSource {
    public final HistoryEntryWithImageDao_Impl historyEntryWithImageDao;
    public final String userName;
    public final WikiSite wikiSite;

    public UserContribPagingSource(WikiSite wikiSite, String str, HistoryEntryWithImageDao_Impl historyEntryWithImageDao_Impl) {
        historyEntryWithImageDao_Impl.getClass();
        this.wikiSite = wikiSite;
        this.userName = str;
        this.historyEntryWithImageDao = historyEntryWithImageDao_Impl;
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x0240, code lost:
    
        if (r6 == r3) goto L72;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0214  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x02d4  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0150  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0170  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x017b  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x01d8 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:65:0x00d3  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x01f5  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0180  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0176  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0155  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x002e  */
    /* JADX WARN: Type inference failed for: r10v8, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r9v14, types: [java.util.Map] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x0240 -> B:13:0x0243). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:66:0x0134 -> B:45:0x013b). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:67:0x014a -> B:46:0x014e). Please report as a decompilation issue!!! */
    @Override // org.wikipedia.activitytab.timeline.TimelineSource
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.io.Serializable fetch(int r32, org.wikipedia.activitytab.timeline.Cursor r33, kotlin.coroutines.jvm.internal.ContinuationImpl r34) {
        /*
            Method dump skipped, instructions count: 762
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.activitytab.timeline.UserContribPagingSource.fetch(int, org.wikipedia.activitytab.timeline.Cursor, kotlin.coroutines.jvm.internal.ContinuationImpl):java.io.Serializable");
    }

    @Override // org.wikipedia.activitytab.timeline.TimelineSource
    public final String getId() {
        return "user_contrib";
    }
}
