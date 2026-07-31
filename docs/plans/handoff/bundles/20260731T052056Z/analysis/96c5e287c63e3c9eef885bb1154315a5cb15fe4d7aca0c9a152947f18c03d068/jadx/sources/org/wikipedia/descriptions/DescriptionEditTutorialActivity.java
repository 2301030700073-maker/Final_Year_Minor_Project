package org.wikipedia.descriptions;

import androidx.fragment.app.Fragment;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.text.UStringsKt;
import org.wikipedia.activity.SingleFragmentActivity;
import org.wikipedia.onboarding.OnboardingFragment;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003B\u0007¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lorg/wikipedia/descriptions/DescriptionEditTutorialActivity;", "Lorg/wikipedia/activity/SingleFragmentActivity;", "Lorg/wikipedia/descriptions/DescriptionEditTutorialFragment;", "Lorg/wikipedia/onboarding/OnboardingFragment$Callback;", "<init>", "()V", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class DescriptionEditTutorialActivity extends SingleFragmentActivity implements OnboardingFragment.Callback {
    @Override // org.wikipedia.activity.SingleFragmentActivity
    public final Fragment createFragment() {
        boolean booleanExtra = getIntent().getBooleanExtra("showAIOnBoarding", false);
        DescriptionEditTutorialFragment descriptionEditTutorialFragment = new DescriptionEditTutorialFragment();
        descriptionEditTutorialFragment.setArguments(UStringsKt.bundleOf(new Pair("showAIOnBoarding", Boolean.valueOf(booleanExtra))));
        return descriptionEditTutorialFragment;
    }

    @Override // org.wikipedia.onboarding.OnboardingFragment.Callback
    public final void onComplete() {
        setResult(-1, getIntent());
        finish();
    }

    @Override // org.wikipedia.onboarding.OnboardingFragment.Callback
    public final void onSkip() {
    }
}
