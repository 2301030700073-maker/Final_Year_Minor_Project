package androidx.work.impl.workers;

import android.content.Context;
import android.database.Cursor;
import android.os.Build;
import android.text.TextUtils;
import androidx.work.Cif;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import androidx.work.impl.WorkDatabase;
import com.facebook.internal.ServerProtocol;
import defpackage.AbstractC0614Xq;
import defpackage.AbstractC3904wA;
import defpackage.C0225Ga;
import defpackage.C0688aN;
import defpackage.C3792uG;
import defpackage.C3910wG;
import defpackage.C4022yA;
import defpackage.GM;
import defpackage.InterfaceC3851vG;
import defpackage.JM;
import defpackage.KM;
import defpackage.O2;
import defpackage.TM;
import defpackage.UM;
import defpackage.VM;
import defpackage.XM;
import defpackage.YM;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public class DiagnosticsWorker extends Worker {
    static {
        AbstractC0614Xq.m2870try("DiagnosticsWrkr");
    }

    public DiagnosticsWorker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
    }

    /* renamed from: if, reason: not valid java name */
    public static String m4759if(JM jm, XM xm, InterfaceC3851vG interfaceC3851vG, ArrayList arrayList) {
        StringBuilder sb = new StringBuilder();
        sb.append(String.format("\n Id \t Class Name\t %s\t State\t Unique Name\t Tags\t", Build.VERSION.SDK_INT >= 23 ? "Job Id" : "Alarm Id"));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            TM tm = (TM) it.next();
            C3792uG m8566do = ((C3910wG) interfaceC3851vG).m8566do(tm.f3655do);
            Integer valueOf = m8566do != null ? Integer.valueOf(m8566do.f15871do) : null;
            String str = tm.f3655do;
            KM km = (KM) jm;
            km.getClass();
            C4022yA m8700for = C4022yA.m8700for(1, "SELECT name FROM workname WHERE work_spec_id=?");
            if (str == null) {
                m8700for.m8701case(1);
            } else {
                m8700for.m8702goto(1, str);
            }
            AbstractC3904wA abstractC3904wA = km.f1801do;
            abstractC3904wA.m8562if();
            Cursor m8559else = abstractC3904wA.m8559else(m8700for);
            try {
                ArrayList arrayList2 = new ArrayList(m8559else.getCount());
                while (m8559else.moveToNext()) {
                    arrayList2.add(m8559else.getString(0));
                }
                m8559else.close();
                m8700for.release();
                sb.append(String.format("\n%s\t %s\t %s\t %s\t %s\t %s\t", tm.f3655do, tm.f3664if, valueOf, tm.f3652do.name(), TextUtils.join(",", arrayList2), TextUtils.join(",", ((YM) xm).m2914do(tm.f3655do))));
            } catch (Throwable th) {
                m8559else.close();
                m8700for.release();
                throw th;
            }
        }
        return sb.toString();
    }

    @Override // androidx.work.Worker
    public final ListenableWorker.Cdo doWork() {
        C4022yA c4022yA;
        ArrayList arrayList;
        InterfaceC3851vG interfaceC3851vG;
        JM jm;
        XM xm;
        int i;
        WorkDatabase workDatabase = GM.m731try(getApplicationContext()).f1178do;
        UM mo4729final = workDatabase.mo4729final();
        JM mo4727class = workDatabase.mo4727class();
        XM mo4730super = workDatabase.mo4730super();
        InterfaceC3851vG mo4726catch = workDatabase.mo4726catch();
        long currentTimeMillis = System.currentTimeMillis() - TimeUnit.DAYS.toMillis(1L);
        VM vm = (VM) mo4729final;
        vm.getClass();
        C4022yA m8700for = C4022yA.m8700for(1, "SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground`, `WorkSpec`.`out_of_quota_policy` AS `out_of_quota_policy` FROM workspec WHERE period_start_time >= ? AND state IN (2, 3, 5) ORDER BY period_start_time DESC");
        m8700for.m8703new(1, currentTimeMillis);
        AbstractC3904wA abstractC3904wA = vm.f4117do;
        abstractC3904wA.m8562if();
        Cursor m8559else = abstractC3904wA.m8559else(m8700for);
        try {
            int m1591this = O2.m1591this(m8559else, "required_network_type");
            int m1591this2 = O2.m1591this(m8559else, "requires_charging");
            int m1591this3 = O2.m1591this(m8559else, "requires_device_idle");
            int m1591this4 = O2.m1591this(m8559else, "requires_battery_not_low");
            int m1591this5 = O2.m1591this(m8559else, "requires_storage_not_low");
            int m1591this6 = O2.m1591this(m8559else, "trigger_content_update_delay");
            int m1591this7 = O2.m1591this(m8559else, "trigger_max_content_delay");
            int m1591this8 = O2.m1591this(m8559else, "content_uri_triggers");
            int m1591this9 = O2.m1591this(m8559else, "id");
            int m1591this10 = O2.m1591this(m8559else, ServerProtocol.DIALOG_PARAM_STATE);
            int m1591this11 = O2.m1591this(m8559else, "worker_class_name");
            int m1591this12 = O2.m1591this(m8559else, "input_merger_class_name");
            int m1591this13 = O2.m1591this(m8559else, "input");
            int m1591this14 = O2.m1591this(m8559else, "output");
            c4022yA = m8700for;
            try {
                int m1591this15 = O2.m1591this(m8559else, "initial_delay");
                int m1591this16 = O2.m1591this(m8559else, "interval_duration");
                int m1591this17 = O2.m1591this(m8559else, "flex_duration");
                int m1591this18 = O2.m1591this(m8559else, "run_attempt_count");
                int m1591this19 = O2.m1591this(m8559else, "backoff_policy");
                int m1591this20 = O2.m1591this(m8559else, "backoff_delay_duration");
                int m1591this21 = O2.m1591this(m8559else, "period_start_time");
                int m1591this22 = O2.m1591this(m8559else, "minimum_retention_duration");
                int m1591this23 = O2.m1591this(m8559else, "schedule_requested_at");
                int m1591this24 = O2.m1591this(m8559else, "run_in_foreground");
                int m1591this25 = O2.m1591this(m8559else, "out_of_quota_policy");
                int i2 = m1591this14;
                ArrayList arrayList2 = new ArrayList(m8559else.getCount());
                while (true) {
                    arrayList = arrayList2;
                    if (!m8559else.moveToNext()) {
                        break;
                    }
                    String string = m8559else.getString(m1591this9);
                    String string2 = m8559else.getString(m1591this11);
                    int i3 = m1591this11;
                    C0225Ga c0225Ga = new C0225Ga();
                    int i4 = m1591this;
                    c0225Ga.f1196do = C0688aN.m3124for(m8559else.getInt(m1591this));
                    c0225Ga.f1198do = m8559else.getInt(m1591this2) != 0;
                    c0225Ga.f1201if = m8559else.getInt(m1591this3) != 0;
                    c0225Ga.f1199for = m8559else.getInt(m1591this4) != 0;
                    c0225Ga.f1202new = m8559else.getInt(m1591this5) != 0;
                    int i5 = m1591this2;
                    int i6 = m1591this3;
                    c0225Ga.f1195do = m8559else.getLong(m1591this6);
                    c0225Ga.f1200if = m8559else.getLong(m1591this7);
                    c0225Ga.f1197do = C0688aN.m3123do(m8559else.getBlob(m1591this8));
                    TM tm = new TM(string, string2);
                    tm.f3652do = C0688aN.m3127try(m8559else.getInt(m1591this10));
                    tm.f3660for = m8559else.getString(m1591this12);
                    tm.f3654do = Cif.m4721do(m8559else.getBlob(m1591this13));
                    int i7 = i2;
                    tm.f3663if = Cif.m4721do(m8559else.getBlob(i7));
                    i2 = i7;
                    int i8 = m1591this12;
                    int i9 = m1591this15;
                    tm.f3651do = m8559else.getLong(i9);
                    int i10 = m1591this13;
                    int i11 = m1591this16;
                    tm.f3662if = m8559else.getLong(i11);
                    int i12 = m1591this10;
                    int i13 = m1591this17;
                    tm.f3659for = m8559else.getLong(i13);
                    int i14 = m1591this18;
                    tm.f3650do = m8559else.getInt(i14);
                    int i15 = m1591this19;
                    tm.f3661if = C0688aN.m3125if(m8559else.getInt(i15));
                    m1591this17 = i13;
                    int i16 = m1591this20;
                    tm.f3665new = m8559else.getLong(i16);
                    int i17 = m1591this21;
                    tm.f3666try = m8559else.getLong(i17);
                    m1591this21 = i17;
                    int i18 = m1591this22;
                    tm.f3649case = m8559else.getLong(i18);
                    int i19 = m1591this23;
                    tm.f3657else = m8559else.getLong(i19);
                    int i20 = m1591this24;
                    tm.f3656do = m8559else.getInt(i20) != 0;
                    int i21 = m1591this25;
                    tm.f3658for = C0688aN.m3126new(m8559else.getInt(i21));
                    tm.f3653do = c0225Ga;
                    arrayList.add(tm);
                    m1591this25 = i21;
                    m1591this13 = i10;
                    m1591this2 = i5;
                    m1591this16 = i11;
                    m1591this18 = i14;
                    m1591this23 = i19;
                    m1591this24 = i20;
                    m1591this22 = i18;
                    m1591this15 = i9;
                    m1591this12 = i8;
                    m1591this3 = i6;
                    m1591this = i4;
                    arrayList2 = arrayList;
                    m1591this11 = i3;
                    m1591this20 = i16;
                    m1591this10 = i12;
                    m1591this19 = i15;
                }
                m8559else.close();
                c4022yA.release();
                ArrayList m2640new = vm.m2640new();
                ArrayList m2639if = vm.m2639if();
                if (arrayList.isEmpty()) {
                    interfaceC3851vG = mo4726catch;
                    jm = mo4727class;
                    xm = mo4730super;
                    i = 0;
                } else {
                    i = 0;
                    AbstractC0614Xq.m2869for().mo2874new(new Throwable[0]);
                    AbstractC0614Xq m2869for = AbstractC0614Xq.m2869for();
                    interfaceC3851vG = mo4726catch;
                    jm = mo4727class;
                    xm = mo4730super;
                    m4759if(jm, xm, interfaceC3851vG, arrayList);
                    m2869for.mo2874new(new Throwable[0]);
                }
                if (!m2640new.isEmpty()) {
                    AbstractC0614Xq.m2869for().mo2874new(new Throwable[i]);
                    AbstractC0614Xq m2869for2 = AbstractC0614Xq.m2869for();
                    m4759if(jm, xm, interfaceC3851vG, m2640new);
                    m2869for2.mo2874new(new Throwable[i]);
                }
                if (!m2639if.isEmpty()) {
                    AbstractC0614Xq.m2869for().mo2874new(new Throwable[i]);
                    AbstractC0614Xq m2869for3 = AbstractC0614Xq.m2869for();
                    m4759if(jm, xm, interfaceC3851vG, m2639if);
                    m2869for3.mo2874new(new Throwable[i]);
                }
                return new ListenableWorker.Cdo.Cfor();
            } catch (Throwable th) {
                th = th;
                m8559else.close();
                c4022yA.release();
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            c4022yA = m8700for;
        }
    }
}
