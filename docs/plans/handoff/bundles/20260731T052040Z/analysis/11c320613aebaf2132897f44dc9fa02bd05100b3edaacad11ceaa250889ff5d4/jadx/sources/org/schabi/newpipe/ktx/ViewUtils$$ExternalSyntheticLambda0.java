package org.schabi.newpipe.ktx;

import android.animation.ValueAnimator;
import android.content.res.ColorStateList;
import android.view.View;
import android.widget.TextView;
import androidx.core.graphics.ColorUtils;
import androidx.core.view.ViewCompat;
import androidx.drawerlayout.widget.DrawerLayout;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.navigation.DrawerLayoutUtils;
import com.google.android.material.textfield.DropdownMenuEndIconDelegate;
import java.util.WeakHashMap;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class ViewUtils$$ExternalSyntheticLambda0 implements ValueAnimator.AnimatorUpdateListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ ViewUtils$$ExternalSyntheticLambda0(Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        int i = this.$r8$classId;
        Object obj = this.f$0;
        switch (i) {
            case 0:
                valueAnimator.getClass();
                Object animatedValue = valueAnimator.getAnimatedValue();
                animatedValue.getClass();
                ColorStateList valueOf = ColorStateList.valueOf(((Integer) animatedValue).intValue());
                WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
                ((View) obj).setBackgroundTintList(valueOf);
                break;
            case 1:
                ((DrawerLayout) obj).setScrimColor(ColorUtils.setAlphaComponent(-1728053248, AnimationUtils.lerp(valueAnimator.getAnimatedFraction(), DrawerLayoutUtils.DEFAULT_SCRIM_ALPHA, 0)));
                break;
            case 2:
                ((DropdownMenuEndIconDelegate) obj).endIconView.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
                break;
            case 3:
                valueAnimator.getClass();
                Object animatedValue2 = valueAnimator.getAnimatedValue();
                animatedValue2.getClass();
                ((TextView) obj).setTextColor(((Integer) animatedValue2).intValue());
                break;
            default:
                valueAnimator.getClass();
                Object animatedValue3 = valueAnimator.getAnimatedValue();
                animatedValue3.getClass();
                ((Function1) obj).invoke((Float) animatedValue3);
                break;
        }
    }
}
