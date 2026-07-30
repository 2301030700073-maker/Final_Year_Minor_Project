package androidx.fragment.app;

import androidx.lifecycle.Cimport;
import defpackage.AbstractC0805cL;
import defpackage.C0397Nt;
import defpackage.C2687eL;
import java.util.HashMap;
import java.util.Iterator;

/* renamed from: androidx.fragment.app.throw, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cthrow extends AbstractC0805cL {

    /* renamed from: do, reason: not valid java name */
    public static final Cdo f7041do = new Cdo();

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final boolean f7045if;

    /* renamed from: if, reason: not valid java name */
    public final HashMap<String, Fragment> f7044if = new HashMap<>();

    /* renamed from: for, reason: not valid java name */
    public final HashMap<String, Cthrow> f7042for = new HashMap<>();

    /* renamed from: new, reason: not valid java name */
    public final HashMap<String, C2687eL> f7046new = new HashMap<>();

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public boolean f7043for = false;

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public boolean f7047new = false;

    /* renamed from: androidx.fragment.app.throw$do, reason: invalid class name */
    public class Cdo implements Cimport.Cif {
        @Override // androidx.lifecycle.Cimport.Cif
        /* renamed from: do */
        public final <T extends AbstractC0805cL> T mo1068do(Class<T> cls) {
            return new Cthrow(true);
        }

        @Override // androidx.lifecycle.Cimport.Cif
        /* renamed from: if */
        public final AbstractC0805cL mo1069if(Class cls, C0397Nt c0397Nt) {
            return mo1068do(cls);
        }
    }

    public Cthrow(boolean z) {
        this.f7045if = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || Cthrow.class != obj.getClass()) {
            return false;
        }
        Cthrow cthrow = (Cthrow) obj;
        return this.f7044if.equals(cthrow.f7044if) && this.f7042for.equals(cthrow.f7042for) && this.f7046new.equals(cthrow.f7046new);
    }

    /* renamed from: for, reason: not valid java name */
    public final void m4217for(Fragment fragment) {
        if (this.f7047new) {
            return;
        }
        HashMap<String, Fragment> hashMap = this.f7044if;
        if (hashMap.containsKey(fragment.mWho)) {
            return;
        }
        hashMap.put(fragment.mWho, fragment);
        if (FragmentManager.m4115interface(2)) {
            fragment.toString();
        }
    }

    public final int hashCode() {
        return this.f7046new.hashCode() + ((this.f7042for.hashCode() + (this.f7044if.hashCode() * 31)) * 31);
    }

    @Override // defpackage.AbstractC0805cL
    /* renamed from: if, reason: not valid java name */
    public final void mo4218if() {
        if (FragmentManager.m4115interface(3)) {
            toString();
        }
        this.f7043for = true;
    }

    /* renamed from: new, reason: not valid java name */
    public final void m4219new(Fragment fragment) {
        if (this.f7047new) {
            return;
        }
        if ((this.f7044if.remove(fragment.mWho) != null) && FragmentManager.m4115interface(2)) {
            fragment.toString();
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("FragmentManagerViewModel{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append("} Fragments (");
        Iterator<Fragment> it = this.f7044if.values().iterator();
        while (it.hasNext()) {
            sb.append(it.next());
            if (it.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(") Child Non Config (");
        Iterator<String> it2 = this.f7042for.keySet().iterator();
        while (it2.hasNext()) {
            sb.append(it2.next());
            if (it2.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(") ViewModelStores (");
        Iterator<String> it3 = this.f7046new.keySet().iterator();
        while (it3.hasNext()) {
            sb.append(it3.next());
            if (it3.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(')');
        return sb.toString();
    }
}
