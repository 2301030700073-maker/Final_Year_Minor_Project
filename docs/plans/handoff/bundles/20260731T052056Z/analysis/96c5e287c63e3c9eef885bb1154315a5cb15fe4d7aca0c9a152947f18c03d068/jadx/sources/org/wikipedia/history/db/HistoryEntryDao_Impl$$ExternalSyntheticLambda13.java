package org.wikipedia.history.db;

import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class HistoryEntryDao_Impl$$ExternalSyntheticLambda13 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ String f$1;
    public final /* synthetic */ String f$2;
    public final /* synthetic */ String f$3;
    public final /* synthetic */ String f$4;

    public /* synthetic */ HistoryEntryDao_Impl$$ExternalSyntheticLambda13(int i, String str, String str2, String str3, String str4) {
        this.$r8$classId = i;
        this.f$1 = str;
        this.f$2 = str2;
        this.f$3 = str3;
        this.f$4 = str4;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        SQLiteStatement prepare;
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        String str = this.f$4;
        String str2 = this.f$3;
        String str3 = this.f$2;
        String str4 = this.f$1;
        SQLiteConnection sQLiteConnection = (SQLiteConnection) obj;
        switch (i) {
            case 0:
                sQLiteConnection.getClass();
                prepare = sQLiteConnection.prepare("DELETE FROM HistoryEntry WHERE authority = ? AND lang = ? AND namespace = ? AND apiTitle = ?");
                try {
                    prepare.bindText(1, str4);
                    prepare.bindText(2, str3);
                    if (str2 == null) {
                        prepare.bindNull(3);
                    } else {
                        prepare.bindText(3, str2);
                    }
                    prepare.bindText(4, str);
                    prepare.step();
                    prepare.close();
                    return unit;
                } finally {
                }
            default:
                sQLiteConnection.getClass();
                prepare = sQLiteConnection.prepare("UPDATE ReadingListPage SET thumbUrl = ?, description = ? WHERE lang = ? AND apiTitle = ?");
                try {
                    if (str4 == null) {
                        prepare.bindNull(1);
                    } else {
                        prepare.bindText(1, str4);
                    }
                    if (str3 == null) {
                        prepare.bindNull(2);
                    } else {
                        prepare.bindText(2, str3);
                    }
                    prepare.bindText(3, str2);
                    prepare.bindText(4, str);
                    prepare.step();
                    prepare.close();
                    return unit;
                } finally {
                }
        }
    }
}
