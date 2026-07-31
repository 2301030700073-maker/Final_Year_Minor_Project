package androidx.work.impl.model;

import androidx.appcompat.app.ActionBar;
import androidx.compose.foundation.text.Handle;
import androidx.compose.foundation.text.selection.SelectionHandleAnchor;
import androidx.compose.foundation.text.selection.SelectionHandleInfo;
import androidx.compose.foundation.text.selection.SelectionHandlesKt;
import androidx.compose.material3.ThumbNode$$ExternalSyntheticLambda0;
import androidx.compose.runtime.BroadcastFrameClock;
import androidx.compose.ui.draw.CacheDrawScope;
import androidx.compose.ui.graphics.BlendModeColorFilter;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.Outline$Rectangle;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import androidx.compose.ui.node.LayoutNodeDrawScope;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.sqlite.SQLite;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import androidx.work.BackoffPolicy;
import androidx.work.Constraints;
import androidx.work.Data;
import androidx.work.NetworkType;
import androidx.work.OutOfQuotaPolicy;
import androidx.work.WorkInfo;
import androidx.work.impl.utils.NetworkRequestCompat;
import app.k9mail.legacy.message.controller.MessageReference;
import java.util.ArrayList;
import java.util.List;
import kotlin.Result;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.CancellableContinuationImpl;
import org.slf4j.helpers.Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class WorkSpecDao_Impl$$ExternalSyntheticLambda26 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ long f$1;

    public /* synthetic */ WorkSpecDao_Impl$$ExternalSyntheticLambda26(int i, long j) {
        this.$r8$classId = i;
        this.f$1 = j;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        SQLiteStatement sQLiteStatement;
        int i;
        int i2;
        Integer valueOf;
        CancellableContinuationImpl cancellableContinuationImpl;
        Object failure;
        int i3 = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        long j = this.f$1;
        switch (i3) {
            case 0:
                SQLiteConnection sQLiteConnection = (SQLiteConnection) obj;
                sQLiteConnection.getClass();
                SQLiteStatement prepare = sQLiteConnection.prepare("SELECT * FROM workspec WHERE last_enqueue_time >= ? AND state IN (2, 3, 5) ORDER BY last_enqueue_time DESC");
                try {
                    prepare.bindLong(1, j);
                    int columnIndexOrThrow = ActionBar.getColumnIndexOrThrow(prepare, "id");
                    int columnIndexOrThrow2 = ActionBar.getColumnIndexOrThrow(prepare, "state");
                    int columnIndexOrThrow3 = ActionBar.getColumnIndexOrThrow(prepare, "worker_class_name");
                    int columnIndexOrThrow4 = ActionBar.getColumnIndexOrThrow(prepare, "input_merger_class_name");
                    int columnIndexOrThrow5 = ActionBar.getColumnIndexOrThrow(prepare, "input");
                    int columnIndexOrThrow6 = ActionBar.getColumnIndexOrThrow(prepare, "output");
                    int columnIndexOrThrow7 = ActionBar.getColumnIndexOrThrow(prepare, "initial_delay");
                    int columnIndexOrThrow8 = ActionBar.getColumnIndexOrThrow(prepare, "interval_duration");
                    int columnIndexOrThrow9 = ActionBar.getColumnIndexOrThrow(prepare, "flex_duration");
                    int columnIndexOrThrow10 = ActionBar.getColumnIndexOrThrow(prepare, "run_attempt_count");
                    int columnIndexOrThrow11 = ActionBar.getColumnIndexOrThrow(prepare, "backoff_policy");
                    int columnIndexOrThrow12 = ActionBar.getColumnIndexOrThrow(prepare, "backoff_delay_duration");
                    int columnIndexOrThrow13 = ActionBar.getColumnIndexOrThrow(prepare, "last_enqueue_time");
                    int columnIndexOrThrow14 = ActionBar.getColumnIndexOrThrow(prepare, "minimum_retention_duration");
                    int columnIndexOrThrow15 = ActionBar.getColumnIndexOrThrow(prepare, "schedule_requested_at");
                    int columnIndexOrThrow16 = ActionBar.getColumnIndexOrThrow(prepare, "run_in_foreground");
                    int columnIndexOrThrow17 = ActionBar.getColumnIndexOrThrow(prepare, "out_of_quota_policy");
                    int columnIndexOrThrow18 = ActionBar.getColumnIndexOrThrow(prepare, "period_count");
                    int columnIndexOrThrow19 = ActionBar.getColumnIndexOrThrow(prepare, "generation");
                    int columnIndexOrThrow20 = ActionBar.getColumnIndexOrThrow(prepare, "next_schedule_time_override");
                    int columnIndexOrThrow21 = ActionBar.getColumnIndexOrThrow(prepare, "next_schedule_time_override_generation");
                    int columnIndexOrThrow22 = ActionBar.getColumnIndexOrThrow(prepare, "stop_reason");
                    int columnIndexOrThrow23 = ActionBar.getColumnIndexOrThrow(prepare, "trace_tag");
                    int columnIndexOrThrow24 = ActionBar.getColumnIndexOrThrow(prepare, "backoff_on_system_interruptions");
                    int columnIndexOrThrow25 = ActionBar.getColumnIndexOrThrow(prepare, "required_network_type");
                    int columnIndexOrThrow26 = ActionBar.getColumnIndexOrThrow(prepare, "required_network_request");
                    int columnIndexOrThrow27 = ActionBar.getColumnIndexOrThrow(prepare, "requires_charging");
                    int columnIndexOrThrow28 = ActionBar.getColumnIndexOrThrow(prepare, "requires_device_idle");
                    int columnIndexOrThrow29 = ActionBar.getColumnIndexOrThrow(prepare, "requires_battery_not_low");
                    int columnIndexOrThrow30 = ActionBar.getColumnIndexOrThrow(prepare, "requires_storage_not_low");
                    int columnIndexOrThrow31 = ActionBar.getColumnIndexOrThrow(prepare, "trigger_content_update_delay");
                    int columnIndexOrThrow32 = ActionBar.getColumnIndexOrThrow(prepare, "trigger_max_content_delay");
                    int columnIndexOrThrow33 = ActionBar.getColumnIndexOrThrow(prepare, "content_uri_triggers");
                    ArrayList arrayList = new ArrayList();
                    while (prepare.step()) {
                        String text = prepare.getText(columnIndexOrThrow);
                        int i4 = columnIndexOrThrow14;
                        ArrayList arrayList2 = arrayList;
                        WorkInfo.State intToState = SQLite.intToState((int) prepare.getLong(columnIndexOrThrow2));
                        String text2 = prepare.getText(columnIndexOrThrow3);
                        String text3 = prepare.getText(columnIndexOrThrow4);
                        byte[] blob = prepare.getBlob(columnIndexOrThrow5);
                        Data data = Data.EMPTY;
                        Data fromByteArray = Data.Companion.fromByteArray(blob);
                        Data fromByteArray2 = Data.Companion.fromByteArray(prepare.getBlob(columnIndexOrThrow6));
                        long j2 = prepare.getLong(columnIndexOrThrow7);
                        long j3 = prepare.getLong(columnIndexOrThrow8);
                        long j4 = prepare.getLong(columnIndexOrThrow9);
                        int i5 = (int) prepare.getLong(columnIndexOrThrow10);
                        int i6 = columnIndexOrThrow2;
                        BackoffPolicy intToBackoffPolicy = SQLite.intToBackoffPolicy((int) prepare.getLong(columnIndexOrThrow11));
                        long j5 = prepare.getLong(columnIndexOrThrow12);
                        long j6 = prepare.getLong(columnIndexOrThrow13);
                        long j7 = prepare.getLong(i4);
                        int i7 = columnIndexOrThrow15;
                        long j8 = prepare.getLong(i7);
                        int i8 = columnIndexOrThrow;
                        int i9 = columnIndexOrThrow16;
                        boolean z = ((int) prepare.getLong(i9)) != 0;
                        int i10 = columnIndexOrThrow17;
                        OutOfQuotaPolicy intToOutOfQuotaPolicy = SQLite.intToOutOfQuotaPolicy((int) prepare.getLong(i10));
                        int i11 = columnIndexOrThrow18;
                        int i12 = columnIndexOrThrow3;
                        int i13 = (int) prepare.getLong(i11);
                        int i14 = columnIndexOrThrow19;
                        int i15 = (int) prepare.getLong(i14);
                        int i16 = columnIndexOrThrow20;
                        long j9 = prepare.getLong(i16);
                        int i17 = columnIndexOrThrow21;
                        int i18 = (int) prepare.getLong(i17);
                        int i19 = columnIndexOrThrow22;
                        int i20 = (int) prepare.getLong(i19);
                        int i21 = columnIndexOrThrow23;
                        String text4 = prepare.isNull(i21) ? null : prepare.getText(i21);
                        int i22 = columnIndexOrThrow24;
                        if (prepare.isNull(i22)) {
                            i = i18;
                            i2 = i19;
                            valueOf = null;
                        } else {
                            i = i18;
                            i2 = i19;
                            valueOf = Integer.valueOf((int) prepare.getLong(i22));
                        }
                        Boolean valueOf2 = valueOf != null ? Boolean.valueOf(valueOf.intValue() != 0) : null;
                        int i23 = columnIndexOrThrow25;
                        Boolean bool = valueOf2;
                        NetworkType intToNetworkType = SQLite.intToNetworkType((int) prepare.getLong(i23));
                        int i24 = columnIndexOrThrow26;
                        NetworkRequestCompat networkRequest$work_runtime_release = SQLite.toNetworkRequest$work_runtime_release(prepare.getBlob(i24));
                        columnIndexOrThrow25 = i23;
                        columnIndexOrThrow26 = i24;
                        int i25 = columnIndexOrThrow27;
                        boolean z2 = ((int) prepare.getLong(i25)) != 0;
                        columnIndexOrThrow27 = i25;
                        int i26 = columnIndexOrThrow28;
                        boolean z3 = ((int) prepare.getLong(i26)) != 0;
                        int i27 = columnIndexOrThrow29;
                        boolean z4 = ((int) prepare.getLong(i27)) != 0;
                        columnIndexOrThrow29 = i27;
                        int i28 = columnIndexOrThrow30;
                        int i29 = columnIndexOrThrow31;
                        int i30 = columnIndexOrThrow32;
                        int i31 = columnIndexOrThrow33;
                        columnIndexOrThrow33 = i31;
                        sQLiteStatement = prepare;
                        try {
                            arrayList2.add(new WorkSpec(text, intToState, text2, text3, fromByteArray, fromByteArray2, j2, j3, j4, new Constraints(networkRequest$work_runtime_release, intToNetworkType, z2, z3, z4, ((int) prepare.getLong(i28)) != 0, prepare.getLong(i29), prepare.getLong(i30), SQLite.byteArrayToSetOfTriggers(prepare.getBlob(i31))), i5, intToBackoffPolicy, j5, j6, j7, j8, z, intToOutOfQuotaPolicy, i13, i15, j9, i, i20, text4, bool));
                            arrayList = arrayList2;
                            prepare = sQLiteStatement;
                            columnIndexOrThrow31 = i29;
                            columnIndexOrThrow2 = i6;
                            columnIndexOrThrow17 = i10;
                            columnIndexOrThrow19 = i14;
                            columnIndexOrThrow22 = i2;
                            columnIndexOrThrow24 = i22;
                            columnIndexOrThrow30 = i28;
                            columnIndexOrThrow = i8;
                            columnIndexOrThrow15 = i7;
                            columnIndexOrThrow32 = i30;
                            columnIndexOrThrow16 = i9;
                            columnIndexOrThrow20 = i16;
                            columnIndexOrThrow21 = i17;
                            columnIndexOrThrow23 = i21;
                            columnIndexOrThrow14 = i4;
                            columnIndexOrThrow28 = i26;
                            columnIndexOrThrow3 = i12;
                            columnIndexOrThrow18 = i11;
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
            case 1:
                CacheDrawScope cacheDrawScope = (CacheDrawScope) obj;
                float intBitsToFloat = Float.intBitsToFloat((int) (cacheDrawScope.cacheParams.mo406getSizeNHjbRc() >> 32)) / 2.0f;
                return cacheDrawScope.onDrawWithContent(new ThumbNode$$ExternalSyntheticLambda0(intBitsToFloat, Util.createHandleImage(cacheDrawScope, intBitsToFloat), new BlendModeColorFilter(5, j), 3));
            case 2:
                ((SemanticsPropertyReceiver) obj).set(SelectionHandlesKt.SelectionHandleInfoKey, new SelectionHandleInfo(Handle.Cursor, this.f$1, SelectionHandleAnchor.Middle, true));
                return unit;
            case 3:
                BroadcastFrameClock.FrameAwaiter frameAwaiter = (BroadcastFrameClock.FrameAwaiter) obj;
                Function1 function1 = frameAwaiter.onFrame;
                if (function1 != null && (cancellableContinuationImpl = frameAwaiter.continuation) != null) {
                    try {
                        failure = function1.invoke(Long.valueOf(j));
                    } catch (Throwable th3) {
                        failure = new Result.Failure(th3);
                    }
                    cancellableContinuationImpl.resumeWith(failure);
                }
                return unit;
            case 4:
                List list = (List) obj;
                list.getClass();
                ArrayList arrayList4 = new ArrayList();
                for (Object obj2 : list) {
                    if (((MessageReference) obj2).folderId == j) {
                        arrayList4.add(obj2);
                    }
                }
                return arrayList4;
            case 5:
                MessageReference messageReference = (MessageReference) obj;
                messageReference.getClass();
                return Boolean.valueOf(messageReference.folderId == j);
            case 6:
                MessageReference messageReference2 = (MessageReference) obj;
                messageReference2.getClass();
                return Boolean.valueOf(messageReference2.folderId == j);
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                CacheDrawScope cacheDrawScope2 = (CacheDrawScope) obj;
                cacheDrawScope2.getClass();
                return cacheDrawScope2.onDrawWithContent(new WorkSpecDao_Impl$$ExternalSyntheticLambda26(8, j));
            default:
                LayoutNodeDrawScope layoutNodeDrawScope = (LayoutNodeDrawScope) obj;
                layoutNodeDrawScope.getClass();
                layoutNodeDrawScope.drawContent();
                CanvasDrawScope canvasDrawScope = layoutNodeDrawScope.canvasDrawScope;
                ColorKt.m492drawOutlinewDX37Ww$default(layoutNodeDrawScope, new Outline$Rectangle(Util.m1090Recttz77jQw((Float.floatToRawIntBits(0.0f) << 32) | (Float.floatToRawIntBits(Float.intBitsToFloat((int) (canvasDrawScope.drawContext.m795getSizeNHjbRc() & 4294967295L)) - layoutNodeDrawScope.mo177toPx0680j_4(1.0f)) & 4294967295L), (Float.floatToRawIntBits(layoutNodeDrawScope.mo177toPx0680j_4(1.0f)) & 4294967295L) | (Float.floatToRawIntBits(Float.intBitsToFloat((int) (canvasDrawScope.drawContext.m795getSizeNHjbRc() >> 32))) << 32))), j);
                return unit;
        }
    }
}
