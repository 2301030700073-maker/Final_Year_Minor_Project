package androidx.transition;

import android.content.res.ColorStateList;
import android.graphics.Color;
import android.graphics.PointF;
import android.graphics.Rect;
import android.os.Build;
import android.util.Property;
import android.view.View;
import android.view.animation.Interpolator;
import androidx.appcompat.widget.SwitchCompat;
import androidx.core.graphics.ColorUtils;
import androidx.interpolator.view.animation.FastOutSlowInInterpolator;
import androidx.recyclerview.widget.RecyclerView;
import androidx.transition.ChangeBounds;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;
import com.google.android.material.progressindicator.DrawableWithAnimatedVisibilityChange;
import com.google.android.material.progressindicator.DrawingDelegate;
import com.google.android.material.progressindicator.IndeterminateDrawable;
import com.google.android.material.progressindicator.LinearIndeterminateContiguousAnimatorDelegate;
import com.google.android.material.progressindicator.LinearIndeterminateDisjointAnimatorDelegate;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.text.RegexKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class ViewUtils {
    public static final ViewUtilsApi23 IMPL;
    public static final AnonymousClass1 TRANSITION_ALPHA;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: androidx.transition.ViewUtils$1, reason: invalid class name */
    public final class AnonymousClass1 extends Property {
        public final /* synthetic */ int $r8$classId;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ AnonymousClass1(Class cls, String str, int i) {
            super(cls, str);
            this.$r8$classId = i;
        }

        @Override // android.util.Property
        public final Object get(Object obj) {
            switch (this.$r8$classId) {
                case 0:
                    return Float.valueOf(ViewUtils.IMPL.getTransitionAlpha((View) obj));
                case 1:
                    return Float.valueOf(((SwitchCompat) obj).mThumbPosition);
                case 2:
                    return null;
                case 3:
                    return null;
                case 4:
                    return null;
                case 5:
                    return null;
                case 6:
                    return null;
                case 7:
                    return ((View) obj).getClipBounds();
                case 8:
                    int alpha = Color.alpha(((ExtendedFloatingActionButton) obj).getCurrentOriginalTextColor());
                    return Float.valueOf(alpha != 0 ? Color.alpha(r2.getCurrentTextColor()) / alpha : RecyclerView.DECELERATION_RATE);
                case 9:
                    return Float.valueOf(((View) obj).getLayoutParams().width);
                case 10:
                    return Float.valueOf(((View) obj).getLayoutParams().height);
                case 11:
                    return Float.valueOf(((View) obj).getPaddingStart());
                case 12:
                    return Float.valueOf(((View) obj).getPaddingEnd());
                case IMAGE_VALUE:
                    return Float.valueOf(((DrawableWithAnimatedVisibilityChange) obj).getGrowFraction());
                case LINEAR_PROGRESS_INDICATOR_VALUE:
                    return Float.valueOf(((LinearIndeterminateContiguousAnimatorDelegate) obj).animationFraction);
                default:
                    return Float.valueOf(((LinearIndeterminateDisjointAnimatorDelegate) obj).animationFraction);
            }
        }

        @Override // android.util.Property
        public final void set(Object obj, Object obj2) {
            switch (this.$r8$classId) {
                case 0:
                    ViewUtils.IMPL.setTransitionAlpha((View) obj, ((Float) obj2).floatValue());
                    break;
                case 1:
                    ((SwitchCompat) obj).setThumbPosition(((Float) obj2).floatValue());
                    break;
                case 2:
                    ChangeBounds.ViewBounds viewBounds = (ChangeBounds.ViewBounds) obj;
                    PointF pointF = (PointF) obj2;
                    viewBounds.getClass();
                    viewBounds.mLeft = Math.round(pointF.x);
                    int round = Math.round(pointF.y);
                    viewBounds.mTop = round;
                    int i = viewBounds.mTopLeftCalls + 1;
                    viewBounds.mTopLeftCalls = i;
                    if (i == viewBounds.mBottomRightCalls) {
                        ViewUtils.setLeftTopRightBottom(viewBounds.mView, viewBounds.mLeft, round, viewBounds.mRight, viewBounds.mBottom);
                        viewBounds.mTopLeftCalls = 0;
                        viewBounds.mBottomRightCalls = 0;
                        break;
                    }
                    break;
                case 3:
                    ChangeBounds.ViewBounds viewBounds2 = (ChangeBounds.ViewBounds) obj;
                    PointF pointF2 = (PointF) obj2;
                    viewBounds2.getClass();
                    viewBounds2.mRight = Math.round(pointF2.x);
                    int round2 = Math.round(pointF2.y);
                    viewBounds2.mBottom = round2;
                    int i2 = viewBounds2.mBottomRightCalls + 1;
                    viewBounds2.mBottomRightCalls = i2;
                    if (viewBounds2.mTopLeftCalls == i2) {
                        ViewUtils.setLeftTopRightBottom(viewBounds2.mView, viewBounds2.mLeft, viewBounds2.mTop, viewBounds2.mRight, round2);
                        viewBounds2.mTopLeftCalls = 0;
                        viewBounds2.mBottomRightCalls = 0;
                        break;
                    }
                    break;
                case 4:
                    View view = (View) obj;
                    PointF pointF3 = (PointF) obj2;
                    ViewUtils.setLeftTopRightBottom(view, view.getLeft(), view.getTop(), Math.round(pointF3.x), Math.round(pointF3.y));
                    break;
                case 5:
                    View view2 = (View) obj;
                    PointF pointF4 = (PointF) obj2;
                    ViewUtils.setLeftTopRightBottom(view2, Math.round(pointF4.x), Math.round(pointF4.y), view2.getRight(), view2.getBottom());
                    break;
                case 6:
                    View view3 = (View) obj;
                    PointF pointF5 = (PointF) obj2;
                    int round3 = Math.round(pointF5.x);
                    int round4 = Math.round(pointF5.y);
                    ViewUtils.setLeftTopRightBottom(view3, round3, round4, view3.getWidth() + round3, view3.getHeight() + round4);
                    break;
                case 7:
                    ((View) obj).setClipBounds((Rect) obj2);
                    break;
                case 8:
                    ExtendedFloatingActionButton extendedFloatingActionButton = (ExtendedFloatingActionButton) obj;
                    Float f = (Float) obj2;
                    if (f.floatValue() == 1.0f) {
                        extendedFloatingActionButton.silentlyUpdateTextColor(extendedFloatingActionButton.getOriginalTextColor());
                        break;
                    } else {
                        extendedFloatingActionButton.silentlyUpdateTextColor(ColorStateList.valueOf(ColorUtils.setAlphaComponent(extendedFloatingActionButton.getCurrentOriginalTextColor(), Math.round(AnimationUtils.lerp(RecyclerView.DECELERATION_RATE, Color.alpha(r12), f.floatValue())))));
                        break;
                    }
                case 9:
                    View view4 = (View) obj;
                    view4.getLayoutParams().width = ((Float) obj2).intValue();
                    view4.requestLayout();
                    break;
                case 10:
                    View view5 = (View) obj;
                    view5.getLayoutParams().height = ((Float) obj2).intValue();
                    view5.requestLayout();
                    break;
                case 11:
                    View view6 = (View) obj;
                    view6.setPaddingRelative(((Float) obj2).intValue(), view6.getPaddingTop(), view6.getPaddingEnd(), view6.getPaddingBottom());
                    break;
                case 12:
                    View view7 = (View) obj;
                    view7.setPaddingRelative(view7.getPaddingStart(), view7.getPaddingTop(), ((Float) obj2).intValue(), view7.getPaddingBottom());
                    break;
                case IMAGE_VALUE:
                    DrawableWithAnimatedVisibilityChange drawableWithAnimatedVisibilityChange = (DrawableWithAnimatedVisibilityChange) obj;
                    float floatValue = ((Float) obj2).floatValue();
                    if (drawableWithAnimatedVisibilityChange.growFraction != floatValue) {
                        drawableWithAnimatedVisibilityChange.growFraction = floatValue;
                        drawableWithAnimatedVisibilityChange.invalidateSelf();
                        break;
                    }
                    break;
                case LINEAR_PROGRESS_INDICATOR_VALUE:
                    LinearIndeterminateContiguousAnimatorDelegate linearIndeterminateContiguousAnimatorDelegate = (LinearIndeterminateContiguousAnimatorDelegate) obj;
                    linearIndeterminateContiguousAnimatorDelegate.animationFraction = ((Float) obj2).floatValue();
                    ArrayList arrayList = (ArrayList) linearIndeterminateContiguousAnimatorDelegate.mMenuItems;
                    ((DrawingDelegate.ActiveIndicator) arrayList.get(0)).startFraction = RecyclerView.DECELERATION_RATE;
                    float clamp = RegexKt.clamp(((int) (r12 * 333.0f)) / 667.0f, RecyclerView.DECELERATION_RATE, 1.0f);
                    DrawingDelegate.ActiveIndicator activeIndicator = (DrawingDelegate.ActiveIndicator) arrayList.get(0);
                    DrawingDelegate.ActiveIndicator activeIndicator2 = (DrawingDelegate.ActiveIndicator) arrayList.get(1);
                    FastOutSlowInInterpolator fastOutSlowInInterpolator = linearIndeterminateContiguousAnimatorDelegate.interpolator;
                    float interpolation = fastOutSlowInInterpolator.getInterpolation(clamp);
                    activeIndicator2.startFraction = interpolation;
                    activeIndicator.endFraction = interpolation;
                    DrawingDelegate.ActiveIndicator activeIndicator3 = (DrawingDelegate.ActiveIndicator) arrayList.get(1);
                    DrawingDelegate.ActiveIndicator activeIndicator4 = (DrawingDelegate.ActiveIndicator) arrayList.get(2);
                    float interpolation2 = fastOutSlowInInterpolator.getInterpolation(clamp + 0.49925038f);
                    activeIndicator4.startFraction = interpolation2;
                    activeIndicator3.endFraction = interpolation2;
                    ((DrawingDelegate.ActiveIndicator) arrayList.get(2)).endFraction = 1.0f;
                    if (linearIndeterminateContiguousAnimatorDelegate.dirtyColors && ((DrawingDelegate.ActiveIndicator) arrayList.get(1)).endFraction < 1.0f) {
                        ((DrawingDelegate.ActiveIndicator) arrayList.get(2)).color = ((DrawingDelegate.ActiveIndicator) arrayList.get(1)).color;
                        ((DrawingDelegate.ActiveIndicator) arrayList.get(1)).color = ((DrawingDelegate.ActiveIndicator) arrayList.get(0)).color;
                        ((DrawingDelegate.ActiveIndicator) arrayList.get(0)).color = linearIndeterminateContiguousAnimatorDelegate.baseSpec.indicatorColors[linearIndeterminateContiguousAnimatorDelegate.newIndicatorColorIndex];
                        linearIndeterminateContiguousAnimatorDelegate.dirtyColors = false;
                    }
                    ((IndeterminateDrawable) linearIndeterminateContiguousAnimatorDelegate.mContext).invalidateSelf();
                    break;
                default:
                    LinearIndeterminateDisjointAnimatorDelegate linearIndeterminateDisjointAnimatorDelegate = (LinearIndeterminateDisjointAnimatorDelegate) obj;
                    float floatValue2 = ((Float) obj2).floatValue();
                    linearIndeterminateDisjointAnimatorDelegate.animationFraction = floatValue2;
                    int i3 = (int) (floatValue2 * 1800.0f);
                    Interpolator[] interpolatorArr = linearIndeterminateDisjointAnimatorDelegate.interpolatorArray;
                    ArrayList arrayList2 = (ArrayList) linearIndeterminateDisjointAnimatorDelegate.mMenuItems;
                    for (int i4 = 0; i4 < arrayList2.size(); i4++) {
                        DrawingDelegate.ActiveIndicator activeIndicator5 = (DrawingDelegate.ActiveIndicator) arrayList2.get(i4);
                        int i5 = i4 * 2;
                        int i6 = LinearIndeterminateDisjointAnimatorDelegate.DELAY_TO_MOVE_SEGMENT_ENDS[i5];
                        int[] iArr = LinearIndeterminateDisjointAnimatorDelegate.DURATION_TO_MOVE_SEGMENT_ENDS;
                        activeIndicator5.startFraction = RegexKt.clamp(interpolatorArr[i5].getInterpolation(RegexKt.clamp((i3 - i6) / iArr[i5], RecyclerView.DECELERATION_RATE, 1.0f)), RecyclerView.DECELERATION_RATE, 1.0f);
                        activeIndicator5.endFraction = RegexKt.clamp(interpolatorArr[i5 + 1].getInterpolation(RegexKt.clamp((i3 - r7[r8]) / iArr[r8], RecyclerView.DECELERATION_RATE, 1.0f)), RecyclerView.DECELERATION_RATE, 1.0f);
                    }
                    if (linearIndeterminateDisjointAnimatorDelegate.dirtyColors) {
                        Iterator it = arrayList2.iterator();
                        while (it.hasNext()) {
                            ((DrawingDelegate.ActiveIndicator) it.next()).color = linearIndeterminateDisjointAnimatorDelegate.baseSpec.indicatorColors[linearIndeterminateDisjointAnimatorDelegate.indicatorColorIndex];
                        }
                        linearIndeterminateDisjointAnimatorDelegate.dirtyColors = false;
                    }
                    ((IndeterminateDrawable) linearIndeterminateDisjointAnimatorDelegate.mContext).invalidateSelf();
                    break;
            }
        }
    }

    static {
        if (Build.VERSION.SDK_INT >= 29) {
            IMPL = new ViewUtilsApi29();
        } else {
            IMPL = new ViewUtilsApi23();
        }
        TRANSITION_ALPHA = new AnonymousClass1(Float.class, "translationAlpha", 0);
        new AnonymousClass1(Rect.class, "clipBounds", 7);
    }

    public static void setLeftTopRightBottom(View view, int i, int i2, int i3, int i4) {
        IMPL.setLeftTopRightBottom(view, i, i2, i3, i4);
    }

    public static void setTransitionVisibility(View view, int i) {
        IMPL.setTransitionVisibility(view, i);
    }
}
