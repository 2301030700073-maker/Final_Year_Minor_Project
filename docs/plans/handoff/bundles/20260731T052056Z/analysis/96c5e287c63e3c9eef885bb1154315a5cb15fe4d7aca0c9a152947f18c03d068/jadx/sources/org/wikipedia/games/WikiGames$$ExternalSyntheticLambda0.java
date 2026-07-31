package org.wikipedia.games;

import android.net.Uri;
import android.widget.LinearLayout;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.ViewModelKt;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.Room;
import coil3.disk.DiskLruCache$launchCleanup$1;
import com.caverock.androidsvg.SVGAndroidRenderer;
import j$.time.Instant;
import j$.time.LocalDateTime;
import j$.time.ZoneId;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.Map;
import kotlin.Unit;
import kotlin.collections.EmptyMap;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.AwaitKt;
import kotlinx.serialization.internal.HashMapSerializer;
import kotlinx.serialization.internal.IntSerializer;
import kotlinx.serialization.internal.StringSerializer;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonImpl;
import kotlinx.serialization.json.JsonObject;
import okhttp3.Cookie;
import okhttp3.Headers;
import okio.Path;
import org.apache.commons.lang3.StringUtils;
import org.jsoup.nodes.NodeUtils;
import org.wikipedia.R;
import org.wikipedia.activitytab.ActivityTabViewModel;
import org.wikipedia.activitytab.timeline.ReadingListPagingSource;
import org.wikipedia.activitytab.timeline.TimelinePagingSource;
import org.wikipedia.activitytab.timeline.TimelineSource;
import org.wikipedia.activitytab.timeline.UserContribPagingSource;
import org.wikipedia.categories.CategoryActivityViewModel;
import org.wikipedia.concurrency.FlowEventBus;
import org.wikipedia.database.AppDatabase;
import org.wikipedia.database.AppDatabase$Companion$MIGRATION_19_20$1;
import org.wikipedia.databinding.ActivityGalleryBinding;
import org.wikipedia.dataclient.growthtasks.GrowthUserImpact;
import org.wikipedia.dataclient.mwapi.UserContribution;
import org.wikipedia.descriptions.DescriptionEditView;
import org.wikipedia.descriptions.DescriptionEditView$$ExternalSyntheticLambda0;
import org.wikipedia.donate.donationreminder.DonationReminderActivity;
import org.wikipedia.donate.donationreminder.DonationReminderScreenKt;
import org.wikipedia.donate.donationreminder.SelectableOption;
import org.wikipedia.edit.EditSectionActivity;
import org.wikipedia.edit.insertmedia.InsertMediaViewModel;
import org.wikipedia.edit.templates.TemplatesSearchViewModel;
import org.wikipedia.events.NewRecommendedReadingListEvent;
import org.wikipedia.extensions.ContextKt;
import org.wikipedia.feed.ForYouModule;
import org.wikipedia.feed.HomeFragment;
import org.wikipedia.feed.onboarding.ExploreFeedBuildingActivity;
import org.wikipedia.gallery.GalleryActivity;
import org.wikipedia.games.onthisday.OnThisDayGameArchiveCalendarHelper;
import org.wikipedia.games.onthisday.OnThisDayGameResultFragment;
import org.wikipedia.history.HistoryFragment;
import org.wikipedia.history.HistoryViewModel;
import org.wikipedia.json.JsonUtil;
import org.wikipedia.login.LoginActivity;
import org.wikipedia.page.PageFragment;
import org.wikipedia.page.edithistory.EditHistoryListViewModel;
import org.wikipedia.random.RandomActivity;
import org.wikipedia.random.RandomActivity$onSaveClick$1;
import org.wikipedia.random.RandomViewModel;
import org.wikipedia.readinglist.ReadingListActivity;
import org.wikipedia.readinglist.ReadingListMode;
import org.wikipedia.readinglist.ReadingListsFragment;
import org.wikipedia.readinglist.database.ReadingList;
import org.wikipedia.readinglist.database.ReadingListPage;
import org.wikipedia.search.HybridSearchOnboardingActivity;
import org.wikipedia.settings.AboutActivity;
import org.wikipedia.settings.LicenseActivity;
import org.wikipedia.settings.homefeed.HomeFeedSettingsActivity;
import org.wikipedia.suggestededits.SuggestedEditsRecentEditsViewModel;
import org.wikipedia.talk.ArchivedTalkPagesViewModel;
import org.wikipedia.talk.TalkTopicHolder;
import org.wikipedia.util.DateUtil;
import org.wikipedia.util.StringUtil;
import org.wikipedia.util.UriUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class WikiGames$$ExternalSyntheticLambda0 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ WikiGames$$ExternalSyntheticLambda0(int i, Object obj) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        int i2 = 2;
        Continuation continuation = null;
        Unit unit = Unit.INSTANCE;
        Object obj = this.f$0;
        switch (i) {
            case 0:
                return WikiGames.supportLanguages_delegate$lambda$0((WikiGames) obj);
            case 1:
                AppDatabase$Companion$MIGRATION_19_20$1 appDatabase$Companion$MIGRATION_19_20$1 = AppDatabase.MIGRATION_19_20;
                TimelinePagingSource timelinePagingSource = new TimelinePagingSource(Room.listOf((Object[]) new TimelineSource[]{new ReadingListPagingSource(Cookie.Companion.getInstance().historyEntryWithImageDao()), new ReadingListPagingSource(Cookie.Companion.getInstance().readingListPageDao()), new UserContribPagingSource(ActivityTabViewModel.getWikiSiteForTimeline(), Headers.Companion.getUserName(), Cookie.Companion.getInstance().historyEntryWithImageDao())}));
                ((ActivityTabViewModel) obj).currentTimelinePagingSource = timelinePagingSource;
                return timelinePagingSource;
            case 2:
                JsonElement jsonElement = ((GrowthUserImpact.ArticleViews) obj).views;
                if (!(jsonElement instanceof JsonObject)) {
                    return EmptyMap.INSTANCE;
                }
                JsonImpl jsonImpl = JsonUtil.json;
                jsonImpl.getClass();
                return (Map) jsonImpl.decodeFromJsonElement(new HashMapSerializer(StringSerializer.INSTANCE, IntSerializer.INSTANCE, 1), jsonElement);
            case 3:
                ConcurrentHashMap concurrentHashMap = DateUtil.DATE_FORMATS;
                String str = ((UserContribution) obj).timestamp;
                str.getClass();
                LocalDateTime ofInstant = LocalDateTime.ofInstant(Instant.parse(str), ZoneId.systemDefault());
                ofInstant.getClass();
                return ofInstant;
            case 4:
                DescriptionEditView descriptionEditView = (DescriptionEditView) obj;
                descriptionEditView.binding.rootView.postDelayed(new DescriptionEditView$$ExternalSyntheticLambda0(descriptionEditView, i2), 500L);
                return unit;
            case 5:
                SelectableOption selectableOption = (SelectableOption) obj;
                return (String) selectableOption.displayFormatter.invoke(selectableOption.selectedValue);
            case 6:
                ((EditSectionActivity) obj).finish();
                return unit;
            case 7:
                return new TimelinePagingSource(((InsertMediaViewModel) obj).searchQuery);
            case 8:
                TemplatesSearchViewModel templatesSearchViewModel = (TemplatesSearchViewModel) obj;
                return new CategoryActivityViewModel.CategoryMembersPagingSource(templatesSearchViewModel.searchQuery, templatesSearchViewModel.wikiSite);
            case 9:
                return Integer.valueOf(((ForYouModule) obj).getCards().size());
            case 10:
                SVGAndroidRenderer.submitInteraction$default(((HomeFragment) obj).instrument, "click", "home_feed_feedback", null, "feedback_cancel", null, null, 244);
                return unit;
            case 11:
                ExploreFeedBuildingActivity exploreFeedBuildingActivity = (ExploreFeedBuildingActivity) obj;
                int i3 = ExploreFeedBuildingActivity.$r8$clinit;
                exploreFeedBuildingActivity.setResult(-1);
                exploreFeedBuildingActivity.finish();
                return unit;
            case 12:
                ActivityGalleryBinding activityGalleryBinding = ((GalleryActivity) obj).binding;
                if (activityGalleryBinding != null) {
                    ((LinearLayout) activityGalleryBinding.infoContainer).setVisibility(8);
                    return unit;
                }
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                throw null;
            case IMAGE_VALUE:
                OnThisDayGameArchiveCalendarHelper onThisDayGameArchiveCalendarHelper = ((GamesHubFragment) obj).onThisDayGameArchiveCalendarHelper;
                if (onThisDayGameArchiveCalendarHelper != null) {
                    AwaitKt.launch$default(ViewModelKt.getLifecycleScope(onThisDayGameArchiveCalendarHelper.fragment), null, null, new RandomActivity$onSaveClick$1(onThisDayGameArchiveCalendarHelper, null), 3);
                    return unit;
                }
                Intrinsics.throwUninitializedPropertyAccessException("onThisDayGameArchiveCalendarHelper");
                throw null;
            case LINEAR_PROGRESS_INDICATOR_VALUE:
                OnThisDayGameResultFragment onThisDayGameResultFragment = (OnThisDayGameResultFragment) obj;
                int i4 = LoginActivity.$r8$clinit;
                onThisDayGameResultFragment.startActivity(Path.Companion.newIntent(onThisDayGameResultFragment.requireContext(), "on_this_day_game_result", false), null);
                return unit;
            case 15:
                HistoryViewModel viewModel = ((HistoryFragment) obj).getViewModel();
                AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel), viewModel.handler, null, new DiskLruCache$launchCleanup$1(9, viewModel, continuation), 2);
                return unit;
            case LAZY_VERTICAL_GRID_VALUE:
                PageFragment pageFragment = (PageFragment) obj;
                Fragment.AnonymousClass10 anonymousClass10 = pageFragment.donationReminderLauncher;
                int i5 = DonationReminderActivity.$r8$clinit;
                anonymousClass10.launch(DonationReminderScreenKt.newIntent(pageFragment.requireContext(), false), null);
                return unit;
            case VERTICAL_GRID_ITEM_VALUE:
                EditHistoryListViewModel editHistoryListViewModel = (EditHistoryListViewModel) obj;
                return new CategoryActivityViewModel.CategoryMembersPagingSource(editHistoryListViewModel, editHistoryListViewModel.pageTitle);
            case RADIO_GROUP_VALUE:
                int i6 = RandomActivity.$r8$clinit;
                ((RandomActivity) obj).getOnBackPressedDispatcher().onBackPressed();
                return unit;
            case RADIO_BUTTON_VALUE:
                RandomViewModel randomViewModel = (RandomViewModel) obj;
                if (!randomViewModel.loading) {
                    randomViewModel.loadError$delegate.setValue(null);
                    randomViewModel.loadMore();
                }
                return unit;
            case RADIO_ROW_VALUE:
                ReadingListsFragment readingListsFragment = (ReadingListsFragment) obj;
                FlowEventBus.post(new NewRecommendedReadingListEvent());
                int i7 = ReadingListActivity.$r8$clinit;
                readingListsFragment.startActivity(NodeUtils.newIntent(readingListsFragment.requireActivity(), ReadingListMode.RECOMMENDED, null), null);
                return unit;
            case RADIO_COLUMN_VALUE:
                return StringUtils.stripAccents(((ReadingList) obj).getTitle());
            case SIZE_BOX_VALUE:
                StringUtil stringUtil = StringUtil.INSTANCE;
                return StringUtils.stripAccents(StringUtil.fromHtml(((ReadingListPage) obj).displayTitle).toString());
            case 23:
                HybridSearchOnboardingActivity hybridSearchOnboardingActivity = (HybridSearchOnboardingActivity) obj;
                int i8 = HybridSearchOnboardingActivity.$r8$clinit;
                SVGAndroidRenderer instrument = ContextKt.getInstrument(hybridSearchOnboardingActivity);
                if (instrument != null) {
                    SVGAndroidRenderer.submitInteraction$default(instrument, "click", null, null, "learn_more", null, null, 246);
                }
                String string = hybridSearchOnboardingActivity.getString(R.string.hybrid_search_info_link);
                string.getClass();
                Uri parse = Uri.parse(string);
                parse.getClass();
                UriUtil.visitInExternalBrowser(hybridSearchOnboardingActivity, parse);
                return unit;
            case 24:
                int i9 = AboutActivity.$r8$clinit;
                ((AboutActivity) obj).getOnBackPressedDispatcher().onBackPressed();
                return unit;
            case 25:
                int i10 = LicenseActivity.$r8$clinit;
                ((LicenseActivity) obj).getOnBackPressedDispatcher().onBackPressed();
                return unit;
            case 26:
                int i11 = HomeFeedSettingsActivity.$r8$clinit;
                ((HomeFeedSettingsActivity) obj).finish();
                return unit;
            case 27:
                return new TimelinePagingSource((SuggestedEditsRecentEditsViewModel) obj, i2);
            case 28:
                return new TimelinePagingSource(((ArchivedTalkPagesViewModel) obj).pageTitle);
            default:
                RecyclerView.Adapter adapter = ((TalkTopicHolder) obj).mBindingAdapter;
                if (adapter != null) {
                    adapter.notifyDataSetChanged();
                }
                return unit;
        }
    }
}
