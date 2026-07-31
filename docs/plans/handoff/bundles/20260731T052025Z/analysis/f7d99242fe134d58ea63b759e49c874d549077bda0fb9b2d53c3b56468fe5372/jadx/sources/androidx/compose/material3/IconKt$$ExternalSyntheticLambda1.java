package androidx.compose.material3;

import androidx.appcompat.app.ActionBar;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.ui.semantics.LiveRegionMode;
import androidx.compose.ui.semantics.SemanticsProperties;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyKey;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.sqlite.SQLite;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import androidx.work.BackoffPolicy;
import androidx.work.Constraints;
import androidx.work.Data;
import androidx.work.OutOfQuotaPolicy;
import androidx.work.WorkInfo;
import androidx.work.impl.model.WorkSpec;
import app.k9mail.feature.migration.provider.SettingsProvider;
import app.k9mail.feature.settings.p000import.ui.AppVersion;
import com.fsck.k9.mail.internet.MimeHeader$Field;
import com.fsck.k9.sasl.OAuthBearer;
import java.util.ArrayList;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KProperty;
import kotlin.text.StringsKt__StringsJVMKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class IconKt$$ExternalSyntheticLambda1 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ String f$0;

    public /* synthetic */ IconKt$$ExternalSyntheticLambda1(String str, int i) {
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
        WorkInfo.State state;
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        String str = this.f$0;
        switch (i) {
            case 0:
                SemanticsPropertyReceiver semanticsPropertyReceiver = (SemanticsPropertyReceiver) obj;
                SemanticsPropertiesKt.setContentDescription(semanticsPropertyReceiver, str);
                SemanticsPropertiesKt.m674setRolekuIjeqM(semanticsPropertyReceiver, 5);
                return unit;
            case 1:
                SemanticsPropertiesKt.setContentDescription((SemanticsPropertyReceiver) obj, str);
                return unit;
            case 2:
                SemanticsPropertiesKt.setPaneTitle((SemanticsPropertyReceiver) obj, str);
                return unit;
            case 3:
                SemanticsPropertyReceiver semanticsPropertyReceiver2 = (SemanticsPropertyReceiver) obj;
                SemanticsPropertiesKt.setPaneTitle(semanticsPropertyReceiver2, str);
                SemanticsPropertyKey semanticsPropertyKey = SemanticsProperties.TraversalIndex;
                KProperty kProperty = SemanticsPropertiesKt.$$delegatedProperties[11];
                semanticsPropertyReceiver2.set(semanticsPropertyKey, Float.valueOf(0.0f));
                return unit;
            case 4:
                SemanticsPropertyReceiver semanticsPropertyReceiver3 = (SemanticsPropertyReceiver) obj;
                KProperty[] kPropertyArr = SemanticsPropertiesKt.$$delegatedProperties;
                SemanticsPropertyKey semanticsPropertyKey2 = SemanticsProperties.LiveRegion;
                KProperty kProperty2 = SemanticsPropertiesKt.$$delegatedProperties[3];
                semanticsPropertyReceiver3.set(semanticsPropertyKey2, new LiveRegionMode(1));
                SemanticsPropertiesKt.setPaneTitle(semanticsPropertyReceiver3, str);
                return unit;
            case 5:
                KProperty[] kPropertyArr2 = SemanticsPropertiesKt.$$delegatedProperties;
                ((SemanticsPropertyReceiver) obj).set(SemanticsProperties.Error, str);
                return unit;
            case 6:
                Pair pair = (Pair) obj;
                pair.getClass();
                return Boolean.valueOf(Intrinsics.areEqual(pair.first, str));
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                SQLiteConnection sQLiteConnection = (SQLiteConnection) obj;
                sQLiteConnection.getClass();
                prepare = sQLiteConnection.prepare("SELECT COUNT(*)>0 FROM dependency WHERE prerequisite_id=?");
                try {
                    prepare.bindText(str, 1);
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
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                SQLiteConnection sQLiteConnection2 = (SQLiteConnection) obj;
                sQLiteConnection2.getClass();
                prepare = sQLiteConnection2.prepare("SELECT work_spec_id FROM dependency WHERE prerequisite_id=?");
                try {
                    prepare.bindText(str, 1);
                    ArrayList arrayList = new ArrayList();
                    while (prepare.step()) {
                        arrayList.add(prepare.getText(0));
                    }
                    return arrayList;
                } finally {
                }
            case 9:
                SQLiteConnection sQLiteConnection3 = (SQLiteConnection) obj;
                sQLiteConnection3.getClass();
                prepare = sQLiteConnection3.prepare("SELECT COUNT(*)=0 FROM dependency WHERE work_spec_id=? AND prerequisite_id IN (SELECT id FROM workspec WHERE state!=2)");
                try {
                    prepare.bindText(str, 1);
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
            case 10:
                SQLiteConnection sQLiteConnection4 = (SQLiteConnection) obj;
                sQLiteConnection4.getClass();
                prepare = sQLiteConnection4.prepare("SELECT long_value FROM Preference where `key`=?");
                try {
                    prepare.bindText(str, 1);
                    return (!prepare.step() || prepare.isNull(0)) ? null : Long.valueOf(prepare.getLong(0));
                } finally {
                }
            case 11:
                SQLiteConnection sQLiteConnection5 = (SQLiteConnection) obj;
                sQLiteConnection5.getClass();
                prepare = sQLiteConnection5.prepare("DELETE FROM SystemIdInfo where work_spec_id=?");
                try {
                    prepare.bindText(str, 1);
                    prepare.step();
                    return unit;
                } finally {
                }
            case BasicTextKt.ShiftMeta /* 12 */:
                SQLiteConnection sQLiteConnection6 = (SQLiteConnection) obj;
                sQLiteConnection6.getClass();
                prepare = sQLiteConnection6.prepare("SELECT name FROM workname WHERE work_spec_id=?");
                try {
                    prepare.bindText(str, 1);
                    ArrayList arrayList2 = new ArrayList();
                    while (prepare.step()) {
                        arrayList2.add(prepare.getText(0));
                    }
                    return arrayList2;
                } finally {
                }
            case 13:
                SQLiteConnection sQLiteConnection7 = (SQLiteConnection) obj;
                sQLiteConnection7.getClass();
                prepare = sQLiteConnection7.prepare("DELETE from WorkProgress where work_spec_id=?");
                try {
                    prepare.bindText(str, 1);
                    prepare.step();
                    return unit;
                } finally {
                }
            case 14:
                SQLiteConnection sQLiteConnection8 = (SQLiteConnection) obj;
                sQLiteConnection8.getClass();
                prepare = sQLiteConnection8.prepare("SELECT * FROM workspec WHERE id=?");
                try {
                    prepare.bindText(str, 1);
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
                    if (prepare.step()) {
                        String text = prepare.getText(columnIndexOrThrow);
                        WorkInfo.State intToState = SQLite.intToState((int) prepare.getLong(columnIndexOrThrow2));
                        String text2 = prepare.getText(columnIndexOrThrow3);
                        String text3 = prepare.getText(columnIndexOrThrow4);
                        byte[] blob = prepare.getBlob(columnIndexOrThrow5);
                        Data data = Data.EMPTY;
                        Data fromByteArray = Data.Companion.fromByteArray(blob);
                        Data fromByteArray2 = Data.Companion.fromByteArray(prepare.getBlob(columnIndexOrThrow6));
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
            case OffsetKt.Horizontal /* 15 */:
                SQLiteConnection sQLiteConnection9 = (SQLiteConnection) obj;
                sQLiteConnection9.getClass();
                prepare = sQLiteConnection9.prepare("SELECT state FROM workspec WHERE id=?");
                try {
                    prepare.bindText(str, 1);
                    if (prepare.step()) {
                        Integer valueOf2 = prepare.isNull(0) ? null : Integer.valueOf((int) prepare.getLong(0));
                        if (valueOf2 != null) {
                            state = SQLite.intToState(valueOf2.intValue());
                            return state;
                        }
                    }
                    state = null;
                    return state;
                } finally {
                }
            case 16:
                SQLiteConnection sQLiteConnection10 = (SQLiteConnection) obj;
                sQLiteConnection10.getClass();
                prepare = sQLiteConnection10.prepare("SELECT id FROM workspec WHERE state NOT IN (2, 3, 5) AND id IN (SELECT work_spec_id FROM workname WHERE name=?)");
                try {
                    prepare.bindText(str, 1);
                    ArrayList arrayList3 = new ArrayList();
                    while (prepare.step()) {
                        arrayList3.add(prepare.getText(0));
                    }
                    return arrayList3;
                } finally {
                }
            case 17:
                SQLiteConnection sQLiteConnection11 = (SQLiteConnection) obj;
                sQLiteConnection11.getClass();
                prepare = sQLiteConnection11.prepare("UPDATE workspec SET stop_reason = CASE WHEN state=1 THEN 1 ELSE -256 END, state=5 WHERE id=?");
                try {
                    prepare.bindText(str, 1);
                    prepare.step();
                    int totalChangedRows = OAuthBearer.getTotalChangedRows(sQLiteConnection11);
                    prepare.close();
                    return Integer.valueOf(totalChangedRows);
                } finally {
                }
            case 18:
                SQLiteConnection sQLiteConnection12 = (SQLiteConnection) obj;
                sQLiteConnection12.getClass();
                prepare = sQLiteConnection12.prepare("UPDATE workspec SET run_attempt_count=0 WHERE id=?");
                try {
                    prepare.bindText(str, 1);
                    prepare.step();
                    int totalChangedRows2 = OAuthBearer.getTotalChangedRows(sQLiteConnection12);
                    prepare.close();
                    return Integer.valueOf(totalChangedRows2);
                } finally {
                }
            case 19:
                SQLiteConnection sQLiteConnection13 = (SQLiteConnection) obj;
                sQLiteConnection13.getClass();
                prepare = sQLiteConnection13.prepare("UPDATE workspec SET period_count=period_count+1 WHERE id=?");
                try {
                    prepare.bindText(str, 1);
                    prepare.step();
                    return unit;
                } finally {
                }
            case 20:
                SQLiteConnection sQLiteConnection14 = (SQLiteConnection) obj;
                sQLiteConnection14.getClass();
                prepare = sQLiteConnection14.prepare("SELECT output FROM workspec WHERE id IN\n             (SELECT prerequisite_id FROM dependency WHERE work_spec_id=?)");
                try {
                    prepare.bindText(str, 1);
                    ArrayList arrayList4 = new ArrayList();
                    while (prepare.step()) {
                        byte[] blob2 = prepare.getBlob(0);
                        Data data2 = Data.EMPTY;
                        arrayList4.add(Data.Companion.fromByteArray(blob2));
                    }
                    return arrayList4;
                } finally {
                }
            case 21:
                SQLiteConnection sQLiteConnection15 = (SQLiteConnection) obj;
                sQLiteConnection15.getClass();
                prepare = sQLiteConnection15.prepare("UPDATE workspec SET run_attempt_count=run_attempt_count+1 WHERE id=?");
                try {
                    prepare.bindText(str, 1);
                    prepare.step();
                    int totalChangedRows3 = OAuthBearer.getTotalChangedRows(sQLiteConnection15);
                    prepare.close();
                    return Integer.valueOf(totalChangedRows3);
                } finally {
                }
            case 22:
                SQLiteConnection sQLiteConnection16 = (SQLiteConnection) obj;
                sQLiteConnection16.getClass();
                prepare = sQLiteConnection16.prepare("DELETE FROM workspec WHERE id=?");
                try {
                    prepare.bindText(str, 1);
                    prepare.step();
                    return unit;
                } finally {
                }
            case 23:
                SQLiteConnection sQLiteConnection17 = (SQLiteConnection) obj;
                sQLiteConnection17.getClass();
                prepare = sQLiteConnection17.prepare("SELECT id, state FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)");
                try {
                    prepare.bindText(str, 1);
                    ArrayList arrayList5 = new ArrayList();
                    while (prepare.step()) {
                        String text5 = prepare.getText(0);
                        WorkInfo.State intToState2 = SQLite.intToState((int) prepare.getLong(1));
                        text5.getClass();
                        WorkSpec.IdAndState idAndState = new WorkSpec.IdAndState();
                        idAndState.id = text5;
                        idAndState.state = intToState2;
                        arrayList5.add(idAndState);
                    }
                    return arrayList5;
                } finally {
                }
            case 24:
                SQLiteConnection sQLiteConnection18 = (SQLiteConnection) obj;
                sQLiteConnection18.getClass();
                prepare = sQLiteConnection18.prepare("SELECT DISTINCT tag FROM worktag WHERE work_spec_id=?");
                try {
                    prepare.bindText(str, 1);
                    ArrayList arrayList6 = new ArrayList();
                    while (prepare.step()) {
                        arrayList6.add(prepare.getText(0));
                    }
                    return arrayList6;
                } finally {
                }
            case 25:
                Pair pair2 = (Pair) obj;
                int i7 = SettingsProvider.$r8$clinit;
                pair2.getClass();
                return Boolean.valueOf(Intrinsics.areEqual(pair2.first, str));
            case 26:
                AppVersion appVersion = (AppVersion) obj;
                appVersion.getClass();
                return Boolean.valueOf(appVersion.packageName.equals(str));
            case 27:
                MimeHeader$Field mimeHeader$Field = (MimeHeader$Field) obj;
                mimeHeader$Field.getClass();
                return Boolean.valueOf(StringsKt__StringsJVMKt.equals(mimeHeader$Field.name, str, true));
            default:
                MimeHeader$Field mimeHeader$Field2 = (MimeHeader$Field) obj;
                mimeHeader$Field2.getClass();
                return Boolean.valueOf(StringsKt__StringsJVMKt.equals(mimeHeader$Field2.name, str, true));
        }
    }
}
