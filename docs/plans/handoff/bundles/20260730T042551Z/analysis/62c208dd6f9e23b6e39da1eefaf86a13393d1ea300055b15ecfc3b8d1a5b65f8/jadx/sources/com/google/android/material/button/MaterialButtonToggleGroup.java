package com.google.android.material.button;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.ToggleButton;
import com.google.android.material.button.MaterialButton;
import com.joeykrim.rootcheck.R;
import defpackage.C0308Jr;
import defpackage.C0682aH;
import defpackage.C0716as;
import defpackage.C2775fs;
import defpackage.C3385nL;
import defpackage.C3554qD;
import defpackage.C3738tL;
import defpackage.C3893w;
import defpackage.Celse;
import defpackage.Cimplements;
import defpackage.InterfaceC2817gb;
import defpackage.O2;
import defpackage.QK;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;
import java.util.TreeMap;
import java.util.WeakHashMap;

/* loaded from: classes3.dex */
public class MaterialButtonToggleGroup extends LinearLayout {

    /* renamed from: new, reason: not valid java name */
    public static final /* synthetic */ int f10687new = 0;

    /* renamed from: do, reason: not valid java name */
    public final Cdo f10688do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Ctry f10689do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ArrayList f10690do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public HashSet f10691do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final LinkedHashSet<Cnew> f10692do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f10693do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Integer[] f10694do;

    /* renamed from: for, reason: not valid java name */
    public final int f10695for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public final boolean f10696for;

    /* renamed from: if, reason: not valid java name */
    public boolean f10697if;

    /* renamed from: com.google.android.material.button.MaterialButtonToggleGroup$do, reason: invalid class name */
    public class Cdo implements Comparator<MaterialButton> {
        public Cdo() {
        }

        @Override // java.util.Comparator
        public final int compare(MaterialButton materialButton, MaterialButton materialButton2) {
            MaterialButton materialButton3 = materialButton;
            MaterialButton materialButton4 = materialButton2;
            int compareTo = Boolean.valueOf(materialButton3.isChecked()).compareTo(Boolean.valueOf(materialButton4.isChecked()));
            if (compareTo != 0) {
                return compareTo;
            }
            int compareTo2 = Boolean.valueOf(materialButton3.isPressed()).compareTo(Boolean.valueOf(materialButton4.isPressed()));
            if (compareTo2 != 0) {
                return compareTo2;
            }
            MaterialButtonToggleGroup materialButtonToggleGroup = MaterialButtonToggleGroup.this;
            return Integer.valueOf(materialButtonToggleGroup.indexOfChild(materialButton3)).compareTo(Integer.valueOf(materialButtonToggleGroup.indexOfChild(materialButton4)));
        }
    }

    /* renamed from: com.google.android.material.button.MaterialButtonToggleGroup$for, reason: invalid class name */
    public static class Cfor {

        /* renamed from: do, reason: not valid java name */
        public static final Celse f10699do = new Celse(0.0f);

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final InterfaceC2817gb f10700do;

        /* renamed from: for, reason: not valid java name */
        public final InterfaceC2817gb f10701for;

        /* renamed from: if, reason: not valid java name */
        public final InterfaceC2817gb f10702if;

        /* renamed from: new, reason: not valid java name */
        public final InterfaceC2817gb f10703new;

        public Cfor(InterfaceC2817gb interfaceC2817gb, InterfaceC2817gb interfaceC2817gb2, InterfaceC2817gb interfaceC2817gb3, InterfaceC2817gb interfaceC2817gb4) {
            this.f10700do = interfaceC2817gb;
            this.f10702if = interfaceC2817gb3;
            this.f10701for = interfaceC2817gb4;
            this.f10703new = interfaceC2817gb2;
        }
    }

    /* renamed from: com.google.android.material.button.MaterialButtonToggleGroup$if, reason: invalid class name */
    public class Cif extends Cimplements {
        public Cif() {
        }

        @Override // defpackage.Cimplements
        /* renamed from: new */
        public final void mo1356new(View view, C3893w c3893w) {
            int i;
            ((Cimplements) this).f13562do.onInitializeAccessibilityNodeInfo(view, c3893w.f16161do);
            int i2 = MaterialButtonToggleGroup.f10687new;
            MaterialButtonToggleGroup materialButtonToggleGroup = MaterialButtonToggleGroup.this;
            materialButtonToggleGroup.getClass();
            if (view instanceof MaterialButton) {
                i = 0;
                for (int i3 = 0; i3 < materialButtonToggleGroup.getChildCount(); i3++) {
                    if (materialButtonToggleGroup.getChildAt(i3) == view) {
                        break;
                    }
                    if ((materialButtonToggleGroup.getChildAt(i3) instanceof MaterialButton) && materialButtonToggleGroup.m5717new(i3)) {
                        i++;
                    }
                }
            }
            i = -1;
            c3893w.m8497catch(C3893w.Ccase.m8509do(0, 1, i, false, ((MaterialButton) view).isChecked(), 1));
        }
    }

    /* renamed from: com.google.android.material.button.MaterialButtonToggleGroup$new, reason: invalid class name */
    public interface Cnew {
        /* renamed from: do, reason: not valid java name */
        void mo5719do();
    }

    /* renamed from: com.google.android.material.button.MaterialButtonToggleGroup$try, reason: invalid class name */
    public class Ctry implements MaterialButton.Cif {
        public Ctry() {
        }
    }

    public MaterialButtonToggleGroup(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.materialButtonToggleGroupStyle);
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        if (view instanceof MaterialButton) {
            super.addView(view, i, layoutParams);
            MaterialButton materialButton = (MaterialButton) view;
            if (materialButton.getId() == -1) {
                WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
                materialButton.setId(View.generateViewId());
            }
            materialButton.setMaxLines(1);
            materialButton.setEllipsize(TextUtils.TruncateAt.END);
            boolean m5710if = materialButton.m5710if();
            C0308Jr c0308Jr = materialButton.f10674do;
            if (m5710if) {
                c0308Jr.f1714for = true;
            }
            materialButton.f10678do = this.f10689do;
            if (materialButton.m5710if()) {
                c0308Jr.f1711do = true;
                C0716as m1073if = c0308Jr.m1073if(false);
                C0716as m1073if2 = c0308Jr.m1073if(true);
                if (m1073if != null) {
                    float f = c0308Jr.f1720try;
                    ColorStateList colorStateList = c0308Jr.f1716if;
                    m1073if.f8253do.f8280for = f;
                    m1073if.invalidateSelf();
                    m1073if.m4775public(colorStateList);
                    if (m1073if2 != null) {
                        float f2 = c0308Jr.f1720try;
                        int m1587goto = c0308Jr.f1711do ? O2.m1587goto(c0308Jr.f1709do, R.attr.colorSurface) : 0;
                        m1073if2.f8253do.f8280for = f2;
                        m1073if2.invalidateSelf();
                        m1073if2.m4775public(ColorStateList.valueOf(m1587goto));
                    }
                }
            }
            m5716if(materialButton.getId(), materialButton.isChecked());
            if (!materialButton.m5710if()) {
                throw new IllegalStateException("Attempted to get ShapeAppearanceModel from a MaterialButton which has an overwritten background.");
            }
            C3554qD c3554qD = c0308Jr.f1710do;
            this.f10690do.add(new Cfor(c3554qD.f15058do, c3554qD.f15067new, c3554qD.f15064if, c3554qD.f15061for));
            materialButton.setEnabled(isEnabled());
            QK.m1858native(materialButton, new Cif());
        }
    }

    /* renamed from: case, reason: not valid java name */
    public final void m5713case() {
        int i;
        Cfor cfor;
        int childCount = getChildCount();
        int childCount2 = getChildCount();
        int i2 = 0;
        while (true) {
            i = -1;
            if (i2 >= childCount2) {
                i2 = -1;
                break;
            } else if (m5717new(i2)) {
                break;
            } else {
                i2++;
            }
        }
        int childCount3 = getChildCount() - 1;
        while (true) {
            if (childCount3 < 0) {
                break;
            }
            if (m5717new(childCount3)) {
                i = childCount3;
                break;
            }
            childCount3--;
        }
        for (int i3 = 0; i3 < childCount; i3++) {
            MaterialButton m5715for = m5715for(i3);
            if (m5715for.getVisibility() != 8) {
                if (!m5715for.m5710if()) {
                    throw new IllegalStateException("Attempted to get ShapeAppearanceModel from a MaterialButton which has an overwritten background.");
                }
                C3554qD c3554qD = m5715for.f10674do.f1710do;
                c3554qD.getClass();
                C3554qD.Cdo cdo = new C3554qD.Cdo(c3554qD);
                Cfor cfor2 = (Cfor) this.f10690do.get(i3);
                if (i2 != i) {
                    boolean z = getOrientation() == 0;
                    Celse celse = Cfor.f10699do;
                    if (i3 == i2) {
                        cfor = z ? C3738tL.m8282else(this) ? new Cfor(celse, celse, cfor2.f10702if, cfor2.f10701for) : new Cfor(cfor2.f10700do, cfor2.f10703new, celse, celse) : new Cfor(cfor2.f10700do, celse, cfor2.f10702if, celse);
                    } else if (i3 == i) {
                        cfor = z ? C3738tL.m8282else(this) ? new Cfor(cfor2.f10700do, cfor2.f10703new, celse, celse) : new Cfor(celse, celse, cfor2.f10702if, cfor2.f10701for) : new Cfor(celse, cfor2.f10703new, celse, cfor2.f10701for);
                    } else {
                        cfor2 = null;
                    }
                    cfor2 = cfor;
                }
                if (cfor2 == null) {
                    cdo.m7868if(0.0f);
                } else {
                    cdo.f15070do = cfor2.f10700do;
                    cdo.f15079new = cfor2.f10703new;
                    cdo.f15076if = cfor2.f10702if;
                    cdo.f15073for = cfor2.f10701for;
                }
                m5715for.mo4768do(new C3554qD(cdo));
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        TreeMap treeMap = new TreeMap(this.f10688do);
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            treeMap.put(m5715for(i), Integer.valueOf(i));
        }
        this.f10694do = (Integer[]) treeMap.values().toArray(new Integer[0]);
        super.dispatchDraw(canvas);
    }

    /* renamed from: do, reason: not valid java name */
    public final void m5714do() {
        int childCount = getChildCount();
        int i = 0;
        while (true) {
            if (i >= childCount) {
                i = -1;
                break;
            } else if (m5717new(i)) {
                break;
            } else {
                i++;
            }
        }
        if (i == -1) {
            return;
        }
        for (int i2 = i + 1; i2 < getChildCount(); i2++) {
            MaterialButton m5715for = m5715for(i2);
            MaterialButton m5715for2 = m5715for(i2 - 1);
            int min = Math.min(m5715for.m5710if() ? m5715for.f10674do.f1720try : 0, m5715for2.m5710if() ? m5715for2.f10674do.f1720try : 0);
            ViewGroup.LayoutParams layoutParams = m5715for.getLayoutParams();
            LinearLayout.LayoutParams layoutParams2 = layoutParams instanceof LinearLayout.LayoutParams ? (LinearLayout.LayoutParams) layoutParams : new LinearLayout.LayoutParams(layoutParams.width, layoutParams.height);
            if (getOrientation() == 0) {
                layoutParams2.setMarginEnd(0);
                layoutParams2.setMarginStart(-min);
                layoutParams2.topMargin = 0;
            } else {
                layoutParams2.bottomMargin = 0;
                layoutParams2.topMargin = -min;
                layoutParams2.setMarginStart(0);
            }
            m5715for.setLayoutParams(layoutParams2);
        }
        if (getChildCount() == 0 || i == -1) {
            return;
        }
        LinearLayout.LayoutParams layoutParams3 = (LinearLayout.LayoutParams) m5715for(i).getLayoutParams();
        if (getOrientation() == 1) {
            layoutParams3.topMargin = 0;
            layoutParams3.bottomMargin = 0;
        } else {
            layoutParams3.setMarginEnd(0);
            layoutParams3.setMarginStart(0);
            layoutParams3.leftMargin = 0;
            layoutParams3.rightMargin = 0;
        }
    }

    /* renamed from: for, reason: not valid java name */
    public final MaterialButton m5715for(int i) {
        return (MaterialButton) getChildAt(i);
    }

    @Override // android.view.ViewGroup
    public final int getChildDrawingOrder(int i, int i2) {
        Integer[] numArr = this.f10694do;
        return (numArr == null || i2 >= numArr.length) ? i2 : numArr[i2].intValue();
    }

    /* renamed from: if, reason: not valid java name */
    public final void m5716if(int i, boolean z) {
        if (i == -1) {
            return;
        }
        HashSet hashSet = new HashSet(this.f10691do);
        if (z && !hashSet.contains(Integer.valueOf(i))) {
            if (this.f10697if && !hashSet.isEmpty()) {
                hashSet.clear();
            }
            hashSet.add(Integer.valueOf(i));
        } else {
            if (z || !hashSet.contains(Integer.valueOf(i))) {
                return;
            }
            if (!this.f10696for || hashSet.size() > 1) {
                hashSet.remove(Integer.valueOf(i));
            }
        }
        m5718try(hashSet);
    }

    /* renamed from: new, reason: not valid java name */
    public final boolean m5717new(int i) {
        return getChildAt(i).getVisibility() != 8;
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        int i = this.f10695for;
        if (i != -1) {
            m5718try(Collections.singleton(Integer.valueOf(i)));
        }
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        int i = 0;
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            if ((getChildAt(i2) instanceof MaterialButton) && m5717new(i2)) {
                i++;
            }
        }
        accessibilityNodeInfo.setCollectionInfo((AccessibilityNodeInfo.CollectionInfo) C3893w.Ctry.m8536do(1, i, this.f10697if ? 1 : 2).f16179do);
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        m5713case();
        m5714do();
        super.onMeasure(i, i2);
    }

    @Override // android.view.ViewGroup
    public final void onViewRemoved(View view) {
        super.onViewRemoved(view);
        if (view instanceof MaterialButton) {
            ((MaterialButton) view).f10678do = null;
        }
        int indexOfChild = indexOfChild(view);
        if (indexOfChild >= 0) {
            this.f10690do.remove(indexOfChild);
        }
        m5713case();
        m5714do();
    }

    @Override // android.view.View
    public final void setEnabled(boolean z) {
        super.setEnabled(z);
        for (int i = 0; i < getChildCount(); i++) {
            m5715for(i).setEnabled(z);
        }
    }

    /* renamed from: try, reason: not valid java name */
    public final void m5718try(Set<Integer> set) {
        HashSet hashSet = this.f10691do;
        this.f10691do = new HashSet(set);
        for (int i = 0; i < getChildCount(); i++) {
            int id = m5715for(i).getId();
            boolean contains = set.contains(Integer.valueOf(id));
            View findViewById = findViewById(id);
            if (findViewById instanceof MaterialButton) {
                this.f10693do = true;
                ((MaterialButton) findViewById).setChecked(contains);
                this.f10693do = false;
            }
            if (hashSet.contains(Integer.valueOf(id)) != set.contains(Integer.valueOf(id))) {
                set.contains(Integer.valueOf(id));
                Iterator<Cnew> it = this.f10692do.iterator();
                while (it.hasNext()) {
                    it.next().mo5719do();
                }
            }
        }
        invalidate();
    }

    public MaterialButtonToggleGroup(Context context, AttributeSet attributeSet, int i) {
        super(C2775fs.m6683do(context, attributeSet, i, R.style.Widget_MaterialComponents_MaterialButtonToggleGroup), attributeSet, i);
        this.f10690do = new ArrayList();
        this.f10689do = new Ctry();
        this.f10692do = new LinkedHashSet<>();
        this.f10688do = new Cdo();
        this.f10693do = false;
        this.f10691do = new HashSet();
        TypedArray m3115new = C0682aH.m3115new(getContext(), attributeSet, O2.f2488finally, i, R.style.Widget_MaterialComponents_MaterialButtonToggleGroup, new int[0]);
        boolean z = m3115new.getBoolean(3, false);
        if (this.f10697if != z) {
            this.f10697if = z;
            m5718try(new HashSet());
        }
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            m5715for(i2).f10672break = (this.f10697if ? RadioButton.class : ToggleButton.class).getName();
        }
        this.f10695for = m3115new.getResourceId(1, -1);
        this.f10696for = m3115new.getBoolean(2, false);
        setChildrenDrawingOrderEnabled(true);
        setEnabled(m3115new.getBoolean(0, true));
        m3115new.recycle();
        WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
        setImportantForAccessibility(1);
    }
}
