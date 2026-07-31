package com.google.android.material.tabs;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import com.caverock.androidsvg.SVG;
import com.google.android.material.R$styleable;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public class TabItem extends View {
    public final int customLayout;
    public final Drawable icon;
    public final CharSequence text;

    public TabItem(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        SVG obtainStyledAttributes = SVG.obtainStyledAttributes(context, attributeSet, R$styleable.TabItem);
        TypedArray typedArray = (TypedArray) obtainStyledAttributes.cssRules;
        this.text = typedArray.getText(2);
        this.icon = obtainStyledAttributes.getDrawable(0);
        this.customLayout = typedArray.getResourceId(1, 0);
        obtainStyledAttributes.recycle();
    }
}
