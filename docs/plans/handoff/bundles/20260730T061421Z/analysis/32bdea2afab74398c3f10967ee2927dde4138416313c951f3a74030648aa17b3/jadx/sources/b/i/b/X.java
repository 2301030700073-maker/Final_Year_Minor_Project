package b.i.b;

import android.animation.Animator;
import android.annotation.SuppressLint;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Looper;
import android.os.Parcelable;
import android.util.Log;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import androidx.activity.OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;
import androidx.fragment.app.BackStackState;
import androidx.fragment.app.FragmentManagerState;
import androidx.fragment.app.FragmentState;
import androidx.lifecycle.Lifecycle$State;
import b.j.AbstractC0137g;
import com.android.quickstep.fallback.RecentsState;
import com.android.systemui.shared.R;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public abstract class X {
    public b.a.l.c A;
    public boolean C;
    public boolean D;
    public boolean E;
    public boolean F;
    public boolean G;
    public ArrayList H;
    public ArrayList I;
    public ArrayList J;
    public ArrayList K;
    public C0099b0 L;

    /* renamed from: b, reason: collision with root package name */
    public boolean f880b;

    /* renamed from: d, reason: collision with root package name */
    public ArrayList f882d;
    public ArrayList e;
    public b.a.j g;
    public D q;
    public A r;
    public r s;
    public r t;
    public b.a.l.c y;
    public b.a.l.c z;

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f879a = new ArrayList();

    /* renamed from: c, reason: collision with root package name */
    public final C0109g0 f881c = new C0109g0();
    public final E f = new E(this);
    public final b.a.h h = new J(this, false);
    public final AtomicInteger i = new AtomicInteger();
    public final ConcurrentHashMap j = new ConcurrentHashMap();
    public final ConcurrentHashMap k = new ConcurrentHashMap();
    public ConcurrentHashMap l = new ConcurrentHashMap();
    public final K m = new K(this);
    public final G n = new G(this);
    public final CopyOnWriteArrayList o = new CopyOnWriteArrayList();
    public int p = -1;
    public L u = null;
    public L v = new L(this);
    public M w = null;
    public M x = new M(this);
    public ArrayDeque B = new ArrayDeque();
    public Runnable M = new N(this);

    public static boolean M(int i) {
        return Log.isLoggable("FragmentManager", i);
    }

    public void A(U u, boolean z) {
        if (!z) {
            if (this.q == null) {
                if (!this.F) {
                    throw new IllegalStateException("FragmentManager has not been attached to a host.");
                }
                throw new IllegalStateException("FragmentManager has been destroyed");
            }
            if (P()) {
                throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
            }
        }
        synchronized (this.f879a) {
            if (this.q == null) {
                if (!z) {
                    throw new IllegalStateException("Activity has been destroyed");
                }
            } else {
                this.f879a.add(u);
                b0();
            }
        }
    }

    public final void B(boolean z) {
        if (this.f880b) {
            throw new IllegalStateException("FragmentManager is already executing transactions");
        }
        if (this.q == null) {
            if (!this.F) {
                throw new IllegalStateException("FragmentManager has not been attached to a host.");
            }
            throw new IllegalStateException("FragmentManager has been destroyed");
        }
        if (Looper.myLooper() != this.q.f838c.getLooper()) {
            throw new IllegalStateException("Must be called from main thread of fragment host");
        }
        if (!z && P()) {
            throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
        }
        if (this.H == null) {
            this.H = new ArrayList();
            this.I = new ArrayList();
        }
        this.f880b = true;
        try {
            E(null, null);
        } finally {
            this.f880b = false;
        }
    }

    public boolean C(boolean z) {
        boolean z2;
        B(z);
        boolean z3 = false;
        while (true) {
            ArrayList arrayList = this.H;
            ArrayList arrayList2 = this.I;
            synchronized (this.f879a) {
                if (this.f879a.isEmpty()) {
                    z2 = false;
                } else {
                    int size = this.f879a.size();
                    z2 = false;
                    for (int i = 0; i < size; i++) {
                        z2 |= ((U) this.f879a.get(i)).a(arrayList, arrayList2);
                    }
                    this.f879a.clear();
                    this.q.f838c.removeCallbacks(this.M);
                }
            }
            if (!z2) {
                i0();
                x();
                this.f881c.b();
                return z3;
            }
            this.f880b = true;
            try {
                Y(this.H, this.I);
                f();
                z3 = true;
            } catch (Throwable th) {
                f();
                throw th;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v2, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r11v4 */
    public final void D(ArrayList arrayList, ArrayList arrayList2, int i, int i2) {
        ?? r11;
        int i3;
        int i4;
        boolean z;
        int i5;
        int i6;
        ArrayList arrayList3 = arrayList2;
        boolean z2 = ((C0096a) arrayList.get(i)).p;
        ArrayList arrayList4 = this.J;
        if (arrayList4 == null) {
            this.J = new ArrayList();
        } else {
            arrayList4.clear();
        }
        this.J.addAll(this.f881c.i());
        r rVar = this.t;
        int i7 = i;
        boolean z3 = false;
        while (true) {
            int i8 = 1;
            if (i7 >= i2) {
                this.J.clear();
                if (z2) {
                    r11 = 1;
                } else if (this.p >= 1) {
                    r11 = 1;
                    q0.q(this.q.f837b, this.r, arrayList, arrayList2, i, i2, false, this.m);
                } else {
                    r11 = 1;
                }
                int i9 = i;
                while (i9 < i2) {
                    C0096a c0096a = (C0096a) arrayList.get(i9);
                    if (((Boolean) arrayList2.get(i9)).booleanValue()) {
                        c0096a.c(-1);
                        c0096a.i(i9 == i2 + (-1) ? r11 : false);
                    } else {
                        c0096a.c(r11);
                        c0096a.h();
                    }
                    i9++;
                }
                if (z2) {
                    b.d.i iVar = new b.d.i(0);
                    a(iVar);
                    i3 = i;
                    int i10 = i2;
                    for (int i11 = i2 - 1; i11 >= i3; i11--) {
                        C0096a c0096a2 = (C0096a) arrayList.get(i11);
                        boolean booleanValue = ((Boolean) arrayList2.get(i11)).booleanValue();
                        int i12 = 0;
                        while (true) {
                            if (i12 >= c0096a2.f883a.size()) {
                                z = false;
                            } else if (C0096a.l((C0113i0) c0096a2.f883a.get(i12))) {
                                z = r11;
                            } else {
                                i12++;
                            }
                        }
                        if ((!z || c0096a2.k(arrayList, i11 + 1, i2)) ? false : r11) {
                            if (this.K == null) {
                                this.K = new ArrayList();
                            }
                            W w = new W(c0096a2, booleanValue);
                            this.K.add(w);
                            for (int i13 = 0; i13 < c0096a2.f883a.size(); i13++) {
                                C0113i0 c0113i0 = (C0113i0) c0096a2.f883a.get(i13);
                                if (C0096a.l(c0113i0)) {
                                    c0113i0.f905b.setOnStartEnterTransitionListener(w);
                                }
                            }
                            if (booleanValue) {
                                c0096a2.h();
                            } else {
                                c0096a2.i(false);
                            }
                            i10--;
                            if (i11 != i10) {
                                arrayList.remove(i11);
                                arrayList.add(i10, c0096a2);
                            }
                            a(iVar);
                        }
                    }
                    int i14 = iVar.f638c;
                    for (int i15 = 0; i15 < i14; i15++) {
                        r rVar2 = (r) iVar.f637b[i15];
                        if (!rVar2.mAdded) {
                            View requireView = rVar2.requireView();
                            rVar2.mPostponedAlpha = requireView.getAlpha();
                            requireView.setAlpha(RecentsState.NO_OFFSET);
                        }
                    }
                    i4 = i10;
                } else {
                    i3 = i;
                    i4 = i2;
                }
                if (i4 != i3 && z2) {
                    if (this.p >= r11) {
                        q0.q(this.q.f837b, this.r, arrayList, arrayList2, i, i4, true, this.m);
                    }
                    R(this.p, r11);
                }
                while (i3 < i2) {
                    C0096a c0096a3 = (C0096a) arrayList.get(i3);
                    if (((Boolean) arrayList2.get(i3)).booleanValue() && c0096a3.t >= 0) {
                        c0096a3.t = -1;
                    }
                    ArrayList arrayList5 = c0096a3.q;
                    i3++;
                }
                return;
            }
            C0096a c0096a4 = (C0096a) arrayList.get(i7);
            int i16 = 3;
            if (((Boolean) arrayList3.get(i7)).booleanValue()) {
                int i17 = 1;
                ArrayList arrayList6 = this.J;
                int size = c0096a4.f883a.size() - 1;
                while (size >= 0) {
                    C0113i0 c0113i02 = (C0113i0) c0096a4.f883a.get(size);
                    int i18 = c0113i02.f904a;
                    if (i18 != i17) {
                        if (i18 != 3) {
                            switch (i18) {
                                case 8:
                                    rVar = null;
                                    break;
                                case 9:
                                    rVar = c0113i02.f905b;
                                    break;
                                case 10:
                                    c0113i02.h = c0113i02.g;
                                    break;
                            }
                            size--;
                            i17 = 1;
                        }
                        arrayList6.add(c0113i02.f905b);
                        size--;
                        i17 = 1;
                    }
                    arrayList6.remove(c0113i02.f905b);
                    size--;
                    i17 = 1;
                }
            } else {
                ArrayList arrayList7 = this.J;
                int i19 = 0;
                while (i19 < c0096a4.f883a.size()) {
                    C0113i0 c0113i03 = (C0113i0) c0096a4.f883a.get(i19);
                    int i20 = c0113i03.f904a;
                    if (i20 != i8) {
                        if (i20 == 2) {
                            r rVar3 = c0113i03.f905b;
                            int i21 = rVar3.mContainerId;
                            int size2 = arrayList7.size() - 1;
                            boolean z4 = false;
                            while (size2 >= 0) {
                                r rVar4 = (r) arrayList7.get(size2);
                                if (rVar4.mContainerId != i21) {
                                    i6 = i21;
                                } else if (rVar4 == rVar3) {
                                    i6 = i21;
                                    z4 = true;
                                } else {
                                    if (rVar4 == rVar) {
                                        i6 = i21;
                                        c0096a4.f883a.add(i19, new C0113i0(9, rVar4));
                                        i19++;
                                        rVar = null;
                                    } else {
                                        i6 = i21;
                                    }
                                    C0113i0 c0113i04 = new C0113i0(3, rVar4);
                                    c0113i04.f906c = c0113i03.f906c;
                                    c0113i04.e = c0113i03.e;
                                    c0113i04.f907d = c0113i03.f907d;
                                    c0113i04.f = c0113i03.f;
                                    c0096a4.f883a.add(i19, c0113i04);
                                    arrayList7.remove(rVar4);
                                    i19++;
                                }
                                size2--;
                                i21 = i6;
                            }
                            if (z4) {
                                c0096a4.f883a.remove(i19);
                                i19--;
                            } else {
                                i5 = 1;
                                c0113i03.f904a = 1;
                                arrayList7.add(rVar3);
                                i19 += i5;
                                i8 = i5;
                                i16 = 3;
                            }
                        } else if (i20 == i16 || i20 == 6) {
                            arrayList7.remove(c0113i03.f905b);
                            r rVar5 = c0113i03.f905b;
                            if (rVar5 == rVar) {
                                c0096a4.f883a.add(i19, new C0113i0(9, rVar5));
                                i19++;
                                rVar = null;
                            }
                        } else if (i20 == 7) {
                            i5 = 1;
                        } else if (i20 == 8) {
                            c0096a4.f883a.add(i19, new C0113i0(9, rVar));
                            i19++;
                            rVar = c0113i03.f905b;
                        }
                        i5 = 1;
                        i19 += i5;
                        i8 = i5;
                        i16 = 3;
                    } else {
                        i5 = i8;
                    }
                    arrayList7.add(c0113i03.f905b);
                    i19 += i5;
                    i8 = i5;
                    i16 = 3;
                }
            }
            z3 = z3 || c0096a4.g;
            i7++;
            arrayList3 = arrayList2;
        }
    }

    public final void E(ArrayList arrayList, ArrayList arrayList2) {
        int indexOf;
        int indexOf2;
        ArrayList arrayList3 = this.K;
        int size = arrayList3 == null ? 0 : arrayList3.size();
        int i = 0;
        while (i < size) {
            W w = (W) this.K.get(i);
            if (arrayList == null || w.f876a || (indexOf2 = arrayList.indexOf(w.f877b)) == -1 || arrayList2 == null || !((Boolean) arrayList2.get(indexOf2)).booleanValue()) {
                if ((w.f878c == 0) || (arrayList != null && w.f877b.k(arrayList, 0, arrayList.size()))) {
                    this.K.remove(i);
                    i--;
                    size--;
                    if (arrayList == null || w.f876a || (indexOf = arrayList.indexOf(w.f877b)) == -1 || arrayList2 == null || !((Boolean) arrayList2.get(indexOf)).booleanValue()) {
                        w.a();
                    } else {
                        C0096a c0096a = w.f877b;
                        c0096a.r.g(c0096a, w.f876a, false, false);
                    }
                }
            } else {
                this.K.remove(i);
                i--;
                size--;
                C0096a c0096a2 = w.f877b;
                c0096a2.r.g(c0096a2, w.f876a, false, false);
            }
            i++;
        }
    }

    public r F(String str) {
        return this.f881c.d(str);
    }

    public r G(int i) {
        C0109g0 c0109g0 = this.f881c;
        int size = c0109g0.f898a.size();
        while (true) {
            size--;
            if (size < 0) {
                for (C0107f0 c0107f0 : c0109g0.f899b.values()) {
                    if (c0107f0 != null) {
                        r rVar = c0107f0.f895c;
                        if (rVar.mFragmentId == i) {
                            return rVar;
                        }
                    }
                }
                return null;
            }
            r rVar2 = (r) c0109g0.f898a.get(size);
            if (rVar2 != null && rVar2.mFragmentId == i) {
                return rVar2;
            }
        }
    }

    public r H(String str) {
        C0109g0 c0109g0 = this.f881c;
        Objects.requireNonNull(c0109g0);
        int size = c0109g0.f898a.size();
        while (true) {
            size--;
            if (size < 0) {
                for (C0107f0 c0107f0 : c0109g0.f899b.values()) {
                    if (c0107f0 != null) {
                        r rVar = c0107f0.f895c;
                        if (str.equals(rVar.mTag)) {
                            return rVar;
                        }
                    }
                }
                return null;
            }
            r rVar2 = (r) c0109g0.f898a.get(size);
            if (rVar2 != null && str.equals(rVar2.mTag)) {
                return rVar2;
            }
        }
    }

    public final ViewGroup I(r rVar) {
        ViewGroup viewGroup = rVar.mContainer;
        if (viewGroup != null) {
            return viewGroup;
        }
        if (rVar.mContainerId > 0 && this.r.c()) {
            View b2 = this.r.b(rVar.mContainerId);
            if (b2 instanceof ViewGroup) {
                return (ViewGroup) b2;
            }
        }
        return null;
    }

    public L J() {
        L l = this.u;
        if (l != null) {
            return l;
        }
        r rVar = this.s;
        return rVar != null ? rVar.mFragmentManager.J() : this.v;
    }

    public M K() {
        M m = this.w;
        if (m != null) {
            return m;
        }
        r rVar = this.s;
        return rVar != null ? rVar.mFragmentManager.K() : this.x;
    }

    public void L(r rVar) {
        if (M(2)) {
            Log.v("FragmentManager", "hide: " + rVar);
        }
        if (rVar.mHidden) {
            return;
        }
        rVar.mHidden = true;
        rVar.mHiddenChanged = true ^ rVar.mHiddenChanged;
        f0(rVar);
    }

    public final boolean N(r rVar) {
        boolean z;
        if (rVar.mHasMenu && rVar.mMenuVisible) {
            return true;
        }
        X x = rVar.mChildFragmentManager;
        Iterator it = ((ArrayList) x.f881c.g()).iterator();
        boolean z2 = false;
        while (true) {
            if (!it.hasNext()) {
                z = false;
                break;
            }
            r rVar2 = (r) it.next();
            if (rVar2 != null) {
                z2 = x.N(rVar2);
            }
            if (z2) {
                z = true;
                break;
            }
        }
        return z;
    }

    public boolean O(r rVar) {
        if (rVar == null) {
            return true;
        }
        X x = rVar.mFragmentManager;
        return rVar.equals(x.t) && O(x.s);
    }

    public boolean P() {
        return this.D || this.E;
    }

    public void Q(r rVar) {
        Animator animator;
        if (!this.f881c.c(rVar.mWho)) {
            if (M(3)) {
                Log.d("FragmentManager", "Ignoring moving " + rVar + " to state " + this.p + "since it is not added to " + this);
                return;
            }
            return;
        }
        S(rVar, this.p);
        View view = rVar.mView;
        if (view != null && rVar.mIsNewlyAdded && rVar.mContainer != null) {
            float f = rVar.mPostponedAlpha;
            if (f > RecentsState.NO_OFFSET) {
                view.setAlpha(f);
            }
            rVar.mPostponedAlpha = RecentsState.NO_OFFSET;
            rVar.mIsNewlyAdded = false;
            C0129y p = b.e.b.d.p(this.q.f837b, rVar, true);
            if (p != null) {
                Animation animation = p.f966a;
                if (animation != null) {
                    rVar.mView.startAnimation(animation);
                } else {
                    p.f967b.setTarget(rVar.mView);
                    p.f967b.start();
                }
            }
        }
        if (rVar.mHiddenChanged) {
            if (rVar.mView != null) {
                C0129y p2 = b.e.b.d.p(this.q.f837b, rVar, !rVar.mHidden);
                if (p2 == null || (animator = p2.f967b) == null) {
                    if (p2 != null) {
                        rVar.mView.startAnimation(p2.f966a);
                        p2.f966a.start();
                    }
                    rVar.mView.setVisibility((!rVar.mHidden || rVar.isHideReplaced()) ? 0 : 8);
                    if (rVar.isHideReplaced()) {
                        rVar.setHideReplaced(false);
                    }
                } else {
                    animator.setTarget(rVar.mView);
                    if (!rVar.mHidden) {
                        rVar.mView.setVisibility(0);
                    } else if (rVar.isHideReplaced()) {
                        rVar.setHideReplaced(false);
                    } else {
                        ViewGroup viewGroup = rVar.mContainer;
                        View view2 = rVar.mView;
                        viewGroup.startViewTransition(view2);
                        p2.f967b.addListener(new O(this, viewGroup, view2, rVar));
                    }
                    p2.f967b.start();
                }
            }
            if (rVar.mAdded && N(rVar)) {
                this.C = true;
            }
            rVar.mHiddenChanged = false;
            rVar.onHiddenChanged(rVar.mHidden);
        }
    }

    public void R(int i, boolean z) {
        D d2;
        if (this.q == null && i != -1) {
            throw new IllegalStateException("No activity");
        }
        if (z || i != this.p) {
            this.p = i;
            Iterator it = this.f881c.i().iterator();
            while (it.hasNext()) {
                Q((r) it.next());
            }
            Iterator it2 = ((ArrayList) this.f881c.f()).iterator();
            while (true) {
                boolean z2 = false;
                if (!it2.hasNext()) {
                    break;
                }
                C0107f0 c0107f0 = (C0107f0) it2.next();
                r rVar = c0107f0.f895c;
                if (!rVar.mIsNewlyAdded) {
                    Q(rVar);
                }
                if (rVar.mRemoving && !rVar.isInBackStack()) {
                    z2 = true;
                }
                if (z2) {
                    this.f881c.k(c0107f0);
                }
            }
            h0();
            if (this.C && (d2 = this.q) != null && this.p == 7) {
                ((C0123s) d2).e.supportInvalidateOptionsMenu();
                this.C = false;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x005c, code lost:
    
        if (r0 != 5) goto L102;
     */
    /* JADX WARN: Removed duplicated region for block: B:103:0x0187  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0071  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void S(b.i.b.r r17, int r18) {
        /*
            Method dump skipped, instructions count: 447
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: b.i.b.X.S(b.i.b.r, int):void");
    }

    public void T() {
        if (this.q == null) {
            return;
        }
        this.D = false;
        this.E = false;
        this.L.i = false;
        for (r rVar : this.f881c.i()) {
            if (rVar != null) {
                rVar.noteStateNotSaved();
            }
        }
    }

    public void U(C0107f0 c0107f0) {
        r rVar = c0107f0.f895c;
        if (rVar.mDeferStart) {
            if (this.f880b) {
                this.G = true;
            } else {
                rVar.mDeferStart = false;
                S(rVar, this.p);
            }
        }
    }

    public boolean V() {
        C(false);
        B(true);
        r rVar = this.t;
        if (rVar != null && rVar.getChildFragmentManager().V()) {
            return true;
        }
        boolean W = W(this.H, this.I, null, -1, 0);
        if (W) {
            this.f880b = true;
            try {
                Y(this.H, this.I);
            } finally {
                f();
            }
        }
        i0();
        x();
        this.f881c.b();
        return W;
    }

    public boolean W(ArrayList arrayList, ArrayList arrayList2, String str, int i, int i2) {
        Boolean bool = Boolean.TRUE;
        ArrayList arrayList3 = this.f882d;
        if (arrayList3 == null) {
            return false;
        }
        if (str == null && i < 0 && (i2 & 1) == 0) {
            int size = arrayList3.size() - 1;
            if (size < 0) {
                return false;
            }
            arrayList.add(this.f882d.remove(size));
            arrayList2.add(bool);
        } else {
            int i3 = -1;
            if (str != null || i >= 0) {
                int size2 = this.f882d.size() - 1;
                while (size2 >= 0) {
                    C0096a c0096a = (C0096a) this.f882d.get(size2);
                    if ((str != null && str.equals(c0096a.i)) || (i >= 0 && i == c0096a.t)) {
                        break;
                    }
                    size2--;
                }
                if (size2 < 0) {
                    return false;
                }
                if ((i2 & 1) != 0) {
                    while (true) {
                        size2--;
                        if (size2 < 0) {
                            break;
                        }
                        C0096a c0096a2 = (C0096a) this.f882d.get(size2);
                        if (str == null || !str.equals(c0096a2.i)) {
                            if (i < 0 || i != c0096a2.t) {
                                break;
                            }
                        }
                    }
                }
                i3 = size2;
            }
            if (i3 == this.f882d.size() - 1) {
                return false;
            }
            for (int size3 = this.f882d.size() - 1; size3 > i3; size3--) {
                arrayList.add(this.f882d.remove(size3));
                arrayList2.add(bool);
            }
        }
        return true;
    }

    public void X(r rVar) {
        if (M(2)) {
            Log.v("FragmentManager", "remove: " + rVar + " nesting=" + rVar.mBackStackNesting);
        }
        boolean z = !rVar.isInBackStack();
        if (!rVar.mDetached || z) {
            this.f881c.l(rVar);
            if (N(rVar)) {
                this.C = true;
            }
            rVar.mRemoving = true;
            f0(rVar);
        }
    }

    public final void Y(ArrayList arrayList, ArrayList arrayList2) {
        if (arrayList.isEmpty()) {
            return;
        }
        if (arrayList.size() != arrayList2.size()) {
            throw new IllegalStateException("Internal error with the back stack records");
        }
        E(arrayList, arrayList2);
        int size = arrayList.size();
        int i = 0;
        int i2 = 0;
        while (i < size) {
            if (!((C0096a) arrayList.get(i)).p) {
                if (i2 != i) {
                    D(arrayList, arrayList2, i2, i);
                }
                i2 = i + 1;
                if (((Boolean) arrayList2.get(i)).booleanValue()) {
                    while (i2 < size && ((Boolean) arrayList2.get(i2)).booleanValue() && !((C0096a) arrayList.get(i2)).p) {
                        i2++;
                    }
                }
                D(arrayList, arrayList2, i, i2);
                i = i2 - 1;
            }
            i++;
        }
        if (i2 != size) {
            D(arrayList, arrayList2, i2, size);
        }
    }

    public void Z(Parcelable parcelable) {
        C0107f0 c0107f0;
        if (parcelable == null) {
            return;
        }
        FragmentManagerState fragmentManagerState = (FragmentManagerState) parcelable;
        if (fragmentManagerState.f109a == null) {
            return;
        }
        this.f881c.f899b.clear();
        Iterator it = fragmentManagerState.f109a.iterator();
        while (it.hasNext()) {
            FragmentState fragmentState = (FragmentState) it.next();
            if (fragmentState != null) {
                r rVar = (r) this.L.f887c.get(fragmentState.f114b);
                if (rVar != null) {
                    if (M(2)) {
                        Log.v("FragmentManager", "restoreSaveState: re-attaching retained " + rVar);
                    }
                    c0107f0 = new C0107f0(this.n, this.f881c, rVar, fragmentState);
                } else {
                    c0107f0 = new C0107f0(this.n, this.f881c, this.q.f837b.getClassLoader(), J(), fragmentState);
                }
                r rVar2 = c0107f0.f895c;
                rVar2.mFragmentManager = this;
                if (M(2)) {
                    StringBuilder f = c.a.c.a.a.f("restoreSaveState: active (");
                    f.append(rVar2.mWho);
                    f.append("): ");
                    f.append(rVar2);
                    Log.v("FragmentManager", f.toString());
                }
                c0107f0.l(this.q.f837b.getClassLoader());
                this.f881c.j(c0107f0);
                c0107f0.e = this.p;
            }
        }
        C0099b0 c0099b0 = this.L;
        Objects.requireNonNull(c0099b0);
        Iterator it2 = new ArrayList(c0099b0.f887c.values()).iterator();
        while (it2.hasNext()) {
            r rVar3 = (r) it2.next();
            if (!this.f881c.c(rVar3.mWho)) {
                if (M(2)) {
                    Log.v("FragmentManager", "Discarding retained Fragment " + rVar3 + " that was not found in the set of active Fragments " + fragmentManagerState.f109a);
                }
                this.L.d(rVar3);
                rVar3.mFragmentManager = this;
                C0107f0 c0107f02 = new C0107f0(this.n, this.f881c, rVar3);
                c0107f02.e = 1;
                c0107f02.j();
                rVar3.mRemoving = true;
                c0107f02.j();
            }
        }
        C0109g0 c0109g0 = this.f881c;
        ArrayList<String> arrayList = fragmentManagerState.f110b;
        c0109g0.f898a.clear();
        if (arrayList != null) {
            for (String str : arrayList) {
                r d2 = c0109g0.d(str);
                if (d2 == null) {
                    throw new IllegalStateException("No instantiated fragment for (" + str + ")");
                }
                if (M(2)) {
                    Log.v("FragmentManager", "restoreSaveState: added (" + str + "): " + d2);
                }
                c0109g0.a(d2);
            }
        }
        r rVar4 = null;
        if (fragmentManagerState.f111c != null) {
            this.f882d = new ArrayList(fragmentManagerState.f111c.length);
            int i = 0;
            while (true) {
                BackStackState[] backStackStateArr = fragmentManagerState.f111c;
                if (i >= backStackStateArr.length) {
                    break;
                }
                BackStackState backStackState = backStackStateArr[i];
                Objects.requireNonNull(backStackState);
                C0096a c0096a = new C0096a(this);
                int i2 = 0;
                int i3 = 0;
                while (i2 < backStackState.f97a.length) {
                    C0113i0 c0113i0 = new C0113i0();
                    int i4 = i2 + 1;
                    c0113i0.f904a = backStackState.f97a[i2];
                    if (M(2)) {
                        Log.v("FragmentManager", "Instantiate " + c0096a + " op #" + i3 + " base fragment #" + backStackState.f97a[i4]);
                    }
                    String str2 = (String) backStackState.f98b.get(i3);
                    if (str2 != null) {
                        c0113i0.f905b = this.f881c.d(str2);
                    } else {
                        c0113i0.f905b = rVar4;
                    }
                    c0113i0.g = Lifecycle$State.values()[backStackState.f99c[i3]];
                    c0113i0.h = Lifecycle$State.values()[backStackState.f100d[i3]];
                    int[] iArr = backStackState.f97a;
                    int i5 = i4 + 1;
                    int i6 = iArr[i4];
                    c0113i0.f906c = i6;
                    int i7 = i5 + 1;
                    int i8 = iArr[i5];
                    c0113i0.f907d = i8;
                    int i9 = i7 + 1;
                    int i10 = iArr[i7];
                    c0113i0.e = i10;
                    int i11 = iArr[i9];
                    c0113i0.f = i11;
                    c0096a.f884b = i6;
                    c0096a.f885c = i8;
                    c0096a.f886d = i10;
                    c0096a.e = i11;
                    c0096a.b(c0113i0);
                    i3++;
                    rVar4 = null;
                    i2 = i9 + 1;
                }
                c0096a.f = backStackState.e;
                c0096a.i = backStackState.f;
                c0096a.t = backStackState.g;
                c0096a.g = true;
                c0096a.j = backStackState.h;
                c0096a.k = backStackState.i;
                c0096a.l = backStackState.j;
                c0096a.m = backStackState.k;
                c0096a.n = backStackState.l;
                c0096a.o = backStackState.m;
                c0096a.p = backStackState.n;
                c0096a.c(1);
                if (M(2)) {
                    Log.v("FragmentManager", "restoreAllState: back stack #" + i + " (index " + c0096a.t + "): " + c0096a);
                    PrintWriter printWriter = new PrintWriter(new E0("FragmentManager"));
                    c0096a.g("  ", printWriter, false);
                    printWriter.close();
                }
                this.f882d.add(c0096a);
                i++;
                rVar4 = null;
            }
        } else {
            this.f882d = null;
        }
        this.i.set(fragmentManagerState.f112d);
        String str3 = fragmentManagerState.e;
        if (str3 != null) {
            r F = F(str3);
            this.t = F;
            t(F);
        }
        ArrayList arrayList2 = fragmentManagerState.f;
        if (arrayList2 != null) {
            for (int i12 = 0; i12 < arrayList2.size(); i12++) {
                this.j.put(arrayList2.get(i12), fragmentManagerState.g.get(i12));
            }
        }
        this.B = new ArrayDeque(fragmentManagerState.h);
    }

    public final void a(b.d.i iVar) {
        int i = this.p;
        if (i < 1) {
            return;
        }
        int min = Math.min(i, 5);
        for (r rVar : this.f881c.i()) {
            if (rVar.mState < min) {
                S(rVar, min);
                if (rVar.mView != null && !rVar.mHidden && rVar.mIsNewlyAdded) {
                    iVar.add(rVar);
                }
            }
        }
    }

    public Parcelable a0() {
        BackStackState[] backStackStateArr;
        ArrayList arrayList;
        int size;
        if (this.K != null) {
            while (!this.K.isEmpty()) {
                ((W) this.K.remove(0)).a();
            }
        }
        z();
        C(true);
        this.D = true;
        this.L.i = true;
        C0109g0 c0109g0 = this.f881c;
        Objects.requireNonNull(c0109g0);
        ArrayList arrayList2 = new ArrayList(c0109g0.f899b.size());
        Iterator it = c0109g0.f899b.values().iterator();
        while (true) {
            backStackStateArr = null;
            backStackStateArr = null;
            if (!it.hasNext()) {
                break;
            }
            C0107f0 c0107f0 = (C0107f0) it.next();
            if (c0107f0 != null) {
                r rVar = c0107f0.f895c;
                FragmentState fragmentState = new FragmentState(rVar);
                if (c0107f0.f895c.mState <= -1 || fragmentState.m != null) {
                    fragmentState.m = c0107f0.f895c.mSavedFragmentState;
                } else {
                    Bundle bundle = new Bundle();
                    c0107f0.f895c.performSaveInstanceState(bundle);
                    c0107f0.f893a.j(c0107f0.f895c, bundle, false);
                    Bundle bundle2 = bundle.isEmpty() ? null : bundle;
                    if (c0107f0.f895c.mView != null) {
                        c0107f0.n();
                    }
                    if (c0107f0.f895c.mSavedViewState != null) {
                        if (bundle2 == null) {
                            bundle2 = new Bundle();
                        }
                        bundle2.putSparseParcelableArray("android:view_state", c0107f0.f895c.mSavedViewState);
                    }
                    if (c0107f0.f895c.mSavedViewRegistryState != null) {
                        if (bundle2 == null) {
                            bundle2 = new Bundle();
                        }
                        bundle2.putBundle("android:view_registry_state", c0107f0.f895c.mSavedViewRegistryState);
                    }
                    if (!c0107f0.f895c.mUserVisibleHint) {
                        if (bundle2 == null) {
                            bundle2 = new Bundle();
                        }
                        bundle2.putBoolean("android:user_visible_hint", c0107f0.f895c.mUserVisibleHint);
                    }
                    fragmentState.m = bundle2;
                    if (c0107f0.f895c.mTargetWho != null) {
                        if (bundle2 == null) {
                            fragmentState.m = new Bundle();
                        }
                        fragmentState.m.putString("android:target_state", c0107f0.f895c.mTargetWho);
                        int i = c0107f0.f895c.mTargetRequestCode;
                        if (i != 0) {
                            fragmentState.m.putInt("android:target_req_state", i);
                        }
                    }
                }
                arrayList2.add(fragmentState);
                if (M(2)) {
                    Log.v("FragmentManager", "Saved state of " + rVar + ": " + fragmentState.m);
                }
            }
        }
        if (arrayList2.isEmpty()) {
            if (M(2)) {
                Log.v("FragmentManager", "saveAllState: no fragments!");
            }
            return null;
        }
        C0109g0 c0109g02 = this.f881c;
        synchronized (c0109g02.f898a) {
            if (c0109g02.f898a.isEmpty()) {
                arrayList = null;
            } else {
                arrayList = new ArrayList(c0109g02.f898a.size());
                Iterator it2 = c0109g02.f898a.iterator();
                while (it2.hasNext()) {
                    r rVar2 = (r) it2.next();
                    arrayList.add(rVar2.mWho);
                    if (M(2)) {
                        Log.v("FragmentManager", "saveAllState: adding fragment (" + rVar2.mWho + "): " + rVar2);
                    }
                }
            }
        }
        ArrayList arrayList3 = this.f882d;
        if (arrayList3 != null && (size = arrayList3.size()) > 0) {
            backStackStateArr = new BackStackState[size];
            for (int i2 = 0; i2 < size; i2++) {
                backStackStateArr[i2] = new BackStackState((C0096a) this.f882d.get(i2));
                if (M(2)) {
                    Log.v("FragmentManager", "saveAllState: adding back stack #" + i2 + ": " + this.f882d.get(i2));
                }
            }
        }
        FragmentManagerState fragmentManagerState = new FragmentManagerState();
        fragmentManagerState.f109a = arrayList2;
        fragmentManagerState.f110b = arrayList;
        fragmentManagerState.f111c = backStackStateArr;
        fragmentManagerState.f112d = this.i.get();
        r rVar3 = this.t;
        if (rVar3 != null) {
            fragmentManagerState.e = rVar3.mWho;
        }
        fragmentManagerState.f.addAll(this.j.keySet());
        fragmentManagerState.g.addAll(this.j.values());
        fragmentManagerState.h = new ArrayList(this.B);
        return fragmentManagerState;
    }

    public void b(r rVar) {
        if (M(2)) {
            Log.v("FragmentManager", "add: " + rVar);
        }
        this.f881c.j(h(rVar));
        if (rVar.mDetached) {
            return;
        }
        this.f881c.a(rVar);
        rVar.mRemoving = false;
        if (rVar.mView == null) {
            rVar.mHiddenChanged = false;
        }
        if (N(rVar)) {
            this.C = true;
        }
    }

    public void b0() {
        synchronized (this.f879a) {
            boolean z = (this.K == null || this.K.isEmpty()) ? false : true;
            boolean z2 = this.f879a.size() == 1;
            if (z || z2) {
                this.q.f838c.removeCallbacks(this.M);
                this.q.f838c.post(this.M);
                i0();
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @SuppressLint({"SyntheticAccessor"})
    public void c(D d2, A a2, r rVar) {
        String str;
        if (this.q != null) {
            throw new IllegalStateException("Already attached");
        }
        this.q = d2;
        this.r = a2;
        this.s = rVar;
        if (rVar != null) {
            this.o.add(new P(this, rVar));
        } else if (d2 instanceof InterfaceC0101c0) {
            this.o.add((InterfaceC0101c0) d2);
        }
        if (this.s != null) {
            i0();
        }
        if (d2 instanceof b.a.k) {
            b.a.k kVar = (b.a.k) d2;
            this.g = kVar.getOnBackPressedDispatcher();
            r rVar2 = kVar;
            if (rVar != null) {
                rVar2 = rVar;
            }
            b.a.j jVar = this.g;
            b.a.h hVar = this.h;
            Objects.requireNonNull(jVar);
            AbstractC0137g lifecycle = rVar2.getLifecycle();
            if (((b.j.l) lifecycle).f996b != Lifecycle$State.DESTROYED) {
                hVar.f220b.add(new OnBackPressedDispatcher$LifecycleOnBackPressedCancellable(jVar, lifecycle, hVar));
            }
        }
        if (rVar != null) {
            C0099b0 c0099b0 = rVar.mFragmentManager.L;
            C0099b0 c0099b02 = (C0099b0) c0099b0.f888d.get(rVar.mWho);
            if (c0099b02 == null) {
                c0099b02 = new C0099b0(c0099b0.f);
                c0099b0.f888d.put(rVar.mWho, c0099b02);
            }
            this.L = c0099b02;
        } else if (d2 instanceof b.j.I) {
            b.j.H viewModelStore = ((b.j.I) d2).getViewModelStore();
            Object obj = C0099b0.j;
            String canonicalName = C0099b0.class.getCanonicalName();
            if (canonicalName == null) {
                throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
            }
            String e = c.a.c.a.a.e("androidx.lifecycle.ViewModelProvider.DefaultKey:", canonicalName);
            b.j.B b2 = (b.j.B) viewModelStore.f985a.get(e);
            if (!C0099b0.class.isInstance(b2)) {
                b2 = obj instanceof b.j.E ? ((b.j.E) obj).c(e, C0099b0.class) : ((C0097a0) obj).a(C0099b0.class);
                b.j.B b3 = (b.j.B) viewModelStore.f985a.put(e, b2);
                if (b3 != null) {
                    b3.a();
                }
            } else if (obj instanceof b.j.G) {
                ((b.j.G) obj).b(b2);
            }
            this.L = (C0099b0) b2;
        } else {
            this.L = new C0099b0(false);
        }
        this.L.i = P();
        this.f881c.f900c = this.L;
        Object obj2 = this.q;
        if (obj2 instanceof b.a.l.h) {
            b.a.l.g activityResultRegistry = ((b.a.l.h) obj2).getActivityResultRegistry();
            if (rVar != null) {
                str = rVar.mWho + ":";
            } else {
                str = "";
            }
            String e2 = c.a.c.a.a.e("FragmentManager:", str);
            this.y = activityResultRegistry.c(c.a.c.a.a.e(e2, "StartActivityForResult"), new b.a.l.j.d(), new Q(this));
            this.z = activityResultRegistry.c(c.a.c.a.a.e(e2, "StartIntentSenderForResult"), new S(), new H(this));
            this.A = activityResultRegistry.c(c.a.c.a.a.e(e2, "RequestPermissions"), new b.a.l.j.c(), new I(this));
        }
    }

    public void c0(r rVar, boolean z) {
        ViewGroup I = I(rVar);
        if (I == null || !(I instanceof B)) {
            return;
        }
        ((B) I).f831c = !z;
    }

    public void d(r rVar) {
        if (M(2)) {
            Log.v("FragmentManager", "attach: " + rVar);
        }
        if (rVar.mDetached) {
            rVar.mDetached = false;
            if (rVar.mAdded) {
                return;
            }
            this.f881c.a(rVar);
            if (M(2)) {
                Log.v("FragmentManager", "add from attach: " + rVar);
            }
            if (N(rVar)) {
                this.C = true;
            }
        }
    }

    public void d0(r rVar, Lifecycle$State lifecycle$State) {
        if (rVar.equals(F(rVar.mWho)) && (rVar.mHost == null || rVar.mFragmentManager == this)) {
            rVar.mMaxState = lifecycle$State;
            return;
        }
        throw new IllegalArgumentException("Fragment " + rVar + " is not an active fragment of FragmentManager " + this);
    }

    public final void e(r rVar) {
        HashSet hashSet = (HashSet) this.l.get(rVar);
        if (hashSet != null) {
            Iterator it = hashSet.iterator();
            while (it.hasNext()) {
                ((b.e.f.b) it.next()).a();
            }
            hashSet.clear();
            i(rVar);
            this.l.remove(rVar);
        }
    }

    public void e0(r rVar) {
        if (rVar == null || (rVar.equals(F(rVar.mWho)) && (rVar.mHost == null || rVar.mFragmentManager == this))) {
            r rVar2 = this.t;
            this.t = rVar;
            t(rVar2);
            t(this.t);
            return;
        }
        throw new IllegalArgumentException("Fragment " + rVar + " is not an active fragment of FragmentManager " + this);
    }

    public final void f() {
        this.f880b = false;
        this.I.clear();
        this.H.clear();
    }

    public final void f0(r rVar) {
        ViewGroup I = I(rVar);
        if (I != null) {
            if (I.getTag(R.id.visible_removing_fragment_view_tag) == null) {
                I.setTag(R.id.visible_removing_fragment_view_tag, rVar);
            }
            ((r) I.getTag(R.id.visible_removing_fragment_view_tag)).setNextAnim(rVar.getNextAnim());
        }
    }

    public void g(C0096a c0096a, boolean z, boolean z2, boolean z3) {
        if (z) {
            c0096a.i(z3);
        } else {
            c0096a.h();
        }
        ArrayList arrayList = new ArrayList(1);
        ArrayList arrayList2 = new ArrayList(1);
        arrayList.add(c0096a);
        arrayList2.add(Boolean.valueOf(z));
        if (z2 && this.p >= 1) {
            q0.q(this.q.f837b, this.r, arrayList, arrayList2, 0, 1, true, this.m);
        }
        if (z3) {
            R(this.p, true);
        }
        Iterator it = ((ArrayList) this.f881c.g()).iterator();
        while (it.hasNext()) {
            r rVar = (r) it.next();
            if (rVar != null && rVar.mView != null && rVar.mIsNewlyAdded && c0096a.j(rVar.mContainerId)) {
                float f = rVar.mPostponedAlpha;
                if (f > RecentsState.NO_OFFSET) {
                    rVar.mView.setAlpha(f);
                }
                if (z3) {
                    rVar.mPostponedAlpha = RecentsState.NO_OFFSET;
                } else {
                    rVar.mPostponedAlpha = -1.0f;
                    rVar.mIsNewlyAdded = false;
                }
            }
        }
    }

    public void g0(r rVar) {
        if (M(2)) {
            Log.v("FragmentManager", "show: " + rVar);
        }
        if (rVar.mHidden) {
            rVar.mHidden = false;
            rVar.mHiddenChanged = !rVar.mHiddenChanged;
        }
    }

    public C0107f0 h(r rVar) {
        C0107f0 h = this.f881c.h(rVar.mWho);
        if (h != null) {
            return h;
        }
        C0107f0 c0107f0 = new C0107f0(this.n, this.f881c, rVar);
        c0107f0.l(this.q.f837b.getClassLoader());
        c0107f0.e = this.p;
        return c0107f0;
    }

    public final void h0() {
        Iterator it = ((ArrayList) this.f881c.f()).iterator();
        while (it.hasNext()) {
            U((C0107f0) it.next());
        }
    }

    public final void i(r rVar) {
        rVar.performDestroyView();
        this.n.n(rVar, false);
        rVar.mContainer = null;
        rVar.mView = null;
        rVar.mViewLifecycleOwner = null;
        rVar.mViewLifecycleOwnerLiveData.g(null);
        rVar.mInLayout = false;
    }

    public final void i0() {
        synchronized (this.f879a) {
            if (!this.f879a.isEmpty()) {
                this.h.f219a = true;
                return;
            }
            b.a.h hVar = this.h;
            ArrayList arrayList = this.f882d;
            hVar.f219a = (arrayList != null ? arrayList.size() : 0) > 0 && O(this.s);
        }
    }

    public void j(r rVar) {
        if (M(2)) {
            Log.v("FragmentManager", "detach: " + rVar);
        }
        if (rVar.mDetached) {
            return;
        }
        rVar.mDetached = true;
        if (rVar.mAdded) {
            if (M(2)) {
                Log.v("FragmentManager", "remove from detach: " + rVar);
            }
            this.f881c.l(rVar);
            if (N(rVar)) {
                this.C = true;
            }
            f0(rVar);
        }
    }

    public void k(Configuration configuration) {
        for (r rVar : this.f881c.i()) {
            if (rVar != null) {
                rVar.performConfigurationChanged(configuration);
            }
        }
    }

    public boolean l(MenuItem menuItem) {
        if (this.p < 1) {
            return false;
        }
        for (r rVar : this.f881c.i()) {
            if (rVar != null && rVar.performContextItemSelected(menuItem)) {
                return true;
            }
        }
        return false;
    }

    public void m() {
        this.D = false;
        this.E = false;
        this.L.i = false;
        w(1);
    }

    public boolean n(Menu menu, MenuInflater menuInflater) {
        if (this.p < 1) {
            return false;
        }
        ArrayList arrayList = null;
        boolean z = false;
        for (r rVar : this.f881c.i()) {
            if (rVar != null && rVar.isMenuVisible() && rVar.performCreateOptionsMenu(menu, menuInflater)) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(rVar);
                z = true;
            }
        }
        if (this.e != null) {
            for (int i = 0; i < this.e.size(); i++) {
                r rVar2 = (r) this.e.get(i);
                if (arrayList == null || !arrayList.contains(rVar2)) {
                    rVar2.onDestroyOptionsMenu();
                }
            }
        }
        this.e = arrayList;
        return z;
    }

    public void o() {
        this.F = true;
        C(true);
        z();
        w(-1);
        this.q = null;
        this.r = null;
        this.s = null;
        if (this.g != null) {
            Iterator it = this.h.f220b.iterator();
            while (it.hasNext()) {
                ((b.a.a) it.next()).cancel();
            }
            this.g = null;
        }
        b.a.l.c cVar = this.y;
        if (cVar != null) {
            cVar.b();
            this.z.b();
            this.A.b();
        }
    }

    public void p() {
        for (r rVar : this.f881c.i()) {
            if (rVar != null) {
                rVar.performLowMemory();
            }
        }
    }

    public void q(boolean z) {
        for (r rVar : this.f881c.i()) {
            if (rVar != null) {
                rVar.performMultiWindowModeChanged(z);
            }
        }
    }

    public boolean r(MenuItem menuItem) {
        if (this.p < 1) {
            return false;
        }
        for (r rVar : this.f881c.i()) {
            if (rVar != null && rVar.performOptionsItemSelected(menuItem)) {
                return true;
            }
        }
        return false;
    }

    public void s(Menu menu) {
        if (this.p < 1) {
            return;
        }
        for (r rVar : this.f881c.i()) {
            if (rVar != null) {
                rVar.performOptionsMenuClosed(menu);
            }
        }
    }

    public final void t(r rVar) {
        if (rVar == null || !rVar.equals(F(rVar.mWho))) {
            return;
        }
        rVar.performPrimaryNavigationFragmentChanged();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("FragmentManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" in ");
        r rVar = this.s;
        if (rVar != null) {
            sb.append(rVar.getClass().getSimpleName());
            sb.append("{");
            sb.append(Integer.toHexString(System.identityHashCode(this.s)));
            sb.append("}");
        } else {
            D d2 = this.q;
            if (d2 != null) {
                sb.append(d2.getClass().getSimpleName());
                sb.append("{");
                sb.append(Integer.toHexString(System.identityHashCode(this.q)));
                sb.append("}");
            } else {
                sb.append("null");
            }
        }
        sb.append("}}");
        return sb.toString();
    }

    public void u(boolean z) {
        for (r rVar : this.f881c.i()) {
            if (rVar != null) {
                rVar.performPictureInPictureModeChanged(z);
            }
        }
    }

    public boolean v(Menu menu) {
        boolean z = false;
        if (this.p < 1) {
            return false;
        }
        for (r rVar : this.f881c.i()) {
            if (rVar != null && rVar.performPrepareOptionsMenu(menu)) {
                z = true;
            }
        }
        return z;
    }

    public final void w(int i) {
        try {
            this.f880b = true;
            for (C0107f0 c0107f0 : this.f881c.f899b.values()) {
                if (c0107f0 != null) {
                    c0107f0.e = i;
                }
            }
            R(i, false);
            this.f880b = false;
            C(true);
        } catch (Throwable th) {
            this.f880b = false;
            throw th;
        }
    }

    public final void x() {
        if (this.G) {
            this.G = false;
            h0();
        }
    }

    public void y(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        int size;
        int size2;
        String e = c.a.c.a.a.e(str, "    ");
        C0109g0 c0109g0 = this.f881c;
        Objects.requireNonNull(c0109g0);
        String str2 = str + "    ";
        if (!c0109g0.f899b.isEmpty()) {
            printWriter.print(str);
            printWriter.print("Active Fragments:");
            for (C0107f0 c0107f0 : c0109g0.f899b.values()) {
                printWriter.print(str);
                if (c0107f0 != null) {
                    r rVar = c0107f0.f895c;
                    printWriter.println(rVar);
                    rVar.dump(str2, fileDescriptor, printWriter, strArr);
                } else {
                    printWriter.println("null");
                }
            }
        }
        int size3 = c0109g0.f898a.size();
        if (size3 > 0) {
            printWriter.print(str);
            printWriter.println("Added Fragments:");
            for (int i = 0; i < size3; i++) {
                r rVar2 = (r) c0109g0.f898a.get(i);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i);
                printWriter.print(": ");
                printWriter.println(rVar2.toString());
            }
        }
        ArrayList arrayList = this.e;
        if (arrayList != null && (size2 = arrayList.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Fragments Created Menus:");
            for (int i2 = 0; i2 < size2; i2++) {
                r rVar3 = (r) this.e.get(i2);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i2);
                printWriter.print(": ");
                printWriter.println(rVar3.toString());
            }
        }
        ArrayList arrayList2 = this.f882d;
        if (arrayList2 != null && (size = arrayList2.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Back Stack:");
            for (int i3 = 0; i3 < size; i3++) {
                C0096a c0096a = (C0096a) this.f882d.get(i3);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i3);
                printWriter.print(": ");
                printWriter.println(c0096a.toString());
                c0096a.g(e, printWriter, true);
            }
        }
        printWriter.print(str);
        printWriter.println("Back Stack Index: " + this.i.get());
        synchronized (this.f879a) {
            int size4 = this.f879a.size();
            if (size4 > 0) {
                printWriter.print(str);
                printWriter.println("Pending Actions:");
                for (int i4 = 0; i4 < size4; i4++) {
                    Object obj = (U) this.f879a.get(i4);
                    printWriter.print(str);
                    printWriter.print("  #");
                    printWriter.print(i4);
                    printWriter.print(": ");
                    printWriter.println(obj);
                }
            }
        }
        printWriter.print(str);
        printWriter.println("FragmentManager misc state:");
        printWriter.print(str);
        printWriter.print("  mHost=");
        printWriter.println(this.q);
        printWriter.print(str);
        printWriter.print("  mContainer=");
        printWriter.println(this.r);
        if (this.s != null) {
            printWriter.print(str);
            printWriter.print("  mParent=");
            printWriter.println(this.s);
        }
        printWriter.print(str);
        printWriter.print("  mCurState=");
        printWriter.print(this.p);
        printWriter.print(" mStateSaved=");
        printWriter.print(this.D);
        printWriter.print(" mStopped=");
        printWriter.print(this.E);
        printWriter.print(" mDestroyed=");
        printWriter.println(this.F);
        if (this.C) {
            printWriter.print(str);
            printWriter.print("  mNeedMenuInvalidate=");
            printWriter.println(this.C);
        }
    }

    public final void z() {
        if (this.l.isEmpty()) {
            return;
        }
        for (r rVar : this.l.keySet()) {
            e(rVar);
            S(rVar, this.p);
        }
    }
}
