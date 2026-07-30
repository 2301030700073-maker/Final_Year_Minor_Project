package androidx.work.impl.background.systemalarm;

import android.content.Context;
import android.content.Intent;
import android.os.PowerManager;
import androidx.work.impl.background.systemalarm.Cnew;
import defpackage.AbstractC0614Xq;
import defpackage.C3798uM;
import defpackage.InterfaceC0231Gg;
import defpackage.InterfaceC3739tM;
import defpackage.LL;
import defpackage.TM;
import defpackage.VM;
import defpackage.ZM;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* renamed from: androidx.work.impl.background.systemalarm.for, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cfor implements InterfaceC3739tM, InterfaceC0231Gg, ZM.Cif {

    /* renamed from: break, reason: not valid java name */
    public final String f8169break;

    /* renamed from: do, reason: not valid java name */
    public final Context f8170do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public PowerManager.WakeLock f8171do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cnew f8172do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C3798uM f8174do;

    /* renamed from: for, reason: not valid java name */
    public final int f8176for;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f8175do = false;

    /* renamed from: new, reason: not valid java name */
    public int f8177new = 0;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Object f8173do = new Object();

    static {
        AbstractC0614Xq.m2870try("DelayMetCommandHandler");
    }

    public Cfor(Context context, int i, String str, Cnew cnew) {
        this.f8170do = context;
        this.f8176for = i;
        this.f8172do = cnew;
        this.f8169break = str;
        this.f8174do = new C3798uM(context, cnew.f8184do, this);
    }

    /* renamed from: case, reason: not valid java name */
    public final void m4742case() {
        String str = this.f8169break;
        this.f8171do = LL.m1324do(this.f8170do, String.format("%s (%s)", str, Integer.valueOf(this.f8176for)));
        AbstractC0614Xq m2869for = AbstractC0614Xq.m2869for();
        String.format("Acquiring wakelock %s for WorkSpec %s", this.f8171do, str);
        m2869for.mo2872do(new Throwable[0]);
        this.f8171do.acquire();
        TM m2641this = ((VM) this.f8172do.f8183do.f1178do.mo4729final()).m2641this(str);
        if (m2641this == null) {
            m4743else();
            return;
        }
        boolean m2243if = m2641this.m2243if();
        this.f8175do = m2243if;
        if (m2243if) {
            this.f8174do.m8385for(Collections.singletonList(m2641this));
            return;
        }
        AbstractC0614Xq m2869for2 = AbstractC0614Xq.m2869for();
        String.format("No constraints for %s", str);
        m2869for2.mo2872do(new Throwable[0]);
        mo1456do(Collections.singletonList(str));
    }

    @Override // defpackage.InterfaceC3739tM
    /* renamed from: do */
    public final void mo1456do(List<String> list) {
        if (list.contains(this.f8169break)) {
            synchronized (this.f8173do) {
                if (this.f8177new == 0) {
                    this.f8177new = 1;
                    AbstractC0614Xq m2869for = AbstractC0614Xq.m2869for();
                    String.format("onAllConstraintsMet for %s", this.f8169break);
                    m2869for.mo2872do(new Throwable[0]);
                    if (this.f8172do.f8185do.m1367goto(this.f8169break, null)) {
                        this.f8172do.f8186do.m2992do(this.f8169break, this);
                    } else {
                        m4744try();
                    }
                } else {
                    AbstractC0614Xq m2869for2 = AbstractC0614Xq.m2869for();
                    String.format("Already started work for %s", this.f8169break);
                    m2869for2.mo2872do(new Throwable[0]);
                }
            }
        }
    }

    /* renamed from: else, reason: not valid java name */
    public final void m4743else() {
        synchronized (this.f8173do) {
            if (this.f8177new < 2) {
                this.f8177new = 2;
                AbstractC0614Xq m2869for = AbstractC0614Xq.m2869for();
                String.format("Stopping work for WorkSpec %s", this.f8169break);
                m2869for.mo2872do(new Throwable[0]);
                Context context = this.f8170do;
                String str = this.f8169break;
                Intent intent = new Intent(context, (Class<?>) SystemAlarmService.class);
                intent.setAction("ACTION_STOP_WORK");
                intent.putExtra("KEY_WORKSPEC_ID", str);
                Cnew cnew = this.f8172do;
                cnew.m4745case(new Cnew.Cif(this.f8176for, intent, cnew));
                if (this.f8172do.f8185do.m1370try(this.f8169break)) {
                    AbstractC0614Xq m2869for2 = AbstractC0614Xq.m2869for();
                    String.format("WorkSpec %s needs to be rescheduled", this.f8169break);
                    m2869for2.mo2872do(new Throwable[0]);
                    Intent m4739if = Cdo.m4739if(this.f8170do, this.f8169break);
                    Cnew cnew2 = this.f8172do;
                    cnew2.m4745case(new Cnew.Cif(this.f8176for, m4739if, cnew2));
                } else {
                    AbstractC0614Xq m2869for3 = AbstractC0614Xq.m2869for();
                    String.format("Processor does not have WorkSpec %s. No need to reschedule ", this.f8169break);
                    m2869for3.mo2872do(new Throwable[0]);
                }
            } else {
                AbstractC0614Xq m2869for4 = AbstractC0614Xq.m2869for();
                String.format("Already stopped work for %s", this.f8169break);
                m2869for4.mo2872do(new Throwable[0]);
            }
        }
    }

    @Override // defpackage.InterfaceC0231Gg
    /* renamed from: for */
    public final void mo743for(String str, boolean z) {
        AbstractC0614Xq m2869for = AbstractC0614Xq.m2869for();
        String.format("onExecuted %s, %s", str, Boolean.valueOf(z));
        m2869for.mo2872do(new Throwable[0]);
        m4744try();
        int i = this.f8176for;
        Cnew cnew = this.f8172do;
        Context context = this.f8170do;
        if (z) {
            cnew.m4745case(new Cnew.Cif(i, Cdo.m4739if(context, this.f8169break), cnew));
        }
        if (this.f8175do) {
            Intent intent = new Intent(context, (Class<?>) SystemAlarmService.class);
            intent.setAction("ACTION_CONSTRAINTS_CHANGED");
            cnew.m4745case(new Cnew.Cif(i, intent, cnew));
        }
    }

    @Override // defpackage.ZM.Cif
    /* renamed from: if */
    public final void mo2994if(String str) {
        AbstractC0614Xq m2869for = AbstractC0614Xq.m2869for();
        String.format("Exceeded time limits on execution for %s", str);
        m2869for.mo2872do(new Throwable[0]);
        m4743else();
    }

    @Override // defpackage.InterfaceC3739tM
    /* renamed from: new */
    public final void mo1458new(ArrayList arrayList) {
        m4743else();
    }

    /* renamed from: try, reason: not valid java name */
    public final void m4744try() {
        synchronized (this.f8173do) {
            this.f8174do.m8387new();
            this.f8172do.f8186do.m2993if(this.f8169break);
            PowerManager.WakeLock wakeLock = this.f8171do;
            if (wakeLock != null && wakeLock.isHeld()) {
                AbstractC0614Xq m2869for = AbstractC0614Xq.m2869for();
                String.format("Releasing wakelock %s for WorkSpec %s", this.f8171do, this.f8169break);
                m2869for.mo2872do(new Throwable[0]);
                this.f8171do.release();
            }
        }
    }
}
