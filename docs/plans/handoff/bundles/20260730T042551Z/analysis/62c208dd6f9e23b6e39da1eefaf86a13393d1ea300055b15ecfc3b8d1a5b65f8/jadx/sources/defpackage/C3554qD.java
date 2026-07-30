package defpackage;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;

/* renamed from: qD, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3554qD {

    /* renamed from: do, reason: not valid java name */
    public static final C3244kz f15056do = new C3244kz(0.5f);

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final HQ f15057do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final InterfaceC2817gb f15058do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C3872vf f15059do;

    /* renamed from: for, reason: not valid java name */
    public final HQ f15060for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public final InterfaceC2817gb f15061for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public final C3872vf f15062for;

    /* renamed from: if, reason: not valid java name */
    public final HQ f15063if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final InterfaceC2817gb f15064if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final C3872vf f15065if;

    /* renamed from: new, reason: not valid java name */
    public final HQ f15066new;

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public final InterfaceC2817gb f15067new;

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public final C3872vf f15068new;

    /* renamed from: qD$if, reason: invalid class name */
    public interface Cif {
        /* renamed from: new */
        InterfaceC2817gb mo2068new(InterfaceC2817gb interfaceC2817gb);
    }

    public C3554qD(Cdo cdo) {
        this.f15057do = cdo.f15069do;
        this.f15063if = cdo.f15075if;
        this.f15060for = cdo.f15072for;
        this.f15066new = cdo.f15078new;
        this.f15058do = cdo.f15070do;
        this.f15064if = cdo.f15076if;
        this.f15061for = cdo.f15073for;
        this.f15067new = cdo.f15079new;
        this.f15059do = cdo.f15071do;
        this.f15065if = cdo.f15077if;
        this.f15062for = cdo.f15074for;
        this.f15068new = cdo.f15080new;
    }

    /* renamed from: do, reason: not valid java name */
    public static Cdo m7858do(Context context, int i, int i2) {
        return m7860if(context, i, i2, new Celse(0));
    }

    /* renamed from: for, reason: not valid java name */
    public static Cdo m7859for(Context context, AttributeSet attributeSet, int i, int i2) {
        return m7861new(context, attributeSet, i, i2, new Celse(0));
    }

    /* renamed from: if, reason: not valid java name */
    public static Cdo m7860if(Context context, int i, int i2, InterfaceC2817gb interfaceC2817gb) {
        ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(context, i);
        if (i2 != 0) {
            contextThemeWrapper = new ContextThemeWrapper(contextThemeWrapper, i2);
        }
        TypedArray obtainStyledAttributes = contextThemeWrapper.obtainStyledAttributes(O2.j);
        try {
            int i3 = obtainStyledAttributes.getInt(0, 0);
            int i4 = obtainStyledAttributes.getInt(3, i3);
            int i5 = obtainStyledAttributes.getInt(4, i3);
            int i6 = obtainStyledAttributes.getInt(2, i3);
            int i7 = obtainStyledAttributes.getInt(1, i3);
            InterfaceC2817gb m7862try = m7862try(obtainStyledAttributes, 5, interfaceC2817gb);
            InterfaceC2817gb m7862try2 = m7862try(obtainStyledAttributes, 8, m7862try);
            InterfaceC2817gb m7862try3 = m7862try(obtainStyledAttributes, 9, m7862try);
            InterfaceC2817gb m7862try4 = m7862try(obtainStyledAttributes, 7, m7862try);
            InterfaceC2817gb m7862try5 = m7862try(obtainStyledAttributes, 6, m7862try);
            Cdo cdo = new Cdo();
            HQ m1597break = O4.m1597break(i4);
            cdo.f15069do = m1597break;
            float m7865do = Cdo.m7865do(m1597break);
            if (m7865do != -1.0f) {
                cdo.m7870try(m7865do);
            }
            cdo.f15070do = m7862try2;
            HQ m1597break2 = O4.m1597break(i5);
            cdo.f15075if = m1597break2;
            float m7865do2 = Cdo.m7865do(m1597break2);
            if (m7865do2 != -1.0f) {
                cdo.m7866case(m7865do2);
            }
            cdo.f15076if = m7862try3;
            HQ m1597break3 = O4.m1597break(i6);
            cdo.f15072for = m1597break3;
            float m7865do3 = Cdo.m7865do(m1597break3);
            if (m7865do3 != -1.0f) {
                cdo.m7869new(m7865do3);
            }
            cdo.f15073for = m7862try4;
            HQ m1597break4 = O4.m1597break(i7);
            cdo.f15078new = m1597break4;
            float m7865do4 = Cdo.m7865do(m1597break4);
            if (m7865do4 != -1.0f) {
                cdo.m7867for(m7865do4);
            }
            cdo.f15079new = m7862try5;
            return cdo;
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static Cdo m7861new(Context context, AttributeSet attributeSet, int i, int i2, InterfaceC2817gb interfaceC2817gb) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, O2.f2501interface, i, i2);
        int resourceId = obtainStyledAttributes.getResourceId(0, 0);
        int resourceId2 = obtainStyledAttributes.getResourceId(1, 0);
        obtainStyledAttributes.recycle();
        return m7860if(context, resourceId, resourceId2, interfaceC2817gb);
    }

    /* renamed from: try, reason: not valid java name */
    public static InterfaceC2817gb m7862try(TypedArray typedArray, int i, InterfaceC2817gb interfaceC2817gb) {
        TypedValue peekValue = typedArray.peekValue(i);
        if (peekValue == null) {
            return interfaceC2817gb;
        }
        int i2 = peekValue.type;
        return i2 == 5 ? new Celse(TypedValue.complexToDimensionPixelSize(peekValue.data, typedArray.getResources().getDisplayMetrics())) : i2 == 6 ? new C3244kz(peekValue.getFraction(1.0f, 1.0f)) : interfaceC2817gb;
    }

    /* renamed from: case, reason: not valid java name */
    public final boolean m7863case(RectF rectF) {
        boolean z = this.f15068new.getClass().equals(C3872vf.class) && this.f15065if.getClass().equals(C3872vf.class) && this.f15059do.getClass().equals(C3872vf.class) && this.f15062for.getClass().equals(C3872vf.class);
        float mo1748do = this.f15058do.mo1748do(rectF);
        return z && ((this.f15064if.mo1748do(rectF) > mo1748do ? 1 : (this.f15064if.mo1748do(rectF) == mo1748do ? 0 : -1)) == 0 && (this.f15067new.mo1748do(rectF) > mo1748do ? 1 : (this.f15067new.mo1748do(rectF) == mo1748do ? 0 : -1)) == 0 && (this.f15061for.mo1748do(rectF) > mo1748do ? 1 : (this.f15061for.mo1748do(rectF) == mo1748do ? 0 : -1)) == 0) && ((this.f15063if instanceof PA) && (this.f15057do instanceof PA) && (this.f15060for instanceof PA) && (this.f15066new instanceof PA));
    }

    /* renamed from: else, reason: not valid java name */
    public final C3554qD m7864else(Cif cif) {
        Cdo cdo = new Cdo(this);
        cdo.f15070do = cif.mo2068new(this.f15058do);
        cdo.f15076if = cif.mo2068new(this.f15064if);
        cdo.f15079new = cif.mo2068new(this.f15067new);
        cdo.f15073for = cif.mo2068new(this.f15061for);
        return new C3554qD(cdo);
    }

    /* renamed from: qD$do, reason: invalid class name */
    public static final class Cdo {

        /* renamed from: do, reason: not valid java name */
        public HQ f15069do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public InterfaceC2817gb f15070do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public C3872vf f15071do;

        /* renamed from: for, reason: not valid java name */
        public HQ f15072for;

        /* renamed from: for, reason: not valid java name and collision with other field name */
        public InterfaceC2817gb f15073for;

        /* renamed from: for, reason: not valid java name and collision with other field name */
        public C3872vf f15074for;

        /* renamed from: if, reason: not valid java name */
        public HQ f15075if;

        /* renamed from: if, reason: not valid java name and collision with other field name */
        public InterfaceC2817gb f15076if;

        /* renamed from: if, reason: not valid java name and collision with other field name */
        public final C3872vf f15077if;

        /* renamed from: new, reason: not valid java name */
        public HQ f15078new;

        /* renamed from: new, reason: not valid java name and collision with other field name */
        public InterfaceC2817gb f15079new;

        /* renamed from: new, reason: not valid java name and collision with other field name */
        public final C3872vf f15080new;

        public Cdo() {
            this.f15069do = new PA();
            this.f15075if = new PA();
            this.f15072for = new PA();
            this.f15078new = new PA();
            this.f15070do = new Celse(0.0f);
            this.f15076if = new Celse(0.0f);
            this.f15073for = new Celse(0.0f);
            this.f15079new = new Celse(0.0f);
            this.f15071do = new C3872vf();
            this.f15077if = new C3872vf();
            this.f15074for = new C3872vf();
            this.f15080new = new C3872vf();
        }

        /* renamed from: do, reason: not valid java name */
        public static float m7865do(HQ hq) {
            if (hq instanceof PA) {
                return ((PA) hq).f2741do;
            }
            if (hq instanceof C0139Cc) {
                return ((C0139Cc) hq).f396do;
            }
            return -1.0f;
        }

        /* renamed from: case, reason: not valid java name */
        public final void m7866case(float f) {
            this.f15076if = new Celse(f);
        }

        /* renamed from: for, reason: not valid java name */
        public final void m7867for(float f) {
            this.f15079new = new Celse(f);
        }

        /* renamed from: if, reason: not valid java name */
        public final void m7868if(float f) {
            m7870try(f);
            m7866case(f);
            m7869new(f);
            m7867for(f);
        }

        /* renamed from: new, reason: not valid java name */
        public final void m7869new(float f) {
            this.f15073for = new Celse(f);
        }

        /* renamed from: try, reason: not valid java name */
        public final void m7870try(float f) {
            this.f15070do = new Celse(f);
        }

        public Cdo(C3554qD c3554qD) {
            this.f15069do = new PA();
            this.f15075if = new PA();
            this.f15072for = new PA();
            this.f15078new = new PA();
            this.f15070do = new Celse(0.0f);
            this.f15076if = new Celse(0.0f);
            this.f15073for = new Celse(0.0f);
            this.f15079new = new Celse(0.0f);
            this.f15071do = new C3872vf();
            this.f15077if = new C3872vf();
            this.f15074for = new C3872vf();
            this.f15080new = new C3872vf();
            this.f15069do = c3554qD.f15057do;
            this.f15075if = c3554qD.f15063if;
            this.f15072for = c3554qD.f15060for;
            this.f15078new = c3554qD.f15066new;
            this.f15070do = c3554qD.f15058do;
            this.f15076if = c3554qD.f15064if;
            this.f15073for = c3554qD.f15061for;
            this.f15079new = c3554qD.f15067new;
            this.f15071do = c3554qD.f15059do;
            this.f15077if = c3554qD.f15065if;
            this.f15074for = c3554qD.f15062for;
            this.f15080new = c3554qD.f15068new;
        }
    }

    public C3554qD() {
        this.f15057do = new PA();
        this.f15063if = new PA();
        this.f15060for = new PA();
        this.f15066new = new PA();
        this.f15058do = new Celse(0.0f);
        this.f15064if = new Celse(0.0f);
        this.f15061for = new Celse(0.0f);
        this.f15067new = new Celse(0.0f);
        this.f15059do = new C3872vf();
        this.f15065if = new C3872vf();
        this.f15062for = new C3872vf();
        this.f15068new = new C3872vf();
    }
}
