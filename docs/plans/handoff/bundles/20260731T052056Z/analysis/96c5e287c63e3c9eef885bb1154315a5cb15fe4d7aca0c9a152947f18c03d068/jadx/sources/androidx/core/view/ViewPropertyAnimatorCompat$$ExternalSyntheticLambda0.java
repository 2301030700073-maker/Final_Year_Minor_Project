package androidx.core.view;

import android.animation.ValueAnimator;
import android.graphics.drawable.Drawable;
import android.view.View;
import androidx.appcompat.app.WindowDecorActionBar;
import androidx.appcompat.widget.PopupMenu$1;
import androidx.compose.ui.Modifier;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.progressindicator.DeterminateDrawable;
import com.google.android.material.progressindicator.LinearProgressIndicatorSpec;
import com.google.android.material.shape.MaterialShapeDrawable;
import java.util.Iterator;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class ViewPropertyAnimatorCompat$$ExternalSyntheticLambda0 implements ValueAnimator.AnimatorUpdateListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;

    public /* synthetic */ ViewPropertyAnimatorCompat$$ExternalSyntheticLambda0(int i, Object obj, Object obj2) {
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
                return;
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
                    throw Modifier.CC.m(it);
                }
                Iterator it2 = appBarLayout.liftProgressListeners.iterator();
                if (it2.hasNext()) {
                    throw Modifier.CC.m(it2);
                }
                return;
            default:
                DeterminateDrawable determinateDrawable = (DeterminateDrawable) obj2;
                LinearProgressIndicatorSpec linearProgressIndicatorSpec = (LinearProgressIndicatorSpec) obj;
                if (linearProgressIndicatorSpec.hasWavyEffect(true) && linearProgressIndicatorSpec.waveSpeed != 0 && determinateDrawable.isVisible()) {
                    determinateDrawable.invalidateSelf();
                    return;
                }
                return;
        }
    }
}
