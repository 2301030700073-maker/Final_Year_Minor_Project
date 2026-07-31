package androidx.work.impl.model;

import androidx.room.util.DBUtil;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import java.util.ArrayList;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import org.schabi.newpipe.database.playlist.model.PlaylistRemoteEntity;
import org.schabi.newpipe.database.subscription.SubscriptionEntity;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class WorkSpecDao_Impl$$ExternalSyntheticLambda12 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ long f$1;
    public final /* synthetic */ String f$2;

    public /* synthetic */ WorkSpecDao_Impl$$ExternalSyntheticLambda12(long j, String str, int i) {
        this.$r8$classId = i;
        this.f$1 = j;
        this.f$2 = str;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        SQLiteStatement prepare;
        int i = this.$r8$classId;
        Long l = null;
        String str = this.f$2;
        long j = this.f$1;
        SQLiteConnection sQLiteConnection = (SQLiteConnection) obj;
        switch (i) {
            case 0:
                sQLiteConnection.getClass();
                prepare = sQLiteConnection.prepare("UPDATE workspec SET schedule_requested_at=? WHERE id=?");
                try {
                    prepare.bindLong(1, j);
                    prepare.bindText(2, str);
                    prepare.step();
                    int totalChangedRows = DBUtil.getTotalChangedRows(sQLiteConnection);
                    prepare.close();
                    return Integer.valueOf(totalChangedRows);
                } finally {
                }
            case 1:
                sQLiteConnection.getClass();
                prepare = sQLiteConnection.prepare("UPDATE workspec SET last_enqueue_time=? WHERE id=?");
                try {
                    prepare.bindLong(1, j);
                    prepare.bindText(2, str);
                    prepare.step();
                    prepare.close();
                    return Unit.INSTANCE;
                } finally {
                }
            case 2:
                sQLiteConnection.getClass();
                prepare = sQLiteConnection.prepare("SELECT * FROM remote_playlists WHERE url = ? AND service_id = ?");
                try {
                    if (str == null) {
                        prepare.bindNull(1);
                    } else {
                        prepare.bindText(1, str);
                    }
                    prepare.bindLong(2, j);
                    int columnIndexOrThrow = DBUtil.getColumnIndexOrThrow(prepare, "uid");
                    int columnIndexOrThrow2 = DBUtil.getColumnIndexOrThrow(prepare, "service_id");
                    int columnIndexOrThrow3 = DBUtil.getColumnIndexOrThrow(prepare, "name");
                    int columnIndexOrThrow4 = DBUtil.getColumnIndexOrThrow(prepare, "url");
                    int columnIndexOrThrow5 = DBUtil.getColumnIndexOrThrow(prepare, "thumbnail_url");
                    int columnIndexOrThrow6 = DBUtil.getColumnIndexOrThrow(prepare, "uploader");
                    int columnIndexOrThrow7 = DBUtil.getColumnIndexOrThrow(prepare, "display_index");
                    int columnIndexOrThrow8 = DBUtil.getColumnIndexOrThrow(prepare, "stream_count");
                    ArrayList arrayList = new ArrayList();
                    while (prepare.step()) {
                        arrayList.add(new PlaylistRemoteEntity(prepare.getLong(columnIndexOrThrow), (int) prepare.getLong(columnIndexOrThrow2), prepare.isNull(columnIndexOrThrow3) ? null : prepare.getText(columnIndexOrThrow3), prepare.isNull(columnIndexOrThrow4) ? null : prepare.getText(columnIndexOrThrow4), prepare.isNull(columnIndexOrThrow5) ? null : prepare.getText(columnIndexOrThrow5), prepare.isNull(columnIndexOrThrow6) ? null : prepare.getText(columnIndexOrThrow6), prepare.getLong(columnIndexOrThrow7), prepare.isNull(columnIndexOrThrow8) ? null : Long.valueOf(prepare.getLong(columnIndexOrThrow8))));
                    }
                    return arrayList;
                } finally {
                }
            case 3:
                sQLiteConnection.getClass();
                prepare = sQLiteConnection.prepare("SELECT uid FROM remote_playlists WHERE url = ? AND service_id = ?");
                try {
                    if (str == null) {
                        prepare.bindNull(1);
                    } else {
                        prepare.bindText(1, str);
                    }
                    prepare.bindLong(2, j);
                    if (prepare.step() && !prepare.isNull(0)) {
                        l = Long.valueOf(prepare.getLong(0));
                    }
                    return l;
                } finally {
                }
            default:
                sQLiteConnection.getClass();
                prepare = sQLiteConnection.prepare("SELECT `uid`, `service_id`, `url`, `name`, `avatar_url`, `subscriber_count`, `description`, `notification_mode` FROM (\n        SELECT * FROM subscriptions s\n\n        LEFT JOIN feed_group_subscription_join fgs\n        ON s.uid = fgs.subscription_id\n\n        WHERE (fgs.subscription_id IS NULL OR fgs.group_id = ?)\n        AND s.name LIKE '%' || ? || '%'\n\n        ORDER BY name COLLATE NOCASE ASC\n        )");
                try {
                    prepare.bindLong(1, j);
                    prepare.bindText(2, str);
                    ArrayList arrayList2 = new ArrayList();
                    while (prepare.step()) {
                        arrayList2.add(new SubscriptionEntity(prepare.getLong(0), (int) prepare.getLong(1), prepare.isNull(2) ? null : prepare.getText(2), prepare.isNull(3) ? null : prepare.getText(3), prepare.isNull(4) ? null : prepare.getText(4), prepare.isNull(5) ? null : Long.valueOf(prepare.getLong(5)), prepare.isNull(6) ? null : prepare.getText(6), (int) prepare.getLong(7)));
                    }
                    return arrayList2;
                } finally {
                }
        }
    }

    public /* synthetic */ WorkSpecDao_Impl$$ExternalSyntheticLambda12(String str, long j, int i) {
        this.$r8$classId = i;
        this.f$2 = str;
        this.f$1 = j;
    }
}
