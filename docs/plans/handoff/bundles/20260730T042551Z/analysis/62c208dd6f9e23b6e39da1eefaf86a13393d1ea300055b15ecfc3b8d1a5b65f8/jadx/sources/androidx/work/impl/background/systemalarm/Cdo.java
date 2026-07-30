package androidx.work.impl.background.systemalarm;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.background.systemalarm.Cnew;
import defpackage.AbstractC0614Xq;
import defpackage.C0225Ga;
import defpackage.C3776u0;
import defpackage.C3792uG;
import defpackage.C3798uM;
import defpackage.C3910wG;
import defpackage.EnumC0201Eu;
import defpackage.GM;
import defpackage.InterfaceC0231Gg;
import defpackage.TM;
import defpackage.VM;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

/* renamed from: androidx.work.impl.background.systemalarm.do, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cdo implements InterfaceC0231Gg {

    /* renamed from: for, reason: not valid java name */
    public static final /* synthetic */ int f8165for = 0;

    /* renamed from: do, reason: not valid java name */
    public final Context f8166do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final HashMap f8168do = new HashMap();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Object f8167do = new Object();

    static {
        AbstractC0614Xq.m2870try("CommandHandler");
    }

    public Cdo(Context context) {
        this.f8166do = context;
    }

    /* renamed from: do, reason: not valid java name */
    public static Intent m4738do(Context context, String str) {
        Intent intent = new Intent(context, (Class<?>) SystemAlarmService.class);
        intent.setAction("ACTION_DELAY_MET");
        intent.putExtra("KEY_WORKSPEC_ID", str);
        return intent;
    }

    /* renamed from: if, reason: not valid java name */
    public static Intent m4739if(Context context, String str) {
        Intent intent = new Intent(context, (Class<?>) SystemAlarmService.class);
        intent.setAction("ACTION_SCHEDULE_WORK");
        intent.putExtra("KEY_WORKSPEC_ID", str);
        return intent;
    }

    @Override // defpackage.InterfaceC0231Gg
    /* renamed from: for */
    public final void mo743for(String str, boolean z) {
        synchronized (this.f8167do) {
            InterfaceC0231Gg interfaceC0231Gg = (InterfaceC0231Gg) this.f8168do.remove(str);
            if (interfaceC0231Gg != null) {
                interfaceC0231Gg.mo743for(str, z);
            }
        }
    }

    /* renamed from: new, reason: not valid java name */
    public final boolean m4740new() {
        boolean z;
        synchronized (this.f8167do) {
            z = !this.f8168do.isEmpty();
        }
        return z;
    }

    /* renamed from: try, reason: not valid java name */
    public final void m4741try(int i, Intent intent, Cnew cnew) {
        String action = intent.getAction();
        if ("ACTION_CONSTRAINTS_CHANGED".equals(action)) {
            AbstractC0614Xq m2869for = AbstractC0614Xq.m2869for();
            String.format("Handling constraints changed %s", intent);
            m2869for.mo2872do(new Throwable[0]);
            Cif cif = new Cif(this.f8166do, i, cnew);
            ArrayList m2642try = ((VM) cnew.f8183do.f1178do.mo4729final()).m2642try();
            int i2 = ConstraintProxy.f8158do;
            Iterator it = m2642try.iterator();
            boolean z = false;
            boolean z2 = false;
            boolean z3 = false;
            boolean z4 = false;
            while (it.hasNext()) {
                C0225Ga c0225Ga = ((TM) it.next()).f3653do;
                z |= c0225Ga.f1199for;
                z2 |= c0225Ga.f1198do;
                z3 |= c0225Ga.f1202new;
                z4 |= c0225Ga.f1196do != EnumC0201Eu.NOT_REQUIRED;
                if (z && z2 && z3 && z4) {
                    break;
                }
            }
            int i3 = ConstraintProxyUpdateReceiver.f8159do;
            Intent intent2 = new Intent("androidx.work.impl.background.systemalarm.UpdateProxies");
            Context context = cif.f8180do;
            intent2.setComponent(new ComponentName(context, (Class<?>) ConstraintProxyUpdateReceiver.class));
            intent2.putExtra("KEY_BATTERY_NOT_LOW_PROXY_ENABLED", z).putExtra("KEY_BATTERY_CHARGING_PROXY_ENABLED", z2).putExtra("KEY_STORAGE_NOT_LOW_PROXY_ENABLED", z3).putExtra("KEY_NETWORK_STATE_PROXY_ENABLED", z4);
            context.sendBroadcast(intent2);
            C3798uM c3798uM = cif.f8181do;
            c3798uM.m8385for(m2642try);
            ArrayList arrayList = new ArrayList(m2642try.size());
            long currentTimeMillis = System.currentTimeMillis();
            Iterator it2 = m2642try.iterator();
            while (it2.hasNext()) {
                TM tm = (TM) it2.next();
                String str = tm.f3655do;
                if (currentTimeMillis >= tm.m2241do() && (!tm.m2243if() || c3798uM.m8384do(str))) {
                    arrayList.add(tm);
                }
            }
            Iterator it3 = arrayList.iterator();
            while (it3.hasNext()) {
                String str2 = ((TM) it3.next()).f3655do;
                Intent m4738do = m4738do(context, str2);
                AbstractC0614Xq m2869for2 = AbstractC0614Xq.m2869for();
                String.format("Creating a delay_met command for workSpec with id (%s)", str2);
                int i4 = Cif.f8178if;
                m2869for2.mo2872do(new Throwable[0]);
                cnew.m4745case(new Cnew.Cif(cif.f8179do, m4738do, cnew));
            }
            c3798uM.m8387new();
            return;
        }
        if ("ACTION_RESCHEDULE".equals(action)) {
            AbstractC0614Xq m2869for3 = AbstractC0614Xq.m2869for();
            String.format("Handling reschedule %s, %s", intent, Integer.valueOf(i));
            m2869for3.mo2872do(new Throwable[0]);
            cnew.f8183do.m735goto();
            return;
        }
        Bundle extras = intent.getExtras();
        if (!((extras == null || extras.isEmpty() || extras.get(new String[]{"KEY_WORKSPEC_ID"}[0]) == null) ? false : true)) {
            AbstractC0614Xq m2869for4 = AbstractC0614Xq.m2869for();
            String.format("Invalid request for %s, requires %s.", action, "KEY_WORKSPEC_ID");
            m2869for4.mo2873if(new Throwable[0]);
            return;
        }
        if ("ACTION_SCHEDULE_WORK".equals(action)) {
            String string = intent.getExtras().getString("KEY_WORKSPEC_ID");
            AbstractC0614Xq m2869for5 = AbstractC0614Xq.m2869for();
            String.format("Handling schedule work for %s", string);
            m2869for5.mo2872do(new Throwable[0]);
            WorkDatabase workDatabase = cnew.f8183do.f1178do;
            workDatabase.m8560for();
            try {
                TM m2641this = ((VM) workDatabase.mo4729final()).m2641this(string);
                if (m2641this == null) {
                    AbstractC0614Xq.m2869for().mo2871case(new Throwable[0]);
                } else if (m2641this.f3652do.m263do()) {
                    AbstractC0614Xq.m2869for().mo2871case(new Throwable[0]);
                } else {
                    long m2241do = m2641this.m2241do();
                    boolean m2243if = m2641this.m2243if();
                    Context context2 = this.f8166do;
                    GM gm = cnew.f8183do;
                    if (m2243if) {
                        AbstractC0614Xq m2869for6 = AbstractC0614Xq.m2869for();
                        String.format("Opportunistically setting an alarm for %s at %s", string, Long.valueOf(m2241do));
                        m2869for6.mo2872do(new Throwable[0]);
                        C3776u0.m8371if(context2, gm, string, m2241do);
                        Intent intent3 = new Intent(context2, (Class<?>) SystemAlarmService.class);
                        intent3.setAction("ACTION_CONSTRAINTS_CHANGED");
                        cnew.m4745case(new Cnew.Cif(i, intent3, cnew));
                    } else {
                        AbstractC0614Xq m2869for7 = AbstractC0614Xq.m2869for();
                        String.format("Setting up Alarms for %s at %s", string, Long.valueOf(m2241do));
                        m2869for7.mo2872do(new Throwable[0]);
                        C3776u0.m8371if(context2, gm, string, m2241do);
                    }
                    workDatabase.m8561goto();
                }
                return;
            } finally {
                workDatabase.m8557case();
            }
        }
        if ("ACTION_DELAY_MET".equals(action)) {
            Bundle extras2 = intent.getExtras();
            synchronized (this.f8167do) {
                String string2 = extras2.getString("KEY_WORKSPEC_ID");
                AbstractC0614Xq m2869for8 = AbstractC0614Xq.m2869for();
                String.format("Handing delay met for %s", string2);
                m2869for8.mo2872do(new Throwable[0]);
                if (this.f8168do.containsKey(string2)) {
                    AbstractC0614Xq m2869for9 = AbstractC0614Xq.m2869for();
                    String.format("WorkSpec %s is already being handled for ACTION_DELAY_MET", string2);
                    m2869for9.mo2872do(new Throwable[0]);
                } else {
                    Cfor cfor = new Cfor(this.f8166do, i, string2, cnew);
                    this.f8168do.put(string2, cfor);
                    cfor.m4742case();
                }
            }
            return;
        }
        if (!"ACTION_STOP_WORK".equals(action)) {
            if (!"ACTION_EXECUTION_COMPLETED".equals(action)) {
                AbstractC0614Xq m2869for10 = AbstractC0614Xq.m2869for();
                String.format("Ignoring intent %s", intent);
                m2869for10.mo2871case(new Throwable[0]);
                return;
            }
            Bundle extras3 = intent.getExtras();
            String string3 = extras3.getString("KEY_WORKSPEC_ID");
            boolean z5 = extras3.getBoolean("KEY_NEEDS_RESCHEDULE");
            AbstractC0614Xq m2869for11 = AbstractC0614Xq.m2869for();
            String.format("Handling onExecutionCompleted %s, %s", intent, Integer.valueOf(i));
            m2869for11.mo2872do(new Throwable[0]);
            mo743for(string3, z5);
            return;
        }
        String string4 = intent.getExtras().getString("KEY_WORKSPEC_ID");
        AbstractC0614Xq m2869for12 = AbstractC0614Xq.m2869for();
        String.format("Handing stopWork work for %s", string4);
        m2869for12.mo2872do(new Throwable[0]);
        cnew.f8183do.m732break(string4);
        int i5 = C3776u0.f15844do;
        C3910wG c3910wG = (C3910wG) cnew.f8183do.f1178do.mo4726catch();
        C3792uG m8566do = c3910wG.m8566do(string4);
        if (m8566do != null) {
            C3776u0.m8369do(this.f8166do, m8566do.f15871do, string4);
            AbstractC0614Xq m2869for13 = AbstractC0614Xq.m2869for();
            String.format("Removing SystemIdInfo for workSpecId (%s)", string4);
            m2869for13.mo2872do(new Throwable[0]);
            c3910wG.m8567if(string4);
        }
        cnew.mo743for(string4, false);
    }
}
