package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewParent;
import defpackage.EL;
import defpackage.O2;

/* loaded from: classes.dex */
public abstract class VirtualLayout extends ConstraintHelper {

    /* renamed from: do, reason: not valid java name */
    public boolean f6343do;

    /* renamed from: if, reason: not valid java name */
    public boolean f6344if;

    public VirtualLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    /* renamed from: break */
    public void mo3563break(AttributeSet attributeSet) {
        super.mo3563break(attributeSet);
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, O2.x);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == 6) {
                    this.f6343do = true;
                } else if (index == 13) {
                    this.f6344if = true;
                }
            }
        }
    }

    /* renamed from: import */
    public void mo3566import(EL el, int i, int i2) {
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper, android.view.View
    public final void onAttachedToWindow() {
        ViewParent parent;
        super.onAttachedToWindow();
        if ((this.f6343do || this.f6344if) && (parent = getParent()) != null && (parent instanceof ConstraintLayout)) {
            ConstraintLayout constraintLayout = (ConstraintLayout) parent;
            int visibility = getVisibility();
            float elevation = getElevation();
            for (int i = 0; i < this.f6241for; i++) {
                View m3635for = constraintLayout.m3635for(((ConstraintHelper) this).f6239do[i]);
                if (m3635for != null) {
                    if (this.f6343do) {
                        m3635for.setVisibility(visibility);
                    }
                    if (this.f6344if && elevation > 0.0f) {
                        m3635for.setTranslationZ(m3635for.getTranslationZ() + elevation);
                    }
                }
            }
        }
    }

    @Override // android.view.View
    public final void setElevation(float f) {
        super.setElevation(f);
        m3627else();
    }

    @Override // android.view.View
    public final void setVisibility(int i) {
        super.setVisibility(i);
        m3627else();
    }

    public VirtualLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }
}
