package androidx.transition;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Path;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.InflateException;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowId;
import android.view.animation.AnimationUtils;
import android.widget.ListView;
import com.facebook.internal.FacebookRequestErrorClassification;
import com.google.android.gms.ads.RequestConfiguration;
import defpackage.C0315Kc;
import defpackage.C0472Rg;
import defpackage.C3264lI;
import defpackage.C3323mI;
import defpackage.C3354mr;
import defpackage.C3382nI;
import defpackage.C3385nL;
import defpackage.C3400ne;
import defpackage.C3441oI;
import defpackage.C3459oe;
import defpackage.C3500pI;
import defpackage.C3559qI;
import defpackage.F2;
import defpackage.FL;
import defpackage.FM;
import defpackage.HF;
import defpackage.KI;
import defpackage.QK;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.StringTokenizer;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public abstract class Transition implements Cloneable {

    /* renamed from: break, reason: not valid java name */
    public final String f7871break;

    /* renamed from: case, reason: not valid java name */
    public ArrayList<Cnew> f7872case;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public long f7873do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public FM f7874do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public TimeInterpolator f7875do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public PathMotion f7876do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Cfor f7877do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Transition f7878do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public TransitionSet f7879do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ArrayList<Integer> f7880do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public C3559qI f7881do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f7882do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public int[] f7883do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Animator[] f7884do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Cnew[] f7885do;

    /* renamed from: else, reason: not valid java name */
    public ArrayList<Animator> f7886else;

    /* renamed from: for, reason: not valid java name */
    public int f7887for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public ArrayList<C3500pI> f7888for;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public long f7889if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final ArrayList<View> f7890if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public C3559qI f7891if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public boolean f7892if;

    /* renamed from: new, reason: not valid java name */
    public ArrayList<C3500pI> f7893new;

    /* renamed from: try, reason: not valid java name */
    public final ArrayList<Animator> f7894try;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public static final Animator[] f7870if = new Animator[0];

    /* renamed from: if, reason: not valid java name */
    public static final int[] f7869if = {2, 1, 3, 4};

    /* renamed from: do, reason: not valid java name */
    public static final Cdo f7867do = new Cdo();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final ThreadLocal<F2<Animator, Cif>> f7868do = new ThreadLocal<>();

    /* renamed from: androidx.transition.Transition$do, reason: invalid class name */
    public class Cdo extends PathMotion {
        @Override // androidx.transition.PathMotion
        /* renamed from: do */
        public final Path mo4601do(float f, float f2, float f3, float f4) {
            Path path = new Path();
            path.moveTo(f, f2);
            path.lineTo(f3, f4);
            return path;
        }
    }

    /* renamed from: androidx.transition.Transition$for, reason: invalid class name */
    public static abstract class Cfor {
        /* renamed from: do, reason: not valid java name */
        public abstract Rect mo4653do();
    }

    /* renamed from: androidx.transition.Transition$if, reason: invalid class name */
    public static class Cif {

        /* renamed from: do, reason: not valid java name */
        public final Animator f7895do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final View f7896do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final WindowId f7897do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final Transition f7898do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final String f7899do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final C3500pI f7900do;

        public Cif(View view, String str, Transition transition, WindowId windowId, C3500pI c3500pI, Animator animator) {
            this.f7896do = view;
            this.f7899do = str;
            this.f7900do = c3500pI;
            this.f7897do = windowId;
            this.f7898do = transition;
            this.f7895do = animator;
        }
    }

    /* renamed from: androidx.transition.Transition$new, reason: invalid class name */
    public interface Cnew {
        /* renamed from: case */
        void mo4604case(Transition transition);

        /* renamed from: do */
        void mo4605do(Transition transition);

        /* renamed from: else */
        void mo4606else(Transition transition);

        /* renamed from: for */
        void mo4607for(Transition transition);

        /* renamed from: if */
        void mo4608if();

        /* renamed from: new */
        void mo4609new(Transition transition);

        /* renamed from: try */
        void mo4610try();
    }

    /* renamed from: androidx.transition.Transition$try, reason: invalid class name */
    public interface Ctry {

        /* renamed from: do, reason: not valid java name */
        public static final C0472Rg f7901do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public static final C3382nI f7902do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public static final C3400ne f7903do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public static final C3441oI f7904do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public static final C3459oe f7905do;

        static {
            int i = 0;
            f7902do = new C3382nI(i);
            f7904do = new C3441oI(i);
            int i2 = 1;
            f7903do = new C3400ne(i2);
            f7905do = new C3459oe(i2);
            f7901do = new C0472Rg(i);
        }

        /* renamed from: for */
        void mo2066for(Cnew cnew, Transition transition);
    }

    public Transition() {
        this.f7871break = getClass().getName();
        this.f7873do = -1L;
        this.f7889if = -1L;
        this.f7875do = null;
        this.f7880do = new ArrayList<>();
        this.f7890if = new ArrayList<>();
        this.f7881do = new C3559qI();
        this.f7891if = new C3559qI();
        this.f7879do = null;
        this.f7883do = f7869if;
        this.f7894try = new ArrayList<>();
        this.f7884do = f7870if;
        this.f7887for = 0;
        this.f7882do = false;
        this.f7892if = false;
        this.f7878do = null;
        this.f7872case = null;
        this.f7886else = new ArrayList<>();
        this.f7876do = f7867do;
    }

    /* renamed from: for, reason: not valid java name */
    public static void m4621for(C3559qI c3559qI, View view, C3500pI c3500pI) {
        ((F2) c3559qI.f15090do).put(view, c3500pI);
        int id = view.getId();
        if (id >= 0) {
            SparseArray sparseArray = (SparseArray) c3559qI.f15091for;
            if (sparseArray.indexOfKey(id) >= 0) {
                sparseArray.put(id, null);
            } else {
                sparseArray.put(id, view);
            }
        }
        WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
        String m1920catch = QK.Cnew.m1920catch(view);
        if (m1920catch != null) {
            F2 f2 = (F2) c3559qI.f15092if;
            if (f2.containsKey(m1920catch)) {
                f2.put(m1920catch, null);
            } else {
                f2.put(m1920catch, view);
            }
        }
        if (view.getParent() instanceof ListView) {
            ListView listView = (ListView) view.getParent();
            if (listView.getAdapter().hasStableIds()) {
                long itemIdAtPosition = listView.getItemIdAtPosition(listView.getPositionForView(view));
                C3354mr c3354mr = (C3354mr) c3559qI.f15093new;
                if (c3354mr.f14404do) {
                    c3354mr.m7472new();
                }
                if (C0315Kc.m1155case(c3354mr.f14405do, c3354mr.f14407for, itemIdAtPosition) < 0) {
                    view.setHasTransientState(true);
                    c3354mr.m7467case(itemIdAtPosition, view);
                    return;
                }
                View view2 = (View) c3354mr.m7473try(itemIdAtPosition, null);
                if (view2 != null) {
                    view2.setHasTransientState(false);
                    c3354mr.m7467case(itemIdAtPosition, null);
                }
            }
        }
    }

    /* renamed from: static, reason: not valid java name */
    public static boolean m4622static(C3500pI c3500pI, C3500pI c3500pI2, String str) {
        Object obj = c3500pI.f14906do.get(str);
        Object obj2 = c3500pI2.f14906do.get(str);
        if (obj == null && obj2 == null) {
            return false;
        }
        if (obj == null || obj2 == null) {
            return true;
        }
        return !obj.equals(obj2);
    }

    /* renamed from: while, reason: not valid java name */
    public static F2<Animator, Cif> m4623while() {
        ThreadLocal<F2<Animator, Cif>> threadLocal = f7868do;
        F2<Animator, Cif> f2 = threadLocal.get();
        if (f2 != null) {
            return f2;
        }
        F2<Animator, Cif> f22 = new F2<>();
        threadLocal.set(f22);
        return f22;
    }

    /* renamed from: abstract, reason: not valid java name */
    public void mo4624abstract(Cfor cfor) {
        this.f7877do = cfor;
    }

    /* renamed from: break, reason: not valid java name */
    public final void m4625break(boolean z) {
        if (z) {
            ((F2) this.f7881do.f15090do).clear();
            ((SparseArray) this.f7881do.f15091for).clear();
            ((C3354mr) this.f7881do.f15093new).m7471if();
        } else {
            ((F2) this.f7891if.f15090do).clear();
            ((SparseArray) this.f7891if.f15091for).clear();
            ((C3354mr) this.f7891if.f15093new).m7471if();
        }
    }

    /* renamed from: case, reason: not valid java name */
    public final void m4626case(View view, boolean z) {
        if (view == null) {
            return;
        }
        view.getId();
        if (view.getParent() instanceof ViewGroup) {
            C3500pI c3500pI = new C3500pI(view);
            if (z) {
                mo2720goto(c3500pI);
            } else {
                mo2721try(c3500pI);
            }
            c3500pI.f14905do.add(this);
            mo4632else(c3500pI);
            if (z) {
                m4621for(this.f7881do, view, c3500pI);
            } else {
                m4621for(this.f7891if, view, c3500pI);
            }
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i = 0; i < viewGroup.getChildCount(); i++) {
                m4626case(viewGroup.getChildAt(i), z);
            }
        }
    }

    @Override // 
    /* renamed from: catch, reason: not valid java name and merged with bridge method [inline-methods] */
    public Transition clone() {
        try {
            Transition transition = (Transition) super.clone();
            transition.f7886else = new ArrayList<>();
            transition.f7881do = new C3559qI();
            transition.f7891if = new C3559qI();
            transition.f7888for = null;
            transition.f7893new = null;
            transition.f7878do = this;
            transition.f7872case = null;
            return transition;
        } catch (CloneNotSupportedException e) {
            throw new RuntimeException(e);
        }
    }

    /* renamed from: class */
    public Animator mo2719class(ViewGroup viewGroup, C3500pI c3500pI, C3500pI c3500pI2) {
        return null;
    }

    /* renamed from: const, reason: not valid java name */
    public void mo4628const(ViewGroup viewGroup, C3559qI c3559qI, C3559qI c3559qI2, ArrayList<C3500pI> arrayList, ArrayList<C3500pI> arrayList2) {
        Animator mo2719class;
        int i;
        View view;
        Animator animator;
        C3500pI c3500pI;
        Animator animator2;
        C3500pI c3500pI2;
        F2<Animator, Cif> m4623while = m4623while();
        SparseIntArray sparseIntArray = new SparseIntArray();
        int size = arrayList.size();
        m4649throw().getClass();
        long j = Long.MAX_VALUE;
        int i2 = 0;
        while (i2 < size) {
            C3500pI c3500pI3 = arrayList.get(i2);
            C3500pI c3500pI4 = arrayList2.get(i2);
            if (c3500pI3 != null && !c3500pI3.f14905do.contains(this)) {
                c3500pI3 = null;
            }
            if (c3500pI4 != null && !c3500pI4.f14905do.contains(this)) {
                c3500pI4 = null;
            }
            if (c3500pI3 != null || c3500pI4 != null) {
                if ((c3500pI3 == null || c3500pI4 == null || mo4643public(c3500pI3, c3500pI4)) && (mo2719class = mo2719class(viewGroup, c3500pI3, c3500pI4)) != null) {
                    if (c3500pI4 != null) {
                        String[] mo4603import = mo4603import();
                        view = c3500pI4.f14904do;
                        if (mo4603import != null && mo4603import.length > 0) {
                            C3500pI c3500pI5 = new C3500pI(view);
                            i = size;
                            C3500pI c3500pI6 = (C3500pI) ((F2) c3559qI2.f15090do).getOrDefault(view, null);
                            if (c3500pI6 != null) {
                                int i3 = 0;
                                while (i3 < mo4603import.length) {
                                    HashMap hashMap = c3500pI5.f14906do;
                                    String str = mo4603import[i3];
                                    hashMap.put(str, c3500pI6.f14906do.get(str));
                                    i3++;
                                    mo4603import = mo4603import;
                                }
                            }
                            int i4 = m4623while.f12632for;
                            int i5 = 0;
                            while (true) {
                                if (i5 >= i4) {
                                    c3500pI2 = c3500pI5;
                                    animator2 = mo2719class;
                                    break;
                                }
                                Cif orDefault = m4623while.getOrDefault(m4623while.m6527goto(i5), null);
                                if (orDefault.f7900do != null && orDefault.f7896do == view && orDefault.f7899do.equals(this.f7871break) && orDefault.f7900do.equals(c3500pI5)) {
                                    c3500pI2 = c3500pI5;
                                    animator2 = null;
                                    break;
                                }
                                i5++;
                            }
                        } else {
                            i = size;
                            animator2 = mo2719class;
                            c3500pI2 = null;
                        }
                        animator = animator2;
                        c3500pI = c3500pI2;
                    } else {
                        i = size;
                        view = c3500pI3.f14904do;
                        animator = mo2719class;
                        c3500pI = null;
                    }
                    if (animator != null) {
                        FM fm = this.f7874do;
                        if (fm != null) {
                            long mo610do = fm.mo610do(viewGroup, this, c3500pI3, c3500pI4);
                            sparseIntArray.put(this.f7886else.size(), (int) mo610do);
                            j = Math.min(mo610do, j);
                        }
                        m4623while.put(animator, new Cif(view, this.f7871break, this, viewGroup.getWindowId(), c3500pI, animator));
                        this.f7886else.add(animator);
                        j = j;
                    }
                    i2++;
                    size = i;
                }
            }
            i = size;
            i2++;
            size = i;
        }
        if (sparseIntArray.size() != 0) {
            for (int i6 = 0; i6 < sparseIntArray.size(); i6++) {
                Cif orDefault2 = m4623while.getOrDefault(this.f7886else.get(sparseIntArray.keyAt(i6)), null);
                orDefault2.f7895do.setStartDelay(orDefault2.f7895do.getStartDelay() + (sparseIntArray.valueAt(i6) - j));
            }
        }
    }

    /* renamed from: continue, reason: not valid java name */
    public void mo4629continue(TimeInterpolator timeInterpolator) {
        this.f7875do = timeInterpolator;
    }

    /* renamed from: default, reason: not valid java name */
    public Transition mo4630default(Cnew cnew) {
        Transition transition;
        ArrayList<Cnew> arrayList = this.f7872case;
        if (arrayList == null) {
            return this;
        }
        if (!arrayList.remove(cnew) && (transition = this.f7878do) != null) {
            transition.mo4630default(cnew);
        }
        if (this.f7872case.size() == 0) {
            this.f7872case = null;
        }
        return this;
    }

    /* renamed from: do, reason: not valid java name */
    public void mo4631do(Cnew cnew) {
        if (this.f7872case == null) {
            this.f7872case = new ArrayList<>();
        }
        this.f7872case.add(cnew);
    }

    /* renamed from: else, reason: not valid java name */
    public void mo4632else(C3500pI c3500pI) {
        boolean z;
        if (this.f7874do != null) {
            HashMap hashMap = c3500pI.f14906do;
            if (hashMap.isEmpty()) {
                return;
            }
            this.f7874do.getClass();
            String[] strArr = FL.f1046do;
            int i = 0;
            while (true) {
                if (i >= 2) {
                    z = true;
                    break;
                } else {
                    if (!hashMap.containsKey(strArr[i])) {
                        z = false;
                        break;
                    }
                    i++;
                }
            }
            if (z) {
                return;
            }
            ((FL) this.f7874do).getClass();
            Integer num = (Integer) hashMap.get("android:visibility:visibility");
            View view = c3500pI.f14904do;
            if (num == null) {
                num = Integer.valueOf(view.getVisibility());
            }
            hashMap.put("android:visibilityPropagation:visibility", num);
            int[] iArr = {r6, 0};
            view.getLocationOnScreen(iArr);
            int round = Math.round(view.getTranslationX()) + iArr[0];
            iArr[0] = (view.getWidth() / 2) + round;
            int round2 = Math.round(view.getTranslationY()) + iArr[1];
            iArr[1] = round2;
            iArr[1] = (view.getHeight() / 2) + round2;
            hashMap.put("android:visibilityPropagation:center", iArr);
        }
    }

    /* renamed from: extends, reason: not valid java name */
    public void mo4633extends(View view) {
        this.f7890if.remove(view);
    }

    /* renamed from: final, reason: not valid java name */
    public final void m4634final() {
        int i = this.f7887for - 1;
        this.f7887for = i;
        if (i != 0) {
            return;
        }
        m4647switch(this, Ctry.f7904do);
        int i2 = 0;
        while (true) {
            C3354mr c3354mr = (C3354mr) this.f7881do.f15093new;
            if (c3354mr.f14404do) {
                c3354mr.m7472new();
            }
            if (i2 >= c3354mr.f14407for) {
                break;
            }
            View view = (View) ((C3354mr) this.f7881do.f15093new).m7469else(i2);
            if (view != null) {
                view.setHasTransientState(false);
            }
            i2++;
        }
        int i3 = 0;
        while (true) {
            C3354mr c3354mr2 = (C3354mr) this.f7891if.f15093new;
            if (c3354mr2.f14404do) {
                c3354mr2.m7472new();
            }
            if (i3 >= c3354mr2.f14407for) {
                this.f7892if = true;
                return;
            }
            View view2 = (View) ((C3354mr) this.f7891if.f15093new).m7469else(i3);
            if (view2 != null) {
                view2.setHasTransientState(false);
            }
            i3++;
        }
    }

    /* renamed from: finally, reason: not valid java name */
    public void mo4635finally(ViewGroup viewGroup) {
        if (this.f7882do) {
            if (!this.f7892if) {
                ArrayList<Animator> arrayList = this.f7894try;
                int size = arrayList.size();
                Animator[] animatorArr = (Animator[]) arrayList.toArray(this.f7884do);
                this.f7884do = f7870if;
                while (true) {
                    size--;
                    if (size < 0) {
                        break;
                    }
                    Animator animator = animatorArr[size];
                    animatorArr[size] = null;
                    animator.resume();
                }
                this.f7884do = animatorArr;
                m4647switch(this, Ctry.f7901do);
            }
            this.f7882do = false;
        }
    }

    /* renamed from: goto */
    public abstract void mo2720goto(C3500pI c3500pI);

    /* renamed from: if, reason: not valid java name */
    public void mo4636if(View view) {
        this.f7890if.add(view);
    }

    /* renamed from: import */
    public String[] mo4603import() {
        return null;
    }

    /* renamed from: interface, reason: not valid java name */
    public void mo4637interface(long j) {
        this.f7873do = j;
    }

    /* renamed from: native, reason: not valid java name */
    public final C3500pI m4638native(View view, boolean z) {
        TransitionSet transitionSet = this.f7879do;
        if (transitionSet != null) {
            return transitionSet.m4638native(view, z);
        }
        return (C3500pI) ((F2) (z ? this.f7881do : this.f7891if).f15090do).getOrDefault(view, null);
    }

    /* renamed from: new, reason: not valid java name */
    public void mo4639new() {
        ArrayList<Animator> arrayList = this.f7894try;
        int size = arrayList.size();
        Animator[] animatorArr = (Animator[]) arrayList.toArray(this.f7884do);
        this.f7884do = f7870if;
        while (true) {
            size--;
            if (size < 0) {
                this.f7884do = animatorArr;
                m4647switch(this, Ctry.f7903do);
                return;
            } else {
                Animator animator = animatorArr[size];
                animatorArr[size] = null;
                animator.cancel();
            }
        }
    }

    /* renamed from: package, reason: not valid java name */
    public void mo4640package() {
        m4642protected();
        F2<Animator, Cif> m4623while = m4623while();
        Iterator<Animator> it = this.f7886else.iterator();
        while (it.hasNext()) {
            Animator next = it.next();
            if (m4623while.containsKey(next)) {
                m4642protected();
                if (next != null) {
                    next.addListener(new C3264lI(this, m4623while));
                    long j = this.f7889if;
                    if (j >= 0) {
                        next.setDuration(j);
                    }
                    long j2 = this.f7873do;
                    if (j2 >= 0) {
                        next.setStartDelay(next.getStartDelay() + j2);
                    }
                    TimeInterpolator timeInterpolator = this.f7875do;
                    if (timeInterpolator != null) {
                        next.setInterpolator(timeInterpolator);
                    }
                    next.addListener(new C3323mI(this));
                    next.start();
                }
            }
        }
        this.f7886else.clear();
        m4634final();
    }

    /* renamed from: private, reason: not valid java name */
    public void mo4641private(long j) {
        this.f7889if = j;
    }

    /* renamed from: protected, reason: not valid java name */
    public final void m4642protected() {
        if (this.f7887for == 0) {
            m4647switch(this, Ctry.f7902do);
            this.f7892if = false;
        }
        this.f7887for++;
    }

    /* renamed from: public, reason: not valid java name */
    public boolean mo4643public(C3500pI c3500pI, C3500pI c3500pI2) {
        if (c3500pI == null || c3500pI2 == null) {
            return false;
        }
        String[] mo4603import = mo4603import();
        if (mo4603import == null) {
            Iterator it = c3500pI.f14906do.keySet().iterator();
            while (it.hasNext()) {
                if (m4622static(c3500pI, c3500pI2, (String) it.next())) {
                }
            }
            return false;
        }
        for (String str : mo4603import) {
            if (!m4622static(c3500pI, c3500pI2, str)) {
            }
        }
        return false;
        return true;
    }

    /* renamed from: return, reason: not valid java name */
    public final boolean m4644return(View view) {
        int id = view.getId();
        ArrayList<Integer> arrayList = this.f7880do;
        int size = arrayList.size();
        ArrayList<View> arrayList2 = this.f7890if;
        return (size == 0 && arrayList2.size() == 0) || arrayList.contains(Integer.valueOf(id)) || arrayList2.contains(view);
    }

    /* renamed from: strictfp, reason: not valid java name */
    public void mo4645strictfp(PathMotion pathMotion) {
        if (pathMotion == null) {
            this.f7876do = f7867do;
        } else {
            this.f7876do = pathMotion;
        }
    }

    /* renamed from: super, reason: not valid java name */
    public final C3500pI m4646super(View view, boolean z) {
        TransitionSet transitionSet = this.f7879do;
        if (transitionSet != null) {
            return transitionSet.m4646super(view, z);
        }
        ArrayList<C3500pI> arrayList = z ? this.f7888for : this.f7893new;
        if (arrayList == null) {
            return null;
        }
        int size = arrayList.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                i = -1;
                break;
            }
            C3500pI c3500pI = arrayList.get(i);
            if (c3500pI == null) {
                return null;
            }
            if (c3500pI.f14904do == view) {
                break;
            }
            i++;
        }
        if (i >= 0) {
            return (z ? this.f7893new : this.f7888for).get(i);
        }
        return null;
    }

    /* renamed from: switch, reason: not valid java name */
    public final void m4647switch(Transition transition, Ctry ctry) {
        Transition transition2 = this.f7878do;
        if (transition2 != null) {
            transition2.m4647switch(transition, ctry);
        }
        ArrayList<Cnew> arrayList = this.f7872case;
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        int size = this.f7872case.size();
        Cnew[] cnewArr = this.f7885do;
        if (cnewArr == null) {
            cnewArr = new Cnew[size];
        }
        this.f7885do = null;
        Cnew[] cnewArr2 = (Cnew[]) this.f7872case.toArray(cnewArr);
        for (int i = 0; i < size; i++) {
            ctry.mo2066for(cnewArr2[i], transition);
            cnewArr2[i] = null;
        }
        this.f7885do = cnewArr2;
    }

    /* renamed from: this, reason: not valid java name */
    public final void m4648this(ViewGroup viewGroup, boolean z) {
        m4625break(z);
        ArrayList<Integer> arrayList = this.f7880do;
        int size = arrayList.size();
        ArrayList<View> arrayList2 = this.f7890if;
        if (size <= 0 && arrayList2.size() <= 0) {
            m4626case(viewGroup, z);
            return;
        }
        for (int i = 0; i < arrayList.size(); i++) {
            View findViewById = viewGroup.findViewById(arrayList.get(i).intValue());
            if (findViewById != null) {
                C3500pI c3500pI = new C3500pI(findViewById);
                if (z) {
                    mo2720goto(c3500pI);
                } else {
                    mo2721try(c3500pI);
                }
                c3500pI.f14905do.add(this);
                mo4632else(c3500pI);
                if (z) {
                    m4621for(this.f7881do, findViewById, c3500pI);
                } else {
                    m4621for(this.f7891if, findViewById, c3500pI);
                }
            }
        }
        for (int i2 = 0; i2 < arrayList2.size(); i2++) {
            View view = arrayList2.get(i2);
            C3500pI c3500pI2 = new C3500pI(view);
            if (z) {
                mo2720goto(c3500pI2);
            } else {
                mo2721try(c3500pI2);
            }
            c3500pI2.f14905do.add(this);
            mo4632else(c3500pI2);
            if (z) {
                m4621for(this.f7881do, view, c3500pI2);
            } else {
                m4621for(this.f7891if, view, c3500pI2);
            }
        }
    }

    /* renamed from: throw, reason: not valid java name */
    public final Transition m4649throw() {
        TransitionSet transitionSet = this.f7879do;
        return transitionSet != null ? transitionSet.m4649throw() : this;
    }

    /* renamed from: throws, reason: not valid java name */
    public void mo4650throws(View view) {
        if (this.f7892if) {
            return;
        }
        ArrayList<Animator> arrayList = this.f7894try;
        int size = arrayList.size();
        Animator[] animatorArr = (Animator[]) arrayList.toArray(this.f7884do);
        this.f7884do = f7870if;
        for (int i = size - 1; i >= 0; i--) {
            Animator animator = animatorArr[i];
            animatorArr[i] = null;
            animator.pause();
        }
        this.f7884do = animatorArr;
        m4647switch(this, Ctry.f7905do);
        this.f7882do = true;
    }

    public final String toString() {
        return mo4651transient(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
    }

    /* renamed from: transient, reason: not valid java name */
    public String mo4651transient(String str) {
        StringBuilder sb = new StringBuilder(str);
        sb.append(getClass().getSimpleName());
        sb.append("@");
        sb.append(Integer.toHexString(hashCode()));
        sb.append(": ");
        if (this.f7889if != -1) {
            sb.append("dur(");
            sb.append(this.f7889if);
            sb.append(") ");
        }
        if (this.f7873do != -1) {
            sb.append("dly(");
            sb.append(this.f7873do);
            sb.append(") ");
        }
        if (this.f7875do != null) {
            sb.append("interp(");
            sb.append(this.f7875do);
            sb.append(") ");
        }
        ArrayList<Integer> arrayList = this.f7880do;
        int size = arrayList.size();
        ArrayList<View> arrayList2 = this.f7890if;
        if (size > 0 || arrayList2.size() > 0) {
            sb.append("tgts(");
            if (arrayList.size() > 0) {
                for (int i = 0; i < arrayList.size(); i++) {
                    if (i > 0) {
                        sb.append(", ");
                    }
                    sb.append(arrayList.get(i));
                }
            }
            if (arrayList2.size() > 0) {
                for (int i2 = 0; i2 < arrayList2.size(); i2++) {
                    if (i2 > 0) {
                        sb.append(", ");
                    }
                    sb.append(arrayList2.get(i2));
                }
            }
            sb.append(")");
        }
        return sb.toString();
    }

    /* renamed from: try */
    public abstract void mo2721try(C3500pI c3500pI);

    /* renamed from: volatile, reason: not valid java name */
    public void mo4652volatile(FM fm) {
        this.f7874do = fm;
    }

    public Transition(Context context, AttributeSet attributeSet) {
        boolean z;
        this.f7871break = getClass().getName();
        this.f7873do = -1L;
        this.f7889if = -1L;
        this.f7875do = null;
        this.f7880do = new ArrayList<>();
        this.f7890if = new ArrayList<>();
        this.f7881do = new C3559qI();
        this.f7891if = new C3559qI();
        this.f7879do = null;
        int[] iArr = f7869if;
        this.f7883do = iArr;
        this.f7894try = new ArrayList<>();
        this.f7884do = f7870if;
        this.f7887for = 0;
        this.f7882do = false;
        this.f7892if = false;
        this.f7878do = null;
        this.f7872case = null;
        this.f7886else = new ArrayList<>();
        this.f7876do = f7867do;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, HF.f1327do);
        XmlResourceParser xmlResourceParser = (XmlResourceParser) attributeSet;
        long m1135for = KI.m1135for(obtainStyledAttributes, xmlResourceParser, "duration", 1, -1);
        if (m1135for >= 0) {
            mo4641private(m1135for);
        }
        long m1135for2 = KI.m1135for(obtainStyledAttributes, xmlResourceParser, "startDelay", 2, -1);
        if (m1135for2 > 0) {
            mo4637interface(m1135for2);
        }
        int resourceId = !KI.m1138try(xmlResourceParser, "interpolator") ? 0 : obtainStyledAttributes.getResourceId(0, 0);
        if (resourceId > 0) {
            mo4629continue(AnimationUtils.loadInterpolator(context, resourceId));
        }
        String m1137new = KI.m1137new(obtainStyledAttributes, xmlResourceParser, "matchOrder", 3);
        if (m1137new != null) {
            StringTokenizer stringTokenizer = new StringTokenizer(m1137new, ",");
            int[] iArr2 = new int[stringTokenizer.countTokens()];
            int i = 0;
            while (stringTokenizer.hasMoreTokens()) {
                String trim = stringTokenizer.nextToken().trim();
                if ("id".equalsIgnoreCase(trim)) {
                    iArr2[i] = 3;
                } else if ("instance".equalsIgnoreCase(trim)) {
                    iArr2[i] = 1;
                } else if (FacebookRequestErrorClassification.KEY_NAME.equalsIgnoreCase(trim)) {
                    iArr2[i] = 2;
                } else if ("itemId".equalsIgnoreCase(trim)) {
                    iArr2[i] = 4;
                } else if (trim.isEmpty()) {
                    int[] iArr3 = new int[iArr2.length - 1];
                    System.arraycopy(iArr2, 0, iArr3, 0, i);
                    i--;
                    iArr2 = iArr3;
                } else {
                    throw new InflateException(defpackage.Cif.m6908case("Unknown match type in matchOrder: '", trim, "'"));
                }
                i++;
            }
            if (iArr2.length == 0) {
                this.f7883do = iArr;
            } else {
                for (int i2 = 0; i2 < iArr2.length; i2++) {
                    int i3 = iArr2[i2];
                    if (!(i3 >= 1 && i3 <= 4)) {
                        throw new IllegalArgumentException("matches contains invalid value");
                    }
                    int i4 = 0;
                    while (true) {
                        if (i4 >= i2) {
                            z = false;
                            break;
                        } else {
                            if (iArr2[i4] == i3) {
                                z = true;
                                break;
                            }
                            i4++;
                        }
                    }
                    if (z) {
                        throw new IllegalArgumentException("matches contains a duplicate value");
                    }
                }
                this.f7883do = (int[]) iArr2.clone();
            }
        }
        obtainStyledAttributes.recycle();
    }
}
