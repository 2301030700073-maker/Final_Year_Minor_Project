package defpackage;

import android.database.Cursor;
import android.database.sqlite.SQLiteStatement;
import com.facebook.internal.ServerProtocol;
import defpackage.TM;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public final class VM implements UM {

    /* renamed from: do, reason: not valid java name */
    public final Ccase f4109do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cdo f4110do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Celse f4111do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cfor f4112do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cgoto f4113do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cif f4114do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cnew f4115do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Ctry f4116do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AbstractC3904wA f4117do;

    /* renamed from: VM$case, reason: invalid class name */
    public class Ccase extends PD {
        public Ccase(AbstractC3904wA abstractC3904wA) {
            super(abstractC3904wA);
        }

        @Override // defpackage.PD
        /* renamed from: if */
        public final String mo1150if() {
            return "UPDATE workspec SET run_attempt_count=0 WHERE id=?";
        }
    }

    /* renamed from: VM$do, reason: invalid class name */
    public class Cdo extends AbstractC2881hg<TM> {
        public Cdo(AbstractC3904wA abstractC3904wA) {
            super(abstractC3904wA);
        }

        @Override // defpackage.PD
        /* renamed from: if */
        public final String mo1150if() {
            return "INSERT OR IGNORE INTO `WorkSpec` (`id`,`state`,`worker_class_name`,`input_merger_class_name`,`input`,`output`,`initial_delay`,`interval_duration`,`flex_duration`,`run_attempt_count`,`backoff_policy`,`backoff_delay_duration`,`period_start_time`,`minimum_retention_duration`,`schedule_requested_at`,`run_in_foreground`,`out_of_quota_policy`,`required_network_type`,`requires_charging`,`requires_device_idle`,`requires_battery_not_low`,`requires_storage_not_low`,`trigger_content_update_delay`,`trigger_max_content_delay`,`content_uri_triggers`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        }

        /* JADX WARN: Can't wrap try/catch for region: R(8:45|46|47|48|(5:49|50|(2:53|51)|54|55)|57|58|59) */
        /* JADX WARN: Code restructure failed: missing block: B:61:0x01b1, code lost:
        
            r0 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:62:0x01c9, code lost:
        
            r0.printStackTrace();
         */
        /* JADX WARN: Removed duplicated region for block: B:96:0x01d2  */
        /* JADX WARN: Removed duplicated region for block: B:98:0x01d8  */
        @Override // defpackage.AbstractC2881hg
        /* renamed from: new */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void mo1151new(defpackage.C0607Xj r17, defpackage.TM r18) {
            /*
                Method dump skipped, instructions count: 530
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: defpackage.VM.Cdo.mo1151new(Xj, java.lang.Object):void");
        }
    }

    /* renamed from: VM$else, reason: invalid class name */
    public class Celse extends PD {
        public Celse(AbstractC3904wA abstractC3904wA) {
            super(abstractC3904wA);
        }

        @Override // defpackage.PD
        /* renamed from: if */
        public final String mo1150if() {
            return "UPDATE workspec SET schedule_requested_at=? WHERE id=?";
        }
    }

    /* renamed from: VM$for, reason: invalid class name */
    public class Cfor extends PD {
        public Cfor(AbstractC3904wA abstractC3904wA) {
            super(abstractC3904wA);
        }

        @Override // defpackage.PD
        /* renamed from: if */
        public final String mo1150if() {
            return "UPDATE workspec SET output=? WHERE id=?";
        }
    }

    /* renamed from: VM$goto, reason: invalid class name */
    public class Cgoto extends PD {
        public Cgoto(AbstractC3904wA abstractC3904wA) {
            super(abstractC3904wA);
        }

        @Override // defpackage.PD
        /* renamed from: if */
        public final String mo1150if() {
            return "UPDATE workspec SET schedule_requested_at=-1 WHERE state NOT IN (2, 3, 5)";
        }
    }

    /* renamed from: VM$if, reason: invalid class name */
    public class Cif extends PD {
        public Cif(AbstractC3904wA abstractC3904wA) {
            super(abstractC3904wA);
        }

        @Override // defpackage.PD
        /* renamed from: if */
        public final String mo1150if() {
            return "DELETE FROM workspec WHERE id=?";
        }
    }

    /* renamed from: VM$new, reason: invalid class name */
    public class Cnew extends PD {
        public Cnew(AbstractC3904wA abstractC3904wA) {
            super(abstractC3904wA);
        }

        @Override // defpackage.PD
        /* renamed from: if */
        public final String mo1150if() {
            return "UPDATE workspec SET period_start_time=? WHERE id=?";
        }
    }

    /* renamed from: VM$try, reason: invalid class name */
    public class Ctry extends PD {
        public Ctry(AbstractC3904wA abstractC3904wA) {
            super(abstractC3904wA);
        }

        @Override // defpackage.PD
        /* renamed from: if */
        public final String mo1150if() {
            return "UPDATE workspec SET run_attempt_count=run_attempt_count+1 WHERE id=?";
        }
    }

    public VM(AbstractC3904wA abstractC3904wA) {
        this.f4117do = abstractC3904wA;
        this.f4110do = new Cdo(abstractC3904wA);
        this.f4114do = new Cif(abstractC3904wA);
        this.f4112do = new Cfor(abstractC3904wA);
        this.f4115do = new Cnew(abstractC3904wA);
        this.f4116do = new Ctry(abstractC3904wA);
        this.f4109do = new Ccase(abstractC3904wA);
        this.f4111do = new Celse(abstractC3904wA);
        this.f4113do = new Cgoto(abstractC3904wA);
        new AtomicBoolean(false);
    }

    /* renamed from: break, reason: not valid java name */
    public final ArrayList m2629break(String str) {
        C4022yA m8700for = C4022yA.m8700for(1, "SELECT id, state FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)");
        if (str == null) {
            m8700for.m8701case(1);
        } else {
            m8700for.m8702goto(1, str);
        }
        AbstractC3904wA abstractC3904wA = this.f4117do;
        abstractC3904wA.m8562if();
        Cursor m8559else = abstractC3904wA.m8559else(m8700for);
        try {
            int m1591this = O2.m1591this(m8559else, "id");
            int m1591this2 = O2.m1591this(m8559else, ServerProtocol.DIALOG_PARAM_STATE);
            ArrayList arrayList = new ArrayList(m8559else.getCount());
            while (m8559else.moveToNext()) {
                TM.Cdo cdo = new TM.Cdo();
                cdo.f3668do = m8559else.getString(m1591this);
                cdo.f3667do = C0688aN.m3127try(m8559else.getInt(m1591this2));
                arrayList.add(cdo);
            }
            return arrayList;
        } finally {
            m8559else.close();
            m8700for.release();
        }
    }

    /* renamed from: case, reason: not valid java name */
    public final CM m2630case(String str) {
        C4022yA m8700for = C4022yA.m8700for(1, "SELECT state FROM workspec WHERE id=?");
        if (str == null) {
            m8700for.m8701case(1);
        } else {
            m8700for.m8702goto(1, str);
        }
        AbstractC3904wA abstractC3904wA = this.f4117do;
        abstractC3904wA.m8562if();
        Cursor m8559else = abstractC3904wA.m8559else(m8700for);
        try {
            return m8559else.moveToFirst() ? C0688aN.m3127try(m8559else.getInt(0)) : null;
        } finally {
            m8559else.close();
            m8700for.release();
        }
    }

    /* renamed from: catch, reason: not valid java name */
    public final int m2631catch(long j, String str) {
        AbstractC3904wA abstractC3904wA = this.f4117do;
        abstractC3904wA.m8562if();
        Celse celse = this.f4111do;
        C0607Xj m1752do = celse.m1752do();
        m1752do.m2762for(1, j);
        if (str == null) {
            m1752do.m2764new(2);
        } else {
            m1752do.m2760case(2, str);
        }
        abstractC3904wA.m8560for();
        try {
            int m2868goto = m1752do.m2868goto();
            abstractC3904wA.m8561goto();
            return m2868goto;
        } finally {
            abstractC3904wA.m8557case();
            celse.m1753for(m1752do);
        }
    }

    /* renamed from: class, reason: not valid java name */
    public final void m2632class(String str, androidx.work.Cif cif) {
        AbstractC3904wA abstractC3904wA = this.f4117do;
        abstractC3904wA.m8562if();
        Cfor cfor = this.f4112do;
        C0607Xj m1752do = cfor.m1752do();
        byte[] m4722for = androidx.work.Cif.m4722for(cif);
        if (m4722for == null) {
            m1752do.m2764new(1);
        } else {
            m1752do.m2761do(1, m4722for);
        }
        if (str == null) {
            m1752do.m2764new(2);
        } else {
            m1752do.m2760case(2, str);
        }
        abstractC3904wA.m8560for();
        try {
            m1752do.m2868goto();
            abstractC3904wA.m8561goto();
        } finally {
            abstractC3904wA.m8557case();
            cfor.m1753for(m1752do);
        }
    }

    /* renamed from: const, reason: not valid java name */
    public final void m2633const(long j, String str) {
        AbstractC3904wA abstractC3904wA = this.f4117do;
        abstractC3904wA.m8562if();
        Cnew cnew = this.f4115do;
        C0607Xj m1752do = cnew.m1752do();
        m1752do.m2762for(1, j);
        if (str == null) {
            m1752do.m2764new(2);
        } else {
            m1752do.m2760case(2, str);
        }
        abstractC3904wA.m8560for();
        try {
            m1752do.m2868goto();
            abstractC3904wA.m8561goto();
        } finally {
            abstractC3904wA.m8557case();
            cnew.m1753for(m1752do);
        }
    }

    /* renamed from: do, reason: not valid java name */
    public final void m2634do(String str) {
        AbstractC3904wA abstractC3904wA = this.f4117do;
        abstractC3904wA.m8562if();
        Cif cif = this.f4114do;
        C0607Xj m1752do = cif.m1752do();
        if (str == null) {
            m1752do.m2764new(1);
        } else {
            m1752do.m2760case(1, str);
        }
        abstractC3904wA.m8560for();
        try {
            m1752do.m2868goto();
            abstractC3904wA.m8561goto();
        } finally {
            abstractC3904wA.m8557case();
            cif.m1753for(m1752do);
        }
    }

    /* renamed from: else, reason: not valid java name */
    public final ArrayList m2635else(String str) {
        C4022yA m8700for = C4022yA.m8700for(1, "SELECT id FROM workspec WHERE state NOT IN (2, 3, 5) AND id IN (SELECT work_spec_id FROM workname WHERE name=?)");
        if (str == null) {
            m8700for.m8701case(1);
        } else {
            m8700for.m8702goto(1, str);
        }
        AbstractC3904wA abstractC3904wA = this.f4117do;
        abstractC3904wA.m8562if();
        Cursor m8559else = abstractC3904wA.m8559else(m8700for);
        try {
            ArrayList arrayList = new ArrayList(m8559else.getCount());
            while (m8559else.moveToNext()) {
                arrayList.add(m8559else.getString(0));
            }
            return arrayList;
        } finally {
            m8559else.close();
            m8700for.release();
        }
    }

    /* renamed from: final, reason: not valid java name */
    public final int m2636final(CM cm, String... strArr) {
        AbstractC3904wA abstractC3904wA = this.f4117do;
        abstractC3904wA.m8562if();
        StringBuilder sb = new StringBuilder("UPDATE workspec SET state=? WHERE id IN (");
        int length = strArr.length;
        for (int i = 0; i < length; i++) {
            sb.append("?");
            if (i < length - 1) {
                sb.append(",");
            }
        }
        sb.append(")");
        String sb2 = sb.toString();
        abstractC3904wA.m8558do();
        abstractC3904wA.m8562if();
        SQLiteStatement compileStatement = ((C0519Tj) abstractC3904wA.f16282do.mo2460else()).f3741do.compileStatement(sb2);
        compileStatement.bindLong(1, C0688aN.m3122case(cm));
        int i2 = 2;
        for (String str : strArr) {
            if (str == null) {
                compileStatement.bindNull(i2);
            } else {
                compileStatement.bindString(i2, str);
            }
            i2++;
        }
        abstractC3904wA.m8560for();
        try {
            int executeUpdateDelete = compileStatement.executeUpdateDelete();
            abstractC3904wA.m8561goto();
            return executeUpdateDelete;
        } finally {
            abstractC3904wA.m8557case();
        }
    }

    /* renamed from: for, reason: not valid java name */
    public final ArrayList m2637for(int i) {
        C4022yA c4022yA;
        C4022yA m8700for = C4022yA.m8700for(1, "SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground`, `WorkSpec`.`out_of_quota_policy` AS `out_of_quota_policy` FROM workspec WHERE state=0 AND schedule_requested_at=-1 ORDER BY period_start_time LIMIT (SELECT MAX(?-COUNT(*), 0) FROM workspec WHERE schedule_requested_at<>-1 AND state NOT IN (2, 3, 5))");
        m8700for.m8703new(1, i);
        AbstractC3904wA abstractC3904wA = this.f4117do;
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
                ArrayList arrayList = new ArrayList(m8559else.getCount());
                while (m8559else.moveToNext()) {
                    String string = m8559else.getString(m1591this9);
                    int i3 = m1591this9;
                    String string2 = m8559else.getString(m1591this11);
                    int i4 = m1591this11;
                    C0225Ga c0225Ga = new C0225Ga();
                    int i5 = m1591this;
                    c0225Ga.f1196do = C0688aN.m3124for(m8559else.getInt(m1591this));
                    c0225Ga.f1198do = m8559else.getInt(m1591this2) != 0;
                    c0225Ga.f1201if = m8559else.getInt(m1591this3) != 0;
                    c0225Ga.f1199for = m8559else.getInt(m1591this4) != 0;
                    c0225Ga.f1202new = m8559else.getInt(m1591this5) != 0;
                    int i6 = m1591this2;
                    int i7 = m1591this3;
                    c0225Ga.f1195do = m8559else.getLong(m1591this6);
                    c0225Ga.f1200if = m8559else.getLong(m1591this7);
                    c0225Ga.f1197do = C0688aN.m3123do(m8559else.getBlob(m1591this8));
                    TM tm = new TM(string, string2);
                    tm.f3652do = C0688aN.m3127try(m8559else.getInt(m1591this10));
                    tm.f3660for = m8559else.getString(m1591this12);
                    tm.f3654do = androidx.work.Cif.m4721do(m8559else.getBlob(m1591this13));
                    int i8 = i2;
                    tm.f3663if = androidx.work.Cif.m4721do(m8559else.getBlob(i8));
                    int i9 = m1591this15;
                    int i10 = m1591this13;
                    tm.f3651do = m8559else.getLong(i9);
                    int i11 = m1591this4;
                    int i12 = m1591this16;
                    tm.f3662if = m8559else.getLong(i12);
                    int i13 = m1591this17;
                    tm.f3659for = m8559else.getLong(i13);
                    int i14 = m1591this18;
                    tm.f3650do = m8559else.getInt(i14);
                    int i15 = m1591this19;
                    tm.f3661if = C0688aN.m3125if(m8559else.getInt(i15));
                    int i16 = m1591this20;
                    tm.f3665new = m8559else.getLong(i16);
                    int i17 = m1591this21;
                    tm.f3666try = m8559else.getLong(i17);
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
                    i2 = i8;
                    m1591this2 = i6;
                    m1591this24 = i20;
                    m1591this9 = i3;
                    m1591this11 = i4;
                    m1591this = i5;
                    m1591this25 = i21;
                    m1591this13 = i10;
                    m1591this15 = i9;
                    m1591this16 = i12;
                    m1591this20 = i16;
                    m1591this21 = i17;
                    m1591this23 = i19;
                    m1591this3 = i7;
                    m1591this22 = i18;
                    m1591this4 = i11;
                    m1591this17 = i13;
                    m1591this18 = i14;
                    m1591this19 = i15;
                }
                m8559else.close();
                c4022yA.release();
                return arrayList;
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

    /* renamed from: goto, reason: not valid java name */
    public final ArrayList m2638goto(String str) {
        C4022yA m8700for = C4022yA.m8700for(1, "SELECT id FROM workspec WHERE state NOT IN (2, 3, 5) AND id IN (SELECT work_spec_id FROM worktag WHERE tag=?)");
        if (str == null) {
            m8700for.m8701case(1);
        } else {
            m8700for.m8702goto(1, str);
        }
        AbstractC3904wA abstractC3904wA = this.f4117do;
        abstractC3904wA.m8562if();
        Cursor m8559else = abstractC3904wA.m8559else(m8700for);
        try {
            ArrayList arrayList = new ArrayList(m8559else.getCount());
            while (m8559else.moveToNext()) {
                arrayList.add(m8559else.getString(0));
            }
            return arrayList;
        } finally {
            m8559else.close();
            m8700for.release();
        }
    }

    /* renamed from: if, reason: not valid java name */
    public final ArrayList m2639if() {
        C4022yA c4022yA;
        C4022yA m8700for = C4022yA.m8700for(1, "SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground`, `WorkSpec`.`out_of_quota_policy` AS `out_of_quota_policy` FROM workspec WHERE state=0 ORDER BY period_start_time LIMIT ?");
        m8700for.m8703new(1, 200);
        AbstractC3904wA abstractC3904wA = this.f4117do;
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
                int i = m1591this14;
                ArrayList arrayList = new ArrayList(m8559else.getCount());
                while (m8559else.moveToNext()) {
                    String string = m8559else.getString(m1591this9);
                    int i2 = m1591this9;
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
                    tm.f3654do = androidx.work.Cif.m4721do(m8559else.getBlob(m1591this13));
                    int i7 = i;
                    tm.f3663if = androidx.work.Cif.m4721do(m8559else.getBlob(i7));
                    int i8 = m1591this13;
                    int i9 = m1591this15;
                    tm.f3651do = m8559else.getLong(i9);
                    int i10 = m1591this4;
                    int i11 = m1591this16;
                    tm.f3662if = m8559else.getLong(i11);
                    int i12 = m1591this17;
                    tm.f3659for = m8559else.getLong(i12);
                    int i13 = m1591this18;
                    tm.f3650do = m8559else.getInt(i13);
                    int i14 = m1591this19;
                    tm.f3661if = C0688aN.m3125if(m8559else.getInt(i14));
                    int i15 = m1591this20;
                    tm.f3665new = m8559else.getLong(i15);
                    int i16 = m1591this21;
                    tm.f3666try = m8559else.getLong(i16);
                    int i17 = m1591this22;
                    tm.f3649case = m8559else.getLong(i17);
                    int i18 = m1591this23;
                    tm.f3657else = m8559else.getLong(i18);
                    int i19 = m1591this24;
                    tm.f3656do = m8559else.getInt(i19) != 0;
                    int i20 = m1591this25;
                    tm.f3658for = C0688aN.m3126new(m8559else.getInt(i20));
                    tm.f3653do = c0225Ga;
                    arrayList.add(tm);
                    i = i7;
                    m1591this2 = i5;
                    m1591this15 = i9;
                    m1591this16 = i11;
                    m1591this20 = i15;
                    m1591this21 = i16;
                    m1591this24 = i19;
                    m1591this11 = i3;
                    m1591this = i4;
                    m1591this25 = i20;
                    m1591this23 = i18;
                    m1591this13 = i8;
                    m1591this9 = i2;
                    m1591this3 = i6;
                    m1591this22 = i17;
                    m1591this4 = i10;
                    m1591this17 = i12;
                    m1591this18 = i13;
                    m1591this19 = i14;
                }
                m8559else.close();
                c4022yA.release();
                return arrayList;
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

    /* renamed from: new, reason: not valid java name */
    public final ArrayList m2640new() {
        C4022yA c4022yA;
        C4022yA m8700for = C4022yA.m8700for(0, "SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground`, `WorkSpec`.`out_of_quota_policy` AS `out_of_quota_policy` FROM workspec WHERE state=1");
        AbstractC3904wA abstractC3904wA = this.f4117do;
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
                int i = m1591this14;
                ArrayList arrayList = new ArrayList(m8559else.getCount());
                while (m8559else.moveToNext()) {
                    String string = m8559else.getString(m1591this9);
                    int i2 = m1591this9;
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
                    tm.f3654do = androidx.work.Cif.m4721do(m8559else.getBlob(m1591this13));
                    int i7 = i;
                    tm.f3663if = androidx.work.Cif.m4721do(m8559else.getBlob(i7));
                    int i8 = m1591this13;
                    int i9 = m1591this15;
                    tm.f3651do = m8559else.getLong(i9);
                    int i10 = m1591this4;
                    int i11 = m1591this16;
                    tm.f3662if = m8559else.getLong(i11);
                    int i12 = m1591this17;
                    tm.f3659for = m8559else.getLong(i12);
                    int i13 = m1591this18;
                    tm.f3650do = m8559else.getInt(i13);
                    int i14 = m1591this19;
                    tm.f3661if = C0688aN.m3125if(m8559else.getInt(i14));
                    int i15 = m1591this20;
                    tm.f3665new = m8559else.getLong(i15);
                    int i16 = m1591this21;
                    tm.f3666try = m8559else.getLong(i16);
                    int i17 = m1591this22;
                    tm.f3649case = m8559else.getLong(i17);
                    int i18 = m1591this23;
                    tm.f3657else = m8559else.getLong(i18);
                    int i19 = m1591this24;
                    tm.f3656do = m8559else.getInt(i19) != 0;
                    int i20 = m1591this25;
                    tm.f3658for = C0688aN.m3126new(m8559else.getInt(i20));
                    tm.f3653do = c0225Ga;
                    arrayList.add(tm);
                    i = i7;
                    m1591this2 = i5;
                    m1591this15 = i9;
                    m1591this16 = i11;
                    m1591this20 = i15;
                    m1591this21 = i16;
                    m1591this24 = i19;
                    m1591this11 = i3;
                    m1591this = i4;
                    m1591this25 = i20;
                    m1591this23 = i18;
                    m1591this13 = i8;
                    m1591this9 = i2;
                    m1591this3 = i6;
                    m1591this22 = i17;
                    m1591this4 = i10;
                    m1591this17 = i12;
                    m1591this18 = i13;
                    m1591this19 = i14;
                }
                m8559else.close();
                c4022yA.release();
                return arrayList;
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

    /* renamed from: this, reason: not valid java name */
    public final TM m2641this(String str) {
        C4022yA c4022yA;
        TM tm;
        C4022yA m8700for = C4022yA.m8700for(1, "SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground`, `WorkSpec`.`out_of_quota_policy` AS `out_of_quota_policy` FROM workspec WHERE id=?");
        if (str == null) {
            m8700for.m8701case(1);
        } else {
            m8700for.m8702goto(1, str);
        }
        AbstractC3904wA abstractC3904wA = this.f4117do;
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
                if (m8559else.moveToFirst()) {
                    String string = m8559else.getString(m1591this9);
                    String string2 = m8559else.getString(m1591this11);
                    C0225Ga c0225Ga = new C0225Ga();
                    c0225Ga.f1196do = C0688aN.m3124for(m8559else.getInt(m1591this));
                    c0225Ga.f1198do = m8559else.getInt(m1591this2) != 0;
                    c0225Ga.f1201if = m8559else.getInt(m1591this3) != 0;
                    c0225Ga.f1199for = m8559else.getInt(m1591this4) != 0;
                    c0225Ga.f1202new = m8559else.getInt(m1591this5) != 0;
                    c0225Ga.f1195do = m8559else.getLong(m1591this6);
                    c0225Ga.f1200if = m8559else.getLong(m1591this7);
                    c0225Ga.f1197do = C0688aN.m3123do(m8559else.getBlob(m1591this8));
                    tm = new TM(string, string2);
                    tm.f3652do = C0688aN.m3127try(m8559else.getInt(m1591this10));
                    tm.f3660for = m8559else.getString(m1591this12);
                    tm.f3654do = androidx.work.Cif.m4721do(m8559else.getBlob(m1591this13));
                    tm.f3663if = androidx.work.Cif.m4721do(m8559else.getBlob(m1591this14));
                    tm.f3651do = m8559else.getLong(m1591this15);
                    tm.f3662if = m8559else.getLong(m1591this16);
                    tm.f3659for = m8559else.getLong(m1591this17);
                    tm.f3650do = m8559else.getInt(m1591this18);
                    tm.f3661if = C0688aN.m3125if(m8559else.getInt(m1591this19));
                    tm.f3665new = m8559else.getLong(m1591this20);
                    tm.f3666try = m8559else.getLong(m1591this21);
                    tm.f3649case = m8559else.getLong(m1591this22);
                    tm.f3657else = m8559else.getLong(m1591this23);
                    tm.f3656do = m8559else.getInt(m1591this24) != 0;
                    tm.f3658for = C0688aN.m3126new(m8559else.getInt(m1591this25));
                    tm.f3653do = c0225Ga;
                } else {
                    tm = null;
                }
                m8559else.close();
                c4022yA.release();
                return tm;
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

    /* renamed from: try, reason: not valid java name */
    public final ArrayList m2642try() {
        C4022yA c4022yA;
        C4022yA m8700for = C4022yA.m8700for(0, "SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground`, `WorkSpec`.`out_of_quota_policy` AS `out_of_quota_policy` FROM workspec WHERE state=0 AND schedule_requested_at<>-1");
        AbstractC3904wA abstractC3904wA = this.f4117do;
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
                int i = m1591this14;
                ArrayList arrayList = new ArrayList(m8559else.getCount());
                while (m8559else.moveToNext()) {
                    String string = m8559else.getString(m1591this9);
                    int i2 = m1591this9;
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
                    tm.f3654do = androidx.work.Cif.m4721do(m8559else.getBlob(m1591this13));
                    int i7 = i;
                    tm.f3663if = androidx.work.Cif.m4721do(m8559else.getBlob(i7));
                    int i8 = m1591this13;
                    int i9 = m1591this15;
                    tm.f3651do = m8559else.getLong(i9);
                    int i10 = m1591this4;
                    int i11 = m1591this16;
                    tm.f3662if = m8559else.getLong(i11);
                    int i12 = m1591this17;
                    tm.f3659for = m8559else.getLong(i12);
                    int i13 = m1591this18;
                    tm.f3650do = m8559else.getInt(i13);
                    int i14 = m1591this19;
                    tm.f3661if = C0688aN.m3125if(m8559else.getInt(i14));
                    int i15 = m1591this20;
                    tm.f3665new = m8559else.getLong(i15);
                    int i16 = m1591this21;
                    tm.f3666try = m8559else.getLong(i16);
                    int i17 = m1591this22;
                    tm.f3649case = m8559else.getLong(i17);
                    int i18 = m1591this23;
                    tm.f3657else = m8559else.getLong(i18);
                    int i19 = m1591this24;
                    tm.f3656do = m8559else.getInt(i19) != 0;
                    int i20 = m1591this25;
                    tm.f3658for = C0688aN.m3126new(m8559else.getInt(i20));
                    tm.f3653do = c0225Ga;
                    arrayList.add(tm);
                    i = i7;
                    m1591this2 = i5;
                    m1591this15 = i9;
                    m1591this16 = i11;
                    m1591this20 = i15;
                    m1591this21 = i16;
                    m1591this24 = i19;
                    m1591this11 = i3;
                    m1591this = i4;
                    m1591this25 = i20;
                    m1591this23 = i18;
                    m1591this13 = i8;
                    m1591this9 = i2;
                    m1591this3 = i6;
                    m1591this22 = i17;
                    m1591this4 = i10;
                    m1591this17 = i12;
                    m1591this18 = i13;
                    m1591this19 = i14;
                }
                m8559else.close();
                c4022yA.release();
                return arrayList;
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
