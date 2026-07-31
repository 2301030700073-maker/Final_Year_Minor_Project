package org.wikipedia.widgets;

import android.appwidget.AppWidgetManager;
import android.appwidget.AppWidgetProvider;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.widget.RemoteViews;
import androidx.compose.foundation.ScrollNode$$ExternalSyntheticLambda0;
import androidx.compose.runtime.Latch;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.draw.DrawResult;
import androidx.core.app.NavUtils;
import androidx.room.Room;
import androidx.room.TransactionExecutor;
import androidx.work.BackoffPolicy;
import androidx.work.OperationKt;
import androidx.work.SystemClock;
import androidx.work.impl.WorkManagerImpl;
import androidx.work.impl.WorkManagerImpl$$ExternalSyntheticLambda0;
import coil3.SingletonImageLoader;
import coil3.request.ImageRequest;
import java.util.LinkedHashSet;
import java.util.regex.Pattern;
import kotlin.Metadata;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.Okio__OkioKt;
import org.jsoup.Jsoup;
import org.wikipedia.Constants;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.history.HistoryEntry;
import org.wikipedia.login.LoginClient;
import org.wikipedia.page.PageActivity;
import org.wikipedia.page.PageTitle;
import org.wikipedia.util.ImageUrlUtil;
import org.wikipedia.util.StringUtil;
import org.wikipedia.util.log.L;
import org.wikipedia.yearinreview.YearInReviewOnboardingScreenKt$$ExternalSyntheticLambda2;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lorg/wikipedia/widgets/WidgetProviderFeaturedPage;", "Landroid/appwidget/AppWidgetProvider;", "<init>", "()V", "Companion", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class WidgetProviderFeaturedPage extends AppWidgetProvider {
    public static final /* synthetic */ int $r8$clinit = 0;
    public static long lastServerUpdateMillis;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract class Companion {
        public static final ComposableLambdaImpl lambda$530805054 = new ComposableLambdaImpl(new YearInReviewOnboardingScreenKt$$ExternalSyntheticLambda2(11), false, 530805054);

        public static void forceUpdateWidget(Context context, PageTitle pageTitle) {
            AppWidgetManager appWidgetManager = AppWidgetManager.getInstance(context.getApplicationContext());
            if (appWidgetManager == null) {
                return;
            }
            int[] appWidgetIds = appWidgetManager.getAppWidgetIds(new ComponentName(context.getApplicationContext(), (Class<?>) WidgetProviderFeaturedPage.class));
            appWidgetIds.getClass();
            for (int i : appWidgetIds) {
                Bundle appWidgetOptions = appWidgetManager.getAppWidgetOptions(i);
                WikipediaApp wikipediaApp = WikipediaApp.instance;
                Bundle bundle = new Bundle(Jsoup.getInstance().getClassLoader());
                bundle.putParcelable("title", pageTitle);
                appWidgetOptions.putParcelable("title", bundle);
                appWidgetManager.updateAppWidgetOptions(i, appWidgetOptions);
            }
            if (appWidgetIds.length == 0) {
                return;
            }
            context.sendBroadcast(new Intent(context, (Class<?>) WidgetProviderFeaturedPage.class).setAction("android.appwidget.action.APPWIDGET_UPDATE").putExtra("appWidgetIds", appWidgetIds));
        }
    }

    @Override // android.appwidget.AppWidgetProvider
    public final void onUpdate(Context context, AppWidgetManager appWidgetManager, int[] iArr) {
        PageTitle pageTitle;
        context.getClass();
        appWidgetManager.getClass();
        iArr.getClass();
        int[] appWidgetIds = appWidgetManager.getAppWidgetIds(new ComponentName(context, (Class<?>) WidgetProviderFeaturedPage.class));
        appWidgetIds.getClass();
        for (int i : appWidgetIds) {
            L.d("updating widget...");
            RemoteViews remoteViews = new RemoteViews(context.getPackageName(), R.layout.widget_featured_page);
            Bundle bundle = (Bundle) Room.getParcelable(appWidgetManager.getAppWidgetOptions(i), "title", Bundle.class);
            if (bundle != null) {
                WikipediaApp wikipediaApp = WikipediaApp.instance;
                bundle.setClassLoader(Jsoup.getInstance().getClassLoader());
                pageTitle = (PageTitle) Room.getParcelable(bundle, "title", PageTitle.class);
            } else {
                pageTitle = null;
            }
            if (pageTitle == null || System.currentTimeMillis() - lastServerUpdateMillis > 3600000) {
                lastServerUpdateMillis = System.currentTimeMillis();
                WorkManagerImpl instance$1 = WorkManagerImpl.getInstance$1(context);
                SystemClock systemClock = instance$1.mConfiguration.tracer;
                String concat = "CancelWorkByTag_".concat("WidgetFeaturedPageWorker");
                TransactionExecutor transactionExecutor = instance$1.mWorkTaskExecutor.mBackgroundExecutor;
                transactionExecutor.getClass();
                OperationKt.launchOperation(systemClock, concat, transactionExecutor, new WorkManagerImpl$$ExternalSyntheticLambda0(instance$1, 2));
                Latch latch = new Latch(WidgetFeaturedPageWorker.class);
                ((LinkedHashSet) latch.spareList).add("WidgetFeaturedPageWorker");
                latch.setBackoffCriteria(BackoffPolicy.LINEAR);
                WorkManagerImpl.getInstance$1(context).enqueue(latch.build());
                return;
            }
            StringUtil stringUtil = StringUtil.INSTANCE;
            remoteViews.setTextViewText(R.id.widget_content_title, StringUtil.fromHtml(pageTitle.getDisplayText()));
            String str = pageTitle.description;
            if (str == null || str.length() == 0) {
                remoteViews.setViewVisibility(R.id.widget_content_description, 8);
            } else {
                remoteViews.setTextViewText(R.id.widget_content_description, pageTitle.description);
                remoteViews.setViewVisibility(R.id.widget_content_description, 0);
            }
            String str2 = pageTitle.thumbUrl;
            if (str2 == null || str2.length() == 0) {
                remoteViews.setViewVisibility(R.id.widget_content_thumbnail, 8);
            } else {
                Pattern pattern = ImageUrlUtil.WIDTH_IN_IMAGE_URL_REGEX;
                String str3 = pageTitle.thumbUrl;
                str3.getClass();
                String urlForPreferredSize = ImageUrlUtil.getUrlForPreferredSize(330, str3);
                ScrollNode$$ExternalSyntheticLambda0 scrollNode$$ExternalSyntheticLambda0 = new ScrollNode$$ExternalSyntheticLambda0(remoteViews, appWidgetManager, i, 6);
                if (Okio__OkioKt._implementation == null) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("ImageService has not been set, call ImageService.setImplementation() before using ImageService");
                    return;
                }
                ImageRequest.Builder builder = new ImageRequest.Builder(context);
                builder.data = urlForPreferredSize;
                builder.target = new DrawResult(scrollNode$$ExternalSyntheticLambda0);
                SingletonImageLoader.get(context).enqueue(builder.build());
                remoteViews.setViewVisibility(R.id.widget_content_thumbnail, 0);
            }
            HistoryEntry historyEntry = new HistoryEntry(29, pageTitle);
            int i2 = PageActivity.$r8$clinit;
            remoteViews.setOnClickPendingIntent(R.id.widget_container, NavUtils.getActivity(context, 1, LoginClient.newIntentForNewTab(context, historyEntry, historyEntry.getTitle()).putExtra("invokeSource", Constants.InvokeSource.WIDGET).putExtra("widgetType", WidgetTypes.FEATURED_ARTICLE.getValue()).setFlags(268435456), 134217728));
            appWidgetManager.updateAppWidget(i, remoteViews);
        }
    }
}
