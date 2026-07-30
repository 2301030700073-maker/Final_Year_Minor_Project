package b.m.b;

import android.animation.ValueAnimator;
import androidx.recyclerview.widget.FastScroller;

/* renamed from: b.m.b.s, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0194s implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ FastScroller f1204a;

    public C0194s(FastScroller fastScroller) {
        this.f1204a = fastScroller;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        int floatValue = (int) (((Float) valueAnimator.getAnimatedValue()).floatValue() * 255.0f);
        this.f1204a.f182c.setAlpha(floatValue);
        this.f1204a.f183d.setAlpha(floatValue);
        this.f1204a.m.invalidate();
    }
}
