package org.wikipedia.history.db;

import androidx.room.RoomDatabase;
import org.wikipedia.login.LoginClient;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class HistoryEntryWithImageDao_Impl {
    public final LoginClient __dateTypeConverter = new LoginClient(15);
    public final RoomDatabase __db;

    public HistoryEntryWithImageDao_Impl(RoomDatabase roomDatabase) {
        this.__db = roomDatabase;
    }
}
