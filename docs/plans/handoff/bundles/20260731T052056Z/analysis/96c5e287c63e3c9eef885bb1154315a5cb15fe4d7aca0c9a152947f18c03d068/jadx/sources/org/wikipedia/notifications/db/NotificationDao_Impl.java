package org.wikipedia.notifications.db;

import androidx.room.RoomDatabase;
import androidx.work.impl.model.WorkTagDao_Impl;
import okio.Path;
import org.wikipedia.talk.db.TalkTemplateDao_Impl;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class NotificationDao_Impl {
    public final RoomDatabase __db;
    public final Path.Companion __notificationTypeConverters = new Path.Companion(15);
    public final WorkTagDao_Impl.AnonymousClass1 __insertAdapterOfNotification = new WorkTagDao_Impl.AnonymousClass1(12, this);
    public final TalkTemplateDao_Impl.AnonymousClass2 __updateAdapterOfNotification = new TalkTemplateDao_Impl.AnonymousClass2(4, this);

    public NotificationDao_Impl(RoomDatabase roomDatabase) {
        this.__db = roomDatabase;
    }
}
