package defpackage;

import android.graphics.Rect;
import android.os.Build;
import android.util.Property;
import android.view.View;

/* renamed from: vL, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3856vL {

    /* renamed from: do, reason: not valid java name */
    public static final Cdo f16069do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final Cif f16070do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final C4033yL f16071do;

    /* renamed from: vL$do, reason: invalid class name */
    public class Cdo extends Property<View, Float> {
        public Cdo() {
            super(Float.class, "translationAlpha");
        }

        @Override // android.util.Property
        public final Float get(View view) {
            return Float.valueOf(C3856vL.f16071do.mo177do(view));
        }

        @Override // android.util.Property
        public final void set(View view, Float f) {
            C3856vL.m8471if(view, f.floatValue());
        }
    }

    /* renamed from: vL$if, reason: invalid class name */
    public class Cif extends Property<View, Rect> {
        public Cif() {
            super(Rect.class, "clipBounds");
        }

        @Override // android.util.Property
        public final Rect get(View view) {
            return view.getClipBounds();
        }

        @Override // android.util.Property
        public final void set(View view, Rect rect) {
            view.setClipBounds(rect);
        }
    }

    static {
        int i = Build.VERSION.SDK_INT;
        if (i >= 29) {
            f16071do = new BL();
        } else if (i >= 23) {
            f16071do = new AL();
        } else if (i >= 22) {
            f16071do = new C4092zL();
        } else {
            f16071do = new C4033yL();
        }
        f16069do = new Cdo();
        f16070do = new Cif();
    }

    /* renamed from: do, reason: not valid java name */
    public static void m8469do(View view, int i, int i2, int i3, int i4) {
        f16071do.mo180if(view, i, i2, i3, i4);
    }

    /* renamed from: for, reason: not valid java name */
    public static void m8470for(View view, int i) {
        f16071do.mo70new(view, i);
    }

    /* renamed from: if, reason: not valid java name */
    public static void m8471if(View view, float f) {
        f16071do.mo179for(view, f);
    }
}
