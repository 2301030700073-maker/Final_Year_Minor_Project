package androidx.work.impl;

import android.content.Context;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.facebook.internal.FacebookRequestErrorClassification;
import com.facebook.internal.ServerProtocol;
import defpackage.C0349Lo;
import defpackage.C0519Tj;
import defpackage.C0556Vc;
import defpackage.C0601Xd;
import defpackage.C3360mx;
import defpackage.C3910wG;
import defpackage.C3963xA;
import defpackage.DG;
import defpackage.InterfaceC0579Wd;
import defpackage.InterfaceC0741bG;
import defpackage.InterfaceC3301lx;
import defpackage.InterfaceC3851vG;
import defpackage.JM;
import defpackage.KM;
import defpackage.MM;
import defpackage.NM;
import defpackage.UM;
import defpackage.VM;
import defpackage.XM;
import defpackage.YM;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;

/* loaded from: classes.dex */
public final class WorkDatabase_Impl extends WorkDatabase {

    /* renamed from: if, reason: not valid java name */
    public static final /* synthetic */ int f8149if = 0;

    /* renamed from: do, reason: not valid java name */
    public volatile KM f8150do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public volatile NM f8151do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public volatile VM f8152do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public volatile C0601Xd f8153do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public volatile YM f8154do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public volatile C3360mx f8155do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public volatile C3910wG f8156do;

    /* renamed from: androidx.work.impl.WorkDatabase_Impl$do, reason: invalid class name */
    public class Cdo extends C3963xA.Cdo {
        public Cdo() {
        }

        @Override // defpackage.C3963xA.Cdo
        /* renamed from: do, reason: not valid java name */
        public final void mo4734do(C0519Tj c0519Tj) {
            c0519Tj.m2282for("CREATE TABLE IF NOT EXISTS `Dependency` (`work_spec_id` TEXT NOT NULL, `prerequisite_id` TEXT NOT NULL, PRIMARY KEY(`work_spec_id`, `prerequisite_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE , FOREIGN KEY(`prerequisite_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
            c0519Tj.m2282for("CREATE INDEX IF NOT EXISTS `index_Dependency_work_spec_id` ON `Dependency` (`work_spec_id`)");
            c0519Tj.m2282for("CREATE INDEX IF NOT EXISTS `index_Dependency_prerequisite_id` ON `Dependency` (`prerequisite_id`)");
            c0519Tj.m2282for("CREATE TABLE IF NOT EXISTS `WorkSpec` (`id` TEXT NOT NULL, `state` INTEGER NOT NULL, `worker_class_name` TEXT NOT NULL, `input_merger_class_name` TEXT, `input` BLOB NOT NULL, `output` BLOB NOT NULL, `initial_delay` INTEGER NOT NULL, `interval_duration` INTEGER NOT NULL, `flex_duration` INTEGER NOT NULL, `run_attempt_count` INTEGER NOT NULL, `backoff_policy` INTEGER NOT NULL, `backoff_delay_duration` INTEGER NOT NULL, `period_start_time` INTEGER NOT NULL, `minimum_retention_duration` INTEGER NOT NULL, `schedule_requested_at` INTEGER NOT NULL, `run_in_foreground` INTEGER NOT NULL, `out_of_quota_policy` INTEGER NOT NULL, `required_network_type` INTEGER, `requires_charging` INTEGER NOT NULL, `requires_device_idle` INTEGER NOT NULL, `requires_battery_not_low` INTEGER NOT NULL, `requires_storage_not_low` INTEGER NOT NULL, `trigger_content_update_delay` INTEGER NOT NULL, `trigger_max_content_delay` INTEGER NOT NULL, `content_uri_triggers` BLOB, PRIMARY KEY(`id`))");
            c0519Tj.m2282for("CREATE INDEX IF NOT EXISTS `index_WorkSpec_schedule_requested_at` ON `WorkSpec` (`schedule_requested_at`)");
            c0519Tj.m2282for("CREATE INDEX IF NOT EXISTS `index_WorkSpec_period_start_time` ON `WorkSpec` (`period_start_time`)");
            c0519Tj.m2282for("CREATE TABLE IF NOT EXISTS `WorkTag` (`tag` TEXT NOT NULL, `work_spec_id` TEXT NOT NULL, PRIMARY KEY(`tag`, `work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
            c0519Tj.m2282for("CREATE INDEX IF NOT EXISTS `index_WorkTag_work_spec_id` ON `WorkTag` (`work_spec_id`)");
            c0519Tj.m2282for("CREATE TABLE IF NOT EXISTS `SystemIdInfo` (`work_spec_id` TEXT NOT NULL, `system_id` INTEGER NOT NULL, PRIMARY KEY(`work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
            c0519Tj.m2282for("CREATE TABLE IF NOT EXISTS `WorkName` (`name` TEXT NOT NULL, `work_spec_id` TEXT NOT NULL, PRIMARY KEY(`name`, `work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
            c0519Tj.m2282for("CREATE INDEX IF NOT EXISTS `index_WorkName_work_spec_id` ON `WorkName` (`work_spec_id`)");
            c0519Tj.m2282for("CREATE TABLE IF NOT EXISTS `WorkProgress` (`work_spec_id` TEXT NOT NULL, `progress` BLOB NOT NULL, PRIMARY KEY(`work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
            c0519Tj.m2282for("CREATE TABLE IF NOT EXISTS `Preference` (`key` TEXT NOT NULL, `long_value` INTEGER, PRIMARY KEY(`key`))");
            c0519Tj.m2282for("CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
            c0519Tj.m2282for("INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, 'c103703e120ae8cc73c9248622f3cd1e')");
        }

        @Override // defpackage.C3963xA.Cdo
        /* renamed from: if, reason: not valid java name */
        public final C3963xA.Cif mo4735if(C0519Tj c0519Tj) {
            HashMap hashMap = new HashMap(2);
            hashMap.put("work_spec_id", new DG.Cdo(1, "work_spec_id", "TEXT", null, true, 1));
            hashMap.put("prerequisite_id", new DG.Cdo(2, "prerequisite_id", "TEXT", null, true, 1));
            HashSet hashSet = new HashSet(2);
            hashSet.add(new DG.Cif("WorkSpec", "CASCADE", "CASCADE", Arrays.asList("work_spec_id"), Arrays.asList("id")));
            hashSet.add(new DG.Cif("WorkSpec", "CASCADE", "CASCADE", Arrays.asList("prerequisite_id"), Arrays.asList("id")));
            HashSet hashSet2 = new HashSet(2);
            hashSet2.add(new DG.Cnew("index_Dependency_work_spec_id", Arrays.asList("work_spec_id"), false));
            hashSet2.add(new DG.Cnew("index_Dependency_prerequisite_id", Arrays.asList("prerequisite_id"), false));
            DG dg = new DG("Dependency", hashMap, hashSet, hashSet2);
            DG m365do = DG.m365do(c0519Tj, "Dependency");
            if (!dg.equals(m365do)) {
                return new C3963xA.Cif("Dependency(androidx.work.impl.model.Dependency).\n Expected:\n" + dg + "\n Found:\n" + m365do, false);
            }
            HashMap hashMap2 = new HashMap(25);
            hashMap2.put("id", new DG.Cdo(1, "id", "TEXT", null, true, 1));
            hashMap2.put(ServerProtocol.DIALOG_PARAM_STATE, new DG.Cdo(0, ServerProtocol.DIALOG_PARAM_STATE, "INTEGER", null, true, 1));
            hashMap2.put("worker_class_name", new DG.Cdo(0, "worker_class_name", "TEXT", null, true, 1));
            hashMap2.put("input_merger_class_name", new DG.Cdo(0, "input_merger_class_name", "TEXT", null, false, 1));
            hashMap2.put("input", new DG.Cdo(0, "input", "BLOB", null, true, 1));
            hashMap2.put("output", new DG.Cdo(0, "output", "BLOB", null, true, 1));
            hashMap2.put("initial_delay", new DG.Cdo(0, "initial_delay", "INTEGER", null, true, 1));
            hashMap2.put("interval_duration", new DG.Cdo(0, "interval_duration", "INTEGER", null, true, 1));
            hashMap2.put("flex_duration", new DG.Cdo(0, "flex_duration", "INTEGER", null, true, 1));
            hashMap2.put("run_attempt_count", new DG.Cdo(0, "run_attempt_count", "INTEGER", null, true, 1));
            hashMap2.put("backoff_policy", new DG.Cdo(0, "backoff_policy", "INTEGER", null, true, 1));
            hashMap2.put("backoff_delay_duration", new DG.Cdo(0, "backoff_delay_duration", "INTEGER", null, true, 1));
            hashMap2.put("period_start_time", new DG.Cdo(0, "period_start_time", "INTEGER", null, true, 1));
            hashMap2.put("minimum_retention_duration", new DG.Cdo(0, "minimum_retention_duration", "INTEGER", null, true, 1));
            hashMap2.put("schedule_requested_at", new DG.Cdo(0, "schedule_requested_at", "INTEGER", null, true, 1));
            hashMap2.put("run_in_foreground", new DG.Cdo(0, "run_in_foreground", "INTEGER", null, true, 1));
            hashMap2.put("out_of_quota_policy", new DG.Cdo(0, "out_of_quota_policy", "INTEGER", null, true, 1));
            hashMap2.put("required_network_type", new DG.Cdo(0, "required_network_type", "INTEGER", null, false, 1));
            hashMap2.put("requires_charging", new DG.Cdo(0, "requires_charging", "INTEGER", null, true, 1));
            hashMap2.put("requires_device_idle", new DG.Cdo(0, "requires_device_idle", "INTEGER", null, true, 1));
            hashMap2.put("requires_battery_not_low", new DG.Cdo(0, "requires_battery_not_low", "INTEGER", null, true, 1));
            hashMap2.put("requires_storage_not_low", new DG.Cdo(0, "requires_storage_not_low", "INTEGER", null, true, 1));
            hashMap2.put("trigger_content_update_delay", new DG.Cdo(0, "trigger_content_update_delay", "INTEGER", null, true, 1));
            hashMap2.put("trigger_max_content_delay", new DG.Cdo(0, "trigger_max_content_delay", "INTEGER", null, true, 1));
            hashMap2.put("content_uri_triggers", new DG.Cdo(0, "content_uri_triggers", "BLOB", null, false, 1));
            HashSet hashSet3 = new HashSet(0);
            HashSet hashSet4 = new HashSet(2);
            hashSet4.add(new DG.Cnew("index_WorkSpec_schedule_requested_at", Arrays.asList("schedule_requested_at"), false));
            hashSet4.add(new DG.Cnew("index_WorkSpec_period_start_time", Arrays.asList("period_start_time"), false));
            DG dg2 = new DG("WorkSpec", hashMap2, hashSet3, hashSet4);
            DG m365do2 = DG.m365do(c0519Tj, "WorkSpec");
            if (!dg2.equals(m365do2)) {
                return new C3963xA.Cif("WorkSpec(androidx.work.impl.model.WorkSpec).\n Expected:\n" + dg2 + "\n Found:\n" + m365do2, false);
            }
            HashMap hashMap3 = new HashMap(2);
            hashMap3.put(ViewHierarchyConstants.TAG_KEY, new DG.Cdo(1, ViewHierarchyConstants.TAG_KEY, "TEXT", null, true, 1));
            hashMap3.put("work_spec_id", new DG.Cdo(2, "work_spec_id", "TEXT", null, true, 1));
            HashSet hashSet5 = new HashSet(1);
            hashSet5.add(new DG.Cif("WorkSpec", "CASCADE", "CASCADE", Arrays.asList("work_spec_id"), Arrays.asList("id")));
            HashSet hashSet6 = new HashSet(1);
            hashSet6.add(new DG.Cnew("index_WorkTag_work_spec_id", Arrays.asList("work_spec_id"), false));
            DG dg3 = new DG("WorkTag", hashMap3, hashSet5, hashSet6);
            DG m365do3 = DG.m365do(c0519Tj, "WorkTag");
            if (!dg3.equals(m365do3)) {
                return new C3963xA.Cif("WorkTag(androidx.work.impl.model.WorkTag).\n Expected:\n" + dg3 + "\n Found:\n" + m365do3, false);
            }
            HashMap hashMap4 = new HashMap(2);
            hashMap4.put("work_spec_id", new DG.Cdo(1, "work_spec_id", "TEXT", null, true, 1));
            hashMap4.put("system_id", new DG.Cdo(0, "system_id", "INTEGER", null, true, 1));
            HashSet hashSet7 = new HashSet(1);
            hashSet7.add(new DG.Cif("WorkSpec", "CASCADE", "CASCADE", Arrays.asList("work_spec_id"), Arrays.asList("id")));
            DG dg4 = new DG("SystemIdInfo", hashMap4, hashSet7, new HashSet(0));
            DG m365do4 = DG.m365do(c0519Tj, "SystemIdInfo");
            if (!dg4.equals(m365do4)) {
                return new C3963xA.Cif("SystemIdInfo(androidx.work.impl.model.SystemIdInfo).\n Expected:\n" + dg4 + "\n Found:\n" + m365do4, false);
            }
            HashMap hashMap5 = new HashMap(2);
            hashMap5.put(FacebookRequestErrorClassification.KEY_NAME, new DG.Cdo(1, FacebookRequestErrorClassification.KEY_NAME, "TEXT", null, true, 1));
            hashMap5.put("work_spec_id", new DG.Cdo(2, "work_spec_id", "TEXT", null, true, 1));
            HashSet hashSet8 = new HashSet(1);
            hashSet8.add(new DG.Cif("WorkSpec", "CASCADE", "CASCADE", Arrays.asList("work_spec_id"), Arrays.asList("id")));
            HashSet hashSet9 = new HashSet(1);
            hashSet9.add(new DG.Cnew("index_WorkName_work_spec_id", Arrays.asList("work_spec_id"), false));
            DG dg5 = new DG("WorkName", hashMap5, hashSet8, hashSet9);
            DG m365do5 = DG.m365do(c0519Tj, "WorkName");
            if (!dg5.equals(m365do5)) {
                return new C3963xA.Cif("WorkName(androidx.work.impl.model.WorkName).\n Expected:\n" + dg5 + "\n Found:\n" + m365do5, false);
            }
            HashMap hashMap6 = new HashMap(2);
            hashMap6.put("work_spec_id", new DG.Cdo(1, "work_spec_id", "TEXT", null, true, 1));
            hashMap6.put("progress", new DG.Cdo(0, "progress", "BLOB", null, true, 1));
            HashSet hashSet10 = new HashSet(1);
            hashSet10.add(new DG.Cif("WorkSpec", "CASCADE", "CASCADE", Arrays.asList("work_spec_id"), Arrays.asList("id")));
            DG dg6 = new DG("WorkProgress", hashMap6, hashSet10, new HashSet(0));
            DG m365do6 = DG.m365do(c0519Tj, "WorkProgress");
            if (!dg6.equals(m365do6)) {
                return new C3963xA.Cif("WorkProgress(androidx.work.impl.model.WorkProgress).\n Expected:\n" + dg6 + "\n Found:\n" + m365do6, false);
            }
            HashMap hashMap7 = new HashMap(2);
            hashMap7.put("key", new DG.Cdo(1, "key", "TEXT", null, true, 1));
            hashMap7.put("long_value", new DG.Cdo(0, "long_value", "INTEGER", null, false, 1));
            DG dg7 = new DG("Preference", hashMap7, new HashSet(0), new HashSet(0));
            DG m365do7 = DG.m365do(c0519Tj, "Preference");
            if (dg7.equals(m365do7)) {
                return new C3963xA.Cif(null, true);
            }
            return new C3963xA.Cif("Preference(androidx.work.impl.model.Preference).\n Expected:\n" + dg7 + "\n Found:\n" + m365do7, false);
        }
    }

    @Override // androidx.work.impl.WorkDatabase
    /* renamed from: break */
    public final InterfaceC3301lx mo4725break() {
        C3360mx c3360mx;
        if (this.f8155do != null) {
            return this.f8155do;
        }
        synchronized (this) {
            if (this.f8155do == null) {
                this.f8155do = new C3360mx(this);
            }
            c3360mx = this.f8155do;
        }
        return c3360mx;
    }

    @Override // androidx.work.impl.WorkDatabase
    /* renamed from: catch */
    public final InterfaceC3851vG mo4726catch() {
        C3910wG c3910wG;
        if (this.f8156do != null) {
            return this.f8156do;
        }
        synchronized (this) {
            if (this.f8156do == null) {
                this.f8156do = new C3910wG(this);
            }
            c3910wG = this.f8156do;
        }
        return c3910wG;
    }

    @Override // androidx.work.impl.WorkDatabase
    /* renamed from: class */
    public final JM mo4727class() {
        KM km;
        if (this.f8150do != null) {
            return this.f8150do;
        }
        synchronized (this) {
            if (this.f8150do == null) {
                this.f8150do = new KM(this);
            }
            km = this.f8150do;
        }
        return km;
    }

    @Override // androidx.work.impl.WorkDatabase
    /* renamed from: const */
    public final MM mo4728const() {
        NM nm;
        if (this.f8151do != null) {
            return this.f8151do;
        }
        synchronized (this) {
            if (this.f8151do == null) {
                this.f8151do = new NM(this);
            }
            nm = this.f8151do;
        }
        return nm;
    }

    @Override // androidx.work.impl.WorkDatabase
    /* renamed from: final */
    public final UM mo4729final() {
        VM vm;
        if (this.f8152do != null) {
            return this.f8152do;
        }
        synchronized (this) {
            if (this.f8152do == null) {
                this.f8152do = new VM(this);
            }
            vm = this.f8152do;
        }
        return vm;
    }

    @Override // defpackage.AbstractC3904wA
    /* renamed from: new, reason: not valid java name */
    public final C0349Lo mo4732new() {
        return new C0349Lo(this, new HashMap(0), new HashMap(0), "Dependency", "WorkSpec", "WorkTag", "SystemIdInfo", "WorkName", "WorkProgress", "Preference");
    }

    @Override // androidx.work.impl.WorkDatabase
    /* renamed from: super */
    public final XM mo4730super() {
        YM ym;
        if (this.f8154do != null) {
            return this.f8154do;
        }
        synchronized (this) {
            if (this.f8154do == null) {
                this.f8154do = new YM(this);
            }
            ym = this.f8154do;
        }
        return ym;
    }

    @Override // androidx.work.impl.WorkDatabase
    /* renamed from: this */
    public final InterfaceC0579Wd mo4731this() {
        C0601Xd c0601Xd;
        if (this.f8153do != null) {
            return this.f8153do;
        }
        synchronized (this) {
            if (this.f8153do == null) {
                this.f8153do = new C0601Xd(this);
            }
            c0601Xd = this.f8153do;
        }
        return c0601Xd;
    }

    @Override // defpackage.AbstractC3904wA
    /* renamed from: try, reason: not valid java name */
    public final InterfaceC0741bG mo4733try(C0556Vc c0556Vc) {
        C3963xA c3963xA = new C3963xA(c0556Vc, new Cdo());
        Context context = c0556Vc.f4152do;
        if (context == null) {
            throw new IllegalArgumentException("Must set a non-null context to create the configuration.");
        }
        return c0556Vc.f4153do.mo2663do(new InterfaceC0741bG.Cif(context, c0556Vc.f4154do, c3963xA, false));
    }
}
