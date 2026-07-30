package defpackage;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.graphics.Insets;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.view.WindowInsetsAnimation;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.PathInterpolator;
import com.joeykrim.rootcheck.R;
import defpackage.C3150jM;
import j$.util.DesugarCollections;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;

/* renamed from: iM, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C2924iM {

    /* renamed from: do, reason: not valid java name */
    public final Ctry f13466do;

    /* renamed from: iM$for, reason: invalid class name */
    public static class Cfor extends Ctry {

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public static final PathInterpolator f13471do = new PathInterpolator(0.0f, 1.1f, 0.0f, 1.0f);

        /* renamed from: do, reason: not valid java name */
        public static final C0144Ch f13469do = new C0144Ch();

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public static final DecelerateInterpolator f13470do = new DecelerateInterpolator();

        /* renamed from: iM$for$do, reason: invalid class name */
        public static class Cdo implements View.OnApplyWindowInsetsListener {

            /* renamed from: do, reason: not valid java name */
            public final Cif f13472do;

            /* renamed from: do, reason: not valid java name and collision with other field name */
            public C3150jM f13473do;

            /* renamed from: iM$for$do$do, reason: invalid class name and collision with other inner class name */
            public class C0084do implements ValueAnimator.AnimatorUpdateListener {

                /* renamed from: do, reason: not valid java name */
                public final /* synthetic */ int f13474do;

                /* renamed from: do, reason: not valid java name and collision with other field name */
                public final /* synthetic */ View f13475do;

                /* renamed from: do, reason: not valid java name and collision with other field name */
                public final /* synthetic */ C2924iM f13476do;

                /* renamed from: do, reason: not valid java name and collision with other field name */
                public final /* synthetic */ C3150jM f13477do;

                /* renamed from: if, reason: not valid java name */
                public final /* synthetic */ C3150jM f13478if;

                public C0084do(C2924iM c2924iM, C3150jM c3150jM, C3150jM c3150jM2, int i, View view) {
                    this.f13476do = c2924iM;
                    this.f13477do = c3150jM;
                    this.f13478if = c3150jM2;
                    this.f13474do = i;
                    this.f13475do = view;
                }

                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    float animatedFraction = valueAnimator.getAnimatedFraction();
                    C2924iM c2924iM = this.f13476do;
                    c2924iM.f13466do.mo6903new(animatedFraction);
                    float mo6902if = c2924iM.f13466do.mo6902if();
                    PathInterpolator pathInterpolator = Cfor.f13471do;
                    int i = Build.VERSION.SDK_INT;
                    C3150jM c3150jM = this.f13477do;
                    C3150jM.Ctry cnew = i >= 30 ? new C3150jM.Cnew(c3150jM) : i >= 29 ? new C3150jM.Cfor(c3150jM) : new C3150jM.Cif(c3150jM);
                    for (int i2 = 1; i2 <= 256; i2 <<= 1) {
                        if ((this.f13474do & i2) == 0) {
                            cnew.mo7096for(i2, c3150jM.m7057do(i2));
                        } else {
                            C0633Yn m7057do = c3150jM.m7057do(i2);
                            C0633Yn m7057do2 = this.f13478if.m7057do(i2);
                            float f = 1.0f - mo6902if;
                            cnew.mo7096for(i2, C3150jM.m7055case(m7057do, (int) (((m7057do.f4758do - m7057do2.f4758do) * f) + 0.5d), (int) (((m7057do.f4760if - m7057do2.f4760if) * f) + 0.5d), (int) (((m7057do.f4759for - m7057do2.f4759for) * f) + 0.5d), (int) (((m7057do.f4761new - m7057do2.f4761new) * f) + 0.5d)));
                        }
                    }
                    Cfor.m6895else(this.f13475do, cnew.mo7092if(), Collections.singletonList(c2924iM));
                }
            }

            /* renamed from: iM$for$do$for, reason: invalid class name and collision with other inner class name */
            public class RunnableC0085for implements Runnable {

                /* renamed from: do, reason: not valid java name */
                public final /* synthetic */ ValueAnimator f13479do;

                /* renamed from: do, reason: not valid java name and collision with other field name */
                public final /* synthetic */ View f13480do;

                /* renamed from: do, reason: not valid java name and collision with other field name */
                public final /* synthetic */ Cdo f13481do;

                /* renamed from: do, reason: not valid java name and collision with other field name */
                public final /* synthetic */ C2924iM f13482do;

                public RunnableC0085for(View view, C2924iM c2924iM, Cdo cdo, ValueAnimator valueAnimator) {
                    this.f13480do = view;
                    this.f13482do = c2924iM;
                    this.f13481do = cdo;
                    this.f13479do = valueAnimator;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    Cfor.m6896goto(this.f13480do, this.f13482do, this.f13481do);
                    this.f13479do.start();
                }
            }

            /* renamed from: iM$for$do$if, reason: invalid class name */
            public class Cif extends AnimatorListenerAdapter {

                /* renamed from: do, reason: not valid java name */
                public final /* synthetic */ View f13483do;

                /* renamed from: do, reason: not valid java name and collision with other field name */
                public final /* synthetic */ C2924iM f13484do;

                public Cif(C2924iM c2924iM, View view) {
                    this.f13484do = c2924iM;
                    this.f13483do = view;
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationEnd(Animator animator) {
                    C2924iM c2924iM = this.f13484do;
                    c2924iM.f13466do.mo6903new(1.0f);
                    Cfor.m6898try(this.f13483do, c2924iM);
                }
            }

            public Cdo(View view, C0655Zn c0655Zn) {
                C3150jM c3150jM;
                this.f13472do = c0655Zn;
                C3150jM m1864this = QK.m1864this(view);
                if (m1864this != null) {
                    int i = Build.VERSION.SDK_INT;
                    c3150jM = (i >= 30 ? new C3150jM.Cnew(m1864this) : i >= 29 ? new C3150jM.Cfor(m1864this) : new C3150jM.Cif(m1864this)).mo7092if();
                } else {
                    c3150jM = null;
                }
                this.f13473do = c3150jM;
            }

            @Override // android.view.View.OnApplyWindowInsetsListener
            public final WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
                if (!view.isLaidOut()) {
                    this.f13473do = C3150jM.m7056this(view, windowInsets);
                    return Cfor.m6897this(view, windowInsets);
                }
                C3150jM m7056this = C3150jM.m7056this(view, windowInsets);
                if (this.f13473do == null) {
                    this.f13473do = QK.m1864this(view);
                }
                if (this.f13473do == null) {
                    this.f13473do = m7056this;
                    return Cfor.m6897this(view, windowInsets);
                }
                Cif m6893break = Cfor.m6893break(view);
                if (m6893break != null && Objects.equals(m6893break.f13486do, windowInsets)) {
                    return Cfor.m6897this(view, windowInsets);
                }
                C3150jM c3150jM = this.f13473do;
                int i = 0;
                for (int i2 = 1; i2 <= 256; i2 <<= 1) {
                    if (!m7056this.m7057do(i2).equals(c3150jM.m7057do(i2))) {
                        i |= i2;
                    }
                }
                if (i == 0) {
                    return Cfor.m6897this(view, windowInsets);
                }
                C3150jM c3150jM2 = this.f13473do;
                C2924iM c2924iM = new C2924iM(i, (i & 8) != 0 ? m7056this.m7057do(8).f4761new > c3150jM2.m7057do(8).f4761new ? Cfor.f13471do : Cfor.f13469do : Cfor.f13470do, 160L);
                Ctry ctry = c2924iM.f13466do;
                ctry.mo6903new(0.0f);
                ValueAnimator duration = ValueAnimator.ofFloat(0.0f, 1.0f).setDuration(ctry.mo6900do());
                C0633Yn m7057do = m7056this.m7057do(i);
                C0633Yn m7057do2 = c3150jM2.m7057do(i);
                int min = Math.min(m7057do.f4758do, m7057do2.f4758do);
                int i3 = m7057do.f4760if;
                int i4 = m7057do2.f4760if;
                int min2 = Math.min(i3, i4);
                int i5 = m7057do.f4759for;
                int i6 = m7057do2.f4759for;
                int min3 = Math.min(i5, i6);
                int i7 = m7057do.f4761new;
                int i8 = i;
                int i9 = m7057do2.f4761new;
                Cdo cdo = new Cdo(C0633Yn.m2951if(min, min2, min3, Math.min(i7, i9)), C0633Yn.m2951if(Math.max(m7057do.f4758do, m7057do2.f4758do), Math.max(i3, i4), Math.max(i5, i6), Math.max(i7, i9)));
                Cfor.m6894case(view, c2924iM, windowInsets, false);
                duration.addUpdateListener(new C0084do(c2924iM, m7056this, c3150jM2, i8, view));
                duration.addListener(new Cif(c2924iM, view));
                ViewTreeObserverOnPreDrawListenerC0663Zv.m3081do(view, new RunnableC0085for(view, c2924iM, cdo, duration));
                this.f13473do = m7056this;
                return Cfor.m6897this(view, windowInsets);
            }
        }

        public Cfor(int i, Interpolator interpolator, long j) {
            super(i, interpolator, j);
        }

        /* renamed from: break, reason: not valid java name */
        public static Cif m6893break(View view) {
            Object tag = view.getTag(R.id.tag_window_insets_animation_callback);
            if (tag instanceof Cdo) {
                return ((Cdo) tag).f13472do;
            }
            return null;
        }

        /* renamed from: case, reason: not valid java name */
        public static void m6894case(View view, C2924iM c2924iM, WindowInsets windowInsets, boolean z) {
            Cif m6893break = m6893break(view);
            if (m6893break != null) {
                m6893break.f13486do = windowInsets;
                if (!z) {
                    C0655Zn c0655Zn = (C0655Zn) m6893break;
                    View view2 = c0655Zn.f4897do;
                    int[] iArr = c0655Zn.f4898do;
                    view2.getLocationOnScreen(iArr);
                    c0655Zn.f4900if = iArr[1];
                    z = m6893break.f13485do == 0;
                }
            }
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                for (int i = 0; i < viewGroup.getChildCount(); i++) {
                    m6894case(viewGroup.getChildAt(i), c2924iM, windowInsets, z);
                }
            }
        }

        /* renamed from: else, reason: not valid java name */
        public static void m6895else(View view, C3150jM c3150jM, List<C2924iM> list) {
            Cif m6893break = m6893break(view);
            if (m6893break != null) {
                m6893break.mo3066do(c3150jM, list);
                if (m6893break.f13485do == 0) {
                    return;
                }
            }
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                for (int i = 0; i < viewGroup.getChildCount(); i++) {
                    m6895else(viewGroup.getChildAt(i), c3150jM, list);
                }
            }
        }

        /* renamed from: goto, reason: not valid java name */
        public static void m6896goto(View view, C2924iM c2924iM, Cdo cdo) {
            Cif m6893break = m6893break(view);
            if (m6893break != null) {
                C0655Zn c0655Zn = (C0655Zn) m6893break;
                View view2 = c0655Zn.f4897do;
                int[] iArr = c0655Zn.f4898do;
                view2.getLocationOnScreen(iArr);
                int i = c0655Zn.f4900if - iArr[1];
                c0655Zn.f4899for = i;
                view2.setTranslationY(i);
                if (m6893break.f13485do == 0) {
                    return;
                }
            }
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                for (int i2 = 0; i2 < viewGroup.getChildCount(); i2++) {
                    m6896goto(viewGroup.getChildAt(i2), c2924iM, cdo);
                }
            }
        }

        /* renamed from: this, reason: not valid java name */
        public static WindowInsets m6897this(View view, WindowInsets windowInsets) {
            return view.getTag(R.id.tag_on_apply_window_listener) != null ? windowInsets : view.onApplyWindowInsets(windowInsets);
        }

        /* renamed from: try, reason: not valid java name */
        public static void m6898try(View view, C2924iM c2924iM) {
            Cif m6893break = m6893break(view);
            if (m6893break != null) {
                ((C0655Zn) m6893break).f4897do.setTranslationY(0.0f);
                if (m6893break.f13485do == 0) {
                    return;
                }
            }
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                for (int i = 0; i < viewGroup.getChildCount(); i++) {
                    m6898try(viewGroup.getChildAt(i), c2924iM);
                }
            }
        }
    }

    /* renamed from: iM$if, reason: invalid class name */
    public static abstract class Cif {

        /* renamed from: do, reason: not valid java name */
        public final int f13485do = 0;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public WindowInsets f13486do;

        /* renamed from: do */
        public abstract C3150jM mo3066do(C3150jM c3150jM, List<C2924iM> list);
    }

    /* renamed from: iM$try, reason: invalid class name */
    public static class Ctry {

        /* renamed from: do, reason: not valid java name */
        public float f13492do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final int f13493do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final long f13494do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final Interpolator f13495do;

        public Ctry(int i, Interpolator interpolator, long j) {
            this.f13493do = i;
            this.f13495do = interpolator;
            this.f13494do = j;
        }

        /* renamed from: do */
        public long mo6900do() {
            return this.f13494do;
        }

        /* renamed from: for */
        public int mo6901for() {
            return this.f13493do;
        }

        /* renamed from: if */
        public float mo6902if() {
            Interpolator interpolator = this.f13495do;
            return interpolator != null ? interpolator.getInterpolation(this.f13492do) : this.f13492do;
        }

        /* renamed from: new */
        public void mo6903new(float f) {
            this.f13492do = f;
        }
    }

    public C2924iM(int i, Interpolator interpolator, long j) {
        if (Build.VERSION.SDK_INT >= 30) {
            this.f13466do = new Cnew(i, interpolator, j);
        } else {
            this.f13466do = new Cfor(i, interpolator, j);
        }
    }

    /* renamed from: iM$new, reason: invalid class name */
    public static class Cnew extends Ctry {

        /* renamed from: do, reason: not valid java name */
        public final WindowInsetsAnimation f13487do;

        /* renamed from: iM$new$do, reason: invalid class name */
        public static class Cdo extends WindowInsetsAnimation.Callback {

            /* renamed from: do, reason: not valid java name */
            public final Cif f13488do;

            /* renamed from: do, reason: not valid java name and collision with other field name */
            public ArrayList<C2924iM> f13489do;

            /* renamed from: do, reason: not valid java name and collision with other field name */
            public final HashMap<WindowInsetsAnimation, C2924iM> f13490do;

            /* renamed from: do, reason: not valid java name and collision with other field name */
            public List<C2924iM> f13491do;

            public Cdo(C0655Zn c0655Zn) {
                super(((Cif) c0655Zn).f13485do);
                this.f13490do = new HashMap<>();
                this.f13488do = c0655Zn;
            }

            /* renamed from: do, reason: not valid java name */
            public final C2924iM m6904do(WindowInsetsAnimation windowInsetsAnimation) {
                C2924iM c2924iM = this.f13490do.get(windowInsetsAnimation);
                if (c2924iM != null) {
                    return c2924iM;
                }
                C2924iM c2924iM2 = new C2924iM(windowInsetsAnimation);
                this.f13490do.put(windowInsetsAnimation, c2924iM2);
                return c2924iM2;
            }

            @Override // android.view.WindowInsetsAnimation.Callback
            public final void onEnd(WindowInsetsAnimation windowInsetsAnimation) {
                Cif cif = this.f13488do;
                m6904do(windowInsetsAnimation);
                ((C0655Zn) cif).f4897do.setTranslationY(0.0f);
                this.f13490do.remove(windowInsetsAnimation);
            }

            @Override // android.view.WindowInsetsAnimation.Callback
            public final void onPrepare(WindowInsetsAnimation windowInsetsAnimation) {
                Cif cif = this.f13488do;
                m6904do(windowInsetsAnimation);
                C0655Zn c0655Zn = (C0655Zn) cif;
                View view = c0655Zn.f4897do;
                int[] iArr = c0655Zn.f4898do;
                view.getLocationOnScreen(iArr);
                c0655Zn.f4900if = iArr[1];
            }

            @Override // android.view.WindowInsetsAnimation.Callback
            public final WindowInsets onProgress(WindowInsets windowInsets, List<WindowInsetsAnimation> list) {
                float fraction;
                ArrayList<C2924iM> arrayList = this.f13489do;
                if (arrayList == null) {
                    ArrayList<C2924iM> arrayList2 = new ArrayList<>(list.size());
                    this.f13489do = arrayList2;
                    this.f13491do = DesugarCollections.unmodifiableList(arrayList2);
                } else {
                    arrayList.clear();
                }
                int size = list.size();
                while (true) {
                    size--;
                    if (size < 0) {
                        Cif cif = this.f13488do;
                        C3150jM m7056this = C3150jM.m7056this(null, windowInsets);
                        cif.mo3066do(m7056this, this.f13491do);
                        return m7056this.m7060goto();
                    }
                    WindowInsetsAnimation windowInsetsAnimation = list.get(size);
                    C2924iM m6904do = m6904do(windowInsetsAnimation);
                    fraction = windowInsetsAnimation.getFraction();
                    m6904do.f13466do.mo6903new(fraction);
                    this.f13489do.add(m6904do);
                }
            }

            @Override // android.view.WindowInsetsAnimation.Callback
            public final WindowInsetsAnimation.Bounds onStart(WindowInsetsAnimation windowInsetsAnimation, WindowInsetsAnimation.Bounds bounds) {
                Cif cif = this.f13488do;
                m6904do(windowInsetsAnimation);
                Cdo cdo = new Cdo(bounds);
                C0655Zn c0655Zn = (C0655Zn) cif;
                View view = c0655Zn.f4897do;
                int[] iArr = c0655Zn.f4898do;
                view.getLocationOnScreen(iArr);
                int i = c0655Zn.f4900if - iArr[1];
                c0655Zn.f4899for = i;
                view.setTranslationY(i);
                return Cnew.m6899try(cdo);
            }
        }

        public Cnew(WindowInsetsAnimation windowInsetsAnimation) {
            super(0, null, 0L);
            this.f13487do = windowInsetsAnimation;
        }

        /* renamed from: try, reason: not valid java name */
        public static WindowInsetsAnimation.Bounds m6899try(Cdo cdo) {
            return new WindowInsetsAnimation.Bounds(cdo.f13467do.m2952new(), cdo.f13468if.m2952new());
        }

        @Override // defpackage.C2924iM.Ctry
        /* renamed from: do, reason: not valid java name */
        public final long mo6900do() {
            long durationMillis;
            durationMillis = this.f13487do.getDurationMillis();
            return durationMillis;
        }

        @Override // defpackage.C2924iM.Ctry
        /* renamed from: for, reason: not valid java name */
        public final int mo6901for() {
            int typeMask;
            typeMask = this.f13487do.getTypeMask();
            return typeMask;
        }

        @Override // defpackage.C2924iM.Ctry
        /* renamed from: if, reason: not valid java name */
        public final float mo6902if() {
            float interpolatedFraction;
            interpolatedFraction = this.f13487do.getInterpolatedFraction();
            return interpolatedFraction;
        }

        @Override // defpackage.C2924iM.Ctry
        /* renamed from: new, reason: not valid java name */
        public final void mo6903new(float f) {
            this.f13487do.setFraction(f);
        }

        public Cnew(int i, Interpolator interpolator, long j) {
            this(new WindowInsetsAnimation(i, interpolator, j));
        }
    }

    /* renamed from: iM$do, reason: invalid class name */
    public static final class Cdo {

        /* renamed from: do, reason: not valid java name */
        public final C0633Yn f13467do;

        /* renamed from: if, reason: not valid java name */
        public final C0633Yn f13468if;

        public Cdo(C0633Yn c0633Yn, C0633Yn c0633Yn2) {
            this.f13467do = c0633Yn;
            this.f13468if = c0633Yn2;
        }

        public final String toString() {
            return "Bounds{lower=" + this.f13467do + " upper=" + this.f13468if + "}";
        }

        public Cdo(WindowInsetsAnimation.Bounds bounds) {
            Insets lowerBound;
            Insets upperBound;
            lowerBound = bounds.getLowerBound();
            this.f13467do = C0633Yn.m2950for(lowerBound);
            upperBound = bounds.getUpperBound();
            this.f13468if = C0633Yn.m2950for(upperBound);
        }
    }

    public C2924iM(WindowInsetsAnimation windowInsetsAnimation) {
        this(0, null, 0L);
        if (Build.VERSION.SDK_INT >= 30) {
            this.f13466do = new Cnew(windowInsetsAnimation);
        }
    }
}
