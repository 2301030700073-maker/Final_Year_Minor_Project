package androidx.core.view;

import android.animation.ValueAnimator;
import android.graphics.drawable.Drawable;
import android.view.View;
import androidx.appcompat.app.WindowDecorActionBar;
import androidx.appcompat.widget.PopupMenu$1;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.appbar.ViewOffsetHelper;
import com.google.android.material.shape.MaterialShapeDrawable;
import java.util.Iterator;
import java.util.LinkedList;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.schabi.newpipe.fragments.detail.VideoDetailFragment;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class ViewPropertyAnimatorCompat$$ExternalSyntheticLambda0 implements ValueAnimator.AnimatorUpdateListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;

    public /* synthetic */ ViewPropertyAnimatorCompat$$ExternalSyntheticLambda0(Object obj, Object obj2, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = obj2;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        int i = this.$r8$classId;
        Object obj = this.f$1;
        Object obj2 = this.f$0;
        switch (i) {
            case 0:
                ((View) ((WindowDecorActionBar) ((PopupMenu$1) obj2).this$0).mContainerView.getParent()).invalidate();
                break;
            case 1:
                AppBarLayout appBarLayout = (AppBarLayout) obj2;
                int i2 = AppBarLayout.$r8$clinit;
                float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                ((MaterialShapeDrawable) obj).setElevation(floatValue);
                Drawable drawable = appBarLayout.statusBarForeground;
                if (drawable instanceof MaterialShapeDrawable) {
                    ((MaterialShapeDrawable) drawable).setElevation(floatValue);
                }
                Iterator it = appBarLayout.liftOnScrollListeners.iterator();
                if (it.hasNext()) {
                    it.next().getClass();
                    _UtilJvmKt$$ExternalSyntheticLambda1.m$2();
                    break;
                }
                break;
            default:
                VideoDetailFragment videoDetailFragment = (VideoDetailFragment) obj2;
                AppBarLayout.Behavior behavior = (AppBarLayout.Behavior) obj;
                LinkedList linkedList = VideoDetailFragment.stack;
                int intValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                ViewOffsetHelper viewOffsetHelper = behavior.viewOffsetHelper;
                if (viewOffsetHelper != null) {
                    viewOffsetHelper.setTopAndBottomOffset(intValue);
                } else {
                    behavior.tempTopBottomOffset = intValue;
                }
                videoDetailFragment.binding.appBarLayout.requestLayout();
                break;
        }
    }
}
