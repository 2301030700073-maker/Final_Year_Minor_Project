package org.wikipedia.readinglist.db;

import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import kotlin.UnsignedKt;
import kotlin.jvm.functions.Function1;
import okio.ByteString;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.history.db.HistoryEntryWithImage;
import org.wikipedia.history.db.HistoryEntryWithImageDao_Impl;
import org.wikipedia.login.LoginClient;
import org.wikipedia.page.Namespace;
import org.wikipedia.readinglist.database.RecommendedPage;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class RecommendedPageDao_Impl$$ExternalSyntheticLambda5 implements Function1 {
    public final /* synthetic */ int $r8$classId = 1;
    public final /* synthetic */ String f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ int f$2;
    public final /* synthetic */ int f$3;

    public /* synthetic */ RecommendedPageDao_Impl$$ExternalSyntheticLambda5(int i, String str, int i2, HistoryEntryWithImageDao_Impl historyEntryWithImageDao_Impl) {
        this.f$2 = i;
        this.f$0 = str;
        this.f$3 = i2;
        this.f$1 = historyEntryWithImageDao_Impl;
    }

    /* JADX WARN: Finally extract failed */
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i;
        Integer valueOf;
        Double valueOf2;
        int i2;
        int i3;
        int i4 = this.$r8$classId;
        Object obj2 = this.f$1;
        int i5 = this.f$3;
        String str = this.f$0;
        int i6 = this.f$2;
        switch (i4) {
            case 0:
                ArrayList arrayList = (ArrayList) obj2;
                SQLiteConnection sQLiteConnection = (SQLiteConnection) obj;
                sQLiteConnection.getClass();
                SQLiteStatement prepare = sQLiteConnection.prepare(str);
                try {
                    Iterator it = arrayList.iterator();
                    int i7 = 1;
                    while (it.hasNext()) {
                        prepare.bindText(i7, (String) it.next());
                        i7++;
                    }
                    prepare.bindLong(i5, i6 + 1);
                    int columnIndexOrThrow = UnsignedKt.getColumnIndexOrThrow(prepare, "id");
                    int columnIndexOrThrow2 = UnsignedKt.getColumnIndexOrThrow(prepare, "wiki");
                    int columnIndexOrThrow3 = UnsignedKt.getColumnIndexOrThrow(prepare, "lang");
                    int columnIndexOrThrow4 = UnsignedKt.getColumnIndexOrThrow(prepare, "namespace");
                    int columnIndexOrThrow5 = UnsignedKt.getColumnIndexOrThrow(prepare, "timestamp");
                    int columnIndexOrThrow6 = UnsignedKt.getColumnIndexOrThrow(prepare, "apiTitle");
                    int columnIndexOrThrow7 = UnsignedKt.getColumnIndexOrThrow(prepare, "displayTitle");
                    int columnIndexOrThrow8 = UnsignedKt.getColumnIndexOrThrow(prepare, "description");
                    int columnIndexOrThrow9 = UnsignedKt.getColumnIndexOrThrow(prepare, "thumbUrl");
                    int columnIndexOrThrow10 = UnsignedKt.getColumnIndexOrThrow(prepare, "status");
                    int columnIndexOrThrow11 = UnsignedKt.getColumnIndexOrThrow(prepare, "extract");
                    ArrayList arrayList2 = new ArrayList();
                    while (prepare.step()) {
                        int i8 = (int) prepare.getLong(columnIndexOrThrow);
                        WikiSite stringToWikiSite = LoginClient.stringToWikiSite(prepare.isNull(columnIndexOrThrow2) ? null : prepare.getText(columnIndexOrThrow2));
                        if (stringToWikiSite == null) {
                            throw new IllegalStateException("Expected NON-NULL 'org.wikipedia.dataclient.WikiSite', but it was NULL.");
                        }
                        String text = prepare.getText(columnIndexOrThrow3);
                        if (prepare.isNull(columnIndexOrThrow4)) {
                            i = i8;
                            valueOf = null;
                        } else {
                            i = i8;
                            valueOf = Integer.valueOf((int) prepare.getLong(columnIndexOrThrow4));
                        }
                        Namespace intToNamespace = ByteString.Companion.intToNamespace(valueOf);
                        if (intToNamespace == null) {
                            throw new IllegalStateException("Expected NON-NULL 'org.wikipedia.page.Namespace', but it was NULL.");
                        }
                        Date fromTimestamp = LoginClient.fromTimestamp(prepare.isNull(columnIndexOrThrow5) ? null : Long.valueOf(prepare.getLong(columnIndexOrThrow5)));
                        if (fromTimestamp == null) {
                            throw new IllegalStateException("Expected NON-NULL 'java.util.Date', but it was NULL.");
                        }
                        arrayList2.add(new RecommendedPage(i, stringToWikiSite, text, intToNamespace, fromTimestamp, prepare.getText(columnIndexOrThrow6), prepare.getText(columnIndexOrThrow7), prepare.isNull(columnIndexOrThrow8) ? null : prepare.getText(columnIndexOrThrow8), prepare.isNull(columnIndexOrThrow9) ? null : prepare.getText(columnIndexOrThrow9), (int) prepare.getLong(columnIndexOrThrow10), prepare.isNull(columnIndexOrThrow11) ? null : prepare.getText(columnIndexOrThrow11)));
                    }
                    prepare.close();
                    return arrayList2;
                } catch (Throwable th) {
                    prepare.close();
                    throw th;
                }
            default:
                SQLiteConnection sQLiteConnection2 = (SQLiteConnection) obj;
                sQLiteConnection2.getClass();
                SQLiteStatement prepare2 = sQLiteConnection2.prepare("SELECT `authority`, `lang`, `apiTitle`, `displayTitle`, `id`, `namespace`, `timestamp`, `source`, `imageName`, `description`, `geoLat`, `geoLon`, `timeSpentSec` FROM (SELECT HistoryEntry.*, PageImage.imageName, PageImage.description, PageImage.geoLat, PageImage.geoLon, PageImage.timeSpentSec FROM HistoryEntry LEFT OUTER JOIN PageImage ON (HistoryEntry.namespace = PageImage.namespace AND HistoryEntry.apiTitle = PageImage.apiTitle AND HistoryEntry.lang = PageImage.lang) WHERE source != ? AND source != ? AND source != ? AND timeSpentSec >= ? AND (? IS NULL OR HistoryEntry.lang = ?) ORDER BY timestamp DESC LIMIT ?)");
                HistoryEntryWithImageDao_Impl historyEntryWithImageDao_Impl = (HistoryEntryWithImageDao_Impl) obj2;
                try {
                    prepare2.bindLong(8L, 1);
                    prepare2.bindLong(7L, 2);
                    prepare2.bindLong(17L, 3);
                    prepare2.bindLong(i6, 4);
                    if (str == null) {
                        prepare2.bindNull(5);
                    } else {
                        prepare2.bindText(5, str);
                    }
                    if (str == null) {
                        prepare2.bindNull(6);
                    } else {
                        prepare2.bindText(6, str);
                    }
                    prepare2.bindLong(i5, 7);
                    int columnIndexOrThrow12 = UnsignedKt.getColumnIndexOrThrow(prepare2, "authority");
                    int columnIndexOrThrow13 = UnsignedKt.getColumnIndexOrThrow(prepare2, "lang");
                    int columnIndexOrThrow14 = UnsignedKt.getColumnIndexOrThrow(prepare2, "apiTitle");
                    int columnIndexOrThrow15 = UnsignedKt.getColumnIndexOrThrow(prepare2, "displayTitle");
                    int columnIndexOrThrow16 = UnsignedKt.getColumnIndexOrThrow(prepare2, "id");
                    int columnIndexOrThrow17 = UnsignedKt.getColumnIndexOrThrow(prepare2, "namespace");
                    int columnIndexOrThrow18 = UnsignedKt.getColumnIndexOrThrow(prepare2, "timestamp");
                    int columnIndexOrThrow19 = UnsignedKt.getColumnIndexOrThrow(prepare2, "source");
                    int columnIndexOrThrow20 = UnsignedKt.getColumnIndexOrThrow(prepare2, "imageName");
                    int columnIndexOrThrow21 = UnsignedKt.getColumnIndexOrThrow(prepare2, "description");
                    int columnIndexOrThrow22 = UnsignedKt.getColumnIndexOrThrow(prepare2, "geoLat");
                    int columnIndexOrThrow23 = UnsignedKt.getColumnIndexOrThrow(prepare2, "geoLon");
                    int columnIndexOrThrow24 = UnsignedKt.getColumnIndexOrThrow(prepare2, "timeSpentSec");
                    ArrayList arrayList3 = new ArrayList();
                    while (prepare2.step()) {
                        String text2 = prepare2.getText(columnIndexOrThrow12);
                        String text3 = prepare2.getText(columnIndexOrThrow13);
                        String text4 = prepare2.getText(columnIndexOrThrow14);
                        String text5 = prepare2.getText(columnIndexOrThrow15);
                        long j = prepare2.getLong(columnIndexOrThrow16);
                        String text6 = prepare2.getText(columnIndexOrThrow17);
                        Long valueOf3 = prepare2.isNull(columnIndexOrThrow18) ? null : Long.valueOf(prepare2.getLong(columnIndexOrThrow18));
                        int i9 = columnIndexOrThrow12;
                        HistoryEntryWithImageDao_Impl historyEntryWithImageDao_Impl2 = historyEntryWithImageDao_Impl;
                        int i10 = columnIndexOrThrow18;
                        LoginClient loginClient = historyEntryWithImageDao_Impl2.__dateTypeConverter;
                        Date fromTimestamp2 = LoginClient.fromTimestamp(valueOf3);
                        if (fromTimestamp2 == null) {
                            throw new IllegalStateException("Expected NON-NULL 'java.util.Date', but it was NULL.");
                        }
                        int i11 = columnIndexOrThrow17;
                        int i12 = (int) prepare2.getLong(columnIndexOrThrow19);
                        String text7 = prepare2.isNull(columnIndexOrThrow20) ? null : prepare2.getText(columnIndexOrThrow20);
                        String text8 = prepare2.isNull(columnIndexOrThrow21) ? null : prepare2.getText(columnIndexOrThrow21);
                        Double valueOf4 = prepare2.isNull(columnIndexOrThrow22) ? null : Double.valueOf(prepare2.getDouble(columnIndexOrThrow22));
                        if (prepare2.isNull(columnIndexOrThrow23)) {
                            valueOf2 = null;
                            i3 = columnIndexOrThrow21;
                            i2 = i12;
                        } else {
                            valueOf2 = Double.valueOf(prepare2.getDouble(columnIndexOrThrow23));
                            i2 = i12;
                            i3 = columnIndexOrThrow21;
                        }
                        arrayList3.add(new HistoryEntryWithImage(text2, text3, text4, text5, text6, fromTimestamp2, i2, (int) prepare2.getLong(columnIndexOrThrow24), text7, text8, valueOf4, valueOf2, j));
                        columnIndexOrThrow12 = i9;
                        historyEntryWithImageDao_Impl = historyEntryWithImageDao_Impl2;
                        columnIndexOrThrow18 = i10;
                        columnIndexOrThrow21 = i3;
                        columnIndexOrThrow17 = i11;
                    }
                    prepare2.close();
                    return arrayList3;
                } catch (Throwable th2) {
                    prepare2.close();
                    throw th2;
                }
        }
    }

    public /* synthetic */ RecommendedPageDao_Impl$$ExternalSyntheticLambda5(String str, ArrayList arrayList, int i, int i2, RecommendedPageDao_Impl recommendedPageDao_Impl) {
        this.f$0 = str;
        this.f$1 = arrayList;
        this.f$2 = i;
        this.f$3 = i2;
    }
}
