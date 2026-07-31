package org.wikipedia.onboarding;

import android.os.Build;
import android.os.Bundle;
import android.view.Window;
import androidx.activity.EdgeToEdge;
import androidx.activity.OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;
import androidx.activity.compose.ComponentActivityKt;
import androidx.activity.result.ActivityResultRegistry$register$2;
import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.core.view.WindowInsetsControllerCompat$Impl23;
import androidx.core.view.WindowInsetsControllerCompat$Impl26;
import androidx.core.view.WindowInsetsControllerCompat$Impl30;
import androidx.core.view.WindowInsetsControllerCompat$Impl35;
import androidx.fragment.app.FragmentManager$FragmentIntentSenderContract;
import androidx.paging.HintHandler;
import coil3.util.UtilsKt;
import com.caverock.androidsvg.SVGAndroidRenderer;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import org.jsoup.Jsoup;
import org.wikimedia.testkitchen.TestKitchenClient;
import org.wikipedia.WikipediaApp;
import org.wikipedia.activity.BaseActivity;
import org.wikipedia.analytics.testkitchen.TestKitchenAdapter;
import org.wikipedia.feed.FeedComponentsKt$$ExternalSyntheticLambda2;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\b²\u0006\u000e\u0010\u0005\u001a\u00020\u00048\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u0007\u001a\u00020\u00068\n@\nX\u008a\u008e\u0002"}, d2 = {"Lorg/wikipedia/onboarding/InitialOnboardingActivity;", "Lorg/wikipedia/activity/BaseActivity;", "<init>", "()V", "Lorg/wikipedia/theme/Theme;", "currentTheme", "", "currentNavigationBarColor", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class InitialOnboardingActivity extends BaseActivity {
    public static final /* synthetic */ int $r8$clinit = 0;
    public final ParcelableSnapshotMutableState appLanguageCodesState;
    public final ActivityResultRegistry$register$2 languagesLauncher;

    public InitialOnboardingActivity() {
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        this.appLanguageCodesState = Updater.mutableStateOf$default(CollectionsKt.toList(Jsoup.getInstance().getLanguageState().getAppLanguageCodes()));
        this.languagesLauncher = (ActivityResultRegistry$register$2) registerForActivityResult(new OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0(24, this), new FragmentManager$FragmentIntentSenderContract(3));
    }

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
        TestKitchenClient testKitchenClient = TestKitchenAdapter.client;
        testKitchenClient.getClass();
        SVGAndroidRenderer sVGAndroidRenderer = new SVGAndroidRenderer("apps-onboarding", testKitchenClient);
        sVGAndroidRenderer.parentStack = "initial_onboarding";
        sVGAndroidRenderer.startFunnel("initial_onboarding");
        this._instrument = sVGAndroidRenderer;
        ComponentActivityKt.setContent$default(this, new ComposableLambdaImpl(new FeedComponentsKt$$ExternalSyntheticLambda2(2, this), true, -355198554));
    }
}
