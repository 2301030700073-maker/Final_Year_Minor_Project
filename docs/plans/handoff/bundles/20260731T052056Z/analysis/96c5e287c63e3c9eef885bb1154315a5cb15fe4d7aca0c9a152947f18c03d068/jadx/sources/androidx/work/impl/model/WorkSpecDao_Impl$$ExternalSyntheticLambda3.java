package androidx.work.impl.model;

import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import java.util.ArrayList;
import kotlin.Unit;
import kotlin.UnsignedKt;
import kotlin.jvm.functions.Function1;
import okio.ByteString;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.games.db.DailyGameHistory;
import org.wikipedia.login.LoginClient;
import org.wikipedia.page.Namespace;
import org.wikipedia.readinglist.database.ReadingListPage;
import org.wikipedia.readinglist.db.ReadingListPageDao_Impl;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class WorkSpecDao_Impl$$ExternalSyntheticLambda3 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ int f$1;
    public final /* synthetic */ String f$2;

    public /* synthetic */ WorkSpecDao_Impl$$ExternalSyntheticLambda3(String str, int i, ReadingListPageDao_Impl readingListPageDao_Impl) {
        this.$r8$classId = 6;
        this.f$2 = str;
        this.f$1 = i;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        SQLiteStatement prepare;
        Double d;
        int i;
        int i2;
        Integer valueOf;
        int i3 = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        int i4 = this.f$1;
        String str = this.f$2;
        switch (i3) {
            case 0:
                SQLiteConnection sQLiteConnection = (SQLiteConnection) obj;
                sQLiteConnection.getClass();
                prepare = sQLiteConnection.prepare("UPDATE workspec SET stop_reason=? WHERE id=?");
                try {
                    prepare.bindLong(i4, 1);
                    prepare.bindText(2, str);
                    prepare.step();
                    return unit;
                } finally {
                }
            case 1:
                SQLiteConnection sQLiteConnection2 = (SQLiteConnection) obj;
                sQLiteConnection2.getClass();
                prepare = sQLiteConnection2.prepare("SELECT * FROM SystemIdInfo WHERE work_spec_id=? AND generation=?");
                try {
                    prepare.bindText(1, str);
                    prepare.bindLong(i4, 2);
                    return prepare.step() ? new SystemIdInfo(prepare.getText(UnsignedKt.getColumnIndexOrThrow(prepare, "work_spec_id")), (int) prepare.getLong(UnsignedKt.getColumnIndexOrThrow(prepare, "generation")), (int) prepare.getLong(UnsignedKt.getColumnIndexOrThrow(prepare, "system_id"))) : null;
                } finally {
                }
            case 2:
                SQLiteConnection sQLiteConnection3 = (SQLiteConnection) obj;
                sQLiteConnection3.getClass();
                prepare = sQLiteConnection3.prepare("UPDATE workspec SET next_schedule_time_override=9223372036854775807 WHERE (id=? AND next_schedule_time_override_generation=?)");
                try {
                    prepare.bindText(1, str);
                    prepare.bindLong(i4, 2);
                    prepare.step();
                    return unit;
                } finally {
                }
            case 3:
                SQLiteConnection sQLiteConnection4 = (SQLiteConnection) obj;
                sQLiteConnection4.getClass();
                prepare = sQLiteConnection4.prepare("SELECT COUNT(*) FROM DailyGameHistory WHERE gameName = ? AND language = ? AND status = 1");
                try {
                    prepare.bindLong(i4, 1);
                    prepare.bindText(2, str);
                    int i5 = prepare.step() ? (int) prepare.getLong(0) : 0;
                    prepare.close();
                    return Integer.valueOf(i5);
                } finally {
                }
            case 4:
                SQLiteConnection sQLiteConnection5 = (SQLiteConnection) obj;
                sQLiteConnection5.getClass();
                prepare = sQLiteConnection5.prepare("SELECT AVG(score) FROM DailyGameHistory WHERE gameName = ? AND language = ? AND status = 1");
                try {
                    prepare.bindLong(i4, 1);
                    prepare.bindText(2, str);
                    if (prepare.step() && !prepare.isNull(0)) {
                        d = Double.valueOf(prepare.getDouble(0));
                        return d;
                    }
                    d = null;
                    return d;
                } finally {
                }
            case 5:
                SQLiteConnection sQLiteConnection6 = (SQLiteConnection) obj;
                sQLiteConnection6.getClass();
                prepare = sQLiteConnection6.prepare("SELECT * FROM DailyGameHistory WHERE gameName = ? AND language = ? AND status = 1 ORDER BY year DESC, month DESC, day DESC");
                try {
                    prepare.bindLong(i4, 1);
                    prepare.bindText(2, str);
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
                    ArrayList arrayList = new ArrayList();
                    while (prepare.step()) {
                        int i6 = (int) prepare.getLong(columnIndexOrThrow);
                        int i7 = (int) prepare.getLong(columnIndexOrThrow2);
                        String text = prepare.getText(columnIndexOrThrow3);
                        int i8 = (int) prepare.getLong(columnIndexOrThrow4);
                        int i9 = columnIndexOrThrow3;
                        int i10 = columnIndexOrThrow4;
                        int i11 = columnIndexOrThrow2;
                        int i12 = columnIndexOrThrow10;
                        arrayList.add(new DailyGameHistory(i6, i7, text, i8, (int) prepare.getLong(columnIndexOrThrow5), (int) prepare.getLong(columnIndexOrThrow6), (int) prepare.getLong(columnIndexOrThrow7), (int) prepare.getLong(columnIndexOrThrow8), prepare.isNull(columnIndexOrThrow9) ? null : prepare.getText(columnIndexOrThrow9), (int) prepare.getLong(columnIndexOrThrow10), (int) prepare.getLong(columnIndexOrThrow11)));
                        columnIndexOrThrow3 = i9;
                        columnIndexOrThrow2 = i11;
                        columnIndexOrThrow10 = i12;
                        columnIndexOrThrow4 = i10;
                    }
                    return arrayList;
                } finally {
                }
            default:
                SQLiteConnection sQLiteConnection7 = (SQLiteConnection) obj;
                sQLiteConnection7.getClass();
                prepare = sQLiteConnection7.prepare("SELECT * FROM ReadingListPage WHERE lang = ? GROUP BY apiTitle ORDER BY atime DESC LIMIT ?");
                try {
                    prepare.bindText(1, str);
                    prepare.bindLong(i4, 2);
                    int columnIndexOrThrow12 = UnsignedKt.getColumnIndexOrThrow(prepare, "wiki");
                    int columnIndexOrThrow13 = UnsignedKt.getColumnIndexOrThrow(prepare, "namespace");
                    int columnIndexOrThrow14 = UnsignedKt.getColumnIndexOrThrow(prepare, "displayTitle");
                    int columnIndexOrThrow15 = UnsignedKt.getColumnIndexOrThrow(prepare, "apiTitle");
                    int columnIndexOrThrow16 = UnsignedKt.getColumnIndexOrThrow(prepare, "description");
                    int columnIndexOrThrow17 = UnsignedKt.getColumnIndexOrThrow(prepare, "thumbUrl");
                    int columnIndexOrThrow18 = UnsignedKt.getColumnIndexOrThrow(prepare, "listId");
                    int columnIndexOrThrow19 = UnsignedKt.getColumnIndexOrThrow(prepare, "id");
                    int columnIndexOrThrow20 = UnsignedKt.getColumnIndexOrThrow(prepare, "mtime");
                    int columnIndexOrThrow21 = UnsignedKt.getColumnIndexOrThrow(prepare, "atime");
                    int columnIndexOrThrow22 = UnsignedKt.getColumnIndexOrThrow(prepare, "offline");
                    int columnIndexOrThrow23 = UnsignedKt.getColumnIndexOrThrow(prepare, "status");
                    int columnIndexOrThrow24 = UnsignedKt.getColumnIndexOrThrow(prepare, "sizeBytes");
                    int columnIndexOrThrow25 = UnsignedKt.getColumnIndexOrThrow(prepare, "lang");
                    int columnIndexOrThrow26 = UnsignedKt.getColumnIndexOrThrow(prepare, "revId");
                    int columnIndexOrThrow27 = UnsignedKt.getColumnIndexOrThrow(prepare, "remoteId");
                    ArrayList arrayList2 = new ArrayList();
                    while (prepare.step()) {
                        WikiSite stringToWikiSite = LoginClient.stringToWikiSite(prepare.isNull(columnIndexOrThrow12) ? null : prepare.getText(columnIndexOrThrow12));
                        if (stringToWikiSite == null) {
                            throw new IllegalStateException("Expected NON-NULL 'org.wikipedia.dataclient.WikiSite', but it was NULL.");
                        }
                        if (prepare.isNull(columnIndexOrThrow13)) {
                            i = columnIndexOrThrow25;
                            i2 = columnIndexOrThrow24;
                            valueOf = null;
                        } else {
                            i = columnIndexOrThrow25;
                            i2 = columnIndexOrThrow24;
                            valueOf = Integer.valueOf((int) prepare.getLong(columnIndexOrThrow13));
                        }
                        Namespace intToNamespace = ByteString.Companion.intToNamespace(valueOf);
                        if (intToNamespace == null) {
                            throw new IllegalStateException("Expected NON-NULL 'org.wikipedia.page.Namespace', but it was NULL.");
                        }
                        String text2 = prepare.getText(columnIndexOrThrow14);
                        String text3 = prepare.getText(columnIndexOrThrow15);
                        String text4 = prepare.isNull(columnIndexOrThrow16) ? null : prepare.getText(columnIndexOrThrow16);
                        String text5 = prepare.isNull(columnIndexOrThrow17) ? null : prepare.getText(columnIndexOrThrow17);
                        long j = prepare.getLong(columnIndexOrThrow18);
                        long j2 = prepare.getLong(columnIndexOrThrow19);
                        long j3 = prepare.getLong(columnIndexOrThrow20);
                        long j4 = prepare.getLong(columnIndexOrThrow21);
                        boolean z = ((int) prepare.getLong(columnIndexOrThrow22)) != 0;
                        long j5 = prepare.getLong(columnIndexOrThrow23);
                        int i13 = i2;
                        long j6 = prepare.getLong(i13);
                        int i14 = i;
                        String text6 = prepare.getText(i14);
                        int i15 = columnIndexOrThrow12;
                        int i16 = columnIndexOrThrow26;
                        long j7 = prepare.getLong(i16);
                        columnIndexOrThrow26 = i16;
                        int i17 = columnIndexOrThrow27;
                        columnIndexOrThrow27 = i17;
                        arrayList2.add(new ReadingListPage(stringToWikiSite, intToNamespace, text2, text3, text4, text5, j, j2, j3, j4, z, j5, j6, text6, j7, prepare.getLong(i17)));
                        columnIndexOrThrow24 = i13;
                        columnIndexOrThrow25 = i14;
                        columnIndexOrThrow12 = i15;
                    }
                    return arrayList2;
                } catch (Throwable th) {
                    throw th;
                }
        }
    }

    public /* synthetic */ WorkSpecDao_Impl$$ExternalSyntheticLambda3(String str, int i, int i2) {
        this.$r8$classId = i2;
        this.f$2 = str;
        this.f$1 = i;
    }

    public /* synthetic */ WorkSpecDao_Impl$$ExternalSyntheticLambda3(int i, String str, int i2) {
        this.$r8$classId = i2;
        this.f$1 = i;
        this.f$2 = str;
    }
}
