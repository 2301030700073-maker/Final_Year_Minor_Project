package b.i.b;

import android.util.Log;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;

/* renamed from: b.i.b.g0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0109g0 {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f898a = new ArrayList();

    /* renamed from: b, reason: collision with root package name */
    public final HashMap f899b = new HashMap();

    /* renamed from: c, reason: collision with root package name */
    public C0099b0 f900c;

    public void a(r rVar) {
        if (this.f898a.contains(rVar)) {
            throw new IllegalStateException("Fragment already added: " + rVar);
        }
        synchronized (this.f898a) {
            this.f898a.add(rVar);
        }
        rVar.mAdded = true;
    }

    public void b() {
        this.f899b.values().removeAll(Collections.singleton(null));
    }

    public boolean c(String str) {
        return this.f899b.get(str) != null;
    }

    public r d(String str) {
        C0107f0 c0107f0 = (C0107f0) this.f899b.get(str);
        if (c0107f0 != null) {
            return c0107f0.f895c;
        }
        return null;
    }

    public r e(String str) {
        r findFragmentByWho;
        for (C0107f0 c0107f0 : this.f899b.values()) {
            if (c0107f0 != null && (findFragmentByWho = c0107f0.f895c.findFragmentByWho(str)) != null) {
                return findFragmentByWho;
            }
        }
        return null;
    }

    public List f() {
        ArrayList arrayList = new ArrayList();
        for (C0107f0 c0107f0 : this.f899b.values()) {
            if (c0107f0 != null) {
                arrayList.add(c0107f0);
            }
        }
        return arrayList;
    }

    public List g() {
        ArrayList arrayList = new ArrayList();
        for (C0107f0 c0107f0 : this.f899b.values()) {
            if (c0107f0 != null) {
                arrayList.add(c0107f0.f895c);
            } else {
                arrayList.add(null);
            }
        }
        return arrayList;
    }

    public C0107f0 h(String str) {
        return (C0107f0) this.f899b.get(str);
    }

    public List i() {
        ArrayList arrayList;
        if (this.f898a.isEmpty()) {
            return Collections.emptyList();
        }
        synchronized (this.f898a) {
            arrayList = new ArrayList(this.f898a);
        }
        return arrayList;
    }

    public void j(C0107f0 c0107f0) {
        r rVar = c0107f0.f895c;
        if (c(rVar.mWho)) {
            return;
        }
        this.f899b.put(rVar.mWho, c0107f0);
        if (rVar.mRetainInstanceChangedWhileDetached) {
            if (rVar.mRetainInstance) {
                this.f900c.c(rVar);
            } else {
                this.f900c.d(rVar);
            }
            rVar.mRetainInstanceChangedWhileDetached = false;
        }
        if (X.M(2)) {
            Log.v("FragmentManager", "Added fragment to active set " + rVar);
        }
    }

    public void k(C0107f0 c0107f0) {
        r rVar = c0107f0.f895c;
        if (rVar.mRetainInstance) {
            this.f900c.d(rVar);
        }
        if (((C0107f0) this.f899b.put(rVar.mWho, null)) != null && X.M(2)) {
            Log.v("FragmentManager", "Removed fragment from active set " + rVar);
        }
    }

    public void l(r rVar) {
        synchronized (this.f898a) {
            this.f898a.remove(rVar);
        }
        rVar.mAdded = false;
    }
}
