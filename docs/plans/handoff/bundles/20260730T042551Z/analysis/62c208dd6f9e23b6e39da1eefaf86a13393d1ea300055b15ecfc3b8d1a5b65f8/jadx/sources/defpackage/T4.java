package defpackage;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.util.Property;
import android.view.View;
import android.view.animation.LinearInterpolator;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public abstract class T4 implements InterfaceC0178Dt {

    /* renamed from: do, reason: not valid java name */
    public C0156Ct f3590do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Context f3591do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C0806cM f3592do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ExtendedFloatingActionButton f3593do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ArrayList<Animator.AnimatorListener> f3594do = new ArrayList<>();

    /* renamed from: if, reason: not valid java name */
    public C0156Ct f3595if;

    /* renamed from: T4$do, reason: invalid class name */
    public class Cdo extends Property<ExtendedFloatingActionButton, Float> {
        public Cdo() {
            super(Float.class, "LABEL_OPACITY_PROPERTY");
        }

        @Override // android.util.Property
        public final Float get(ExtendedFloatingActionButton extendedFloatingActionButton) {
            ExtendedFloatingActionButton extendedFloatingActionButton2 = extendedFloatingActionButton;
            float alpha = (Color.alpha(extendedFloatingActionButton2.getCurrentTextColor()) / 255.0f) / Color.alpha(extendedFloatingActionButton2.f11050if.getColorForState(extendedFloatingActionButton2.getDrawableState(), T4.this.f3593do.f11050if.getDefaultColor()));
            LinearInterpolator linearInterpolator = C2785g1.f13028do;
            return Float.valueOf((alpha * 1.0f) + 0.0f);
        }

        @Override // android.util.Property
        public final void set(ExtendedFloatingActionButton extendedFloatingActionButton, Float f) {
            ExtendedFloatingActionButton extendedFloatingActionButton2 = extendedFloatingActionButton;
            Float f2 = f;
            int colorForState = extendedFloatingActionButton2.f11050if.getColorForState(extendedFloatingActionButton2.getDrawableState(), T4.this.f3593do.f11050if.getDefaultColor());
            float floatValue = f2.floatValue();
            LinearInterpolator linearInterpolator = C2785g1.f13028do;
            ColorStateList valueOf = ColorStateList.valueOf(Color.argb((int) (((((Color.alpha(colorForState) / 255.0f) - 0.0f) * floatValue) + 0.0f) * 255.0f), Color.red(colorForState), Color.green(colorForState), Color.blue(colorForState)));
            if (f2.floatValue() == 1.0f) {
                extendedFloatingActionButton2.m5812final(extendedFloatingActionButton2.f11050if);
            } else {
                extendedFloatingActionButton2.m5812final(valueOf);
            }
        }
    }

    public T4(ExtendedFloatingActionButton extendedFloatingActionButton, C0806cM c0806cM) {
        this.f3593do = extendedFloatingActionButton;
        this.f3591do = extendedFloatingActionButton.getContext();
        this.f3592do = c0806cM;
    }

    @Override // defpackage.InterfaceC0178Dt
    /* renamed from: else */
    public AnimatorSet mo410else() {
        C0156Ct c0156Ct = this.f3595if;
        if (c0156Ct == null) {
            if (this.f3590do == null) {
                this.f3590do = C0156Ct.m310if(this.f3591do, mo411for());
            }
            c0156Ct = this.f3590do;
            c0156Ct.getClass();
        }
        return m2214goto(c0156Ct);
    }

    /* renamed from: goto, reason: not valid java name */
    public final AnimatorSet m2214goto(C0156Ct c0156Ct) {
        ArrayList arrayList = new ArrayList();
        boolean m312else = c0156Ct.m312else("opacity");
        ExtendedFloatingActionButton extendedFloatingActionButton = this.f3593do;
        if (m312else) {
            arrayList.add(c0156Ct.m314new("opacity", extendedFloatingActionButton, View.ALPHA));
        }
        if (c0156Ct.m312else("scale")) {
            arrayList.add(c0156Ct.m314new("scale", extendedFloatingActionButton, View.SCALE_Y));
            arrayList.add(c0156Ct.m314new("scale", extendedFloatingActionButton, View.SCALE_X));
        }
        if (c0156Ct.m312else(ViewHierarchyConstants.DIMENSION_WIDTH_KEY)) {
            arrayList.add(c0156Ct.m314new(ViewHierarchyConstants.DIMENSION_WIDTH_KEY, extendedFloatingActionButton, ExtendedFloatingActionButton.f11037do));
        }
        if (c0156Ct.m312else(ViewHierarchyConstants.DIMENSION_HEIGHT_KEY)) {
            arrayList.add(c0156Ct.m314new(ViewHierarchyConstants.DIMENSION_HEIGHT_KEY, extendedFloatingActionButton, ExtendedFloatingActionButton.f11036do));
        }
        if (c0156Ct.m312else("paddingStart")) {
            arrayList.add(c0156Ct.m314new("paddingStart", extendedFloatingActionButton, ExtendedFloatingActionButton.f11038do));
        }
        if (c0156Ct.m312else("paddingEnd")) {
            arrayList.add(c0156Ct.m314new("paddingEnd", extendedFloatingActionButton, ExtendedFloatingActionButton.f11039do));
        }
        if (c0156Ct.m312else("labelOpacity")) {
            arrayList.add(c0156Ct.m314new("labelOpacity", extendedFloatingActionButton, new Cdo()));
        }
        AnimatorSet animatorSet = new AnimatorSet();
        C0315Kc.m1183throws(animatorSet, arrayList);
        return animatorSet;
    }

    @Override // defpackage.InterfaceC0178Dt
    /* renamed from: if */
    public void mo412if() {
        this.f3592do.f8526do = null;
    }
}
