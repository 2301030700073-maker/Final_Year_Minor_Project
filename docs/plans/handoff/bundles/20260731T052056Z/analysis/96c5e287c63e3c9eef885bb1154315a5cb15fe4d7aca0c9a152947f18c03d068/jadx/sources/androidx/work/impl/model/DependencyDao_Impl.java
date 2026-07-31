package androidx.work.impl.model;

import androidx.room.RoomDatabase;
import androidx.work.impl.model.WorkTagDao_Impl;
import java.util.List;
import kotlin.ExceptionsKt;
import kotlin.text.StringsKt__IndentKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class DependencyDao_Impl {
    public final RoomDatabase __db;
    public final WorkTagDao_Impl.AnonymousClass1 __insertAdapterOfDependency = new WorkTagDao_Impl.AnonymousClass1(1);

    public DependencyDao_Impl(RoomDatabase roomDatabase) {
        this.__db = roomDatabase;
    }

    public final List getDependentWorkIds(String str) {
        str.getClass();
        return (List) ExceptionsKt.performBlocking(this.__db, true, false, new StringsKt__IndentKt$$ExternalSyntheticLambda0(7, str));
    }
}
