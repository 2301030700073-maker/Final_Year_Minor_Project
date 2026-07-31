package org.wikipedia.history.db;

import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import java.util.ArrayList;
import java.util.Date;
import kotlin.UnsignedKt;
import kotlin.jvm.functions.Function1;
import org.wikipedia.login.LoginClient;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class HistoryEntryDao_Impl$$ExternalSyntheticLambda1 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ long f$1;
    public final /* synthetic */ long f$2;

    public /* synthetic */ HistoryEntryDao_Impl$$ExternalSyntheticLambda1(long j, long j2, HistoryEntryWithImageDao_Impl historyEntryWithImageDao_Impl) {
        this.$r8$classId = 6;
        this.f$1 = j;
        this.f$2 = j2;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        SQLiteStatement prepare;
        Integer num;
        Integer num2;
        Integer num3;
        Integer num4;
        int i = this.$r8$classId;
        long j = this.f$2;
        long j2 = this.f$1;
        SQLiteConnection sQLiteConnection = (SQLiteConnection) obj;
        switch (i) {
            case 0:
                sQLiteConnection.getClass();
                prepare = sQLiteConnection.prepare("SELECT displayTitle FROM HistoryEntry WHERE timestamp BETWEEN ? AND ? GROUP BY displayTitle HAVING COUNT(displayTitle) > 1 ORDER BY COUNT(displayTitle) DESC LIMIT ?");
                try {
                    prepare.bindLong(j2, 1);
                    prepare.bindLong(j, 2);
                    prepare.bindLong(5L, 3);
                    ArrayList arrayList = new ArrayList();
                    while (prepare.step()) {
                        arrayList.add(prepare.getText(0));
                    }
                    return arrayList;
                } finally {
                }
            case 1:
                sQLiteConnection.getClass();
                prepare = sQLiteConnection.prepare("SELECT CAST(strftime('%w', timestamp / 1000, 'unixepoch', 'localtime') AS INTEGER) AS dayOfWeek FROM HistoryEntry WHERE timestamp BETWEEN ? AND ? GROUP BY dayOfWeek ORDER BY COUNT(id) DESC LIMIT 1");
                try {
                    prepare.bindLong(j2, 1);
                    prepare.bindLong(j, 2);
                    if (prepare.step() && !prepare.isNull(0)) {
                        num = Integer.valueOf((int) prepare.getLong(0));
                        return num;
                    }
                    num = null;
                    return num;
                } finally {
                }
            case 2:
                sQLiteConnection.getClass();
                prepare = sQLiteConnection.prepare("SELECT CAST(strftime('%H', timestamp / 1000, 'unixepoch', 'localtime') AS INTEGER) AS hour FROM HistoryEntry WHERE timestamp BETWEEN ? AND ? GROUP BY hour ORDER BY COUNT(id) DESC LIMIT 1");
                try {
                    prepare.bindLong(j2, 1);
                    prepare.bindLong(j, 2);
                    if (prepare.step() && !prepare.isNull(0)) {
                        num2 = Integer.valueOf((int) prepare.getLong(0));
                        return num2;
                    }
                    num2 = null;
                    return num2;
                } finally {
                }
            case 3:
                sQLiteConnection.getClass();
                prepare = sQLiteConnection.prepare("SELECT CAST(strftime('%m', timestamp / 1000, 'unixepoch', 'localtime') AS INTEGER) AS month FROM HistoryEntry WHERE timestamp BETWEEN ? AND ? GROUP BY month ORDER BY COUNT(id) DESC LIMIT 1");
                try {
                    prepare.bindLong(j2, 1);
                    prepare.bindLong(j, 2);
                    if (prepare.step() && !prepare.isNull(0)) {
                        num3 = Integer.valueOf((int) prepare.getLong(0));
                        return num3;
                    }
                    num3 = null;
                    return num3;
                } finally {
                }
            case 4:
                sQLiteConnection.getClass();
                prepare = sQLiteConnection.prepare("SELECT COUNT(*) FROM (SELECT DISTINCT HistoryEntry.lang, HistoryEntry.apiTitle FROM HistoryEntry WHERE timestamp BETWEEN ? AND ?)");
                try {
                    prepare.bindLong(j2, 1);
                    prepare.bindLong(j, 2);
                    int i2 = prepare.step() ? (int) prepare.getLong(0) : 0;
                    prepare.close();
                    return Integer.valueOf(i2);
                } finally {
                }
            case 5:
                sQLiteConnection.getClass();
                prepare = sQLiteConnection.prepare("SELECT SUM(timeSpentSec) FROM (  SELECT DISTINCT HistoryEntry.lang, HistoryEntry.apiTitle, PageImage.timeSpentSec FROM HistoryEntry  LEFT OUTER JOIN PageImage ON (HistoryEntry.namespace = PageImage.namespace AND HistoryEntry.apiTitle = PageImage.apiTitle AND HistoryEntry.lang = PageImage.lang)  WHERE timestamp BETWEEN ? AND ?)");
                try {
                    prepare.bindLong(j2, 1);
                    prepare.bindLong(j, 2);
                    long j3 = prepare.step() ? prepare.getLong(0) : 0L;
                    prepare.close();
                    return Long.valueOf(j3);
                } finally {
                }
            case 6:
                sQLiteConnection.getClass();
                prepare = sQLiteConnection.prepare("SELECT `authority`, `lang`, `apiTitle`, `displayTitle`, `id`, `namespace`, `timestamp`, `source`, `imageName`, `description`, `geoLat`, `geoLon`, `timeSpentSec` FROM (SELECT HistoryEntry.*, PageImage.imageName, PageImage.description, PageImage.geoLat, PageImage.geoLon, PageImage.timeSpentSec FROM HistoryEntry  LEFT OUTER JOIN PageImage ON (HistoryEntry.namespace = PageImage.namespace AND HistoryEntry.apiTitle = PageImage.apiTitle AND HistoryEntry.lang = PageImage.lang)  WHERE PageImage.geoLat IS NOT 0.0 AND PageImage.geoLon IS NOT 0.0 AND timestamp BETWEEN ? AND ? ORDER BY timestamp DESC LIMIT ?)");
                try {
                    prepare.bindLong(j2, 1);
                    prepare.bindLong(j, 2);
                    prepare.bindLong(256L, 3);
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
                    ArrayList arrayList2 = new ArrayList();
                    while (prepare.step()) {
                        String text = prepare.getText(columnIndexOrThrow);
                        String text2 = prepare.getText(columnIndexOrThrow2);
                        String text3 = prepare.getText(columnIndexOrThrow3);
                        String text4 = prepare.getText(columnIndexOrThrow4);
                        long j4 = prepare.getLong(columnIndexOrThrow5);
                        String text5 = prepare.getText(columnIndexOrThrow6);
                        Date fromTimestamp = LoginClient.fromTimestamp(prepare.isNull(columnIndexOrThrow7) ? null : Long.valueOf(prepare.getLong(columnIndexOrThrow7)));
                        if (fromTimestamp == null) {
                            throw new IllegalStateException("Expected NON-NULL 'java.util.Date', but it was NULL.");
                        }
                        int i3 = columnIndexOrThrow3;
                        int i4 = columnIndexOrThrow2;
                        arrayList2.add(new HistoryEntryWithImage(text, text2, text3, text4, text5, fromTimestamp, (int) prepare.getLong(columnIndexOrThrow8), (int) prepare.getLong(columnIndexOrThrow13), prepare.isNull(columnIndexOrThrow9) ? null : prepare.getText(columnIndexOrThrow9), prepare.isNull(columnIndexOrThrow10) ? null : prepare.getText(columnIndexOrThrow10), prepare.isNull(columnIndexOrThrow11) ? null : Double.valueOf(prepare.getDouble(columnIndexOrThrow11)), prepare.isNull(columnIndexOrThrow12) ? null : Double.valueOf(prepare.getDouble(columnIndexOrThrow12)), j4));
                        columnIndexOrThrow3 = i3;
                        columnIndexOrThrow2 = i4;
                    }
                    return arrayList2;
                } catch (Throwable th) {
                    throw th;
                }
            case 7:
                sQLiteConnection.getClass();
                prepare = sQLiteConnection.prepare("SELECT COUNT(*) FROM ReadingListPage WHERE atime > 0 AND atime BETWEEN ? AND ?");
                try {
                    prepare.bindLong(j2, 1);
                    prepare.bindLong(j, 2);
                    if (prepare.step() && !prepare.isNull(0)) {
                        num4 = Integer.valueOf((int) prepare.getLong(0));
                        return num4;
                    }
                    num4 = null;
                    return num4;
                } finally {
                }
            default:
                sQLiteConnection.getClass();
                prepare = sQLiteConnection.prepare("SELECT displayTitle FROM ReadingListPage WHERE atime > 0 AND atime BETWEEN ? AND ? ORDER BY RANDOM() LIMIT ?");
                try {
                    prepare.bindLong(j2, 1);
                    prepare.bindLong(j, 2);
                    prepare.bindLong(3L, 3);
                    ArrayList arrayList3 = new ArrayList();
                    while (prepare.step()) {
                        arrayList3.add(prepare.isNull(0) ? null : prepare.getText(0));
                    }
                    return arrayList3;
                } finally {
                }
        }
    }

    public /* synthetic */ HistoryEntryDao_Impl$$ExternalSyntheticLambda1(int i, long j, long j2) {
        this.$r8$classId = i;
        this.f$1 = j;
        this.f$2 = j2;
    }
}
