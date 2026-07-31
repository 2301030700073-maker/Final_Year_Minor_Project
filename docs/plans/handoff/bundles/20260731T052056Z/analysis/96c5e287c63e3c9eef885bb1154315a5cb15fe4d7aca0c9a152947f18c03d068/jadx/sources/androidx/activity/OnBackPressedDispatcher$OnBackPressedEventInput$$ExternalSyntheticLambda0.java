package androidx.activity;

import android.content.ClipData;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.Editable;
import android.util.Log;
import android.view.View;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.compose.foundation.layout.Arrangement$SpacingAlignmentCalculator;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.compose.runtime.snapshots.ObserverHandle;
import androidx.compose.runtime.snapshots.SnapshotKt;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.node.NodeChain;
import androidx.compose.ui.scrollcapture.ScrollCapture;
import androidx.compose.ui.unit.DpKt;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.core.graphics.Insets;
import androidx.core.view.ContentInfoCompat;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.accessibility.AccessibilityViewCommand;
import androidx.core.view.inputmethod.InputContentInfoCompat$InputContentInfoCompatImpl;
import androidx.core.view.insets.ProtectionGroup;
import androidx.core.view.insets.SystemBarStateMonitor;
import androidx.datastore.core.SimpleActor$1;
import androidx.drawerlayout.widget.DrawerLayout;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.ViewModelKt;
import androidx.paging.HintHandler;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import coil3.size.ViewSizeResolver$CC;
import coil3.util.BitmapsKt;
import com.caverock.androidsvg.SVGAndroidRenderer;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.internal.StaticLayoutBuilderConfigurer;
import com.google.android.material.textfield.MaterialAutoCompleteTextView;
import com.google.android.material.textfield.StartCompoundLayout;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Pattern;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.flow.StateFlowImpl;
import okhttp3.Cache;
import okhttp3.MultipartBody;
import org.jsoup.Jsoup;
import org.jsoup.nodes.CDataNode;
import org.jsoup.nodes.Comment;
import org.jsoup.nodes.DataNode;
import org.jsoup.nodes.Node;
import org.jsoup.select.NodeTraversor;
import org.jsoup.select.NodeVisitor;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.analytics.eventplatform.WikiGamesEvent;
import org.wikipedia.captcha.CaptchaHandler;
import org.wikipedia.categories.CategoryActivity;
import org.wikipedia.createaccount.CreateAccountActivity;
import org.wikipedia.databinding.FragmentPlacesBinding;
import org.wikipedia.databinding.ViewDescriptionEditBinding;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.descriptions.DescriptionEditFragment;
import org.wikipedia.descriptions.DescriptionEditView;
import org.wikipedia.edit.insertmedia.InsertMediaActivity;
import org.wikipedia.edit.summaries.EditSummaryFragment;
import org.wikipedia.extensions.ContextKt;
import org.wikipedia.feed.HomeFragment;
import org.wikipedia.feed.HomeTab;
import org.wikipedia.feed.HomeViewModel;
import org.wikipedia.feed.personalization.PersonalizationActivity;
import org.wikipedia.feed.personalization.PersonalizationViewModel;
import org.wikipedia.feed.personalization.PersonalizationViewModel$loadArticlesByTopic$$inlined$CoroutineExceptionHandler$1;
import org.wikipedia.feed.personalization.homepreference.HomePreferenceType;
import org.wikipedia.feed.view.ListItemView;
import org.wikipedia.games.GamesHubFragment;
import org.wikipedia.history.HistoryFragment;
import org.wikipedia.main.MainActivity;
import org.wikipedia.main.MainFragment;
import org.wikipedia.media.AvPlayer;
import org.wikipedia.notifications.NotificationFilterActivity;
import org.wikipedia.onboarding.InitialOnboardingActivity;
import org.wikipedia.onboarding.OnboardingPageView;
import org.wikipedia.page.LinkMovementMethodExt;
import org.wikipedia.page.PageActivity$onCreate$1$1$1;
import org.wikipedia.page.PageAvailableOfflineHandler$Callback;
import org.wikipedia.page.PageFragment;
import org.wikipedia.page.PageFragment$$ExternalSyntheticLambda23;
import org.wikipedia.page.PageTitle;
import org.wikipedia.page.campaign.CampaignDialogView;
import org.wikipedia.places.PlacesFilterActivity;
import org.wikipedia.settings.Prefs;
import org.wikipedia.settings.PrefsIoUtil;
import org.wikipedia.talk.TalkTopicActivity;
import org.wikipedia.util.UriUtil;
import org.wikipedia.views.EditNoticesDialog;
import org.wikipedia.views.PageItemView;
import org.wikipedia.views.PlainPasteEditText;
import org.wikipedia.views.SearchActionProvider;
import org.wikipedia.views.SwipeableListView;
import org.wikipedia.views.WikiSwipeRefreshLayout;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0 implements ActivityResultCallback, Arrangement$SpacingAlignmentCalculator, ObserverHandle, OnApplyWindowInsetsListener, AccessibilityViewCommand, CheckableImageButton.OnFocusableChangedListener, StaticLayoutBuilderConfigurer, NodeVisitor, LinkMovementMethodExt.UrlHandler, SwipeRefreshLayout.OnRefreshListener, SearchActionProvider.Callback, PageAvailableOfflineHandler$Callback, SwipeableListView.OnSwipeOutListener, LinkMovementMethodExt.UrlHandlerWithText {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0(int i, Object obj) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // androidx.compose.foundation.layout.Arrangement$SpacingAlignmentCalculator
    public int align(int i, LayoutDirection layoutDirection) {
        return ((BiasAlignment.Horizontal) this.f$0).align(0, i, layoutDirection);
    }

    @Override // androidx.compose.runtime.snapshots.ObserverHandle
    public void dispose() {
        SimpleActor$1 simpleActor$1 = (SimpleActor$1) this.f$0;
        synchronized (SnapshotKt.lock) {
            SnapshotKt.globalWriteObservers = CollectionsKt.minus(SnapshotKt.globalWriteObservers, simpleActor$1);
        }
        SnapshotKt.advanceGlobalSnapshot();
    }

    @Override // org.jsoup.select.NodeVisitor
    public void head(int i, Node node) {
        StringBuilder sb = (StringBuilder) this.f$0;
        if (node instanceof DataNode) {
            sb.append(((DataNode) node).coreValue());
        } else if (node instanceof Comment) {
            sb.append(((Comment) node).coreValue());
        } else if (node instanceof CDataNode) {
            sb.append(((CDataNode) node).coreValue());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.activity.result.ActivityResultCallback
    public void onActivityResult(Object obj) {
        Intent intent;
        PageTitle pageTitle;
        int i = this.$r8$classId;
        Object[] objArr = 0;
        Object obj2 = this.f$0;
        switch (i) {
            case 1:
                ((Function1) ((MutableState) obj2).getValue()).invoke(obj);
                return;
            case LAZY_VERTICAL_GRID_VALUE:
                EditSummaryFragment editSummaryFragment = (EditSummaryFragment) obj2;
                ActivityResult activityResult = (ActivityResult) obj;
                activityResult.getClass();
                Intent intent2 = activityResult.data;
                ArrayList<String> stringArrayListExtra = intent2 != null ? intent2.getStringArrayListExtra("android.speech.extra.RESULTS") : null;
                if (activityResult.resultCode != -1 || stringArrayListExtra == null) {
                    return;
                }
                String str = (String) CollectionsKt.first((List) stringArrayListExtra);
                NodeChain nodeChain = editSummaryFragment._binding;
                nodeChain.getClass();
                ((MaterialAutoCompleteTextView) nodeChain.innerCoordinator).setText(str);
                return;
            case VERTICAL_GRID_ITEM_VALUE:
                PersonalizationActivity personalizationActivity = (PersonalizationActivity) obj2;
                ActivityResult activityResult2 = (ActivityResult) obj;
                int i2 = PersonalizationActivity.$r8$clinit;
                activityResult2.getClass();
                if (activityResult2.resultCode != 97 || (intent = activityResult2.data) == null || (pageTitle = (PageTitle) ((Parcelable) DpKt.getParcelableExtra(intent, "returnLinkTitle", PageTitle.class))) == null) {
                    return;
                }
                PersonalizationViewModel personalizationViewModel = (PersonalizationViewModel) personalizationActivity.viewModel$delegate.getValue();
                AwaitKt.launch$default(ViewModelKt.getViewModelScope(personalizationViewModel), new PersonalizationViewModel$loadArticlesByTopic$$inlined$CoroutineExceptionHandler$1(personalizationViewModel, 1), null, new PageActivity$onCreate$1$1$1(personalizationViewModel, pageTitle, objArr == true ? 1 : 0, 13), 2);
                return;
            case RADIO_BUTTON_VALUE:
                GamesHubFragment gamesHubFragment = (GamesHubFragment) obj2;
                ((ActivityResult) obj).getClass();
                gamesHubFragment.getViewModel().loadOnThisDayGamesPreviews(gamesHubFragment.getViewModel().selectedLanguage);
                return;
            case SIZE_BOX_VALUE:
                int i3 = MainActivity.$r8$clinit;
                ((ActivityResult) obj).getClass();
                Fragment currentFragment = ((MainFragment) ((MainActivity) obj2).getFragment()).getCurrentFragment();
                if (currentFragment instanceof HomeFragment) {
                    Prefs prefs = Prefs.INSTANCE;
                    HomeTab homeTab = Prefs.getHomePreferenceSelection() == HomePreferenceType.PERSONALIZED ? HomeTab.FOR_YOU : HomeTab.COMMUNITY;
                    HomeFragment homeFragment = (HomeFragment) currentFragment;
                    String homeLanguageCode = Prefs.getHomeLanguageCode();
                    HomeViewModel viewModel = homeFragment.getViewModel();
                    PrefsIoUtil.setString(R.string.preference_key_home_language_code, homeLanguageCode);
                    StateFlowImpl stateFlowImpl = viewModel._wikiSite;
                    WikiSite.Companion.getClass();
                    WikiSite forLanguageCode = WikiSite.Companion.forLanguageCode(homeLanguageCode);
                    stateFlowImpl.getClass();
                    stateFlowImpl.updateState(null, forLanguageCode);
                    homeFragment.selectTab(homeTab);
                    return;
                }
                return;
            case 23:
                NotificationFilterActivity notificationFilterActivity = (NotificationFilterActivity) obj2;
                int i4 = NotificationFilterActivity.$r8$clinit;
                ((ActivityResult) obj).getClass();
                notificationFilterActivity.setResult(2);
                notificationFilterActivity.setUpRecyclerView();
                return;
            case 24:
                InitialOnboardingActivity initialOnboardingActivity = (InitialOnboardingActivity) obj2;
                int i5 = InitialOnboardingActivity.$r8$clinit;
                ((ActivityResult) obj).getClass();
                ParcelableSnapshotMutableState parcelableSnapshotMutableState = initialOnboardingActivity.appLanguageCodesState;
                WikipediaApp wikipediaApp = WikipediaApp.instance;
                parcelableSnapshotMutableState.setValue(CollectionsKt.toList(Jsoup.getInstance().getLanguageState().getAppLanguageCodes()));
                Prefs prefs2 = Prefs.INSTANCE;
                String appLanguageCode = Jsoup.getInstance().getLanguageState().getAppLanguageCode();
                appLanguageCode.getClass();
                PrefsIoUtil.setString(R.string.preference_key_home_language_code, appLanguageCode);
                initialOnboardingActivity.setResult(1);
                return;
            default:
                PlacesFilterActivity placesFilterActivity = (PlacesFilterActivity) obj2;
                int i6 = PlacesFilterActivity.$r8$clinit;
                ((ActivityResult) obj).getClass();
                WikipediaApp wikipediaApp2 = WikipediaApp.instance;
                List m785m = ViewSizeResolver$CC.m785m();
                Prefs prefs3 = Prefs.INSTANCE;
                if (!((ArrayList) m785m).contains(Prefs.getPlacesWikiCode())) {
                    Prefs.setPlacesWikiCode(Jsoup.getInstance().getAppOrSystemLanguageCode());
                }
                placesFilterActivity.setUpRecyclerView$1();
                MultipartBody.Builder builder = placesFilterActivity.binding;
                if (builder == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    throw null;
                }
                RecyclerView.Adapter adapter = ((RecyclerView) builder.type).getAdapter();
                if (adapter != null) {
                    adapter.notifyDataSetChanged();
                    return;
                }
                return;
        }
    }

    @Override // androidx.core.view.OnApplyWindowInsetsListener
    public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
        SystemBarStateMonitor systemBarStateMonitor = (SystemBarStateMonitor) this.f$0;
        ArrayList arrayList = systemBarStateMonitor.mCallbacks;
        WindowInsetsCompat.Impl impl = windowInsetsCompat.mImpl;
        Insets min = Insets.min(impl.getInsets(519), impl.getInsets(64));
        Insets min2 = Insets.min(impl.getInsetsIgnoringVisibility(519), impl.getInsetsIgnoringVisibility(64));
        if (!min.equals(systemBarStateMonitor.mInsets) || !min2.equals(systemBarStateMonitor.mInsetsIgnoringVisibility)) {
            systemBarStateMonitor.mInsets = min;
            systemBarStateMonitor.mInsetsIgnoringVisibility = min2;
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                ProtectionGroup protectionGroup = (ProtectionGroup) arrayList.get(size);
                protectionGroup.mInsets = min;
                protectionGroup.mInsetsIgnoringVisibility = min2;
                protectionGroup.updateInsets();
            }
        }
        return windowInsetsCompat;
    }

    public boolean onCommitContent(HintHandler hintHandler, int i, Bundle bundle) {
        ContentInfoCompat.BuilderCompat builderCompat;
        AppCompatEditText appCompatEditText = (AppCompatEditText) this.f$0;
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 25 && (i & 1) != 0) {
            try {
                ((InputContentInfoCompat$InputContentInfoCompatImpl) hintHandler.state).requestPermission();
                Parcelable parcelable = (Parcelable) ((InputContentInfoCompat$InputContentInfoCompatImpl) hintHandler.state).getInputContentInfo();
                bundle = bundle == null ? new Bundle() : new Bundle(bundle);
                bundle.putParcelable("androidx.core.view.extra.INPUT_CONTENT_INFO", parcelable);
            } catch (Exception e) {
                Log.w("InputConnectionCompat", "Can't insert content from IME; requestPermission() failed", e);
                return false;
            }
        }
        InputContentInfoCompat$InputContentInfoCompatImpl inputContentInfoCompat$InputContentInfoCompatImpl = (InputContentInfoCompat$InputContentInfoCompatImpl) hintHandler.state;
        ClipData clipData = new ClipData(inputContentInfoCompat$InputContentInfoCompatImpl.getDescription(), new ClipData.Item(inputContentInfoCompat$InputContentInfoCompatImpl.getContentUri()));
        if (i2 >= 31) {
            builderCompat = new ScrollCapture(clipData, 2);
        } else {
            ContentInfoCompat.CompatImpl compatImpl = new ContentInfoCompat.CompatImpl(1);
            compatImpl.mClip = clipData;
            compatImpl.mSource = 2;
            builderCompat = compatImpl;
        }
        builderCompat.setLinkUri(inputContentInfoCompat$InputContentInfoCompatImpl.getLinkUri());
        builderCompat.setExtras(bundle);
        return ViewCompat.performReceiveContent(appCompatEditText, builderCompat.build()) == null;
    }

    @Override // org.wikipedia.page.PageAvailableOfflineHandler$Callback
    public void onFinish(boolean z) {
        int i = this.$r8$classId;
        Object obj = this.f$0;
        switch (i) {
            case RADIO_GROUP_VALUE:
                ((ListItemView) obj).setViewsGreyedOut(!z);
                break;
            default:
                View view = ((HistoryFragment.HistoryEntryItemHolder) obj).itemView;
                view.getClass();
                ((PageItemView) view).setViewsGreyedOut(!z);
                break;
        }
    }

    @Override // com.google.android.material.internal.CheckableImageButton.OnFocusableChangedListener
    public void onFocusableChanged() {
        StartCompoundLayout startCompoundLayout = (StartCompoundLayout) this.f$0;
        CheckableImageButton checkableImageButton = startCompoundLayout.startIconView;
        BitmapsKt.updateIconTooltip(checkableImageButton, startCompoundLayout.startIconOnLongClickListener, checkableImageButton.getContentDescription());
    }

    @Override // org.wikipedia.views.SearchActionProvider.Callback
    public void onQueryTextChange(String str) {
        int i = this.$r8$classId;
        Object obj = this.f$0;
        switch (i) {
            case 15:
                str.getClass();
                ((TalkTopicActivity.SearchCallback) obj).onQueryChange(str);
                break;
            default:
                str.getClass();
                ((NodeTraversor) obj).onQueryChange(str);
                break;
        }
    }

    @Override // androidx.swiperefreshlayout.widget.SwipeRefreshLayout.OnRefreshListener
    public void onRefresh() {
        InsertMediaActivity insertMediaActivity = (InsertMediaActivity) this.f$0;
        FragmentPlacesBinding fragmentPlacesBinding = insertMediaActivity.binding;
        if (fragmentPlacesBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
        ((WikiSwipeRefreshLayout) fragmentPlacesBinding.listViewButton).setRefreshing(false);
        CategoryActivity.CategoryMembersAdapter categoryMembersAdapter = insertMediaActivity.insertMediaAdapter;
        if (categoryMembersAdapter != null) {
            categoryMembersAdapter.refresh();
        }
    }

    public void onSuggestionClicked(String str) {
        WikiGamesEvent wikiGamesEvent;
        DescriptionEditView descriptionEditView = (DescriptionEditView) this.f$0;
        int i = DescriptionEditView.$r8$clinit;
        str.getClass();
        ViewDescriptionEditBinding viewDescriptionEditBinding = descriptionEditView.binding;
        viewDescriptionEditBinding.viewDescriptionEditText.setText(str);
        PlainPasteEditText plainPasteEditText = viewDescriptionEditBinding.viewDescriptionEditText;
        Editable text = plainPasteEditText.getText();
        plainPasteEditText.setSelection(text != null ? text.length() : 0);
        DescriptionEditView.Callback callback = descriptionEditView.callback;
        if (callback != null && (wikiGamesEvent = ((DescriptionEditFragment) ((AvPlayer) callback).player).analyticsHelper) != null) {
            Context context = descriptionEditView.getContext();
            context.getClass();
            PageTitle pageTitle = descriptionEditView.pageTitle;
            if (pageTitle == null) {
                Intrinsics.throwUninitializedPropertyAccessException("pageTitle");
                throw null;
            }
            wikiGamesEvent.log(context, WikiGamesEvent.composeLogString(pageTitle).concat(".selected"));
        }
        descriptionEditView.wasSuggestionChosen = true;
        descriptionEditView.wasSuggestionModified = false;
    }

    @Override // org.wikipedia.page.LinkMovementMethodExt.UrlHandler
    public void onUrlClick(String str) {
        int i = this.$r8$classId;
        Object obj = this.f$0;
        switch (i) {
            case 11:
                AppCompatActivity appCompatActivity = ((CaptchaHandler) obj).activity;
                appCompatActivity.getClass();
                String string = appCompatActivity.getString(R.string.android_app_request_an_account_url);
                string.getClass();
                Uri parse = Uri.parse(string);
                parse.getClass();
                UriUtil.visitInExternalBrowser(appCompatActivity, parse);
                break;
            case 12:
                CreateAccountActivity createAccountActivity = (CreateAccountActivity) obj;
                Pattern pattern = CreateAccountActivity.USERNAME_PATTERN;
                SVGAndroidRenderer instrument = ContextKt.getInstrument(createAccountActivity);
                if (instrument != null) {
                    SVGAndroidRenderer.submitInteraction$default(instrument, "click", null, null, "hcaptcha_disclaimer", null, null, 246);
                }
                Uri parse2 = Uri.parse(str);
                parse2.getClass();
                UriUtil.visitInExternalBrowser(createAccountActivity, parse2);
                break;
            case 25:
                OnboardingPageView onboardingPageView = (OnboardingPageView) obj;
                int i2 = OnboardingPageView.$r8$clinit;
                OnboardingPageView.Callback callback = onboardingPageView.callback;
                if (callback != null) {
                    callback.onLinkClick(onboardingPageView, str);
                    break;
                }
                break;
            default:
                Cache.Companion.logAction$default(12, "donor_policy_click", "article_banner", null, null);
                Context context = ((CampaignDialogView) obj).getContext();
                context.getClass();
                Uri parse3 = Uri.parse(str);
                parse3.getClass();
                UriUtil.visitInExternalBrowser(context, parse3);
                break;
        }
    }

    @Override // androidx.core.view.accessibility.AccessibilityViewCommand
    public boolean perform(View view) {
        DrawerLayout drawerLayout = (DrawerLayout) this.f$0;
        if (!DrawerLayout.isDrawerOpen(view) || drawerLayout.getDrawerLockMode(view) == 2) {
            return false;
        }
        drawerLayout.closeDrawer(view);
        return true;
    }

    @Override // org.jsoup.select.NodeVisitor
    public void tail(int i, Node node) {
    }

    @Override // org.wikipedia.page.LinkMovementMethodExt.UrlHandlerWithText
    public void onUrlClick(String str, String str2, String str3) {
        EditNoticesDialog editNoticesDialog = (EditNoticesDialog) this.f$0;
        PageFragment pageFragment = ((PageFragment$$ExternalSyntheticLambda23) editNoticesDialog.editNotices).f$0;
        int i = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
        pageFragment.getLinkHandler().onUrlClick(str, str2, str3);
        AlertDialog alertDialog = editNoticesDialog.dialog;
        if (alertDialog != null) {
            alertDialog.dismiss();
        }
    }
}
