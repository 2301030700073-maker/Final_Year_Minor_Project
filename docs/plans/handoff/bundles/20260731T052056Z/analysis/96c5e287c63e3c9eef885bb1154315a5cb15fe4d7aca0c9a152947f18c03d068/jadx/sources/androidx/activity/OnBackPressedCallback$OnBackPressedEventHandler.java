package androidx.activity;

import android.content.Intent;
import android.os.Build;
import android.os.Parcelable;
import android.util.Log;
import android.util.TypedValue;
import android.view.View;
import android.view.Window;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.appcompat.app.AlertController;
import androidx.appcompat.view.menu.BaseMenuWrapper;
import androidx.compose.animation.core.Animation;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.NodeChain;
import androidx.compose.ui.unit.DpKt;
import androidx.core.view.WindowInsetsControllerCompat$Impl23;
import androidx.core.view.WindowInsetsControllerCompat$Impl26;
import androidx.core.view.WindowInsetsControllerCompat$Impl30;
import androidx.core.view.WindowInsetsControllerCompat$Impl35;
import androidx.fragment.app.BackStackRecord;
import androidx.fragment.app.DefaultSpecialEffectsController;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentContainerView;
import androidx.fragment.app.FragmentManager$1;
import androidx.fragment.app.FragmentManager$OpGenerator;
import androidx.fragment.app.FragmentManagerImpl;
import androidx.fragment.app.FragmentTransaction$Op;
import androidx.fragment.app.SpecialEffectsController$Effect;
import androidx.fragment.app.SpecialEffectsController$FragmentStateManagerOperation;
import androidx.navigation.NavHostController;
import androidx.navigationevent.NavigationEvent;
import androidx.navigationevent.NavigationEventHandler;
import androidx.paging.HintHandler;
import coil3.util.ContextsKt;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import com.caverock.androidsvg.SVGAndroidRenderer;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;
import com.google.android.material.progressindicator.LinearProgressIndicator;
import com.google.gson.GsonBuilder;
import com.hcaptcha.sdk.tasks.Task$$ExternalSyntheticLambda0;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.MultipartBody;
import okhttp3.Request;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.jsoup.Jsoup;
import org.wikipedia.Constants;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.analytics.eventplatform.AppSessionEvent;
import org.wikipedia.analytics.eventplatform.BreadCrumbLogEvent;
import org.wikipedia.analytics.eventplatform.EventPlatformClient;
import org.wikipedia.analytics.eventplatform.ImageRecommendationsEvent;
import org.wikipedia.analytics.eventplatform.WikiGamesEvent;
import org.wikipedia.captcha.CaptchaHandler;
import org.wikipedia.databinding.ActivityLoginBinding;
import org.wikipedia.databinding.ActivityTalkReplyBinding;
import org.wikipedia.databinding.FragmentPlacesBinding;
import org.wikipedia.edit.EditSectionActivity;
import org.wikipedia.edit.SyntaxHighlightableEditText;
import org.wikipedia.edit.insertmedia.InsertMediaActivity;
import org.wikipedia.edit.insertmedia.InsertMediaAdvancedSettingsFragment;
import org.wikipedia.edit.insertmedia.InsertMediaSettingsFragment;
import org.wikipedia.edit.preview.EditPreviewFragment;
import org.wikipedia.edit.summaries.EditSummaryFragment;
import org.wikipedia.edit.summaries.EditSummaryFragment$$ExternalSyntheticLambda0;
import org.wikipedia.edit.templates.InsertTemplateFragment;
import org.wikipedia.edit.templates.TemplatesSearchActivity;
import org.wikipedia.extensions.ContextKt;
import org.wikipedia.games.WikiGames$$ExternalSyntheticLambda0;
import org.wikipedia.games.onthisday.OnThisDayGameActivity;
import org.wikipedia.main.MainActivity;
import org.wikipedia.navtab.NavTab;
import org.wikipedia.page.PageActivity;
import org.wikipedia.page.PageFragment;
import org.wikipedia.page.PageTitle;
import org.wikipedia.page.edithistory.EditHistoryListActivity;
import org.wikipedia.page.edithistory.EditHistoryListViewModel;
import org.wikipedia.readinglist.ReadingListActivity;
import org.wikipedia.readinglist.ReadingListFragment;
import org.wikipedia.readinglist.ReadingListMode;
import org.wikipedia.readinglist.database.ReadingList;
import org.wikipedia.search.SearchActivity;
import org.wikipedia.talk.TalkReplyActivity;
import org.wikipedia.talk.TalkReplyActivity$$ExternalSyntheticLambda15;
import org.wikipedia.util.UriUtil;
import org.wikipedia.views.CabSearchView;
import org.wikipedia.views.ViewAnimations;
import org.wikipedia.views.WikiArticleCardView;
import org.wikipedia.views.WikiErrorView;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class OnBackPressedCallback$OnBackPressedEventHandler extends NavigationEventHandler {
    public boolean isLifecycleActive;
    public final FragmentManager$1 onBackPressedCallback;

    public OnBackPressedCallback$OnBackPressedEventHandler(FragmentManager$1 fragmentManager$1, OnBackPressedCallbackInfo onBackPressedCallbackInfo) {
        boolean z = fragmentManager$1.isEnabled;
        this.currentInfo = onBackPressedCallbackInfo;
        this.isBackEnabled = z;
        this.onBackPressedCallback = fragmentManager$1;
        this.isLifecycleActive = true;
    }

    @Override // androidx.navigationevent.NavigationEventHandler
    public final void onBackCancelled() {
        FragmentManager$1 fragmentManager$1 = this.onBackPressedCallback;
        switch (fragmentManager$1.$r8$classId) {
            case 0:
                FragmentManagerImpl fragmentManagerImpl = (FragmentManagerImpl) fragmentManager$1.this$0;
                if (FragmentManagerImpl.isLoggingEnabled(3)) {
                    Log.d("FragmentManager", "handleOnBackCancelled. PREDICTIVE_BACK = true fragment manager " + fragmentManagerImpl);
                }
                if (FragmentManagerImpl.isLoggingEnabled(3)) {
                    Log.d("FragmentManager", "cancelBackStackTransition for transition " + fragmentManagerImpl.mTransitioningOp);
                }
                BackStackRecord backStackRecord = fragmentManagerImpl.mTransitioningOp;
                if (backStackRecord != null) {
                    backStackRecord.mCommitted = false;
                    backStackRecord.collapseOps();
                    BackStackRecord backStackRecord2 = fragmentManagerImpl.mTransitioningOp;
                    Task$$ExternalSyntheticLambda0 task$$ExternalSyntheticLambda0 = new Task$$ExternalSyntheticLambda0(16, fragmentManagerImpl);
                    ArrayList arrayList = backStackRecord2.mCommitRunnables;
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                        backStackRecord2.mCommitRunnables = arrayList;
                    }
                    arrayList.add(task$$ExternalSyntheticLambda0);
                    fragmentManagerImpl.mTransitioningOp.commit();
                    fragmentManagerImpl.mHandlingTransitioningOp = true;
                    fragmentManagerImpl.execPendingActions(true);
                    fragmentManagerImpl.forcePostponedTransactions();
                    fragmentManagerImpl.mHandlingTransitioningOp = false;
                    fragmentManagerImpl.mTransitioningOp = null;
                    break;
                }
                break;
            case 2:
                ((BaseMenuWrapper) fragmentManager$1.this$0).onBackCancelled();
                break;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.navigationevent.NavigationEventHandler
    public final void onBackCompleted() {
        ArrayList arrayList;
        FragmentManager$1 fragmentManager$1 = this.onBackPressedCallback;
        int i = 2;
        int i2 = 1;
        switch (fragmentManager$1.$r8$classId) {
            case 0:
                FragmentManagerImpl fragmentManagerImpl = (FragmentManagerImpl) fragmentManager$1.this$0;
                if (FragmentManagerImpl.isLoggingEnabled(3)) {
                    Log.d("FragmentManager", "handleOnBackPressed. PREDICTIVE_BACK = true fragment manager " + fragmentManagerImpl);
                }
                FragmentManager$1 fragmentManager$12 = fragmentManagerImpl.mOnBackPressedCallback;
                ArrayList arrayList2 = fragmentManagerImpl.mBackStackChangeListeners;
                fragmentManagerImpl.mHandlingTransitioningOp = true;
                fragmentManagerImpl.execPendingActions(true);
                fragmentManagerImpl.mHandlingTransitioningOp = false;
                if (fragmentManagerImpl.mTransitioningOp == null) {
                    if (fragmentManager$12.isEnabled) {
                        if (FragmentManagerImpl.isLoggingEnabled(3)) {
                            Log.d("FragmentManager", "Calling popBackStackImmediate via onBackPressed callback");
                        }
                        fragmentManagerImpl.popBackStackImmediate();
                        return;
                    } else {
                        if (FragmentManagerImpl.isLoggingEnabled(3)) {
                            Log.d("FragmentManager", "Calling onBackPressed via onBackPressed callback");
                        }
                        fragmentManagerImpl.mOnBackPressedDispatcher.onBackPressed();
                        return;
                    }
                }
                if (!arrayList2.isEmpty()) {
                    LinkedHashSet linkedHashSet = new LinkedHashSet(FragmentManagerImpl.fragmentsFromRecord(fragmentManagerImpl.mTransitioningOp));
                    Iterator it = arrayList2.iterator();
                    while (it.hasNext()) {
                        if (it.next() != null) {
                            ContextsKt$$ExternalSyntheticBUOutline0.m$1();
                            return;
                        }
                        Iterator it2 = linkedHashSet.iterator();
                        if (it2.hasNext()) {
                            throw null;
                        }
                    }
                }
                Iterator it3 = fragmentManagerImpl.mTransitioningOp.mOps.iterator();
                while (it3.hasNext()) {
                    Fragment fragment = ((FragmentTransaction$Op) it3.next()).mFragment;
                    if (fragment != null) {
                        fragment.mTransitioning = false;
                    }
                }
                Iterator it4 = fragmentManagerImpl.collectChangedControllers(new ArrayList(Collections.singletonList(fragmentManagerImpl.mTransitioningOp)), 0, 1).iterator();
                while (it4.hasNext()) {
                    DefaultSpecialEffectsController defaultSpecialEffectsController = (DefaultSpecialEffectsController) it4.next();
                    ArrayList arrayList3 = defaultSpecialEffectsController.runningOperations;
                    if (FragmentManagerImpl.isLoggingEnabled(3)) {
                        Log.d("FragmentManager", "SpecialEffectsController: Completing Back ");
                    }
                    defaultSpecialEffectsController.processStart(arrayList3);
                    defaultSpecialEffectsController.commitEffects$fragment_release(arrayList3);
                }
                Iterator it5 = fragmentManagerImpl.mTransitioningOp.mOps.iterator();
                while (it5.hasNext()) {
                    Fragment fragment2 = ((FragmentTransaction$Op) it5.next()).mFragment;
                    if (fragment2 != null && fragment2.mContainer == null) {
                        fragmentManagerImpl.createOrGetFragmentStateManager(fragment2).moveToExpectedState();
                    }
                }
                fragmentManagerImpl.mTransitioningOp = null;
                fragmentManagerImpl.updateOnBackPressedCallbackEnabled();
                if (FragmentManagerImpl.isLoggingEnabled(3)) {
                    Log.d("FragmentManager", "Op is being set to null");
                    Log.d("FragmentManager", "OnBackPressedCallback enabled=" + fragmentManager$12.isEnabled + " for  FragmentManager " + fragmentManagerImpl);
                    return;
                }
                return;
            case 1:
                ((Function1) fragmentManager$1.this$0).invoke(fragmentManager$1);
                return;
            case 2:
                ((BaseMenuWrapper) fragmentManager$1.this$0).onBackCompleted();
                return;
            case 3:
                ((NavHostController) fragmentManager$1.this$0).popBackStack();
                return;
            case 4:
                EditSectionActivity editSectionActivity = (EditSectionActivity) fragmentManager$1.this$0;
                Intent intent = editSectionActivity.getIntent();
                intent.getClass();
                PageTitle pageTitle = (PageTitle) ((Parcelable) DpKt.getParcelableExtra(intent, "imageTitle", PageTitle.class));
                String stringExtra = editSectionActivity.getIntent().getStringExtra("imageSource");
                String stringExtra2 = editSectionActivity.getIntent().getStringExtra("imageSourceProjects");
                ActivityLoginBinding activityLoginBinding = editSectionActivity.binding;
                if (activityLoginBinding == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    throw null;
                }
                if (((LinearProgressIndicator) activityLoginBinding.viewProgressBar).getVisibility() == 0) {
                    return;
                }
                editSectionActivity.showProgressBar$1(false);
                CaptchaHandler captchaHandler = editSectionActivity.captchaHandler;
                if (captchaHandler == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("captchaHandler");
                    throw null;
                }
                if (captchaHandler.isActive()) {
                    CaptchaHandler captchaHandler2 = editSectionActivity.captchaHandler;
                    if (captchaHandler2 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("captchaHandler");
                        throw null;
                    }
                    captchaHandler2.cancelCaptcha();
                    ActivityLoginBinding activityLoginBinding2 = editSectionActivity.binding;
                    if (activityLoginBinding2 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                        throw null;
                    }
                    ((ScrollView) activityLoginBinding2.loginButton).setVisibility(8);
                }
                ActivityLoginBinding activityLoginBinding3 = editSectionActivity.binding;
                if (activityLoginBinding3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    throw null;
                }
                ((WikiErrorView) activityLoginBinding3.viewLoginError).setVisibility(8);
                EditSummaryFragment editSummaryFragment = editSectionActivity.editSummaryFragment;
                if (editSummaryFragment == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("editSummaryFragment");
                    throw null;
                }
                if (editSummaryFragment.isActive()) {
                    int i3 = ViewAnimations.$r8$clinit;
                    NodeChain nodeChain = editSummaryFragment._binding;
                    nodeChain.getClass();
                    ScrollView scrollView = (ScrollView) nodeChain.layoutNode;
                    scrollView.getClass();
                    ViewAnimations.fadeOut(scrollView, new EditSummaryFragment$$ExternalSyntheticLambda0(editSummaryFragment, i2));
                    MultipartBody.Builder builder = editSummaryFragment.editSummaryHandler;
                    if (builder == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("editSummaryHandler");
                        throw null;
                    }
                    View view = (View) builder.type;
                    if (view.getVisibility() == 0) {
                        view.setVisibility(8);
                        ImageRecommendationsEvent.Companion companion = ImageRecommendationsEvent.Companion;
                        String prefixedText = pageTitle != null ? pageTitle.getPrefixedText() : null;
                        String str = prefixedText == null ? "" : prefixedText;
                        String str2 = stringExtra == null ? "" : stringExtra;
                        String str3 = stringExtra2 == null ? "" : stringExtra2;
                        String stringExtra3 = editSectionActivity.getIntent().getStringExtra("resultImageCaption");
                        Boolean valueOf = Boolean.valueOf(!(stringExtra3 == null || stringExtra3.length() == 0));
                        String stringExtra4 = editSectionActivity.getIntent().getStringExtra("resultImageAlt");
                        ImageRecommendationsEvent.Companion.logAction("back", "editsummary_dialog", ImageRecommendationsEvent.Companion.getActionDataString$default(companion, str, str2, str3, null, "accepted", null, valueOf, Boolean.valueOf(((stringExtra4 == null || stringExtra4.length() == 0) ? 1 : 0) ^ 1), false, 296), editSectionActivity.getViewModel().pageTitle.wikiSite.languageCode);
                        ContextsKt supportActionBar = editSectionActivity.getSupportActionBar();
                        if (supportActionBar != null) {
                            supportActionBar.setTitle(editSectionActivity.getString(R.string.edit_preview));
                            return;
                        }
                        return;
                    }
                }
                EditPreviewFragment editPreviewFragment = editSectionActivity.editPreviewFragment;
                if (editPreviewFragment == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("editPreviewFragment");
                    throw null;
                }
                if (!editPreviewFragment.isActive()) {
                    TypedValue typedValue = new TypedValue();
                    TypedValue typedValue2 = editSectionActivity.getTheme().resolveAttribute(android.R.attr.colorBackground, typedValue, true) ? typedValue : null;
                    if (typedValue2 == null) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m("Attribute not found; ID=16842801");
                        return;
                    }
                    editSectionActivity.setNavigationBarColor(typedValue2.data);
                    Window window = editSectionActivity.getWindow();
                    window.getClass();
                    HintHandler hintHandler = new HintHandler(window.getDecorView());
                    int i4 = Build.VERSION.SDK_INT;
                    (i4 >= 35 ? new WindowInsetsControllerCompat$Impl35(window, hintHandler) : i4 >= 30 ? new WindowInsetsControllerCompat$Impl30(window, hintHandler) : i4 >= 26 ? new WindowInsetsControllerCompat$Impl26(window, hintHandler) : new WindowInsetsControllerCompat$Impl23(window, hintHandler)).hide();
                    if (editSectionActivity.sectionTextModified) {
                        editSectionActivity.doExitActionWithConfirmationDialog(new WikiGames$$ExternalSyntheticLambda0(6, editSectionActivity));
                        return;
                    } else {
                        editSectionActivity.finish();
                        return;
                    }
                }
                ImageRecommendationsEvent.Companion companion2 = ImageRecommendationsEvent.Companion;
                String prefixedText2 = pageTitle != null ? pageTitle.getPrefixedText() : null;
                String str4 = prefixedText2 == null ? "" : prefixedText2;
                String str5 = stringExtra == null ? "" : stringExtra;
                String str6 = stringExtra2 == null ? "" : stringExtra2;
                String stringExtra5 = editSectionActivity.getIntent().getStringExtra("resultImageCaption");
                Boolean valueOf2 = Boolean.valueOf(!(stringExtra5 == null || stringExtra5.length() == 0));
                String stringExtra6 = editSectionActivity.getIntent().getStringExtra("resultImageAlt");
                ImageRecommendationsEvent.Companion.logAction("back", "caption_preview", ImageRecommendationsEvent.Companion.getActionDataString$default(companion2, str4, str5, str6, null, "accepted", null, valueOf2, Boolean.valueOf(!(stringExtra6 == null || stringExtra6.length() == 0)), false, 296), editSectionActivity.getViewModel().pageTitle.wikiSite.languageCode);
                EditPreviewFragment editPreviewFragment2 = editSectionActivity.editPreviewFragment;
                if (editPreviewFragment2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("editPreviewFragment");
                    throw null;
                }
                editPreviewFragment2.hide();
                ActivityLoginBinding activityLoginBinding4 = editSectionActivity.binding;
                if (activityLoginBinding4 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    throw null;
                }
                ((ScrollView) activityLoginBinding4.loginCreateAccountButton).setVisibility(0);
                ContextsKt supportActionBar2 = editSectionActivity.getSupportActionBar();
                if (supportActionBar2 != null) {
                    supportActionBar2.setTitle(null);
                }
                if (editSectionActivity.getViewModel().invokeSource == Constants.InvokeSource.EDIT_ADD_IMAGE) {
                    editSectionActivity.getViewModel().sectionWikitext = editSectionActivity.getViewModel().sectionWikitextOriginal;
                    ActivityLoginBinding activityLoginBinding5 = editSectionActivity.binding;
                    if (activityLoginBinding5 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                        throw null;
                    }
                    ((SyntaxHighlightableEditText) activityLoginBinding5.loginPrimaryContainer).setText(editSectionActivity.getViewModel().sectionWikitext);
                    editSectionActivity.startInsertImageFlow();
                    return;
                }
                return;
            case 5:
                InsertMediaActivity insertMediaActivity = (InsertMediaActivity) fragmentManager$1.this$0;
                InsertMediaSettingsFragment insertMediaSettingsFragment = insertMediaActivity.insertMediaSettingsFragment;
                if (insertMediaSettingsFragment == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("insertMediaSettingsFragment");
                    throw null;
                }
                NodeChain nodeChain2 = insertMediaSettingsFragment._binding;
                nodeChain2.getClass();
                if (((ScrollView) nodeChain2.layoutNode).getVisibility() == 0) {
                    insertMediaSettingsFragment.sendInsertMediaEvent("back");
                    insertMediaSettingsFragment.hide(true);
                    if (insertMediaActivity.insertMediaAdapter == null) {
                        insertMediaActivity.finish();
                        return;
                    }
                    FragmentPlacesBinding fragmentPlacesBinding = insertMediaActivity.binding;
                    if (fragmentPlacesBinding == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                        throw null;
                    }
                    fragmentPlacesBinding.rootView.setVisibility(0);
                    FragmentPlacesBinding fragmentPlacesBinding2 = insertMediaActivity.binding;
                    if (fragmentPlacesBinding2 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                        throw null;
                    }
                    fragmentPlacesBinding2.searchContainer.setVisibility(0);
                    ContextsKt supportActionBar3 = insertMediaActivity.getSupportActionBar();
                    if (supportActionBar3 != null) {
                        supportActionBar3.setTitle(insertMediaActivity.getString(R.string.insert_media_title));
                    }
                    insertMediaActivity.adjustRefreshViewLayoutParams(false);
                    return;
                }
                InsertMediaAdvancedSettingsFragment insertMediaAdvancedSettingsFragment = insertMediaActivity.insertMediaAdvancedSettingsFragment;
                if (insertMediaAdvancedSettingsFragment == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("insertMediaAdvancedSettingsFragment");
                    throw null;
                }
                Request.Builder builder2 = insertMediaAdvancedSettingsFragment._binding;
                builder2.getClass();
                if (((ScrollView) builder2.url).getVisibility() != 0) {
                    insertMediaActivity.finish();
                    return;
                }
                ImageRecommendationsEvent.Companion companion3 = ImageRecommendationsEvent.Companion;
                PageTitle pageTitle2 = insertMediaAdvancedSettingsFragment.getViewModel$4().selectedImage;
                String prefixedText3 = pageTitle2 != null ? pageTitle2.getPrefixedText() : null;
                ImageRecommendationsEvent.Companion.logAction("advanced_setting_back", "caption_entry", ImageRecommendationsEvent.Companion.getActionDataString$default(companion3, prefixedText3 == null ? "" : prefixedText3, insertMediaAdvancedSettingsFragment.getViewModel$4().selectedImageSource, insertMediaAdvancedSettingsFragment.getViewModel$4().selectedImageSourceProjects, null, null, null, null, null, false, 504), insertMediaAdvancedSettingsFragment.getViewModel$4().wikiSite.languageCode);
                Request.Builder builder3 = insertMediaAdvancedSettingsFragment._binding;
                builder3.getClass();
                ScrollView scrollView2 = (ScrollView) builder3.url;
                scrollView2.getClass();
                scrollView2.setVisibility(8);
                InsertMediaActivity insertMediaActivity2 = insertMediaAdvancedSettingsFragment.activity;
                if (insertMediaActivity2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("activity");
                    throw null;
                }
                insertMediaActivity2.invalidateOptionsMenu();
                InsertMediaSettingsFragment insertMediaSettingsFragment2 = insertMediaActivity.insertMediaSettingsFragment;
                if (insertMediaSettingsFragment2 != null) {
                    insertMediaSettingsFragment2.show();
                    return;
                } else {
                    Intrinsics.throwUninitializedPropertyAccessException("insertMediaSettingsFragment");
                    throw null;
                }
            case 6:
                TemplatesSearchActivity templatesSearchActivity = (TemplatesSearchActivity) fragmentManager$1.this$0;
                InsertTemplateFragment insertTemplateFragment = templatesSearchActivity.insertTemplateFragment;
                if (insertTemplateFragment == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("insertTemplateFragment");
                    throw null;
                }
                GsonBuilder gsonBuilder = insertTemplateFragment._binding;
                gsonBuilder.getClass();
                if (((ScrollView) gsonBuilder.excluder).getVisibility() != 0) {
                    templatesSearchActivity.finish();
                    return;
                }
                GsonBuilder gsonBuilder2 = insertTemplateFragment._binding;
                gsonBuilder2.getClass();
                ScrollView scrollView3 = (ScrollView) gsonBuilder2.excluder;
                scrollView3.getClass();
                scrollView3.setVisibility(8);
                TemplatesSearchActivity templatesSearchActivity2 = insertTemplateFragment.activity;
                if (templatesSearchActivity2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("activity");
                    throw null;
                }
                templatesSearchActivity2.invalidateOptionsMenu();
                if (templatesSearchActivity.templatesSearchAdapter == null) {
                    templatesSearchActivity.finish();
                    return;
                }
                GsonBuilder gsonBuilder3 = templatesSearchActivity.binding;
                if (gsonBuilder3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    throw null;
                }
                ((CabSearchView) gsonBuilder3.fieldNamingPolicy).setVisibility(0);
                GsonBuilder gsonBuilder4 = templatesSearchActivity.binding;
                if (gsonBuilder4 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    throw null;
                }
                ((TextView) gsonBuilder4.longSerializationPolicy).setVisibility(8);
                ContextsKt supportActionBar4 = templatesSearchActivity.getSupportActionBar();
                if (supportActionBar4 != null) {
                    supportActionBar4.setTitle(null);
                }
                templatesSearchActivity.updateToolbarElevation$1(true);
                return;
            case 7:
                OnThisDayGameActivity onThisDayGameActivity = (OnThisDayGameActivity) fragmentManager$1.this$0;
                int i5 = OnThisDayGameActivity.$r8$clinit;
                WikiGamesEvent.submit$default(984, Boolean.valueOf(onThisDayGameActivity.getViewModel().isArchiveGame), null, "exit_click", "game_play", onThisDayGameActivity.getViewModel().getCurrentScreenName(), null, null);
                if (onThisDayGameActivity.getViewModel().invokeSource != Constants.InvokeSource.NOTIFICATION) {
                    onThisDayGameActivity.finish();
                    return;
                } else {
                    onThisDayGameActivity.startActivity(new Intent(onThisDayGameActivity, (Class<?>) MainActivity.class).addFlags(67108864).putExtra("returnToMain", true).putExtra("goToMainTab", NavTab.HOME.ordinal()));
                    onThisDayGameActivity.finish();
                    return;
                }
            case 8:
                PageActivity pageActivity = (PageActivity) fragmentManager$1.this$0;
                int i6 = PageActivity.$r8$clinit;
                if (!pageActivity.currentActionModes.isEmpty()) {
                    pageActivity.onPageCloseActionMode();
                    return;
                }
                WikipediaApp wikipediaApp = pageActivity.app;
                if (wikipediaApp == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("app");
                    throw null;
                }
                AppSessionEvent appSessionEvent = wikipediaApp.getAppSessionEvent();
                appSessionEvent.touchSession();
                appSessionEvent.sessionData.pagesFromBack++;
                PageFragment pageFragment = pageActivity.pageFragment;
                if (pageFragment == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("pageFragment");
                    throw null;
                }
                if (pageFragment.onBackPressed()) {
                    return;
                }
                if (pageActivity.getResources().getConfiguration().orientation != 2 && pageActivity.hasTransitionAnimation) {
                    ((WikiArticleCardView) pageActivity.getBinding().wikiArticleCardView).setVisibility(0);
                    ((FragmentContainerView) pageActivity.getBinding().pageFragment).setVisibility(8);
                } else {
                    ((WikiArticleCardView) pageActivity.getBinding().wikiArticleCardView).setVisibility(8);
                }
                fragmentManager$1.setEnabled(false);
                pageActivity.getOnBackPressedDispatcher().onBackPressed();
                return;
            case 9:
                EditHistoryListActivity editHistoryListActivity = (EditHistoryListActivity) fragmentManager$1.this$0;
                int i7 = EditHistoryListActivity.$r8$clinit;
                if (!editHistoryListActivity.getViewModel().comparing) {
                    editHistoryListActivity.finish();
                    return;
                }
                EditHistoryListViewModel viewModel = editHistoryListActivity.getViewModel();
                boolean z = viewModel.comparing;
                viewModel.comparing = !z;
                if (z) {
                    viewModel.selectedRevisionFrom = null;
                    viewModel.selectedRevisionTo = null;
                }
                editHistoryListActivity.updateCompareState();
                return;
            case 10:
                ReadingListActivity readingListActivity = (ReadingListActivity) fragmentManager$1.this$0;
                if (readingListActivity.readingListMode == ReadingListMode.DEFAULT) {
                    ReadingList readingList = ((ReadingListFragment) readingListActivity.getFragment()).readingList;
                    EventPlatformClient eventPlatformClient = EventPlatformClient.INSTANCE;
                    String readableScreenName = WikiGamesEvent.getReadableScreenName(readingListActivity, null);
                    if (readingList != null && (arrayList = readingList.pages) != null) {
                        r11 = arrayList.size();
                    }
                    EventPlatformClient.submit(new BreadCrumbLogEvent(readableScreenName, Animation.CC.m(r11, "ReadingList.ListItemCount:", ".receive_cancel")));
                }
                WikipediaApp wikipediaApp2 = WikipediaApp.instance;
                if (!Jsoup.getInstance().activityLifecycleHandler.haveMainActivity) {
                    int i8 = MainActivity.$r8$clinit;
                    readingListActivity.startActivity(UriUtil.newIntent(readingListActivity).addFlags(67108864).putExtra("returnToMain", true).putExtra("goToMainTab", NavTab.READING_LISTS.ordinal()));
                }
                readingListActivity.finish();
                return;
            case 11:
                SearchActivity searchActivity = (SearchActivity) fragmentManager$1.this$0;
                SVGAndroidRenderer instrument = ContextKt.getInstrument(searchActivity);
                if (instrument != null) {
                    SVGAndroidRenderer.submitInteraction$default(instrument, "click", null, null, "search_back", null, null, 246);
                }
                fragmentManager$1.setEnabled(false);
                searchActivity.getOnBackPressedDispatcher().onBackPressed();
                return;
            default:
                TalkReplyActivity talkReplyActivity = (TalkReplyActivity) fragmentManager$1.this$0;
                talkReplyActivity.setResult(2);
                talkReplyActivity.sendPatrollerExperienceEvent$2("publish_back", "");
                EditPreviewFragment editPreviewFragment3 = talkReplyActivity.messagePreviewFragment;
                if (editPreviewFragment3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("messagePreviewFragment");
                    throw null;
                }
                if (!editPreviewFragment3.isActive()) {
                    if (!talkReplyActivity.subjectOrBodyModified) {
                        talkReplyActivity.finish();
                        return;
                    }
                    MaterialAlertDialogBuilder materialAlertDialogBuilder = new MaterialAlertDialogBuilder(talkReplyActivity, 0);
                    ((AlertController.AlertParams) materialAlertDialogBuilder.array).mCancelable = false;
                    materialAlertDialogBuilder.setTitle(R.string.talk_new_topic_exit_dialog_title);
                    materialAlertDialogBuilder.setMessage(R.string.talk_new_topic_exit_dialog_message);
                    materialAlertDialogBuilder.setPositiveButton(R.string.edit_abandon_confirm_yes, new TalkReplyActivity$$ExternalSyntheticLambda15(talkReplyActivity, i2));
                    materialAlertDialogBuilder.setNegativeButton(R.string.edit_abandon_confirm_no, new TalkReplyActivity$$ExternalSyntheticLambda15(talkReplyActivity, i));
                    materialAlertDialogBuilder.show();
                    return;
                }
                talkReplyActivity.showProgressBar$1(false);
                ActivityTalkReplyBinding activityTalkReplyBinding = talkReplyActivity.binding;
                if (activityTalkReplyBinding == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    throw null;
                }
                ((ScrollView) activityTalkReplyBinding.talkScrollContainer).setVisibility(0);
                EditPreviewFragment editPreviewFragment4 = talkReplyActivity.messagePreviewFragment;
                if (editPreviewFragment4 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("messagePreviewFragment");
                    throw null;
                }
                editPreviewFragment4.hide();
                talkReplyActivity.setSaveButtonEnabled(true);
                ActivityTalkReplyBinding activityTalkReplyBinding2 = talkReplyActivity.binding;
                if (activityTalkReplyBinding2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    throw null;
                }
                activityTalkReplyBinding2.replyNextButton.setText(talkReplyActivity.getString(R.string.edit_next));
                talkReplyActivity.setToolbarTitle$2(talkReplyActivity.getViewModel().pageTitle);
                return;
        }
    }

    @Override // androidx.navigationevent.NavigationEventHandler
    public final void onBackProgressed(NavigationEvent navigationEvent) {
        BackEventCompat backEventCompat = new BackEventCompat(navigationEvent);
        FragmentManager$1 fragmentManager$1 = this.onBackPressedCallback;
        switch (fragmentManager$1.$r8$classId) {
            case 0:
                FragmentManagerImpl fragmentManagerImpl = (FragmentManagerImpl) fragmentManager$1.this$0;
                if (FragmentManagerImpl.isLoggingEnabled(2)) {
                    Log.v("FragmentManager", "handleOnBackProgressed. PREDICTIVE_BACK = true fragment manager " + fragmentManagerImpl);
                }
                if (fragmentManagerImpl.mTransitioningOp != null) {
                    Iterator it = fragmentManagerImpl.collectChangedControllers(new ArrayList(Collections.singletonList(fragmentManagerImpl.mTransitioningOp)), 0, 1).iterator();
                    while (it.hasNext()) {
                        DefaultSpecialEffectsController defaultSpecialEffectsController = (DefaultSpecialEffectsController) it.next();
                        defaultSpecialEffectsController.getClass();
                        if (FragmentManagerImpl.isLoggingEnabled(2)) {
                            Log.v("FragmentManager", "SpecialEffectsController: Processing Progress " + backEventCompat.progress);
                        }
                        ArrayList arrayList = defaultSpecialEffectsController.runningOperations;
                        ArrayList arrayList2 = new ArrayList();
                        Iterator it2 = arrayList.iterator();
                        while (it2.hasNext()) {
                            CollectionsKt.addAll(arrayList2, ((SpecialEffectsController$FragmentStateManagerOperation) it2.next()).effects);
                        }
                        List list = CollectionsKt.toList(CollectionsKt.toSet(arrayList2));
                        int size = list.size();
                        for (int i = 0; i < size; i++) {
                            ((SpecialEffectsController$Effect) list.get(i)).onProgress(backEventCompat, defaultSpecialEffectsController.container);
                        }
                    }
                    Iterator it3 = fragmentManagerImpl.mBackStackChangeListeners.iterator();
                    if (it3.hasNext()) {
                        throw Modifier.CC.m(it3);
                    }
                    return;
                }
                return;
            case 1:
            default:
                return;
            case 2:
                ((BaseMenuWrapper) fragmentManager$1.this$0).onBackProgressed(backEventCompat);
                return;
        }
    }

    @Override // androidx.navigationevent.NavigationEventHandler
    public final void onBackStarted(NavigationEvent navigationEvent) {
        navigationEvent.getClass();
        new BackEventCompat(navigationEvent);
        FragmentManager$1 fragmentManager$1 = this.onBackPressedCallback;
        switch (fragmentManager$1.$r8$classId) {
            case 0:
                final FragmentManagerImpl fragmentManagerImpl = (FragmentManagerImpl) fragmentManager$1.this$0;
                if (FragmentManagerImpl.isLoggingEnabled(3)) {
                    Log.d("FragmentManager", "handleOnBackStarted. PREDICTIVE_BACK = true fragment manager " + fragmentManagerImpl);
                }
                fragmentManagerImpl.endAnimatingAwayFragments();
                fragmentManagerImpl.enqueueAction(new FragmentManager$OpGenerator() { // from class: androidx.fragment.app.FragmentManager$PrepareBackStackTransitionState
                    @Override // androidx.fragment.app.FragmentManager$OpGenerator
                    public final boolean generateOps(ArrayList arrayList, ArrayList arrayList2) {
                        boolean popBackStackState;
                        FragmentManagerImpl fragmentManagerImpl2 = FragmentManagerImpl.this;
                        ArrayList arrayList3 = fragmentManagerImpl2.mBackStackChangeListeners;
                        if (FragmentManagerImpl.isLoggingEnabled(2)) {
                            Log.v("FragmentManager", "FragmentManager has the following pending actions inside of prepareBackStackState: " + fragmentManagerImpl2.mPendingActions);
                        }
                        if (fragmentManagerImpl2.mBackStack.isEmpty()) {
                            Log.i("FragmentManager", "Ignoring call to start back stack pop because the back stack is empty.");
                            popBackStackState = false;
                        } else {
                            BackStackRecord backStackRecord = (BackStackRecord) Animation.CC.m(1, fragmentManagerImpl2.mBackStack);
                            fragmentManagerImpl2.mTransitioningOp = backStackRecord;
                            Iterator it = backStackRecord.mOps.iterator();
                            while (it.hasNext()) {
                                Fragment fragment = ((FragmentTransaction$Op) it.next()).mFragment;
                                if (fragment != null) {
                                    fragment.mTransitioning = true;
                                }
                            }
                            popBackStackState = fragmentManagerImpl2.popBackStackState(arrayList, arrayList2, -1, 0);
                        }
                        if (!arrayList3.isEmpty() && arrayList.size() > 0) {
                            ((Boolean) arrayList2.get(arrayList.size() - 1)).getClass();
                            LinkedHashSet linkedHashSet = new LinkedHashSet();
                            Iterator it2 = arrayList.iterator();
                            while (it2.hasNext()) {
                                linkedHashSet.addAll(FragmentManagerImpl.fragmentsFromRecord((BackStackRecord) it2.next()));
                            }
                            Iterator it3 = arrayList3.iterator();
                            while (it3.hasNext()) {
                                if (it3.next() != null) {
                                    ContextsKt$$ExternalSyntheticBUOutline0.m$1();
                                    return false;
                                }
                                Iterator it4 = linkedHashSet.iterator();
                                if (it4.hasNext()) {
                                    throw null;
                                }
                            }
                        }
                        return popBackStackState;
                    }
                }, false);
                break;
            case 2:
                ((BaseMenuWrapper) fragmentManager$1.this$0).onBackStarted();
                break;
        }
    }

    public final void setLifecycleActive(boolean z) {
        this.isLifecycleActive = z;
        setBackEnabled(z && this.onBackPressedCallback.isEnabled);
    }
}
