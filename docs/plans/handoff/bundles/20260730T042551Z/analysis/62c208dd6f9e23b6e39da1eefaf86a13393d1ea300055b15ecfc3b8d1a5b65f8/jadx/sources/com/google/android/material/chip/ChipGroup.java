package com.google.android.material.chip;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import com.google.android.material.internal.FlowLayout;
import com.joeykrim.rootcheck.R;
import defpackage.C0682aH;
import defpackage.C2775fs;
import defpackage.C3385nL;
import defpackage.C3783u7;
import defpackage.C3842v7;
import defpackage.C3893w;
import defpackage.InterfaceC0483Rr;
import defpackage.O2;
import defpackage.QK;
import java.util.Iterator;
import java.util.WeakHashMap;

/* loaded from: classes3.dex */
public class ChipGroup extends FlowLayout {

    /* renamed from: this, reason: not valid java name */
    public static final /* synthetic */ int f10812this = 0;

    /* renamed from: case, reason: not valid java name */
    public int f10813case;

    /* renamed from: do, reason: not valid java name */
    public final Cif f10814do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C3842v7<Chip> f10815do;

    /* renamed from: else, reason: not valid java name */
    public int f10816else;

    /* renamed from: goto, reason: not valid java name */
    public final int f10817goto;

    public static class LayoutParams extends ViewGroup.MarginLayoutParams {
        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public LayoutParams() {
            super(-2, -2);
        }
    }

    /* renamed from: com.google.android.material.chip.ChipGroup$do, reason: invalid class name */
    public class Cdo implements C3842v7.Cdo {
        public Cdo() {
        }
    }

    /* renamed from: com.google.android.material.chip.ChipGroup$if, reason: invalid class name */
    public class Cif implements ViewGroup.OnHierarchyChangeListener {

        /* renamed from: do, reason: not valid java name */
        public ViewGroup.OnHierarchyChangeListener f10819do;

        public Cif() {
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public final void onChildViewAdded(View view, View view2) {
            ChipGroup chipGroup = ChipGroup.this;
            if (view == chipGroup && (view2 instanceof Chip)) {
                if (view2.getId() == -1) {
                    WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
                    view2.setId(View.generateViewId());
                }
                C3842v7<Chip> c3842v7 = chipGroup.f10815do;
                Chip chip = (Chip) view2;
                c3842v7.f16018do.put(Integer.valueOf(chip.getId()), chip);
                if (chip.isChecked()) {
                    c3842v7.m8431do(chip);
                }
                chip.f10794do = new C3783u7(c3842v7);
            }
            ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = this.f10819do;
            if (onHierarchyChangeListener != null) {
                onHierarchyChangeListener.onChildViewAdded(view, view2);
            }
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public final void onChildViewRemoved(View view, View view2) {
            ChipGroup chipGroup = ChipGroup.this;
            if (view == chipGroup && (view2 instanceof Chip)) {
                C3842v7<Chip> c3842v7 = chipGroup.f10815do;
                Chip chip = (Chip) view2;
                c3842v7.getClass();
                chip.f10794do = null;
                c3842v7.f16018do.remove(Integer.valueOf(chip.getId()));
                c3842v7.f16019do.remove(Integer.valueOf(chip.getId()));
            }
            ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = this.f10819do;
            if (onHierarchyChangeListener != null) {
                onHierarchyChangeListener.onChildViewRemoved(view, view2);
            }
        }
    }

    public ChipGroup(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.chipGroupStyle);
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return super.checkLayoutParams(layoutParams) && (layoutParams instanceof LayoutParams);
    }

    @Override // com.google.android.material.internal.FlowLayout
    /* renamed from: do, reason: not valid java name */
    public final boolean mo5748do() {
        return ((FlowLayout) this).f11171do;
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams();
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        int i = this.f10817goto;
        if (i != -1) {
            C3842v7<Chip> c3842v7 = this.f10815do;
            InterfaceC0483Rr<Chip> interfaceC0483Rr = (InterfaceC0483Rr) c3842v7.f16018do.get(Integer.valueOf(i));
            if (interfaceC0483Rr != null && c3842v7.m8431do(interfaceC0483Rr)) {
                c3842v7.m8433if();
            }
        }
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        int i;
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        if (((FlowLayout) this).f11171do) {
            i = 0;
            for (int i2 = 0; i2 < getChildCount(); i2++) {
                if (getChildAt(i2) instanceof Chip) {
                    if (getChildAt(i2).getVisibility() == 0) {
                        i++;
                    }
                }
            }
        } else {
            i = -1;
        }
        accessibilityNodeInfo.setCollectionInfo((AccessibilityNodeInfo.CollectionInfo) C3893w.Ctry.m8536do(this.f11174try, i, this.f10815do.f16021do ? 1 : 2).f16179do);
    }

    @Override // android.view.ViewGroup
    public final void setOnHierarchyChangeListener(ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener) {
        this.f10814do.f10819do = onHierarchyChangeListener;
    }

    public ChipGroup(Context context, AttributeSet attributeSet, int i) {
        super(C2775fs.m6683do(context, attributeSet, i, R.style.Widget_MaterialComponents_ChipGroup), attributeSet, i);
        C3842v7<Chip> c3842v7 = new C3842v7<>();
        this.f10815do = c3842v7;
        this.f10814do = new Cif();
        TypedArray m3115new = C0682aH.m3115new(getContext(), attributeSet, O2.f2474catch, i, R.style.Widget_MaterialComponents_ChipGroup, new int[0]);
        int dimensionPixelOffset = m3115new.getDimensionPixelOffset(1, 0);
        int dimensionPixelOffset2 = m3115new.getDimensionPixelOffset(2, dimensionPixelOffset);
        if (this.f10813case != dimensionPixelOffset2) {
            this.f10813case = dimensionPixelOffset2;
            this.f11173new = dimensionPixelOffset2;
            requestLayout();
        }
        int dimensionPixelOffset3 = m3115new.getDimensionPixelOffset(3, dimensionPixelOffset);
        if (this.f10816else != dimensionPixelOffset3) {
            this.f10816else = dimensionPixelOffset3;
            this.f11172for = dimensionPixelOffset3;
            requestLayout();
        }
        ((FlowLayout) this).f11171do = m3115new.getBoolean(5, false);
        boolean z = m3115new.getBoolean(6, false);
        if (c3842v7.f16021do != z) {
            c3842v7.f16021do = z;
            boolean z2 = !c3842v7.f16019do.isEmpty();
            Iterator it = c3842v7.f16018do.values().iterator();
            while (it.hasNext()) {
                c3842v7.m8432for((InterfaceC0483Rr) it.next(), false);
            }
            if (z2) {
                c3842v7.m8433if();
            }
        }
        this.f10815do.f16022if = m3115new.getBoolean(4, false);
        this.f10817goto = m3115new.getResourceId(0, -1);
        m3115new.recycle();
        this.f10815do.f16020do = new Cdo();
        super.setOnHierarchyChangeListener(this.f10814do);
        WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
        setImportantForAccessibility(1);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new LayoutParams(layoutParams);
    }
}
