package org.wikipedia.feed;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.net.Uri;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.activity.result.ActivityResultRegistry$register$2;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuPopupHelper;
import androidx.compose.ui.node.NodeChain;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.ViewModelKt;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.Room;
import coil3.size.ViewSizeResolver$CC;
import com.caverock.androidsvg.SVGAndroidRenderer;
import com.google.android.material.imageview.ShapeableImageView;
import com.google.android.material.snackbar.Snackbar;
import com.google.android.material.textfield.MaterialAutoCompleteTextView;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import kotlin.collections.EmptyList;
import kotlin.collections.EmptySet;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.flow.StateFlowImpl;
import okhttp3.Cache;
import okhttp3.Cookie;
import okhttp3.Headers;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.Okio__JvmOkioKt;
import okio.Okio__OkioKt;
import okio.Path;
import okio.internal.DefaultSocket;
import org.jsoup.Jsoup;
import org.wikipedia.Constants;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.activity.BaseActivity;
import org.wikipedia.analytics.eventplatform.AppInteractionEvent;
import org.wikipedia.analytics.eventplatform.EventPlatformClient;
import org.wikipedia.analytics.eventplatform.WikiGamesEvent;
import org.wikipedia.commons.FilePageFragment;
import org.wikipedia.commons.FilePageView;
import org.wikipedia.dataclient.mwapi.MwQueryPage;
import org.wikipedia.dataclient.page.PageSummary;
import org.wikipedia.descriptions.DescriptionEditActivity;
import org.wikipedia.descriptions.DescriptionEditView;
import org.wikipedia.diff.ArticleEditDetailsFragment;
import org.wikipedia.edit.summaries.EditSummaryFragment;
import org.wikipedia.edit.templates.InsertTemplateFragment;
import org.wikipedia.edit.templates.TemplatesSearchActivity;
import org.wikipedia.edit.templates.TemplatesSearchViewModel;
import org.wikipedia.feed.model.Card;
import org.wikipedia.feed.model.ForYouCard;
import org.wikipedia.feed.view.ListItemView;
import org.wikipedia.games.GamesHubFragment;
import org.wikipedia.games.onthisday.OnThisDayGameResultFragment;
import org.wikipedia.history.HistoryEntry;
import org.wikipedia.history.HistoryFragment;
import org.wikipedia.history.HistoryViewModel;
import org.wikipedia.login.LoginClient$login$$inlined$CoroutineExceptionHandler$1;
import org.wikipedia.main.MainActivity$$ExternalSyntheticLambda1;
import org.wikipedia.page.PageActionTabLayout;
import org.wikipedia.page.PageActivity$onCreate$1$1$1;
import org.wikipedia.page.PageTitle;
import org.wikipedia.page.action.PageActionItem;
import org.wikipedia.page.campaign.CampaignDialog;
import org.wikipedia.page.campaign.CampaignDialogView;
import org.wikipedia.page.customize.CustomizeToolbarActivity;
import org.wikipedia.page.shareafact.ShareHandler;
import org.wikipedia.page.tabs.TabActivity;
import org.wikipedia.places.PlacesFilterActivity;
import org.wikipedia.readinglist.LongPressMenu;
import org.wikipedia.readinglist.ReadingListItemView;
import org.wikipedia.readinglist.ReadingListMode;
import org.wikipedia.readinglist.database.ReadingList;
import org.wikipedia.readinglist.recommended.RecommendedReadingListInterestsFragment;
import org.wikipedia.readinglist.recommended.RecommendedReadingListInterestsViewModel;
import org.wikipedia.settings.AppIconDialog;
import org.wikipedia.settings.LauncherIcon;
import org.wikipedia.settings.Prefs;
import org.wikipedia.settings.PrefsIoUtil;
import org.wikipedia.settings.languages.WikipediaLanguagesActivity;
import org.wikipedia.suggestededits.PageSummaryForEdit;
import org.wikipedia.suggestededits.SuggestedEditsImageTagEditActivity;
import org.wikipedia.suggestededits.SuggestionsActivity;
import org.wikipedia.talk.TalkThreadItemView;
import org.wikipedia.talk.TalkTopicsActivity;
import org.wikipedia.talk.TalkTopicsActivity$HeaderViewHolder$$ExternalSyntheticLambda2;
import org.wikipedia.util.Resource;
import org.wikipedia.util.TabUtil;
import org.wikipedia.util.UriUtil;
import org.wikipedia.views.AutoFitRecyclerView;
import org.wikipedia.views.ConfigurableTabLayout$DisabledTag;
import org.wikipedia.views.PageActionOverflowView;
import org.wikipedia.views.TabCountsView;
import org.wikipedia.views.TalkTopicsSortOverflowView;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class HomeFragment$$ExternalSyntheticLambda8 implements View.OnClickListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;

    public /* synthetic */ HomeFragment$$ExternalSyntheticLambda8(int i, Object obj, Object obj2) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = obj2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i;
        PageTitle pageTitle;
        ListItemView.Callback callback;
        int i2 = this.$r8$classId;
        final int i3 = 2;
        final int i4 = 0;
        final int i5 = 1;
        Object[] objArr = 0;
        Object[] objArr2 = 0;
        Object[] objArr3 = 0;
        Object[] objArr4 = 0;
        Object[] objArr5 = 0;
        Object obj = this.f$1;
        Object obj2 = this.f$0;
        switch (i2) {
            case 0:
                HomeFragment homeFragment = (HomeFragment) obj2;
                Card card = (Card) obj;
                SVGAndroidRenderer.submitInteraction$default(homeFragment.instrument, "click", card.getClass().getSimpleName(), "feed_overflow", "undo_card_hide", null, null, 240);
                AwaitKt.launch$default(ViewModelKt.getViewModelScope(homeFragment.getViewModel()), null, null, new HomeViewModel$hideCommunityCard$1(card, objArr == true ? 1 : 0, i5), 3);
                return;
            case 1:
                ((View.OnClickListener) obj).onClick(view);
                ((Snackbar) obj2).dispatchDismiss(1);
                return;
            case 2:
                int i6 = FilePageView.$r8$clinit;
                Context context = ((FilePageView) obj2).getContext();
                context.getClass();
                Uri parse = Uri.parse(UriUtil.resolveProtocolRelativeUrl((String) obj));
                parse.getClass();
                UriUtil.visitInExternalBrowser(context, parse);
                return;
            case 3:
                FilePageFragment filePageFragment = (FilePageFragment) obj2;
                PageSummaryForEdit pageSummaryForEdit = (PageSummaryForEdit) obj;
                int i7 = FilePageView.$r8$clinit;
                if (filePageFragment != null) {
                    pageSummaryForEdit.getClass();
                    PageSummaryForEdit pageSummaryForEdit2 = filePageFragment.getViewModel().pageSummaryForEdit;
                    if (pageSummaryForEdit2 != null) {
                        Fragment.AnonymousClass10 anonymousClass10 = filePageFragment.addImageCaptionLauncher;
                        int i8 = DescriptionEditActivity.$r8$clinit;
                        anonymousClass10.launch(UriUtil.newIntent(filePageFragment.requireContext(), pageSummaryForEdit2.pageTitle, pageSummaryForEdit, null, DescriptionEditActivity.Action.ADD_CAPTION, Constants.InvokeSource.FILE_PAGE_ACTIVITY), null);
                        return;
                    }
                    return;
                }
                return;
            case 4:
                FilePageFragment filePageFragment2 = (FilePageFragment) obj2;
                MwQueryPage mwQueryPage = (MwQueryPage) obj;
                int i9 = FilePageView.$r8$clinit;
                if (filePageFragment2 != null) {
                    mwQueryPage.getClass();
                    Fragment.AnonymousClass10 anonymousClass102 = filePageFragment2.addImageTagsLauncher;
                    int i10 = SuggestedEditsImageTagEditActivity.$r8$clinit;
                    anonymousClass102.launch(TabUtil.newIntent(filePageFragment2.requireContext(), mwQueryPage, Constants.InvokeSource.FILE_PAGE_ACTIVITY), null);
                    return;
                }
                return;
            case 5:
                Context context2 = (Context) obj2;
                DescriptionEditView descriptionEditView = (DescriptionEditView) obj;
                int i11 = DescriptionEditView.$r8$clinit;
                WikipediaApp wikipediaApp = WikipediaApp.instance;
                WikipediaApp jsoup = Jsoup.getInstance();
                DescriptionEditActivity.Action action = descriptionEditView.action;
                if (action == DescriptionEditActivity.Action.ADD_DESCRIPTION || action == DescriptionEditActivity.Action.TRANSLATE_DESCRIPTION) {
                    PageTitle pageTitle2 = descriptionEditView.pageTitle;
                    if (pageTitle2 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("pageTitle");
                        throw null;
                    }
                    i = Intrinsics.areEqual(pageTitle2.wikiSite.languageCode, "en") ? R.string.short_description_help_url_en : R.string.description_edit_description_learn_more_url;
                } else {
                    i = R.string.description_edit_image_caption_learn_more_url;
                }
                String string = jsoup.getString(i);
                string.getClass();
                Uri parse2 = Uri.parse(string);
                parse2.getClass();
                UriUtil.visitInExternalBrowser(context2, parse2);
                return;
            case 6:
                ArticleEditDetailsFragment articleEditDetailsFragment = (ArticleEditDetailsFragment) obj2;
                PageTitle pageTitle3 = (PageTitle) obj;
                if (articleEditDetailsFragment.isAdded()) {
                    EventPlatformClient eventPlatformClient = EventPlatformClient.INSTANCE;
                    WikipediaApp wikipediaApp2 = WikipediaApp.instance;
                    String m = ViewSizeResolver$CC.m();
                    Prefs prefs = Prefs.INSTANCE;
                    EventPlatformClient.submit(new AppInteractionEvent("publish_message_view_click", "pt_warning_messages", "", m, Prefs.getRecentEditsWikiCode(), "app_patroller_experience"));
                    int i12 = TalkTopicsActivity.$r8$clinit;
                    articleEditDetailsFragment.startActivity(Headers.Companion.newIntent(articleEditDetailsFragment.requireContext(), pageTitle3, Constants.InvokeSource.DIFF_ACTIVITY), null);
                    return;
                }
                return;
            case 7:
                EditSummaryFragment editSummaryFragment = (EditSummaryFragment) obj2;
                String str = (String) obj;
                NodeChain nodeChain = editSummaryFragment._binding;
                nodeChain.getClass();
                ((MaterialAutoCompleteTextView) nodeChain.innerCoordinator).setText(str);
                NodeChain nodeChain2 = editSummaryFragment._binding;
                nodeChain2.getClass();
                ((MaterialAutoCompleteTextView) nodeChain2.innerCoordinator).setSelection(str.length());
                return;
            case 8:
                InsertTemplateFragment insertTemplateFragment = (InsertTemplateFragment) obj2;
                PageTitle pageTitle4 = (PageTitle) obj;
                TemplatesSearchActivity templatesSearchActivity = insertTemplateFragment.activity;
                if (templatesSearchActivity == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("activity");
                    throw null;
                }
                TemplatesSearchActivity.sendPatrollerExperienceEvent$default(templatesSearchActivity, "learn_click");
                Context requireContext = insertTemplateFragment.requireContext();
                Uri parse3 = Uri.parse(pageTitle4.getUri());
                parse3.getClass();
                UriUtil.visitInExternalBrowser(requireContext, parse3);
                return;
            case 9:
                TemplatesSearchActivity templatesSearchActivity2 = (TemplatesSearchActivity) obj2;
                PageTitle pageTitle5 = (PageTitle) obj;
                TemplatesSearchViewModel viewModel = templatesSearchActivity2.getViewModel();
                AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel), new LoginClient$login$$inlined$CoroutineExceptionHandler$1(viewModel), null, new PageActivity$onCreate$1$1$1(pageTitle5, viewModel, objArr2 == true ? 1 : 0, 9), 2);
                templatesSearchActivity2.getViewModel().selectedPageTitle = pageTitle5;
                return;
            case 10:
                HomeFragment homeFragment2 = (HomeFragment) obj2;
                String str2 = (String) obj;
                SVGAndroidRenderer.submitInteraction$default(homeFragment2.instrument, "click", str2, "feed_overflow", "undo_module_hide", null, null, 240);
                AwaitKt.launch$default(ViewModelKt.getViewModelScope(homeFragment2.getViewModel()), null, null, new HomeViewModel$hideModule$1(str2, i5, objArr3 == true ? 1 : 0), 3);
                return;
            case 11:
                HomeFragment homeFragment3 = (HomeFragment) obj2;
                ForYouCard forYouCard = (ForYouCard) obj;
                SVGAndroidRenderer.submitInteraction$default(homeFragment3.instrument, "click", forYouCard.getClass().getSimpleName(), "feed_overflow", "undo_card_hide", null, null, 240);
                AwaitKt.launch$default(ViewModelKt.getViewModelScope(homeFragment3.getViewModel()), null, null, new HomeViewModel$hideForYouCard$1(forYouCard, objArr4 == true ? 1 : 0, i5), 3);
                return;
            case 12:
                ListItemView listItemView = (ListItemView) obj2;
                Context context3 = (Context) obj;
                HistoryEntry historyEntry = listItemView.historyEntry;
                if (historyEntry == null || (pageTitle = listItemView.title) == null || (callback = listItemView.callback) == null) {
                    return;
                }
                callback.onSelectPage(pageTitle, historyEntry, Cookie.Companion.getSharedElements(context3, (ShapeableImageView) listItemView.binding.boundary));
                return;
            case IMAGE_VALUE:
                String string2 = ((GamesHubFragment) obj).getString(R.string.on_this_day_game_wiki_languages_url);
                string2.getClass();
                Uri parse4 = Uri.parse(string2);
                parse4.getClass();
                UriUtil.visitInExternalBrowser((AppCompatActivity) obj2, parse4);
                return;
            case LINEAR_PROGRESS_INDICATOR_VALUE:
                PageSummary pageSummary = (PageSummary) obj2;
                OnThisDayGameResultFragment onThisDayGameResultFragment = (OnThisDayGameResultFragment) obj;
                PageTitle pageTitle6 = pageSummary.getPageTitle(onThisDayGameResultFragment.getViewModel$3().wikiSite);
                view.getClass();
                new LongPressMenu(view, R.menu.menu_long_press, null, new ShareHandler(onThisDayGameResultFragment, pageSummary, pageTitle6, i5), 22).show(new HistoryEntry(24, pageTitle6));
                return;
            case 15:
                HistoryViewModel viewModel2 = ((HistoryFragment) obj2).getViewModel();
                AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel2), viewModel2.handler, null, new PageActivity$onCreate$1$1$1((List) obj, viewModel2, objArr5 == true ? 1 : 0, 16), 2);
                return;
            case LAZY_VERTICAL_GRID_VALUE:
                PageActionTabLayout pageActionTabLayout = (PageActionTabLayout) obj2;
                PageActionItem pageActionItem = (PageActionItem) obj;
                int i13 = PageActionTabLayout.$r8$clinit;
                view.getClass();
                if (view.getTag() == null || !(view.getTag() instanceof ConfigurableTabLayout$DisabledTag)) {
                    pageActionItem.select(pageActionTabLayout.getCallback());
                    return;
                }
                return;
            case VERTICAL_GRID_ITEM_VALUE:
                String str3 = (String) obj;
                CampaignDialogView.Callback callback2 = ((CampaignDialogView) obj2).callback;
                if (callback2 != null) {
                    CampaignDialog campaignDialog = (CampaignDialog) callback2;
                    str3.getClass();
                    Cache.Companion.logAction$default(4, "donate_start_click", "article_banner", null, campaignDialog.campaignId);
                    Prefs prefs2 = Prefs.INSTANCE;
                    String string3 = PrefsIoUtil.getString(R.string.preference_key_announcement_custom_tab_test_url, null);
                    if (string3 == null) {
                        string3 = "";
                    }
                    if (string3.length() != 0) {
                        str3 = string3;
                    }
                    AppCompatActivity appCompatActivity = campaignDialog.context;
                    if (appCompatActivity instanceof BaseActivity) {
                        Okio__OkioKt.show(((BaseActivity) appCompatActivity).getSupportFragmentManager(), Path.Companion.newInstance$default(12, campaignDialog.campaignIdOriginal, str3));
                        campaignDialog.dismissDialog(false);
                        return;
                    } else {
                        Okio__JvmOkioKt.openInCustomTab(appCompatActivity, str3);
                        campaignDialog.dismissDialog(true);
                        return;
                    }
                }
                return;
            case RADIO_GROUP_VALUE:
                TabActivity tabActivity = (TabActivity) obj2;
                ArrayList arrayList = (ArrayList) obj;
                WikipediaApp wikipediaApp3 = tabActivity.app;
                wikipediaApp3.tabList.addAll(arrayList);
                arrayList.clear();
                DefaultSocket defaultSocket = tabActivity.binding;
                if (defaultSocket == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    throw null;
                }
                RecyclerView.Adapter adapter = ((AutoFitRecyclerView) defaultSocket.source).getAdapter();
                if (adapter != null) {
                    adapter.notifyItemRangeInserted(0, wikipediaApp3.tabList.size());
                }
                DefaultSocket defaultSocket2 = tabActivity.binding;
                if (defaultSocket2 != null) {
                    ((TabCountsView) defaultSocket2.closeBits).updateTabCount(false);
                    return;
                } else {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    throw null;
                }
            case RADIO_BUTTON_VALUE:
                ActivityResultRegistry$register$2 activityResultRegistry$register$2 = ((PlacesFilterActivity) obj2).addLanguageLauncher;
                int i14 = WikipediaLanguagesActivity.$r8$clinit;
                Context context4 = ((PlacesFilterActivity.PlacesFilterFooterViewHolder) obj).itemView.getContext();
                context4.getClass();
                activityResultRegistry$register$2.launch(Cache.Companion.newIntent(context4, Constants.InvokeSource.PLACES), null);
                return;
            case RADIO_ROW_VALUE:
                String str4 = (String) obj2;
                PlacesFilterActivity.PlacesFilterItemViewHolder placesFilterItemViewHolder = (PlacesFilterActivity.PlacesFilterItemViewHolder) obj;
                Prefs prefs3 = Prefs.INSTANCE;
                if (!str4.equals(Prefs.getPlacesWikiCode())) {
                    EventPlatformClient eventPlatformClient2 = EventPlatformClient.INSTANCE;
                    WikipediaApp wikipediaApp4 = WikipediaApp.instance;
                    EventPlatformClient.submit(new AppInteractionEvent("filter_change_save", "filter_view", "", ViewSizeResolver$CC.m(), Prefs.getPlacesWikiCode(), "app_places_interaction"));
                }
                PrefsIoUtil.setString(R.string.preference_key_places_wiki_code, str4);
                placesFilterItemViewHolder.callback.notifyDataSetChanged();
                return;
            case RADIO_COLUMN_VALUE:
                ReadingListItemView readingListItemView = (ReadingListItemView) obj2;
                ReadingListMode readingListMode = (ReadingListMode) obj;
                WikiGamesEvent.submit$default("menu_click", "rrl_discover", null, null, null, null, null, null, 508);
                ReadingList readingList = readingListItemView.readingList;
                if (readingList != null) {
                    readingListItemView.showOverflowMenu(false, readingList, readingListMode, (ImageView) readingListItemView.binding.pageFragment, 7);
                    return;
                }
                return;
            case SIZE_BOX_VALUE:
                ((AppCompatActivity) obj2).startActivity((Intent) obj);
                return;
            case 23:
                RecommendedReadingListInterestsViewModel.UiState uiState = (RecommendedReadingListInterestsViewModel.UiState) obj;
                RecommendedReadingListInterestsViewModel viewModel3 = ((RecommendedReadingListInterestsFragment) obj2).getViewModel();
                List list = uiState.prevItems;
                Set set = uiState.prevSelectedItems;
                list.getClass();
                set.getClass();
                StateFlowImpl stateFlowImpl = viewModel3._uiState;
                Object value = stateFlowImpl.getValue();
                Resource.Success success = value instanceof Resource.Success ? (Resource.Success) value : null;
                if (success != null) {
                    stateFlowImpl.updateState(null, new Resource.Success(new RecommendedReadingListInterestsViewModel.UiState(((RecommendedReadingListInterestsViewModel.UiState) success.data).fromSettings, list, set, false, EmptyList.INSTANCE, EmptySet.INSTANCE)));
                    return;
                }
                return;
            case 24:
                LauncherIcon launcherIcon = (LauncherIcon) obj;
                MainActivity$$ExternalSyntheticLambda1 mainActivity$$ExternalSyntheticLambda1 = (MainActivity$$ExternalSyntheticLambda1) ((AppIconDialog.AppIconAdapter) obj2).onItemClickListener;
                if (mainActivity$$ExternalSyntheticLambda1 != null) {
                    mainActivity$$ExternalSyntheticLambda1.invoke(launcherIcon);
                    return;
                }
                return;
            case 25:
                Activity activity = (Activity) obj2;
                int i15 = SuggestionsActivity.$r8$clinit;
                activity.startActivity(Cookie.Companion.newIntent(activity, (DescriptionEditActivity.Action) obj));
                return;
            case 26:
                Context context5 = (Context) obj2;
                TalkThreadItemView talkThreadItemView = (TalkThreadItemView) obj;
                int i16 = TalkThreadItemView.$r8$clinit;
                Activity activity2 = context5 instanceof Activity ? (Activity) context5 : null;
                if (activity2 != null) {
                    MenuBuilder menuBuilder = new MenuBuilder(activity2);
                    activity2.getMenuInflater().inflate(R.menu.menu_talk_thread_item, menuBuilder);
                    menuBuilder.mCallback = talkThreadItemView.overflowMenuListener;
                    MenuPopupHelper menuPopupHelper = new MenuPopupHelper(activity2, menuBuilder, (ImageView) talkThreadItemView.binding.pageToolbarButtonShowOverflowMenu);
                    menuPopupHelper.setForceShowIcon(true);
                    menuPopupHelper.mDropDownGravity = 8388613;
                    menuPopupHelper.show();
                    return;
                }
                return;
            case 27:
                TalkTopicsActivity talkTopicsActivity = (TalkTopicsActivity) obj2;
                TalkTopicsActivity.HeaderViewHolder headerViewHolder = (TalkTopicsActivity.HeaderViewHolder) obj;
                final TalkTopicsSortOverflowView talkTopicsSortOverflowView = new TalkTopicsSortOverflowView(talkTopicsActivity);
                View inflate = LayoutInflater.from(talkTopicsActivity).inflate(R.layout.view_talk_topics_sort_overflow, (ViewGroup) talkTopicsSortOverflowView, false);
                talkTopicsSortOverflowView.addView(inflate);
                int i17 = R.id.sortByDatePublished;
                if (((TextView) Room.findChildViewById(inflate, R.id.sortByDatePublished)) != null) {
                    i17 = R.id.sortByDatePublishedButton;
                    LinearLayout linearLayout = (LinearLayout) Room.findChildViewById(inflate, R.id.sortByDatePublishedButton);
                    if (linearLayout != null) {
                        i17 = R.id.sortByDatePublishedOrder;
                        ImageView imageView = (ImageView) Room.findChildViewById(inflate, R.id.sortByDatePublishedOrder);
                        if (imageView != null) {
                            i17 = R.id.sortByDatePublishedSelected;
                            ImageView imageView2 = (ImageView) Room.findChildViewById(inflate, R.id.sortByDatePublishedSelected);
                            if (imageView2 != null) {
                                i17 = R.id.sortByDateUpdated;
                                if (((TextView) Room.findChildViewById(inflate, R.id.sortByDateUpdated)) != null) {
                                    i17 = R.id.sortByDateUpdatedButton;
                                    LinearLayout linearLayout2 = (LinearLayout) Room.findChildViewById(inflate, R.id.sortByDateUpdatedButton);
                                    if (linearLayout2 != null) {
                                        i17 = R.id.sortByDateUpdatedOrder;
                                        ImageView imageView3 = (ImageView) Room.findChildViewById(inflate, R.id.sortByDateUpdatedOrder);
                                        if (imageView3 != null) {
                                            ImageView imageView4 = (ImageView) Room.findChildViewById(inflate, R.id.sortByDateUpdatedSelected);
                                            if (imageView4 == null) {
                                                i17 = R.id.sortByDateUpdatedSelected;
                                            } else if (((TextView) Room.findChildViewById(inflate, R.id.sortByTopicName)) != null) {
                                                LinearLayout linearLayout3 = (LinearLayout) Room.findChildViewById(inflate, R.id.sortByTopicNameButton);
                                                if (linearLayout3 != null) {
                                                    ImageView imageView5 = (ImageView) Room.findChildViewById(inflate, R.id.sortByTopicNameOrder);
                                                    if (imageView5 != null) {
                                                        ImageView imageView6 = (ImageView) Room.findChildViewById(inflate, R.id.sortByTopicNameSelected);
                                                        if (imageView6 != null) {
                                                            linearLayout.setOnClickListener(new View.OnClickListener() { // from class: org.wikipedia.views.TalkTopicsSortOverflowView$$ExternalSyntheticLambda0
                                                                @Override // android.view.View.OnClickListener
                                                                public final void onClick(View view2) {
                                                                    int i18;
                                                                    int i19 = i4;
                                                                    TalkTopicsSortOverflowView talkTopicsSortOverflowView2 = talkTopicsSortOverflowView;
                                                                    switch (i19) {
                                                                        case 0:
                                                                            PopupWindow popupWindow = talkTopicsSortOverflowView2.popupWindowHost;
                                                                            if (popupWindow != null) {
                                                                                popupWindow.dismiss();
                                                                                talkTopicsSortOverflowView2.popupWindowHost = null;
                                                                            }
                                                                            i18 = talkTopicsSortOverflowView2.currentSortMode == 1 ? 1 : 0;
                                                                            TalkTopicsActivity$HeaderViewHolder$$ExternalSyntheticLambda2 talkTopicsActivity$HeaderViewHolder$$ExternalSyntheticLambda2 = talkTopicsSortOverflowView2.callback;
                                                                            if (talkTopicsActivity$HeaderViewHolder$$ExternalSyntheticLambda2 != null) {
                                                                                talkTopicsActivity$HeaderViewHolder$$ExternalSyntheticLambda2.sortByClicked(i18 ^ 1);
                                                                                break;
                                                                            }
                                                                            break;
                                                                        case 1:
                                                                            PopupWindow popupWindow2 = talkTopicsSortOverflowView2.popupWindowHost;
                                                                            if (popupWindow2 != null) {
                                                                                popupWindow2.dismiss();
                                                                                talkTopicsSortOverflowView2.popupWindowHost = null;
                                                                            }
                                                                            i18 = talkTopicsSortOverflowView2.currentSortMode == 3 ? 1 : 0;
                                                                            TalkTopicsActivity$HeaderViewHolder$$ExternalSyntheticLambda2 talkTopicsActivity$HeaderViewHolder$$ExternalSyntheticLambda22 = talkTopicsSortOverflowView2.callback;
                                                                            if (talkTopicsActivity$HeaderViewHolder$$ExternalSyntheticLambda22 != null) {
                                                                                talkTopicsActivity$HeaderViewHolder$$ExternalSyntheticLambda22.sortByClicked(i18 != 0 ? 2 : 3);
                                                                                break;
                                                                            }
                                                                            break;
                                                                        default:
                                                                            PopupWindow popupWindow3 = talkTopicsSortOverflowView2.popupWindowHost;
                                                                            if (popupWindow3 != null) {
                                                                                popupWindow3.dismiss();
                                                                                talkTopicsSortOverflowView2.popupWindowHost = null;
                                                                            }
                                                                            i18 = talkTopicsSortOverflowView2.currentSortMode == 5 ? 1 : 0;
                                                                            TalkTopicsActivity$HeaderViewHolder$$ExternalSyntheticLambda2 talkTopicsActivity$HeaderViewHolder$$ExternalSyntheticLambda23 = talkTopicsSortOverflowView2.callback;
                                                                            if (talkTopicsActivity$HeaderViewHolder$$ExternalSyntheticLambda23 != null) {
                                                                                talkTopicsActivity$HeaderViewHolder$$ExternalSyntheticLambda23.sortByClicked(i18 != 0 ? 4 : 5);
                                                                                break;
                                                                            }
                                                                            break;
                                                                    }
                                                                }
                                                            });
                                                            linearLayout3.setOnClickListener(new View.OnClickListener() { // from class: org.wikipedia.views.TalkTopicsSortOverflowView$$ExternalSyntheticLambda0
                                                                @Override // android.view.View.OnClickListener
                                                                public final void onClick(View view2) {
                                                                    int i18;
                                                                    int i19 = i5;
                                                                    TalkTopicsSortOverflowView talkTopicsSortOverflowView2 = talkTopicsSortOverflowView;
                                                                    switch (i19) {
                                                                        case 0:
                                                                            PopupWindow popupWindow = talkTopicsSortOverflowView2.popupWindowHost;
                                                                            if (popupWindow != null) {
                                                                                popupWindow.dismiss();
                                                                                talkTopicsSortOverflowView2.popupWindowHost = null;
                                                                            }
                                                                            i18 = talkTopicsSortOverflowView2.currentSortMode == 1 ? 1 : 0;
                                                                            TalkTopicsActivity$HeaderViewHolder$$ExternalSyntheticLambda2 talkTopicsActivity$HeaderViewHolder$$ExternalSyntheticLambda2 = talkTopicsSortOverflowView2.callback;
                                                                            if (talkTopicsActivity$HeaderViewHolder$$ExternalSyntheticLambda2 != null) {
                                                                                talkTopicsActivity$HeaderViewHolder$$ExternalSyntheticLambda2.sortByClicked(i18 ^ 1);
                                                                                break;
                                                                            }
                                                                            break;
                                                                        case 1:
                                                                            PopupWindow popupWindow2 = talkTopicsSortOverflowView2.popupWindowHost;
                                                                            if (popupWindow2 != null) {
                                                                                popupWindow2.dismiss();
                                                                                talkTopicsSortOverflowView2.popupWindowHost = null;
                                                                            }
                                                                            i18 = talkTopicsSortOverflowView2.currentSortMode == 3 ? 1 : 0;
                                                                            TalkTopicsActivity$HeaderViewHolder$$ExternalSyntheticLambda2 talkTopicsActivity$HeaderViewHolder$$ExternalSyntheticLambda22 = talkTopicsSortOverflowView2.callback;
                                                                            if (talkTopicsActivity$HeaderViewHolder$$ExternalSyntheticLambda22 != null) {
                                                                                talkTopicsActivity$HeaderViewHolder$$ExternalSyntheticLambda22.sortByClicked(i18 != 0 ? 2 : 3);
                                                                                break;
                                                                            }
                                                                            break;
                                                                        default:
                                                                            PopupWindow popupWindow3 = talkTopicsSortOverflowView2.popupWindowHost;
                                                                            if (popupWindow3 != null) {
                                                                                popupWindow3.dismiss();
                                                                                talkTopicsSortOverflowView2.popupWindowHost = null;
                                                                            }
                                                                            i18 = talkTopicsSortOverflowView2.currentSortMode == 5 ? 1 : 0;
                                                                            TalkTopicsActivity$HeaderViewHolder$$ExternalSyntheticLambda2 talkTopicsActivity$HeaderViewHolder$$ExternalSyntheticLambda23 = talkTopicsSortOverflowView2.callback;
                                                                            if (talkTopicsActivity$HeaderViewHolder$$ExternalSyntheticLambda23 != null) {
                                                                                talkTopicsActivity$HeaderViewHolder$$ExternalSyntheticLambda23.sortByClicked(i18 != 0 ? 4 : 5);
                                                                                break;
                                                                            }
                                                                            break;
                                                                    }
                                                                }
                                                            });
                                                            linearLayout2.setOnClickListener(new View.OnClickListener() { // from class: org.wikipedia.views.TalkTopicsSortOverflowView$$ExternalSyntheticLambda0
                                                                @Override // android.view.View.OnClickListener
                                                                public final void onClick(View view2) {
                                                                    int i18;
                                                                    int i19 = i3;
                                                                    TalkTopicsSortOverflowView talkTopicsSortOverflowView2 = talkTopicsSortOverflowView;
                                                                    switch (i19) {
                                                                        case 0:
                                                                            PopupWindow popupWindow = talkTopicsSortOverflowView2.popupWindowHost;
                                                                            if (popupWindow != null) {
                                                                                popupWindow.dismiss();
                                                                                talkTopicsSortOverflowView2.popupWindowHost = null;
                                                                            }
                                                                            i18 = talkTopicsSortOverflowView2.currentSortMode == 1 ? 1 : 0;
                                                                            TalkTopicsActivity$HeaderViewHolder$$ExternalSyntheticLambda2 talkTopicsActivity$HeaderViewHolder$$ExternalSyntheticLambda2 = talkTopicsSortOverflowView2.callback;
                                                                            if (talkTopicsActivity$HeaderViewHolder$$ExternalSyntheticLambda2 != null) {
                                                                                talkTopicsActivity$HeaderViewHolder$$ExternalSyntheticLambda2.sortByClicked(i18 ^ 1);
                                                                                break;
                                                                            }
                                                                            break;
                                                                        case 1:
                                                                            PopupWindow popupWindow2 = talkTopicsSortOverflowView2.popupWindowHost;
                                                                            if (popupWindow2 != null) {
                                                                                popupWindow2.dismiss();
                                                                                talkTopicsSortOverflowView2.popupWindowHost = null;
                                                                            }
                                                                            i18 = talkTopicsSortOverflowView2.currentSortMode == 3 ? 1 : 0;
                                                                            TalkTopicsActivity$HeaderViewHolder$$ExternalSyntheticLambda2 talkTopicsActivity$HeaderViewHolder$$ExternalSyntheticLambda22 = talkTopicsSortOverflowView2.callback;
                                                                            if (talkTopicsActivity$HeaderViewHolder$$ExternalSyntheticLambda22 != null) {
                                                                                talkTopicsActivity$HeaderViewHolder$$ExternalSyntheticLambda22.sortByClicked(i18 != 0 ? 2 : 3);
                                                                                break;
                                                                            }
                                                                            break;
                                                                        default:
                                                                            PopupWindow popupWindow3 = talkTopicsSortOverflowView2.popupWindowHost;
                                                                            if (popupWindow3 != null) {
                                                                                popupWindow3.dismiss();
                                                                                talkTopicsSortOverflowView2.popupWindowHost = null;
                                                                            }
                                                                            i18 = talkTopicsSortOverflowView2.currentSortMode == 5 ? 1 : 0;
                                                                            TalkTopicsActivity$HeaderViewHolder$$ExternalSyntheticLambda2 talkTopicsActivity$HeaderViewHolder$$ExternalSyntheticLambda23 = talkTopicsSortOverflowView2.callback;
                                                                            if (talkTopicsActivity$HeaderViewHolder$$ExternalSyntheticLambda23 != null) {
                                                                                talkTopicsActivity$HeaderViewHolder$$ExternalSyntheticLambda23.sortByClicked(i18 != 0 ? 4 : 5);
                                                                                break;
                                                                            }
                                                                            break;
                                                                    }
                                                                }
                                                            });
                                                            ImageView imageView7 = (ImageView) headerViewHolder.binding.callAdapterFactories;
                                                            int i18 = TalkTopicsActivity.$r8$clinit;
                                                            int i19 = talkTopicsActivity.getViewModel().currentSortMode;
                                                            talkTopicsSortOverflowView.callback = new TalkTopicsActivity$HeaderViewHolder$$ExternalSyntheticLambda2(talkTopicsActivity, 0);
                                                            PopupWindow popupWindow = new PopupWindow((View) talkTopicsSortOverflowView, -2, -2, true);
                                                            talkTopicsSortOverflowView.popupWindowHost = popupWindow;
                                                            popupWindow.setBackgroundDrawable(new ColorDrawable(0));
                                                            popupWindow.setOverlapAnchor(true);
                                                            popupWindow.showAsDropDown(imageView7, 0, 0, 8388613);
                                                            talkTopicsSortOverflowView.currentSortMode = i19;
                                                            if (i19 == 0) {
                                                                imageView2.setVisibility(0);
                                                                imageView.setVisibility(0);
                                                                imageView.setRotation(90.0f);
                                                                return;
                                                            }
                                                            if (i19 == 1) {
                                                                imageView2.setVisibility(0);
                                                                imageView.setVisibility(0);
                                                                imageView.setRotation(270.0f);
                                                                return;
                                                            }
                                                            if (i19 == 2) {
                                                                imageView6.setVisibility(0);
                                                                imageView5.setVisibility(0);
                                                                imageView5.setRotation(90.0f);
                                                                return;
                                                            }
                                                            if (i19 == 3) {
                                                                imageView6.setVisibility(0);
                                                                imageView5.setVisibility(0);
                                                                imageView5.setRotation(270.0f);
                                                                return;
                                                            } else if (i19 == 4) {
                                                                imageView4.setVisibility(0);
                                                                imageView3.setVisibility(0);
                                                                imageView3.setRotation(90.0f);
                                                                return;
                                                            } else {
                                                                if (i19 != 5) {
                                                                    return;
                                                                }
                                                                imageView4.setVisibility(0);
                                                                imageView3.setVisibility(0);
                                                                imageView3.setRotation(270.0f);
                                                                return;
                                                            }
                                                        }
                                                        i17 = R.id.sortByTopicNameSelected;
                                                    } else {
                                                        i17 = R.id.sortByTopicNameOrder;
                                                    }
                                                } else {
                                                    i17 = R.id.sortByTopicNameButton;
                                                }
                                            } else {
                                                i17 = R.id.sortByTopicName;
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i17)));
                return;
            case 28:
                PageActionOverflowView pageActionOverflowView = (PageActionOverflowView) obj2;
                pageActionOverflowView.dismissPopupWindowHost();
                ((PageActionItem) obj).select(pageActionOverflowView.getCallback());
                return;
            default:
                Context context6 = (Context) obj;
                ((PageActionOverflowView) obj2).dismissPopupWindowHost();
                int i20 = CustomizeToolbarActivity.$r8$clinit;
                context6.startActivity(new Intent(context6, (Class<?>) CustomizeToolbarActivity.class));
                return;
        }
    }
}
