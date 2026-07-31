package org.wikipedia.widgets;

import android.appwidget.AppWidgetManager;
import android.content.ComponentName;
import android.content.Context;
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
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lorg/wikipedia/widgets/SearchWidgetInstallDialog;", "Lorg/wikipedia/page/ExtendedBottomSheetDialogFragment;", "<init>", "()V", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class SearchWidgetInstallDialog extends ExtendedBottomSheetDialogFragment {
    public final SVGAndroidRenderer instrument;

    public SearchWidgetInstallDialog() {
        super(true);
        TestKitchenClient testKitchenClient = TestKitchenAdapter.client;
        testKitchenClient.getClass();
        SVGAndroidRenderer sVGAndroidRenderer = new SVGAndroidRenderer("apps-widgetsearch", testKitchenClient);
        sVGAndroidRenderer.parentStack = "widget_search_install";
        this.instrument = sVGAndroidRenderer;
    }

    public static final void onCreateView$lambda$0$0$0$1$0$0(boolean z, SearchWidgetInstallDialog searchWidgetInstallDialog) {
        AppWidgetManager appWidgetManager;
        if (z) {
            SVGAndroidRenderer.submitInteraction$default(searchWidgetInstallDialog.instrument, "click", null, null, "install_add", null, null, 246);
            Context requireContext = searchWidgetInstallDialog.requireContext();
            if (Build.VERSION.SDK_INT >= 26) {
                WikipediaApp wikipediaApp = WikipediaApp.instance;
                AppWidgetManager appWidgetManager2 = AppWidgetManager.getInstance(Jsoup.getInstance());
                if (appWidgetManager2 != null && appWidgetManager2.isRequestPinAppWidgetSupported() && (appWidgetManager = AppWidgetManager.getInstance(requireContext)) != null) {
                    appWidgetManager.requestPinAppWidget(new ComponentName(requireContext, (Class<?>) WidgetProviderSearch.class), null, null);
                }
            }
        }
        searchWidgetInstallDialog.dismiss();
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        layoutInflater.getClass();
        SVGAndroidRenderer.submitInteraction$default(this.instrument, "impression", null, null, null, null, null, 254);
        Prefs prefs = Prefs.INSTANCE;
        PrefsIoUtil.setBoolean(R.string.preference_key_search_widget_install_prompt_shown, true);
        ComposeView composeView = new ComposeView(requireContext(), null, 6);
        composeView.setContent(new ComposableLambdaImpl(new SearchWidgetInstallDialog$$ExternalSyntheticLambda0(this, 0), true, 1685787366));
        return composeView;
    }
}
