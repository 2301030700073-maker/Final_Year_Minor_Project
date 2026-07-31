package org.wikipedia.readinglist.db;

import androidx.sqlite.SQLiteConnection;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import org.wikipedia.readinglist.database.ReadingListPage;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class ReadingListPageDao_Impl$$ExternalSyntheticLambda1 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ ReadingListPageDao_Impl f$0;
    public final /* synthetic */ ReadingListPage f$1;

    public /* synthetic */ ReadingListPageDao_Impl$$ExternalSyntheticLambda1(ReadingListPageDao_Impl readingListPageDao_Impl, ReadingListPage readingListPage, int i) {
        this.$r8$classId = i;
        this.f$0 = readingListPageDao_Impl;
        this.f$1 = readingListPage;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        ReadingListPage readingListPage = this.f$1;
        ReadingListPageDao_Impl readingListPageDao_Impl = this.f$0;
        SQLiteConnection sQLiteConnection = (SQLiteConnection) obj;
        switch (i) {
            case 0:
                sQLiteConnection.getClass();
                readingListPageDao_Impl.__updateAdapterOfReadingListPage.handle(sQLiteConnection, readingListPage);
                return unit;
            case 1:
                sQLiteConnection.getClass();
                readingListPageDao_Impl.__deleteAdapterOfReadingListPage.handle(sQLiteConnection, readingListPage);
                return unit;
            default:
                sQLiteConnection.getClass();
                return Long.valueOf(readingListPageDao_Impl.__insertAdapterOfReadingListPage.insertAndReturnId(sQLiteConnection, readingListPage));
        }
    }
}
