package org.wikipedia.settings.homefeed;

import android.os.Bundle;
import androidx.activity.compose.ComponentActivityKt;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import com.caverock.androidsvg.SVGAndroidRenderer;
import kotlin.Metadata;
import org.wikimedia.testkitchen.TestKitchenClient;
import org.wikipedia.activity.BaseActivity;
import org.wikipedia.analytics.testkitchen.TestKitchenAdapter;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lorg/wikipedia/settings/homefeed/HomeFeedSettingsActivity;", "Lorg/wikipedia/activity/BaseActivity;", "<init>", "()V", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class HomeFeedSettingsActivity extends BaseActivity {
    public static final /* synthetic */ int $r8$clinit = 0;

    @Override // org.wikipedia.activity.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        HomeFeedSettingsStartDestination homeFeedSettingsStartDestination;
        super.onCreate(bundle);
        TestKitchenClient testKitchenClient = TestKitchenAdapter.client;
        testKitchenClient.getClass();
        SVGAndroidRenderer sVGAndroidRenderer = new SVGAndroidRenderer("apps-home-feed", testKitchenClient);
        sVGAndroidRenderer.parentStack = "settings";
        this._instrument = sVGAndroidRenderer;
        String stringExtra = getIntent().getStringExtra("start_destination");
        if (stringExtra == null || (homeFeedSettingsStartDestination = HomeFeedSettingsStartDestination.valueOf(stringExtra)) == null) {
            homeFeedSettingsStartDestination = HomeFeedSettingsStartDestination.ROOT;
        }
        ComponentActivityKt.setContent$default(this, new ComposableLambdaImpl(new HomeFeedSettingsActivity$$ExternalSyntheticLambda0(homeFeedSettingsStartDestination, this, 0), true, -841419005));
    }
}
