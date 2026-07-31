package androidx.work.impl.model;

import androidx.compose.foundation.text.Handle;
import androidx.compose.foundation.text.selection.SelectionHandleAnchor;
import androidx.compose.foundation.text.selection.SelectionHandleInfo;
import androidx.compose.foundation.text.selection.SelectionHandlesKt;
import androidx.compose.foundation.text.selection.SimpleLayoutKt;
import androidx.compose.material3.ThumbNode$$ExternalSyntheticLambda0;
import androidx.compose.runtime.BroadcastFrameClock;
import androidx.compose.ui.draw.CacheDrawScope;
import androidx.compose.ui.graphics.BlendModeColorFilter;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.recyclerview.widget.RecyclerView;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import androidx.work.BackoffPolicy;
import androidx.work.Constraints;
import androidx.work.Data;
import androidx.work.NetworkType;
import androidx.work.OutOfQuotaPolicy;
import androidx.work.WorkInfo;
import androidx.work.impl.utils.NetworkRequestCompat;
import java.util.ArrayList;
import kotlin.Result;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.UnsignedKt;
import kotlin.jvm.functions.Function1;
import kotlin.uuid.UuidKt;
import kotlinx.coroutines.CancellableContinuationImpl;
import okio.ByteString;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.login.LoginClient;
import org.wikipedia.offline.db.OfflineObject;
import org.wikipedia.page.Namespace;
import org.wikipedia.readinglist.database.ReadingList;
import org.wikipedia.readinglist.database.ReadingListPage;
import org.wikipedia.readinglist.db.ReadingListPageDao_Impl;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class WorkSpecDao_Impl$$ExternalSyntheticLambda28 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ long f$1;

    public /* synthetic */ WorkSpecDao_Impl$$ExternalSyntheticLambda28(long j, int i) {
        this.$r8$classId = i;
        this.f$1 = j;
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        SQLiteStatement prepare;
        int i;
        int i2;
        Integer valueOf;
        Boolean bool;
        CancellableContinuationImpl cancellableContinuationImpl;
        Object failure;
        int i3;
        int i4;
        Integer valueOf2;
        int i5;
        ArrayList arrayList;
        Integer valueOf3;
        int i6 = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        long j = this.f$1;
        switch (i6) {
            case 0:
                SQLiteConnection sQLiteConnection = (SQLiteConnection) obj;
                sQLiteConnection.getClass();
                prepare = sQLiteConnection.prepare("SELECT * FROM workspec WHERE last_enqueue_time >= ? AND state IN (2, 3, 5) ORDER BY last_enqueue_time DESC");
                try {
                    prepare.bindLong(j, 1);
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
                        int i7 = columnIndexOrThrow13;
                        ArrayList arrayList3 = arrayList2;
                        WorkInfo.State intToState = TuplesKt.intToState((int) prepare.getLong(columnIndexOrThrow2));
                        String text2 = prepare.getText(columnIndexOrThrow3);
                        String text3 = prepare.getText(columnIndexOrThrow4);
                        byte[] blob = prepare.getBlob(columnIndexOrThrow5);
                        Data data = Data.EMPTY;
                        Data fromByteArray = UuidKt.fromByteArray(blob);
                        Data fromByteArray2 = UuidKt.fromByteArray(prepare.getBlob(columnIndexOrThrow6));
                        long j2 = prepare.getLong(columnIndexOrThrow7);
                        long j3 = prepare.getLong(columnIndexOrThrow8);
                        long j4 = prepare.getLong(columnIndexOrThrow9);
                        int i8 = (int) prepare.getLong(columnIndexOrThrow10);
                        int i9 = columnIndexOrThrow;
                        int i10 = columnIndexOrThrow2;
                        BackoffPolicy intToBackoffPolicy = TuplesKt.intToBackoffPolicy((int) prepare.getLong(columnIndexOrThrow11));
                        long j5 = prepare.getLong(columnIndexOrThrow12);
                        long j6 = prepare.getLong(i7);
                        long j7 = prepare.getLong(columnIndexOrThrow14);
                        int i11 = columnIndexOrThrow15;
                        long j8 = prepare.getLong(i11);
                        int i12 = columnIndexOrThrow14;
                        int i13 = columnIndexOrThrow16;
                        boolean z = ((int) prepare.getLong(i13)) != 0;
                        int i14 = columnIndexOrThrow17;
                        int i15 = columnIndexOrThrow3;
                        OutOfQuotaPolicy intToOutOfQuotaPolicy = TuplesKt.intToOutOfQuotaPolicy((int) prepare.getLong(i14));
                        int i16 = columnIndexOrThrow18;
                        int i17 = columnIndexOrThrow4;
                        int i18 = (int) prepare.getLong(i16);
                        int i19 = columnIndexOrThrow19;
                        int i20 = (int) prepare.getLong(i19);
                        int i21 = columnIndexOrThrow20;
                        long j9 = prepare.getLong(i21);
                        int i22 = columnIndexOrThrow21;
                        int i23 = (int) prepare.getLong(i22);
                        int i24 = columnIndexOrThrow22;
                        int i25 = (int) prepare.getLong(i24);
                        int i26 = columnIndexOrThrow23;
                        String text4 = prepare.isNull(i26) ? null : prepare.getText(i26);
                        int i27 = columnIndexOrThrow24;
                        if (prepare.isNull(i27)) {
                            i = i23;
                            i2 = i24;
                            valueOf = null;
                        } else {
                            i = i23;
                            i2 = i24;
                            valueOf = Integer.valueOf((int) prepare.getLong(i27));
                        }
                        if (valueOf != null) {
                            bool = Boolean.valueOf(valueOf.intValue() != 0);
                        } else {
                            bool = null;
                        }
                        int i28 = columnIndexOrThrow25;
                        NetworkType intToNetworkType = TuplesKt.intToNetworkType((int) prepare.getLong(i28));
                        int i29 = columnIndexOrThrow26;
                        NetworkRequestCompat networkRequest$work_runtime_release = TuplesKt.toNetworkRequest$work_runtime_release(prepare.getBlob(i29));
                        columnIndexOrThrow25 = i28;
                        columnIndexOrThrow26 = i29;
                        int i30 = columnIndexOrThrow27;
                        boolean z2 = ((int) prepare.getLong(i30)) != 0;
                        columnIndexOrThrow27 = i30;
                        int i31 = columnIndexOrThrow28;
                        boolean z3 = ((int) prepare.getLong(i31)) != 0;
                        int i32 = columnIndexOrThrow29;
                        boolean z4 = ((int) prepare.getLong(i32)) != 0;
                        columnIndexOrThrow29 = i32;
                        int i33 = columnIndexOrThrow30;
                        int i34 = columnIndexOrThrow31;
                        int i35 = columnIndexOrThrow32;
                        int i36 = columnIndexOrThrow33;
                        columnIndexOrThrow33 = i36;
                        arrayList3.add(new WorkSpec(text, intToState, text2, text3, fromByteArray, fromByteArray2, j2, j3, j4, new Constraints(networkRequest$work_runtime_release, intToNetworkType, z2, z3, z4, ((int) prepare.getLong(i33)) != 0, prepare.getLong(i34), prepare.getLong(i35), TuplesKt.byteArrayToSetOfTriggers(prepare.getBlob(i36))), i8, intToBackoffPolicy, j5, j6, j7, j8, z, intToOutOfQuotaPolicy, i18, i20, j9, i, i25, text4, bool));
                        columnIndexOrThrow30 = i33;
                        columnIndexOrThrow3 = i15;
                        columnIndexOrThrow17 = i14;
                        columnIndexOrThrow19 = i19;
                        columnIndexOrThrow22 = i2;
                        columnIndexOrThrow24 = i27;
                        columnIndexOrThrow31 = i34;
                        columnIndexOrThrow32 = i35;
                        columnIndexOrThrow = i9;
                        columnIndexOrThrow13 = i7;
                        columnIndexOrThrow2 = i10;
                        arrayList2 = arrayList3;
                        columnIndexOrThrow14 = i12;
                        columnIndexOrThrow15 = i11;
                        columnIndexOrThrow16 = i13;
                        columnIndexOrThrow20 = i21;
                        columnIndexOrThrow21 = i22;
                        columnIndexOrThrow23 = i26;
                        columnIndexOrThrow28 = i31;
                        columnIndexOrThrow4 = i17;
                        columnIndexOrThrow18 = i16;
                    }
                    return arrayList2;
                } catch (Throwable th) {
                    throw th;
                }
            case 1:
                CacheDrawScope cacheDrawScope = (CacheDrawScope) obj;
                float intBitsToFloat = Float.intBitsToFloat((int) (cacheDrawScope.cacheParams.mo353getSizeNHjbRc() >> 32)) / 2.0f;
                return cacheDrawScope.onDrawWithContent(new ThumbNode$$ExternalSyntheticLambda0(intBitsToFloat, SimpleLayoutKt.createHandleImage(cacheDrawScope, intBitsToFloat), new BlendModeColorFilter(j, 5), 3));
            case 2:
                ((SemanticsPropertyReceiver) obj).set(SelectionHandlesKt.SelectionHandleInfoKey, new SelectionHandleInfo(Handle.Cursor, this.f$1, SelectionHandleAnchor.Middle, true));
                return unit;
            case 3:
                BroadcastFrameClock.FrameAwaiter frameAwaiter = (BroadcastFrameClock.FrameAwaiter) obj;
                Function1 function1 = frameAwaiter.onFrame;
                if (function1 != null && (cancellableContinuationImpl = frameAwaiter.continuation) != null) {
                    try {
                        failure = function1.invoke(Long.valueOf(j));
                    } catch (Throwable th2) {
                        failure = new Result.Failure(th2);
                    }
                    cancellableContinuationImpl.resumeWith(failure);
                }
                return unit;
            case 4:
                SQLiteConnection sQLiteConnection2 = (SQLiteConnection) obj;
                sQLiteConnection2.getClass();
                prepare = sQLiteConnection2.prepare("SELECT COUNT(*) FROM (SELECT DISTINCT HistoryEntry.lang, HistoryEntry.apiTitle FROM HistoryEntry WHERE timestamp > ?)");
                try {
                    prepare.bindLong(j, 1);
                    if (prepare.step() && !prepare.isNull(0)) {
                        r20 = Integer.valueOf((int) prepare.getLong(0));
                    }
                    return r20;
                } finally {
                }
            case 5:
                SQLiteConnection sQLiteConnection3 = (SQLiteConnection) obj;
                sQLiteConnection3.getClass();
                prepare = sQLiteConnection3.prepare("SELECT * FROM OfflineObject WHERE usedByStr LIKE '%|' || ? || '|%'");
                try {
                    prepare.bindLong(j, 1);
                    int columnIndexOrThrow34 = UnsignedKt.getColumnIndexOrThrow(prepare, "id");
                    int columnIndexOrThrow35 = UnsignedKt.getColumnIndexOrThrow(prepare, "url");
                    int columnIndexOrThrow36 = UnsignedKt.getColumnIndexOrThrow(prepare, "lang");
                    int columnIndexOrThrow37 = UnsignedKt.getColumnIndexOrThrow(prepare, "path");
                    int columnIndexOrThrow38 = UnsignedKt.getColumnIndexOrThrow(prepare, "status");
                    int columnIndexOrThrow39 = UnsignedKt.getColumnIndexOrThrow(prepare, "usedByStr");
                    ArrayList arrayList4 = new ArrayList();
                    while (prepare.step()) {
                        arrayList4.add(new OfflineObject((int) prepare.getLong(columnIndexOrThrow34), (int) prepare.getLong(columnIndexOrThrow38), prepare.getText(columnIndexOrThrow35), prepare.getText(columnIndexOrThrow36), prepare.getText(columnIndexOrThrow37), prepare.getText(columnIndexOrThrow39)));
                    }
                    return arrayList4;
                } finally {
                }
            case 6:
                SQLiteConnection sQLiteConnection4 = (SQLiteConnection) obj;
                sQLiteConnection4.getClass();
                prepare = sQLiteConnection4.prepare("SELECT * FROM ReadingList WHERE id = ?");
                try {
                    prepare.bindLong(j, 1);
                    int columnIndexOrThrow40 = UnsignedKt.getColumnIndexOrThrow(prepare, "listTitle");
                    int columnIndexOrThrow41 = UnsignedKt.getColumnIndexOrThrow(prepare, "description");
                    int columnIndexOrThrow42 = UnsignedKt.getColumnIndexOrThrow(prepare, "mtime");
                    int columnIndexOrThrow43 = UnsignedKt.getColumnIndexOrThrow(prepare, "atime");
                    int columnIndexOrThrow44 = UnsignedKt.getColumnIndexOrThrow(prepare, "id");
                    int columnIndexOrThrow45 = UnsignedKt.getColumnIndexOrThrow(prepare, "sizeBytes");
                    int columnIndexOrThrow46 = UnsignedKt.getColumnIndexOrThrow(prepare, "dirty");
                    int columnIndexOrThrow47 = UnsignedKt.getColumnIndexOrThrow(prepare, "remoteId");
                    if (prepare.step()) {
                        r20 = new ReadingList(prepare.getText(columnIndexOrThrow40), prepare.isNull(columnIndexOrThrow41) ? null : prepare.getText(columnIndexOrThrow41), prepare.getLong(columnIndexOrThrow42), prepare.getLong(columnIndexOrThrow43), prepare.getLong(columnIndexOrThrow44), prepare.getLong(columnIndexOrThrow45), ((int) prepare.getLong(columnIndexOrThrow46)) != 0, prepare.getLong(columnIndexOrThrow47));
                    }
                    return r20;
                } finally {
                }
            case 7:
                SQLiteConnection sQLiteConnection5 = (SQLiteConnection) obj;
                sQLiteConnection5.getClass();
                prepare = sQLiteConnection5.prepare("SELECT * FROM ReadingListPage WHERE listId = ? AND status != ?");
                try {
                    prepare.bindLong(j, 1);
                    prepare.bindLong(2L, 2);
                    int columnIndexOrThrow48 = UnsignedKt.getColumnIndexOrThrow(prepare, "wiki");
                    int columnIndexOrThrow49 = UnsignedKt.getColumnIndexOrThrow(prepare, "namespace");
                    int columnIndexOrThrow50 = UnsignedKt.getColumnIndexOrThrow(prepare, "displayTitle");
                    int columnIndexOrThrow51 = UnsignedKt.getColumnIndexOrThrow(prepare, "apiTitle");
                    int columnIndexOrThrow52 = UnsignedKt.getColumnIndexOrThrow(prepare, "description");
                    int columnIndexOrThrow53 = UnsignedKt.getColumnIndexOrThrow(prepare, "thumbUrl");
                    int columnIndexOrThrow54 = UnsignedKt.getColumnIndexOrThrow(prepare, "listId");
                    int columnIndexOrThrow55 = UnsignedKt.getColumnIndexOrThrow(prepare, "id");
                    int columnIndexOrThrow56 = UnsignedKt.getColumnIndexOrThrow(prepare, "mtime");
                    int columnIndexOrThrow57 = UnsignedKt.getColumnIndexOrThrow(prepare, "atime");
                    int columnIndexOrThrow58 = UnsignedKt.getColumnIndexOrThrow(prepare, "offline");
                    int columnIndexOrThrow59 = UnsignedKt.getColumnIndexOrThrow(prepare, "status");
                    int columnIndexOrThrow60 = UnsignedKt.getColumnIndexOrThrow(prepare, "sizeBytes");
                    int columnIndexOrThrow61 = UnsignedKt.getColumnIndexOrThrow(prepare, "lang");
                    int columnIndexOrThrow62 = UnsignedKt.getColumnIndexOrThrow(prepare, "revId");
                    int columnIndexOrThrow63 = UnsignedKt.getColumnIndexOrThrow(prepare, "remoteId");
                    ArrayList arrayList5 = new ArrayList();
                    while (prepare.step()) {
                        WikiSite stringToWikiSite = LoginClient.stringToWikiSite(prepare.isNull(columnIndexOrThrow48) ? null : prepare.getText(columnIndexOrThrow48));
                        if (stringToWikiSite == null) {
                            throw new IllegalStateException("Expected NON-NULL 'org.wikipedia.dataclient.WikiSite', but it was NULL.");
                        }
                        if (prepare.isNull(columnIndexOrThrow49)) {
                            i3 = columnIndexOrThrow60;
                            i4 = columnIndexOrThrow61;
                            valueOf2 = null;
                        } else {
                            i3 = columnIndexOrThrow60;
                            i4 = columnIndexOrThrow61;
                            valueOf2 = Integer.valueOf((int) prepare.getLong(columnIndexOrThrow49));
                        }
                        Namespace intToNamespace = ByteString.Companion.intToNamespace(valueOf2);
                        if (intToNamespace == null) {
                            throw new IllegalStateException("Expected NON-NULL 'org.wikipedia.page.Namespace', but it was NULL.");
                        }
                        String text5 = prepare.getText(columnIndexOrThrow50);
                        String text6 = prepare.getText(columnIndexOrThrow51);
                        String text7 = prepare.isNull(columnIndexOrThrow52) ? null : prepare.getText(columnIndexOrThrow52);
                        String text8 = prepare.isNull(columnIndexOrThrow53) ? null : prepare.getText(columnIndexOrThrow53);
                        long j10 = prepare.getLong(columnIndexOrThrow54);
                        long j11 = prepare.getLong(columnIndexOrThrow55);
                        long j12 = prepare.getLong(columnIndexOrThrow56);
                        long j13 = prepare.getLong(columnIndexOrThrow57);
                        boolean z5 = ((int) prepare.getLong(columnIndexOrThrow58)) != 0;
                        long j14 = prepare.getLong(columnIndexOrThrow59);
                        columnIndexOrThrow60 = i3;
                        long j15 = prepare.getLong(columnIndexOrThrow60);
                        columnIndexOrThrow61 = i4;
                        String text9 = prepare.getText(columnIndexOrThrow61);
                        int i37 = columnIndexOrThrow48;
                        int i38 = columnIndexOrThrow62;
                        long j16 = prepare.getLong(i38);
                        columnIndexOrThrow62 = i38;
                        int i39 = columnIndexOrThrow63;
                        columnIndexOrThrow63 = i39;
                        arrayList5.add(new ReadingListPage(stringToWikiSite, intToNamespace, text5, text6, text7, text8, j10, j11, j12, j13, z5, j14, j15, text9, j16, prepare.getLong(i39)));
                        columnIndexOrThrow48 = i37;
                    }
                    return arrayList5;
                } catch (Throwable th3) {
                    throw th3;
                }
            case 8:
                SQLiteConnection sQLiteConnection6 = (SQLiteConnection) obj;
                sQLiteConnection6.getClass();
                prepare = sQLiteConnection6.prepare("SELECT * FROM ReadingListPage WHERE id = ?");
                try {
                    prepare.bindLong(j, 1);
                    int columnIndexOrThrow64 = UnsignedKt.getColumnIndexOrThrow(prepare, "wiki");
                    int columnIndexOrThrow65 = UnsignedKt.getColumnIndexOrThrow(prepare, "namespace");
                    int columnIndexOrThrow66 = UnsignedKt.getColumnIndexOrThrow(prepare, "displayTitle");
                    int columnIndexOrThrow67 = UnsignedKt.getColumnIndexOrThrow(prepare, "apiTitle");
                    int columnIndexOrThrow68 = UnsignedKt.getColumnIndexOrThrow(prepare, "description");
                    int columnIndexOrThrow69 = UnsignedKt.getColumnIndexOrThrow(prepare, "thumbUrl");
                    int columnIndexOrThrow70 = UnsignedKt.getColumnIndexOrThrow(prepare, "listId");
                    int columnIndexOrThrow71 = UnsignedKt.getColumnIndexOrThrow(prepare, "id");
                    int columnIndexOrThrow72 = UnsignedKt.getColumnIndexOrThrow(prepare, "mtime");
                    int columnIndexOrThrow73 = UnsignedKt.getColumnIndexOrThrow(prepare, "atime");
                    int columnIndexOrThrow74 = UnsignedKt.getColumnIndexOrThrow(prepare, "offline");
                    int columnIndexOrThrow75 = UnsignedKt.getColumnIndexOrThrow(prepare, "status");
                    int columnIndexOrThrow76 = UnsignedKt.getColumnIndexOrThrow(prepare, "sizeBytes");
                    int columnIndexOrThrow77 = UnsignedKt.getColumnIndexOrThrow(prepare, "lang");
                    int columnIndexOrThrow78 = UnsignedKt.getColumnIndexOrThrow(prepare, "revId");
                    int columnIndexOrThrow79 = UnsignedKt.getColumnIndexOrThrow(prepare, "remoteId");
                    if (prepare.step()) {
                        WikiSite stringToWikiSite2 = LoginClient.stringToWikiSite(prepare.isNull(columnIndexOrThrow64) ? null : prepare.getText(columnIndexOrThrow64));
                        if (stringToWikiSite2 == null) {
                            throw new IllegalStateException("Expected NON-NULL 'org.wikipedia.dataclient.WikiSite', but it was NULL.");
                        }
                        Namespace intToNamespace2 = ByteString.Companion.intToNamespace(prepare.isNull(columnIndexOrThrow65) ? null : Integer.valueOf((int) prepare.getLong(columnIndexOrThrow65)));
                        if (intToNamespace2 == null) {
                            throw new IllegalStateException("Expected NON-NULL 'org.wikipedia.page.Namespace', but it was NULL.");
                        }
                        r20 = new ReadingListPage(stringToWikiSite2, intToNamespace2, prepare.getText(columnIndexOrThrow66), prepare.getText(columnIndexOrThrow67), prepare.isNull(columnIndexOrThrow68) ? null : prepare.getText(columnIndexOrThrow68), prepare.isNull(columnIndexOrThrow69) ? null : prepare.getText(columnIndexOrThrow69), prepare.getLong(columnIndexOrThrow70), prepare.getLong(columnIndexOrThrow71), prepare.getLong(columnIndexOrThrow72), prepare.getLong(columnIndexOrThrow73), ((int) prepare.getLong(columnIndexOrThrow74)) != 0, prepare.getLong(columnIndexOrThrow75), prepare.getLong(columnIndexOrThrow76), prepare.getText(columnIndexOrThrow77), prepare.getLong(columnIndexOrThrow78), prepare.getLong(columnIndexOrThrow79));
                    }
                    return r20;
                } catch (Throwable th4) {
                    throw th4;
                }
            case 9:
                SQLiteConnection sQLiteConnection7 = (SQLiteConnection) obj;
                sQLiteConnection7.getClass();
                prepare = sQLiteConnection7.prepare("SELECT * FROM ReadingListPage WHERE atime > 0 AND atime > ? ORDER BY atime DESC LIMIT ?");
                try {
                    prepare.bindLong(j, 1);
                    prepare.bindLong(4L, 2);
                    int columnIndexOrThrow80 = UnsignedKt.getColumnIndexOrThrow(prepare, "wiki");
                    int columnIndexOrThrow81 = UnsignedKt.getColumnIndexOrThrow(prepare, "namespace");
                    int columnIndexOrThrow82 = UnsignedKt.getColumnIndexOrThrow(prepare, "displayTitle");
                    int columnIndexOrThrow83 = UnsignedKt.getColumnIndexOrThrow(prepare, "apiTitle");
                    int columnIndexOrThrow84 = UnsignedKt.getColumnIndexOrThrow(prepare, "description");
                    int columnIndexOrThrow85 = UnsignedKt.getColumnIndexOrThrow(prepare, "thumbUrl");
                    int columnIndexOrThrow86 = UnsignedKt.getColumnIndexOrThrow(prepare, "listId");
                    int columnIndexOrThrow87 = UnsignedKt.getColumnIndexOrThrow(prepare, "id");
                    int columnIndexOrThrow88 = UnsignedKt.getColumnIndexOrThrow(prepare, "mtime");
                    int columnIndexOrThrow89 = UnsignedKt.getColumnIndexOrThrow(prepare, "atime");
                    int columnIndexOrThrow90 = UnsignedKt.getColumnIndexOrThrow(prepare, "offline");
                    int columnIndexOrThrow91 = UnsignedKt.getColumnIndexOrThrow(prepare, "status");
                    int columnIndexOrThrow92 = UnsignedKt.getColumnIndexOrThrow(prepare, "sizeBytes");
                    int columnIndexOrThrow93 = UnsignedKt.getColumnIndexOrThrow(prepare, "lang");
                    int columnIndexOrThrow94 = UnsignedKt.getColumnIndexOrThrow(prepare, "revId");
                    int columnIndexOrThrow95 = UnsignedKt.getColumnIndexOrThrow(prepare, "remoteId");
                    ArrayList arrayList6 = new ArrayList();
                    while (prepare.step()) {
                        WikiSite stringToWikiSite3 = LoginClient.stringToWikiSite(prepare.isNull(columnIndexOrThrow80) ? null : prepare.getText(columnIndexOrThrow80));
                        if (stringToWikiSite3 == null) {
                            throw new IllegalStateException("Expected NON-NULL 'org.wikipedia.dataclient.WikiSite', but it was NULL.");
                        }
                        if (prepare.isNull(columnIndexOrThrow81)) {
                            i5 = columnIndexOrThrow93;
                            arrayList = arrayList6;
                            valueOf3 = null;
                        } else {
                            i5 = columnIndexOrThrow93;
                            arrayList = arrayList6;
                            valueOf3 = Integer.valueOf((int) prepare.getLong(columnIndexOrThrow81));
                        }
                        Namespace intToNamespace3 = ByteString.Companion.intToNamespace(valueOf3);
                        if (intToNamespace3 == null) {
                            throw new IllegalStateException("Expected NON-NULL 'org.wikipedia.page.Namespace', but it was NULL.");
                        }
                        String text10 = prepare.getText(columnIndexOrThrow82);
                        String text11 = prepare.getText(columnIndexOrThrow83);
                        String text12 = prepare.isNull(columnIndexOrThrow84) ? null : prepare.getText(columnIndexOrThrow84);
                        String text13 = prepare.isNull(columnIndexOrThrow85) ? null : prepare.getText(columnIndexOrThrow85);
                        long j17 = prepare.getLong(columnIndexOrThrow86);
                        long j18 = prepare.getLong(columnIndexOrThrow87);
                        long j19 = prepare.getLong(columnIndexOrThrow88);
                        long j20 = prepare.getLong(columnIndexOrThrow89);
                        columnIndexOrThrow93 = i5;
                        int i40 = columnIndexOrThrow94;
                        int i41 = columnIndexOrThrow80;
                        int i42 = columnIndexOrThrow95;
                        columnIndexOrThrow95 = i42;
                        int i43 = columnIndexOrThrow89;
                        ArrayList arrayList7 = arrayList;
                        arrayList7.add(new ReadingListPage(stringToWikiSite3, intToNamespace3, text10, text11, text12, text13, j17, j18, j19, j20, ((int) prepare.getLong(columnIndexOrThrow90)) != 0, prepare.getLong(columnIndexOrThrow91), prepare.getLong(columnIndexOrThrow92), prepare.getText(columnIndexOrThrow93), prepare.getLong(i40), prepare.getLong(i42)));
                        columnIndexOrThrow80 = i41;
                        columnIndexOrThrow94 = i40;
                        arrayList6 = arrayList7;
                        columnIndexOrThrow89 = i43;
                    }
                    return arrayList6;
                } finally {
                }
            default:
                DrawScope drawScope = (DrawScope) obj;
                drawScope.getClass();
                drawScope.mo469drawLineNGM6Ib0(this.f$1, (Float.floatToRawIntBits(RecyclerView.DECELERATION_RATE) << 32) | (Float.floatToRawIntBits(RecyclerView.DECELERATION_RATE) & 4294967295L), (Float.floatToRawIntBits(Float.intBitsToFloat((int) (drawScope.mo476getSizeNHjbRc() >> 32))) << 32) | (Float.floatToRawIntBits(RecyclerView.DECELERATION_RATE) & 4294967295L), drawScope.mo87toPx0680j_4(1.0f), (r19 & 16) != 0 ? 0 : 0);
                return unit;
        }
    }

    public /* synthetic */ WorkSpecDao_Impl$$ExternalSyntheticLambda28(long j, ReadingListPageDao_Impl readingListPageDao_Impl, int i) {
        this.$r8$classId = i;
        this.f$1 = j;
    }
}
