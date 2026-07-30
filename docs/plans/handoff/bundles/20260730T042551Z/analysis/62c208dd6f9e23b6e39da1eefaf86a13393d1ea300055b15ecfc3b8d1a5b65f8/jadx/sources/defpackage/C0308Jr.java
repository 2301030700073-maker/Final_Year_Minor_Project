package defpackage;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.view.View;
import com.google.android.material.button.MaterialButton;
import com.joeykrim.rootcheck.R;
import defpackage.C0426Pe;
import java.util.WeakHashMap;

/* renamed from: Jr, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0308Jr {

    /* renamed from: case, reason: not valid java name */
    public static final boolean f1701case;

    /* renamed from: try, reason: not valid java name */
    public static final boolean f1702try;

    /* renamed from: case, reason: not valid java name and collision with other field name */
    public int f1703case;

    /* renamed from: do, reason: not valid java name */
    public int f1704do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public ColorStateList f1705do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public PorterDuff.Mode f1706do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Drawable f1707do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public LayerDrawable f1708do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final MaterialButton f1709do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public C3554qD f1710do;

    /* renamed from: for, reason: not valid java name */
    public int f1712for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public ColorStateList f1713for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public boolean f1714for;

    /* renamed from: if, reason: not valid java name */
    public int f1715if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public ColorStateList f1716if;

    /* renamed from: new, reason: not valid java name */
    public int f1718new;

    /* renamed from: try, reason: not valid java name and collision with other field name */
    public int f1720try;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f1711do = false;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public boolean f1717if = false;

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public boolean f1719new = true;

    static {
        int i = Build.VERSION.SDK_INT;
        f1702try = true;
        f1701case = i <= 22;
    }

    public C0308Jr(MaterialButton materialButton, C3554qD c3554qD) {
        this.f1709do = materialButton;
        this.f1710do = c3554qD;
    }

    /* renamed from: do, reason: not valid java name */
    public final InterfaceC3789uD m1071do() {
        LayerDrawable layerDrawable = this.f1708do;
        if (layerDrawable == null || layerDrawable.getNumberOfLayers() <= 1) {
            return null;
        }
        return this.f1708do.getNumberOfLayers() > 2 ? (InterfaceC3789uD) this.f1708do.getDrawable(2) : (InterfaceC3789uD) this.f1708do.getDrawable(1);
    }

    /* renamed from: for, reason: not valid java name */
    public final void m1072for(C3554qD c3554qD) {
        this.f1710do = c3554qD;
        if (!f1701case || this.f1717if) {
            if (m1073if(false) != null) {
                m1073if(false).mo4768do(c3554qD);
            }
            if (m1073if(true) != null) {
                m1073if(true).mo4768do(c3554qD);
            }
            if (m1071do() != null) {
                m1071do().mo4768do(c3554qD);
                return;
            }
            return;
        }
        WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
        MaterialButton materialButton = this.f1709do;
        int paddingStart = materialButton.getPaddingStart();
        int paddingTop = materialButton.getPaddingTop();
        int paddingEnd = materialButton.getPaddingEnd();
        int paddingBottom = materialButton.getPaddingBottom();
        m1074new();
        materialButton.setPaddingRelative(paddingStart, paddingTop, paddingEnd, paddingBottom);
    }

    /* renamed from: if, reason: not valid java name */
    public final C0716as m1073if(boolean z) {
        LayerDrawable layerDrawable = this.f1708do;
        if (layerDrawable == null || layerDrawable.getNumberOfLayers() <= 0) {
            return null;
        }
        return f1702try ? (C0716as) ((LayerDrawable) ((InsetDrawable) this.f1708do.getDrawable(0)).getDrawable()).getDrawable(!z ? 1 : 0) : (C0716as) this.f1708do.getDrawable(!z ? 1 : 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v11, types: [android.graphics.drawable.LayerDrawable, android.graphics.drawable.RippleDrawable] */
    /* renamed from: new, reason: not valid java name */
    public final void m1074new() {
        InsetDrawable insetDrawable;
        C0716as c0716as = new C0716as(this.f1710do);
        MaterialButton materialButton = this.f1709do;
        c0716as.m4766class(materialButton.getContext());
        C0426Pe.Cdo.m1787goto(c0716as, this.f1705do);
        PorterDuff.Mode mode = this.f1706do;
        if (mode != null) {
            C0426Pe.Cdo.m1790this(c0716as, mode);
        }
        float f = this.f1720try;
        ColorStateList colorStateList = this.f1716if;
        c0716as.f8253do.f8280for = f;
        c0716as.invalidateSelf();
        c0716as.m4775public(colorStateList);
        C0716as c0716as2 = new C0716as(this.f1710do);
        c0716as2.setTint(0);
        float f2 = this.f1720try;
        int m1587goto = this.f1711do ? O2.m1587goto(materialButton, R.attr.colorSurface) : 0;
        c0716as2.f8253do.f8280for = f2;
        c0716as2.invalidateSelf();
        c0716as2.m4775public(ColorStateList.valueOf(m1587goto));
        if (f1702try) {
            C0716as c0716as3 = new C0716as(this.f1710do);
            this.f1707do = c0716as3;
            C0426Pe.Cdo.m1785else(c0716as3, -1);
            ?? rippleDrawable = new RippleDrawable(C3433oA.m7696for(this.f1713for), new InsetDrawable((Drawable) new LayerDrawable(new Drawable[]{c0716as2, c0716as}), this.f1704do, this.f1712for, this.f1715if, this.f1718new), this.f1707do);
            this.f1708do = rippleDrawable;
            insetDrawable = rippleDrawable;
        } else {
            C3374nA c3374nA = new C3374nA(this.f1710do);
            this.f1707do = c3374nA;
            C0426Pe.Cdo.m1787goto(c3374nA, C3433oA.m7696for(this.f1713for));
            LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{c0716as2, c0716as, this.f1707do});
            this.f1708do = layerDrawable;
            insetDrawable = new InsetDrawable((Drawable) layerDrawable, this.f1704do, this.f1712for, this.f1715if, this.f1718new);
        }
        materialButton.m5708else(insetDrawable);
        C0716as m1073if = m1073if(false);
        if (m1073if != null) {
            m1073if.m4770final(this.f1703case);
            m1073if.setState(materialButton.getDrawableState());
        }
    }
}
