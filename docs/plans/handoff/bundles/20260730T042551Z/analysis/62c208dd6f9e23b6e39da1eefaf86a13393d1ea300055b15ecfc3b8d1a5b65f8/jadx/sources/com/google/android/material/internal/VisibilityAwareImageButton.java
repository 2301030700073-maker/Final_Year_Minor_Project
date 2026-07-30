package com.google.android.material.internal;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageButton;

@SuppressLint({"AppCompatCustomView"})
/* loaded from: classes3.dex */
public class VisibilityAwareImageButton extends ImageButton {

    /* renamed from: for, reason: not valid java name */
    public int f11203for;

    public VisibilityAwareImageButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* renamed from: new, reason: not valid java name */
    public final void m5843new(int i, boolean z) {
        super.setVisibility(i);
        if (z) {
            this.f11203for = i;
        }
    }

    @Override // android.widget.ImageView, android.view.View
    public void setVisibility(int i) {
        m5843new(i, true);
    }

    public VisibilityAwareImageButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f11203for = getVisibility();
    }
}
