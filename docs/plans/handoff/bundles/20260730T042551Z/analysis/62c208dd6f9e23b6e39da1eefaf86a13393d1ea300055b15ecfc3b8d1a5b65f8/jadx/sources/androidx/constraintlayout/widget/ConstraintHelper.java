package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.constraintlayout.widget.Cdo;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Constraints;
import defpackage.C0181Ea;
import defpackage.C2710em;
import defpackage.O2;
import java.util.Arrays;
import java.util.HashMap;

/* loaded from: classes.dex */
public abstract class ConstraintHelper extends View {

    /* renamed from: break, reason: not valid java name */
    public String f6235break;

    /* renamed from: do, reason: not valid java name */
    public final Context f6236do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public C2710em f6237do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final HashMap<Integer, String> f6238do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public int[] f6239do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public View[] f6240do;

    /* renamed from: for, reason: not valid java name */
    public int f6241for;

    public ConstraintHelper(Context context) {
        super(context);
        this.f6239do = new int[32];
        this.f6240do = null;
        this.f6238do = new HashMap<>();
        this.f6236do = context;
        mo3563break(null);
    }

    /* renamed from: break */
    public void mo3563break(AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, O2.x);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == 19) {
                    String string = obtainStyledAttributes.getString(index);
                    this.f6235break = string;
                    m3626const(string);
                }
            }
        }
    }

    /* renamed from: case, reason: not valid java name */
    public final void m3625case(int i) {
        if (i == getId()) {
            return;
        }
        int i2 = this.f6241for + 1;
        int[] iArr = this.f6239do;
        if (i2 > iArr.length) {
            this.f6239do = Arrays.copyOf(iArr, iArr.length * 2);
        }
        int[] iArr2 = this.f6239do;
        int i3 = this.f6241for;
        iArr2[i3] = i;
        this.f6241for = i3 + 1;
    }

    /* renamed from: catch */
    public void mo3564catch(Cdo.C0033do c0033do, C2710em c2710em, Constraints.LayoutParams layoutParams, SparseArray sparseArray) {
        Cdo.Cif cif = c0033do.f6352do;
        int[] iArr = cif.f6378do;
        int i = 0;
        if (iArr != null) {
            m3628final(iArr);
        } else {
            String str = cif.f6392if;
            if (str != null && str.length() > 0) {
                String[] split = cif.f6392if.split(",");
                getContext();
                int[] iArr2 = new int[split.length];
                int i2 = 0;
                for (String str2 : split) {
                    int m3630this = m3630this(str2.trim());
                    if (m3630this != 0) {
                        iArr2[i2] = m3630this;
                        i2++;
                    }
                }
                if (i2 != split.length) {
                    iArr2 = Arrays.copyOf(iArr2, i2);
                }
                cif.f6378do = iArr2;
            }
        }
        c2710em.mo4934do();
        if (cif.f6378do == null) {
            return;
        }
        while (true) {
            int[] iArr3 = cif.f6378do;
            if (i >= iArr3.length) {
                return;
            }
            C0181Ea c0181Ea = (C0181Ea) sparseArray.get(iArr3[i]);
            if (c0181Ea != null) {
                c2710em.mo4935for(c0181Ea);
            }
            i++;
        }
    }

    /* renamed from: class */
    public void mo3565class(C0181Ea c0181Ea, boolean z) {
    }

    /* renamed from: const, reason: not valid java name */
    public final void m3626const(String str) {
        this.f6235break = str;
        if (str == null) {
            return;
        }
        int i = 0;
        this.f6241for = 0;
        while (true) {
            int indexOf = str.indexOf(44, i);
            if (indexOf == -1) {
                m3631try(str.substring(i));
                return;
            } else {
                m3631try(str.substring(i, indexOf));
                i = indexOf + 1;
            }
        }
    }

    /* renamed from: else, reason: not valid java name */
    public final void m3627else() {
        ViewParent parent = getParent();
        if (parent == null || !(parent instanceof ConstraintLayout)) {
            return;
        }
        ConstraintLayout constraintLayout = (ConstraintLayout) parent;
        int visibility = getVisibility();
        float elevation = getElevation();
        for (int i = 0; i < this.f6241for; i++) {
            View m3635for = constraintLayout.m3635for(this.f6239do[i]);
            if (m3635for != null) {
                m3635for.setVisibility(visibility);
                if (elevation > 0.0f) {
                    m3635for.setTranslationZ(m3635for.getTranslationZ() + elevation);
                }
            }
        }
    }

    /* renamed from: final, reason: not valid java name */
    public final void m3628final(int[] iArr) {
        this.f6235break = null;
        this.f6241for = 0;
        for (int i : iArr) {
            m3625case(i);
        }
    }

    /* renamed from: goto, reason: not valid java name */
    public final int m3629goto(ConstraintLayout constraintLayout, String str) {
        Resources resources;
        String str2;
        if (str == null || constraintLayout == null || (resources = this.f6236do.getResources()) == null) {
            return 0;
        }
        int childCount = constraintLayout.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = constraintLayout.getChildAt(i);
            if (childAt.getId() != -1) {
                try {
                    str2 = resources.getResourceEntryName(childAt.getId());
                } catch (Resources.NotFoundException unused) {
                    str2 = null;
                }
                if (str.equals(str2)) {
                    return childAt.getId();
                }
            }
        }
        return 0;
    }

    @Override // android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        String str = this.f6235break;
        if (str != null) {
            m3626const(str);
        }
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        setMeasuredDimension(0, 0);
    }

    /* renamed from: super */
    public void mo3570super() {
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:25:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0045 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: this, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m3630this(java.lang.String r5) {
        /*
            r4 = this;
            android.view.ViewParent r0 = r4.getParent()
            boolean r0 = r0 instanceof androidx.constraintlayout.widget.ConstraintLayout
            r1 = 0
            if (r0 == 0) goto L10
            android.view.ViewParent r0 = r4.getParent()
            androidx.constraintlayout.widget.ConstraintLayout r0 = (androidx.constraintlayout.widget.ConstraintLayout) r0
            goto L11
        L10:
            r0 = r1
        L11:
            boolean r2 = r4.isInEditMode()
            if (r2 == 0) goto L3a
            if (r0 == 0) goto L3a
            boolean r2 = r5 instanceof java.lang.String
            if (r2 == 0) goto L2e
            java.util.HashMap<java.lang.String, java.lang.Integer> r2 = r0.f6250do
            if (r2 == 0) goto L2e
            boolean r2 = r2.containsKey(r5)
            if (r2 == 0) goto L2e
            java.util.HashMap<java.lang.String, java.lang.Integer> r2 = r0.f6250do
            java.lang.Object r2 = r2.get(r5)
            goto L2f
        L2e:
            r2 = r1
        L2f:
            boolean r3 = r2 instanceof java.lang.Integer
            if (r3 == 0) goto L3a
            java.lang.Integer r2 = (java.lang.Integer) r2
            int r2 = r2.intValue()
            goto L3b
        L3a:
            r2 = 0
        L3b:
            if (r2 != 0) goto L43
            if (r0 == 0) goto L43
            int r2 = r4.m3629goto(r0, r5)
        L43:
            if (r2 != 0) goto L51
            java.lang.Class<Hy> r0 = defpackage.Hy.class
            java.lang.reflect.Field r0 = r0.getField(r5)     // Catch: java.lang.Exception -> L50
            int r2 = r0.getInt(r1)     // Catch: java.lang.Exception -> L50
            goto L51
        L50:
        L51:
            if (r2 != 0) goto L63
            android.content.Context r0 = r4.f6236do
            android.content.res.Resources r1 = r0.getResources()
            java.lang.String r2 = "id"
            java.lang.String r0 = r0.getPackageName()
            int r2 = r1.getIdentifier(r5, r2, r0)
        L63:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.widget.ConstraintHelper.m3630this(java.lang.String):int");
    }

    /* renamed from: throw */
    public void mo3571throw(ConstraintLayout constraintLayout) {
    }

    /* renamed from: try, reason: not valid java name */
    public final void m3631try(String str) {
        if (str == null || str.length() == 0 || this.f6236do == null) {
            return;
        }
        String trim = str.trim();
        if (getParent() instanceof ConstraintLayout) {
        }
        int m3630this = m3630this(trim);
        if (m3630this != 0) {
            this.f6238do.put(Integer.valueOf(m3630this), trim);
            m3625case(m3630this);
        }
    }

    /* renamed from: while, reason: not valid java name */
    public final void m3632while() {
        if (this.f6237do == null) {
            return;
        }
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams instanceof ConstraintLayout.LayoutParams) {
            ((ConstraintLayout.LayoutParams) layoutParams).f6271do = this.f6237do;
        }
    }

    public ConstraintHelper(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f6239do = new int[32];
        this.f6240do = null;
        this.f6238do = new HashMap<>();
        this.f6236do = context;
        mo3563break(attributeSet);
    }

    public ConstraintHelper(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f6239do = new int[32];
        this.f6240do = null;
        this.f6238do = new HashMap<>();
        this.f6236do = context;
        mo3563break(attributeSet);
    }
}
