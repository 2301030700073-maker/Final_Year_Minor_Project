package b.i.b;

import android.util.Log;
import java.io.PrintWriter;
import java.lang.reflect.Modifier;
import java.util.ArrayList;

/* renamed from: b.i.b.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0096a implements U {

    /* renamed from: a, reason: collision with root package name */
    public ArrayList f883a;

    /* renamed from: b, reason: collision with root package name */
    public int f884b;

    /* renamed from: c, reason: collision with root package name */
    public int f885c;

    /* renamed from: d, reason: collision with root package name */
    public int f886d;
    public int e;
    public int f;
    public boolean g;
    public boolean h;
    public String i;
    public int j;
    public CharSequence k;
    public int l;
    public CharSequence m;
    public ArrayList n;
    public ArrayList o;
    public boolean p;
    public ArrayList q;
    public final X r;
    public boolean s;
    public int t;

    public C0096a(X x) {
        x.J();
        D d2 = x.q;
        if (d2 != null) {
            d2.f837b.getClassLoader();
        }
        this.f883a = new ArrayList();
        this.h = true;
        this.p = false;
        this.t = -1;
        this.r = x;
    }

    public static boolean l(C0113i0 c0113i0) {
        r rVar = c0113i0.f905b;
        return (rVar == null || !rVar.mAdded || rVar.mView == null || rVar.mDetached || rVar.mHidden || !rVar.isPostponed()) ? false : true;
    }

    @Override // b.i.b.U
    public boolean a(ArrayList arrayList, ArrayList arrayList2) {
        if (X.M(2)) {
            Log.v("FragmentManager", "Run: " + this);
        }
        arrayList.add(this);
        arrayList2.add(Boolean.FALSE);
        if (!this.g) {
            return true;
        }
        X x = this.r;
        if (x.f882d == null) {
            x.f882d = new ArrayList();
        }
        x.f882d.add(this);
        return true;
    }

    public void b(C0113i0 c0113i0) {
        this.f883a.add(c0113i0);
        c0113i0.f906c = this.f884b;
        c0113i0.f907d = this.f885c;
        c0113i0.e = this.f886d;
        c0113i0.f = this.e;
    }

    public void c(int i) {
        if (this.g) {
            if (X.M(2)) {
                Log.v("FragmentManager", "Bump nesting in " + this + " by " + i);
            }
            int size = this.f883a.size();
            for (int i2 = 0; i2 < size; i2++) {
                C0113i0 c0113i0 = (C0113i0) this.f883a.get(i2);
                r rVar = c0113i0.f905b;
                if (rVar != null) {
                    rVar.mBackStackNesting += i;
                    if (X.M(2)) {
                        StringBuilder f = c.a.c.a.a.f("Bump nesting of ");
                        f.append(c0113i0.f905b);
                        f.append(" to ");
                        f.append(c0113i0.f905b.mBackStackNesting);
                        Log.v("FragmentManager", f.toString());
                    }
                }
            }
        }
    }

    public int d() {
        return e(false);
    }

    public int e(boolean z) {
        if (this.s) {
            throw new IllegalStateException("commit already called");
        }
        if (X.M(2)) {
            Log.v("FragmentManager", "Commit: " + this);
            PrintWriter printWriter = new PrintWriter(new E0("FragmentManager"));
            g("  ", printWriter, true);
            printWriter.close();
        }
        this.s = true;
        if (this.g) {
            this.t = this.r.i.getAndIncrement();
        } else {
            this.t = -1;
        }
        this.r.A(this, z);
        return this.t;
    }

    public void f(int i, r rVar, String str, int i2) {
        Class<?> cls = rVar.getClass();
        int modifiers = cls.getModifiers();
        if (cls.isAnonymousClass() || !Modifier.isPublic(modifiers) || (cls.isMemberClass() && !Modifier.isStatic(modifiers))) {
            StringBuilder f = c.a.c.a.a.f("Fragment ");
            f.append(cls.getCanonicalName());
            f.append(" must be a public static class to be  properly recreated from instance state.");
            throw new IllegalStateException(f.toString());
        }
        if (str != null) {
            String str2 = rVar.mTag;
            if (str2 != null && !str.equals(str2)) {
                throw new IllegalStateException("Can't change tag of fragment " + rVar + ": was " + rVar.mTag + " now " + str);
            }
            rVar.mTag = str;
        }
        if (i != 0) {
            if (i == -1) {
                throw new IllegalArgumentException("Can't add fragment " + rVar + " with tag " + str + " to container view with no id");
            }
            int i3 = rVar.mFragmentId;
            if (i3 != 0 && i3 != i) {
                throw new IllegalStateException("Can't change container ID of fragment " + rVar + ": was " + rVar.mFragmentId + " now " + i);
            }
            rVar.mFragmentId = i;
            rVar.mContainerId = i;
        }
        b(new C0113i0(i2, rVar));
        rVar.mFragmentManager = this.r;
    }

    public void g(String str, PrintWriter printWriter, boolean z) {
        String str2;
        if (z) {
            printWriter.print(str);
            printWriter.print("mName=");
            printWriter.print(this.i);
            printWriter.print(" mIndex=");
            printWriter.print(this.t);
            printWriter.print(" mCommitted=");
            printWriter.println(this.s);
            if (this.f != 0) {
                printWriter.print(str);
                printWriter.print("mTransition=#");
                printWriter.print(Integer.toHexString(this.f));
            }
            if (this.f884b != 0 || this.f885c != 0) {
                printWriter.print(str);
                printWriter.print("mEnterAnim=#");
                printWriter.print(Integer.toHexString(this.f884b));
                printWriter.print(" mExitAnim=#");
                printWriter.println(Integer.toHexString(this.f885c));
            }
            if (this.f886d != 0 || this.e != 0) {
                printWriter.print(str);
                printWriter.print("mPopEnterAnim=#");
                printWriter.print(Integer.toHexString(this.f886d));
                printWriter.print(" mPopExitAnim=#");
                printWriter.println(Integer.toHexString(this.e));
            }
            if (this.j != 0 || this.k != null) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbTitleRes=#");
                printWriter.print(Integer.toHexString(this.j));
                printWriter.print(" mBreadCrumbTitleText=");
                printWriter.println(this.k);
            }
            if (this.l != 0 || this.m != null) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbShortTitleRes=#");
                printWriter.print(Integer.toHexString(this.l));
                printWriter.print(" mBreadCrumbShortTitleText=");
                printWriter.println(this.m);
            }
        }
        if (this.f883a.isEmpty()) {
            return;
        }
        printWriter.print(str);
        printWriter.println("Operations:");
        int size = this.f883a.size();
        for (int i = 0; i < size; i++) {
            C0113i0 c0113i0 = (C0113i0) this.f883a.get(i);
            switch (c0113i0.f904a) {
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
                    StringBuilder f = c.a.c.a.a.f("cmd=");
                    f.append(c0113i0.f904a);
                    str2 = f.toString();
                    break;
            }
            printWriter.print(str);
            printWriter.print("  Op #");
            printWriter.print(i);
            printWriter.print(": ");
            printWriter.print(str2);
            printWriter.print(" ");
            printWriter.println(c0113i0.f905b);
            if (z) {
                if (c0113i0.f906c != 0 || c0113i0.f907d != 0) {
                    printWriter.print(str);
                    printWriter.print("enterAnim=#");
                    printWriter.print(Integer.toHexString(c0113i0.f906c));
                    printWriter.print(" exitAnim=#");
                    printWriter.println(Integer.toHexString(c0113i0.f907d));
                }
                if (c0113i0.e != 0 || c0113i0.f != 0) {
                    printWriter.print(str);
                    printWriter.print("popEnterAnim=#");
                    printWriter.print(Integer.toHexString(c0113i0.e));
                    printWriter.print(" popExitAnim=#");
                    printWriter.println(Integer.toHexString(c0113i0.f));
                }
            }
        }
    }

    public void h() {
        int size = this.f883a.size();
        for (int i = 0; i < size; i++) {
            C0113i0 c0113i0 = (C0113i0) this.f883a.get(i);
            r rVar = c0113i0.f905b;
            if (rVar != null) {
                rVar.setNextTransition(this.f);
                rVar.setSharedElementNames(this.n, this.o);
            }
            switch (c0113i0.f904a) {
                case 1:
                    rVar.setNextAnim(c0113i0.f906c);
                    this.r.c0(rVar, false);
                    this.r.b(rVar);
                    break;
                case 2:
                default:
                    StringBuilder f = c.a.c.a.a.f("Unknown cmd: ");
                    f.append(c0113i0.f904a);
                    throw new IllegalArgumentException(f.toString());
                case 3:
                    rVar.setNextAnim(c0113i0.f907d);
                    this.r.X(rVar);
                    break;
                case 4:
                    rVar.setNextAnim(c0113i0.f907d);
                    this.r.L(rVar);
                    break;
                case 5:
                    rVar.setNextAnim(c0113i0.f906c);
                    this.r.c0(rVar, false);
                    this.r.g0(rVar);
                    break;
                case 6:
                    rVar.setNextAnim(c0113i0.f907d);
                    this.r.j(rVar);
                    break;
                case 7:
                    rVar.setNextAnim(c0113i0.f906c);
                    this.r.c0(rVar, false);
                    this.r.d(rVar);
                    break;
                case 8:
                    this.r.e0(rVar);
                    break;
                case 9:
                    this.r.e0(null);
                    break;
                case 10:
                    this.r.d0(rVar, c0113i0.h);
                    break;
            }
            if (!this.p && c0113i0.f904a != 1 && rVar != null) {
                this.r.Q(rVar);
            }
        }
        if (this.p) {
            return;
        }
        X x = this.r;
        x.R(x.p, true);
    }

    public void i(boolean z) {
        for (int size = this.f883a.size() - 1; size >= 0; size--) {
            C0113i0 c0113i0 = (C0113i0) this.f883a.get(size);
            r rVar = c0113i0.f905b;
            if (rVar != null) {
                int i = this.f;
                rVar.setNextTransition(i != 4097 ? i != 4099 ? i != 8194 ? 0 : 4097 : 4099 : 8194);
                rVar.setSharedElementNames(this.o, this.n);
            }
            switch (c0113i0.f904a) {
                case 1:
                    rVar.setNextAnim(c0113i0.f);
                    this.r.c0(rVar, true);
                    this.r.X(rVar);
                    break;
                case 2:
                default:
                    StringBuilder f = c.a.c.a.a.f("Unknown cmd: ");
                    f.append(c0113i0.f904a);
                    throw new IllegalArgumentException(f.toString());
                case 3:
                    rVar.setNextAnim(c0113i0.e);
                    this.r.b(rVar);
                    break;
                case 4:
                    rVar.setNextAnim(c0113i0.e);
                    this.r.g0(rVar);
                    break;
                case 5:
                    rVar.setNextAnim(c0113i0.f);
                    this.r.c0(rVar, true);
                    this.r.L(rVar);
                    break;
                case 6:
                    rVar.setNextAnim(c0113i0.e);
                    this.r.d(rVar);
                    break;
                case 7:
                    rVar.setNextAnim(c0113i0.f);
                    this.r.c0(rVar, true);
                    this.r.j(rVar);
                    break;
                case 8:
                    this.r.e0(null);
                    break;
                case 9:
                    this.r.e0(rVar);
                    break;
                case 10:
                    this.r.d0(rVar, c0113i0.g);
                    break;
            }
            if (!this.p && c0113i0.f904a != 3 && rVar != null) {
                this.r.Q(rVar);
            }
        }
        if (this.p || !z) {
            return;
        }
        X x = this.r;
        x.R(x.p, true);
    }

    public boolean j(int i) {
        int size = this.f883a.size();
        for (int i2 = 0; i2 < size; i2++) {
            r rVar = ((C0113i0) this.f883a.get(i2)).f905b;
            int i3 = rVar != null ? rVar.mContainerId : 0;
            if (i3 != 0 && i3 == i) {
                return true;
            }
        }
        return false;
    }

    public boolean k(ArrayList arrayList, int i, int i2) {
        if (i2 == i) {
            return false;
        }
        int size = this.f883a.size();
        int i3 = -1;
        for (int i4 = 0; i4 < size; i4++) {
            r rVar = ((C0113i0) this.f883a.get(i4)).f905b;
            int i5 = rVar != null ? rVar.mContainerId : 0;
            if (i5 != 0 && i5 != i3) {
                for (int i6 = i; i6 < i2; i6++) {
                    C0096a c0096a = (C0096a) arrayList.get(i6);
                    int size2 = c0096a.f883a.size();
                    for (int i7 = 0; i7 < size2; i7++) {
                        r rVar2 = ((C0113i0) c0096a.f883a.get(i7)).f905b;
                        if ((rVar2 != null ? rVar2.mContainerId : 0) == i5) {
                            return true;
                        }
                    }
                }
                i3 = i5;
            }
        }
        return false;
    }

    public C0096a m(int i, r rVar) {
        if (i == 0) {
            throw new IllegalArgumentException("Must use non-zero containerViewId");
        }
        f(i, rVar, null, 2);
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("BackStackEntry{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        if (this.t >= 0) {
            sb.append(" #");
            sb.append(this.t);
        }
        if (this.i != null) {
            sb.append(" ");
            sb.append(this.i);
        }
        sb.append("}");
        return sb.toString();
    }
}
