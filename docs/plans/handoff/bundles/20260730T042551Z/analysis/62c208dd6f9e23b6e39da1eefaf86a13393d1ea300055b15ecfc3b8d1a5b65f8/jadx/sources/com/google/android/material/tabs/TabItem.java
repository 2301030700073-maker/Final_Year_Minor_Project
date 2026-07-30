package com.google.android.material.tabs;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import defpackage.C3645ro;
import defpackage.O2;

/* loaded from: classes3.dex */
public class TabItem extends View {

    /* renamed from: do, reason: not valid java name */
    public final Drawable f11522do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final CharSequence f11523do;

    /* renamed from: for, reason: not valid java name */
    public final int f11524for;

    public TabItem(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        int resourceId;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, O2.p);
        this.f11523do = obtainStyledAttributes.getText(2);
        this.f11522do = (!obtainStyledAttributes.hasValue(0) || (resourceId = obtainStyledAttributes.getResourceId(0, 0)) == 0) ? obtainStyledAttributes.getDrawable(0) : C3645ro.m7997extends(context, resourceId);
        this.f11524for = obtainStyledAttributes.getResourceId(1, 0);
        obtainStyledAttributes.recycle();
    }
}
