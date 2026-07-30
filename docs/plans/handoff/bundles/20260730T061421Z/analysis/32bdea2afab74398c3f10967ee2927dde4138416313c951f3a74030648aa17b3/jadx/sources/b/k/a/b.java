package b.k.a;

import android.util.Log;
import b.j.j;
import b.j.s;
import b.j.t;

/* loaded from: classes.dex */
public class b extends s {
    public j k;
    public c l;

    @Override // b.j.q
    public void d() {
        if (f.c(2)) {
            Log.v("LoaderManager", "  Starting: " + this);
        }
        throw null;
    }

    @Override // b.j.q
    public void e() {
        if (f.c(2)) {
            Log.v("LoaderManager", "  Stopping: " + this);
        }
        throw null;
    }

    @Override // b.j.q
    public void f(t tVar) {
        super.f(tVar);
        this.k = null;
        this.l = null;
    }

    @Override // b.j.s
    public void g(Object obj) {
        super.g(obj);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(64);
        sb.append("LoaderInfo{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" #");
        sb.append(0);
        sb.append(" : ");
        throw null;
    }
}
