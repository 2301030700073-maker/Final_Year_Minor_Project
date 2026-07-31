package androidx.transition;

import android.graphics.PointF;
import android.graphics.Rect;
import android.os.Build;
import android.util.Property;
import android.view.View;
import androidx.appcompat.widget.SwitchCompat;
import androidx.transition.ChangeBounds;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class ViewUtils {
    public static final ViewUtilsApi23 IMPL;
    public static final AnonymousClass1 TRANSITION_ALPHA;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    /* renamed from: androidx.transition.ViewUtils$1, reason: invalid class name */
    public final class AnonymousClass1 extends Property {
        public final /* synthetic */ int $r8$classId;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ AnonymousClass1(String str, Class cls, int i) {
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
                default:
                    return ((View) obj).getClipBounds();
            }
        }

        @Override // android.util.Property
        public final void set(Object obj, Object obj2) {
            switch (this.$r8$classId) {
                case 0:
                    float floatValue = ((Float) obj2).floatValue();
                    ViewUtils.IMPL.setTransitionAlpha((View) obj, floatValue);
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
                default:
                    ((View) obj).setClipBounds((Rect) obj2);
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
        TRANSITION_ALPHA = new AnonymousClass1("translationAlpha", Float.class, 0);
        new AnonymousClass1("clipBounds", Rect.class, 7);
    }

    public static void setLeftTopRightBottom(View view, int i, int i2, int i3, int i4) {
        IMPL.setLeftTopRightBottom(view, i, i2, i3, i4);
    }

    public static void setTransitionVisibility(int i, View view) {
        IMPL.setTransitionVisibility(i, view);
    }
}
