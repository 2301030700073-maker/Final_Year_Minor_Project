package org.wikipedia.readinglist.db;

import androidx.sqlite.SQLiteConnection;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import org.wikipedia.readinglist.database.ReadingList;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class ReadingListDao_Impl$$ExternalSyntheticLambda0 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ ReadingListDao_Impl f$0;
    public final /* synthetic */ ReadingList f$1;

    public /* synthetic */ ReadingListDao_Impl$$ExternalSyntheticLambda0(ReadingListDao_Impl readingListDao_Impl, ReadingList readingList, int i) {
        this.$r8$classId = i;
        this.f$0 = readingListDao_Impl;
        this.f$1 = readingList;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        ReadingList readingList = this.f$1;
        ReadingListDao_Impl readingListDao_Impl = this.f$0;
        SQLiteConnection sQLiteConnection = (SQLiteConnection) obj;
        switch (i) {
            case 0:
                sQLiteConnection.getClass();
                break;
            case 1:
                sQLiteConnection.getClass();
                readingListDao_Impl.__updateAdapterOfReadingList.handle(sQLiteConnection, readingList);
                break;
            default:
                sQLiteConnection.getClass();
                readingListDao_Impl.__deleteAdapterOfReadingList.handle(sQLiteConnection, readingList);
                break;
        }
        return unit;
    }
}
