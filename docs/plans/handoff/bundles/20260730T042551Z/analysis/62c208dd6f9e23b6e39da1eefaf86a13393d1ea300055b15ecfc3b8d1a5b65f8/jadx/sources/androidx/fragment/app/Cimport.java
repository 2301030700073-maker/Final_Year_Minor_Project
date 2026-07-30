package androidx.fragment.app;

import android.os.Bundle;
import android.os.Parcelable;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.Ctry;
import defpackage.AbstractC3536pw;
import defpackage.C0212Fj;
import defpackage.C0420Ou;
import defpackage.C4122zt;
import defpackage.Creturn;
import defpackage.V1;
import java.util.ArrayList;

@Deprecated
/* renamed from: androidx.fragment.app.import, reason: invalid class name */
/* loaded from: classes.dex */
public abstract class Cimport extends AbstractC3536pw {

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final FragmentManager f6972do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f6975do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Cdo f6973do = null;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ArrayList<Fragment.SavedState> f6974do = new ArrayList<>();

    /* renamed from: if, reason: not valid java name */
    public final ArrayList<Fragment> f6976if = new ArrayList<>();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Fragment f6971do = null;

    /* renamed from: do, reason: not valid java name */
    public final int f6970do = 0;

    @Deprecated
    public Cimport(C0212Fj c0212Fj) {
        this.f6972do = c0212Fj;
    }

    @Override // defpackage.AbstractC3536pw
    /* renamed from: break */
    public final Object mo166break(ViewGroup viewGroup, int i) {
        Fragment.SavedState savedState;
        Fragment fragment;
        ArrayList<Fragment> arrayList = this.f6976if;
        if (arrayList.size() > i && (fragment = arrayList.get(i)) != null) {
            return fragment;
        }
        if (this.f6973do == null) {
            FragmentManager fragmentManager = this.f6972do;
            fragmentManager.getClass();
            this.f6973do = new Cdo(fragmentManager);
        }
        Fragment fragment2 = (Fragment) ((C0420Ou.Cfor) this).f2688for.get(i);
        ArrayList<Fragment.SavedState> arrayList2 = this.f6974do;
        if (arrayList2.size() > i && (savedState = arrayList2.get(i)) != null) {
            fragment2.setInitialSavedState(savedState);
        }
        while (arrayList.size() <= i) {
            arrayList.add(null);
        }
        fragment2.setMenuVisibility(false);
        int i2 = this.f6970do;
        if (i2 == 0) {
            fragment2.setUserVisibleHint(false);
        }
        arrayList.set(i, fragment2);
        this.f6973do.mo4172for(viewGroup.getId(), fragment2, null, 1);
        if (i2 == 1) {
            this.f6973do.m4170class(fragment2, Ctry.Cif.STARTED);
        }
        return fragment2;
    }

    @Override // defpackage.AbstractC3536pw
    /* renamed from: catch */
    public final boolean mo877catch(View view, Object obj) {
        return ((Fragment) obj).getView() == view;
    }

    @Override // defpackage.AbstractC3536pw
    /* renamed from: final */
    public final void mo878final(Parcelable parcelable, ClassLoader classLoader) {
        Fragment m4130finally;
        if (parcelable != null) {
            Bundle bundle = (Bundle) parcelable;
            bundle.setClassLoader(classLoader);
            Parcelable[] parcelableArray = bundle.getParcelableArray("states");
            ArrayList<Fragment.SavedState> arrayList = this.f6974do;
            arrayList.clear();
            ArrayList<Fragment> arrayList2 = this.f6976if;
            arrayList2.clear();
            if (parcelableArray != null) {
                for (Parcelable parcelable2 : parcelableArray) {
                    arrayList.add((Fragment.SavedState) parcelable2);
                }
            }
            for (String str : bundle.keySet()) {
                if (str.startsWith("f")) {
                    int parseInt = Integer.parseInt(str.substring(1));
                    FragmentManager fragmentManager = this.f6972do;
                    fragmentManager.getClass();
                    String string = bundle.getString(str);
                    if (string == null) {
                        m4130finally = null;
                    } else {
                        m4130finally = fragmentManager.m4130finally(string);
                        if (m4130finally == null) {
                            fragmentManager.l(new IllegalStateException(C4122zt.m8827new("Fragment no longer exists for key ", str, ": unique id ", string)));
                            throw null;
                        }
                    }
                    if (m4130finally != null) {
                        while (arrayList2.size() <= parseInt) {
                            arrayList2.add(null);
                        }
                        m4130finally.setMenuVisibility(false);
                        arrayList2.set(parseInt, m4130finally);
                    }
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:25:? A[RETURN, SYNTHETIC] */
    @Override // defpackage.AbstractC3536pw
    /* renamed from: if */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo169if(android.view.ViewGroup r6, int r7, java.lang.Object r8) {
        /*
            r5 = this;
            androidx.fragment.app.Fragment r8 = (androidx.fragment.app.Fragment) r8
            androidx.fragment.app.do r6 = r5.f6973do
            androidx.fragment.app.FragmentManager r0 = r5.f6972do
            if (r6 != 0) goto L12
            r0.getClass()
            androidx.fragment.app.do r6 = new androidx.fragment.app.do
            r6.<init>(r0)
            r5.f6973do = r6
        L12:
            java.util.ArrayList<androidx.fragment.app.Fragment$SavedState> r6 = r5.f6974do
            int r1 = r6.size()
            r2 = 0
            if (r1 > r7) goto L1f
            r6.add(r2)
            goto L12
        L1f:
            boolean r1 = r8.isAdded()
            if (r1 == 0) goto L60
            r0.getClass()
            java.lang.String r1 = r8.mWho
            androidx.fragment.app.native r3 = r0.f6868do
            java.util.HashMap<java.lang.String, androidx.fragment.app.while> r3 = r3.f6979do
            java.lang.Object r1 = r3.get(r1)
            androidx.fragment.app.while r1 = (androidx.fragment.app.Cwhile) r1
            if (r1 == 0) goto L4f
            androidx.fragment.app.Fragment r3 = r1.f7052do
            boolean r4 = r3.equals(r8)
            if (r4 == 0) goto L4f
            int r0 = r3.mState
            r3 = -1
            if (r0 <= r3) goto L60
            android.os.Bundle r0 = r1.m4224const()
            if (r0 == 0) goto L60
            androidx.fragment.app.Fragment$SavedState r1 = new androidx.fragment.app.Fragment$SavedState
            r1.<init>(r0)
            goto L61
        L4f:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "Fragment "
            java.lang.String r1 = " is not currently in the FragmentManager"
            java.lang.String r7 = defpackage.Creturn.m7979for(r7, r8, r1)
            r6.<init>(r7)
            r0.l(r6)
            throw r2
        L60:
            r1 = r2
        L61:
            r6.set(r7, r1)
            java.util.ArrayList<androidx.fragment.app.Fragment> r6 = r5.f6976if
            r6.set(r7, r2)
            androidx.fragment.app.do r6 = r5.f6973do
            r6.m4169catch(r8)
            androidx.fragment.app.Fragment r6 = r5.f6971do
            boolean r6 = r8.equals(r6)
            if (r6 == 0) goto L78
            r5.f6971do = r2
        L78:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.Cimport.mo169if(android.view.ViewGroup, int, java.lang.Object):void");
    }

    @Override // defpackage.AbstractC3536pw
    /* renamed from: new */
    public void mo879new(ViewGroup viewGroup) {
        Cdo cdo = this.f6973do;
        if (cdo != null) {
            if (!this.f6975do) {
                try {
                    this.f6975do = true;
                    if (((Cpublic) cdo).f6989do) {
                        throw new IllegalStateException("This transaction is already being added to the back stack");
                    }
                    cdo.f6952do.m4150throws(cdo, true);
                } finally {
                    this.f6975do = false;
                }
            }
            this.f6973do = null;
        }
    }

    @Override // defpackage.AbstractC3536pw
    /* renamed from: public */
    public final void mo880public(ViewGroup viewGroup) {
        if (viewGroup.getId() != -1) {
            return;
        }
        throw new IllegalStateException("ViewPager with adapter " + this + " requires a view id");
    }

    @Override // defpackage.AbstractC3536pw
    /* renamed from: super */
    public final Parcelable mo881super() {
        Bundle bundle;
        ArrayList<Fragment.SavedState> arrayList = this.f6974do;
        if (arrayList.size() > 0) {
            bundle = new Bundle();
            Fragment.SavedState[] savedStateArr = new Fragment.SavedState[arrayList.size()];
            arrayList.toArray(savedStateArr);
            bundle.putParcelableArray("states", savedStateArr);
        } else {
            bundle = null;
        }
        int i = 0;
        while (true) {
            ArrayList<Fragment> arrayList2 = this.f6976if;
            if (i >= arrayList2.size()) {
                return bundle;
            }
            Fragment fragment = arrayList2.get(i);
            if (fragment != null && fragment.isAdded()) {
                if (bundle == null) {
                    bundle = new Bundle();
                }
                String m2494case = V1.m2494case("f", i);
                FragmentManager fragmentManager = this.f6972do;
                fragmentManager.getClass();
                if (fragment.mFragmentManager != fragmentManager) {
                    fragmentManager.l(new IllegalStateException(Creturn.m7979for("Fragment ", fragment, " is not currently in the FragmentManager")));
                    throw null;
                }
                bundle.putString(m2494case, fragment.mWho);
            }
            i++;
        }
    }

    @Override // defpackage.AbstractC3536pw
    /* renamed from: while */
    public final void mo882while(ViewGroup viewGroup, int i, Object obj) {
        Fragment fragment = (Fragment) obj;
        Fragment fragment2 = this.f6971do;
        if (fragment != fragment2) {
            FragmentManager fragmentManager = this.f6972do;
            int i2 = this.f6970do;
            if (fragment2 != null) {
                fragment2.setMenuVisibility(false);
                if (i2 == 1) {
                    if (this.f6973do == null) {
                        fragmentManager.getClass();
                        this.f6973do = new Cdo(fragmentManager);
                    }
                    this.f6973do.m4170class(this.f6971do, Ctry.Cif.STARTED);
                } else {
                    this.f6971do.setUserVisibleHint(false);
                }
            }
            fragment.setMenuVisibility(true);
            if (i2 == 1) {
                if (this.f6973do == null) {
                    fragmentManager.getClass();
                    this.f6973do = new Cdo(fragmentManager);
                }
                this.f6973do.m4170class(fragment, Ctry.Cif.RESUMED);
            } else {
                fragment.setUserVisibleHint(true);
            }
            this.f6971do = fragment;
        }
    }
}
