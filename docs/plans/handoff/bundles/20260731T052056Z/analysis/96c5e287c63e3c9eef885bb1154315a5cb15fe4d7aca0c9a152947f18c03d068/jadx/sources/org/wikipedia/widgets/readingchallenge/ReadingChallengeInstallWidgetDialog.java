package org.wikipedia.widgets.readingchallenge;

import android.app.PendingIntent;
import android.appwidget.AppWidgetManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.platform.ComposeView;
import com.caverock.androidsvg.SVGAndroidRenderer;
import kotlin.Metadata;
import org.jsoup.Jsoup;
import org.wikimedia.testkitchen.TestKitchenClient;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.analytics.testkitchen.TestKitchenAdapter;
import org.wikipedia.page.ExtendedBottomSheetDialogFragment;
import org.wikipedia.settings.Prefs;
import org.wikipedia.settings.PrefsIoUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeInstallWidgetDialog;", "Lorg/wikipedia/page/ExtendedBottomSheetDialogFragment;", "<init>", "()V", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ReadingChallengeInstallWidgetDialog extends ExtendedBottomSheetDialogFragment {
    public final SVGAndroidRenderer instrument;

    public ReadingChallengeInstallWidgetDialog() {
        super(true);
        TestKitchenClient testKitchenClient = TestKitchenAdapter.client;
        testKitchenClient.getClass();
        SVGAndroidRenderer sVGAndroidRenderer = new SVGAndroidRenderer("apps-widgetchallenge", testKitchenClient);
        sVGAndroidRenderer.parentStack = "widget_challenge_install";
        sVGAndroidRenderer.startFunnel("widget_challenge");
        this.instrument = sVGAndroidRenderer;
    }

    public static final void onCreateView$lambda$0$0$0$2$0$0(ReadingChallengeInstallWidgetDialog readingChallengeInstallWidgetDialog) {
        SVGAndroidRenderer.submitInteraction$default(readingChallengeInstallWidgetDialog.instrument, "click", null, null, "install_add", null, null, 246);
        Context requireContext = readingChallengeInstallWidgetDialog.requireContext();
        if (Build.VERSION.SDK_INT >= 26) {
            WikipediaApp wikipediaApp = WikipediaApp.instance;
            AppWidgetManager appWidgetManager = AppWidgetManager.getInstance(Jsoup.getInstance());
            if (appWidgetManager != null && appWidgetManager.isRequestPinAppWidgetSupported()) {
                PendingIntent broadcast = PendingIntent.getBroadcast(requireContext, 0, new Intent(requireContext, (Class<?>) ReadingChallengeWidgetReceiver.class), 201326592);
                AppWidgetManager appWidgetManager2 = AppWidgetManager.getInstance(requireContext);
                if (appWidgetManager2 != null) {
                    appWidgetManager2.requestPinAppWidget(new ComponentName(requireContext, (Class<?>) ReadingChallengeWidgetReceiver.class), null, broadcast);
                }
            }
        }
        readingChallengeInstallWidgetDialog.dismiss();
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        layoutInflater.getClass();
        SVGAndroidRenderer.submitInteraction$default(this.instrument, "impression", null, null, null, null, null, 254);
        Prefs prefs = Prefs.INSTANCE;
        PrefsIoUtil.setBoolean(R.string.preference_key_reading_challenge_install_prompt_shown, true);
        ComposeView composeView = new ComposeView(requireContext(), null, 6);
        composeView.setContent(new ComposableLambdaImpl(new ReadingChallengeInstallWidgetDialog$$ExternalSyntheticLambda0(this, 0), true, 78587953));
        return composeView;
    }
}
