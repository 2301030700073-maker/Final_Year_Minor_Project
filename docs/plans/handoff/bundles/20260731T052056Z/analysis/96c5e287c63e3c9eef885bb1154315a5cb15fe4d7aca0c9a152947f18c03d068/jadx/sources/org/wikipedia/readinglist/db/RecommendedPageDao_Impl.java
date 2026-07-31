package org.wikipedia.readinglist.db;

import androidx.room.RoomDatabase;
import androidx.work.impl.model.WorkTagDao_Impl;
import org.wikipedia.talk.db.TalkTemplateDao_Impl;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class RecommendedPageDao_Impl {
    public final RoomDatabase __db;
    public final WorkTagDao_Impl.AnonymousClass1 __insertAdapterOfRecommendedPage = new WorkTagDao_Impl.AnonymousClass1(17, this);
    public final TalkTemplateDao_Impl.AnonymousClass2 __updateAdapterOfRecommendedPage = new TalkTemplateDao_Impl.AnonymousClass2(11, this);

    public RecommendedPageDao_Impl(RoomDatabase roomDatabase) {
        this.__db = roomDatabase;
    }
}
