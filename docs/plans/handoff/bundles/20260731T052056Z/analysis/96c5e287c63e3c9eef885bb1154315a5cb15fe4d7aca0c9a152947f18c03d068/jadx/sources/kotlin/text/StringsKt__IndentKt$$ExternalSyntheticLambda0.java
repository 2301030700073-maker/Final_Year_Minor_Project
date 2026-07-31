package kotlin.text;

import androidx.compose.ui.semantics.LiveRegionMode;
import androidx.compose.ui.semantics.SemanticsProperties;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyKey;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.room.Room;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import androidx.work.BackoffPolicy;
import androidx.work.Constraints;
import androidx.work.Data;
import androidx.work.OutOfQuotaPolicy;
import androidx.work.WorkInfo;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecDao_Impl;
import coil3.util.ContextsKt;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.UUID;
import kotlin.ExceptionsKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.UnsignedKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.jvm.functions.Function1;
import kotlin.ranges.IntRange;
import kotlin.reflect.KProperty;
import kotlin.uuid.UuidKt;
import okio.ByteString;
import org.wikipedia.feed.personalization.db.entity.InterestArticle;
import org.wikipedia.games.GamesHubScreenKt$$ExternalSyntheticLambda8;
import org.wikipedia.history.db.HistoryEntryWithImage;
import org.wikipedia.login.LoginClient;
import org.wikipedia.offline.db.OfflineObject;
import org.wikipedia.page.Namespace;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class StringsKt__IndentKt$$ExternalSyntheticLambda0 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ String f$0;

    public /* synthetic */ StringsKt__IndentKt$$ExternalSyntheticLambda0(int i, String str) {
        this.$r8$classId = i;
        this.f$0 = str;
    }

    private final Object invoke$org$wikipedia$offline$db$OfflineObjectDao_Impl$$ExternalSyntheticLambda2(Object obj) {
        OfflineObject offlineObject;
        String str = this.f$0;
        SQLiteConnection sQLiteConnection = (SQLiteConnection) obj;
        sQLiteConnection.getClass();
        SQLiteStatement prepare = sQLiteConnection.prepare("SELECT * FROM OfflineObject WHERE url = ? LIMIT 1");
        try {
            prepare.bindText(1, str);
            int columnIndexOrThrow = UnsignedKt.getColumnIndexOrThrow(prepare, "id");
            int columnIndexOrThrow2 = UnsignedKt.getColumnIndexOrThrow(prepare, "url");
            int columnIndexOrThrow3 = UnsignedKt.getColumnIndexOrThrow(prepare, "lang");
            int columnIndexOrThrow4 = UnsignedKt.getColumnIndexOrThrow(prepare, "path");
            int columnIndexOrThrow5 = UnsignedKt.getColumnIndexOrThrow(prepare, "status");
            int columnIndexOrThrow6 = UnsignedKt.getColumnIndexOrThrow(prepare, "usedByStr");
            if (prepare.step()) {
                offlineObject = new OfflineObject((int) prepare.getLong(columnIndexOrThrow), (int) prepare.getLong(columnIndexOrThrow5), prepare.getText(columnIndexOrThrow2), prepare.getText(columnIndexOrThrow3), prepare.getText(columnIndexOrThrow4), prepare.getText(columnIndexOrThrow6));
            } else {
                offlineObject = null;
            }
            return offlineObject;
        } finally {
            prepare.close();
        }
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        SQLiteStatement prepare;
        boolean z;
        boolean z2;
        boolean z3;
        WorkSpec workSpec;
        WorkInfo.State state;
        ArrayList arrayList;
        WorkInfo.State state2;
        HashSet hashSet;
        WorkInfo.PeriodicityInfo periodicityInfo;
        Data data;
        int i;
        long j;
        long j2;
        int i2 = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        int i3 = 0;
        int i4 = 1;
        String str = this.f$0;
        switch (i2) {
            case 0:
                String str2 = (String) obj;
                str2.getClass();
                return StringsKt.isBlank(str2) ? str2.length() < str.length() ? str : str2 : str.concat(str2);
            case 1:
                SemanticsPropertyReceiver semanticsPropertyReceiver = (SemanticsPropertyReceiver) obj;
                KProperty[] kPropertyArr = SemanticsPropertiesKt.$$delegatedProperties;
                semanticsPropertyReceiver.set(SemanticsProperties.ContentDescription, Room.listOf(str));
                SemanticsPropertiesKt.m616setRolekuIjeqM(semanticsPropertyReceiver, 5);
                return unit;
            case 2:
                KProperty[] kPropertyArr2 = SemanticsPropertiesKt.$$delegatedProperties;
                SemanticsPropertyKey semanticsPropertyKey = SemanticsProperties.PaneTitle;
                KProperty kProperty = SemanticsPropertiesKt.$$delegatedProperties[2];
                ((SemanticsPropertyReceiver) obj).set(semanticsPropertyKey, str);
                return unit;
            case 3:
                SemanticsPropertyReceiver semanticsPropertyReceiver2 = (SemanticsPropertyReceiver) obj;
                KProperty[] kPropertyArr3 = SemanticsPropertiesKt.$$delegatedProperties;
                semanticsPropertyReceiver2.set(SemanticsProperties.ContentDescription, Room.listOf(str));
                SemanticsPropertiesKt.m616setRolekuIjeqM(semanticsPropertyReceiver2, 5);
                return unit;
            case 4:
                SemanticsPropertyReceiver semanticsPropertyReceiver3 = (SemanticsPropertyReceiver) obj;
                KProperty[] kPropertyArr4 = SemanticsPropertiesKt.$$delegatedProperties;
                SemanticsPropertyKey semanticsPropertyKey2 = SemanticsProperties.LiveRegion;
                KProperty[] kPropertyArr5 = SemanticsPropertiesKt.$$delegatedProperties;
                KProperty kProperty2 = kPropertyArr5[3];
                semanticsPropertyReceiver3.set(semanticsPropertyKey2, new LiveRegionMode(1));
                SemanticsPropertyKey semanticsPropertyKey3 = SemanticsProperties.PaneTitle;
                KProperty kProperty3 = kPropertyArr5[2];
                semanticsPropertyReceiver3.set(semanticsPropertyKey3, str);
                return unit;
            case 5:
                KProperty[] kPropertyArr6 = SemanticsPropertiesKt.$$delegatedProperties;
                ((SemanticsPropertyReceiver) obj).set(SemanticsProperties.Error, str);
                return unit;
            case 6:
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
            case 7:
                SQLiteConnection sQLiteConnection2 = (SQLiteConnection) obj;
                sQLiteConnection2.getClass();
                prepare = sQLiteConnection2.prepare("SELECT work_spec_id FROM dependency WHERE prerequisite_id=?");
                try {
                    prepare.bindText(1, str);
                    ArrayList arrayList2 = new ArrayList();
                    while (prepare.step()) {
                        arrayList2.add(prepare.getText(0));
                    }
                    return arrayList2;
                } finally {
                }
            case 8:
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
            case 9:
                SQLiteConnection sQLiteConnection4 = (SQLiteConnection) obj;
                sQLiteConnection4.getClass();
                prepare = sQLiteConnection4.prepare("SELECT long_value FROM Preference where `key`=?");
                try {
                    prepare.bindText(1, str);
                    return (!prepare.step() || prepare.isNull(0)) ? null : Long.valueOf(prepare.getLong(0));
                } finally {
                }
            case 10:
                SQLiteConnection sQLiteConnection5 = (SQLiteConnection) obj;
                sQLiteConnection5.getClass();
                prepare = sQLiteConnection5.prepare("DELETE FROM SystemIdInfo where work_spec_id=?");
                try {
                    prepare.bindText(1, str);
                    prepare.step();
                    return unit;
                } finally {
                }
            case 11:
                SQLiteConnection sQLiteConnection6 = (SQLiteConnection) obj;
                sQLiteConnection6.getClass();
                prepare = sQLiteConnection6.prepare("SELECT name FROM workname WHERE work_spec_id=?");
                try {
                    prepare.bindText(1, str);
                    ArrayList arrayList3 = new ArrayList();
                    while (prepare.step()) {
                        arrayList3.add(prepare.getText(0));
                    }
                    return arrayList3;
                } finally {
                }
            case 12:
                SQLiteConnection sQLiteConnection7 = (SQLiteConnection) obj;
                sQLiteConnection7.getClass();
                prepare = sQLiteConnection7.prepare("DELETE from WorkProgress where work_spec_id=?");
                try {
                    prepare.bindText(1, str);
                    prepare.step();
                    return unit;
                } finally {
                }
            case IMAGE_VALUE:
                SQLiteConnection sQLiteConnection8 = (SQLiteConnection) obj;
                sQLiteConnection8.getClass();
                prepare = sQLiteConnection8.prepare("SELECT * FROM workspec WHERE id=?");
                try {
                    prepare.bindText(1, str);
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
                    if (prepare.step()) {
                        String text = prepare.getText(columnIndexOrThrow);
                        WorkInfo.State intToState = TuplesKt.intToState((int) prepare.getLong(columnIndexOrThrow2));
                        String text2 = prepare.getText(columnIndexOrThrow3);
                        String text3 = prepare.getText(columnIndexOrThrow4);
                        byte[] blob = prepare.getBlob(columnIndexOrThrow5);
                        Data data2 = Data.EMPTY;
                        Data fromByteArray = UuidKt.fromByteArray(blob);
                        Data fromByteArray2 = UuidKt.fromByteArray(prepare.getBlob(columnIndexOrThrow6));
                        long j3 = prepare.getLong(columnIndexOrThrow7);
                        long j4 = prepare.getLong(columnIndexOrThrow8);
                        long j5 = prepare.getLong(columnIndexOrThrow9);
                        int i5 = (int) prepare.getLong(columnIndexOrThrow10);
                        BackoffPolicy intToBackoffPolicy = TuplesKt.intToBackoffPolicy((int) prepare.getLong(columnIndexOrThrow11));
                        long j6 = prepare.getLong(columnIndexOrThrow12);
                        long j7 = prepare.getLong(columnIndexOrThrow13);
                        long j8 = prepare.getLong(columnIndexOrThrow14);
                        long j9 = prepare.getLong(columnIndexOrThrow15);
                        boolean z4 = ((int) prepare.getLong(columnIndexOrThrow16)) != 0;
                        OutOfQuotaPolicy intToOutOfQuotaPolicy = TuplesKt.intToOutOfQuotaPolicy((int) prepare.getLong(columnIndexOrThrow17));
                        int i6 = (int) prepare.getLong(columnIndexOrThrow18);
                        int i7 = (int) prepare.getLong(columnIndexOrThrow19);
                        long j10 = prepare.getLong(columnIndexOrThrow20);
                        int i8 = (int) prepare.getLong(columnIndexOrThrow21);
                        int i9 = (int) prepare.getLong(columnIndexOrThrow22);
                        String text4 = prepare.isNull(columnIndexOrThrow23) ? null : prepare.getText(columnIndexOrThrow23);
                        Integer valueOf = prepare.isNull(columnIndexOrThrow24) ? null : Integer.valueOf((int) prepare.getLong(columnIndexOrThrow24));
                        workSpec = new WorkSpec(text, intToState, text2, text3, fromByteArray, fromByteArray2, j3, j4, j5, new Constraints(TuplesKt.toNetworkRequest$work_runtime_release(prepare.getBlob(columnIndexOrThrow26)), TuplesKt.intToNetworkType((int) prepare.getLong(columnIndexOrThrow25)), ((int) prepare.getLong(columnIndexOrThrow27)) != 0, ((int) prepare.getLong(columnIndexOrThrow28)) != 0, ((int) prepare.getLong(columnIndexOrThrow29)) != 0, ((int) prepare.getLong(columnIndexOrThrow30)) != 0, prepare.getLong(columnIndexOrThrow31), prepare.getLong(columnIndexOrThrow32), TuplesKt.byteArrayToSetOfTriggers(prepare.getBlob(columnIndexOrThrow33))), i5, intToBackoffPolicy, j6, j7, j8, j9, z4, intToOutOfQuotaPolicy, i6, i7, j10, i8, i9, text4, valueOf != null ? Boolean.valueOf(valueOf.intValue() != 0) : null);
                    } else {
                        workSpec = null;
                    }
                    return workSpec;
                } catch (Throwable th) {
                    throw th;
                }
            case LINEAR_PROGRESS_INDICATOR_VALUE:
                SQLiteConnection sQLiteConnection9 = (SQLiteConnection) obj;
                sQLiteConnection9.getClass();
                prepare = sQLiteConnection9.prepare("SELECT state FROM workspec WHERE id=?");
                try {
                    prepare.bindText(1, str);
                    if (prepare.step()) {
                        Integer valueOf2 = prepare.isNull(0) ? null : Integer.valueOf((int) prepare.getLong(0));
                        if (valueOf2 != null) {
                            state = TuplesKt.intToState(valueOf2.intValue());
                            return state;
                        }
                    }
                    state = null;
                    return state;
                } finally {
                }
            case 15:
                SQLiteConnection sQLiteConnection10 = (SQLiteConnection) obj;
                sQLiteConnection10.getClass();
                prepare = sQLiteConnection10.prepare("SELECT id FROM workspec WHERE state NOT IN (2, 3, 5) AND id IN (SELECT work_spec_id FROM workname WHERE name=?)");
                try {
                    prepare.bindText(1, str);
                    ArrayList arrayList4 = new ArrayList();
                    while (prepare.step()) {
                        arrayList4.add(prepare.getText(0));
                    }
                    return arrayList4;
                } finally {
                }
            case LAZY_VERTICAL_GRID_VALUE:
                SQLiteConnection sQLiteConnection11 = (SQLiteConnection) obj;
                sQLiteConnection11.getClass();
                prepare = sQLiteConnection11.prepare("UPDATE workspec SET stop_reason = CASE WHEN state=1 THEN 1 ELSE -256 END, state=5 WHERE id=?");
                try {
                    prepare.bindText(1, str);
                    prepare.step();
                    int totalChangedRows = TuplesKt.getTotalChangedRows(sQLiteConnection11);
                    prepare.close();
                    return Integer.valueOf(totalChangedRows);
                } finally {
                }
            case VERTICAL_GRID_ITEM_VALUE:
                SQLiteConnection sQLiteConnection12 = (SQLiteConnection) obj;
                sQLiteConnection12.getClass();
                prepare = sQLiteConnection12.prepare("UPDATE workspec SET run_attempt_count=0 WHERE id=?");
                try {
                    prepare.bindText(1, str);
                    prepare.step();
                    int totalChangedRows2 = TuplesKt.getTotalChangedRows(sQLiteConnection12);
                    prepare.close();
                    return Integer.valueOf(totalChangedRows2);
                } finally {
                }
            case RADIO_GROUP_VALUE:
                SQLiteConnection sQLiteConnection13 = (SQLiteConnection) obj;
                sQLiteConnection13.getClass();
                prepare = sQLiteConnection13.prepare("UPDATE workspec SET period_count=period_count+1 WHERE id=?");
                try {
                    prepare.bindText(1, str);
                    prepare.step();
                    return unit;
                } finally {
                }
            case RADIO_BUTTON_VALUE:
                SQLiteConnection sQLiteConnection14 = (SQLiteConnection) obj;
                sQLiteConnection14.getClass();
                prepare = sQLiteConnection14.prepare("SELECT output FROM workspec WHERE id IN\n             (SELECT prerequisite_id FROM dependency WHERE work_spec_id=?)");
                try {
                    prepare.bindText(1, str);
                    ArrayList arrayList5 = new ArrayList();
                    while (prepare.step()) {
                        byte[] blob2 = prepare.getBlob(0);
                        Data data3 = Data.EMPTY;
                        arrayList5.add(UuidKt.fromByteArray(blob2));
                    }
                    return arrayList5;
                } finally {
                }
            case RADIO_ROW_VALUE:
                SQLiteConnection sQLiteConnection15 = (SQLiteConnection) obj;
                sQLiteConnection15.getClass();
                prepare = sQLiteConnection15.prepare("UPDATE workspec SET run_attempt_count=run_attempt_count+1 WHERE id=?");
                try {
                    prepare.bindText(1, str);
                    prepare.step();
                    int totalChangedRows3 = TuplesKt.getTotalChangedRows(sQLiteConnection15);
                    prepare.close();
                    return Integer.valueOf(totalChangedRows3);
                } finally {
                }
            case RADIO_COLUMN_VALUE:
                SQLiteConnection sQLiteConnection16 = (SQLiteConnection) obj;
                sQLiteConnection16.getClass();
                prepare = sQLiteConnection16.prepare("DELETE FROM workspec WHERE id=?");
                try {
                    prepare.bindText(1, str);
                    prepare.step();
                    return unit;
                } finally {
                }
            case SIZE_BOX_VALUE:
                SQLiteConnection sQLiteConnection17 = (SQLiteConnection) obj;
                sQLiteConnection17.getClass();
                prepare = sQLiteConnection17.prepare("SELECT id, state FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)");
                try {
                    prepare.bindText(1, str);
                    ArrayList arrayList6 = new ArrayList();
                    while (prepare.step()) {
                        String text5 = prepare.getText(0);
                        WorkInfo.State intToState2 = TuplesKt.intToState((int) prepare.getLong(1));
                        text5.getClass();
                        intToState2.getClass();
                        WorkSpec.IdAndState idAndState = new WorkSpec.IdAndState();
                        idAndState.id = text5;
                        idAndState.state = intToState2;
                        arrayList6.add(idAndState);
                    }
                    return arrayList6;
                } finally {
                }
            case 23:
                SQLiteConnection sQLiteConnection18 = (SQLiteConnection) obj;
                sQLiteConnection18.getClass();
                prepare = sQLiteConnection18.prepare("SELECT DISTINCT tag FROM worktag WHERE work_spec_id=?");
                try {
                    prepare.bindText(1, str);
                    ArrayList arrayList7 = new ArrayList();
                    while (prepare.step()) {
                        arrayList7.add(prepare.getText(0));
                    }
                    return arrayList7;
                } finally {
                }
            case 24:
                WorkDatabase workDatabase = (WorkDatabase) obj;
                workDatabase.getClass();
                ContextsKt$$ExternalSyntheticBUOutline0 contextsKt$$ExternalSyntheticBUOutline0 = WorkSpec.WORK_INFO_MAPPER;
                WorkSpecDao_Impl workSpecDao = workDatabase.workSpecDao();
                workSpecDao.getClass();
                str.getClass();
                List list = (List) ExceptionsKt.performBlocking(workSpecDao.__db, true, true, new GamesHubScreenKt$$ExternalSyntheticLambda8(i4, str, workSpecDao));
                contextsKt$$ExternalSyntheticBUOutline0.getClass();
                List<WorkSpec.WorkInfoPojo> list2 = list;
                if (list2 != null) {
                    ArrayList arrayList8 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list2, 10));
                    for (WorkSpec.WorkInfoPojo workInfoPojo : list2) {
                        List list3 = workInfoPojo.progress;
                        Data data4 = !list3.isEmpty() ? (Data) list3.get(i3) : Data.EMPTY;
                        UUID fromString = UUID.fromString(workInfoPojo.id);
                        fromString.getClass();
                        WorkInfo.State state3 = workInfoPojo.state;
                        HashSet hashSet2 = new HashSet(workInfoPojo.tags);
                        Data data5 = workInfoPojo.output;
                        int i10 = workInfoPojo.runAttemptCount;
                        int i11 = workInfoPojo.generation;
                        Constraints constraints = workInfoPojo.constraints;
                        long j11 = workInfoPojo.initialDelay;
                        long j12 = workInfoPojo.intervalDuration;
                        if (j12 != 0) {
                            state2 = state3;
                            hashSet = hashSet2;
                            periodicityInfo = new WorkInfo.PeriodicityInfo(j12, workInfoPojo.flexDuration);
                        } else {
                            state2 = state3;
                            hashSet = hashSet2;
                            periodicityInfo = null;
                        }
                        WorkInfo.State state4 = workInfoPojo.state;
                        WorkInfo.State state5 = WorkInfo.State.ENQUEUED;
                        if (state4 == state5) {
                            ContextsKt$$ExternalSyntheticBUOutline0 contextsKt$$ExternalSyntheticBUOutline02 = WorkSpec.WORK_INFO_MAPPER;
                            data = data5;
                            j = j11;
                            j2 = ContextsKt.calculateNextRunTime((state4 != state5 || i10 <= 0) ? 0 : i4, i10, workInfoPojo.backoffPolicy, workInfoPojo.backoffDelayDuration, workInfoPojo.lastEnqueueTime, workInfoPojo.periodCount, j12 != 0, j, workInfoPojo.flexDuration, j12, workInfoPojo.nextScheduleTimeOverride);
                            i = i10;
                        } else {
                            data = data5;
                            i = i10;
                            j = j11;
                            j2 = Long.MAX_VALUE;
                        }
                        arrayList8.add(new WorkInfo(fromString, state2, hashSet, data, data4, i, i11, constraints, j, periodicityInfo, j2, workInfoPojo.stopReason));
                        i3 = 0;
                        i4 = 1;
                    }
                    arrayList = arrayList8;
                } else {
                    arrayList = null;
                }
                arrayList.getClass();
                return arrayList;
            case 25:
                IntRange intRange = (IntRange) obj;
                intRange.getClass();
                return StringsKt.substring(str, intRange);
            case 26:
                SQLiteConnection sQLiteConnection19 = (SQLiteConnection) obj;
                sQLiteConnection19.getClass();
                prepare = sQLiteConnection19.prepare("SELECT * FROM InterestArticle WHERE lang = ? ORDER BY RANDOM()");
                try {
                    prepare.bindText(1, str);
                    int columnIndexOrThrow34 = UnsignedKt.getColumnIndexOrThrow(prepare, "apiTitle");
                    int columnIndexOrThrow35 = UnsignedKt.getColumnIndexOrThrow(prepare, "lang");
                    int columnIndexOrThrow36 = UnsignedKt.getColumnIndexOrThrow(prepare, "namespace");
                    int columnIndexOrThrow37 = UnsignedKt.getColumnIndexOrThrow(prepare, "displayTitle");
                    int columnIndexOrThrow38 = UnsignedKt.getColumnIndexOrThrow(prepare, "description");
                    int columnIndexOrThrow39 = UnsignedKt.getColumnIndexOrThrow(prepare, "thumbUrl");
                    ArrayList arrayList9 = new ArrayList();
                    while (prepare.step()) {
                        String text6 = prepare.getText(columnIndexOrThrow34);
                        String text7 = prepare.getText(columnIndexOrThrow35);
                        Namespace intToNamespace = ByteString.Companion.intToNamespace(prepare.isNull(columnIndexOrThrow36) ? null : Integer.valueOf((int) prepare.getLong(columnIndexOrThrow36)));
                        if (intToNamespace == null) {
                            throw new IllegalStateException("Expected NON-NULL 'org.wikipedia.page.Namespace', but it was NULL.");
                        }
                        arrayList9.add(new InterestArticle(text6, text7, intToNamespace, prepare.getText(columnIndexOrThrow37), prepare.getText(columnIndexOrThrow38), prepare.getText(columnIndexOrThrow39)));
                    }
                    return arrayList9;
                } catch (Throwable th2) {
                    throw th2;
                }
            case 27:
                SQLiteConnection sQLiteConnection20 = (SQLiteConnection) obj;
                sQLiteConnection20.getClass();
                prepare = sQLiteConnection20.prepare("SELECT `authority`, `lang`, `apiTitle`, `displayTitle`, `id`, `namespace`, `timestamp`, `source`, `imageName`, `description`, `geoLat`, `geoLon`, `timeSpentSec` FROM (SELECT HistoryEntry.*, PageImage.imageName, PageImage.description, PageImage.geoLat, PageImage.geoLon, PageImage.timeSpentSec FROM HistoryEntry LEFT OUTER JOIN PageImage ON (HistoryEntry.namespace = PageImage.namespace AND HistoryEntry.apiTitle = PageImage.apiTitle AND HistoryEntry.lang = PageImage.lang) INNER JOIN (SELECT lang, apiTitle, MAX(timestamp) as max_timestamp FROM HistoryEntry GROUP BY lang, apiTitle) LatestEntries ON HistoryEntry.apiTitle = LatestEntries.apiTitle AND HistoryEntry.timestamp = LatestEntries.max_timestamp WHERE UPPER(HistoryEntry.displayTitle) LIKE UPPER(?) ESCAPE '\\' ORDER BY timestamp DESC)");
                try {
                    prepare.bindText(1, str);
                    int columnIndexOrThrow40 = UnsignedKt.getColumnIndexOrThrow(prepare, "authority");
                    int columnIndexOrThrow41 = UnsignedKt.getColumnIndexOrThrow(prepare, "lang");
                    int columnIndexOrThrow42 = UnsignedKt.getColumnIndexOrThrow(prepare, "apiTitle");
                    int columnIndexOrThrow43 = UnsignedKt.getColumnIndexOrThrow(prepare, "displayTitle");
                    int columnIndexOrThrow44 = UnsignedKt.getColumnIndexOrThrow(prepare, "id");
                    int columnIndexOrThrow45 = UnsignedKt.getColumnIndexOrThrow(prepare, "namespace");
                    int columnIndexOrThrow46 = UnsignedKt.getColumnIndexOrThrow(prepare, "timestamp");
                    int columnIndexOrThrow47 = UnsignedKt.getColumnIndexOrThrow(prepare, "source");
                    int columnIndexOrThrow48 = UnsignedKt.getColumnIndexOrThrow(prepare, "imageName");
                    int columnIndexOrThrow49 = UnsignedKt.getColumnIndexOrThrow(prepare, "description");
                    int columnIndexOrThrow50 = UnsignedKt.getColumnIndexOrThrow(prepare, "geoLat");
                    int columnIndexOrThrow51 = UnsignedKt.getColumnIndexOrThrow(prepare, "geoLon");
                    int columnIndexOrThrow52 = UnsignedKt.getColumnIndexOrThrow(prepare, "timeSpentSec");
                    ArrayList arrayList10 = new ArrayList();
                    while (prepare.step()) {
                        String text8 = prepare.getText(columnIndexOrThrow40);
                        String text9 = prepare.getText(columnIndexOrThrow41);
                        String text10 = prepare.getText(columnIndexOrThrow42);
                        String text11 = prepare.getText(columnIndexOrThrow43);
                        long j13 = prepare.getLong(columnIndexOrThrow44);
                        String text12 = prepare.getText(columnIndexOrThrow45);
                        Date fromTimestamp = LoginClient.fromTimestamp(prepare.isNull(columnIndexOrThrow46) ? null : Long.valueOf(prepare.getLong(columnIndexOrThrow46)));
                        if (fromTimestamp == null) {
                            throw new IllegalStateException("Expected NON-NULL 'java.util.Date', but it was NULL.");
                        }
                        columnIndexOrThrow48 = columnIndexOrThrow48;
                        int i12 = columnIndexOrThrow41;
                        int i13 = columnIndexOrThrow42;
                        arrayList10.add(new HistoryEntryWithImage(text8, text9, text10, text11, text12, fromTimestamp, (int) prepare.getLong(columnIndexOrThrow47), (int) prepare.getLong(columnIndexOrThrow52), prepare.isNull(columnIndexOrThrow48) ? null : prepare.getText(columnIndexOrThrow48), prepare.isNull(columnIndexOrThrow49) ? null : prepare.getText(columnIndexOrThrow49), prepare.isNull(columnIndexOrThrow50) ? null : Double.valueOf(prepare.getDouble(columnIndexOrThrow50)), prepare.isNull(columnIndexOrThrow51) ? null : Double.valueOf(prepare.getDouble(columnIndexOrThrow51)), j13));
                        columnIndexOrThrow41 = i12;
                        columnIndexOrThrow42 = i13;
                    }
                    return arrayList10;
                } catch (Throwable th3) {
                    throw th3;
                }
            case 28:
                return invoke$org$wikipedia$offline$db$OfflineObjectDao_Impl$$ExternalSyntheticLambda2(obj);
            default:
                SQLiteConnection sQLiteConnection21 = (SQLiteConnection) obj;
                sQLiteConnection21.getClass();
                prepare = sQLiteConnection21.prepare("SELECT * FROM OfflineObject WHERE url LIKE '%/' || ? || '/%' LIMIT 1");
                try {
                    prepare.bindText(1, str);
                    int columnIndexOrThrow53 = UnsignedKt.getColumnIndexOrThrow(prepare, "id");
                    int columnIndexOrThrow54 = UnsignedKt.getColumnIndexOrThrow(prepare, "url");
                    int columnIndexOrThrow55 = UnsignedKt.getColumnIndexOrThrow(prepare, "lang");
                    int columnIndexOrThrow56 = UnsignedKt.getColumnIndexOrThrow(prepare, "path");
                    return prepare.step() ? new OfflineObject((int) prepare.getLong(columnIndexOrThrow53), (int) prepare.getLong(UnsignedKt.getColumnIndexOrThrow(prepare, "status")), prepare.getText(columnIndexOrThrow54), prepare.getText(columnIndexOrThrow55), prepare.getText(columnIndexOrThrow56), prepare.getText(UnsignedKt.getColumnIndexOrThrow(prepare, "usedByStr"))) : null;
                } finally {
                }
        }
    }

    public /* synthetic */ StringsKt__IndentKt$$ExternalSyntheticLambda0(String str, Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = str;
    }
}
