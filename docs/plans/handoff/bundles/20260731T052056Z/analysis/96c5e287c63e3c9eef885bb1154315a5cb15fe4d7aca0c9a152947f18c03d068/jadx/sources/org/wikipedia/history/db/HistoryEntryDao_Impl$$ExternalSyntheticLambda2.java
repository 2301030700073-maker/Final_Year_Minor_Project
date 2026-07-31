package org.wikipedia.history.db;

import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import java.util.ArrayList;
import java.util.Date;
import kotlin.UnsignedKt;
import kotlin.jvm.functions.Function1;
import org.wikipedia.history.HistoryEntry;
import org.wikipedia.login.LoginClient;
import org.wikipedia.pageimages.db.PageImage;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class HistoryEntryDao_Impl$$ExternalSyntheticLambda2 implements Function1 {
    public final /* synthetic */ int $r8$classId = 1;
    public final /* synthetic */ String f$1;
    public final /* synthetic */ String f$2;
    public final /* synthetic */ String f$3;

    public /* synthetic */ HistoryEntryDao_Impl$$ExternalSyntheticLambda2(String str, String str2, String str3) {
        this.f$1 = str;
        this.f$2 = str2;
        this.f$3 = str3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v0, types: [org.wikipedia.history.HistoryEntry] */
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        SQLiteStatement prepare;
        int i = this.$r8$classId;
        Long l = null;
        String str = this.f$3;
        String str2 = this.f$2;
        String str3 = this.f$1;
        switch (i) {
            case 0:
                SQLiteConnection sQLiteConnection = (SQLiteConnection) obj;
                sQLiteConnection.getClass();
                prepare = sQLiteConnection.prepare("SELECT * FROM HistoryEntry WHERE authority = ? AND lang = ? AND apiTitle = ? LIMIT 1");
                try {
                    prepare.bindText(1, str3);
                    prepare.bindText(2, str2);
                    prepare.bindText(3, str);
                    int columnIndexOrThrow = UnsignedKt.getColumnIndexOrThrow(prepare, "authority");
                    int columnIndexOrThrow2 = UnsignedKt.getColumnIndexOrThrow(prepare, "lang");
                    int columnIndexOrThrow3 = UnsignedKt.getColumnIndexOrThrow(prepare, "apiTitle");
                    int columnIndexOrThrow4 = UnsignedKt.getColumnIndexOrThrow(prepare, "displayTitle");
                    int columnIndexOrThrow5 = UnsignedKt.getColumnIndexOrThrow(prepare, "id");
                    int columnIndexOrThrow6 = UnsignedKt.getColumnIndexOrThrow(prepare, "namespace");
                    int columnIndexOrThrow7 = UnsignedKt.getColumnIndexOrThrow(prepare, "timestamp");
                    int columnIndexOrThrow8 = UnsignedKt.getColumnIndexOrThrow(prepare, "source");
                    int columnIndexOrThrow9 = UnsignedKt.getColumnIndexOrThrow(prepare, "prevId");
                    if (prepare.step()) {
                        String text = prepare.getText(columnIndexOrThrow);
                        String text2 = prepare.getText(columnIndexOrThrow2);
                        String text3 = prepare.getText(columnIndexOrThrow3);
                        String text4 = prepare.getText(columnIndexOrThrow4);
                        long j = prepare.getLong(columnIndexOrThrow5);
                        String text5 = prepare.getText(columnIndexOrThrow6);
                        if (!prepare.isNull(columnIndexOrThrow7)) {
                            l = Long.valueOf(prepare.getLong(columnIndexOrThrow7));
                        }
                        Date fromTimestamp = LoginClient.fromTimestamp(l);
                        if (fromTimestamp == null) {
                            throw new IllegalStateException("Expected NON-NULL 'java.util.Date', but it was NULL.");
                        }
                        l = new HistoryEntry(text, text2, text3, text4, j, text5, fromTimestamp, (int) prepare.getLong(columnIndexOrThrow8), prepare.getLong(columnIndexOrThrow9));
                    }
                    return l;
                } catch (Throwable th) {
                    throw th;
                }
            default:
                SQLiteConnection sQLiteConnection2 = (SQLiteConnection) obj;
                sQLiteConnection2.getClass();
                prepare = sQLiteConnection2.prepare("SELECT * FROM PageImage WHERE lang = ? AND namespace = ? AND apiTitle = ?");
                try {
                    prepare.bindText(1, str3);
                    prepare.bindText(2, str2);
                    prepare.bindText(3, str);
                    int columnIndexOrThrow10 = UnsignedKt.getColumnIndexOrThrow(prepare, "lang");
                    int columnIndexOrThrow11 = UnsignedKt.getColumnIndexOrThrow(prepare, "namespace");
                    int columnIndexOrThrow12 = UnsignedKt.getColumnIndexOrThrow(prepare, "apiTitle");
                    int columnIndexOrThrow13 = UnsignedKt.getColumnIndexOrThrow(prepare, "imageName");
                    int columnIndexOrThrow14 = UnsignedKt.getColumnIndexOrThrow(prepare, "description");
                    int columnIndexOrThrow15 = UnsignedKt.getColumnIndexOrThrow(prepare, "timeSpentSec");
                    int columnIndexOrThrow16 = UnsignedKt.getColumnIndexOrThrow(prepare, "geoLat");
                    int columnIndexOrThrow17 = UnsignedKt.getColumnIndexOrThrow(prepare, "geoLon");
                    ArrayList arrayList = new ArrayList();
                    while (prepare.step()) {
                        arrayList.add(new PageImage(prepare.getText(columnIndexOrThrow10), prepare.getText(columnIndexOrThrow11), prepare.getText(columnIndexOrThrow12), prepare.isNull(columnIndexOrThrow13) ? null : prepare.getText(columnIndexOrThrow13), prepare.isNull(columnIndexOrThrow14) ? null : prepare.getText(columnIndexOrThrow14), (int) prepare.getLong(columnIndexOrThrow15), prepare.getDouble(columnIndexOrThrow16), prepare.getDouble(columnIndexOrThrow17)));
                    }
                    return arrayList;
                } finally {
                    prepare.close();
                }
        }
    }

    public /* synthetic */ HistoryEntryDao_Impl$$ExternalSyntheticLambda2(String str, String str2, String str3, HistoryEntryDao_Impl historyEntryDao_Impl) {
        this.f$1 = str;
        this.f$2 = str2;
        this.f$3 = str3;
    }
}
