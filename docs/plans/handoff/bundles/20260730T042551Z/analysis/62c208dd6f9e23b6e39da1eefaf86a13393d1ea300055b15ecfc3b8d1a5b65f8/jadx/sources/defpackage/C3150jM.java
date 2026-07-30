package defpackage;

import android.annotation.SuppressLint;
import android.graphics.Insets;
import android.graphics.Rect;
import android.os.Build;
import android.view.DisplayCutout;
import android.view.View;
import android.view.WindowInsets;
import defpackage.C0207Fe;
import j$.util.Objects;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

/* renamed from: jM, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3150jM {

    /* renamed from: do, reason: not valid java name */
    public static final C3150jM f13675do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Ccatch f13676do;

    /* renamed from: jM$break, reason: invalid class name */
    public static class Cbreak extends Cthis {

        /* renamed from: new, reason: not valid java name */
        public static final C3150jM f13677new;

        static {
            WindowInsets windowInsets;
            windowInsets = WindowInsets.CONSUMED;
            f13677new = C3150jM.m7056this(null, windowInsets);
        }

        public Cbreak(C3150jM c3150jM, WindowInsets windowInsets) {
            super(c3150jM, windowInsets);
        }

        @Override // defpackage.C3150jM.Ccase, defpackage.C3150jM.Ccatch
        /* renamed from: case, reason: not valid java name */
        public C0633Yn mo7064case(int i) {
            Insets insets;
            insets = ((Ccase) this).f13684do.getInsets(Cconst.m7088do(i));
            return C0633Yn.m2950for(insets);
        }

        @Override // defpackage.C3150jM.Ccase, defpackage.C3150jM.Ccatch
        /* renamed from: new, reason: not valid java name */
        public final void mo7065new(View view) {
        }
    }

    /* renamed from: jM$case, reason: invalid class name */
    public static class Ccase extends Ccatch {

        /* renamed from: do, reason: not valid java name */
        public static Class<?> f13678do = null;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public static Field f13679do = null;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public static Method f13680do = null;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public static boolean f13681do = false;

        /* renamed from: if, reason: not valid java name */
        public static Field f13682if;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public C0633Yn f13683do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final WindowInsets f13684do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public C0633Yn[] f13685do;

        /* renamed from: for, reason: not valid java name */
        public C3150jM f13686for;

        /* renamed from: if, reason: not valid java name and collision with other field name */
        public C0633Yn f13687if;

        public Ccase(C3150jM c3150jM, WindowInsets windowInsets) {
            super(c3150jM);
            this.f13683do = null;
            this.f13684do = windowInsets;
        }

        @SuppressLint({"WrongConstant"})
        /* renamed from: import, reason: not valid java name */
        private C0633Yn m7066import(int i, boolean z) {
            C0633Yn c0633Yn = C0633Yn.f4757do;
            for (int i2 = 1; i2 <= 256; i2 <<= 1) {
                if ((i & i2) != 0) {
                    c0633Yn = C0633Yn.m2949do(c0633Yn, m7073native(i2, z));
                }
            }
            return c0633Yn;
        }

        /* renamed from: public, reason: not valid java name */
        private C0633Yn m7067public() {
            C3150jM c3150jM = this.f13686for;
            return c3150jM != null ? c3150jM.f13676do.mo7082goto() : C0633Yn.f4757do;
        }

        /* renamed from: return, reason: not valid java name */
        private C0633Yn m7068return(View view) {
            if (Build.VERSION.SDK_INT >= 30) {
                throw new UnsupportedOperationException("getVisibleInsets() should not be called on API >= 30. Use WindowInsets.isVisible() instead.");
            }
            if (!f13681do) {
                m7069static();
            }
            Method method = f13680do;
            if (method != null && f13678do != null && f13679do != null) {
                try {
                    Object invoke = method.invoke(view, new Object[0]);
                    if (invoke == null) {
                        return null;
                    }
                    Rect rect = (Rect) f13679do.get(f13682if.get(invoke));
                    if (rect != null) {
                        return C0633Yn.m2951if(rect.left, rect.top, rect.right, rect.bottom);
                    }
                    return null;
                } catch (ReflectiveOperationException e) {
                    e.getMessage();
                }
            }
            return null;
        }

        @SuppressLint({"PrivateApi"})
        /* renamed from: static, reason: not valid java name */
        private static void m7069static() {
            try {
                f13680do = View.class.getDeclaredMethod("getViewRootImpl", new Class[0]);
                Class<?> cls = Class.forName("android.view.View$AttachInfo");
                f13678do = cls;
                f13679do = cls.getDeclaredField("mVisibleInsets");
                f13682if = Class.forName("android.view.ViewRootImpl").getDeclaredField("mAttachInfo");
                f13679do.setAccessible(true);
                f13682if.setAccessible(true);
            } catch (ReflectiveOperationException e) {
                e.getMessage();
            }
            f13681do = true;
        }

        @Override // defpackage.C3150jM.Ccatch
        /* renamed from: break, reason: not valid java name */
        public final C0633Yn mo7070break() {
            if (this.f13683do == null) {
                WindowInsets windowInsets = this.f13684do;
                this.f13683do = C0633Yn.m2951if(windowInsets.getSystemWindowInsetLeft(), windowInsets.getSystemWindowInsetTop(), windowInsets.getSystemWindowInsetRight(), windowInsets.getSystemWindowInsetBottom());
            }
            return this.f13683do;
        }

        @Override // defpackage.C3150jM.Ccatch
        /* renamed from: case */
        public C0633Yn mo7064case(int i) {
            return m7066import(i, false);
        }

        @Override // defpackage.C3150jM.Ccatch
        /* renamed from: class, reason: not valid java name */
        public C3150jM mo7071class(int i, int i2, int i3, int i4) {
            C3150jM m7056this = C3150jM.m7056this(null, this.f13684do);
            int i5 = Build.VERSION.SDK_INT;
            Ctry cnew = i5 >= 30 ? new Cnew(m7056this) : i5 >= 29 ? new Cfor(m7056this) : new Cif(m7056this);
            cnew.mo7090else(C3150jM.m7055case(mo7070break(), i, i2, i3, i4));
            cnew.mo7094try(C3150jM.m7055case(mo7082goto(), i, i2, i3, i4));
            return cnew.mo7092if();
        }

        @Override // defpackage.C3150jM.Ccatch
        public boolean equals(Object obj) {
            if (super.equals(obj)) {
                return Objects.equals(this.f13687if, ((Ccase) obj).f13687if);
            }
            return false;
        }

        @Override // defpackage.C3150jM.Ccatch
        /* renamed from: final, reason: not valid java name */
        public boolean mo7072final() {
            return this.f13684do.isRound();
        }

        /* renamed from: native, reason: not valid java name */
        public C0633Yn m7073native(int i, boolean z) {
            C0633Yn mo7082goto;
            int i2;
            if (i == 1) {
                return z ? C0633Yn.m2951if(0, Math.max(m7067public().f4760if, mo7070break().f4760if), 0, 0) : C0633Yn.m2951if(0, mo7070break().f4760if, 0, 0);
            }
            if (i == 2) {
                if (z) {
                    C0633Yn m7067public = m7067public();
                    C0633Yn mo7082goto2 = mo7082goto();
                    return C0633Yn.m2951if(Math.max(m7067public.f4758do, mo7082goto2.f4758do), 0, Math.max(m7067public.f4759for, mo7082goto2.f4759for), Math.max(m7067public.f4761new, mo7082goto2.f4761new));
                }
                C0633Yn mo7070break = mo7070break();
                C3150jM c3150jM = this.f13686for;
                mo7082goto = c3150jM != null ? c3150jM.f13676do.mo7082goto() : null;
                int i3 = mo7070break.f4761new;
                if (mo7082goto != null) {
                    i3 = Math.min(i3, mo7082goto.f4761new);
                }
                return C0633Yn.m2951if(mo7070break.f4758do, 0, mo7070break.f4759for, i3);
            }
            C0633Yn c0633Yn = C0633Yn.f4757do;
            if (i == 8) {
                C0633Yn[] c0633YnArr = this.f13685do;
                mo7082goto = c0633YnArr != null ? c0633YnArr[Cclass.m7087do(8)] : null;
                if (mo7082goto != null) {
                    return mo7082goto;
                }
                C0633Yn mo7070break2 = mo7070break();
                C0633Yn m7067public2 = m7067public();
                int i4 = mo7070break2.f4761new;
                if (i4 > m7067public2.f4761new) {
                    return C0633Yn.m2951if(0, 0, 0, i4);
                }
                C0633Yn c0633Yn2 = this.f13687if;
                return (c0633Yn2 == null || c0633Yn2.equals(c0633Yn) || (i2 = this.f13687if.f4761new) <= m7067public2.f4761new) ? c0633Yn : C0633Yn.m2951if(0, 0, 0, i2);
            }
            if (i == 16) {
                return mo7084this();
            }
            if (i == 32) {
                return mo7080else();
            }
            if (i == 64) {
                return mo7077catch();
            }
            if (i != 128) {
                return c0633Yn;
            }
            C3150jM c3150jM2 = this.f13686for;
            C0207Fe mo7085try = c3150jM2 != null ? c3150jM2.f13676do.mo7085try() : mo7085try();
            if (mo7085try == null) {
                return c0633Yn;
            }
            int i5 = Build.VERSION.SDK_INT;
            DisplayCutout displayCutout = mo7085try.f1076do;
            return C0633Yn.m2951if(i5 >= 28 ? C0207Fe.Cdo.m627new(displayCutout) : 0, i5 >= 28 ? C0207Fe.Cdo.m623case(displayCutout) : 0, i5 >= 28 ? C0207Fe.Cdo.m628try(displayCutout) : 0, i5 >= 28 ? C0207Fe.Cdo.m625for(displayCutout) : 0);
        }

        @Override // defpackage.C3150jM.Ccatch
        /* renamed from: new */
        public void mo7065new(View view) {
            C0633Yn m7068return = m7068return(view);
            if (m7068return == null) {
                m7068return = C0633Yn.f4757do;
            }
            m7075switch(m7068return);
        }

        @Override // defpackage.C3150jM.Ccatch
        /* renamed from: super, reason: not valid java name */
        public void mo7074super(C0633Yn[] c0633YnArr) {
            this.f13685do = c0633YnArr;
        }

        /* renamed from: switch, reason: not valid java name */
        public void m7075switch(C0633Yn c0633Yn) {
            this.f13687if = c0633Yn;
        }

        @Override // defpackage.C3150jM.Ccatch
        /* renamed from: throw, reason: not valid java name */
        public void mo7076throw(C3150jM c3150jM) {
            this.f13686for = c3150jM;
        }
    }

    /* renamed from: jM$catch, reason: invalid class name */
    public static class Ccatch {

        /* renamed from: if, reason: not valid java name */
        public static final C3150jM f13688if;

        /* renamed from: do, reason: not valid java name */
        public final C3150jM f13689do;

        static {
            int i = Build.VERSION.SDK_INT;
            f13688if = (i >= 30 ? new Cnew() : i >= 29 ? new Cfor() : new Cif()).mo7092if().f13676do.mo7079do().f13676do.mo7083if().f13676do.mo7081for();
        }

        public Ccatch(C3150jM c3150jM) {
            this.f13689do = c3150jM;
        }

        /* renamed from: break */
        public C0633Yn mo7070break() {
            return C0633Yn.f4757do;
        }

        /* renamed from: case */
        public C0633Yn mo7064case(int i) {
            return C0633Yn.f4757do;
        }

        /* renamed from: catch, reason: not valid java name */
        public C0633Yn mo7077catch() {
            return mo7070break();
        }

        /* renamed from: class */
        public C3150jM mo7071class(int i, int i2, int i3, int i4) {
            return f13688if;
        }

        /* renamed from: const, reason: not valid java name */
        public boolean mo7078const() {
            return false;
        }

        /* renamed from: do, reason: not valid java name */
        public C3150jM mo7079do() {
            return this.f13689do;
        }

        /* renamed from: else, reason: not valid java name */
        public C0633Yn mo7080else() {
            return mo7070break();
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Ccatch)) {
                return false;
            }
            Ccatch ccatch = (Ccatch) obj;
            return mo7072final() == ccatch.mo7072final() && mo7078const() == ccatch.mo7078const() && Objects.equals(mo7070break(), ccatch.mo7070break()) && Objects.equals(mo7082goto(), ccatch.mo7082goto()) && Objects.equals(mo7085try(), ccatch.mo7085try());
        }

        /* renamed from: final */
        public boolean mo7072final() {
            return false;
        }

        /* renamed from: for, reason: not valid java name */
        public C3150jM mo7081for() {
            return this.f13689do;
        }

        /* renamed from: goto, reason: not valid java name */
        public C0633Yn mo7082goto() {
            return C0633Yn.f4757do;
        }

        public int hashCode() {
            return Objects.hash(Boolean.valueOf(mo7072final()), Boolean.valueOf(mo7078const()), mo7070break(), mo7082goto(), mo7085try());
        }

        /* renamed from: if, reason: not valid java name */
        public C3150jM mo7083if() {
            return this.f13689do;
        }

        /* renamed from: new */
        public void mo7065new(View view) {
        }

        /* renamed from: super */
        public void mo7074super(C0633Yn[] c0633YnArr) {
        }

        /* renamed from: this, reason: not valid java name */
        public C0633Yn mo7084this() {
            return mo7070break();
        }

        /* renamed from: throw */
        public void mo7076throw(C3150jM c3150jM) {
        }

        /* renamed from: try, reason: not valid java name */
        public C0207Fe mo7085try() {
            return null;
        }

        /* renamed from: while, reason: not valid java name */
        public void mo7086while(C0633Yn c0633Yn) {
        }
    }

    /* renamed from: jM$class, reason: invalid class name */
    public static final class Cclass {
        /* renamed from: do, reason: not valid java name */
        public static int m7087do(int i) {
            if (i == 1) {
                return 0;
            }
            if (i == 2) {
                return 1;
            }
            if (i == 4) {
                return 2;
            }
            if (i == 8) {
                return 3;
            }
            if (i == 16) {
                return 4;
            }
            if (i == 32) {
                return 5;
            }
            if (i == 64) {
                return 6;
            }
            if (i == 128) {
                return 7;
            }
            if (i == 256) {
                return 8;
            }
            throw new IllegalArgumentException(V1.m2494case("type needs to be >= FIRST and <= LAST, type=", i));
        }
    }

    /* renamed from: jM$const, reason: invalid class name */
    public static final class Cconst {
        /* renamed from: do, reason: not valid java name */
        public static int m7088do(int i) {
            int statusBars;
            int i2 = 0;
            for (int i3 = 1; i3 <= 256; i3 <<= 1) {
                if ((i & i3) != 0) {
                    if (i3 == 1) {
                        statusBars = WindowInsets.Type.statusBars();
                    } else if (i3 == 2) {
                        statusBars = WindowInsets.Type.navigationBars();
                    } else if (i3 == 4) {
                        statusBars = WindowInsets.Type.captionBar();
                    } else if (i3 == 8) {
                        statusBars = WindowInsets.Type.ime();
                    } else if (i3 == 16) {
                        statusBars = WindowInsets.Type.systemGestures();
                    } else if (i3 == 32) {
                        statusBars = WindowInsets.Type.mandatorySystemGestures();
                    } else if (i3 == 64) {
                        statusBars = WindowInsets.Type.tappableElement();
                    } else if (i3 == 128) {
                        statusBars = WindowInsets.Type.displayCutout();
                    }
                    i2 |= statusBars;
                }
            }
            return i2;
        }
    }

    @SuppressLint({"SoonBlockedPrivateApi"})
    /* renamed from: jM$do, reason: invalid class name */
    public static class Cdo {

        /* renamed from: do, reason: not valid java name */
        public static final Field f13690do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public static final boolean f13691do;

        /* renamed from: for, reason: not valid java name */
        public static final Field f13692for;

        /* renamed from: if, reason: not valid java name */
        public static final Field f13693if;

        static {
            try {
                Field declaredField = View.class.getDeclaredField("mAttachInfo");
                f13690do = declaredField;
                declaredField.setAccessible(true);
                Class<?> cls = Class.forName("android.view.View$AttachInfo");
                Field declaredField2 = cls.getDeclaredField("mStableInsets");
                f13693if = declaredField2;
                declaredField2.setAccessible(true);
                Field declaredField3 = cls.getDeclaredField("mContentInsets");
                f13692for = declaredField3;
                declaredField3.setAccessible(true);
                f13691do = true;
            } catch (ReflectiveOperationException e) {
                e.getMessage();
            }
        }
    }

    /* renamed from: jM$else, reason: invalid class name */
    public static class Celse extends Ccase {

        /* renamed from: for, reason: not valid java name */
        public C0633Yn f13694for;

        public Celse(C3150jM c3150jM, WindowInsets windowInsets) {
            super(c3150jM, windowInsets);
            this.f13694for = null;
        }

        @Override // defpackage.C3150jM.Ccatch
        /* renamed from: const */
        public boolean mo7078const() {
            return ((Ccase) this).f13684do.isConsumed();
        }

        @Override // defpackage.C3150jM.Ccatch
        /* renamed from: for */
        public C3150jM mo7081for() {
            return C3150jM.m7056this(null, ((Ccase) this).f13684do.consumeSystemWindowInsets());
        }

        @Override // defpackage.C3150jM.Ccatch
        /* renamed from: goto */
        public final C0633Yn mo7082goto() {
            if (this.f13694for == null) {
                WindowInsets windowInsets = ((Ccase) this).f13684do;
                this.f13694for = C0633Yn.m2951if(windowInsets.getStableInsetLeft(), windowInsets.getStableInsetTop(), windowInsets.getStableInsetRight(), windowInsets.getStableInsetBottom());
            }
            return this.f13694for;
        }

        @Override // defpackage.C3150jM.Ccatch
        /* renamed from: if */
        public C3150jM mo7083if() {
            return C3150jM.m7056this(null, ((Ccase) this).f13684do.consumeStableInsets());
        }

        @Override // defpackage.C3150jM.Ccatch
        /* renamed from: while */
        public void mo7086while(C0633Yn c0633Yn) {
            this.f13694for = c0633Yn;
        }
    }

    /* renamed from: jM$goto, reason: invalid class name */
    public static class Cgoto extends Celse {
        public Cgoto(C3150jM c3150jM, WindowInsets windowInsets) {
            super(c3150jM, windowInsets);
        }

        @Override // defpackage.C3150jM.Ccatch
        /* renamed from: do */
        public C3150jM mo7079do() {
            WindowInsets consumeDisplayCutout;
            consumeDisplayCutout = ((Ccase) this).f13684do.consumeDisplayCutout();
            return C3150jM.m7056this(null, consumeDisplayCutout);
        }

        @Override // defpackage.C3150jM.Ccase, defpackage.C3150jM.Ccatch
        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Cgoto)) {
                return false;
            }
            Cgoto cgoto = (Cgoto) obj;
            return Objects.equals(((Ccase) this).f13684do, ((Ccase) cgoto).f13684do) && Objects.equals(this.f13687if, cgoto.f13687if);
        }

        @Override // defpackage.C3150jM.Ccatch
        public int hashCode() {
            return ((Ccase) this).f13684do.hashCode();
        }

        @Override // defpackage.C3150jM.Ccatch
        /* renamed from: try */
        public C0207Fe mo7085try() {
            DisplayCutout displayCutout;
            displayCutout = ((Ccase) this).f13684do.getDisplayCutout();
            if (displayCutout == null) {
                return null;
            }
            return new C0207Fe(displayCutout);
        }
    }

    /* renamed from: jM$new, reason: invalid class name */
    public static class Cnew extends Cfor {
        public Cnew() {
        }

        @Override // defpackage.C3150jM.Ctry
        /* renamed from: for, reason: not valid java name */
        public void mo7096for(int i, C0633Yn c0633Yn) {
            ((Cfor) this).f13695do.setInsets(Cconst.m7088do(i), c0633Yn.m2952new());
        }

        public Cnew(C3150jM c3150jM) {
            super(c3150jM);
        }
    }

    /* renamed from: jM$this, reason: invalid class name */
    public static class Cthis extends Cgoto {

        /* renamed from: case, reason: not valid java name */
        public C0633Yn f13702case;

        /* renamed from: new, reason: not valid java name */
        public C0633Yn f13703new;

        /* renamed from: try, reason: not valid java name */
        public C0633Yn f13704try;

        public Cthis(C3150jM c3150jM, WindowInsets windowInsets) {
            super(c3150jM, windowInsets);
            this.f13703new = null;
            this.f13704try = null;
            this.f13702case = null;
        }

        @Override // defpackage.C3150jM.Ccatch
        /* renamed from: catch */
        public C0633Yn mo7077catch() {
            Insets tappableElementInsets;
            if (this.f13702case == null) {
                tappableElementInsets = ((Ccase) this).f13684do.getTappableElementInsets();
                this.f13702case = C0633Yn.m2950for(tappableElementInsets);
            }
            return this.f13702case;
        }

        @Override // defpackage.C3150jM.Ccase, defpackage.C3150jM.Ccatch
        /* renamed from: class */
        public C3150jM mo7071class(int i, int i2, int i3, int i4) {
            WindowInsets inset;
            inset = ((Ccase) this).f13684do.inset(i, i2, i3, i4);
            return C3150jM.m7056this(null, inset);
        }

        @Override // defpackage.C3150jM.Ccatch
        /* renamed from: else */
        public C0633Yn mo7080else() {
            Insets mandatorySystemGestureInsets;
            if (this.f13704try == null) {
                mandatorySystemGestureInsets = ((Ccase) this).f13684do.getMandatorySystemGestureInsets();
                this.f13704try = C0633Yn.m2950for(mandatorySystemGestureInsets);
            }
            return this.f13704try;
        }

        @Override // defpackage.C3150jM.Ccatch
        /* renamed from: this */
        public C0633Yn mo7084this() {
            Insets systemGestureInsets;
            if (this.f13703new == null) {
                systemGestureInsets = ((Ccase) this).f13684do.getSystemGestureInsets();
                this.f13703new = C0633Yn.m2950for(systemGestureInsets);
            }
            return this.f13703new;
        }

        @Override // defpackage.C3150jM.Celse, defpackage.C3150jM.Ccatch
        /* renamed from: while */
        public void mo7086while(C0633Yn c0633Yn) {
        }
    }

    /* renamed from: jM$try, reason: invalid class name */
    public static class Ctry {

        /* renamed from: do, reason: not valid java name */
        public final C3150jM f13705do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public C0633Yn[] f13706do;

        public Ctry() {
            this(new C3150jM());
        }

        /* renamed from: case */
        public void mo7089case(C0633Yn c0633Yn) {
        }

        /* renamed from: do, reason: not valid java name */
        public final void m7097do() {
            C0633Yn[] c0633YnArr = this.f13706do;
            if (c0633YnArr != null) {
                C0633Yn c0633Yn = c0633YnArr[Cclass.m7087do(1)];
                C0633Yn c0633Yn2 = this.f13706do[Cclass.m7087do(2)];
                C3150jM c3150jM = this.f13705do;
                if (c0633Yn2 == null) {
                    c0633Yn2 = c3150jM.m7057do(2);
                }
                if (c0633Yn == null) {
                    c0633Yn = c3150jM.m7057do(1);
                }
                mo7090else(C0633Yn.m2949do(c0633Yn, c0633Yn2));
                C0633Yn c0633Yn3 = this.f13706do[Cclass.m7087do(16)];
                if (c0633Yn3 != null) {
                    mo7089case(c0633Yn3);
                }
                C0633Yn c0633Yn4 = this.f13706do[Cclass.m7087do(32)];
                if (c0633Yn4 != null) {
                    mo7093new(c0633Yn4);
                }
                C0633Yn c0633Yn5 = this.f13706do[Cclass.m7087do(64)];
                if (c0633Yn5 != null) {
                    mo7091goto(c0633Yn5);
                }
            }
        }

        /* renamed from: else */
        public void mo7090else(C0633Yn c0633Yn) {
            throw null;
        }

        /* renamed from: for */
        public void mo7096for(int i, C0633Yn c0633Yn) {
            if (this.f13706do == null) {
                this.f13706do = new C0633Yn[9];
            }
            for (int i2 = 1; i2 <= 256; i2 <<= 1) {
                if ((i & i2) != 0) {
                    this.f13706do[Cclass.m7087do(i2)] = c0633Yn;
                }
            }
        }

        /* renamed from: goto */
        public void mo7091goto(C0633Yn c0633Yn) {
        }

        /* renamed from: if */
        public C3150jM mo7092if() {
            throw null;
        }

        /* renamed from: new */
        public void mo7093new(C0633Yn c0633Yn) {
        }

        /* renamed from: try */
        public void mo7094try(C0633Yn c0633Yn) {
            throw null;
        }

        public Ctry(C3150jM c3150jM) {
            this.f13705do = c3150jM;
        }
    }

    static {
        if (Build.VERSION.SDK_INT >= 30) {
            f13675do = Cbreak.f13677new;
        } else {
            f13675do = Ccatch.f13688if;
        }
    }

    public C3150jM(WindowInsets windowInsets) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 30) {
            this.f13676do = new Cbreak(this, windowInsets);
            return;
        }
        if (i >= 29) {
            this.f13676do = new Cthis(this, windowInsets);
        } else if (i >= 28) {
            this.f13676do = new Cgoto(this, windowInsets);
        } else {
            this.f13676do = new Celse(this, windowInsets);
        }
    }

    /* renamed from: case, reason: not valid java name */
    public static C0633Yn m7055case(C0633Yn c0633Yn, int i, int i2, int i3, int i4) {
        int max = Math.max(0, c0633Yn.f4758do - i);
        int max2 = Math.max(0, c0633Yn.f4760if - i2);
        int max3 = Math.max(0, c0633Yn.f4759for - i3);
        int max4 = Math.max(0, c0633Yn.f4761new - i4);
        return (max == i && max2 == i2 && max3 == i3 && max4 == i4) ? c0633Yn : C0633Yn.m2951if(max, max2, max3, max4);
    }

    /* renamed from: this, reason: not valid java name */
    public static C3150jM m7056this(View view, WindowInsets windowInsets) {
        windowInsets.getClass();
        C3150jM c3150jM = new C3150jM(windowInsets);
        if (view != null && view.isAttachedToWindow()) {
            C3150jM m1864this = QK.m1864this(view);
            Ccatch ccatch = c3150jM.f13676do;
            ccatch.mo7076throw(m1864this);
            ccatch.mo7065new(view.getRootView());
        }
        return c3150jM;
    }

    /* renamed from: do, reason: not valid java name */
    public final C0633Yn m7057do(int i) {
        return this.f13676do.mo7064case(i);
    }

    @Deprecated
    /* renamed from: else, reason: not valid java name */
    public final C3150jM m7058else(int i, int i2, int i3, int i4) {
        int i5 = Build.VERSION.SDK_INT;
        Ctry cnew = i5 >= 30 ? new Cnew(this) : i5 >= 29 ? new Cfor(this) : new Cif(this);
        cnew.mo7090else(C0633Yn.m2951if(i, i2, i3, i4));
        return cnew.mo7092if();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C3150jM)) {
            return false;
        }
        return Objects.equals(this.f13676do, ((C3150jM) obj).f13676do);
    }

    @Deprecated
    /* renamed from: for, reason: not valid java name */
    public final int m7059for() {
        return this.f13676do.mo7070break().f4758do;
    }

    /* renamed from: goto, reason: not valid java name */
    public final WindowInsets m7060goto() {
        Ccatch ccatch = this.f13676do;
        if (ccatch instanceof Ccase) {
            return ((Ccase) ccatch).f13684do;
        }
        return null;
    }

    public final int hashCode() {
        Ccatch ccatch = this.f13676do;
        if (ccatch == null) {
            return 0;
        }
        return ccatch.hashCode();
    }

    @Deprecated
    /* renamed from: if, reason: not valid java name */
    public final int m7061if() {
        return this.f13676do.mo7070break().f4761new;
    }

    @Deprecated
    /* renamed from: new, reason: not valid java name */
    public final int m7062new() {
        return this.f13676do.mo7070break().f4759for;
    }

    @Deprecated
    /* renamed from: try, reason: not valid java name */
    public final int m7063try() {
        return this.f13676do.mo7070break().f4760if;
    }

    /* renamed from: jM$for, reason: invalid class name */
    public static class Cfor extends Ctry {

        /* renamed from: do, reason: not valid java name */
        public final WindowInsets.Builder f13695do;

        public Cfor() {
            this.f13695do = new WindowInsets.Builder();
        }

        @Override // defpackage.C3150jM.Ctry
        /* renamed from: case, reason: not valid java name */
        public void mo7089case(C0633Yn c0633Yn) {
            this.f13695do.setSystemGestureInsets(c0633Yn.m2952new());
        }

        @Override // defpackage.C3150jM.Ctry
        /* renamed from: else, reason: not valid java name */
        public void mo7090else(C0633Yn c0633Yn) {
            this.f13695do.setSystemWindowInsets(c0633Yn.m2952new());
        }

        @Override // defpackage.C3150jM.Ctry
        /* renamed from: goto, reason: not valid java name */
        public void mo7091goto(C0633Yn c0633Yn) {
            this.f13695do.setTappableElementInsets(c0633Yn.m2952new());
        }

        @Override // defpackage.C3150jM.Ctry
        /* renamed from: if, reason: not valid java name */
        public C3150jM mo7092if() {
            WindowInsets build;
            m7097do();
            build = this.f13695do.build();
            C3150jM m7056this = C3150jM.m7056this(null, build);
            m7056this.f13676do.mo7074super(((Ctry) this).f13706do);
            return m7056this;
        }

        @Override // defpackage.C3150jM.Ctry
        /* renamed from: new, reason: not valid java name */
        public void mo7093new(C0633Yn c0633Yn) {
            this.f13695do.setMandatorySystemGestureInsets(c0633Yn.m2952new());
        }

        @Override // defpackage.C3150jM.Ctry
        /* renamed from: try, reason: not valid java name */
        public void mo7094try(C0633Yn c0633Yn) {
            this.f13695do.setStableInsets(c0633Yn.m2952new());
        }

        public Cfor(C3150jM c3150jM) {
            super(c3150jM);
            WindowInsets.Builder builder;
            WindowInsets m7060goto = c3150jM.m7060goto();
            if (m7060goto != null) {
                builder = new WindowInsets.Builder(m7060goto);
            } else {
                builder = new WindowInsets.Builder();
            }
            this.f13695do = builder;
        }
    }

    /* renamed from: jM$if, reason: invalid class name */
    public static class Cif extends Ctry {

        /* renamed from: do, reason: not valid java name */
        public static Constructor<WindowInsets> f13696do = null;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public static Field f13697do = null;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public static boolean f13698do = false;

        /* renamed from: if, reason: not valid java name */
        public static boolean f13699if = false;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public C0633Yn f13700do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public WindowInsets f13701do;

        public Cif() {
            this.f13701do = m7095this();
        }

        /* renamed from: this, reason: not valid java name */
        private static WindowInsets m7095this() {
            if (!f13698do) {
                try {
                    f13697do = WindowInsets.class.getDeclaredField("CONSUMED");
                } catch (ReflectiveOperationException unused) {
                }
                f13698do = true;
            }
            Field field = f13697do;
            if (field != null) {
                try {
                    WindowInsets windowInsets = (WindowInsets) field.get(null);
                    if (windowInsets != null) {
                        return new WindowInsets(windowInsets);
                    }
                } catch (ReflectiveOperationException unused2) {
                }
            }
            if (!f13699if) {
                try {
                    f13696do = WindowInsets.class.getConstructor(Rect.class);
                } catch (ReflectiveOperationException unused3) {
                }
                f13699if = true;
            }
            Constructor<WindowInsets> constructor = f13696do;
            if (constructor != null) {
                try {
                    return constructor.newInstance(new Rect());
                } catch (ReflectiveOperationException unused4) {
                }
            }
            return null;
        }

        @Override // defpackage.C3150jM.Ctry
        /* renamed from: else */
        public void mo7090else(C0633Yn c0633Yn) {
            WindowInsets windowInsets = this.f13701do;
            if (windowInsets != null) {
                this.f13701do = windowInsets.replaceSystemWindowInsets(c0633Yn.f4758do, c0633Yn.f4760if, c0633Yn.f4759for, c0633Yn.f4761new);
            }
        }

        @Override // defpackage.C3150jM.Ctry
        /* renamed from: if */
        public C3150jM mo7092if() {
            m7097do();
            C3150jM m7056this = C3150jM.m7056this(null, this.f13701do);
            C0633Yn[] c0633YnArr = ((Ctry) this).f13706do;
            Ccatch ccatch = m7056this.f13676do;
            ccatch.mo7074super(c0633YnArr);
            ccatch.mo7086while(this.f13700do);
            return m7056this;
        }

        @Override // defpackage.C3150jM.Ctry
        /* renamed from: try */
        public void mo7094try(C0633Yn c0633Yn) {
            this.f13700do = c0633Yn;
        }

        public Cif(C3150jM c3150jM) {
            super(c3150jM);
            this.f13701do = c3150jM.m7060goto();
        }
    }

    public C3150jM() {
        this.f13676do = new Ccatch(this);
    }
}
