package coil3.request;

import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.foundation.lazy.layout.LazyLayoutPrefetchState;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.runtime.snapshots.SnapshotId_jvmKt;
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
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.utils.NetworkRequestCompat;
import coil3.UriKt;
import coil3.util.UtilsKt;
import com.google.android.exoplayer2.offline.DownloadService;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.util.ArrayList;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import okhttp3.Cookie;
import org.schabi.newpipe.extractor.StreamingService;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class ImageRequests_androidKt$$ExternalSyntheticLambda0 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ int f$0;

    public /* synthetic */ ImageRequests_androidKt$$ExternalSyntheticLambda0(LazyListState lazyListState, int i) {
        this.$r8$classId = 1;
        this.f$0 = i;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        SQLiteStatement sQLiteStatement;
        int i;
        int i2;
        Integer valueOf;
        int i3 = this.$r8$classId;
        int i4 = this.f$0;
        switch (i3) {
            case 0:
                return UriKt.asImage(UtilsKt.getDrawableCompat(((ImageRequest) obj).context, i4));
            case 1:
                LazyLayoutPrefetchState.NestedPrefetchScopeImpl nestedPrefetchScopeImpl = (LazyLayoutPrefetchState.NestedPrefetchScopeImpl) obj;
                Snapshot currentThreadSnapshot = SnapshotId_jvmKt.getCurrentThreadSnapshot();
                SnapshotId_jvmKt.restoreNonObservable(currentThreadSnapshot, SnapshotId_jvmKt.makeCurrentNonObservable(currentThreadSnapshot), currentThreadSnapshot != null ? currentThreadSnapshot.getReadObserver() : null);
                int i5 = nestedPrefetchScopeImpl.nestedPrefetchItemCount;
                if (i5 == -1) {
                    i5 = 2;
                }
                for (int i6 = 0; i6 < i5; i6++) {
                    nestedPrefetchScopeImpl.schedulePrecomposition(i4 + i6);
                }
                return Unit.INSTANCE;
            case 2:
                SQLiteConnection sQLiteConnection = (SQLiteConnection) obj;
                sQLiteConnection.getClass();
                SQLiteStatement prepare = sQLiteConnection.prepare("SELECT * FROM workspec WHERE state=0 AND schedule_requested_at=-1 ORDER BY last_enqueue_time LIMIT (SELECT MAX(?-COUNT(*), 0) FROM workspec WHERE schedule_requested_at<>-1 AND LENGTH(content_uri_triggers)=0 AND state NOT IN (2, 3, 5))");
                try {
                    prepare.bindLong(1, i4);
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
                        int i7 = columnIndexOrThrow14;
                        ArrayList arrayList2 = arrayList;
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
                        int i8 = (int) prepare.getLong(columnIndexOrThrow10);
                        BackoffPolicy intToBackoffPolicy = SQLite.intToBackoffPolicy((int) prepare.getLong(columnIndexOrThrow11));
                        long j4 = prepare.getLong(columnIndexOrThrow12);
                        long j5 = prepare.getLong(columnIndexOrThrow13);
                        long j6 = prepare.getLong(i7);
                        int i9 = columnIndexOrThrow15;
                        long j7 = prepare.getLong(i9);
                        int i10 = columnIndexOrThrow;
                        int i11 = columnIndexOrThrow16;
                        int i12 = columnIndexOrThrow13;
                        boolean z = ((int) prepare.getLong(i11)) != 0;
                        int i13 = columnIndexOrThrow17;
                        OutOfQuotaPolicy intToOutOfQuotaPolicy = SQLite.intToOutOfQuotaPolicy((int) prepare.getLong(i13));
                        int i14 = columnIndexOrThrow18;
                        int i15 = columnIndexOrThrow2;
                        int i16 = (int) prepare.getLong(i14);
                        int i17 = columnIndexOrThrow19;
                        int i18 = (int) prepare.getLong(i17);
                        int i19 = columnIndexOrThrow20;
                        long j8 = prepare.getLong(i19);
                        int i20 = columnIndexOrThrow21;
                        int i21 = (int) prepare.getLong(i20);
                        int i22 = columnIndexOrThrow22;
                        int i23 = (int) prepare.getLong(i22);
                        int i24 = columnIndexOrThrow23;
                        String text4 = prepare.isNull(i24) ? null : prepare.getText(i24);
                        int i25 = columnIndexOrThrow24;
                        if (prepare.isNull(i25)) {
                            i = i21;
                            i2 = i22;
                            valueOf = null;
                        } else {
                            i = i21;
                            i2 = i22;
                            valueOf = Integer.valueOf((int) prepare.getLong(i25));
                        }
                        Boolean valueOf2 = valueOf != null ? Boolean.valueOf(valueOf.intValue() != 0) : null;
                        int i26 = columnIndexOrThrow25;
                        NetworkType intToNetworkType = SQLite.intToNetworkType((int) prepare.getLong(i26));
                        int i27 = columnIndexOrThrow26;
                        NetworkRequestCompat networkRequest$work_runtime_release = SQLite.toNetworkRequest$work_runtime_release(prepare.getBlob(i27));
                        columnIndexOrThrow25 = i26;
                        columnIndexOrThrow26 = i27;
                        int i28 = columnIndexOrThrow27;
                        boolean z2 = ((int) prepare.getLong(i28)) != 0;
                        columnIndexOrThrow27 = i28;
                        int i29 = columnIndexOrThrow28;
                        boolean z3 = ((int) prepare.getLong(i29)) != 0;
                        int i30 = columnIndexOrThrow29;
                        boolean z4 = ((int) prepare.getLong(i30)) != 0;
                        columnIndexOrThrow29 = i30;
                        int i31 = columnIndexOrThrow30;
                        int i32 = columnIndexOrThrow31;
                        int i33 = columnIndexOrThrow32;
                        int i34 = columnIndexOrThrow33;
                        columnIndexOrThrow33 = i34;
                        sQLiteStatement = prepare;
                        try {
                            arrayList2.add(new WorkSpec(text, intToState, text2, text3, fromByteArray, fromByteArray2, j, j2, j3, new Constraints(networkRequest$work_runtime_release, intToNetworkType, z2, z3, z4, ((int) prepare.getLong(i31)) != 0, prepare.getLong(i32), prepare.getLong(i33), SQLite.byteArrayToSetOfTriggers(prepare.getBlob(i34))), i8, intToBackoffPolicy, j4, j5, j6, j7, z, intToOutOfQuotaPolicy, i16, i18, j8, i, i23, text4, valueOf2));
                            columnIndexOrThrow = i10;
                            columnIndexOrThrow32 = i33;
                            columnIndexOrThrow15 = i9;
                            columnIndexOrThrow17 = i13;
                            columnIndexOrThrow19 = i17;
                            columnIndexOrThrow22 = i2;
                            columnIndexOrThrow24 = i25;
                            columnIndexOrThrow14 = i7;
                            columnIndexOrThrow30 = i31;
                            arrayList = arrayList2;
                            prepare = sQLiteStatement;
                            columnIndexOrThrow31 = i32;
                            columnIndexOrThrow13 = i12;
                            columnIndexOrThrow16 = i11;
                            columnIndexOrThrow20 = i19;
                            columnIndexOrThrow21 = i20;
                            columnIndexOrThrow23 = i24;
                            columnIndexOrThrow28 = i29;
                            columnIndexOrThrow2 = i15;
                            columnIndexOrThrow18 = i14;
                        } catch (Throwable th) {
                            th = th;
                            sQLiteStatement.close();
                            throw th;
                        }
                    }
                    SQLiteStatement sQLiteStatement2 = prepare;
                    ArrayList arrayList3 = arrayList;
                    sQLiteStatement2.close();
                    return arrayList3;
                } catch (Throwable th2) {
                    th = th2;
                    sQLiteStatement = prepare;
                }
            case 3:
                return UriKt.asImage(UtilsKt.getDrawableCompat(((ImageRequest) obj).context, i4));
            default:
                return Boolean.valueOf(((StreamingService) obj).serviceId == i4);
        }
    }

    public /* synthetic */ ImageRequests_androidKt$$ExternalSyntheticLambda0(int i, int i2) {
        this.$r8$classId = i2;
        this.f$0 = i;
    }
}
