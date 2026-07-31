package org.wikipedia.feed.onboarding;

import android.os.Bundle;
import androidx.activity.compose.ComponentActivityKt;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import com.caverock.androidsvg.SVGAndroidRenderer;
import kotlin.Metadata;
import org.wikimedia.testkitchen.TestKitchenClient;
import org.wikipedia.R;
import org.wikipedia.activity.BaseActivity;
import org.wikipedia.analytics.testkitchen.TestKitchenAdapter;
import org.wikipedia.extensions.ContextKt;
import org.wikipedia.settings.Prefs;
import org.wikipedia.settings.PrefsIoUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lorg/wikipedia/feed/onboarding/ExploreFeedUpdatePromptActivity;", "Lorg/wikipedia/activity/BaseActivity;", "<init>", "()V", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ExploreFeedUpdatePromptActivity extends BaseActivity {
    public static final /* synthetic */ int $r8$clinit = 0;

    @Override // org.wikipedia.activity.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        TestKitchenClient testKitchenClient = TestKitchenAdapter.client;
        testKitchenClient.getClass();
        SVGAndroidRenderer sVGAndroidRenderer = new SVGAndroidRenderer("apps-home-feed", testKitchenClient);
        sVGAndroidRenderer.parentStack = "feed_announce";
        sVGAndroidRenderer.startFunnel("feed_announce");
        this._instrument = sVGAndroidRenderer;
        Prefs prefs = Prefs.INSTANCE;
        PrefsIoUtil.setBoolean(R.string.preference_key_explore_feed_update_prompt_shown, true);
        setResult(-1);
        ComponentActivityKt.setContent$default(this, new ComposableLambdaImpl(new ExploreFeedUpdatePromptActivity$$ExternalSyntheticLambda0(this, 0), true, -1281901930));
        SVGAndroidRenderer instrument = ContextKt.getInstrument(this);
        if (instrument != null) {
            SVGAndroidRenderer.submitInteraction$default(instrument, "impression", null, null, null, null, null, 254);
        }
    }
}
