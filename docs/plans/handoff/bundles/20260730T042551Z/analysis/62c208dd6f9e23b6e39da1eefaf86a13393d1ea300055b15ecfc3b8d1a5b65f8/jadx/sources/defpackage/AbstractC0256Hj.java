package defpackage;

import android.os.Parcelable;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Cdo;
import androidx.fragment.app.Cpublic;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.Ctry;

@Deprecated
/* renamed from: Hj, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0256Hj extends AbstractC3536pw {

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final FragmentManager f1378do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f1380do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Cdo f1379do = null;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Fragment f1377do = null;

    /* renamed from: do, reason: not valid java name */
    public final int f1376do = 0;

    @Deprecated
    public AbstractC0256Hj(C0212Fj c0212Fj) {
        this.f1378do = c0212Fj;
    }

    @Override // defpackage.AbstractC3536pw
    /* renamed from: catch, reason: not valid java name */
    public final boolean mo877catch(View view, Object obj) {
        return ((Fragment) obj).getView() == view;
    }

    @Override // defpackage.AbstractC3536pw
    /* renamed from: final, reason: not valid java name */
    public final void mo878final(Parcelable parcelable, ClassLoader classLoader) {
    }

    @Override // defpackage.AbstractC3536pw
    /* renamed from: new, reason: not valid java name */
    public final void mo879new(ViewGroup viewGroup) {
        Cdo cdo = this.f1379do;
        if (cdo != null) {
            if (!this.f1380do) {
                try {
                    this.f1380do = true;
                    if (((Cpublic) cdo).f6989do) {
                        throw new IllegalStateException("This transaction is already being added to the back stack");
                    }
                    cdo.f6952do.m4150throws(cdo, true);
                } finally {
                    this.f1380do = false;
                }
            }
            this.f1379do = null;
        }
    }

    @Override // defpackage.AbstractC3536pw
    /* renamed from: public, reason: not valid java name */
    public final void mo880public(ViewGroup viewGroup) {
        if (viewGroup.getId() != -1) {
            return;
        }
        throw new IllegalStateException("ViewPager with adapter " + this + " requires a view id");
    }

    @Override // defpackage.AbstractC3536pw
    /* renamed from: super, reason: not valid java name */
    public final Parcelable mo881super() {
        return null;
    }

    @Override // defpackage.AbstractC3536pw
    /* renamed from: while, reason: not valid java name */
    public final void mo882while(ViewGroup viewGroup, int i, Object obj) {
        Fragment fragment = (Fragment) obj;
        Fragment fragment2 = this.f1377do;
        if (fragment != fragment2) {
            FragmentManager fragmentManager = this.f1378do;
            int i2 = this.f1376do;
            if (fragment2 != null) {
                fragment2.setMenuVisibility(false);
                if (i2 == 1) {
                    if (this.f1379do == null) {
                        fragmentManager.getClass();
                        this.f1379do = new Cdo(fragmentManager);
                    }
                    this.f1379do.m4170class(this.f1377do, Ctry.Cif.STARTED);
                } else {
                    this.f1377do.setUserVisibleHint(false);
                }
            }
            fragment.setMenuVisibility(true);
            if (i2 == 1) {
                if (this.f1379do == null) {
                    fragmentManager.getClass();
                    this.f1379do = new Cdo(fragmentManager);
                }
                this.f1379do.m4170class(fragment, Ctry.Cif.RESUMED);
            } else {
                fragment.setUserVisibleHint(true);
            }
            this.f1377do = fragment;
        }
    }
}
