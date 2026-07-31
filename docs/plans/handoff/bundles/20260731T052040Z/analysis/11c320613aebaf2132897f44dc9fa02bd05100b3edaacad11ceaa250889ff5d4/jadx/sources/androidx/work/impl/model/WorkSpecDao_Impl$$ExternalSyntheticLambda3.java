package androidx.work.impl.model;

import androidx.room.util.DBUtil;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import j$.time.OffsetDateTime;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import okio.Path;
import org.schabi.newpipe.database.stream.dao.StreamDAO$StreamCompareFeed;
import org.schabi.newpipe.database.stream.dao.StreamDAO_Impl;
import org.schabi.newpipe.database.subscription.SubscriptionEntity;
import org.schabi.newpipe.extractor.stream.StreamType;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class WorkSpecDao_Impl$$ExternalSyntheticLambda3 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ int f$1;
    public final /* synthetic */ Object f$2;

    public /* synthetic */ WorkSpecDao_Impl$$ExternalSyntheticLambda3(String str, int i, StreamDAO_Impl streamDAO_Impl) {
        this.$r8$classId = 5;
        this.f$2 = str;
        this.f$1 = i;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        SQLiteStatement prepare;
        StreamDAO$StreamCompareFeed streamDAO$StreamCompareFeed;
        Boolean bool;
        SubscriptionEntity subscriptionEntity;
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Object obj2 = this.f$2;
        int i2 = this.f$1;
        switch (i) {
            case 0:
                String str = (String) obj2;
                SQLiteConnection sQLiteConnection = (SQLiteConnection) obj;
                sQLiteConnection.getClass();
                prepare = sQLiteConnection.prepare("UPDATE workspec SET stop_reason=? WHERE id=?");
                try {
                    prepare.bindLong(1, i2);
                    prepare.bindText(2, str);
                    prepare.step();
                    return unit;
                } finally {
                }
            case 1:
                String str2 = (String) obj2;
                SQLiteConnection sQLiteConnection2 = (SQLiteConnection) obj;
                sQLiteConnection2.getClass();
                prepare = sQLiteConnection2.prepare("SELECT * FROM SystemIdInfo WHERE work_spec_id=? AND generation=?");
                try {
                    prepare.bindText(1, str2);
                    prepare.bindLong(2, i2);
                    return prepare.step() ? new SystemIdInfo(prepare.getText(DBUtil.getColumnIndexOrThrow(prepare, "work_spec_id")), (int) prepare.getLong(DBUtil.getColumnIndexOrThrow(prepare, "generation")), (int) prepare.getLong(DBUtil.getColumnIndexOrThrow(prepare, "system_id"))) : null;
                } finally {
                }
            case 2:
                String str3 = (String) obj2;
                SQLiteConnection sQLiteConnection3 = (SQLiteConnection) obj;
                sQLiteConnection3.getClass();
                prepare = sQLiteConnection3.prepare("UPDATE workspec SET next_schedule_time_override=9223372036854775807 WHERE (id=? AND next_schedule_time_override_generation=?)");
                try {
                    prepare.bindText(1, str3);
                    prepare.bindLong(2, i2);
                    prepare.step();
                    return unit;
                } finally {
                }
            case 3:
                String str4 = (String) obj2;
                SQLiteConnection sQLiteConnection4 = (SQLiteConnection) obj;
                sQLiteConnection4.getClass();
                prepare = sQLiteConnection4.prepare("\n        SELECT search FROM search_history WHERE search LIKE ? ||\n        '%' GROUP BY search ORDER BY MAX(creation_date) DESC LIMIT ?\n        ");
                try {
                    prepare.bindText(1, str4);
                    prepare.bindLong(2, i2);
                    ArrayList arrayList = new ArrayList();
                    while (prepare.step()) {
                        arrayList.add(prepare.getText(0));
                    }
                    return arrayList;
                } finally {
                }
            case 4:
                String str5 = (String) obj2;
                SQLiteConnection sQLiteConnection5 = (SQLiteConnection) obj;
                sQLiteConnection5.getClass();
                prepare = sQLiteConnection5.prepare("SELECT COUNT(*) != 0 FROM streams WHERE url = ? AND service_id = ?");
                try {
                    prepare.bindText(1, str5);
                    prepare.bindLong(2, i2);
                    if (prepare.step()) {
                        if (((int) prepare.getLong(0)) != 0) {
                            r12 = true;
                        }
                    }
                    prepare.close();
                    return Boolean.valueOf(r12);
                } finally {
                }
            case 5:
                String str6 = (String) obj2;
                SQLiteConnection sQLiteConnection6 = (SQLiteConnection) obj;
                sQLiteConnection6.getClass();
                prepare = sQLiteConnection6.prepare("\n        SELECT uid, stream_type, textual_upload_date, upload_date, is_upload_date_approximation, duration \n        FROM streams WHERE url = ? AND service_id = ?\n        ");
                try {
                    prepare.bindText(1, str6);
                    prepare.bindLong(2, i2);
                    if (prepare.step()) {
                        long j = prepare.getLong(0);
                        StreamType streamTypeOf = Path.Companion.streamTypeOf(prepare.getText(1));
                        String text = prepare.isNull(2) ? null : prepare.getText(2);
                        OffsetDateTime offsetDateTimeFromTimestamp = Path.Companion.offsetDateTimeFromTimestamp(prepare.isNull(3) ? null : Long.valueOf(prepare.getLong(3)));
                        Integer valueOf = prepare.isNull(4) ? null : Integer.valueOf((int) prepare.getLong(4));
                        if (valueOf != null) {
                            bool = Boolean.valueOf(valueOf.intValue() != 0);
                        } else {
                            bool = null;
                        }
                        long j2 = prepare.getLong(5);
                        streamTypeOf.getClass();
                        StreamDAO$StreamCompareFeed streamDAO$StreamCompareFeed2 = new StreamDAO$StreamCompareFeed();
                        streamDAO$StreamCompareFeed2.uid = j;
                        streamDAO$StreamCompareFeed2.streamType = streamTypeOf;
                        streamDAO$StreamCompareFeed2.textualUploadDate = text;
                        streamDAO$StreamCompareFeed2.uploadDate = offsetDateTimeFromTimestamp;
                        streamDAO$StreamCompareFeed2.isUploadDateApproximation = bool;
                        streamDAO$StreamCompareFeed2.duration = j2;
                        streamDAO$StreamCompareFeed = streamDAO$StreamCompareFeed2;
                    } else {
                        streamDAO$StreamCompareFeed = null;
                    }
                    return streamDAO$StreamCompareFeed;
                } finally {
                }
            case 6:
                String str7 = (String) obj2;
                SQLiteConnection sQLiteConnection7 = (SQLiteConnection) obj;
                sQLiteConnection7.getClass();
                prepare = sQLiteConnection7.prepare("SELECT * FROM subscriptions WHERE url LIKE ? AND service_id = ?");
                try {
                    prepare.bindText(1, str7);
                    prepare.bindLong(2, i2);
                    int columnIndexOrThrow = DBUtil.getColumnIndexOrThrow(prepare, "uid");
                    int columnIndexOrThrow2 = DBUtil.getColumnIndexOrThrow(prepare, "service_id");
                    int columnIndexOrThrow3 = DBUtil.getColumnIndexOrThrow(prepare, "url");
                    int columnIndexOrThrow4 = DBUtil.getColumnIndexOrThrow(prepare, "name");
                    int columnIndexOrThrow5 = DBUtil.getColumnIndexOrThrow(prepare, "avatar_url");
                    int columnIndexOrThrow6 = DBUtil.getColumnIndexOrThrow(prepare, "subscriber_count");
                    int columnIndexOrThrow7 = DBUtil.getColumnIndexOrThrow(prepare, "description");
                    int columnIndexOrThrow8 = DBUtil.getColumnIndexOrThrow(prepare, "notification_mode");
                    ArrayList arrayList2 = new ArrayList();
                    while (prepare.step()) {
                        arrayList2.add(new SubscriptionEntity(prepare.getLong(columnIndexOrThrow), (int) prepare.getLong(columnIndexOrThrow2), prepare.isNull(columnIndexOrThrow3) ? null : prepare.getText(columnIndexOrThrow3), prepare.isNull(columnIndexOrThrow4) ? null : prepare.getText(columnIndexOrThrow4), prepare.isNull(columnIndexOrThrow5) ? null : prepare.getText(columnIndexOrThrow5), prepare.isNull(columnIndexOrThrow6) ? null : Long.valueOf(prepare.getLong(columnIndexOrThrow6)), prepare.isNull(columnIndexOrThrow7) ? null : prepare.getText(columnIndexOrThrow7), (int) prepare.getLong(columnIndexOrThrow8)));
                    }
                    return arrayList2;
                } finally {
                }
            case 7:
                String str8 = (String) obj2;
                SQLiteConnection sQLiteConnection8 = (SQLiteConnection) obj;
                sQLiteConnection8.getClass();
                prepare = sQLiteConnection8.prepare("DELETE FROM subscriptions WHERE url LIKE ? AND service_id = ?");
                try {
                    prepare.bindText(1, str8);
                    prepare.bindLong(2, i2);
                    prepare.step();
                    int totalChangedRows = DBUtil.getTotalChangedRows(sQLiteConnection8);
                    prepare.close();
                    return Integer.valueOf(totalChangedRows);
                } finally {
                }
            case 8:
                String str9 = (String) obj2;
                SQLiteConnection sQLiteConnection9 = (SQLiteConnection) obj;
                sQLiteConnection9.getClass();
                prepare = sQLiteConnection9.prepare("SELECT uid FROM subscriptions WHERE url LIKE ? AND service_id = ?");
                try {
                    prepare.bindText(1, str9);
                    prepare.bindLong(2, i2);
                    return (!prepare.step() || prepare.isNull(0)) ? null : Long.valueOf(prepare.getLong(0));
                } finally {
                }
            case 9:
                String str10 = (String) obj2;
                SQLiteConnection sQLiteConnection10 = (SQLiteConnection) obj;
                sQLiteConnection10.getClass();
                prepare = sQLiteConnection10.prepare("SELECT * FROM subscriptions WHERE url LIKE ? AND service_id = ?");
                try {
                    prepare.bindText(1, str10);
                    prepare.bindLong(2, i2);
                    int columnIndexOrThrow9 = DBUtil.getColumnIndexOrThrow(prepare, "uid");
                    int columnIndexOrThrow10 = DBUtil.getColumnIndexOrThrow(prepare, "service_id");
                    int columnIndexOrThrow11 = DBUtil.getColumnIndexOrThrow(prepare, "url");
                    int columnIndexOrThrow12 = DBUtil.getColumnIndexOrThrow(prepare, "name");
                    int columnIndexOrThrow13 = DBUtil.getColumnIndexOrThrow(prepare, "avatar_url");
                    int columnIndexOrThrow14 = DBUtil.getColumnIndexOrThrow(prepare, "subscriber_count");
                    int columnIndexOrThrow15 = DBUtil.getColumnIndexOrThrow(prepare, "description");
                    int columnIndexOrThrow16 = DBUtil.getColumnIndexOrThrow(prepare, "notification_mode");
                    if (prepare.step()) {
                        subscriptionEntity = new SubscriptionEntity(prepare.getLong(columnIndexOrThrow9), (int) prepare.getLong(columnIndexOrThrow10), prepare.isNull(columnIndexOrThrow11) ? null : prepare.getText(columnIndexOrThrow11), prepare.isNull(columnIndexOrThrow12) ? null : prepare.getText(columnIndexOrThrow12), prepare.isNull(columnIndexOrThrow13) ? null : prepare.getText(columnIndexOrThrow13), prepare.isNull(columnIndexOrThrow14) ? null : Long.valueOf(prepare.getLong(columnIndexOrThrow14)), prepare.isNull(columnIndexOrThrow15) ? null : prepare.getText(columnIndexOrThrow15), (int) prepare.getLong(columnIndexOrThrow16));
                    } else {
                        subscriptionEntity = null;
                    }
                    return subscriptionEntity;
                } finally {
                }
            default:
                return Boolean.valueOf(((List) obj).addAll(i2, (Collection) obj2));
        }
    }

    public /* synthetic */ WorkSpecDao_Impl$$ExternalSyntheticLambda3(String str, int i, int i2) {
        this.$r8$classId = i2;
        this.f$2 = str;
        this.f$1 = i;
    }

    public /* synthetic */ WorkSpecDao_Impl$$ExternalSyntheticLambda3(int i, Object obj, int i2) {
        this.$r8$classId = i2;
        this.f$1 = i;
        this.f$2 = obj;
    }
}
