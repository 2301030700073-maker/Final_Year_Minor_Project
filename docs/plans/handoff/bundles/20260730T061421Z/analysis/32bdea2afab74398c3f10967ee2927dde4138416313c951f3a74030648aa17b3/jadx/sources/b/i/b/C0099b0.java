package b.i.b;

import android.util.Log;
import java.util.HashMap;
import java.util.Iterator;

/* renamed from: b.i.b.b0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0099b0 extends b.j.B {
    public static final b.j.D j = new C0097a0();
    public final boolean f;

    /* renamed from: c, reason: collision with root package name */
    public final HashMap f887c = new HashMap();

    /* renamed from: d, reason: collision with root package name */
    public final HashMap f888d = new HashMap();
    public final HashMap e = new HashMap();
    public boolean g = false;
    public boolean h = false;
    public boolean i = false;

    public C0099b0(boolean z) {
        this.f = z;
    }

    @Override // b.j.B
    public void a() {
        if (X.M(3)) {
            Log.d("FragmentManager", "onCleared called for " + this);
        }
        this.g = true;
    }

    public void c(r rVar) {
        if (this.i) {
            if (X.M(2)) {
                Log.v("FragmentManager", "Ignoring addRetainedFragment as the state is already saved");
            }
        } else {
            if (this.f887c.containsKey(rVar.mWho)) {
                return;
            }
            this.f887c.put(rVar.mWho, rVar);
            if (X.M(2)) {
                Log.v("FragmentManager", "Updating retained Fragments: Added " + rVar);
            }
        }
    }

    public void d(r rVar) {
        if (this.i) {
            if (X.M(2)) {
                Log.v("FragmentManager", "Ignoring removeRetainedFragment as the state is already saved");
                return;
            }
            return;
        }
        if ((this.f887c.remove(rVar.mWho) != null) && X.M(2)) {
            Log.v("FragmentManager", "Updating retained Fragments: Removed " + rVar);
        }
    }

    public boolean e(r rVar) {
        if (this.f887c.containsKey(rVar.mWho) && this.f) {
            return this.g;
        }
        return true;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C0099b0.class != obj.getClass()) {
            return false;
        }
        C0099b0 c0099b0 = (C0099b0) obj;
        return this.f887c.equals(c0099b0.f887c) && this.f888d.equals(c0099b0.f888d) && this.e.equals(c0099b0.e);
    }

    public int hashCode() {
        return this.e.hashCode() + ((this.f888d.hashCode() + (this.f887c.hashCode() * 31)) * 31);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("FragmentManagerViewModel{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append("} Fragments (");
        Iterator it = this.f887c.values().iterator();
        while (it.hasNext()) {
            sb.append(it.next());
            if (it.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(") Child Non Config (");
        Iterator it2 = this.f888d.keySet().iterator();
        while (it2.hasNext()) {
            sb.append((String) it2.next());
            if (it2.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(") ViewModelStores (");
        Iterator it3 = this.e.keySet().iterator();
        while (it3.hasNext()) {
            sb.append((String) it3.next());
            if (it3.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(')');
        return sb.toString();
    }
}
