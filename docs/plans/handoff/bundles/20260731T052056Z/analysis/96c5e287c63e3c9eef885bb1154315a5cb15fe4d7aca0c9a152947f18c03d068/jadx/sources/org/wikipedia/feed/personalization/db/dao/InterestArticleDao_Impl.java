package org.wikipedia.feed.personalization.db.dao;

import androidx.room.RoomDatabase;
import androidx.work.impl.model.WorkTagDao_Impl;
import okio.ByteString;
import org.wikipedia.talk.db.TalkTemplateDao_Impl;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class InterestArticleDao_Impl {
    public final RoomDatabase __db;
    public final ByteString.Companion __namespaceTypeConverter = new ByteString.Companion(14);
    public final WorkTagDao_Impl.AnonymousClass1 __insertAdapterOfInterestArticle = new WorkTagDao_Impl.AnonymousClass1(8, this);
    public final TalkTemplateDao_Impl.AnonymousClass2 __deleteAdapterOfInterestArticle = new TalkTemplateDao_Impl.AnonymousClass2(1, this);

    public InterestArticleDao_Impl(RoomDatabase roomDatabase) {
        this.__db = roomDatabase;
    }
}
