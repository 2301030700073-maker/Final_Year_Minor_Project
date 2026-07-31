package org.wikipedia.search;

import android.os.Build;
import android.os.Bundle;
import android.view.Window;
import androidx.activity.EdgeToEdge;
import androidx.activity.compose.ComponentActivityKt;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.core.view.WindowInsetsControllerCompat$Impl23;
import androidx.core.view.WindowInsetsControllerCompat$Impl26;
import androidx.core.view.WindowInsetsControllerCompat$Impl30;
import androidx.core.view.WindowInsetsControllerCompat$Impl35;
import androidx.paging.HintHandler;
import coil3.util.UtilsKt;
import com.caverock.androidsvg.SVGAndroidRenderer;
import java.io.Serializable;
import kotlin.Metadata;
import okhttp3.Request;
import org.jsoup.Jsoup;
import org.wikimedia.testkitchen.TestKitchenClient;
import org.wikipedia.Constants;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.WikipediaApp$$ExternalSyntheticLambda2;
import org.wikipedia.activity.BaseActivity;
import org.wikipedia.analytics.testkitchen.TestKitchenAdapter;
import org.wikipedia.extensions.ContextKt;
import org.wikipedia.settings.Prefs;
import org.wikipedia.settings.PrefsIoUtil;
import org.wikipedia.util.DeviceUtil$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lorg/wikipedia/search/HybridSearchOnboardingActivity;", "Lorg/wikipedia/activity/BaseActivity;", "<init>", "()V", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class HybridSearchOnboardingActivity extends BaseActivity {
    public static final /* synthetic */ int $r8$clinit = 0;

    @Override // org.wikipedia.activity.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        EdgeToEdge.enable$default(this);
        Window window = getWindow();
        HintHandler hintHandler = new HintHandler(getWindow().getDecorView());
        int i = Build.VERSION.SDK_INT;
        UtilsKt windowInsetsControllerCompat$Impl35 = i >= 35 ? new WindowInsetsControllerCompat$Impl35(window, hintHandler) : i >= 30 ? new WindowInsetsControllerCompat$Impl30(window, hintHandler) : i >= 26 ? new WindowInsetsControllerCompat$Impl26(window, hintHandler) : new WindowInsetsControllerCompat$Impl23(window, hintHandler);
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        windowInsetsControllerCompat$Impl35.setAppearanceLightStatusBars(!Jsoup.getInstance().currentTheme.isDark());
        Prefs prefs = Prefs.INSTANCE;
        PrefsIoUtil.setBoolean(R.string.preference_key_hybrid_search_enabled, true);
        Serializable serializableExtra = getIntent().getSerializableExtra("invokeSource");
        Constants.InvokeSource invokeSource = serializableExtra instanceof Constants.InvokeSource ? (Constants.InvokeSource) serializableExtra : null;
        DeviceUtil$$ExternalSyntheticLambda1 deviceUtil$$ExternalSyntheticLambda1 = TestKitchenAdapter.flushEventsRunnable;
        TestKitchenClient testKitchenClient = TestKitchenAdapter.client;
        testKitchenClient.getClass();
        SVGAndroidRenderer sVGAndroidRenderer = new SVGAndroidRenderer("apps-search", testKitchenClient);
        sVGAndroidRenderer.parentStack = "hybrid_search_onboarding";
        sVGAndroidRenderer.startFunnel("hybrid_search_onboarding");
        HybridSearchAbCTest hybridSearchAbCTest = new HybridSearchAbCTest();
        sVGAndroidRenderer.stateStack = new Request.Builder("apps_hybridsearch", hybridSearchAbCTest.getGroupName(), PrefsIoUtil.getString(R.string.preference_key_reading_app_install_id, null), new WikipediaApp$$ExternalSyntheticLambda2(hybridSearchAbCTest));
        this._instrument = sVGAndroidRenderer;
        SVGAndroidRenderer instrument = ContextKt.getInstrument(this);
        if (instrument != null) {
            SVGAndroidRenderer.submitInteraction$default(instrument, "impression", null, null, null, null, null, 254);
        }
        ComponentActivityKt.setContent$default(this, new ComposableLambdaImpl(new HybridSearchOnboardingActivity$$ExternalSyntheticLambda0(this, invokeSource, 0), true, 1690160633));
    }
}
