package androidx.work.impl.model;

import androidx.compose.runtime.BroadcastFrameClock;
import androidx.room.util.DBUtil;
import androidx.sqlite.SQLite;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import androidx.work.BackoffPolicy;
import androidx.work.Constraints;
import androidx.work.Data;
import androidx.work.NetworkType;
import androidx.work.OutOfQuotaPolicy;
import androidx.work.WorkInfo$State;
import androidx.work.impl.utils.NetworkRequestCompat;
import com.google.android.exoplayer2.offline.DownloadService;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import j$.time.OffsetDateTime;
import java.util.ArrayList;
import kotlin.Result;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.CancellableContinuationImpl;
import okhttp3.Cookie;
import okio.Path;
import org.schabi.newpipe.database.history.dao.StreamHistoryDAO_Impl;
import org.schabi.newpipe.database.history.model.StreamHistoryEntity;
import org.schabi.newpipe.database.playlist.model.PlaylistEntity;
import org.schabi.newpipe.database.playlist.model.PlaylistRemoteEntity;
import org.schabi.newpipe.database.stream.model.StreamStateEntity;
import org.schabi.newpipe.database.subscription.SubscriptionEntity;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class WorkSpecDao_Impl$$ExternalSyntheticLambda26 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ long f$1;

    public /* synthetic */ WorkSpecDao_Impl$$ExternalSyntheticLambda26(long j, StreamHistoryDAO_Impl streamHistoryDAO_Impl) {
        this.$r8$classId = 7;
        this.f$1 = j;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        SQLiteStatement prepare;
        int i;
        int i2;
        Integer valueOf;
        Boolean bool;
        CancellableContinuationImpl cancellableContinuationImpl;
        Object failure;
        Long l;
        StreamHistoryEntity streamHistoryEntity;
        PlaylistRemoteEntity playlistRemoteEntity;
        Long l2;
        Integer num;
        int i3 = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        long j = this.f$1;
        switch (i3) {
            case 0:
                SQLiteConnection sQLiteConnection = (SQLiteConnection) obj;
                sQLiteConnection.getClass();
                prepare = sQLiteConnection.prepare("SELECT * FROM workspec WHERE last_enqueue_time >= ? AND state IN (2, 3, 5) ORDER BY last_enqueue_time DESC");
                try {
                    prepare.bindLong(1, j);
                    int columnIndexOrThrow = DBUtil.getColumnIndexOrThrow(prepare, TtmlNode.ATTR_ID);
                    int columnIndexOrThrow2 = DBUtil.getColumnIndexOrThrow(prepare, "state");
                    int columnIndexOrThrow3 = DBUtil.getColumnIndexOrThrow(prepare, "worker_class_name");
                    int columnIndexOrThrow4 = DBUtil.getColumnIndexOrThrow(prepare, "input_merger_class_name");
                    int columnIndexOrThrow5 = DBUtil.getColumnIndexOrThrow(prepare, "input");
                    int columnIndexOrThrow6 = DBUtil.getColumnIndexOrThrow(prepare, "output");
                    int columnIndexOrThrow7 = DBUtil.getColumnIndexOrThrow(prepare, "initial_delay");
                    int columnIndexOrThrow8 = DBUtil.getColumnIndexOrThrow(prepare, "interval_duration");
                    int columnIndexOrThrow9 = DBUtil.getColumnIndexOrThrow(prepare, "flex_duration");
                    int columnIndexOrThrow10 = DBUtil.getColumnIndexOrThrow(prepare, "run_attempt_count");
                    int columnIndexOrThrow11 = DBUtil.getColumnIndexOrThrow(prepare, "backoff_policy");
                    int columnIndexOrThrow12 = DBUtil.getColumnIndexOrThrow(prepare, "backoff_delay_duration");
                    int columnIndexOrThrow13 = DBUtil.getColumnIndexOrThrow(prepare, "last_enqueue_time");
                    int columnIndexOrThrow14 = DBUtil.getColumnIndexOrThrow(prepare, "minimum_retention_duration");
                    int columnIndexOrThrow15 = DBUtil.getColumnIndexOrThrow(prepare, "schedule_requested_at");
                    int columnIndexOrThrow16 = DBUtil.getColumnIndexOrThrow(prepare, "run_in_foreground");
                    int columnIndexOrThrow17 = DBUtil.getColumnIndexOrThrow(prepare, "out_of_quota_policy");
                    int columnIndexOrThrow18 = DBUtil.getColumnIndexOrThrow(prepare, "period_count");
                    int columnIndexOrThrow19 = DBUtil.getColumnIndexOrThrow(prepare, "generation");
                    int columnIndexOrThrow20 = DBUtil.getColumnIndexOrThrow(prepare, "next_schedule_time_override");
                    int columnIndexOrThrow21 = DBUtil.getColumnIndexOrThrow(prepare, "next_schedule_time_override_generation");
                    int columnIndexOrThrow22 = DBUtil.getColumnIndexOrThrow(prepare, DownloadService.KEY_STOP_REASON);
                    int columnIndexOrThrow23 = DBUtil.getColumnIndexOrThrow(prepare, "trace_tag");
                    int columnIndexOrThrow24 = DBUtil.getColumnIndexOrThrow(prepare, "backoff_on_system_interruptions");
                    int columnIndexOrThrow25 = DBUtil.getColumnIndexOrThrow(prepare, "required_network_type");
                    int columnIndexOrThrow26 = DBUtil.getColumnIndexOrThrow(prepare, "required_network_request");
                    int columnIndexOrThrow27 = DBUtil.getColumnIndexOrThrow(prepare, "requires_charging");
                    int columnIndexOrThrow28 = DBUtil.getColumnIndexOrThrow(prepare, "requires_device_idle");
                    int columnIndexOrThrow29 = DBUtil.getColumnIndexOrThrow(prepare, "requires_battery_not_low");
                    int columnIndexOrThrow30 = DBUtil.getColumnIndexOrThrow(prepare, "requires_storage_not_low");
                    int columnIndexOrThrow31 = DBUtil.getColumnIndexOrThrow(prepare, "trigger_content_update_delay");
                    int columnIndexOrThrow32 = DBUtil.getColumnIndexOrThrow(prepare, "trigger_max_content_delay");
                    int columnIndexOrThrow33 = DBUtil.getColumnIndexOrThrow(prepare, "content_uri_triggers");
                    ArrayList arrayList = new ArrayList();
                    while (prepare.step()) {
                        String text = prepare.getText(columnIndexOrThrow);
                        int i4 = columnIndexOrThrow14;
                        ArrayList arrayList2 = arrayList;
                        WorkInfo$State intToState = SQLite.intToState((int) prepare.getLong(columnIndexOrThrow2));
                        String text2 = prepare.getText(columnIndexOrThrow3);
                        String text3 = prepare.getText(columnIndexOrThrow4);
                        byte[] blob = prepare.getBlob(columnIndexOrThrow5);
                        Data data = Data.EMPTY;
                        Data fromByteArray = Cookie.Companion.fromByteArray(blob);
                        Data fromByteArray2 = Cookie.Companion.fromByteArray(prepare.getBlob(columnIndexOrThrow6));
                        long j2 = prepare.getLong(columnIndexOrThrow7);
                        long j3 = prepare.getLong(columnIndexOrThrow8);
                        long j4 = prepare.getLong(columnIndexOrThrow9);
                        int i5 = (int) prepare.getLong(columnIndexOrThrow10);
                        int i6 = columnIndexOrThrow2;
                        int i7 = columnIndexOrThrow3;
                        BackoffPolicy intToBackoffPolicy = SQLite.intToBackoffPolicy((int) prepare.getLong(columnIndexOrThrow11));
                        long j5 = prepare.getLong(columnIndexOrThrow12);
                        long j6 = prepare.getLong(columnIndexOrThrow13);
                        long j7 = prepare.getLong(i4);
                        int i8 = columnIndexOrThrow15;
                        long j8 = prepare.getLong(i8);
                        int i9 = columnIndexOrThrow;
                        int i10 = columnIndexOrThrow16;
                        boolean z = ((int) prepare.getLong(i10)) != 0;
                        int i11 = columnIndexOrThrow17;
                        int i12 = columnIndexOrThrow4;
                        OutOfQuotaPolicy intToOutOfQuotaPolicy = SQLite.intToOutOfQuotaPolicy((int) prepare.getLong(i11));
                        int i13 = columnIndexOrThrow18;
                        int i14 = columnIndexOrThrow5;
                        int i15 = (int) prepare.getLong(i13);
                        int i16 = columnIndexOrThrow19;
                        int i17 = (int) prepare.getLong(i16);
                        int i18 = columnIndexOrThrow20;
                        long j9 = prepare.getLong(i18);
                        int i19 = columnIndexOrThrow21;
                        int i20 = (int) prepare.getLong(i19);
                        int i21 = columnIndexOrThrow22;
                        int i22 = (int) prepare.getLong(i21);
                        int i23 = columnIndexOrThrow23;
                        String text4 = prepare.isNull(i23) ? null : prepare.getText(i23);
                        int i24 = columnIndexOrThrow24;
                        if (prepare.isNull(i24)) {
                            i = i20;
                            i2 = i21;
                            valueOf = null;
                        } else {
                            i = i20;
                            i2 = i21;
                            valueOf = Integer.valueOf((int) prepare.getLong(i24));
                        }
                        if (valueOf != null) {
                            bool = Boolean.valueOf(valueOf.intValue() != 0);
                        } else {
                            bool = null;
                        }
                        int i25 = columnIndexOrThrow25;
                        NetworkType intToNetworkType = SQLite.intToNetworkType((int) prepare.getLong(i25));
                        int i26 = columnIndexOrThrow26;
                        NetworkRequestCompat networkRequest$work_runtime_release = SQLite.toNetworkRequest$work_runtime_release(prepare.getBlob(i26));
                        columnIndexOrThrow25 = i25;
                        columnIndexOrThrow26 = i26;
                        int i27 = columnIndexOrThrow27;
                        boolean z2 = ((int) prepare.getLong(i27)) != 0;
                        columnIndexOrThrow27 = i27;
                        int i28 = columnIndexOrThrow28;
                        boolean z3 = ((int) prepare.getLong(i28)) != 0;
                        int i29 = columnIndexOrThrow29;
                        boolean z4 = ((int) prepare.getLong(i29)) != 0;
                        columnIndexOrThrow29 = i29;
                        int i30 = columnIndexOrThrow30;
                        int i31 = columnIndexOrThrow31;
                        int i32 = columnIndexOrThrow32;
                        int i33 = columnIndexOrThrow33;
                        columnIndexOrThrow33 = i33;
                        arrayList2.add(new WorkSpec(text, intToState, text2, text3, fromByteArray, fromByteArray2, j2, j3, j4, new Constraints(networkRequest$work_runtime_release, intToNetworkType, z2, z3, z4, ((int) prepare.getLong(i30)) != 0, prepare.getLong(i31), prepare.getLong(i32), SQLite.byteArrayToSetOfTriggers(prepare.getBlob(i33))), i5, intToBackoffPolicy, j5, j6, j7, j8, z, intToOutOfQuotaPolicy, i15, i17, j9, i, i22, text4, bool));
                        columnIndexOrThrow30 = i30;
                        columnIndexOrThrow4 = i12;
                        columnIndexOrThrow17 = i11;
                        columnIndexOrThrow19 = i16;
                        columnIndexOrThrow22 = i2;
                        columnIndexOrThrow24 = i24;
                        columnIndexOrThrow31 = i31;
                        columnIndexOrThrow32 = i32;
                        columnIndexOrThrow2 = i6;
                        columnIndexOrThrow14 = i4;
                        columnIndexOrThrow3 = i7;
                        arrayList = arrayList2;
                        columnIndexOrThrow = i9;
                        columnIndexOrThrow15 = i8;
                        columnIndexOrThrow16 = i10;
                        columnIndexOrThrow20 = i18;
                        columnIndexOrThrow21 = i19;
                        columnIndexOrThrow23 = i23;
                        columnIndexOrThrow28 = i28;
                        columnIndexOrThrow5 = i14;
                        columnIndexOrThrow18 = i13;
                    }
                    return arrayList;
                } finally {
                }
            case 1:
                BroadcastFrameClock.FrameAwaiter frameAwaiter = (BroadcastFrameClock.FrameAwaiter) obj;
                Function1 function1 = frameAwaiter.onFrame;
                if (function1 != null && (cancellableContinuationImpl = frameAwaiter.continuation) != null) {
                    try {
                        failure = function1.invoke(Long.valueOf(j));
                    } catch (Throwable th) {
                        failure = new Result.Failure(th);
                    }
                    cancellableContinuationImpl.resumeWith(failure);
                }
                return unit;
            case 2:
                SQLiteConnection sQLiteConnection2 = (SQLiteConnection) obj;
                sQLiteConnection2.getClass();
                prepare = sQLiteConnection2.prepare("\n        SELECT COUNT(*) FROM subscriptions s\n        \n        INNER JOIN feed_group_subscription_join fgs\n        ON s.uid = fgs.subscription_id AND fgs.group_id = ?\n\n        LEFT JOIN feed_last_updated lu\n        ON s.uid = lu.subscription_id \n\n        WHERE lu.last_updated IS NULL\n        ");
                try {
                    prepare.bindLong(1, j);
                    if (prepare.step() && !prepare.isNull(0)) {
                        l = Long.valueOf(prepare.getLong(0));
                        return l;
                    }
                    l = null;
                    return l;
                } finally {
                }
            case 3:
                SQLiteConnection sQLiteConnection3 = (SQLiteConnection) obj;
                sQLiteConnection3.getClass();
                prepare = sQLiteConnection3.prepare("\n        DELETE FROM feed\n        \n        WHERE feed.subscription_id = ?\n\n        AND feed.stream_id IN (\n            SELECT s.uid FROM streams s\n\n            INNER JOIN feed f\n            ON s.uid = f.stream_id\n\n            WHERE s.stream_type = \"LIVE_STREAM\" OR s.stream_type = \"AUDIO_LIVE_STREAM\"\n        )\n        ");
                try {
                    prepare.bindLong(1, j);
                    prepare.step();
                    return unit;
                } finally {
                }
            case 4:
                SQLiteConnection sQLiteConnection4 = (SQLiteConnection) obj;
                sQLiteConnection4.getClass();
                prepare = sQLiteConnection4.prepare("DELETE FROM feed_group_subscription_join WHERE group_id = ?");
                try {
                    prepare.bindLong(1, j);
                    prepare.step();
                    int totalChangedRows = DBUtil.getTotalChangedRows(sQLiteConnection4);
                    prepare.close();
                    return Integer.valueOf(totalChangedRows);
                } finally {
                }
            case 5:
                SQLiteConnection sQLiteConnection5 = (SQLiteConnection) obj;
                sQLiteConnection5.getClass();
                prepare = sQLiteConnection5.prepare("SELECT subscription_id FROM feed_group_subscription_join WHERE group_id = ?");
                try {
                    prepare.bindLong(1, j);
                    ArrayList arrayList3 = new ArrayList();
                    while (prepare.step()) {
                        arrayList3.add(Long.valueOf(prepare.getLong(0)));
                    }
                    return arrayList3;
                } finally {
                }
            case 6:
                SQLiteConnection sQLiteConnection6 = (SQLiteConnection) obj;
                sQLiteConnection6.getClass();
                prepare = sQLiteConnection6.prepare("DELETE FROM feed_group WHERE uid = ?");
                try {
                    prepare.bindLong(1, j);
                    prepare.step();
                    int totalChangedRows2 = DBUtil.getTotalChangedRows(sQLiteConnection6);
                    prepare.close();
                    return Integer.valueOf(totalChangedRows2);
                } finally {
                }
            case 7:
                SQLiteConnection sQLiteConnection7 = (SQLiteConnection) obj;
                sQLiteConnection7.getClass();
                prepare = sQLiteConnection7.prepare("SELECT * FROM stream_history WHERE stream_id = ? ORDER BY access_date DESC LIMIT 1");
                try {
                    prepare.bindLong(1, j);
                    int columnIndexOrThrow34 = DBUtil.getColumnIndexOrThrow(prepare, "stream_id");
                    int columnIndexOrThrow35 = DBUtil.getColumnIndexOrThrow(prepare, "access_date");
                    int columnIndexOrThrow36 = DBUtil.getColumnIndexOrThrow(prepare, "repeat_count");
                    if (prepare.step()) {
                        long j10 = prepare.getLong(columnIndexOrThrow34);
                        OffsetDateTime offsetDateTimeFromTimestamp = Path.Companion.offsetDateTimeFromTimestamp(prepare.isNull(columnIndexOrThrow35) ? null : Long.valueOf(prepare.getLong(columnIndexOrThrow35)));
                        if (offsetDateTimeFromTimestamp == null) {
                            throw new IllegalStateException("Expected NON-NULL 'java.time.OffsetDateTime', but it was NULL.");
                        }
                        streamHistoryEntity = new StreamHistoryEntity(j10, offsetDateTimeFromTimestamp, prepare.getLong(columnIndexOrThrow36));
                    } else {
                        streamHistoryEntity = null;
                    }
                    return streamHistoryEntity;
                } finally {
                }
            case 8:
                SQLiteConnection sQLiteConnection8 = (SQLiteConnection) obj;
                sQLiteConnection8.getClass();
                prepare = sQLiteConnection8.prepare("DELETE FROM stream_history WHERE stream_id = ?");
                try {
                    prepare.bindLong(1, j);
                    prepare.step();
                    int totalChangedRows3 = DBUtil.getTotalChangedRows(sQLiteConnection8);
                    prepare.close();
                    return Integer.valueOf(totalChangedRows3);
                } finally {
                }
            case 9:
                SQLiteConnection sQLiteConnection9 = (SQLiteConnection) obj;
                sQLiteConnection9.getClass();
                prepare = sQLiteConnection9.prepare("SELECT * FROM playlists WHERE uid = ?");
                try {
                    prepare.bindLong(1, j);
                    int columnIndexOrThrow37 = DBUtil.getColumnIndexOrThrow(prepare, "uid");
                    int columnIndexOrThrow38 = DBUtil.getColumnIndexOrThrow(prepare, "name");
                    int columnIndexOrThrow39 = DBUtil.getColumnIndexOrThrow(prepare, "is_thumbnail_permanent");
                    int columnIndexOrThrow40 = DBUtil.getColumnIndexOrThrow(prepare, "thumbnail_stream_id");
                    int columnIndexOrThrow41 = DBUtil.getColumnIndexOrThrow(prepare, "display_index");
                    ArrayList arrayList4 = new ArrayList();
                    while (prepare.step()) {
                        arrayList4.add(new PlaylistEntity(prepare.getLong(columnIndexOrThrow37), prepare.isNull(columnIndexOrThrow38) ? null : prepare.getText(columnIndexOrThrow38), ((int) prepare.getLong(columnIndexOrThrow39)) != 0, prepare.getLong(columnIndexOrThrow40), prepare.getLong(columnIndexOrThrow41)));
                    }
                    return arrayList4;
                } finally {
                }
            case 10:
                SQLiteConnection sQLiteConnection10 = (SQLiteConnection) obj;
                sQLiteConnection10.getClass();
                prepare = sQLiteConnection10.prepare("DELETE FROM playlists WHERE uid = ?");
                try {
                    prepare.bindLong(1, j);
                    prepare.step();
                    int totalChangedRows4 = DBUtil.getTotalChangedRows(sQLiteConnection10);
                    prepare.close();
                    return Integer.valueOf(totalChangedRows4);
                } finally {
                }
            case 11:
                SQLiteConnection sQLiteConnection11 = (SQLiteConnection) obj;
                sQLiteConnection11.getClass();
                prepare = sQLiteConnection11.prepare("SELECT * FROM remote_playlists WHERE uid = ?");
                try {
                    prepare.bindLong(1, j);
                    int columnIndexOrThrow42 = DBUtil.getColumnIndexOrThrow(prepare, "uid");
                    int columnIndexOrThrow43 = DBUtil.getColumnIndexOrThrow(prepare, "service_id");
                    int columnIndexOrThrow44 = DBUtil.getColumnIndexOrThrow(prepare, "name");
                    int columnIndexOrThrow45 = DBUtil.getColumnIndexOrThrow(prepare, "url");
                    int columnIndexOrThrow46 = DBUtil.getColumnIndexOrThrow(prepare, "thumbnail_url");
                    int columnIndexOrThrow47 = DBUtil.getColumnIndexOrThrow(prepare, "uploader");
                    int columnIndexOrThrow48 = DBUtil.getColumnIndexOrThrow(prepare, "display_index");
                    int columnIndexOrThrow49 = DBUtil.getColumnIndexOrThrow(prepare, "stream_count");
                    if (prepare.step()) {
                        playlistRemoteEntity = new PlaylistRemoteEntity(prepare.getLong(columnIndexOrThrow42), (int) prepare.getLong(columnIndexOrThrow43), prepare.isNull(columnIndexOrThrow44) ? null : prepare.getText(columnIndexOrThrow44), prepare.isNull(columnIndexOrThrow45) ? null : prepare.getText(columnIndexOrThrow45), prepare.isNull(columnIndexOrThrow46) ? null : prepare.getText(columnIndexOrThrow46), prepare.isNull(columnIndexOrThrow47) ? null : prepare.getText(columnIndexOrThrow47), prepare.getLong(columnIndexOrThrow48), prepare.isNull(columnIndexOrThrow49) ? null : Long.valueOf(prepare.getLong(columnIndexOrThrow49)));
                    } else {
                        playlistRemoteEntity = null;
                    }
                    return playlistRemoteEntity;
                } finally {
                }
            case 12:
                SQLiteConnection sQLiteConnection12 = (SQLiteConnection) obj;
                sQLiteConnection12.getClass();
                prepare = sQLiteConnection12.prepare("DELETE FROM remote_playlists WHERE uid = ?");
                try {
                    prepare.bindLong(1, j);
                    prepare.step();
                    int totalChangedRows5 = DBUtil.getTotalChangedRows(sQLiteConnection12);
                    prepare.close();
                    return Integer.valueOf(totalChangedRows5);
                } finally {
                }
            case 13:
                SQLiteConnection sQLiteConnection13 = (SQLiteConnection) obj;
                sQLiteConnection13.getClass();
                prepare = sQLiteConnection13.prepare("\n        SELECT CASE WHEN COUNT(*) != 0 then stream_id ELSE -1 END\n        FROM streams\n\n        LEFT JOIN playlist_stream_join\n        ON uid = stream_id\n\n        WHERE playlist_id = ? LIMIT 1\n        ");
                try {
                    prepare.bindLong(1, j);
                    if (prepare.step() && !prepare.isNull(0)) {
                        l2 = Long.valueOf(prepare.getLong(0));
                        return l2;
                    }
                    l2 = null;
                    return l2;
                } finally {
                }
            case 14:
                SQLiteConnection sQLiteConnection14 = (SQLiteConnection) obj;
                sQLiteConnection14.getClass();
                prepare = sQLiteConnection14.prepare("DELETE FROM playlist_stream_join WHERE playlist_id = ?");
                try {
                    prepare.bindLong(1, j);
                    prepare.step();
                    return unit;
                } finally {
                }
            case 15:
                SQLiteConnection sQLiteConnection15 = (SQLiteConnection) obj;
                sQLiteConnection15.getClass();
                prepare = sQLiteConnection15.prepare("SELECT COALESCE(MAX(join_index), -1) FROM playlist_stream_join WHERE playlist_id = ?");
                try {
                    prepare.bindLong(1, j);
                    if (prepare.step() && !prepare.isNull(0)) {
                        num = Integer.valueOf((int) prepare.getLong(0));
                        return num;
                    }
                    num = null;
                    return num;
                } finally {
                }
            case 16:
                SQLiteConnection sQLiteConnection16 = (SQLiteConnection) obj;
                sQLiteConnection16.getClass();
                prepare = sQLiteConnection16.prepare("SELECT * FROM stream_state WHERE stream_id = ?");
                try {
                    prepare.bindLong(1, j);
                    int columnIndexOrThrow50 = DBUtil.getColumnIndexOrThrow(prepare, "stream_id");
                    int columnIndexOrThrow51 = DBUtil.getColumnIndexOrThrow(prepare, "progress_time");
                    ArrayList arrayList5 = new ArrayList();
                    while (prepare.step()) {
                        arrayList5.add(new StreamStateEntity(prepare.getLong(columnIndexOrThrow50), prepare.getLong(columnIndexOrThrow51)));
                    }
                    return arrayList5;
                } finally {
                }
            case 17:
                SQLiteConnection sQLiteConnection17 = (SQLiteConnection) obj;
                sQLiteConnection17.getClass();
                prepare = sQLiteConnection17.prepare("DELETE FROM stream_state WHERE stream_id = ?");
                try {
                    prepare.bindLong(1, j);
                    prepare.step();
                    int totalChangedRows6 = DBUtil.getTotalChangedRows(sQLiteConnection17);
                    prepare.close();
                    return Integer.valueOf(totalChangedRows6);
                } finally {
                }
            case 18:
                SQLiteConnection sQLiteConnection18 = (SQLiteConnection) obj;
                sQLiteConnection18.getClass();
                prepare = sQLiteConnection18.prepare("SELECT * FROM subscriptions WHERE uid = ?");
                try {
                    prepare.bindLong(1, j);
                    int columnIndexOrThrow52 = DBUtil.getColumnIndexOrThrow(prepare, "uid");
                    int columnIndexOrThrow53 = DBUtil.getColumnIndexOrThrow(prepare, "service_id");
                    int columnIndexOrThrow54 = DBUtil.getColumnIndexOrThrow(prepare, "url");
                    int columnIndexOrThrow55 = DBUtil.getColumnIndexOrThrow(prepare, "name");
                    int columnIndexOrThrow56 = DBUtil.getColumnIndexOrThrow(prepare, "avatar_url");
                    int columnIndexOrThrow57 = DBUtil.getColumnIndexOrThrow(prepare, "subscriber_count");
                    int columnIndexOrThrow58 = DBUtil.getColumnIndexOrThrow(prepare, "description");
                    int columnIndexOrThrow59 = DBUtil.getColumnIndexOrThrow(prepare, "notification_mode");
                    if (prepare.step()) {
                        return new SubscriptionEntity(prepare.getLong(columnIndexOrThrow52), (int) prepare.getLong(columnIndexOrThrow53), prepare.isNull(columnIndexOrThrow54) ? null : prepare.getText(columnIndexOrThrow54), prepare.isNull(columnIndexOrThrow55) ? null : prepare.getText(columnIndexOrThrow55), prepare.isNull(columnIndexOrThrow56) ? null : prepare.getText(columnIndexOrThrow56), prepare.isNull(columnIndexOrThrow57) ? null : Long.valueOf(prepare.getLong(columnIndexOrThrow57)), prepare.isNull(columnIndexOrThrow58) ? null : prepare.getText(columnIndexOrThrow58), (int) prepare.getLong(columnIndexOrThrow59));
                    }
                    throw new IllegalStateException("The query result was empty, but expected a single row to return a NON-NULL object of type 'org.schabi.newpipe.database.subscription.SubscriptionEntity'.");
                } finally {
                }
            default:
                SQLiteConnection sQLiteConnection19 = (SQLiteConnection) obj;
                sQLiteConnection19.getClass();
                prepare = sQLiteConnection19.prepare("SELECT `uid`, `service_id`, `url`, `name`, `avatar_url`, `subscriber_count`, `description`, `notification_mode` FROM (\n        SELECT * FROM subscriptions s\n\n        LEFT JOIN feed_group_subscription_join fgs\n        ON s.uid = fgs.subscription_id\n\n        WHERE (fgs.subscription_id IS NULL OR fgs.group_id = ?)\n\n        ORDER BY name COLLATE NOCASE ASC\n        )");
                try {
                    prepare.bindLong(1, j);
                    ArrayList arrayList6 = new ArrayList();
                    while (prepare.step()) {
                        arrayList6.add(new SubscriptionEntity(prepare.getLong(0), (int) prepare.getLong(1), prepare.isNull(2) ? null : prepare.getText(2), prepare.isNull(3) ? null : prepare.getText(3), prepare.isNull(4) ? null : prepare.getText(4), prepare.isNull(5) ? null : Long.valueOf(prepare.getLong(5)), prepare.isNull(6) ? null : prepare.getText(6), (int) prepare.getLong(7)));
                    }
                    return arrayList6;
                } finally {
                }
        }
    }

    public /* synthetic */ WorkSpecDao_Impl$$ExternalSyntheticLambda26(long j, int i) {
        this.$r8$classId = i;
        this.f$1 = j;
    }
}
