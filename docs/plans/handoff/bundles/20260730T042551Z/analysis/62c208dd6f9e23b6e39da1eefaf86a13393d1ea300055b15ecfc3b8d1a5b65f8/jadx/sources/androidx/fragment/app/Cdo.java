package androidx.fragment.app;

import androidx.fragment.app.Cpublic;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.Ctry;
import defpackage.AbstractC0190Ej;
import defpackage.C0592Wq;
import j$.util.Objects;
import java.io.PrintWriter;
import java.lang.reflect.Modifier;
import java.util.ArrayList;

/* renamed from: androidx.fragment.app.do, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cdo extends Cpublic implements FragmentManager.Cclass {

    /* renamed from: do, reason: not valid java name */
    public final FragmentManager f6952do;

    /* renamed from: for, reason: not valid java name */
    public boolean f6953for;

    /* renamed from: goto, reason: not valid java name */
    public int f6954goto;

    public Cdo(FragmentManager fragmentManager) {
        fragmentManager.m4144strictfp();
        AbstractC0190Ej<?> abstractC0190Ej = fragmentManager.f6860do;
        if (abstractC0190Ej != null) {
            abstractC0190Ej.f881do.getClassLoader();
        }
        this.f6954goto = -1;
        this.f6952do = fragmentManager;
    }

    /* renamed from: break, reason: not valid java name */
    public final void m4167break() {
        ArrayList<Cpublic.Cdo> arrayList = ((Cpublic) this).f6988do;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            Cpublic.Cdo cdo = arrayList.get(size);
            Fragment fragment = cdo.f7000do;
            if (fragment != null) {
                fragment.setPopDirection(true);
                int i = this.f6998try;
                fragment.setNextTransition(i != 4097 ? i != 4099 ? i != 8194 ? 0 : 4097 : 4099 : 8194);
                fragment.setSharedElementNames(((Cpublic) this).f6992for, ((Cpublic) this).f6995if);
            }
            int i2 = cdo.f6999do;
            FragmentManager fragmentManager = this.f6952do;
            switch (i2) {
                case 1:
                    fragment.setAnimations(cdo.f7003if, cdo.f7002for, cdo.f7005new, cdo.f7006try);
                    fragmentManager.g(fragment, true);
                    fragmentManager.b(fragment);
                    break;
                case 2:
                default:
                    throw new IllegalArgumentException("Unknown cmd: " + cdo.f6999do);
                case 3:
                    fragment.setAnimations(cdo.f7003if, cdo.f7002for, cdo.f7005new, cdo.f7006try);
                    fragmentManager.m4126do(fragment);
                    break;
                case 4:
                    fragment.setAnimations(cdo.f7003if, cdo.f7002for, cdo.f7005new, cdo.f7006try);
                    fragmentManager.getClass();
                    if (FragmentManager.m4115interface(2)) {
                        Objects.toString(fragment);
                    }
                    if (fragment.mHidden) {
                        fragment.mHidden = false;
                        fragment.mHiddenChanged = !fragment.mHiddenChanged;
                        break;
                    } else {
                        break;
                    }
                case 5:
                    fragment.setAnimations(cdo.f7003if, cdo.f7002for, cdo.f7005new, cdo.f7006try);
                    fragmentManager.g(fragment, true);
                    if (FragmentManager.m4115interface(2)) {
                        Objects.toString(fragment);
                    }
                    if (fragment.mHidden) {
                        break;
                    } else {
                        fragment.mHidden = true;
                        fragment.mHiddenChanged = !fragment.mHiddenChanged;
                        fragmentManager.j(fragment);
                        break;
                    }
                case 6:
                    fragment.setAnimations(cdo.f7003if, cdo.f7002for, cdo.f7005new, cdo.f7006try);
                    fragmentManager.m4131for(fragment);
                    break;
                case 7:
                    fragment.setAnimations(cdo.f7003if, cdo.f7002for, cdo.f7005new, cdo.f7006try);
                    fragmentManager.g(fragment, true);
                    fragmentManager.m4127else(fragment);
                    break;
                case 8:
                    fragmentManager.i(null);
                    break;
                case 9:
                    fragmentManager.i(fragment);
                    break;
                case 10:
                    fragmentManager.h(fragment, cdo.f7001do);
                    break;
            }
        }
    }

    /* renamed from: case, reason: not valid java name */
    public final int m4168case(boolean z) {
        if (this.f6953for) {
            throw new IllegalStateException("commit already called");
        }
        if (FragmentManager.m4115interface(2)) {
            toString();
            PrintWriter printWriter = new PrintWriter(new C0592Wq());
            m4173goto("  ", printWriter, true);
            printWriter.close();
        }
        this.f6953for = true;
        boolean z2 = ((Cpublic) this).f6989do;
        FragmentManager fragmentManager = this.f6952do;
        if (z2) {
            this.f6954goto = fragmentManager.f6876do.getAndIncrement();
        } else {
            this.f6954goto = -1;
        }
        fragmentManager.m4142return(this, z);
        return this.f6954goto;
    }

    /* renamed from: catch, reason: not valid java name */
    public final Cdo m4169catch(Fragment fragment) {
        FragmentManager fragmentManager = fragment.mFragmentManager;
        if (fragmentManager == null || fragmentManager == this.f6952do) {
            m4185if(new Cpublic.Cdo(fragment, 3));
            return this;
        }
        throw new IllegalStateException("Cannot remove Fragment attached to a different FragmentManager. Fragment " + fragment.toString() + " is already attached to a FragmentManager.");
    }

    /* renamed from: class, reason: not valid java name */
    public final Cdo m4170class(Fragment fragment, Ctry.Cif cif) {
        FragmentManager fragmentManager = fragment.mFragmentManager;
        FragmentManager fragmentManager2 = this.f6952do;
        if (fragmentManager != fragmentManager2) {
            throw new IllegalArgumentException("Cannot setMaxLifecycle for Fragment not attached to FragmentManager " + fragmentManager2);
        }
        if (cif == Ctry.Cif.INITIALIZED && fragment.mState > -1) {
            throw new IllegalArgumentException("Cannot set maximum Lifecycle to " + cif + " after the Fragment has been created");
        }
        if (cif != Ctry.Cif.DESTROYED) {
            m4185if(new Cpublic.Cdo(fragment, cif));
            return this;
        }
        throw new IllegalArgumentException("Cannot set maximum Lifecycle to " + cif + ". Use remove() to remove the fragment from the FragmentManager and trigger its destruction.");
    }

    @Override // androidx.fragment.app.FragmentManager.Cclass
    /* renamed from: do */
    public final boolean mo4154do(ArrayList<Cdo> arrayList, ArrayList<Boolean> arrayList2) {
        if (FragmentManager.m4115interface(2)) {
            toString();
        }
        arrayList.add(this);
        arrayList2.add(Boolean.FALSE);
        if (!((Cpublic) this).f6989do) {
            return true;
        }
        FragmentManager fragmentManager = this.f6952do;
        if (fragmentManager.f6883if == null) {
            fragmentManager.f6883if = new ArrayList<>();
        }
        fragmentManager.f6883if.add(this);
        return true;
    }

    /* renamed from: else, reason: not valid java name */
    public final Cdo m4171else(Fragment fragment) {
        FragmentManager fragmentManager = fragment.mFragmentManager;
        if (fragmentManager == null || fragmentManager == this.f6952do) {
            m4185if(new Cpublic.Cdo(fragment, 6));
            return this;
        }
        throw new IllegalStateException("Cannot detach Fragment attached to a different FragmentManager. Fragment " + fragment.toString() + " is already attached to a FragmentManager.");
    }

    @Override // androidx.fragment.app.Cpublic
    /* renamed from: for, reason: not valid java name */
    public final void mo4172for(int i, Fragment fragment, String str, int i2) {
        Class<?> cls = fragment.getClass();
        int modifiers = cls.getModifiers();
        if (cls.isAnonymousClass() || !Modifier.isPublic(modifiers) || (cls.isMemberClass() && !Modifier.isStatic(modifiers))) {
            throw new IllegalStateException("Fragment " + cls.getCanonicalName() + " must be a public static class to be  properly recreated from instance state.");
        }
        if (str != null) {
            String str2 = fragment.mTag;
            if (str2 != null && !str.equals(str2)) {
                throw new IllegalStateException("Can't change tag of fragment " + fragment + ": was " + fragment.mTag + " now " + str);
            }
            fragment.mTag = str;
        }
        if (i != 0) {
            if (i == -1) {
                throw new IllegalArgumentException("Can't add fragment " + fragment + " with tag " + str + " to container view with no id");
            }
            int i3 = fragment.mFragmentId;
            if (i3 != 0 && i3 != i) {
                throw new IllegalStateException("Can't change container ID of fragment " + fragment + ": was " + fragment.mFragmentId + " now " + i);
            }
            fragment.mFragmentId = i;
            fragment.mContainerId = i;
        }
        m4185if(new Cpublic.Cdo(fragment, i2));
        fragment.mFragmentManager = this.f6952do;
    }

    /* renamed from: goto, reason: not valid java name */
    public final void m4173goto(String str, PrintWriter printWriter, boolean z) {
        String str2;
        if (z) {
            printWriter.print(str);
            printWriter.print("mName=");
            printWriter.print(((Cpublic) this).f6987do);
            printWriter.print(" mIndex=");
            printWriter.print(this.f6954goto);
            printWriter.print(" mCommitted=");
            printWriter.println(this.f6953for);
            if (this.f6998try != 0) {
                printWriter.print(str);
                printWriter.print("mTransition=#");
                printWriter.print(Integer.toHexString(this.f6998try));
            }
            if (((Cpublic) this).f6985do != 0 || ((Cpublic) this).f6993if != 0) {
                printWriter.print(str);
                printWriter.print("mEnterAnim=#");
                printWriter.print(Integer.toHexString(((Cpublic) this).f6985do));
                printWriter.print(" mExitAnim=#");
                printWriter.println(Integer.toHexString(((Cpublic) this).f6993if));
            }
            if (((Cpublic) this).f6991for != 0 || this.f6997new != 0) {
                printWriter.print(str);
                printWriter.print("mPopEnterAnim=#");
                printWriter.print(Integer.toHexString(((Cpublic) this).f6991for));
                printWriter.print(" mPopExitAnim=#");
                printWriter.println(Integer.toHexString(this.f6997new));
            }
            if (this.f6984case != 0 || ((Cpublic) this).f6986do != null) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbTitleRes=#");
                printWriter.print(Integer.toHexString(this.f6984case));
                printWriter.print(" mBreadCrumbTitleText=");
                printWriter.println(((Cpublic) this).f6986do);
            }
            if (this.f6990else != 0 || ((Cpublic) this).f6994if != null) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbShortTitleRes=#");
                printWriter.print(Integer.toHexString(this.f6990else));
                printWriter.print(" mBreadCrumbShortTitleText=");
                printWriter.println(((Cpublic) this).f6994if);
            }
        }
        ArrayList<Cpublic.Cdo> arrayList = ((Cpublic) this).f6988do;
        if (arrayList.isEmpty()) {
            return;
        }
        printWriter.print(str);
        printWriter.println("Operations:");
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            Cpublic.Cdo cdo = arrayList.get(i);
            switch (cdo.f6999do) {
                case 0:
                    str2 = "NULL";
                    break;
                case 1:
                    str2 = "ADD";
                    break;
                case 2:
                    str2 = "REPLACE";
                    break;
                case 3:
                    str2 = "REMOVE";
                    break;
                case 4:
                    str2 = "HIDE";
                    break;
                case 5:
                    str2 = "SHOW";
                    break;
                case 6:
                    str2 = "DETACH";
                    break;
                case 7:
                    str2 = "ATTACH";
                    break;
                case 8:
                    str2 = "SET_PRIMARY_NAV";
                    break;
                case 9:
                    str2 = "UNSET_PRIMARY_NAV";
                    break;
                case 10:
                    str2 = "OP_SET_MAX_LIFECYCLE";
                    break;
                default:
                    str2 = "cmd=" + cdo.f6999do;
                    break;
            }
            printWriter.print(str);
            printWriter.print("  Op #");
            printWriter.print(i);
            printWriter.print(": ");
            printWriter.print(str2);
            printWriter.print(" ");
            printWriter.println(cdo.f7000do);
            if (z) {
                if (cdo.f7003if != 0 || cdo.f7002for != 0) {
                    printWriter.print(str);
                    printWriter.print("enterAnim=#");
                    printWriter.print(Integer.toHexString(cdo.f7003if));
                    printWriter.print(" exitAnim=#");
                    printWriter.println(Integer.toHexString(cdo.f7002for));
                }
                if (cdo.f7005new != 0 || cdo.f7006try != 0) {
                    printWriter.print(str);
                    printWriter.print("popEnterAnim=#");
                    printWriter.print(Integer.toHexString(cdo.f7005new));
                    printWriter.print(" popExitAnim=#");
                    printWriter.println(Integer.toHexString(cdo.f7006try));
                }
            }
        }
    }

    /* renamed from: new, reason: not valid java name */
    public final void m4174new(int i) {
        if (((Cpublic) this).f6989do) {
            if (FragmentManager.m4115interface(2)) {
                toString();
            }
            ArrayList<Cpublic.Cdo> arrayList = ((Cpublic) this).f6988do;
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                Cpublic.Cdo cdo = arrayList.get(i2);
                Fragment fragment = cdo.f7000do;
                if (fragment != null) {
                    fragment.mBackStackNesting += i;
                    if (FragmentManager.m4115interface(2)) {
                        Objects.toString(cdo.f7000do);
                        int i3 = cdo.f7000do.mBackStackNesting;
                    }
                }
            }
        }
    }

    /* renamed from: this, reason: not valid java name */
    public final void m4175this() {
        ArrayList<Cpublic.Cdo> arrayList = ((Cpublic) this).f6988do;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            Cpublic.Cdo cdo = arrayList.get(i);
            Fragment fragment = cdo.f7000do;
            if (fragment != null) {
                fragment.setPopDirection(false);
                fragment.setNextTransition(this.f6998try);
                fragment.setSharedElementNames(((Cpublic) this).f6995if, ((Cpublic) this).f6992for);
            }
            int i2 = cdo.f6999do;
            FragmentManager fragmentManager = this.f6952do;
            switch (i2) {
                case 1:
                    fragment.setAnimations(cdo.f7003if, cdo.f7002for, cdo.f7005new, cdo.f7006try);
                    fragmentManager.g(fragment, false);
                    fragmentManager.m4126do(fragment);
                    break;
                case 2:
                default:
                    throw new IllegalArgumentException("Unknown cmd: " + cdo.f6999do);
                case 3:
                    fragment.setAnimations(cdo.f7003if, cdo.f7002for, cdo.f7005new, cdo.f7006try);
                    fragmentManager.b(fragment);
                    break;
                case 4:
                    fragment.setAnimations(cdo.f7003if, cdo.f7002for, cdo.f7005new, cdo.f7006try);
                    fragmentManager.getClass();
                    if (FragmentManager.m4115interface(2)) {
                        Objects.toString(fragment);
                    }
                    if (fragment.mHidden) {
                        break;
                    } else {
                        fragment.mHidden = true;
                        fragment.mHiddenChanged = !fragment.mHiddenChanged;
                        fragmentManager.j(fragment);
                        break;
                    }
                case 5:
                    fragment.setAnimations(cdo.f7003if, cdo.f7002for, cdo.f7005new, cdo.f7006try);
                    fragmentManager.g(fragment, false);
                    if (FragmentManager.m4115interface(2)) {
                        Objects.toString(fragment);
                    }
                    if (fragment.mHidden) {
                        fragment.mHidden = false;
                        fragment.mHiddenChanged = !fragment.mHiddenChanged;
                        break;
                    } else {
                        break;
                    }
                case 6:
                    fragment.setAnimations(cdo.f7003if, cdo.f7002for, cdo.f7005new, cdo.f7006try);
                    fragmentManager.m4127else(fragment);
                    break;
                case 7:
                    fragment.setAnimations(cdo.f7003if, cdo.f7002for, cdo.f7005new, cdo.f7006try);
                    fragmentManager.g(fragment, false);
                    fragmentManager.m4131for(fragment);
                    break;
                case 8:
                    fragmentManager.i(fragment);
                    break;
                case 9:
                    fragmentManager.i(null);
                    break;
                case 10:
                    fragmentManager.h(fragment, cdo.f7004if);
                    break;
            }
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("BackStackEntry{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        if (this.f6954goto >= 0) {
            sb.append(" #");
            sb.append(this.f6954goto);
        }
        if (((Cpublic) this).f6987do != null) {
            sb.append(" ");
            sb.append(((Cpublic) this).f6987do);
        }
        sb.append("}");
        return sb.toString();
    }

    /* renamed from: try, reason: not valid java name */
    public final int m4176try() {
        return m4168case(false);
    }
}
