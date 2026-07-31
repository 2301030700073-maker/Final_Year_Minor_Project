package org.wikipedia.views;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import java.util.Iterator;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class ImageZoomHelper$$ExternalSyntheticLambda1 implements Function1 {
    public final /* synthetic */ ImageZoomHelper f$0;
    public final /* synthetic */ float f$1;
    public final /* synthetic */ float f$2;
    public final /* synthetic */ Integer f$3;
    public final /* synthetic */ Integer f$4;
    public final /* synthetic */ int f$7;
    public final /* synthetic */ int f$8;
    public final /* synthetic */ ValueAnimator f$9;

    public /* synthetic */ ImageZoomHelper$$ExternalSyntheticLambda1(ImageZoomHelper imageZoomHelper, float f, float f2, Integer num, Integer num2, int i, int i2, ValueAnimator valueAnimator) {
        this.f$0 = imageZoomHelper;
        this.f$1 = f;
        this.f$2 = f2;
        this.f$3 = num;
        this.f$4 = num2;
        this.f$7 = i;
        this.f$8 = i2;
        this.f$9 = valueAnimator;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        ((Animator) obj).getClass();
        ImageZoomHelper imageZoomHelper = this.f$0;
        if (imageZoomHelper.zoomableView != null && imageZoomHelper.zoomableViewFrameLP != null) {
            Integer num = this.f$3;
            num.getClass();
            int intValue = num.intValue();
            Integer num2 = this.f$4;
            num2.getClass();
            imageZoomHelper.updateZoomableView(1.0f, this.f$1, this.f$2, intValue, num2.intValue(), this.f$7, this.f$8);
        }
        Iterator it = imageZoomHelper.zoomListeners.iterator();
        if (it.hasNext()) {
            if (it.next() == null) {
                throw null;
            }
            ContextsKt$$ExternalSyntheticBUOutline0.m$1();
            return null;
        }
        View view = imageZoomHelper.zoomableView;
        if (view != null) {
            view.setVisibility(0);
            View view2 = imageZoomHelper.zoomableView;
            view2.getClass();
            ViewParent parent = view2.getParent();
            parent.getClass();
            ((ViewGroup) parent).removeView(imageZoomHelper.zoomableView);
            ViewGroup viewGroup = imageZoomHelper.parentOfZoomableView;
            if (viewGroup == null) {
                Intrinsics.throwUninitializedPropertyAccessException("parentOfZoomableView");
                throw null;
            }
            View view3 = imageZoomHelper.zoomableView;
            int i = imageZoomHelper.viewIndex;
            ViewGroup.LayoutParams layoutParams = imageZoomHelper.zoomableViewLP;
            if (layoutParams == null) {
                Intrinsics.throwUninitializedPropertyAccessException("zoomableViewLP");
                throw null;
            }
            viewGroup.addView(view3, i, layoutParams);
        }
        imageZoomHelper.darkView = null;
        View view4 = imageZoomHelper.zoomableView;
        if (view4 != null) {
            view4.invalidate();
            imageZoomHelper.zoomableView = null;
        }
        imageZoomHelper.isAnimatingDismiss = false;
        ValueAnimator valueAnimator = this.f$9;
        valueAnimator.removeAllListeners();
        valueAnimator.removeAllUpdateListeners();
        return Unit.INSTANCE;
    }
}
