package org.wikipedia.feed.personalization.db.dao;

import androidx.room.RoomDatabase;
import androidx.work.impl.model.WorkTagDao_Impl;
import org.wikipedia.talk.db.TalkTemplateDao_Impl;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class InterestTopicDao_Impl {
    public final RoomDatabase __db;
    public final WorkTagDao_Impl.AnonymousClass1 __insertAdapterOfInterestTopic = new WorkTagDao_Impl.AnonymousClass1(9);
    public final TalkTemplateDao_Impl.AnonymousClass2 __deleteAdapterOfInterestTopic = new TalkTemplateDao_Impl.AnonymousClass2(2);

    public InterestTopicDao_Impl(RoomDatabase roomDatabase) {
        this.__db = roomDatabase;
    }
}
