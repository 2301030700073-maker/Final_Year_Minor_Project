package defpackage;

import android.content.Context;
import android.content.Intent;
import androidx.work.impl.background.systemalarm.Cdo;
import androidx.work.impl.background.systemalarm.SystemAlarmService;

/* renamed from: pG, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3498pG implements InterfaceC3846vB {

    /* renamed from: do, reason: not valid java name */
    public final Context f14903do;

    static {
        AbstractC0614Xq.m2870try("SystemAlarmScheduler");
    }

    public C3498pG(Context context) {
        this.f14903do = context.getApplicationContext();
    }

    @Override // defpackage.InterfaceC3846vB
    /* renamed from: case */
    public final void mo1455case(TM... tmArr) {
        for (TM tm : tmArr) {
            AbstractC0614Xq m2869for = AbstractC0614Xq.m2869for();
            String.format("Scheduling work with workSpecId %s", tm.f3655do);
            m2869for.mo2872do(new Throwable[0]);
            String str = tm.f3655do;
            Context context = this.f14903do;
            context.startService(Cdo.m4739if(context, str));
        }
    }

    @Override // defpackage.InterfaceC3846vB
    /* renamed from: if */
    public final boolean mo1457if() {
        return true;
    }

    @Override // defpackage.InterfaceC3846vB
    /* renamed from: try */
    public final void mo1459try(String str) {
        int i = Cdo.f8165for;
        Context context = this.f14903do;
        Intent intent = new Intent(context, (Class<?>) SystemAlarmService.class);
        intent.setAction("ACTION_STOP_WORK");
        intent.putExtra("KEY_WORKSPEC_ID", str);
        context.startService(intent);
    }
}
