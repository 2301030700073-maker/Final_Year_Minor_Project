package defpackage;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import com.google.firebase.perf.metrics.Trace;
import java.util.Map;
import java.util.WeakHashMap;

/* renamed from: Ij, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0278Ij extends FragmentManager.Ccatch {

    /* renamed from: do, reason: not valid java name */
    public static final Q0 f1557do = Q0.m1818new();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AI f1558do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final QJ f1559do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C0497Sj f1560do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final WeakHashMap<Fragment, Trace> f1561do = new WeakHashMap<>();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C3366n2 f1562do;

    public C0278Ij(QJ qj, AI ai, C3366n2 c3366n2, C0497Sj c0497Sj) {
        this.f1559do = qj;
        this.f1558do = ai;
        this.f1562do = c3366n2;
        this.f1560do = c0497Sj;
    }

    @Override // androidx.fragment.app.FragmentManager.Ccatch
    /* renamed from: do, reason: not valid java name */
    public final void mo962do(Fragment fragment) {
        C2779fw c2779fw;
        Object[] objArr = {fragment.getClass().getSimpleName()};
        Q0 q0 = f1557do;
        q0.m1823if("FragmentMonitor %s.onFragmentPaused ", objArr);
        WeakHashMap<Fragment, Trace> weakHashMap = this.f1561do;
        if (!weakHashMap.containsKey(fragment)) {
            q0.m1821else("FragmentMonitor: missed a fragment trace from %s", fragment.getClass().getSimpleName());
            return;
        }
        Trace trace = weakHashMap.get(fragment);
        weakHashMap.remove(fragment);
        C0497Sj c0497Sj = this.f1560do;
        boolean z = c0497Sj.f3548do;
        Q0 q02 = C0497Sj.f3544do;
        if (z) {
            Map<Fragment, C0475Rj> map = c0497Sj.f3547do;
            if (map.containsKey(fragment)) {
                C0475Rj remove = map.remove(fragment);
                C2779fw<C0475Rj> m2185do = c0497Sj.m2185do();
                if (m2185do.m6695if()) {
                    C0475Rj m6694do = m2185do.m6694do();
                    m6694do.getClass();
                    c2779fw = new C2779fw(new C0475Rj(m6694do.f3221do - remove.f3221do, m6694do.f3223if - remove.f3223if, m6694do.f3222for - remove.f3222for));
                } else {
                    q02.m1823if("stopFragment(%s): snapshot() failed", fragment.getClass().getSimpleName());
                    c2779fw = new C2779fw();
                }
            } else {
                q02.m1823if("Sub-recording associated with key %s was not started or does not exist", fragment.getClass().getSimpleName());
                c2779fw = new C2779fw();
            }
        } else {
            q02.m1820do();
            c2779fw = new C2779fw();
        }
        if (!c2779fw.m6695if()) {
            q0.m1821else("onFragmentPaused: recorder failed to trace %s", fragment.getClass().getSimpleName());
        } else {
            LB.m1304do(trace, (C0475Rj) c2779fw.m6694do());
            trace.stop();
        }
    }

    @Override // androidx.fragment.app.FragmentManager.Ccatch
    /* renamed from: if, reason: not valid java name */
    public final void mo963if(Fragment fragment) {
        f1557do.m1823if("FragmentMonitor %s.onFragmentResumed", fragment.getClass().getSimpleName());
        Trace trace = new Trace("_st_".concat(fragment.getClass().getSimpleName()), this.f1558do, this.f1559do, this.f1562do);
        trace.start();
        trace.putAttribute("Parent_fragment", fragment.getParentFragment() == null ? "No parent" : fragment.getParentFragment().getClass().getSimpleName());
        if (fragment.getActivity() != null) {
            trace.putAttribute("Hosting_activity", fragment.getActivity().getClass().getSimpleName());
        }
        this.f1561do.put(fragment, trace);
        C0497Sj c0497Sj = this.f1560do;
        boolean z = c0497Sj.f3548do;
        Q0 q0 = C0497Sj.f3544do;
        if (!z) {
            q0.m1820do();
            return;
        }
        Map<Fragment, C0475Rj> map = c0497Sj.f3547do;
        if (map.containsKey(fragment)) {
            q0.m1823if("Cannot start sub-recording because one is already ongoing with the key %s", fragment.getClass().getSimpleName());
            return;
        }
        C2779fw<C0475Rj> m2185do = c0497Sj.m2185do();
        if (m2185do.m6695if()) {
            map.put(fragment, m2185do.m6694do());
        } else {
            q0.m1823if("startFragment(%s): snapshot() failed", fragment.getClass().getSimpleName());
        }
    }
}
