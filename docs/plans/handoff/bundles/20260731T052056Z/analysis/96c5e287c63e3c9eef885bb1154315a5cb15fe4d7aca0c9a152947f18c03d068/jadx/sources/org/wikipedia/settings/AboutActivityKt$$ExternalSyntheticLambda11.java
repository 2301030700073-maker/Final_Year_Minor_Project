package org.wikipedia.settings;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import androidx.activity.compose.ManagedActivityResultLauncher;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.ParcelableSnapshotMutableIntState;
import androidx.compose.runtime.State;
import androidx.paging.ItemSnapshotList;
import androidx.paging.compose.LazyPagingItems;
import com.caverock.androidsvg.SVGAndroidRenderer;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.text.StringsKt;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.CoroutineScope;
import okhttp3.Headers;
import org.wikipedia.Constants;
import org.wikipedia.R;
import org.wikipedia.edit.richtext.SyntaxHighlighter;
import org.wikipedia.extensions.ContextKt;
import org.wikipedia.feed.personalization.PersonalizationActivity;
import org.wikipedia.feed.personalization.PersonalizationScreenKt;
import org.wikipedia.login.LoginClient;
import org.wikipedia.search.HybridSearchOnboardingActivity;
import org.wikipedia.search.SearchActivity;
import org.wikipedia.search.SearchResult;
import org.wikipedia.settings.dev.playground.ReadingChallengePlayGroundDialog;
import org.wikipedia.settings.homefeed.FeedConfigurationItem;
import org.wikipedia.widgets.readingchallenge.ReadingChallengeWidgetRepository$observeState$1$$ExternalSyntheticLambda0;
import org.wikipedia.yearinreview.YearInReviewOnboardingActivity;
import org.wikipedia.yearinreview.YearInReviewScreenData;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class AboutActivityKt$$ExternalSyntheticLambda11 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;

    public /* synthetic */ AboutActivityKt$$ExternalSyntheticLambda11(int i, Object obj, Object obj2) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = obj2;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        boolean z = false;
        Continuation continuation = null;
        Unit unit = Unit.INSTANCE;
        Object obj = this.f$1;
        Object obj2 = this.f$0;
        switch (i) {
            case 0:
                Function1 function1 = (Function1) obj2;
                ParcelableSnapshotMutableIntState parcelableSnapshotMutableIntState = (ParcelableSnapshotMutableIntState) obj;
                parcelableSnapshotMutableIntState.setIntValue(parcelableSnapshotMutableIntState.getIntValue() + 1);
                if (parcelableSnapshotMutableIntState.getIntValue() == 7) {
                    Prefs prefs = Prefs.INSTANCE;
                    if (!Prefs.isShowDeveloperSettingsEnabled()) {
                        PrefsIoUtil.setBoolean(R.string.preference_key_show_developer_settings, true);
                        function1.invoke(Boolean.FALSE);
                        break;
                    } else {
                        function1.invoke(Boolean.TRUE);
                        break;
                    }
                }
                break;
            case 1:
                HybridSearchOnboardingActivity hybridSearchOnboardingActivity = (HybridSearchOnboardingActivity) obj2;
                Constants.InvokeSource invokeSource = (Constants.InvokeSource) obj;
                int i2 = HybridSearchOnboardingActivity.$r8$clinit;
                SVGAndroidRenderer instrument = ContextKt.getInstrument(hybridSearchOnboardingActivity);
                if (instrument != null) {
                    SVGAndroidRenderer.submitInteraction$default(instrument, "click", null, null, "start_button", null, null, 246);
                }
                int i3 = SearchActivity.$r8$clinit;
                if (invokeSource == null) {
                    invokeSource = Constants.InvokeSource.NAV_MENU;
                }
                Intent newIntent$default = LoginClient.newIntent$default(hybridSearchOnboardingActivity, invokeSource, (String) null, (String) null, 56);
                Prefs prefs2 = Prefs.INSTANCE;
                if (!Prefs.isHybridSearchEnabled()) {
                    newIntent$default.putExtra("showSnackbarMessage", R.string.hybrid_search_onboarding_opt_out_toast_message);
                }
                hybridSearchOnboardingActivity.startActivity(newIntent$default);
                hybridSearchOnboardingActivity.finish();
                break;
            case 2:
                Function1 function12 = (Function1) obj2;
                String str = (String) ((State) obj).getValue();
                function12.invoke(str != null ? str : "");
                break;
            case 3:
                View view = (View) obj2;
                view.getClass();
                Object systemService = view.getContext().getSystemService("input_method");
                systemService.getClass();
                ((InputMethodManager) systemService).hideSoftInputFromWindow(view.getWindowToken(), 0);
                ((MutableState) obj).setValue(Boolean.TRUE);
                break;
            case 4:
                String str2 = (String) obj2;
                LazyPagingItems lazyPagingItems = (LazyPagingItems) obj;
                String str3 = str2 != null ? str2 : "";
                if (str3.length() != 0 && lazyPagingItems.getItemCount() != 0) {
                    ArrayList arrayList = ((ItemSnapshotList) lazyPagingItems.itemSnapshotList$delegate.getValue()).items;
                    if (!arrayList.isEmpty()) {
                        Iterator it = arrayList.iterator();
                        while (true) {
                            if (it.hasNext()) {
                                if (StringsKt.contains(((SearchResult) it.next()).pageTitle.getDisplayText(), str3, true)) {
                                    z = true;
                                }
                            }
                        }
                    }
                }
                break;
            case 5:
                Function3 function3 = (Function3) obj;
                String str4 = (String) ((State) obj2).getValue();
                if (str4 != null) {
                    function3.invoke(null, str4, Boolean.TRUE);
                    break;
                }
                break;
            case 6:
                ((SharedPreferences) obj2).unregisterOnSharedPreferenceChangeListener((Prefs$placesLastLocationFlow$1$$ExternalSyntheticLambda0) obj);
                break;
            case 7:
                ((SharedPreferences) obj2).unregisterOnSharedPreferenceChangeListener((Prefs$preferenceKeyChangeFlow$1$$ExternalSyntheticLambda0) obj);
                break;
            case 8:
                AwaitKt.launch$default((CoroutineScope) obj2, null, null, new SyntaxHighlighter.AnonymousClass2(15, (ReadingChallengePlayGroundDialog) obj, continuation), 3);
                break;
            case 9:
                ((Function1) obj2).invoke(((FeedConfigurationItem) obj).type);
                break;
            case 10:
                Context context = (Context) obj2;
                ManagedActivityResultLauncher managedActivityResultLauncher = (ManagedActivityResultLauncher) obj;
                SVGAndroidRenderer instrument2 = ContextKt.getInstrument(context);
                if (instrument2 != null) {
                    SVGAndroidRenderer.submitInteraction$default(instrument2, "click", null, null, "customize_feed", null, null, 246);
                }
                int i4 = PersonalizationActivity.$r8$clinit;
                managedActivityResultLauncher.launch(PersonalizationScreenKt.newIntent(context), null);
                break;
            case 11:
                ((SharedPreferences) obj2).unregisterOnSharedPreferenceChangeListener((ReadingChallengeWidgetRepository$observeState$1$$ExternalSyntheticLambda0) obj);
                break;
            case 12:
                YearInReviewOnboardingActivity yearInReviewOnboardingActivity = (YearInReviewOnboardingActivity) obj2;
                MutableState mutableState = (MutableState) obj;
                int i5 = YearInReviewOnboardingActivity.$r8$clinit;
                if (!Headers.Companion.isLoggedIn()) {
                    mutableState.setValue(Boolean.TRUE);
                    break;
                } else {
                    yearInReviewOnboardingActivity.proceed();
                    break;
                }
            case IMAGE_VALUE:
                ((Function1) obj2).invoke((YearInReviewScreenData.CustomIconScreen) obj);
                break;
            default:
                ((Function1) obj2).invoke((YearInReviewScreenData.HighlightsScreen) obj);
                break;
        }
        return unit;
    }
}
