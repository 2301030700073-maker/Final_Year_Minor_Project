package org.wikipedia.suggestededits;

import android.os.Bundle;
import android.os.PersistableBundle;
import androidx.compose.ui.unit.DpKt;
import androidx.fragment.app.Fragment;
import coil3.size.ViewSizeResolver$CC;
import kotlin.Metadata;
import org.wikipedia.WikipediaApp;
import org.wikipedia.activity.SingleFragmentActivity;
import org.wikipedia.analytics.eventplatform.AppInteractionEvent;
import org.wikipedia.analytics.eventplatform.EventPlatformClient;
import org.wikipedia.main.MainActivity$$ExternalSyntheticLambda1;
import org.wikipedia.onboarding.OnboardingFragment;
import org.wikipedia.settings.Prefs;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003B\u0007¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsOnboardingActivity;", "Lorg/wikipedia/activity/SingleFragmentActivity;", "Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsOnboardingFragment;", "Lorg/wikipedia/onboarding/OnboardingFragment$Callback;", "<init>", "()V", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class SuggestedEditsRecentEditsOnboardingActivity extends SingleFragmentActivity implements OnboardingFragment.Callback {
    public static final /* synthetic */ int $r8$clinit = 0;

    @Override // org.wikipedia.activity.SingleFragmentActivity
    public final Fragment createFragment() {
        return new SuggestedEditsRecentEditsOnboardingFragment();
    }

    @Override // org.wikipedia.onboarding.OnboardingFragment.Callback
    public final void onComplete() {
        EventPlatformClient eventPlatformClient = EventPlatformClient.INSTANCE;
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        String m = ViewSizeResolver$CC.m();
        Prefs prefs = Prefs.INSTANCE;
        EventPlatformClient.submit(new AppInteractionEvent("get_started", "pt_onboarding", "", m, Prefs.getRecentEditsWikiCode(), "app_patroller_experience"));
        setResult(-1, getIntent());
        finish();
    }

    @Override // android.app.Activity
    public final void onCreate(Bundle bundle, PersistableBundle persistableBundle) {
        super.onCreate(bundle, persistableBundle);
        DpKt.addCallback$default(getOnBackPressedDispatcher(), this, new MainActivity$$ExternalSyntheticLambda1(25, this));
    }

    @Override // org.wikipedia.onboarding.OnboardingFragment.Callback
    public final void onSkip() {
        EventPlatformClient eventPlatformClient = EventPlatformClient.INSTANCE;
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        String m = ViewSizeResolver$CC.m();
        Prefs prefs = Prefs.INSTANCE;
        EventPlatformClient.submit(new AppInteractionEvent("onboarding_skip", "pt_onboarding", "", m, Prefs.getRecentEditsWikiCode(), "app_patroller_experience"));
    }
}
