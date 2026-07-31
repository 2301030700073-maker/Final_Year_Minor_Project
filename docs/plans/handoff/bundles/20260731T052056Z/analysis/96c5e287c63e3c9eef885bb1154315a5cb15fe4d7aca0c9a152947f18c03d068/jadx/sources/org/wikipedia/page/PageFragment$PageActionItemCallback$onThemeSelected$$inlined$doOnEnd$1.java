package org.wikipedia.page;

import android.animation.Animator;
import androidx.fragment.app.Fragment;
import org.wikipedia.Constants;
import org.wikipedia.databinding.FragmentOnThisDayGamePlayBinding;
import org.wikipedia.games.onthisday.OnThisDayGamePlayFragment;
import org.wikipedia.login.LoginClient;
import org.wikipedia.theme.ThemeChooserDialog;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class PageFragment$PageActionItemCallback$onThemeSelected$$inlined$doOnEnd$1 implements Animator.AnimatorListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Fragment this$0;

    public /* synthetic */ PageFragment$PageActionItemCallback$onThemeSelected$$inlined$doOnEnd$1(int i, Fragment fragment) {
        this.$r8$classId = i;
        this.this$0 = fragment;
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        int i = this.$r8$classId;
        animator.getClass();
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        int i = this.$r8$classId;
        Fragment fragment = this.this$0;
        animator.getClass();
        switch (i) {
            case 0:
                int i2 = ThemeChooserDialog.BUTTON_STROKE_WIDTH;
                ((PageFragment) fragment).showBottomSheet(LoginClient.newInstance(Constants.InvokeSource.PAGE_ACTION_TAB, false));
                break;
            default:
                OnThisDayGamePlayFragment onThisDayGamePlayFragment = (OnThisDayGamePlayFragment) fragment;
                FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding = onThisDayGamePlayFragment._binding;
                fragmentOnThisDayGamePlayBinding.getClass();
                fragmentOnThisDayGamePlayBinding.questionCard1.setEnabled(true);
                FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding2 = onThisDayGamePlayFragment._binding;
                fragmentOnThisDayGamePlayBinding2.getClass();
                fragmentOnThisDayGamePlayBinding2.questionCard2.setEnabled(true);
                FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding3 = onThisDayGamePlayFragment._binding;
                fragmentOnThisDayGamePlayBinding3.getClass();
                fragmentOnThisDayGamePlayBinding3.questionText1.setEnabled(true);
                FragmentOnThisDayGamePlayBinding fragmentOnThisDayGamePlayBinding4 = onThisDayGamePlayFragment._binding;
                fragmentOnThisDayGamePlayBinding4.getClass();
                fragmentOnThisDayGamePlayBinding4.questionText2.setEnabled(true);
                break;
        }
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationRepeat(Animator animator) {
        int i = this.$r8$classId;
        animator.getClass();
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        int i = this.$r8$classId;
        animator.getClass();
    }
}
