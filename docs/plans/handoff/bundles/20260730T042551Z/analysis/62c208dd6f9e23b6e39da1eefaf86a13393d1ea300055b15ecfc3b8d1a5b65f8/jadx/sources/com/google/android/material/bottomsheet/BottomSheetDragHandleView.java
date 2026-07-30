package com.google.android.material.bottomsheet;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.joeykrim.rootcheck.R;
import defpackage.C2598cr;
import defpackage.C2775fs;
import defpackage.C3385nL;
import defpackage.C3893w;
import defpackage.Cimplements;
import defpackage.QK;
import java.util.ArrayList;
import java.util.WeakHashMap;

/* loaded from: classes3.dex */
public class BottomSheetDragHandleView extends AppCompatImageView implements AccessibilityManager.AccessibilityStateChangeListener {

    /* renamed from: for, reason: not valid java name */
    public static final /* synthetic */ int f10658for = 0;

    /* renamed from: break, reason: not valid java name */
    public final String f10659break;

    /* renamed from: catch, reason: not valid java name */
    public final String f10660catch;

    /* renamed from: class, reason: not valid java name */
    public final String f10661class;

    /* renamed from: do, reason: not valid java name */
    public final AccessibilityManager f10662do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public BottomSheetBehavior<?> f10663do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cdo f10664do;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public boolean f10665for;

    /* renamed from: if, reason: not valid java name */
    public boolean f10666if;

    /* renamed from: new, reason: not valid java name */
    public boolean f10667new;

    /* renamed from: com.google.android.material.bottomsheet.BottomSheetDragHandleView$do, reason: invalid class name */
    public class Cdo extends BottomSheetBehavior.Cnew {
        public Cdo() {
        }

        @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.Cnew
        /* renamed from: do */
        public final void mo5698do() {
        }

        @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.Cnew
        /* renamed from: if */
        public final void mo5699if(int i) {
            int i2 = BottomSheetDragHandleView.f10658for;
            BottomSheetDragHandleView.this.m5703new(i);
        }
    }

    /* renamed from: com.google.android.material.bottomsheet.BottomSheetDragHandleView$if, reason: invalid class name */
    public class Cif extends Cimplements {
        public Cif() {
        }

        @Override // defpackage.Cimplements
        /* renamed from: try */
        public final void mo4579try(View view, AccessibilityEvent accessibilityEvent) {
            super.mo4579try(view, accessibilityEvent);
            if (accessibilityEvent.getEventType() == 1) {
                int i = BottomSheetDragHandleView.f10658for;
                BottomSheetDragHandleView.this.m5702if();
            }
        }
    }

    public BottomSheetDragHandleView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.bottomSheetDragHandleStyle);
    }

    /* renamed from: else, reason: not valid java name */
    public final void m5701else() {
        this.f10665for = this.f10666if && this.f10663do != null;
        int i = this.f10663do == null ? 2 : 1;
        WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
        setImportantForAccessibility(i);
        setClickable(this.f10665for);
    }

    /* renamed from: if, reason: not valid java name */
    public final boolean m5702if() {
        boolean z = false;
        if (!this.f10665for) {
            return false;
        }
        AccessibilityManager accessibilityManager = this.f10662do;
        if (accessibilityManager != null) {
            AccessibilityEvent obtain = AccessibilityEvent.obtain(16384);
            obtain.getText().add(this.f10661class);
            accessibilityManager.sendAccessibilityEvent(obtain);
        }
        BottomSheetBehavior<?> bottomSheetBehavior = this.f10663do;
        if (!bottomSheetBehavior.f10609do) {
            bottomSheetBehavior.getClass();
            z = true;
        }
        BottomSheetBehavior<?> bottomSheetBehavior2 = this.f10663do;
        int i = bottomSheetBehavior2.f10641while;
        int i2 = 6;
        if (i == 4) {
            if (!z) {
                i2 = 3;
            }
        } else if (i != 3) {
            i2 = this.f10667new ? 3 : 4;
        } else if (!z) {
            i2 = 4;
        }
        bottomSheetBehavior2.m5691protected(i2);
        return true;
    }

    /* renamed from: new, reason: not valid java name */
    public final void m5703new(int i) {
        if (i == 4) {
            this.f10667new = true;
        } else if (i == 3) {
            this.f10667new = false;
        }
        QK.m1867while(this, C3893w.Cdo.f16169for, this.f10667new ? this.f10659break : this.f10660catch, new C2598cr(this));
    }

    @Override // android.view.accessibility.AccessibilityManager.AccessibilityStateChangeListener
    public final void onAccessibilityStateChanged(boolean z) {
        this.f10666if = z;
        m5701else();
    }

    @Override // android.widget.ImageView, android.view.View
    public final void onAttachedToWindow() {
        BottomSheetBehavior<?> bottomSheetBehavior;
        super.onAttachedToWindow();
        View view = this;
        while (true) {
            Object parent = view.getParent();
            bottomSheetBehavior = null;
            view = parent instanceof View ? (View) parent : null;
            if (view == null) {
                break;
            }
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams instanceof CoordinatorLayout.Ctry) {
                CoordinatorLayout.Behavior behavior = ((CoordinatorLayout.Ctry) layoutParams).f6472do;
                if (behavior instanceof BottomSheetBehavior) {
                    bottomSheetBehavior = (BottomSheetBehavior) behavior;
                    break;
                }
            }
        }
        m5704try(bottomSheetBehavior);
        AccessibilityManager accessibilityManager = this.f10662do;
        if (accessibilityManager != null) {
            accessibilityManager.addAccessibilityStateChangeListener(this);
            onAccessibilityStateChanged(accessibilityManager.isEnabled());
        }
    }

    @Override // android.widget.ImageView, android.view.View
    public final void onDetachedFromWindow() {
        AccessibilityManager accessibilityManager = this.f10662do;
        if (accessibilityManager != null) {
            accessibilityManager.removeAccessibilityStateChangeListener(this);
        }
        m5704try(null);
        super.onDetachedFromWindow();
    }

    /* renamed from: try, reason: not valid java name */
    public final void m5704try(BottomSheetBehavior<?> bottomSheetBehavior) {
        BottomSheetBehavior<?> bottomSheetBehavior2 = this.f10663do;
        Cdo cdo = this.f10664do;
        if (bottomSheetBehavior2 != null) {
            bottomSheetBehavior2.f10606do.remove(cdo);
            this.f10663do.m5697volatile(null);
        }
        this.f10663do = bottomSheetBehavior;
        if (bottomSheetBehavior != null) {
            bottomSheetBehavior.m5697volatile(this);
            m5703new(this.f10663do.f10641while);
            ArrayList<BottomSheetBehavior.Cnew> arrayList = this.f10663do.f10606do;
            if (!arrayList.contains(cdo)) {
                arrayList.add(cdo);
            }
        }
        m5701else();
    }

    public BottomSheetDragHandleView(Context context, AttributeSet attributeSet, int i) {
        super(C2775fs.m6683do(context, attributeSet, i, R.style.Widget_Material3_BottomSheet_DragHandle), attributeSet, i);
        this.f10659break = getResources().getString(R.string.bottomsheet_action_expand);
        this.f10660catch = getResources().getString(R.string.bottomsheet_action_collapse);
        this.f10661class = getResources().getString(R.string.bottomsheet_drag_handle_clicked);
        this.f10664do = new Cdo();
        this.f10662do = (AccessibilityManager) getContext().getSystemService("accessibility");
        m5701else();
        QK.m1858native(this, new Cif());
    }
}
