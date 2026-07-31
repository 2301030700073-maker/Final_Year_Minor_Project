package androidx.work.impl.model;

import androidx.room.RoomDatabase;
import androidx.work.impl.model.WorkTagDao_Impl;
import kotlin.ExceptionsKt;
import kotlin.text.StringsKt__IndentKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class PreferenceDao_Impl {
    public final RoomDatabase __db;
    public final WorkTagDao_Impl.AnonymousClass1 __insertAdapterOfPreference = new WorkTagDao_Impl.AnonymousClass1(2);

    public PreferenceDao_Impl(RoomDatabase roomDatabase) {
        this.__db = roomDatabase;
    }

    public final Long getLongValue(String str) {
        return (Long) ExceptionsKt.performBlocking(this.__db, true, false, new StringsKt__IndentKt$$ExternalSyntheticLambda0(9, str));
    }
}
