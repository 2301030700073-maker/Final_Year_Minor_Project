package defpackage;

import androidx.work.impl.WorkDatabase;
import defpackage.InterfaceC2603cw;
import java.util.Iterator;
import java.util.LinkedList;

/* loaded from: classes.dex */
public abstract class Q6 implements Runnable {

    /* renamed from: do, reason: not valid java name */
    public final C2661dw f2867do = new C2661dw();

    /* renamed from: do, reason: not valid java name */
    public static void m1829do(GM gm, String str) {
        WorkDatabase workDatabase = gm.f1178do;
        UM mo4729final = workDatabase.mo4729final();
        InterfaceC0579Wd mo4731this = workDatabase.mo4731this();
        LinkedList linkedList = new LinkedList();
        linkedList.add(str);
        while (true) {
            if (linkedList.isEmpty()) {
                break;
            }
            String str2 = (String) linkedList.remove();
            VM vm = (VM) mo4729final;
            CM m2630case = vm.m2630case(str2);
            if (m2630case != CM.SUCCEEDED && m2630case != CM.FAILED) {
                vm.m2636final(CM.CANCELLED, str2);
            }
            linkedList.addAll(((C0601Xd) mo4731this).m2840do(str2));
        }
        Lx lx = gm.f1174do;
        synchronized (lx.f2056do) {
            AbstractC0614Xq m2869for = AbstractC0614Xq.m2869for();
            int i = Lx.f2050for;
            String.format("Processor cancelling %s", str);
            m2869for.mo2872do(new Throwable[0]);
            lx.f2059do.add(str);
            RunnableC2748fN runnableC2748fN = (RunnableC2748fN) lx.f2058do.remove(str);
            boolean z = runnableC2748fN != null;
            if (runnableC2748fN == null) {
                runnableC2748fN = (RunnableC2748fN) lx.f2061if.remove(str);
            }
            Lx.m1361if(str, runnableC2748fN);
            if (z) {
                lx.m1369this();
            }
        }
        Iterator<InterfaceC3846vB> it = gm.f1179do.iterator();
        while (it.hasNext()) {
            it.next().mo1459try(str);
        }
    }

    /* renamed from: if */
    public abstract void mo1493if();

    @Override // java.lang.Runnable
    public final void run() {
        C2661dw c2661dw = this.f2867do;
        try {
            mo1493if();
            c2661dw.m6478do(InterfaceC2603cw.f12405do);
        } catch (Throwable th) {
            c2661dw.m6478do(new InterfaceC2603cw.Cdo.C0083do(th));
        }
    }
}
