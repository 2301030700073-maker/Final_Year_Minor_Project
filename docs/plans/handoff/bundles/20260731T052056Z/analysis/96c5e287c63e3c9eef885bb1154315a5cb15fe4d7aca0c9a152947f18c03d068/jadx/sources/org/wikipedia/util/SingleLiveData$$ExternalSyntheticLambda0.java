package org.wikipedia.util;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.widget.TextView;
import androidx.appcompat.app.AlertController;
import androidx.compose.animation.AnimatedContentKt$AnimatedContent$6$1$5$1$1$invoke$$inlined$onDispose$1;
import androidx.compose.animation.core.InfiniteTransition;
import androidx.compose.foundation.lazy.LazyListIntervalContent;
import androidx.compose.foundation.lazy.LazyListScope$items$1;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.Observer;
import androidx.navigation.NavGraphBuilder;
import androidx.navigation.NavigatorProvider;
import androidx.navigation.compose.ComposeNavigator;
import androidx.navigation.compose.ComposeNavigatorDestinationBuilder;
import androidx.navigation.internal.NavControllerImpl$$ExternalSyntheticLambda1;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import com.caverock.androidsvg.SVGAndroidRenderer;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import java.util.Map;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.uuid.UuidKt;
import kotlinx.coroutines.CoroutineScope;
import org.maplibre.android.maps.MapView;
import org.wikipedia.Constants;
import org.wikipedia.R;
import org.wikipedia.activitytab.ActivityTabFragment$$ExternalSyntheticLambda34;
import org.wikipedia.analytics.eventplatform.WikiGamesEvent;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.extensions.ContextKt;
import org.wikipedia.login.LoginClient;
import org.wikipedia.page.PageFragment$$ExternalSyntheticLambda28;
import org.wikipedia.readinglist.recommended.RecommendedReadingListSource;
import org.wikipedia.readinglist.recommended.RecommendedReadingListSourceFragment;
import org.wikipedia.readinglist.recommended.RecommendedReadingListUpdateFrequency;
import org.wikipedia.richtext.CustomHtmlParser;
import org.wikipedia.search.HybridSearchOnboardingActivity;
import org.wikipedia.search.HybridSearchSkeletonLoaderKt$$ExternalSyntheticLambda0;
import org.wikipedia.search.SearchActivity;
import org.wikipedia.search.SearchResult;
import org.wikipedia.search.db.RecentSearch;
import org.wikipedia.search.db.RecentSearchDao_Impl;
import org.wikipedia.settings.Prefs;
import org.wikipedia.talk.db.TalkPageSeen;
import org.wikipedia.talk.db.TalkPageSeenDao_Impl;
import org.wikipedia.talk.db.TalkTemplateDao_Impl;
import org.wikipedia.views.SurveyDialog$$ExternalSyntheticLambda8;
import org.wikipedia.yearinreview.YearInReviewActivity;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class SingleLiveData$$ExternalSyntheticLambda0 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;

    public /* synthetic */ SingleLiveData$$ExternalSyntheticLambda0(int i, Object obj, Object obj2) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = obj2;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        SQLiteStatement prepare;
        int i = this.$r8$classId;
        int i2 = 3;
        Unit unit = Unit.INSTANCE;
        Object obj2 = this.f$1;
        Object obj3 = this.f$0;
        switch (i) {
            case 0:
                Observer observer = (Observer) obj2;
                if (((SingleLiveData) obj3).pending.compareAndSet(true, false)) {
                    observer.onChanged(obj);
                }
                return unit;
            case 1:
                String str = (String) obj3;
                WikiSite wikiSite = (WikiSite) obj2;
                SQLiteConnection sQLiteConnection = (SQLiteConnection) obj;
                sQLiteConnection.getClass();
                prepare = sQLiteConnection.prepare("SELECT COUNT(*) FROM RecommendedPage WHERE apiTitle = ? AND wiki = ?");
                try {
                    prepare.bindText(1, str);
                    String wikiSiteToString = LoginClient.wikiSiteToString(wikiSite);
                    if (wikiSiteToString == null) {
                        prepare.bindNull(2);
                    } else {
                        prepare.bindText(2, wikiSiteToString);
                    }
                    r6 = prepare.step() ? (int) prepare.getLong(0) : 0;
                    prepare.close();
                    return Integer.valueOf(r6);
                } finally {
                }
            case 2:
                Function1 function1 = (Function1) obj2;
                String str2 = (String) obj;
                str2.getClass();
                RecommendedReadingListUpdateFrequency recommendedReadingListUpdateFrequency = (RecommendedReadingListUpdateFrequency) ((Map) obj3).get(str2);
                if (recommendedReadingListUpdateFrequency == null) {
                    recommendedReadingListUpdateFrequency = RecommendedReadingListUpdateFrequency.DAILY;
                }
                function1.invoke(recommendedReadingListUpdateFrequency);
                return unit;
            case 3:
                String str3 = (String) obj3;
                RecommendedReadingListSourceFragment recommendedReadingListSourceFragment = (RecommendedReadingListSourceFragment) obj2;
                RecommendedReadingListSource recommendedReadingListSource = (RecommendedReadingListSource) obj;
                recommendedReadingListSource.getClass();
                WikiGamesEvent.submit$default(recommendedReadingListSource.getEventString() + "_click", str3, null, null, null, null, null, null, 508);
                if (recommendedReadingListSourceFragment.getViewModel().fromSettings) {
                    Prefs prefs = Prefs.INSTANCE;
                    if (recommendedReadingListSource == Prefs.getRecommendedReadingListSource()) {
                        recommendedReadingListSourceFragment.getViewModel().updateSourceSelection(recommendedReadingListSource);
                    } else {
                        MaterialAlertDialogBuilder materialAlertDialogBuilder = new MaterialAlertDialogBuilder(recommendedReadingListSourceFragment.requireContext(), 0);
                        materialAlertDialogBuilder.setTitle(R.string.recommended_reading_list_settings_updates_base_dialog_title);
                        materialAlertDialogBuilder.setMessage(R.string.recommended_reading_list_settings_updates_base_dialog_message);
                        ((AlertController.AlertParams) materialAlertDialogBuilder.array).mCancelable = false;
                        materialAlertDialogBuilder.setPositiveButton(R.string.recommended_reading_list_settings_updates_base_dialog_negative_button, new PageFragment$$ExternalSyntheticLambda28(7, str3));
                        materialAlertDialogBuilder.setNegativeButton(R.string.recommended_reading_list_settings_updates_base_dialog_positive_button, new SurveyDialog$$ExternalSyntheticLambda8(str3, recommendedReadingListSourceFragment, recommendedReadingListSource, 6));
                        materialAlertDialogBuilder.show();
                    }
                } else {
                    recommendedReadingListSourceFragment.getViewModel().updateSourceSelection(recommendedReadingListSource);
                }
                return unit;
            case 4:
                Ref$ObjectRef ref$ObjectRef = (Ref$ObjectRef) obj3;
                CustomHtmlParser.CustomTagHandler customTagHandler = (CustomHtmlParser.CustomTagHandler) obj2;
                Bitmap bitmap = (Bitmap) obj;
                bitmap.getClass();
                Bitmap copy = bitmap.copy(Bitmap.Config.ARGB_8888, true);
                if (!((BitmapDrawable) ref$ObjectRef.element).getBitmap().isRecycled()) {
                    Bitmap bitmap2 = ((BitmapDrawable) ref$ObjectRef.element).getBitmap();
                    bitmap2.getClass();
                    new Canvas(bitmap2).drawBitmap(copy, new Rect(0, 0, bitmap.getWidth(), bitmap.getHeight()), ((BitmapDrawable) ref$ObjectRef.element).getBounds(), (Paint) null);
                    ((TextView) customTagHandler.view).postInvalidate();
                }
                return unit;
            case 5:
                HybridSearchOnboardingActivity hybridSearchOnboardingActivity = (HybridSearchOnboardingActivity) obj3;
                Constants.InvokeSource invokeSource = (Constants.InvokeSource) obj2;
                String str4 = (String) obj;
                int i3 = HybridSearchOnboardingActivity.$r8$clinit;
                str4.getClass();
                SVGAndroidRenderer instrument = ContextKt.getInstrument(hybridSearchOnboardingActivity);
                if (instrument != null) {
                    Map singletonMap = Collections.singletonMap("query", str4);
                    singletonMap.getClass();
                    SVGAndroidRenderer.submitInteraction$default(instrument, "click", null, null, "onboarding_query", null, singletonMap, 118);
                }
                int i4 = SearchActivity.$r8$clinit;
                if (invokeSource == null) {
                    invokeSource = Constants.InvokeSource.NAV_MENU;
                }
                hybridSearchOnboardingActivity.startActivity(LoginClient.newIntent$default(hybridSearchOnboardingActivity, invokeSource, str4, (String) null, 24));
                hybridSearchOnboardingActivity.finish();
                return unit;
            case 6:
                Boolean bool = (Boolean) obj;
                bool.booleanValue();
                ((Function2) obj3).invoke(bool, (SearchResult) obj2);
                return unit;
            case 7:
                LazyListIntervalContent lazyListIntervalContent = (LazyListIntervalContent) obj;
                lazyListIntervalContent.getClass();
                lazyListIntervalContent.items(3, null, LazyListScope$items$1.INSTANCE, new ComposableLambdaImpl(new HybridSearchSkeletonLoaderKt$$ExternalSyntheticLambda0((List) obj3, (InfiniteTransition) obj2, r6), true, -384222840));
                return unit;
            case 8:
                SQLiteConnection sQLiteConnection2 = (SQLiteConnection) obj;
                sQLiteConnection2.getClass();
                ((RecentSearchDao_Impl) obj3).__insertAdapterOfRecentSearch.insert(sQLiteConnection2, (RecentSearch) obj2);
                return unit;
            case 9:
                String str5 = (String) obj3;
                Date date = (Date) obj2;
                SQLiteConnection sQLiteConnection3 = (SQLiteConnection) obj;
                sQLiteConnection3.getClass();
                prepare = sQLiteConnection3.prepare("DELETE FROM RecentSearch WHERE text = ? AND timestamp = ?");
                try {
                    prepare.bindText(1, str5);
                    Long dateToTimestamp = LoginClient.dateToTimestamp(date);
                    if (dateToTimestamp == null) {
                        prepare.bindNull(2);
                    } else {
                        prepare.bindLong(dateToTimestamp.longValue(), 2);
                    }
                    prepare.step();
                    prepare.close();
                    return unit;
                } finally {
                }
            case 10:
                SQLiteConnection sQLiteConnection4 = (SQLiteConnection) obj;
                sQLiteConnection4.getClass();
                ((TalkPageSeenDao_Impl) obj3).__insertAdapterOfTalkPageSeen.insert(sQLiteConnection4, (TalkPageSeen) obj2);
                return unit;
            case 11:
                SQLiteConnection sQLiteConnection5 = (SQLiteConnection) obj;
                sQLiteConnection5.getClass();
                ((TalkTemplateDao_Impl) obj3).__updateAdapterOfTalkTemplate.handleMultiple(sQLiteConnection5, (List) obj2);
                return unit;
            case 12:
                NavGraphBuilder navGraphBuilder = (NavGraphBuilder) obj;
                int i5 = YearInReviewActivity.$r8$clinit;
                navGraphBuilder.getClass();
                ComposableLambdaImpl composableLambdaImpl = new ComposableLambdaImpl(new ActivityTabFragment$$ExternalSyntheticLambda34(i2, (YearInReviewActivity) obj3, (CoroutineScope) obj2), true, 1546334128);
                NavigatorProvider navigatorProvider = navGraphBuilder.provider;
                navigatorProvider.getClass();
                navGraphBuilder.destinations.add(new ComposeNavigatorDestinationBuilder((ComposeNavigator) navigatorProvider.getNavigator(UuidKt.getNameForNavigator$navigation_common_release(ComposeNavigator.class)), composableLambdaImpl).build());
                return unit;
            default:
                LifecycleOwner lifecycleOwner = (LifecycleOwner) obj3;
                MapView mapView = (MapView) obj2;
                ((DisposableEffectScope) obj).getClass();
                NavControllerImpl$$ExternalSyntheticLambda1 navControllerImpl$$ExternalSyntheticLambda1 = new NavControllerImpl$$ExternalSyntheticLambda1(i2, mapView);
                lifecycleOwner.getLifecycle().addObserver(navControllerImpl$$ExternalSyntheticLambda1);
                return new AnimatedContentKt$AnimatedContent$6$1$5$1$1$invoke$$inlined$onDispose$1(lifecycleOwner, navControllerImpl$$ExternalSyntheticLambda1, mapView, 5);
        }
    }

    public /* synthetic */ SingleLiveData$$ExternalSyntheticLambda0(String str, Object obj, Object obj2, int i) {
        this.$r8$classId = i;
        this.f$0 = str;
        this.f$1 = obj2;
    }
}
