package org.schabi.newpipe.database.feed.dao;

import androidx.room.util.DBUtil;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import j$.time.OffsetDateTime;
import java.util.ArrayList;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import okio.Path;
import org.schabi.newpipe.database.subscription.SubscriptionEntity;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class FeedDAO_Impl$$ExternalSyntheticLambda0 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ FeedDAO_Impl f$1;
    public final /* synthetic */ OffsetDateTime f$2;

    public /* synthetic */ FeedDAO_Impl$$ExternalSyntheticLambda0(FeedDAO_Impl feedDAO_Impl, OffsetDateTime offsetDateTime, int i) {
        this.$r8$classId = i;
        this.f$1 = feedDAO_Impl;
        this.f$2 = offsetDateTime;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        SQLiteStatement prepare;
        int i = this.$r8$classId;
        OffsetDateTime offsetDateTime = this.f$2;
        FeedDAO_Impl feedDAO_Impl = this.f$1;
        switch (i) {
            case 0:
                SQLiteConnection sQLiteConnection = (SQLiteConnection) obj;
                sQLiteConnection.getClass();
                prepare = sQLiteConnection.prepare("\n        SELECT s.* FROM subscriptions s\n\n        LEFT JOIN feed_last_updated lu\n        ON s.uid = lu.subscription_id \n\n        WHERE lu.last_updated IS NULL OR lu.last_updated < ?\n        ");
                try {
                    Path.Companion companion = feedDAO_Impl.__converters;
                    Long offsetDateTimeToTimestamp = Path.Companion.offsetDateTimeToTimestamp(offsetDateTime);
                    if (offsetDateTimeToTimestamp == null) {
                        prepare.bindNull(1);
                    } else {
                        prepare.bindLong(1, offsetDateTimeToTimestamp.longValue());
                    }
                    int columnIndexOrThrow = DBUtil.getColumnIndexOrThrow(prepare, "uid");
                    int columnIndexOrThrow2 = DBUtil.getColumnIndexOrThrow(prepare, "service_id");
                    int columnIndexOrThrow3 = DBUtil.getColumnIndexOrThrow(prepare, "url");
                    int columnIndexOrThrow4 = DBUtil.getColumnIndexOrThrow(prepare, "name");
                    int columnIndexOrThrow5 = DBUtil.getColumnIndexOrThrow(prepare, "avatar_url");
                    int columnIndexOrThrow6 = DBUtil.getColumnIndexOrThrow(prepare, "subscriber_count");
                    int columnIndexOrThrow7 = DBUtil.getColumnIndexOrThrow(prepare, "description");
                    int columnIndexOrThrow8 = DBUtil.getColumnIndexOrThrow(prepare, "notification_mode");
                    ArrayList arrayList = new ArrayList();
                    while (prepare.step()) {
                        arrayList.add(new SubscriptionEntity(prepare.getLong(columnIndexOrThrow), (int) prepare.getLong(columnIndexOrThrow2), prepare.isNull(columnIndexOrThrow3) ? null : prepare.getText(columnIndexOrThrow3), prepare.isNull(columnIndexOrThrow4) ? null : prepare.getText(columnIndexOrThrow4), prepare.isNull(columnIndexOrThrow5) ? null : prepare.getText(columnIndexOrThrow5), prepare.isNull(columnIndexOrThrow6) ? null : Long.valueOf(prepare.getLong(columnIndexOrThrow6)), prepare.isNull(columnIndexOrThrow7) ? null : prepare.getText(columnIndexOrThrow7), (int) prepare.getLong(columnIndexOrThrow8)));
                    }
                    prepare.close();
                    return arrayList;
                } finally {
                    prepare.close();
                }
            case 1:
                SQLiteConnection sQLiteConnection2 = (SQLiteConnection) obj;
                sQLiteConnection2.getClass();
                SQLiteStatement prepare2 = sQLiteConnection2.prepare("\n        SELECT s.* FROM subscriptions s\n\n        LEFT JOIN feed_last_updated lu\n        ON s.uid = lu.subscription_id\n\n        WHERE \n            (lu.last_updated IS NULL OR lu.last_updated < ?)\n            AND s.notification_mode = ?\n        ");
                try {
                    Path.Companion companion2 = feedDAO_Impl.__converters;
                    Long offsetDateTimeToTimestamp2 = Path.Companion.offsetDateTimeToTimestamp(offsetDateTime);
                    if (offsetDateTimeToTimestamp2 == null) {
                        prepare2.bindNull(1);
                    } else {
                        prepare2.bindLong(1, offsetDateTimeToTimestamp2.longValue());
                    }
                    prepare2.bindLong(2, 1L);
                    int columnIndexOrThrow9 = DBUtil.getColumnIndexOrThrow(prepare2, "uid");
                    int columnIndexOrThrow10 = DBUtil.getColumnIndexOrThrow(prepare2, "service_id");
                    int columnIndexOrThrow11 = DBUtil.getColumnIndexOrThrow(prepare2, "url");
                    int columnIndexOrThrow12 = DBUtil.getColumnIndexOrThrow(prepare2, "name");
                    int columnIndexOrThrow13 = DBUtil.getColumnIndexOrThrow(prepare2, "avatar_url");
                    int columnIndexOrThrow14 = DBUtil.getColumnIndexOrThrow(prepare2, "subscriber_count");
                    int columnIndexOrThrow15 = DBUtil.getColumnIndexOrThrow(prepare2, "description");
                    int columnIndexOrThrow16 = DBUtil.getColumnIndexOrThrow(prepare2, "notification_mode");
                    ArrayList arrayList2 = new ArrayList();
                    while (prepare2.step()) {
                        arrayList2.add(new SubscriptionEntity(prepare2.getLong(columnIndexOrThrow9), (int) prepare2.getLong(columnIndexOrThrow10), prepare2.isNull(columnIndexOrThrow11) ? null : prepare2.getText(columnIndexOrThrow11), prepare2.isNull(columnIndexOrThrow12) ? null : prepare2.getText(columnIndexOrThrow12), prepare2.isNull(columnIndexOrThrow13) ? null : prepare2.getText(columnIndexOrThrow13), prepare2.isNull(columnIndexOrThrow14) ? null : Long.valueOf(prepare2.getLong(columnIndexOrThrow14)), prepare2.isNull(columnIndexOrThrow15) ? null : prepare2.getText(columnIndexOrThrow15), (int) prepare2.getLong(columnIndexOrThrow16)));
                    }
                    prepare2.close();
                    return arrayList2;
                } finally {
                }
            default:
                SQLiteConnection sQLiteConnection3 = (SQLiteConnection) obj;
                sQLiteConnection3.getClass();
                prepare = sQLiteConnection3.prepare("\n        DELETE FROM feed\n        WHERE feed.stream_id IN (SELECT uid from (\n              SELECT s.uid,\n              (SELECT MAX(upload_date)\n                    FROM streams s1\n                    INNER JOIN feed f1\n                    ON s1.uid = f1.stream_id\n                    WHERE f1.subscription_id = f.subscription_id) max_upload_date\n              FROM streams s\n              INNER JOIN feed f\n              ON s.uid = f.stream_id\n        \n              WHERE s.upload_date < ?\n              AND   s.upload_date <> max_upload_date))\n        ");
                try {
                    Path.Companion companion3 = feedDAO_Impl.__converters;
                    Long offsetDateTimeToTimestamp3 = Path.Companion.offsetDateTimeToTimestamp(offsetDateTime);
                    if (offsetDateTimeToTimestamp3 == null) {
                        prepare.bindNull(1);
                    } else {
                        prepare.bindLong(1, offsetDateTimeToTimestamp3.longValue());
                    }
                    prepare.step();
                    prepare.close();
                    return Unit.INSTANCE;
                } finally {
                }
        }
    }
}
