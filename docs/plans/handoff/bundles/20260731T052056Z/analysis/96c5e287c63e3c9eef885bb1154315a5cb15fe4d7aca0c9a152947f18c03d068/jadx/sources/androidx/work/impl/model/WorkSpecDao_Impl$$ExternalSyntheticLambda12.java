package androidx.work.impl.model;

import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.UnsignedKt;
import kotlin.jvm.functions.Function1;
import okio.Path;
import org.wikipedia.notifications.db.Notification;
import org.wikipedia.notifications.db.NotificationDao_Impl;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class WorkSpecDao_Impl$$ExternalSyntheticLambda12 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ long f$1;
    public final /* synthetic */ String f$2;

    public /* synthetic */ WorkSpecDao_Impl$$ExternalSyntheticLambda12(String str, long j, NotificationDao_Impl notificationDao_Impl) {
        this.$r8$classId = 2;
        this.f$2 = str;
        this.f$1 = j;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v0, types: [org.wikipedia.notifications.db.Notification] */
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        SQLiteStatement prepare;
        int i = this.$r8$classId;
        long j = this.f$1;
        String str = this.f$2;
        switch (i) {
            case 0:
                SQLiteConnection sQLiteConnection = (SQLiteConnection) obj;
                sQLiteConnection.getClass();
                prepare = sQLiteConnection.prepare("UPDATE workspec SET schedule_requested_at=? WHERE id=?");
                try {
                    prepare.bindLong(j, 1);
                    prepare.bindText(2, str);
                    prepare.step();
                    int totalChangedRows = TuplesKt.getTotalChangedRows(sQLiteConnection);
                    prepare.close();
                    return Integer.valueOf(totalChangedRows);
                } finally {
                }
            case 1:
                SQLiteConnection sQLiteConnection2 = (SQLiteConnection) obj;
                sQLiteConnection2.getClass();
                prepare = sQLiteConnection2.prepare("UPDATE workspec SET last_enqueue_time=? WHERE id=?");
                try {
                    prepare.bindLong(j, 1);
                    prepare.bindText(2, str);
                    prepare.step();
                    prepare.close();
                    return Unit.INSTANCE;
                } finally {
                }
            default:
                SQLiteConnection sQLiteConnection3 = (SQLiteConnection) obj;
                sQLiteConnection3.getClass();
                prepare = sQLiteConnection3.prepare("SELECT * FROM Notification WHERE `wiki` IN (?) AND `id` IN (?)");
                try {
                    prepare.bindText(1, str);
                    prepare.bindLong(j, 2);
                    int columnIndexOrThrow = UnsignedKt.getColumnIndexOrThrow(prepare, "id");
                    int columnIndexOrThrow2 = UnsignedKt.getColumnIndexOrThrow(prepare, "wiki");
                    int columnIndexOrThrow3 = UnsignedKt.getColumnIndexOrThrow(prepare, "read");
                    int columnIndexOrThrow4 = UnsignedKt.getColumnIndexOrThrow(prepare, "category");
                    int columnIndexOrThrow5 = UnsignedKt.getColumnIndexOrThrow(prepare, "type");
                    int columnIndexOrThrow6 = UnsignedKt.getColumnIndexOrThrow(prepare, "revid");
                    int columnIndexOrThrow7 = UnsignedKt.getColumnIndexOrThrow(prepare, "title");
                    int columnIndexOrThrow8 = UnsignedKt.getColumnIndexOrThrow(prepare, "agent");
                    int columnIndexOrThrow9 = UnsignedKt.getColumnIndexOrThrow(prepare, "timestamp");
                    int columnIndexOrThrow10 = UnsignedKt.getColumnIndexOrThrow(prepare, "contents");
                    String str2 = null;
                    if (prepare.step()) {
                        long j2 = prepare.getLong(columnIndexOrThrow);
                        String text = prepare.getText(columnIndexOrThrow2);
                        String text2 = prepare.isNull(columnIndexOrThrow3) ? null : prepare.getText(columnIndexOrThrow3);
                        String text3 = prepare.getText(columnIndexOrThrow4);
                        String text4 = prepare.getText(columnIndexOrThrow5);
                        long j3 = prepare.getLong(columnIndexOrThrow6);
                        Notification.Title stringToTitle = Path.Companion.stringToTitle(prepare.isNull(columnIndexOrThrow7) ? null : prepare.getText(columnIndexOrThrow7));
                        Notification.Agent stringToAgent = Path.Companion.stringToAgent(prepare.isNull(columnIndexOrThrow8) ? null : prepare.getText(columnIndexOrThrow8));
                        Notification.Timestamp stringToTimestamp = Path.Companion.stringToTimestamp(prepare.isNull(columnIndexOrThrow9) ? null : prepare.getText(columnIndexOrThrow9));
                        if (!prepare.isNull(columnIndexOrThrow10)) {
                            str2 = prepare.getText(columnIndexOrThrow10);
                        }
                        str2 = new Notification(j2, text, text2, text3, text4, j3, stringToTitle, stringToAgent, stringToTimestamp, Path.Companion.stringToContents(str2));
                    }
                    return str2;
                } finally {
                }
        }
    }

    public /* synthetic */ WorkSpecDao_Impl$$ExternalSyntheticLambda12(int i, long j, String str) {
        this.$r8$classId = i;
        this.f$1 = j;
        this.f$2 = str;
    }
}
