package defpackage;

import java.io.File;
import java.io.IOException;
import java.util.concurrent.Callable;

/* renamed from: Ib, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class CallableC0270Ib implements Callable<FG<Void>> {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ long f1531do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ C0357Mb f1532do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ Thread f1533do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ Throwable f1534do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ InterfaceC3200kD f1535do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ boolean f1536do = false;

    public CallableC0270Ib(C0357Mb c0357Mb, long j, Throwable th, Thread thread, InterfaceC3200kD interfaceC3200kD) {
        this.f1532do = c0357Mb;
        this.f1531do = j;
        this.f1534do = th;
        this.f1533do = thread;
        this.f1535do = interfaceC3200kD;
    }

    @Override // java.util.concurrent.Callable
    public final FG<Void> call() {
        C0495Sh c0495Sh;
        String str;
        long j = this.f1531do;
        long j2 = j / 1000;
        C0357Mb c0357Mb = this.f1532do;
        String m1442new = c0357Mb.m1442new();
        if (m1442new == null) {
            return LG.m1320try(null);
        }
        C2739fE c2739fE = c0357Mb.f2206do;
        c2739fE.getClass();
        try {
            C0495Sh c0495Sh2 = (C0495Sh) c2739fE.f12863do;
            c0495Sh2.getClass();
            new File(c0495Sh2.f3538if, c2739fE.f12862break).createNewFile();
        } catch (IOException unused) {
        }
        c0357Mb.f2199do.m1644try(this.f1534do, this.f1533do, m1442new, "crash", j2, true);
        try {
            c0495Sh = c0357Mb.f2202do;
            str = ".ae" + j;
            c0495Sh.getClass();
        } catch (IOException unused2) {
        }
        if (!new File(c0495Sh.f3538if, str).createNewFile()) {
            throw new IOException("Create new file failed.");
        }
        InterfaceC3200kD interfaceC3200kD = this.f1535do;
        c0357Mb.m1441if(false, interfaceC3200kD, false);
        c0357Mb.m1440for(new C3605r6().f15212do, Boolean.valueOf(this.f1536do));
        return !c0357Mb.f2197do.m958do() ? LG.m1320try(null) : ((C2856hD) interfaceC3200kD).f13266if.get().f1160do.mo600import(c0357Mb.f2207do.f13734do, new C0248Hb(this, m1442new));
    }
}
