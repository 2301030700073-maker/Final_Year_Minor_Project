package androidx.core.view;

import android.animation.ValueAnimator;
import android.view.View;
import androidx.appcompat.app.WindowDecorActionBar;
import androidx.biometric.BiometricPrompt;
import app.k9mail.ui.utils.itemtouchhelper.ItemTouchHelper;
import com.google.android.material.card.MaterialCardViewHelper;
import com.google.android.material.textfield.DropdownMenuEndIconDelegate;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class ViewPropertyAnimatorCompat$$ExternalSyntheticLambda0 implements ValueAnimator.AnimatorUpdateListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ ViewPropertyAnimatorCompat$$ExternalSyntheticLambda0(BiometricPrompt biometricPrompt, View view) {
        this.$r8$classId = 0;
        this.f$0 = biometricPrompt;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        int i = this.$r8$classId;
        Object obj = this.f$0;
        switch (i) {
            case 0:
                ((View) ((WindowDecorActionBar) ((BiometricPrompt) obj).mClientFragmentManager).mContainerView.getParent()).invalidate();
                break;
            case 1:
                ((ItemTouchHelper.RecoverAnimation) obj).mFraction = valueAnimator.getAnimatedFraction();
                break;
            case 2:
                MaterialCardViewHelper materialCardViewHelper = (MaterialCardViewHelper) obj;
                float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                materialCardViewHelper.checkedIcon.setAlpha((int) (255.0f * floatValue));
                materialCardViewHelper.checkedAnimationProgress = floatValue;
                break;
            default:
                ((DropdownMenuEndIconDelegate) obj).endIconView.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
                break;
        }
    }

    public /* synthetic */ ViewPropertyAnimatorCompat$$ExternalSyntheticLambda0(int i, Object obj) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }
}
