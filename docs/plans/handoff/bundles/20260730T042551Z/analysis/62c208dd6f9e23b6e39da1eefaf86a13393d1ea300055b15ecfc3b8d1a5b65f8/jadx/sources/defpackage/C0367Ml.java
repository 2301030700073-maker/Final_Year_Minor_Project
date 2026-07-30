package defpackage;

import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.text.TextUtils;
import androidx.work.Cdo;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

/* renamed from: Ml, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0367Ml implements InterfaceC3846vB, InterfaceC3739tM, InterfaceC0231Gg {

    /* renamed from: do, reason: not valid java name */
    public final GM f2230do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C0228Gd f2231do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Context f2232do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Boolean f2233do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C3798uM f2236do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f2237do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final HashSet f2235do = new HashSet();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Object f2234do = new Object();

    static {
        AbstractC0614Xq.m2870try("GreedyScheduler");
    }

    public C0367Ml(Context context, Cdo cdo, HM hm, GM gm) {
        this.f2232do = context;
        this.f2230do = gm;
        this.f2236do = new C3798uM(context, hm, this);
        this.f2231do = new C0228Gd(this, cdo.f8140do);
    }

    @Override // defpackage.InterfaceC3846vB
    /* renamed from: case, reason: not valid java name */
    public final void mo1455case(TM... tmArr) {
        if (this.f2233do == null) {
            this.f2233do = Boolean.valueOf(Kx.m1228do(this.f2232do, this.f2230do.f1177do));
        }
        if (!this.f2233do.booleanValue()) {
            AbstractC0614Xq.m2869for().mo2874new(new Throwable[0]);
            return;
        }
        if (!this.f2237do) {
            this.f2230do.f1174do.m1365do(this);
            this.f2237do = true;
        }
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        for (TM tm : tmArr) {
            long m2241do = tm.m2241do();
            long currentTimeMillis = System.currentTimeMillis();
            if (tm.f3652do == CM.ENQUEUED) {
                if (currentTimeMillis < m2241do) {
                    C0228Gd c0228Gd = this.f2231do;
                    if (c0228Gd != null) {
                        HashMap hashMap = c0228Gd.f1214do;
                        Runnable runnable = (Runnable) hashMap.remove(tm.f3655do);
                        C3576qd c3576qd = c0228Gd.f1215do;
                        if (runnable != null) {
                            ((Handler) c3576qd.f15141do).removeCallbacks(runnable);
                        }
                        RunnableC0206Fd runnableC0206Fd = new RunnableC0206Fd(c0228Gd, tm);
                        hashMap.put(tm.f3655do, runnableC0206Fd);
                        ((Handler) c3576qd.f15141do).postDelayed(runnableC0206Fd, tm.m2241do() - System.currentTimeMillis());
                    }
                } else if (tm.m2243if()) {
                    int i = Build.VERSION.SDK_INT;
                    if (i < 23 || !tm.f3653do.f1201if) {
                        if (i >= 24) {
                            if (tm.f3653do.f1197do.f2650do.size() > 0) {
                                AbstractC0614Xq m2869for = AbstractC0614Xq.m2869for();
                                String.format("Ignoring WorkSpec %s, Requires ContentUri triggers.", tm);
                                m2869for.mo2872do(new Throwable[0]);
                            }
                        }
                        hashSet.add(tm);
                        hashSet2.add(tm.f3655do);
                    } else {
                        AbstractC0614Xq m2869for2 = AbstractC0614Xq.m2869for();
                        String.format("Ignoring WorkSpec %s, Requires device idle.", tm);
                        m2869for2.mo2872do(new Throwable[0]);
                    }
                } else {
                    AbstractC0614Xq m2869for3 = AbstractC0614Xq.m2869for();
                    String.format("Starting work for %s", tm.f3655do);
                    m2869for3.mo2872do(new Throwable[0]);
                    this.f2230do.m736this(tm.f3655do, null);
                }
            }
        }
        synchronized (this.f2234do) {
            if (!hashSet.isEmpty()) {
                AbstractC0614Xq m2869for4 = AbstractC0614Xq.m2869for();
                String.format("Starting tracking for [%s]", TextUtils.join(",", hashSet2));
                m2869for4.mo2872do(new Throwable[0]);
                this.f2235do.addAll(hashSet);
                this.f2236do.m8385for(this.f2235do);
            }
        }
    }

    @Override // defpackage.InterfaceC3739tM
    /* renamed from: do, reason: not valid java name */
    public final void mo1456do(List<String> list) {
        Iterator it = ((ArrayList) list).iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            AbstractC0614Xq m2869for = AbstractC0614Xq.m2869for();
            String.format("Constraints met: Scheduling work ID %s", str);
            m2869for.mo2872do(new Throwable[0]);
            this.f2230do.m736this(str, null);
        }
    }

    @Override // defpackage.InterfaceC0231Gg
    /* renamed from: for */
    public final void mo743for(String str, boolean z) {
        synchronized (this.f2234do) {
            Iterator it = this.f2235do.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                TM tm = (TM) it.next();
                if (tm.f3655do.equals(str)) {
                    AbstractC0614Xq m2869for = AbstractC0614Xq.m2869for();
                    String.format("Stopping tracking for %s", str);
                    m2869for.mo2872do(new Throwable[0]);
                    this.f2235do.remove(tm);
                    this.f2236do.m8385for(this.f2235do);
                    break;
                }
            }
        }
    }

    @Override // defpackage.InterfaceC3846vB
    /* renamed from: if, reason: not valid java name */
    public final boolean mo1457if() {
        return false;
    }

    @Override // defpackage.InterfaceC3739tM
    /* renamed from: new, reason: not valid java name */
    public final void mo1458new(ArrayList arrayList) {
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            AbstractC0614Xq m2869for = AbstractC0614Xq.m2869for();
            String.format("Constraints not met: Cancelling work ID %s", str);
            m2869for.mo2872do(new Throwable[0]);
            this.f2230do.m732break(str);
        }
    }

    @Override // defpackage.InterfaceC3846vB
    /* renamed from: try, reason: not valid java name */
    public final void mo1459try(String str) {
        Runnable runnable;
        Boolean bool = this.f2233do;
        GM gm = this.f2230do;
        if (bool == null) {
            this.f2233do = Boolean.valueOf(Kx.m1228do(this.f2232do, gm.f1177do));
        }
        if (!this.f2233do.booleanValue()) {
            AbstractC0614Xq.m2869for().mo2874new(new Throwable[0]);
            return;
        }
        if (!this.f2237do) {
            gm.f1174do.m1365do(this);
            this.f2237do = true;
        }
        AbstractC0614Xq m2869for = AbstractC0614Xq.m2869for();
        String.format("Cancelling work ID %s", str);
        m2869for.mo2872do(new Throwable[0]);
        C0228Gd c0228Gd = this.f2231do;
        if (c0228Gd != null && (runnable = (Runnable) c0228Gd.f1214do.remove(str)) != null) {
            ((Handler) c0228Gd.f1215do.f15141do).removeCallbacks(runnable);
        }
        gm.m732break(str);
    }
}
