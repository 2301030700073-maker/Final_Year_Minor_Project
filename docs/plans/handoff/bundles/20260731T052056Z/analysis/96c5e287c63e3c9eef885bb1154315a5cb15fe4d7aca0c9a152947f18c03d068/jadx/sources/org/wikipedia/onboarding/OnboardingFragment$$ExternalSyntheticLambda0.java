package org.wikipedia.onboarding;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import com.caverock.androidsvg.SVGAndroidRenderer;
import org.wikipedia.onboarding.OnboardingFragment;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class OnboardingFragment$$ExternalSyntheticLambda0 implements View.OnClickListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ OnboardingFragment f$0;

    public /* synthetic */ OnboardingFragment$$ExternalSyntheticLambda0(OnboardingFragment onboardingFragment, int i) {
        this.$r8$classId = i;
        this.f$0 = onboardingFragment;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i = this.$r8$classId;
        OnboardingFragment onboardingFragment = this.f$0;
        switch (i) {
            case 0:
                if (onboardingFragment.isAdded()) {
                    if (!onboardingFragment.atLastPage()) {
                        SVGAndroidRenderer sVGAndroidRenderer = onboardingFragment._binding;
                        sVGAndroidRenderer.getClass();
                        int currentItem = ((ViewPager2) sVGAndroidRenderer.parentStack).getCurrentItem() + 1;
                        SVGAndroidRenderer sVGAndroidRenderer2 = onboardingFragment._binding;
                        sVGAndroidRenderer2.getClass();
                        RecyclerView.Adapter adapter = ((ViewPager2) sVGAndroidRenderer2.parentStack).getAdapter();
                        adapter.getClass();
                        int itemCount = adapter.getItemCount() - 1;
                        SVGAndroidRenderer sVGAndroidRenderer3 = onboardingFragment._binding;
                        sVGAndroidRenderer3.getClass();
                        ViewPager2 viewPager2 = (ViewPager2) sVGAndroidRenderer3.parentStack;
                        if (currentItem > itemCount) {
                            currentItem = itemCount;
                        }
                        viewPager2.setCurrentItem(currentItem, true);
                        break;
                    } else {
                        OnboardingFragment.Callback callback = onboardingFragment.callback();
                        if (callback != null) {
                            callback.onComplete();
                            break;
                        }
                    }
                }
                break;
            default:
                OnboardingFragment.Callback callback2 = onboardingFragment.callback();
                if (callback2 != null) {
                    callback2.onSkip();
                }
                OnboardingFragment.Callback callback3 = onboardingFragment.callback();
                if (callback3 != null) {
                    callback3.onComplete();
                    break;
                }
                break;
        }
    }
}
