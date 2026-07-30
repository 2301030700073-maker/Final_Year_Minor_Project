package androidx.core.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ProgressBar;
import defpackage.RunnableC2852h9;
import defpackage.RunnableC3137j9;

/* loaded from: classes.dex */
public class ContentLoadingProgressBar extends ProgressBar {

    /* renamed from: for, reason: not valid java name */
    public static final /* synthetic */ int f6531for = 0;

    /* renamed from: do, reason: not valid java name */
    public final RunnableC2852h9 f6532do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final RunnableC3137j9 f6533do;

    public ContentLoadingProgressBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f6532do = new RunnableC2852h9(this, 1);
        this.f6533do = new RunnableC3137j9(this, 1);
    }

    @Override // android.widget.ProgressBar, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        removeCallbacks(this.f6532do);
        removeCallbacks(this.f6533do);
    }

    @Override // android.widget.ProgressBar, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        removeCallbacks(this.f6532do);
        removeCallbacks(this.f6533do);
    }
}
