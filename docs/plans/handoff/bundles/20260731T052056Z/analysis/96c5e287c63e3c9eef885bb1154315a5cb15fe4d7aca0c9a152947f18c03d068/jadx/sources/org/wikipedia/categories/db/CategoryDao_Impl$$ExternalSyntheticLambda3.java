package org.wikipedia.categories.db;

import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import java.util.ArrayList;
import java.util.Date;
import kotlin.UnsignedKt;
import kotlin.jvm.functions.Function1;
import org.wikipedia.history.db.HistoryEntryWithImage;
import org.wikipedia.history.db.HistoryEntryWithImageDao_Impl;
import org.wikipedia.login.LoginClient;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class CategoryDao_Impl$$ExternalSyntheticLambda3 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ int f$1;
    public final /* synthetic */ int f$2;

    public /* synthetic */ CategoryDao_Impl$$ExternalSyntheticLambda3(int i, int i2, HistoryEntryWithImageDao_Impl historyEntryWithImageDao_Impl) {
        this.$r8$classId = 2;
        this.f$1 = i;
        this.f$2 = i2;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        SQLiteStatement prepare;
        int i = this.$r8$classId;
        int i2 = this.f$2;
        int i3 = this.f$1;
        switch (i) {
            case 0:
                SQLiteConnection sQLiteConnection = (SQLiteConnection) obj;
                sQLiteConnection.getClass();
                prepare = sQLiteConnection.prepare("SELECT year, month, title, lang, SUM (count) AS count FROM Category WHERE year = ? AND month = ? GROUP BY title, lang ORDER BY count DESC");
                try {
                    prepare.bindLong(i3, 1);
                    prepare.bindLong(i2, 2);
                    ArrayList arrayList = new ArrayList();
                    while (prepare.step()) {
                        arrayList.add(new Category((int) prepare.getLong(0), (int) prepare.getLong(1), (int) prepare.getLong(4), prepare.getText(2), prepare.getText(3)));
                    }
                    return arrayList;
                } finally {
                }
            case 1:
                SQLiteConnection sQLiteConnection2 = (SQLiteConnection) obj;
                sQLiteConnection2.getClass();
                prepare = sQLiteConnection2.prepare("SELECT year, month, title, lang, SUM (count) AS count FROM Category WHERE year BETWEEN ? AND ? GROUP BY title, lang ORDER BY count DESC");
                try {
                    prepare.bindLong(i3, 1);
                    prepare.bindLong(i2, 2);
                    ArrayList arrayList2 = new ArrayList();
                    while (prepare.step()) {
                        arrayList2.add(new Category((int) prepare.getLong(0), (int) prepare.getLong(1), (int) prepare.getLong(4), prepare.getText(2), prepare.getText(3)));
                    }
                    return arrayList2;
                } finally {
                }
            default:
                SQLiteConnection sQLiteConnection3 = (SQLiteConnection) obj;
                sQLiteConnection3.getClass();
                prepare = sQLiteConnection3.prepare("SELECT `authority`, `lang`, `apiTitle`, `displayTitle`, `id`, `namespace`, `timestamp`, `source`, `imageName`, `description`, `geoLat`, `geoLon`, `timeSpentSec` FROM (SELECT HistoryEntry.*, PageImage.imageName, PageImage.description, PageImage.geoLat, PageImage.geoLon, PageImage.timeSpentSec FROM HistoryEntry LEFT OUTER JOIN PageImage ON (HistoryEntry.namespace = PageImage.namespace AND HistoryEntry.apiTitle = PageImage.apiTitle AND HistoryEntry.lang = PageImage.lang) INNER JOIN (SELECT lang, apiTitle, MAX(timestamp) as max_timestamp FROM HistoryEntry GROUP BY lang, apiTitle) LatestEntries ON HistoryEntry.apiTitle = LatestEntries.apiTitle AND HistoryEntry.timestamp = LatestEntries.max_timestamp ORDER BY timestamp DESC LIMIT ? OFFSET ?)");
                try {
                    prepare.bindLong(i3, 1);
                    prepare.bindLong(i2, 2);
                    int columnIndexOrThrow = UnsignedKt.getColumnIndexOrThrow(prepare, "authority");
                    int columnIndexOrThrow2 = UnsignedKt.getColumnIndexOrThrow(prepare, "lang");
                    int columnIndexOrThrow3 = UnsignedKt.getColumnIndexOrThrow(prepare, "apiTitle");
                    int columnIndexOrThrow4 = UnsignedKt.getColumnIndexOrThrow(prepare, "displayTitle");
                    int columnIndexOrThrow5 = UnsignedKt.getColumnIndexOrThrow(prepare, "id");
                    int columnIndexOrThrow6 = UnsignedKt.getColumnIndexOrThrow(prepare, "namespace");
                    int columnIndexOrThrow7 = UnsignedKt.getColumnIndexOrThrow(prepare, "timestamp");
                    int columnIndexOrThrow8 = UnsignedKt.getColumnIndexOrThrow(prepare, "source");
                    int columnIndexOrThrow9 = UnsignedKt.getColumnIndexOrThrow(prepare, "imageName");
                    int columnIndexOrThrow10 = UnsignedKt.getColumnIndexOrThrow(prepare, "description");
                    int columnIndexOrThrow11 = UnsignedKt.getColumnIndexOrThrow(prepare, "geoLat");
                    int columnIndexOrThrow12 = UnsignedKt.getColumnIndexOrThrow(prepare, "geoLon");
                    int columnIndexOrThrow13 = UnsignedKt.getColumnIndexOrThrow(prepare, "timeSpentSec");
                    ArrayList arrayList3 = new ArrayList();
                    while (prepare.step()) {
                        String text = prepare.getText(columnIndexOrThrow);
                        String text2 = prepare.getText(columnIndexOrThrow2);
                        String text3 = prepare.getText(columnIndexOrThrow3);
                        String text4 = prepare.getText(columnIndexOrThrow4);
                        long j = prepare.getLong(columnIndexOrThrow5);
                        String text5 = prepare.getText(columnIndexOrThrow6);
                        Date fromTimestamp = LoginClient.fromTimestamp(prepare.isNull(columnIndexOrThrow7) ? null : Long.valueOf(prepare.getLong(columnIndexOrThrow7)));
                        if (fromTimestamp == null) {
                            throw new IllegalStateException("Expected NON-NULL 'java.util.Date', but it was NULL.");
                        }
                        int i4 = columnIndexOrThrow2;
                        int i5 = columnIndexOrThrow3;
                        arrayList3.add(new HistoryEntryWithImage(text, text2, text3, text4, text5, fromTimestamp, (int) prepare.getLong(columnIndexOrThrow8), (int) prepare.getLong(columnIndexOrThrow13), prepare.isNull(columnIndexOrThrow9) ? null : prepare.getText(columnIndexOrThrow9), prepare.isNull(columnIndexOrThrow10) ? null : prepare.getText(columnIndexOrThrow10), prepare.isNull(columnIndexOrThrow11) ? null : Double.valueOf(prepare.getDouble(columnIndexOrThrow11)), prepare.isNull(columnIndexOrThrow12) ? null : Double.valueOf(prepare.getDouble(columnIndexOrThrow12)), j));
                        columnIndexOrThrow2 = i4;
                        columnIndexOrThrow3 = i5;
                    }
                    return arrayList3;
                } catch (Throwable th) {
                    throw th;
                }
        }
    }

    public /* synthetic */ CategoryDao_Impl$$ExternalSyntheticLambda3(int i, int i2, int i3) {
        this.$r8$classId = i3;
        this.f$1 = i;
        this.f$2 = i2;
    }
}
