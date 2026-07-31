package org.wikipedia.games.db;

import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import kotlin.UnsignedKt;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class DailyGameHistoryDao_Impl$$ExternalSyntheticLambda1 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ int f$1;
    public final /* synthetic */ String f$2;
    public final /* synthetic */ int f$3;
    public final /* synthetic */ int f$4;
    public final /* synthetic */ int f$5;

    public /* synthetic */ DailyGameHistoryDao_Impl$$ExternalSyntheticLambda1(int i, int i2, int i3, int i4, int i5, String str) {
        this.$r8$classId = i5;
        this.f$1 = i;
        this.f$2 = str;
        this.f$3 = i2;
        this.f$4 = i3;
        this.f$5 = i4;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r17v0, types: [org.wikipedia.games.db.DailyGameHistory] */
    /* JADX WARN: Type inference failed for: r17v1, types: [org.wikipedia.games.db.DailyGameHistory] */
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        SQLiteStatement prepare;
        int i = this.$r8$classId;
        int i2 = this.f$5;
        int i3 = this.f$4;
        int i4 = this.f$3;
        String str = this.f$2;
        int i5 = this.f$1;
        switch (i) {
            case 0:
                SQLiteConnection sQLiteConnection = (SQLiteConnection) obj;
                sQLiteConnection.getClass();
                prepare = sQLiteConnection.prepare("SELECT * FROM DailyGameHistory WHERE gameName = ? AND language = ? AND year = ? AND month = ? AND day = ?");
                try {
                    prepare.bindLong(i5, 1);
                    prepare.bindText(2, str);
                    prepare.bindLong(i4, 3);
                    prepare.bindLong(i3, 4);
                    prepare.bindLong(i2, 5);
                    int columnIndexOrThrow = UnsignedKt.getColumnIndexOrThrow(prepare, "id");
                    int columnIndexOrThrow2 = UnsignedKt.getColumnIndexOrThrow(prepare, "gameName");
                    int columnIndexOrThrow3 = UnsignedKt.getColumnIndexOrThrow(prepare, "language");
                    int columnIndexOrThrow4 = UnsignedKt.getColumnIndexOrThrow(prepare, "year");
                    int columnIndexOrThrow5 = UnsignedKt.getColumnIndexOrThrow(prepare, "month");
                    int columnIndexOrThrow6 = UnsignedKt.getColumnIndexOrThrow(prepare, "day");
                    int columnIndexOrThrow7 = UnsignedKt.getColumnIndexOrThrow(prepare, "score");
                    int columnIndexOrThrow8 = UnsignedKt.getColumnIndexOrThrow(prepare, "playType");
                    int columnIndexOrThrow9 = UnsignedKt.getColumnIndexOrThrow(prepare, "gameData");
                    int columnIndexOrThrow10 = UnsignedKt.getColumnIndexOrThrow(prepare, "status");
                    int columnIndexOrThrow11 = UnsignedKt.getColumnIndexOrThrow(prepare, "currentQuestionIndex");
                    if (prepare.step()) {
                        r16 = new DailyGameHistory((int) prepare.getLong(columnIndexOrThrow), (int) prepare.getLong(columnIndexOrThrow2), prepare.getText(columnIndexOrThrow3), (int) prepare.getLong(columnIndexOrThrow4), (int) prepare.getLong(columnIndexOrThrow5), (int) prepare.getLong(columnIndexOrThrow6), (int) prepare.getLong(columnIndexOrThrow7), (int) prepare.getLong(columnIndexOrThrow8), prepare.isNull(columnIndexOrThrow9) ? null : prepare.getText(columnIndexOrThrow9), (int) prepare.getLong(columnIndexOrThrow10), (int) prepare.getLong(columnIndexOrThrow11));
                    }
                    return r16;
                } finally {
                }
            default:
                SQLiteConnection sQLiteConnection2 = (SQLiteConnection) obj;
                sQLiteConnection2.getClass();
                prepare = sQLiteConnection2.prepare("SELECT * FROM DailyGameHistory WHERE gameName = ? AND language = ? AND year = ? AND month = ? AND day = ?");
                try {
                    prepare.bindLong(i5, 1);
                    prepare.bindText(2, str);
                    prepare.bindLong(i4, 3);
                    prepare.bindLong(i3, 4);
                    prepare.bindLong(i2, 5);
                    int columnIndexOrThrow12 = UnsignedKt.getColumnIndexOrThrow(prepare, "id");
                    int columnIndexOrThrow13 = UnsignedKt.getColumnIndexOrThrow(prepare, "gameName");
                    int columnIndexOrThrow14 = UnsignedKt.getColumnIndexOrThrow(prepare, "language");
                    int columnIndexOrThrow15 = UnsignedKt.getColumnIndexOrThrow(prepare, "year");
                    int columnIndexOrThrow16 = UnsignedKt.getColumnIndexOrThrow(prepare, "month");
                    int columnIndexOrThrow17 = UnsignedKt.getColumnIndexOrThrow(prepare, "day");
                    int columnIndexOrThrow18 = UnsignedKt.getColumnIndexOrThrow(prepare, "score");
                    int columnIndexOrThrow19 = UnsignedKt.getColumnIndexOrThrow(prepare, "playType");
                    int columnIndexOrThrow20 = UnsignedKt.getColumnIndexOrThrow(prepare, "gameData");
                    int columnIndexOrThrow21 = UnsignedKt.getColumnIndexOrThrow(prepare, "status");
                    int columnIndexOrThrow22 = UnsignedKt.getColumnIndexOrThrow(prepare, "currentQuestionIndex");
                    if (prepare.step()) {
                        r16 = new DailyGameHistory((int) prepare.getLong(columnIndexOrThrow12), (int) prepare.getLong(columnIndexOrThrow13), prepare.getText(columnIndexOrThrow14), (int) prepare.getLong(columnIndexOrThrow15), (int) prepare.getLong(columnIndexOrThrow16), (int) prepare.getLong(columnIndexOrThrow17), (int) prepare.getLong(columnIndexOrThrow18), (int) prepare.getLong(columnIndexOrThrow19), prepare.isNull(columnIndexOrThrow20) ? null : prepare.getText(columnIndexOrThrow20), (int) prepare.getLong(columnIndexOrThrow21), (int) prepare.getLong(columnIndexOrThrow22));
                    }
                    return r16;
                } finally {
                }
        }
    }
}
