package androidx.work.impl.model;

import androidx.compose.material3.IconKt$$ExternalSyntheticLambda1;
import androidx.room.RoomDatabase;
import androidx.room.util.DBUtil;
import androidx.work.impl.model.WorkTagDao_Impl;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class PreferenceDao_Impl {
    public final RoomDatabase __db;
    public final WorkTagDao_Impl.AnonymousClass1 __insertAdapterOfPreference = new WorkTagDao_Impl.AnonymousClass1(2);

    public PreferenceDao_Impl(RoomDatabase roomDatabase) {
        this.__db = roomDatabase;
    }

    public final Long getLongValue(String str) {
        return (Long) DBUtil.performBlocking(this.__db, true, false, new IconKt$$ExternalSyntheticLambda1(str, 10));
    }
}
