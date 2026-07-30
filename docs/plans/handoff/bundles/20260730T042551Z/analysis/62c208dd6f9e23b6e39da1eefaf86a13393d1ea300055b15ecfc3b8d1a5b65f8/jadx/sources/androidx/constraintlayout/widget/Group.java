package androidx.constraintlayout.widget;

import android.content.Context;
import android.util.AttributeSet;
import androidx.constraintlayout.widget.ConstraintLayout;

/* loaded from: classes.dex */
public class Group extends ConstraintHelper {
    public Group(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    /* renamed from: break */
    public final void mo3563break(AttributeSet attributeSet) {
        super.mo3563break(attributeSet);
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        m3627else();
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

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    /* renamed from: super */
    public final void mo3570super() {
        ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) getLayoutParams();
        layoutParams.f6271do.m474private(0);
        layoutParams.f6271do.m466extends(0);
    }

    public Group(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }
}
