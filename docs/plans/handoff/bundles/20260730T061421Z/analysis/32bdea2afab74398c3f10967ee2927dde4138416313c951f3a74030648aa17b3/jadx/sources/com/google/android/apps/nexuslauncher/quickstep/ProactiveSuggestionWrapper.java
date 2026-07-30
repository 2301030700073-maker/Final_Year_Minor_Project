package com.google.android.apps.nexuslauncher.quickstep;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import com.android.quickstep.util.TaskCornerRadius;

/* loaded from: classes.dex */
public class ProactiveSuggestionWrapper extends FrameLayout {

    /* renamed from: a, reason: collision with root package name */
    public int f3319a;

    public ProactiveSuggestionWrapper(Context context) {
        this(context, null);
    }

    @Override // android.view.View
    public boolean hasOverlappingRendering() {
        return false;
    }

    public ProactiveSuggestionWrapper(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ProactiveSuggestionWrapper(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Drawable background = getBackground();
        if (background instanceof GradientDrawable) {
            ((GradientDrawable) background).setCornerRadius(TaskCornerRadius.get(context));
        }
    }
}
