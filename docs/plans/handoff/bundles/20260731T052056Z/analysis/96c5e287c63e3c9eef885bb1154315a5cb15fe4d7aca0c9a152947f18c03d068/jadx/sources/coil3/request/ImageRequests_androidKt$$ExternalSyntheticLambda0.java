package coil3.request;

import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.foundation.lazy.layout.LazyLayoutPrefetchState;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.runtime.snapshots.SnapshotId_jvmKt;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import androidx.work.BackoffPolicy;
import androidx.work.Constraints;
import androidx.work.Data;
import androidx.work.NetworkType;
import androidx.work.OutOfQuotaPolicy;
import androidx.work.WorkInfo;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.utils.NetworkRequestCompat;
import coil3.UriKt;
import coil3.util.ContextsKt;
import java.util.ArrayList;
import java.util.Date;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.UnsignedKt;
import kotlin.jvm.functions.Function1;
import kotlin.uuid.UuidKt;
import okio.ByteString;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.history.HistoryEntry;
import org.wikipedia.login.LoginClient;
import org.wikipedia.page.Namespace;
import org.wikipedia.readinglist.database.ReadingListPage;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class ImageRequests_androidKt$$ExternalSyntheticLambda0 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ int f$0;

    public /* synthetic */ ImageRequests_androidKt$$ExternalSyntheticLambda0(LazyListState lazyListState, int i) {
        this.$r8$classId = 1;
        this.f$0 = i;
    }

    /* JADX WARN: Finally extract failed */
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        SQLiteStatement prepare;
        Integer valueOf;
        SQLiteStatement sQLiteStatement;
        int i;
        ArrayList arrayList;
        Integer valueOf2;
        int i2 = this.$r8$classId;
        int i3 = this.f$0;
        switch (i2) {
            case 0:
                return UriKt.asImage(ContextsKt.getDrawableCompat(((ImageRequest) obj).context, i3));
            case 1:
                LazyLayoutPrefetchState.NestedPrefetchScopeImpl nestedPrefetchScopeImpl = (LazyLayoutPrefetchState.NestedPrefetchScopeImpl) obj;
                Snapshot currentThreadSnapshot = SnapshotId_jvmKt.getCurrentThreadSnapshot();
                SnapshotId_jvmKt.restoreNonObservable(currentThreadSnapshot, SnapshotId_jvmKt.makeCurrentNonObservable(currentThreadSnapshot), currentThreadSnapshot != null ? currentThreadSnapshot.getReadObserver() : null);
                int i4 = nestedPrefetchScopeImpl.nestedPrefetchItemCount;
                if (i4 == -1) {
                    i4 = 2;
                }
                for (int i5 = 0; i5 < i4; i5++) {
                    nestedPrefetchScopeImpl.schedulePrecomposition(i3 + i5);
                }
                return Unit.INSTANCE;
            case 2:
                SQLiteConnection sQLiteConnection = (SQLiteConnection) obj;
                sQLiteConnection.getClass();
                prepare = sQLiteConnection.prepare("SELECT * FROM workspec WHERE state=0 AND schedule_requested_at=-1 ORDER BY last_enqueue_time LIMIT (SELECT MAX(?-COUNT(*), 0) FROM workspec WHERE schedule_requested_at<>-1 AND LENGTH(content_uri_triggers)=0 AND state NOT IN (2, 3, 5))");
                try {
                    prepare.bindLong(i3, 1);
                    int columnIndexOrThrow = UnsignedKt.getColumnIndexOrThrow(prepare, "id");
                    int columnIndexOrThrow2 = UnsignedKt.getColumnIndexOrThrow(prepare, "state");
                    int columnIndexOrThrow3 = UnsignedKt.getColumnIndexOrThrow(prepare, "worker_class_name");
                    int columnIndexOrThrow4 = UnsignedKt.getColumnIndexOrThrow(prepare, "input_merger_class_name");
                    int columnIndexOrThrow5 = UnsignedKt.getColumnIndexOrThrow(prepare, "input");
                    int columnIndexOrThrow6 = UnsignedKt.getColumnIndexOrThrow(prepare, "output");
                    int columnIndexOrThrow7 = UnsignedKt.getColumnIndexOrThrow(prepare, "initial_delay");
                    int columnIndexOrThrow8 = UnsignedKt.getColumnIndexOrThrow(prepare, "interval_duration");
                    int columnIndexOrThrow9 = UnsignedKt.getColumnIndexOrThrow(prepare, "flex_duration");
                    int columnIndexOrThrow10 = UnsignedKt.getColumnIndexOrThrow(prepare, "run_attempt_count");
                    int columnIndexOrThrow11 = UnsignedKt.getColumnIndexOrThrow(prepare, "backoff_policy");
                    int columnIndexOrThrow12 = UnsignedKt.getColumnIndexOrThrow(prepare, "backoff_delay_duration");
                    int columnIndexOrThrow13 = UnsignedKt.getColumnIndexOrThrow(prepare, "last_enqueue_time");
                    int columnIndexOrThrow14 = UnsignedKt.getColumnIndexOrThrow(prepare, "minimum_retention_duration");
                    int columnIndexOrThrow15 = UnsignedKt.getColumnIndexOrThrow(prepare, "schedule_requested_at");
                    int columnIndexOrThrow16 = UnsignedKt.getColumnIndexOrThrow(prepare, "run_in_foreground");
                    int columnIndexOrThrow17 = UnsignedKt.getColumnIndexOrThrow(prepare, "out_of_quota_policy");
                    int columnIndexOrThrow18 = UnsignedKt.getColumnIndexOrThrow(prepare, "period_count");
                    int columnIndexOrThrow19 = UnsignedKt.getColumnIndexOrThrow(prepare, "generation");
                    int columnIndexOrThrow20 = UnsignedKt.getColumnIndexOrThrow(prepare, "next_schedule_time_override");
                    int columnIndexOrThrow21 = UnsignedKt.getColumnIndexOrThrow(prepare, "next_schedule_time_override_generation");
                    int columnIndexOrThrow22 = UnsignedKt.getColumnIndexOrThrow(prepare, "stop_reason");
                    int columnIndexOrThrow23 = UnsignedKt.getColumnIndexOrThrow(prepare, "trace_tag");
                    int columnIndexOrThrow24 = UnsignedKt.getColumnIndexOrThrow(prepare, "backoff_on_system_interruptions");
                    int columnIndexOrThrow25 = UnsignedKt.getColumnIndexOrThrow(prepare, "required_network_type");
                    int columnIndexOrThrow26 = UnsignedKt.getColumnIndexOrThrow(prepare, "required_network_request");
                    int columnIndexOrThrow27 = UnsignedKt.getColumnIndexOrThrow(prepare, "requires_charging");
                    int columnIndexOrThrow28 = UnsignedKt.getColumnIndexOrThrow(prepare, "requires_device_idle");
                    int columnIndexOrThrow29 = UnsignedKt.getColumnIndexOrThrow(prepare, "requires_battery_not_low");
                    int columnIndexOrThrow30 = UnsignedKt.getColumnIndexOrThrow(prepare, "requires_storage_not_low");
                    int columnIndexOrThrow31 = UnsignedKt.getColumnIndexOrThrow(prepare, "trigger_content_update_delay");
                    int columnIndexOrThrow32 = UnsignedKt.getColumnIndexOrThrow(prepare, "trigger_max_content_delay");
                    int columnIndexOrThrow33 = UnsignedKt.getColumnIndexOrThrow(prepare, "content_uri_triggers");
                    ArrayList arrayList2 = new ArrayList();
                    while (prepare.step()) {
                        String text = prepare.getText(columnIndexOrThrow);
                        int i6 = columnIndexOrThrow13;
                        int i7 = columnIndexOrThrow14;
                        WorkInfo.State intToState = TuplesKt.intToState((int) prepare.getLong(columnIndexOrThrow2));
                        String text2 = prepare.getText(columnIndexOrThrow3);
                        String text3 = prepare.getText(columnIndexOrThrow4);
                        byte[] blob = prepare.getBlob(columnIndexOrThrow5);
                        Data data = Data.EMPTY;
                        Data fromByteArray = UuidKt.fromByteArray(blob);
                        Data fromByteArray2 = UuidKt.fromByteArray(prepare.getBlob(columnIndexOrThrow6));
                        long j = prepare.getLong(columnIndexOrThrow7);
                        long j2 = prepare.getLong(columnIndexOrThrow8);
                        long j3 = prepare.getLong(columnIndexOrThrow9);
                        int i8 = (int) prepare.getLong(columnIndexOrThrow10);
                        int i9 = columnIndexOrThrow;
                        int i10 = columnIndexOrThrow2;
                        BackoffPolicy intToBackoffPolicy = TuplesKt.intToBackoffPolicy((int) prepare.getLong(columnIndexOrThrow11));
                        long j4 = prepare.getLong(columnIndexOrThrow12);
                        long j5 = prepare.getLong(i6);
                        long j6 = prepare.getLong(i7);
                        int i11 = columnIndexOrThrow15;
                        long j7 = prepare.getLong(i11);
                        columnIndexOrThrow15 = i11;
                        int i12 = columnIndexOrThrow16;
                        int i13 = columnIndexOrThrow3;
                        boolean z = ((int) prepare.getLong(i12)) != 0;
                        int i14 = columnIndexOrThrow17;
                        int i15 = columnIndexOrThrow4;
                        OutOfQuotaPolicy intToOutOfQuotaPolicy = TuplesKt.intToOutOfQuotaPolicy((int) prepare.getLong(i14));
                        int i16 = columnIndexOrThrow18;
                        int i17 = (int) prepare.getLong(i16);
                        int i18 = columnIndexOrThrow19;
                        int i19 = (int) prepare.getLong(i18);
                        int i20 = columnIndexOrThrow20;
                        long j8 = prepare.getLong(i20);
                        int i21 = columnIndexOrThrow21;
                        int i22 = (int) prepare.getLong(i21);
                        columnIndexOrThrow21 = i21;
                        int i23 = columnIndexOrThrow22;
                        int i24 = (int) prepare.getLong(i23);
                        int i25 = columnIndexOrThrow23;
                        String text4 = prepare.isNull(i25) ? null : prepare.getText(i25);
                        int i26 = columnIndexOrThrow24;
                        if (prepare.isNull(i26)) {
                            columnIndexOrThrow23 = i25;
                            columnIndexOrThrow22 = i23;
                            valueOf = null;
                        } else {
                            columnIndexOrThrow23 = i25;
                            columnIndexOrThrow22 = i23;
                            valueOf = Integer.valueOf((int) prepare.getLong(i26));
                        }
                        Boolean valueOf3 = valueOf != null ? Boolean.valueOf(valueOf.intValue() != 0) : null;
                        int i27 = columnIndexOrThrow25;
                        NetworkType intToNetworkType = TuplesKt.intToNetworkType((int) prepare.getLong(i27));
                        int i28 = columnIndexOrThrow26;
                        NetworkRequestCompat networkRequest$work_runtime_release = TuplesKt.toNetworkRequest$work_runtime_release(prepare.getBlob(i28));
                        int i29 = columnIndexOrThrow27;
                        boolean z2 = ((int) prepare.getLong(i29)) != 0;
                        int i30 = columnIndexOrThrow28;
                        boolean z3 = ((int) prepare.getLong(i30)) != 0;
                        int i31 = columnIndexOrThrow29;
                        boolean z4 = ((int) prepare.getLong(i31)) != 0;
                        columnIndexOrThrow29 = i31;
                        int i32 = columnIndexOrThrow30;
                        int i33 = columnIndexOrThrow31;
                        int i34 = columnIndexOrThrow32;
                        columnIndexOrThrow31 = i33;
                        int i35 = columnIndexOrThrow33;
                        arrayList2.add(new WorkSpec(text, intToState, text2, text3, fromByteArray, fromByteArray2, j, j2, j3, new Constraints(networkRequest$work_runtime_release, intToNetworkType, z2, z3, z4, ((int) prepare.getLong(i32)) != 0, prepare.getLong(i33), prepare.getLong(i34), TuplesKt.byteArrayToSetOfTriggers(prepare.getBlob(i35))), i8, intToBackoffPolicy, j4, j5, j6, j7, z, intToOutOfQuotaPolicy, i17, i19, j8, i22, i24, text4, valueOf3));
                        columnIndexOrThrow28 = i30;
                        columnIndexOrThrow4 = i15;
                        columnIndexOrThrow17 = i14;
                        columnIndexOrThrow18 = i16;
                        columnIndexOrThrow19 = i18;
                        columnIndexOrThrow20 = i20;
                        columnIndexOrThrow24 = i26;
                        columnIndexOrThrow25 = i27;
                        columnIndexOrThrow26 = i28;
                        columnIndexOrThrow27 = i29;
                        columnIndexOrThrow33 = i35;
                        columnIndexOrThrow32 = i34;
                        columnIndexOrThrow30 = i32;
                        columnIndexOrThrow = i9;
                        columnIndexOrThrow13 = i6;
                        columnIndexOrThrow14 = i7;
                        columnIndexOrThrow2 = i10;
                        columnIndexOrThrow3 = i13;
                        columnIndexOrThrow16 = i12;
                    }
                    return arrayList2;
                } catch (Throwable th) {
                    throw th;
                }
            case 3:
                return UriKt.asImage(ContextsKt.getDrawableCompat(((ImageRequest) obj).context, i3));
            case 4:
                ((Integer) obj).intValue();
                throw new IndexOutOfBoundsException("Collection doesn't contain element at index " + i3 + '.');
            case 5:
                SQLiteConnection sQLiteConnection2 = (SQLiteConnection) obj;
                sQLiteConnection2.getClass();
                prepare = sQLiteConnection2.prepare("DELETE FROM Category WHERE rowid IN (SELECT rowid FROM Category WHERE year < ?)");
                try {
                    prepare.bindLong(i3, 1);
                    prepare.step();
                    int totalChangedRows = TuplesKt.getTotalChangedRows(sQLiteConnection2);
                    prepare.close();
                    return Integer.valueOf(totalChangedRows);
                } finally {
                    prepare.close();
                }
            case 6:
                SQLiteConnection sQLiteConnection3 = (SQLiteConnection) obj;
                sQLiteConnection3.getClass();
                prepare = sQLiteConnection3.prepare("SELECT * FROM HistoryEntry ORDER BY RANDOM() DESC LIMIT ?");
                try {
                    prepare.bindLong(i3, 1);
                    int columnIndexOrThrow34 = UnsignedKt.getColumnIndexOrThrow(prepare, "authority");
                    int columnIndexOrThrow35 = UnsignedKt.getColumnIndexOrThrow(prepare, "lang");
                    int columnIndexOrThrow36 = UnsignedKt.getColumnIndexOrThrow(prepare, "apiTitle");
                    int columnIndexOrThrow37 = UnsignedKt.getColumnIndexOrThrow(prepare, "displayTitle");
                    int columnIndexOrThrow38 = UnsignedKt.getColumnIndexOrThrow(prepare, "id");
                    int columnIndexOrThrow39 = UnsignedKt.getColumnIndexOrThrow(prepare, "namespace");
                    int columnIndexOrThrow40 = UnsignedKt.getColumnIndexOrThrow(prepare, "timestamp");
                    int columnIndexOrThrow41 = UnsignedKt.getColumnIndexOrThrow(prepare, "source");
                    int columnIndexOrThrow42 = UnsignedKt.getColumnIndexOrThrow(prepare, "prevId");
                    ArrayList arrayList3 = new ArrayList();
                    while (prepare.step()) {
                        String text5 = prepare.getText(columnIndexOrThrow34);
                        String text6 = prepare.getText(columnIndexOrThrow35);
                        String text7 = prepare.getText(columnIndexOrThrow36);
                        String text8 = prepare.getText(columnIndexOrThrow37);
                        long j9 = prepare.getLong(columnIndexOrThrow38);
                        String text9 = prepare.getText(columnIndexOrThrow39);
                        Date fromTimestamp = LoginClient.fromTimestamp(prepare.isNull(columnIndexOrThrow40) ? null : Long.valueOf(prepare.getLong(columnIndexOrThrow40)));
                        if (fromTimestamp == null) {
                            throw new IllegalStateException("Expected NON-NULL 'java.util.Date', but it was NULL.");
                        }
                        arrayList3.add(new HistoryEntry(text5, text6, text7, text8, j9, text9, fromTimestamp, (int) prepare.getLong(columnIndexOrThrow41), prepare.getLong(columnIndexOrThrow42)));
                    }
                    return arrayList3;
                } catch (Throwable th2) {
                    throw th2;
                }
            default:
                SQLiteConnection sQLiteConnection4 = (SQLiteConnection) obj;
                sQLiteConnection4.getClass();
                SQLiteStatement prepare2 = sQLiteConnection4.prepare("SELECT * FROM ReadingListPage ORDER BY RANDOM() DESC LIMIT ?");
                try {
                    prepare2.bindLong(i3, 1);
                    int columnIndexOrThrow43 = UnsignedKt.getColumnIndexOrThrow(prepare2, "wiki");
                    int columnIndexOrThrow44 = UnsignedKt.getColumnIndexOrThrow(prepare2, "namespace");
                    int columnIndexOrThrow45 = UnsignedKt.getColumnIndexOrThrow(prepare2, "displayTitle");
                    int columnIndexOrThrow46 = UnsignedKt.getColumnIndexOrThrow(prepare2, "apiTitle");
                    int columnIndexOrThrow47 = UnsignedKt.getColumnIndexOrThrow(prepare2, "description");
                    int columnIndexOrThrow48 = UnsignedKt.getColumnIndexOrThrow(prepare2, "thumbUrl");
                    int columnIndexOrThrow49 = UnsignedKt.getColumnIndexOrThrow(prepare2, "listId");
                    int columnIndexOrThrow50 = UnsignedKt.getColumnIndexOrThrow(prepare2, "id");
                    int columnIndexOrThrow51 = UnsignedKt.getColumnIndexOrThrow(prepare2, "mtime");
                    int columnIndexOrThrow52 = UnsignedKt.getColumnIndexOrThrow(prepare2, "atime");
                    int columnIndexOrThrow53 = UnsignedKt.getColumnIndexOrThrow(prepare2, "offline");
                    int columnIndexOrThrow54 = UnsignedKt.getColumnIndexOrThrow(prepare2, "status");
                    int columnIndexOrThrow55 = UnsignedKt.getColumnIndexOrThrow(prepare2, "sizeBytes");
                    int columnIndexOrThrow56 = UnsignedKt.getColumnIndexOrThrow(prepare2, "lang");
                    int columnIndexOrThrow57 = UnsignedKt.getColumnIndexOrThrow(prepare2, "revId");
                    int columnIndexOrThrow58 = UnsignedKt.getColumnIndexOrThrow(prepare2, "remoteId");
                    ArrayList arrayList4 = new ArrayList();
                    while (prepare2.step()) {
                        WikiSite stringToWikiSite = LoginClient.stringToWikiSite(prepare2.isNull(columnIndexOrThrow43) ? null : prepare2.getText(columnIndexOrThrow43));
                        if (stringToWikiSite == null) {
                            throw new IllegalStateException("Expected NON-NULL 'org.wikipedia.dataclient.WikiSite', but it was NULL.");
                        }
                        if (prepare2.isNull(columnIndexOrThrow44)) {
                            i = columnIndexOrThrow55;
                            arrayList = arrayList4;
                            valueOf2 = null;
                        } else {
                            i = columnIndexOrThrow55;
                            arrayList = arrayList4;
                            valueOf2 = Integer.valueOf((int) prepare2.getLong(columnIndexOrThrow44));
                        }
                        Namespace intToNamespace = ByteString.Companion.intToNamespace(valueOf2);
                        if (intToNamespace == null) {
                            throw new IllegalStateException("Expected NON-NULL 'org.wikipedia.page.Namespace', but it was NULL.");
                        }
                        columnIndexOrThrow55 = i;
                        int i36 = columnIndexOrThrow57;
                        int i37 = columnIndexOrThrow43;
                        int i38 = columnIndexOrThrow58;
                        ReadingListPage readingListPage = new ReadingListPage(stringToWikiSite, intToNamespace, prepare2.getText(columnIndexOrThrow45), prepare2.getText(columnIndexOrThrow46), prepare2.isNull(columnIndexOrThrow47) ? null : prepare2.getText(columnIndexOrThrow47), prepare2.isNull(columnIndexOrThrow48) ? null : prepare2.getText(columnIndexOrThrow48), prepare2.getLong(columnIndexOrThrow49), prepare2.getLong(columnIndexOrThrow50), prepare2.getLong(columnIndexOrThrow51), prepare2.getLong(columnIndexOrThrow52), ((int) prepare2.getLong(columnIndexOrThrow53)) != 0, prepare2.getLong(columnIndexOrThrow54), prepare2.getLong(columnIndexOrThrow55), prepare2.getText(columnIndexOrThrow56), prepare2.getLong(i36), prepare2.getLong(i38));
                        columnIndexOrThrow58 = i38;
                        sQLiteStatement = prepare2;
                        ArrayList arrayList5 = arrayList;
                        try {
                            arrayList5.add(readingListPage);
                            columnIndexOrThrow43 = i37;
                            columnIndexOrThrow57 = i36;
                            arrayList4 = arrayList5;
                            prepare2 = sQLiteStatement;
                        } catch (Throwable th3) {
                            th = th3;
                            sQLiteStatement.close();
                            throw th;
                        }
                    }
                    SQLiteStatement sQLiteStatement2 = prepare2;
                    ArrayList arrayList6 = arrayList4;
                    sQLiteStatement2.close();
                    return arrayList6;
                } catch (Throwable th4) {
                    th = th4;
                    sQLiteStatement = prepare2;
                }
        }
    }

    public /* synthetic */ ImageRequests_androidKt$$ExternalSyntheticLambda0(int i, int i2, Object obj) {
        this.$r8$classId = i2;
        this.f$0 = i;
    }

    public /* synthetic */ ImageRequests_androidKt$$ExternalSyntheticLambda0(int i, int i2) {
        this.$r8$classId = i2;
        this.f$0 = i;
    }
}
