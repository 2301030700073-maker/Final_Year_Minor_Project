package defpackage;

import android.view.ViewGroup;
import androidx.fragment.app.Cdo;
import androidx.fragment.app.Cpublic;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.Ctry;
import com.facebook.internal.security.CertificateUtil;
import defpackage.C2857hE;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public final class BE extends AbstractC0256Hj {

    /* renamed from: do, reason: not valid java name */
    public final ArrayList f219do;

    /* renamed from: if, reason: not valid java name */
    public final FragmentManager f220if;

    public BE(C0212Fj c0212Fj) {
        super(c0212Fj);
        this.f219do = new ArrayList();
        this.f220if = c0212Fj;
        this.f219do = new ArrayList();
    }

    @Override // defpackage.AbstractC3536pw
    /* renamed from: break, reason: not valid java name */
    public final Object mo166break(ViewGroup viewGroup, int i) {
        ArrayList arrayList = this.f219do;
        C2857hE.Cif mo61new = ((AE) arrayList.get(i)).mo61new();
        if (mo61new.isAdded()) {
            return mo61new;
        }
        Cdo cdo = ((AbstractC0256Hj) this).f1379do;
        FragmentManager fragmentManager = ((AbstractC0256Hj) this).f1378do;
        if (cdo == null) {
            fragmentManager.getClass();
            ((AbstractC0256Hj) this).f1379do = new Cdo(fragmentManager);
        }
        long j = i;
        Fragment m4140private = fragmentManager.m4140private("android:switcher:" + viewGroup.getId() + CertificateUtil.DELIMITER + j);
        if (m4140private != null) {
            Cdo cdo2 = ((AbstractC0256Hj) this).f1379do;
            cdo2.getClass();
            cdo2.m4185if(new Cpublic.Cdo(m4140private, 7));
        } else {
            m4140private = ((AE) arrayList.get(i)).mo61new();
            ((AbstractC0256Hj) this).f1379do.mo4172for(viewGroup.getId(), m4140private, "android:switcher:" + viewGroup.getId() + CertificateUtil.DELIMITER + j, 1);
        }
        if (m4140private != ((AbstractC0256Hj) this).f1377do) {
            m4140private.setMenuVisibility(false);
            if (((AbstractC0256Hj) this).f1376do == 1) {
                ((AbstractC0256Hj) this).f1379do.m4170class(m4140private, Ctry.Cif.STARTED);
            } else {
                m4140private.setUserVisibleHint(false);
            }
        }
        AE ae = (AE) arrayList.get(i);
        if (ae instanceof Wz) {
            ((Wz) ae).mo2792else(m4140private);
            arrayList.set(i, ae);
            if (m4140private instanceof CE) {
                ((CE) m4140private).m254new();
            }
        }
        return m4140private;
    }

    @Override // defpackage.AbstractC3536pw
    /* renamed from: case, reason: not valid java name */
    public final int mo167case(Object obj) {
        if (!(obj instanceof Fragment)) {
            return -1;
        }
        FragmentManager fragmentManager = this.f220if;
        fragmentManager.getClass();
        Cdo cdo = new Cdo(fragmentManager);
        Fragment fragment = (Fragment) obj;
        cdo.m4171else(fragment);
        cdo.m4185if(new Cpublic.Cdo(fragment, 7));
        cdo.m4176try();
        return -1;
    }

    @Override // defpackage.AbstractC3536pw
    /* renamed from: class, reason: not valid java name */
    public final void mo168class() {
        throw null;
    }

    @Override // defpackage.AbstractC3536pw
    /* renamed from: if, reason: not valid java name */
    public final void mo169if(ViewGroup viewGroup, int i, Object obj) {
        Fragment fragment = (Fragment) obj;
        if (fragment == null) {
            return;
        }
        if (((AbstractC0256Hj) this).f1379do == null) {
            FragmentManager fragmentManager = ((AbstractC0256Hj) this).f1378do;
            fragmentManager.getClass();
            ((AbstractC0256Hj) this).f1379do = new Cdo(fragmentManager);
        }
        ((AbstractC0256Hj) this).f1379do.m4171else(fragment);
        if (fragment.equals(((AbstractC0256Hj) this).f1377do)) {
            ((AbstractC0256Hj) this).f1377do = null;
        }
    }

    /* renamed from: static, reason: not valid java name */
    public final boolean m170static(C2857hE c2857hE) {
        ArrayList arrayList = this.f219do;
        if (arrayList.contains(c2857hE)) {
            return false;
        }
        boolean add = arrayList.add(c2857hE);
        if (add) {
            super.mo168class();
        }
        return add;
    }

    @Override // defpackage.AbstractC3536pw
    /* renamed from: try, reason: not valid java name */
    public final int mo171try() {
        return this.f219do.size();
    }
}
