package org.wikipedia.games.db;

import androidx.room.RoomDatabase;
import androidx.work.impl.model.WorkTagDao_Impl;
import coil3.svg.internal.AndroidSvg;
import org.wikipedia.talk.db.TalkTemplateDao_Impl;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class DailyGameHistoryDao_Impl {
    public final RoomDatabase __db;
    public final AndroidSvg __upsertAdapterOfDailyGameHistory = new AndroidSvg(new WorkTagDao_Impl.AnonymousClass1(10), new TalkTemplateDao_Impl.AnonymousClass2(3));

    public DailyGameHistoryDao_Impl(RoomDatabase roomDatabase) {
        this.__db = roomDatabase;
    }
}
