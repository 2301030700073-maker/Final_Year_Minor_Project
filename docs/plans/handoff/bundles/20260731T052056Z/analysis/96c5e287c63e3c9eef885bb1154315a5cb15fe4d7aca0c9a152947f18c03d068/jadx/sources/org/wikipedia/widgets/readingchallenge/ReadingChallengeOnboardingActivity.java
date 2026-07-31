package org.wikipedia.widgets.readingchallenge;

import android.os.Build;
import android.os.Bundle;
import android.view.Window;
import androidx.activity.EdgeToEdge;
import androidx.activity.compose.ComponentActivityKt;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.material3.CardKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.ui.Modifier;
import androidx.core.view.WindowInsetsControllerCompat$Impl23;
import androidx.core.view.WindowInsetsControllerCompat$Impl26;
import androidx.core.view.WindowInsetsControllerCompat$Impl30;
import androidx.core.view.WindowInsetsControllerCompat$Impl35;
import androidx.paging.HintHandler;
import coil3.compose.SubcomposeAsyncImageKt$$ExternalSyntheticLambda2;
import coil3.util.UtilsKt;
import com.caverock.androidsvg.SVGAndroidRenderer;
import j$.time.format.DateTimeFormatter;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import org.jsoup.Jsoup;
import org.wikimedia.testkitchen.TestKitchenClient;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.activity.BaseActivity;
import org.wikipedia.analytics.testkitchen.TestKitchenAdapter;
import org.wikipedia.compose.theme.WikipediaColor;
import org.wikipedia.compose.theme.WikipediaColorKt;
import org.wikipedia.extensions.ContextKt;
import org.wikipedia.feed.FeedComponentsKt$$ExternalSyntheticLambda2;
import org.wikipedia.feed.news.NewsModuleKt$$ExternalSyntheticLambda2;
import org.wikipedia.search.HybridSearchOnboardingActivityKt$$ExternalSyntheticLambda0;
import org.wikipedia.settings.Prefs;
import org.wikipedia.settings.PrefsIoUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0006²\u0006\u000e\u0010\u0005\u001a\u00020\u00048\n@\nX\u008a\u008e\u0002"}, d2 = {"Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeOnboardingActivity;", "Lorg/wikipedia/activity/BaseActivity;", "<init>", "()V", "", "showLoginDialog", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ReadingChallengeOnboardingActivity extends BaseActivity {
    public static final /* synthetic */ int $r8$clinit = 0;
    public final DateTimeFormatter formatter = DateTimeFormatter.ofPattern("d MMMM", Locale.getDefault());

    public final void OnboardingScreen(Modifier modifier, List list, Function0 function0, Function0 function02, Function0 function03, GapComposer gapComposer, int i) {
        function0.getClass();
        function02.getClass();
        function03.getClass();
        gapComposer.startRestartGroup(1378940713);
        int i2 = i | (gapComposer.changedInstance(list) ? 32 : 16) | (gapComposer.changedInstance(function0) ? 256 : 128) | (gapComposer.changedInstance(function02) ? 2048 : 1024) | (gapComposer.changedInstance(function03) ? 16384 : 8192);
        byte b = 0;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 9363) != 9362)) {
            CardKt.m270ScaffoldTvnljyQ(OffsetKt.safeDrawingPadding(modifier), null, Expect_jvmKt.rememberComposableLambda(767937092, new HybridSearchOnboardingActivityKt$$ExternalSyntheticLambda0(function03, function02, 4, b), gapComposer), null, null, 0, ((WikipediaColor) gapComposer.consume(WikipediaColorKt.LocalWikipediaColor)).paperColor, 0L, null, Expect_jvmKt.rememberComposableLambda(689102138, new SubcomposeAsyncImageKt$$ExternalSyntheticLambda2(20, function0, list), gapComposer), gapComposer, 805306752, 442);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new NewsModuleKt$$ExternalSyntheticLambda2(this, modifier, list, function0, function02, function03, i);
        }
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
        Prefs prefs = Prefs.INSTANCE;
        PrefsIoUtil.setBoolean(R.string.preference_key_reading_challenge_onboarding_shown, true);
        TestKitchenClient testKitchenClient = TestKitchenAdapter.client;
        testKitchenClient.getClass();
        SVGAndroidRenderer sVGAndroidRenderer = new SVGAndroidRenderer("apps-widgetchallenge", testKitchenClient);
        sVGAndroidRenderer.parentStack = "widget_challenge_announce";
        sVGAndroidRenderer.startFunnel("widget_challenge");
        this._instrument = sVGAndroidRenderer;
        SVGAndroidRenderer instrument = ContextKt.getInstrument(this);
        if (instrument != null) {
            SVGAndroidRenderer.submitInteraction$default(instrument, "impression", null, null, null, null, null, 254);
        }
        ComponentActivityKt.setContent$default(this, new ComposableLambdaImpl(new FeedComponentsKt$$ExternalSyntheticLambda2(6, this), true, -240125941));
    }
}
