package org.wikipedia.suggestededits;

import android.graphics.drawable.Animatable;
import android.view.View;
import android.widget.ImageView;
import android.widget.Spinner;
import androidx.viewpager2.widget.ViewPager2;
import org.wikipedia.databinding.ActivityLoginBinding;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class SuggestedEditsCardsFragment$$ExternalSyntheticLambda0 implements View.OnClickListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ SuggestedEditsCardsFragment f$0;

    public /* synthetic */ SuggestedEditsCardsFragment$$ExternalSyntheticLambda0(SuggestedEditsCardsFragment suggestedEditsCardsFragment, int i) {
        this.$r8$classId = i;
        this.f$0 = suggestedEditsCardsFragment;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i = this.$r8$classId;
        SuggestedEditsCardsFragment suggestedEditsCardsFragment = this.f$0;
        switch (i) {
            case 0:
                suggestedEditsCardsFragment.viewPagerListener.getClass();
                ActivityLoginBinding activityLoginBinding = suggestedEditsCardsFragment._binding;
                activityLoginBinding.getClass();
                if (((ViewPager2) activityLoginBinding.loginButton).getCurrentItem() > 0) {
                    ActivityLoginBinding activityLoginBinding2 = suggestedEditsCardsFragment._binding;
                    activityLoginBinding2.getClass();
                    ViewPager2 viewPager2 = (ViewPager2) activityLoginBinding2.loginButton;
                    ActivityLoginBinding activityLoginBinding3 = suggestedEditsCardsFragment._binding;
                    activityLoginBinding3.getClass();
                    viewPager2.setCurrentItem(((ViewPager2) activityLoginBinding3.loginButton).getCurrentItem() - 1, true);
                }
                suggestedEditsCardsFragment.updateActionButton();
                break;
            case 1:
                ActivityLoginBinding activityLoginBinding4 = suggestedEditsCardsFragment._binding;
                activityLoginBinding4.getClass();
                if (((ImageView) activityLoginBinding4.loginCreateAccountButton).getDrawable() instanceof Animatable) {
                    ActivityLoginBinding activityLoginBinding5 = suggestedEditsCardsFragment._binding;
                    activityLoginBinding5.getClass();
                    Object drawable = ((ImageView) activityLoginBinding5.loginCreateAccountButton).getDrawable();
                    drawable.getClass();
                    ((Animatable) drawable).start();
                }
                suggestedEditsCardsFragment.nextPage(null);
                break;
            case 2:
                suggestedEditsCardsFragment.onSelectPage();
                break;
            default:
                ActivityLoginBinding activityLoginBinding6 = suggestedEditsCardsFragment._binding;
                activityLoginBinding6.getClass();
                Spinner spinner = (Spinner) activityLoginBinding6.viewLoginError;
                ActivityLoginBinding activityLoginBinding7 = suggestedEditsCardsFragment._binding;
                activityLoginBinding7.getClass();
                spinner.setSelection(((Spinner) activityLoginBinding7.viewProgressBar).getSelectedItemPosition());
                break;
        }
    }
}
