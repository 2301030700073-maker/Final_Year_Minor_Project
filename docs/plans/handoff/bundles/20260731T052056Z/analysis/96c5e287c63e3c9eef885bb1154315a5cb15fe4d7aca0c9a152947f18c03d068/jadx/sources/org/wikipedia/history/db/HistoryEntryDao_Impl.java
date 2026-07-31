package org.wikipedia.history.db;

import androidx.room.RoomDatabase;
import androidx.work.impl.model.WorkTagDao_Impl;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class HistoryEntryDao_Impl {
    public final RoomDatabase __db;
    public final WorkTagDao_Impl.AnonymousClass1 __insertAdapterOfHistoryEntry = new WorkTagDao_Impl.AnonymousClass1(11, this);

    public HistoryEntryDao_Impl(RoomDatabase roomDatabase) {
        this.__db = roomDatabase;
    }
}
