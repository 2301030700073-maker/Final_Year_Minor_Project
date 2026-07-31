package androidx.work.impl.model;

import androidx.room.RoomDatabase;
import androidx.room.util.DBUtil;
import androidx.work.impl.model.WorkTagDao_Impl;
import kotlin.text.StringsKt__IndentKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class PreferenceDao_Impl {
    public final RoomDatabase __db;
    public final WorkTagDao_Impl.AnonymousClass1 __insertAdapterOfPreference = new WorkTagDao_Impl.AnonymousClass1(2);

    public PreferenceDao_Impl(RoomDatabase roomDatabase) {
        this.__db = roomDatabase;
    }

    public final Long getLongValue(String str) {
        return (Long) DBUtil.performBlocking(this.__db, true, false, new StringsKt__IndentKt$$ExternalSyntheticLambda0(str, 6));
    }
}
