package kotlin.text;

import androidx.compose.ui.semantics.SemanticsProperties;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyKey;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.room.util.DBUtil;
import androidx.sqlite.SQLite;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import androidx.work.BackoffPolicy;
import androidx.work.Constraints;
import androidx.work.Data;
import androidx.work.OutOfQuotaPolicy;
import androidx.work.WorkInfo$State;
import androidx.work.impl.model.WorkSpec;
import com.google.android.exoplayer2.offline.DownloadService;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.util.ArrayList;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.KProperty;
import okhttp3.Cookie;
import org.jsoup.Jsoup;
import org.schabi.newpipe.database.playlist.PlaylistDuplicatesEntry;
import org.schabi.newpipe.database.subscription.SubscriptionEntity;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class StringsKt__IndentKt$$ExternalSyntheticLambda0 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ String f$0;

    public /* synthetic */ StringsKt__IndentKt$$ExternalSyntheticLambda0(String str, int i) {
        this.$r8$classId = i;
        this.f$0 = str;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        SQLiteStatement prepare;
        boolean z;
        boolean z2;
        boolean z3;
        WorkSpec workSpec;
        Boolean bool;
        WorkInfo$State workInfo$State;
        Boolean bool2;
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        String str = this.f$0;
        switch (i) {
            case 0:
                String str2 = (String) obj;
                str2.getClass();
                return StringsKt.isBlank(str2) ? str2.length() < str.length() ? str : str2 : str.concat(str2);
            case 1:
                KProperty[] kPropertyArr = SemanticsPropertiesKt.$$delegatedProperties;
                SemanticsPropertyKey semanticsPropertyKey = SemanticsProperties.PaneTitle;
                KProperty kProperty = SemanticsPropertiesKt.$$delegatedProperties[2];
                ((SemanticsPropertyReceiver) obj).set(semanticsPropertyKey, str);
                return unit;
            case 2:
                SemanticsPropertyReceiver semanticsPropertyReceiver = (SemanticsPropertyReceiver) obj;
                KProperty[] kPropertyArr2 = SemanticsPropertiesKt.$$delegatedProperties;
                semanticsPropertyReceiver.set(SemanticsProperties.ContentDescription, Jsoup.listOf(str));
                SemanticsPropertiesKt.m399setRolekuIjeqM(semanticsPropertyReceiver, 5);
                return unit;
            case 3:
                SQLiteConnection sQLiteConnection = (SQLiteConnection) obj;
                sQLiteConnection.getClass();
                prepare = sQLiteConnection.prepare("SELECT COUNT(*)>0 FROM dependency WHERE prerequisite_id=?");
                try {
                    prepare.bindText(1, str);
                    if (prepare.step()) {
                        z = false;
                        if (((int) prepare.getLong(0)) != 0) {
                            z2 = true;
                            prepare.close();
                            return Boolean.valueOf(z2);
                        }
                    } else {
                        z = false;
                    }
                    z2 = z;
                    prepare.close();
                    return Boolean.valueOf(z2);
                } finally {
                }
            case 4:
                SQLiteConnection sQLiteConnection2 = (SQLiteConnection) obj;
                sQLiteConnection2.getClass();
                prepare = sQLiteConnection2.prepare("SELECT work_spec_id FROM dependency WHERE prerequisite_id=?");
                try {
                    prepare.bindText(1, str);
                    ArrayList arrayList = new ArrayList();
                    while (prepare.step()) {
                        arrayList.add(prepare.getText(0));
                    }
                    return arrayList;
                } finally {
                }
            case 5:
                SQLiteConnection sQLiteConnection3 = (SQLiteConnection) obj;
                sQLiteConnection3.getClass();
                prepare = sQLiteConnection3.prepare("SELECT COUNT(*)=0 FROM dependency WHERE work_spec_id=? AND prerequisite_id IN (SELECT id FROM workspec WHERE state!=2)");
                try {
                    prepare.bindText(1, str);
                    if (prepare.step()) {
                        if (((int) prepare.getLong(0)) != 0) {
                            z3 = true;
                            prepare.close();
                            return Boolean.valueOf(z3);
                        }
                    }
                    z3 = false;
                    prepare.close();
                    return Boolean.valueOf(z3);
                } finally {
                }
            case 6:
                SQLiteConnection sQLiteConnection4 = (SQLiteConnection) obj;
                sQLiteConnection4.getClass();
                prepare = sQLiteConnection4.prepare("SELECT long_value FROM Preference where `key`=?");
                try {
                    prepare.bindText(1, str);
                    return (!prepare.step() || prepare.isNull(0)) ? null : Long.valueOf(prepare.getLong(0));
                } finally {
                }
            case 7:
                SQLiteConnection sQLiteConnection5 = (SQLiteConnection) obj;
                sQLiteConnection5.getClass();
                prepare = sQLiteConnection5.prepare("DELETE FROM SystemIdInfo where work_spec_id=?");
                try {
                    prepare.bindText(1, str);
                    prepare.step();
                    return unit;
                } finally {
                }
            case 8:
                SQLiteConnection sQLiteConnection6 = (SQLiteConnection) obj;
                sQLiteConnection6.getClass();
                prepare = sQLiteConnection6.prepare("SELECT name FROM workname WHERE work_spec_id=?");
                try {
                    prepare.bindText(1, str);
                    ArrayList arrayList2 = new ArrayList();
                    while (prepare.step()) {
                        arrayList2.add(prepare.getText(0));
                    }
                    return arrayList2;
                } finally {
                }
            case 9:
                SQLiteConnection sQLiteConnection7 = (SQLiteConnection) obj;
                sQLiteConnection7.getClass();
                prepare = sQLiteConnection7.prepare("DELETE from WorkProgress where work_spec_id=?");
                try {
                    prepare.bindText(1, str);
                    prepare.step();
                    return unit;
                } finally {
                }
            case 10:
                SQLiteConnection sQLiteConnection8 = (SQLiteConnection) obj;
                sQLiteConnection8.getClass();
                prepare = sQLiteConnection8.prepare("SELECT * FROM workspec WHERE id=?");
                try {
                    prepare.bindText(1, str);
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
                    if (prepare.step()) {
                        String text = prepare.getText(columnIndexOrThrow);
                        WorkInfo$State intToState = SQLite.intToState((int) prepare.getLong(columnIndexOrThrow2));
                        String text2 = prepare.getText(columnIndexOrThrow3);
                        String text3 = prepare.getText(columnIndexOrThrow4);
                        byte[] blob = prepare.getBlob(columnIndexOrThrow5);
                        Data data = Data.EMPTY;
                        Data fromByteArray = Cookie.Companion.fromByteArray(blob);
                        Data fromByteArray2 = Cookie.Companion.fromByteArray(prepare.getBlob(columnIndexOrThrow6));
                        long j = prepare.getLong(columnIndexOrThrow7);
                        long j2 = prepare.getLong(columnIndexOrThrow8);
                        long j3 = prepare.getLong(columnIndexOrThrow9);
                        int i2 = (int) prepare.getLong(columnIndexOrThrow10);
                        BackoffPolicy intToBackoffPolicy = SQLite.intToBackoffPolicy((int) prepare.getLong(columnIndexOrThrow11));
                        long j4 = prepare.getLong(columnIndexOrThrow12);
                        long j5 = prepare.getLong(columnIndexOrThrow13);
                        long j6 = prepare.getLong(columnIndexOrThrow14);
                        long j7 = prepare.getLong(columnIndexOrThrow15);
                        boolean z4 = ((int) prepare.getLong(columnIndexOrThrow16)) != 0;
                        OutOfQuotaPolicy intToOutOfQuotaPolicy = SQLite.intToOutOfQuotaPolicy((int) prepare.getLong(columnIndexOrThrow17));
                        int i3 = (int) prepare.getLong(columnIndexOrThrow18);
                        int i4 = (int) prepare.getLong(columnIndexOrThrow19);
                        long j8 = prepare.getLong(columnIndexOrThrow20);
                        int i5 = (int) prepare.getLong(columnIndexOrThrow21);
                        int i6 = (int) prepare.getLong(columnIndexOrThrow22);
                        String text4 = prepare.isNull(columnIndexOrThrow23) ? null : prepare.getText(columnIndexOrThrow23);
                        Integer valueOf = prepare.isNull(columnIndexOrThrow24) ? null : Integer.valueOf((int) prepare.getLong(columnIndexOrThrow24));
                        if (valueOf != null) {
                            bool = Boolean.valueOf(valueOf.intValue() != 0);
                        } else {
                            bool = null;
                        }
                        workSpec = new WorkSpec(text, intToState, text2, text3, fromByteArray, fromByteArray2, j, j2, j3, new Constraints(SQLite.toNetworkRequest$work_runtime_release(prepare.getBlob(columnIndexOrThrow26)), SQLite.intToNetworkType((int) prepare.getLong(columnIndexOrThrow25)), ((int) prepare.getLong(columnIndexOrThrow27)) != 0, ((int) prepare.getLong(columnIndexOrThrow28)) != 0, ((int) prepare.getLong(columnIndexOrThrow29)) != 0, ((int) prepare.getLong(columnIndexOrThrow30)) != 0, prepare.getLong(columnIndexOrThrow31), prepare.getLong(columnIndexOrThrow32), SQLite.byteArrayToSetOfTriggers(prepare.getBlob(columnIndexOrThrow33))), i2, intToBackoffPolicy, j4, j5, j6, j7, z4, intToOutOfQuotaPolicy, i3, i4, j8, i5, i6, text4, bool);
                    } else {
                        workSpec = null;
                    }
                    return workSpec;
                } finally {
                }
            case 11:
                SQLiteConnection sQLiteConnection9 = (SQLiteConnection) obj;
                sQLiteConnection9.getClass();
                prepare = sQLiteConnection9.prepare("SELECT state FROM workspec WHERE id=?");
                try {
                    prepare.bindText(1, str);
                    if (prepare.step()) {
                        Integer valueOf2 = prepare.isNull(0) ? null : Integer.valueOf((int) prepare.getLong(0));
                        if (valueOf2 != null) {
                            workInfo$State = SQLite.intToState(valueOf2.intValue());
                            return workInfo$State;
                        }
                    }
                    workInfo$State = null;
                    return workInfo$State;
                } finally {
                }
            case 12:
                SQLiteConnection sQLiteConnection10 = (SQLiteConnection) obj;
                sQLiteConnection10.getClass();
                prepare = sQLiteConnection10.prepare("SELECT id FROM workspec WHERE state NOT IN (2, 3, 5) AND id IN (SELECT work_spec_id FROM workname WHERE name=?)");
                try {
                    prepare.bindText(1, str);
                    ArrayList arrayList3 = new ArrayList();
                    while (prepare.step()) {
                        arrayList3.add(prepare.getText(0));
                    }
                    return arrayList3;
                } finally {
                }
            case 13:
                SQLiteConnection sQLiteConnection11 = (SQLiteConnection) obj;
                sQLiteConnection11.getClass();
                prepare = sQLiteConnection11.prepare("UPDATE workspec SET stop_reason = CASE WHEN state=1 THEN 1 ELSE -256 END, state=5 WHERE id=?");
                try {
                    prepare.bindText(1, str);
                    prepare.step();
                    int totalChangedRows = DBUtil.getTotalChangedRows(sQLiteConnection11);
                    prepare.close();
                    return Integer.valueOf(totalChangedRows);
                } finally {
                }
            case 14:
                SQLiteConnection sQLiteConnection12 = (SQLiteConnection) obj;
                sQLiteConnection12.getClass();
                prepare = sQLiteConnection12.prepare("UPDATE workspec SET run_attempt_count=0 WHERE id=?");
                try {
                    prepare.bindText(1, str);
                    prepare.step();
                    int totalChangedRows2 = DBUtil.getTotalChangedRows(sQLiteConnection12);
                    prepare.close();
                    return Integer.valueOf(totalChangedRows2);
                } finally {
                }
            case 15:
                SQLiteConnection sQLiteConnection13 = (SQLiteConnection) obj;
                sQLiteConnection13.getClass();
                prepare = sQLiteConnection13.prepare("UPDATE workspec SET period_count=period_count+1 WHERE id=?");
                try {
                    prepare.bindText(1, str);
                    prepare.step();
                    return unit;
                } finally {
                }
            case 16:
                SQLiteConnection sQLiteConnection14 = (SQLiteConnection) obj;
                sQLiteConnection14.getClass();
                prepare = sQLiteConnection14.prepare("SELECT output FROM workspec WHERE id IN\n             (SELECT prerequisite_id FROM dependency WHERE work_spec_id=?)");
                try {
                    prepare.bindText(1, str);
                    ArrayList arrayList4 = new ArrayList();
                    while (prepare.step()) {
                        byte[] blob2 = prepare.getBlob(0);
                        Data data2 = Data.EMPTY;
                        arrayList4.add(Cookie.Companion.fromByteArray(blob2));
                    }
                    return arrayList4;
                } finally {
                }
            case 17:
                SQLiteConnection sQLiteConnection15 = (SQLiteConnection) obj;
                sQLiteConnection15.getClass();
                prepare = sQLiteConnection15.prepare("UPDATE workspec SET run_attempt_count=run_attempt_count+1 WHERE id=?");
                try {
                    prepare.bindText(1, str);
                    prepare.step();
                    int totalChangedRows3 = DBUtil.getTotalChangedRows(sQLiteConnection15);
                    prepare.close();
                    return Integer.valueOf(totalChangedRows3);
                } finally {
                }
            case 18:
                SQLiteConnection sQLiteConnection16 = (SQLiteConnection) obj;
                sQLiteConnection16.getClass();
                prepare = sQLiteConnection16.prepare("DELETE FROM workspec WHERE id=?");
                try {
                    prepare.bindText(1, str);
                    prepare.step();
                    return unit;
                } finally {
                }
            case 19:
                SQLiteConnection sQLiteConnection17 = (SQLiteConnection) obj;
                sQLiteConnection17.getClass();
                prepare = sQLiteConnection17.prepare("SELECT id, state FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)");
                try {
                    prepare.bindText(1, str);
                    ArrayList arrayList5 = new ArrayList();
                    while (prepare.step()) {
                        String text5 = prepare.getText(0);
                        WorkInfo$State intToState2 = SQLite.intToState((int) prepare.getLong(1));
                        text5.getClass();
                        WorkSpec.IdAndState idAndState = new WorkSpec.IdAndState();
                        idAndState.id = text5;
                        idAndState.state = intToState2;
                        arrayList5.add(idAndState);
                    }
                    return arrayList5;
                } finally {
                }
            case 20:
                SQLiteConnection sQLiteConnection18 = (SQLiteConnection) obj;
                sQLiteConnection18.getClass();
                prepare = sQLiteConnection18.prepare("SELECT DISTINCT tag FROM worktag WHERE work_spec_id=?");
                try {
                    prepare.bindText(1, str);
                    ArrayList arrayList6 = new ArrayList();
                    while (prepare.step()) {
                        arrayList6.add(prepare.getText(0));
                    }
                    return arrayList6;
                } finally {
                }
            case 21:
                SQLiteConnection sQLiteConnection19 = (SQLiteConnection) obj;
                sQLiteConnection19.getClass();
                prepare = sQLiteConnection19.prepare("DELETE FROM worktag WHERE work_spec_id=?");
                try {
                    prepare.bindText(1, str);
                    prepare.step();
                    return unit;
                } finally {
                }
            case 22:
                SQLiteConnection sQLiteConnection20 = (SQLiteConnection) obj;
                sQLiteConnection20.getClass();
                prepare = sQLiteConnection20.prepare("DELETE FROM search_history WHERE search = ?");
                try {
                    prepare.bindText(1, str);
                    prepare.step();
                    int totalChangedRows4 = DBUtil.getTotalChangedRows(sQLiteConnection20);
                    prepare.close();
                    return Integer.valueOf(totalChangedRows4);
                } finally {
                }
            case 23:
                SQLiteConnection sQLiteConnection21 = (SQLiteConnection) obj;
                sQLiteConnection21.getClass();
                prepare = sQLiteConnection21.prepare("\n        SELECT playlists.uid, name, is_thumbnail_permanent, thumbnail_stream_id, display_index,\n        (SELECT thumbnail_url FROM streams WHERE streams.uid = thumbnail_stream_id) AS thumbnail_url,\n\n        COALESCE(COUNT(playlist_id), 0) AS streamCount,\n        COALESCE(SUM(url = ?), 0) AS timesStreamIsContained FROM playlists\n\n        LEFT JOIN playlist_stream_join\n        ON playlists.uid = playlist_id\n\n        LEFT JOIN streams\n        ON streams.uid = stream_id AND ? = ?\n\n        GROUP BY playlists.uid\n        ORDER BY display_index, name\n        ");
                try {
                    prepare.bindText(1, str);
                    prepare.bindText(2, str);
                    prepare.bindText(3, str);
                    ArrayList arrayList7 = new ArrayList();
                    while (prepare.step()) {
                        long j9 = prepare.getLong(0);
                        String text6 = prepare.isNull(1) ? null : prepare.getText(1);
                        Integer valueOf3 = prepare.isNull(2) ? null : Integer.valueOf((int) prepare.getLong(2));
                        if (valueOf3 != null) {
                            bool2 = Boolean.valueOf(valueOf3.intValue() != 0);
                        } else {
                            bool2 = null;
                        }
                        arrayList7.add(new PlaylistDuplicatesEntry(j9, prepare.isNull(5) ? null : prepare.getText(5), bool2, prepare.isNull(3) ? null : Long.valueOf(prepare.getLong(3)), prepare.isNull(4) ? null : Long.valueOf(prepare.getLong(4)), prepare.getLong(6), text6, prepare.getLong(7)));
                    }
                    return arrayList7;
                } finally {
                }
            default:
                SQLiteConnection sQLiteConnection22 = (SQLiteConnection) obj;
                sQLiteConnection22.getClass();
                prepare = sQLiteConnection22.prepare("\n        SELECT * FROM subscriptions\n\n        WHERE name LIKE '%' || ? || '%'\n\n        ORDER BY name COLLATE NOCASE ASC\n        ");
                try {
                    prepare.bindText(1, str);
                    int columnIndexOrThrow34 = DBUtil.getColumnIndexOrThrow(prepare, "uid");
                    int columnIndexOrThrow35 = DBUtil.getColumnIndexOrThrow(prepare, "service_id");
                    int columnIndexOrThrow36 = DBUtil.getColumnIndexOrThrow(prepare, "url");
                    int columnIndexOrThrow37 = DBUtil.getColumnIndexOrThrow(prepare, "name");
                    int columnIndexOrThrow38 = DBUtil.getColumnIndexOrThrow(prepare, "avatar_url");
                    int columnIndexOrThrow39 = DBUtil.getColumnIndexOrThrow(prepare, "subscriber_count");
                    int columnIndexOrThrow40 = DBUtil.getColumnIndexOrThrow(prepare, "description");
                    int columnIndexOrThrow41 = DBUtil.getColumnIndexOrThrow(prepare, "notification_mode");
                    ArrayList arrayList8 = new ArrayList();
                    while (prepare.step()) {
                        arrayList8.add(new SubscriptionEntity(prepare.getLong(columnIndexOrThrow34), (int) prepare.getLong(columnIndexOrThrow35), prepare.isNull(columnIndexOrThrow36) ? null : prepare.getText(columnIndexOrThrow36), prepare.isNull(columnIndexOrThrow37) ? null : prepare.getText(columnIndexOrThrow37), prepare.isNull(columnIndexOrThrow38) ? null : prepare.getText(columnIndexOrThrow38), prepare.isNull(columnIndexOrThrow39) ? null : Long.valueOf(prepare.getLong(columnIndexOrThrow39)), prepare.isNull(columnIndexOrThrow40) ? null : prepare.getText(columnIndexOrThrow40), (int) prepare.getLong(columnIndexOrThrow41)));
                    }
                    return arrayList8;
                } finally {
                }
        }
    }
}
