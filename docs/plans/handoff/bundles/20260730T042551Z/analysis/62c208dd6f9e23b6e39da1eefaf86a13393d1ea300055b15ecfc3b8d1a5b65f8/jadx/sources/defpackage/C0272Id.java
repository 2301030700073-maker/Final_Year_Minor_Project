package defpackage;

import defpackage.InterfaceC0118Bd;
import defpackage.ScheduledFutureC0425Pd;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* renamed from: Id, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final /* synthetic */ class C0272Id implements ScheduledFutureC0425Pd.Cfor, InterfaceC0118Bd.Cdo {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ long f1543do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ Object f1544do;

    /* renamed from: for, reason: not valid java name */
    public final /* synthetic */ Object f1545for;

    /* renamed from: if, reason: not valid java name */
    public final /* synthetic */ Object f1546if;

    public /* synthetic */ C0272Id(Object obj, Object obj2, long j, Object obj3) {
        this.f1544do = obj;
        this.f1546if = obj2;
        this.f1543do = j;
        this.f1545for = obj3;
    }

    @Override // defpackage.ScheduledFutureC0425Pd.Cfor
    /* renamed from: do */
    public final ScheduledFuture mo855do(ScheduledFutureC0425Pd.Cdo cdo) {
        ScheduledExecutorServiceC0403Od scheduledExecutorServiceC0403Od = (ScheduledExecutorServiceC0403Od) this.f1544do;
        Runnable runnable = (Runnable) this.f1546if;
        TimeUnit timeUnit = (TimeUnit) this.f1545for;
        scheduledExecutorServiceC0403Od.getClass();
        return scheduledExecutorServiceC0403Od.f2657do.schedule(new RunnableC0718au(scheduledExecutorServiceC0403Od, runnable, cdo, 1), this.f1543do, timeUnit);
    }

    @Override // defpackage.InterfaceC0118Bd.Cdo
    /* renamed from: new */
    public final void mo192new(InterfaceC3655ry interfaceC3655ry) {
        ((InterfaceC0467Rb) interfaceC3655ry.get()).mo2057for((String) this.f1544do, (String) this.f1546if, this.f1543do, (AbstractC3261lF) this.f1545for);
    }
}
