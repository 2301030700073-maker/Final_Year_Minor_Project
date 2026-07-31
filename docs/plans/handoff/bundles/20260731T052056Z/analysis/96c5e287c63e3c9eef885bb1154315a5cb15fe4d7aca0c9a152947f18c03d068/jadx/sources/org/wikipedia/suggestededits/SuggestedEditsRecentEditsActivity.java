package org.wikipedia.suggestededits;

import android.content.Intent;
import android.os.Bundle;
import androidx.compose.ui.unit.DpKt;
import androidx.fragment.app.Fragment;
import coil3.size.ViewSizeResolver$CC;
import kotlin.Metadata;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.activity.SingleFragmentActivity;
import org.wikipedia.analytics.eventplatform.AppInteractionEvent;
import org.wikipedia.analytics.eventplatform.EventPlatformClient;
import org.wikipedia.main.MainActivity$$ExternalSyntheticLambda1;
import org.wikipedia.settings.Prefs;
import org.wikipedia.settings.PrefsIoUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsActivity;", "Lorg/wikipedia/activity/SingleFragmentActivity;", "Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFragment;", "<init>", "()V", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class SuggestedEditsRecentEditsActivity extends SingleFragmentActivity {
    public static final /* synthetic */ int $r8$clinit = 0;

    @Override // org.wikipedia.activity.SingleFragmentActivity
    public final Fragment createFragment() {
        return new SuggestedEditsRecentEditsFragment();
    }

    @Override // org.wikipedia.activity.SingleFragmentActivity, org.wikipedia.activity.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Prefs prefs = Prefs.INSTANCE;
        if (!Prefs.getRecentEditsOnboardingShown()) {
            PrefsIoUtil.setBoolean(R.string.preference_key_recent_edits_onboarding_shown, true);
            startActivity(new Intent(this, (Class<?>) SuggestedEditsRecentEditsOnboardingActivity.class));
        }
        EventPlatformClient eventPlatformClient = EventPlatformClient.INSTANCE;
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        EventPlatformClient.submit(new AppInteractionEvent("impression", "pt_recent_changes", "", ViewSizeResolver$CC.m(), Prefs.getRecentEditsWikiCode(), "app_patroller_experience"));
        DpKt.addCallback$default(getOnBackPressedDispatcher(), this, new MainActivity$$ExternalSyntheticLambda1(24, this));
    }

    @Override // org.wikipedia.activity.BaseActivity
    public final void onUnreadNotification() {
        ((SuggestedEditsRecentEditsFragment) getFragment()).updateNotificationDot$1(true);
    }
}
