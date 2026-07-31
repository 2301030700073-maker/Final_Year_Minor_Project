package coil3.compose.internal;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Build;
import android.os.VibrationEffect;
import android.os.Vibrator;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.PopupMenu$1;
import androidx.cardview.widget.CardView;
import androidx.collection.MutableObjectList;
import androidx.collection.MutableScatterMap;
import androidx.compose.animation.AnimatedContentKt$AnimatedContent$6$1$5$1$1$invoke$$inlined$onDispose$1;
import androidx.compose.animation.core.Animation;
import androidx.compose.animation.core.AnimationScope;
import androidx.compose.animation.core.InfiniteTransition;
import androidx.compose.foundation.contextmenu.ContextMenuPopupPositionProviderKt;
import androidx.compose.foundation.contextmenu.ContextMenuScope;
import androidx.compose.foundation.gestures.ContentInViewNode;
import androidx.compose.foundation.gestures.DefaultFlingBehavior;
import androidx.compose.foundation.gestures.ScrollingLogic;
import androidx.compose.foundation.gestures.ScrollingLogic$doFlingAnimation$2$reverseScope$1;
import androidx.compose.foundation.gestures.ScrollingLogic$nestedScrollScope$1;
import androidx.compose.foundation.gestures.UpdatableAnimationState;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.lazy.LazyItemScope$CC;
import androidx.compose.foundation.lazy.LazyItemScopeImpl;
import androidx.compose.foundation.lazy.LazyListIntervalContent;
import androidx.compose.foundation.lazy.LazyListScope$items$1;
import androidx.compose.foundation.text.BasicTextKt$$ExternalSyntheticLambda3;
import androidx.compose.foundation.text.KeyCommand;
import androidx.compose.foundation.text.LegacyTextFieldState;
import androidx.compose.foundation.text.TextContextMenuItems;
import androidx.compose.foundation.text.TextFieldKeyInput;
import androidx.compose.foundation.text.TextLayoutResultProxy;
import androidx.compose.foundation.text.TextLinkScope$$ExternalSyntheticLambda3;
import androidx.compose.foundation.text.UndoManager;
import androidx.compose.foundation.text.contextmenu.builder.TextContextMenuBuilderScope;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuComponent;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuData;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuItem;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuSeparator;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuSession;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuTextClassificationItem;
import androidx.compose.foundation.text.contextmenu.internal.TextContextMenuHelperApi28;
import androidx.compose.foundation.text.selection.MouseSelectionObserver;
import androidx.compose.foundation.text.selection.SelectionAdjustment$Companion$$ExternalSyntheticLambda0;
import androidx.compose.foundation.text.selection.SelectionManager_androidKt$$ExternalSyntheticLambda8;
import androidx.compose.foundation.text.selection.TextFieldPreparedSelection;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager$contextMenuAreaModifier$3;
import androidx.compose.foundation.text.selection.TextPreparedSelectionState;
import androidx.compose.material3.ChipKt$$ExternalSyntheticLambda2;
import androidx.compose.material3.TooltipKt$animateTooltip$2;
import androidx.compose.material3.TooltipStateImpl;
import androidx.compose.material3.internal.BasicTooltipKt$$ExternalSyntheticLambda7;
import androidx.compose.material3.internal.TextFieldImplKt$CommonDecorationBox$3$borderContainerWithId$1;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Latch;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.ParcelableSnapshotMutableLongState;
import androidx.compose.runtime.Recomposer$$ExternalSyntheticLambda6;
import androidx.compose.runtime.State;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.saveable.SaveableStateHolderImpl;
import androidx.compose.runtime.saveable.SaveableStateRegistryWrapper;
import androidx.compose.runtime.snapshots.SnapshotStateList;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.DrawResult;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.AndroidPaint;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.drawscope.DrawStyle;
import androidx.compose.ui.graphics.drawscope.Fill;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.node.LayoutNodeDrawScope;
import androidx.compose.ui.platform.ComposeView;
import androidx.compose.ui.semantics.AccessibilityAction;
import androidx.compose.ui.semantics.SemanticsActions;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.MultiParagraph;
import androidx.compose.ui.text.ParagraphKt;
import androidx.compose.ui.text.SpanStyle;
import androidx.compose.ui.text.TextLayoutInput;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.input.CommitTextCommand;
import androidx.compose.ui.text.input.OffsetMapping;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.compose.ui.text.input.TextInputSession;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextForegroundStyle;
import androidx.compose.ui.text.style.TextGeometricTransform;
import androidx.core.view.MenuHostHelper$$ExternalSyntheticLambda0;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.LifecycleCoroutineScopeImpl;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.ViewModelKt;
import androidx.lifecycle.compose.LifecycleStartStopEffectScope;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.compose.DialogNavigator;
import androidx.navigation.internal.NavControllerImpl$$ExternalSyntheticLambda1;
import androidx.paging.HintHandler$$ExternalSyntheticLambda0;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.Room;
import coil3.SingletonImageLoader;
import coil3.compose.AsyncImagePainter;
import coil3.request.ErrorResult;
import coil3.request.ImageRequest;
import coil3.request.NullRequestDataException;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import com.caverock.androidsvg.SVG;
import com.caverock.androidsvg.SVGAndroidRenderer;
import com.google.android.material.snackbar.Snackbar;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.UnsignedKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlin.jvm.internal.Ref$FloatRef;
import kotlin.jvm.internal.Ref$LongRef;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.reflect.KProperty;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.flow.StateFlowImpl;
import okhttp3.Cache;
import okhttp3.Dispatcher$promoteAndExecute$Effects;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.Request;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okhttp3.tls.internal.der.BasicDerAdapter;
import okio.BufferedSink;
import okio.ByteString;
import okio.Okio__OkioKt;
import okio.Path;
import org.jsoup.Jsoup;
import org.jsoup.nodes.NodeUtils;
import org.maplibre.android.maps.MapLibreMap;
import org.maplibre.android.maps.Style;
import org.maplibre.android.plugins.annotation.Symbol;
import org.maplibre.android.plugins.annotation.SymbolManager;
import org.wikipedia.Constants;
import org.wikipedia.R;
import org.wikipedia.analytics.testkitchen.TestKitchenAdapter;
import org.wikipedia.commons.FilePageActivity;
import org.wikipedia.commons.FilePageFragment;
import org.wikipedia.compose.components.menu.PageOverflowMenuViewModel;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.dataclient.page.NearbyPage;
import org.wikipedia.dataclient.page.PageSummary;
import org.wikipedia.feed.HomeAction;
import org.wikipedia.feed.HomeFragment;
import org.wikipedia.feed.HomeFragment$$ExternalSyntheticLambda8;
import org.wikipedia.feed.HomeTab;
import org.wikipedia.feed.HomeViewModel;
import org.wikipedia.feed.HomeViewModel$hideCommunityCard$1;
import org.wikipedia.feed.HomeViewModel$hideForYouCard$1;
import org.wikipedia.feed.HomeViewModel$hideModule$1;
import org.wikipedia.feed.didyouknow.DidYouKnowActivity;
import org.wikipedia.feed.didyouknow.DidYouKnowCard;
import org.wikipedia.feed.didyouknow.DidYouKnowItem;
import org.wikipedia.feed.image.FeaturedImage;
import org.wikipedia.feed.image.FeaturedImageCard;
import org.wikipedia.feed.model.Card;
import org.wikipedia.feed.model.DiscoverCard;
import org.wikipedia.feed.model.EmptyCommunityCard;
import org.wikipedia.feed.model.EmptyForYouCard;
import org.wikipedia.feed.model.ForYouCard;
import org.wikipedia.feed.news.NewsActivity;
import org.wikipedia.feed.news.NewsCard;
import org.wikipedia.feed.news.NewsItem;
import org.wikipedia.feed.onthisday.OnThisDayActivity;
import org.wikipedia.feed.onthisday.OnThisDayCard;
import org.wikipedia.feed.personalization.PersonalizationActivity;
import org.wikipedia.feed.personalization.PersonalizationScreenKt;
import org.wikipedia.feed.topread.TopReadArticlesActivity;
import org.wikipedia.feed.topread.TopReadCard;
import org.wikipedia.feed.wikigames.OnThisDayCardGameState;
import org.wikipedia.feed.wikigames.WikiGame$OnThisDayGame;
import org.wikipedia.games.GamesHubActivity;
import org.wikipedia.games.GamesHubFragment;
import org.wikipedia.games.WikiGames;
import org.wikipedia.games.onthisday.OnThisDayGameActivity;
import org.wikipedia.games.onthisday.OnThisDayGameProvider;
import org.wikipedia.history.HistoryEntry;
import org.wikipedia.language.LangLinksScreenKt$ComposeLangLinksScreen$lambda$4$3$0$$inlined$items$default$3;
import org.wikipedia.main.MainFragment;
import org.wikipedia.main.MainFragment$$ExternalSyntheticLambda7;
import org.wikipedia.notifications.NotificationActivity;
import org.wikipedia.page.tabs.TabActivity;
import org.wikipedia.places.PlacesActivity;
import org.wikipedia.places.PlacesFragment;
import org.wikipedia.random.RandomActivity;
import org.wikipedia.random.RandomScreenKt;
import org.wikipedia.random.RandomScreenKt$$ExternalSyntheticLambda17;
import org.wikipedia.random.RandomScreenKt$$ExternalSyntheticLambda5;
import org.wikipedia.readinglist.ReadingListActivity;
import org.wikipedia.readinglist.ReadingListBehaviorsUtil;
import org.wikipedia.readinglist.ReadingListMode;
import org.wikipedia.readinglist.recommended.RecommendedReadingListHelper;
import org.wikipedia.readinglist.recommended.RecommendedReadingListOnboardingActivity;
import org.wikipedia.readinglist.recommended.RecommendedReadingListSettingsActivity;
import org.wikipedia.search.HybridSearchSkeletonLoaderKt$$ExternalSyntheticLambda0;
import org.wikipedia.settings.Prefs;
import org.wikipedia.settings.PrefsIoUtil;
import org.wikipedia.settings.homefeed.HomeFeedSettingsActivity;
import org.wikipedia.settings.homefeed.HomeFeedSettingsStartDestination;
import org.wikipedia.settings.languages.WikipediaLanguagesActivity;
import org.wikipedia.suggestededits.PageSummaryForEdit;
import org.wikipedia.util.DeviceUtil$$ExternalSyntheticLambda1;
import org.wikipedia.util.FileUtil;
import org.wikipedia.util.ShareUtil;
import org.wikipedia.util.ShareUtil$shareImage$$inlined$CoroutineExceptionHandler$1;
import org.wikipedia.util.ShareUtil$shareImage$2;
import org.wikipedia.watchlist.WatchlistExpiryDialogKt$WatchlistExpiryDialogView$lambda$3$1$0$$inlined$items$default$4;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class UtilsKt$$ExternalSyntheticLambda1 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ Object f$2;

    public /* synthetic */ UtilsKt$$ExternalSyntheticLambda1(ContentInViewNode contentInViewNode, UpdatableAnimationState updatableAnimationState, Job job, ScrollingLogic$nestedScrollScope$1 scrollingLogic$nestedScrollScope$1) {
        this.$r8$classId = 1;
        this.f$0 = contentInViewNode;
        this.f$1 = job;
        this.f$2 = scrollingLogic$nestedScrollScope$1;
    }

    private final Object invoke$org$wikipedia$compose$components$FadeInAsyncImageKt$$ExternalSyntheticLambda2(Object obj) {
        MutableState mutableState = (MutableState) this.f$0;
        ParcelableSnapshotMutableLongState parcelableSnapshotMutableLongState = (ParcelableSnapshotMutableLongState) this.f$1;
        MutableState mutableState2 = (MutableState) this.f$2;
        ((AsyncImagePainter.State.Success) obj).getClass();
        mutableState.setValue(Boolean.TRUE);
        mutableState2.setValue(Boolean.valueOf(System.currentTimeMillis() - parcelableSnapshotMutableLongState.getLongValue() > 250));
        return Unit.INSTANCE;
    }

    private final Object invoke$org$wikipedia$feed$CommunityContentTabKt$$ExternalSyntheticLambda20(Object obj) {
        Function1 function1 = (Function1) this.f$0;
        OnThisDayCard onThisDayCard = (OnThisDayCard) this.f$1;
        WikiSite wikiSite = (WikiSite) this.f$2;
        PageSummary pageSummary = (PageSummary) obj;
        pageSummary.getClass();
        function1.invoke(new HomeAction.PageClick(onThisDayCard, pageSummary.getHistoryEntry(wikiSite, 46)));
        return Unit.INSTANCE;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final Object invoke$org$wikipedia$feed$HomeFragment$$ExternalSyntheticLambda6(Object obj) {
        String str;
        HomeFeedSettingsStartDestination homeFeedSettingsStartDestination;
        final HomeFragment homeFragment = (HomeFragment) this.f$0;
        Request.Builder builder = homeFragment.pageOverflowMenuViewModel$delegate;
        State state = (State) this.f$1;
        MutableState mutableState = (MutableState) this.f$2;
        HomeAction homeAction = (HomeAction) obj;
        homeAction.getClass();
        WikiSite wikiSite = (WikiSite) state.getValue();
        HomeTab homeTab = (HomeTab) mutableState.getValue();
        if (homeAction instanceof HomeAction.SelectTab) {
            HomeAction.SelectTab selectTab = (HomeAction.SelectTab) homeAction;
            Card card = selectTab.card;
            if ((card instanceof EmptyCommunityCard) || (card instanceof EmptyForYouCard)) {
                SVGAndroidRenderer.submitInteraction$default(homeFragment.instrument, "click", card.getClass().getSimpleName(), null, "community_feed", null, null, 244);
            }
            homeFragment.selectTab(selectTab.tab);
        } else if (homeAction instanceof HomeAction.RefreshTab) {
            Prefs prefs = Prefs.INSTANCE;
            PrefsIoUtil.setString(R.string.preference_key_home_for_you_modules_today, "");
            if (((HomeAction.RefreshTab) homeAction).tab == HomeTab.COMMUNITY) {
                homeFragment.getViewModel().refreshCommunityContent();
            } else {
                homeFragment.getViewModel().refreshForYouContent();
            }
        } else if (homeAction.equals(HomeAction.LoadMoreCommunityContent.INSTANCE)) {
            homeFragment.getViewModel().loadCommunityContent();
        } else if (homeAction.equals(HomeAction.LoadMoreForYouContent.INSTANCE)) {
            homeFragment.getViewModel().loadForYouContent();
        } else {
            final int i = 3;
            final int i2 = 0;
            Object[] objArr = 0;
            Object[] objArr2 = 0;
            Object[] objArr3 = 0;
            if (homeAction instanceof HomeAction.HideCommunityCard) {
                Card card2 = ((HomeAction.HideCommunityCard) homeAction).card;
                SVGAndroidRenderer.submitInteraction$default(homeFragment.instrument, "click", card2.getClass().getSimpleName(), "feed_overflow", "card_hide", null, null, 240);
                AwaitKt.launch$default(ViewModelKt.getViewModelScope(homeFragment.getViewModel()), null, null, new HomeViewModel$hideCommunityCard$1(card2, objArr3 == true ? 1 : 0, i2), 3);
                AppCompatActivity requireActivity = homeFragment.requireActivity();
                String string = homeFragment.getString(R.string.menu_feed_card_dismissed);
                string.getClass();
                Snackbar makeSnackbar$default = ShareUtil.makeSnackbar$default(requireActivity, string, 0, 12);
                makeSnackbar$default.setAction(homeFragment.getString(R.string.explore_feed_header_overflow_hide_module_message_action), new HomeFragment$$ExternalSyntheticLambda8(i2, homeFragment, card2));
                makeSnackbar$default.show();
            } else if (homeAction instanceof HomeAction.HideForYouCard) {
                ForYouCard forYouCard = ((HomeAction.HideForYouCard) homeAction).card;
                SVGAndroidRenderer.submitInteraction$default(homeFragment.instrument, "click", forYouCard.getClass().getSimpleName(), "feed_overflow", "card_hide", null, null, 240);
                AwaitKt.launch$default(ViewModelKt.getViewModelScope(homeFragment.getViewModel()), null, null, new HomeViewModel$hideForYouCard$1(forYouCard, objArr2 == true ? 1 : 0, i2), 3);
                AppCompatActivity requireActivity2 = homeFragment.requireActivity();
                String string2 = homeFragment.getString(R.string.menu_feed_card_dismissed);
                string2.getClass();
                Snackbar makeSnackbar$default2 = ShareUtil.makeSnackbar$default(requireActivity2, string2, 0, 12);
                makeSnackbar$default2.setAction(homeFragment.getString(R.string.explore_feed_header_overflow_hide_module_message_action), new HomeFragment$$ExternalSyntheticLambda8(11, homeFragment, forYouCard));
                makeSnackbar$default2.show();
            } else {
                int i3 = 10;
                if (homeAction instanceof HomeAction.HideModule) {
                    String str2 = ((HomeAction.HideModule) homeAction).moduleKey;
                    SVGAndroidRenderer.submitInteraction$default(homeFragment.instrument, "click", str2, "feed_overflow", "module_hide", null, null, 240);
                    AwaitKt.launch$default(ViewModelKt.getViewModelScope(homeFragment.getViewModel()), null, null, new HomeViewModel$hideModule$1(str2, i2, objArr == true ? 1 : 0), 3);
                    AppCompatActivity requireActivity3 = homeFragment.requireActivity();
                    String string3 = homeFragment.getString(R.string.explore_feed_header_overflow_hide_module_message);
                    string3.getClass();
                    Snackbar makeSnackbar$default3 = ShareUtil.makeSnackbar$default(requireActivity3, string3, 0, 12);
                    makeSnackbar$default3.setAction(homeFragment.getString(R.string.explore_feed_header_overflow_hide_module_message_action), new HomeFragment$$ExternalSyntheticLambda8(i3, homeFragment, str2));
                    makeSnackbar$default3.show();
                } else if (homeAction instanceof HomeAction.PageClick) {
                    SVGAndroidRenderer sVGAndroidRenderer = homeFragment.instrument;
                    HomeAction.PageClick pageClick = (HomeAction.PageClick) homeAction;
                    HistoryEntry historyEntry = pageClick.historyEntry;
                    String simpleName = pageClick.card.getClass().getSimpleName();
                    DeviceUtil$$ExternalSyntheticLambda1 deviceUtil$$ExternalSyntheticLambda1 = TestKitchenAdapter.flushEventsRunnable;
                    SVGAndroidRenderer.submitInteraction$default(sVGAndroidRenderer, "click", simpleName, null, "article_open", TestKitchenAdapter.getPageData$default(historyEntry.getTitle()), null, 212);
                    Fragment fragment = homeFragment.mParentFragment;
                    MainFragment mainFragment = fragment instanceof MainFragment ? (MainFragment) fragment : null;
                    if (mainFragment != null) {
                        mainFragment.onFeedSelectPage(historyEntry, false);
                    }
                } else {
                    final int i4 = 1;
                    if (homeAction instanceof HomeAction.PageBookmarkClick) {
                        SVGAndroidRenderer sVGAndroidRenderer2 = homeFragment.instrument;
                        HomeAction.PageBookmarkClick pageBookmarkClick = (HomeAction.PageBookmarkClick) homeAction;
                        HistoryEntry historyEntry2 = pageBookmarkClick.historyEntry;
                        String simpleName2 = pageBookmarkClick.card.getClass().getSimpleName();
                        DeviceUtil$$ExternalSyntheticLambda1 deviceUtil$$ExternalSyntheticLambda12 = TestKitchenAdapter.flushEventsRunnable;
                        SVGAndroidRenderer.submitInteraction$default(sVGAndroidRenderer2, "click", simpleName2, null, "article_save", TestKitchenAdapter.getPageData$default(historyEntry2.getTitle()), null, 212);
                        Fragment fragment2 = homeFragment.mParentFragment;
                        MainFragment mainFragment2 = fragment2 instanceof MainFragment ? (MainFragment) fragment2 : null;
                        if (mainFragment2 != null) {
                            List list = ReadingListBehaviorsUtil.allReadingLists;
                            ReadingListBehaviorsUtil.addToDefaultList(mainFragment2.requireActivity(), historyEntry2.getTitle(), true, Constants.InvokeSource.FEED, null);
                        }
                    } else if (homeAction instanceof HomeAction.PageShareClick) {
                        SVGAndroidRenderer sVGAndroidRenderer3 = homeFragment.instrument;
                        HomeAction.PageShareClick pageShareClick = (HomeAction.PageShareClick) homeAction;
                        HistoryEntry historyEntry3 = pageShareClick.historyEntry;
                        String simpleName3 = pageShareClick.card.getClass().getSimpleName();
                        DeviceUtil$$ExternalSyntheticLambda1 deviceUtil$$ExternalSyntheticLambda13 = TestKitchenAdapter.flushEventsRunnable;
                        SVGAndroidRenderer.submitInteraction$default(sVGAndroidRenderer3, "click", simpleName3, null, "article_share", TestKitchenAdapter.getPageData$default(historyEntry3.getTitle()), null, 212);
                        ShareUtil.shareText$default(homeFragment.requireContext(), historyEntry3.getTitle());
                    } else {
                        final int i5 = 2;
                        if (homeAction instanceof HomeAction.PageOverflowClick) {
                            HomeAction.PageOverflowClick pageOverflowClick = (HomeAction.PageOverflowClick) homeAction;
                            final Card card3 = pageOverflowClick.card;
                            ((PageOverflowMenuViewModel) builder.getValue()).onPageOverflowClick(homeFragment.requireContext(), wikiSite, pageOverflowClick.pageSummary, pageOverflowClick.source, pageOverflowClick.menuKey, new Function1() { // from class: org.wikipedia.feed.HomeFragment$$ExternalSyntheticLambda11
                                @Override // kotlin.jvm.functions.Function1
                                public final Object invoke(Object obj2) {
                                    MainFragment mainFragment3;
                                    int i6 = i2;
                                    Unit unit = Unit.INSTANCE;
                                    Card card4 = card3;
                                    HomeFragment homeFragment2 = homeFragment;
                                    HistoryEntry historyEntry4 = (HistoryEntry) obj2;
                                    switch (i6) {
                                        case 0:
                                            historyEntry4.getClass();
                                            SVGAndroidRenderer sVGAndroidRenderer4 = homeFragment2.instrument;
                                            String simpleName4 = card4.getClass().getSimpleName();
                                            DeviceUtil$$ExternalSyntheticLambda1 deviceUtil$$ExternalSyntheticLambda14 = TestKitchenAdapter.flushEventsRunnable;
                                            SVGAndroidRenderer.submitInteraction$default(sVGAndroidRenderer4, "click", simpleName4, "feed_item_overflow", "article_open", TestKitchenAdapter.getPageData$default(historyEntry4.getTitle()), null, 208);
                                            Fragment fragment3 = homeFragment2.mParentFragment;
                                            mainFragment3 = fragment3 instanceof MainFragment ? (MainFragment) fragment3 : null;
                                            if (mainFragment3 != null) {
                                                mainFragment3.onFeedSelectPage(historyEntry4, false);
                                                break;
                                            }
                                            break;
                                        case 1:
                                            historyEntry4.getClass();
                                            SVGAndroidRenderer sVGAndroidRenderer5 = homeFragment2.instrument;
                                            String simpleName5 = card4.getClass().getSimpleName();
                                            DeviceUtil$$ExternalSyntheticLambda1 deviceUtil$$ExternalSyntheticLambda15 = TestKitchenAdapter.flushEventsRunnable;
                                            SVGAndroidRenderer.submitInteraction$default(sVGAndroidRenderer5, "click", simpleName5, "feed_item_overflow", "article_open_new_tab", TestKitchenAdapter.getPageData$default(historyEntry4.getTitle()), null, 208);
                                            Fragment fragment4 = homeFragment2.mParentFragment;
                                            mainFragment3 = fragment4 instanceof MainFragment ? (MainFragment) fragment4 : null;
                                            if (mainFragment3 != null) {
                                                mainFragment3.onFeedSelectPage(historyEntry4, true);
                                            }
                                            homeFragment2.getViewModel().updateTabCount(true);
                                            break;
                                        case 2:
                                            historyEntry4.getClass();
                                            SVGAndroidRenderer sVGAndroidRenderer6 = homeFragment2.instrument;
                                            String simpleName6 = card4.getClass().getSimpleName();
                                            DeviceUtil$$ExternalSyntheticLambda1 deviceUtil$$ExternalSyntheticLambda16 = TestKitchenAdapter.flushEventsRunnable;
                                            SVGAndroidRenderer.submitInteraction$default(sVGAndroidRenderer6, "click", simpleName6, "feed_item_overflow", "article_share", TestKitchenAdapter.getPageData$default(historyEntry4.getTitle()), null, 208);
                                            Fragment fragment5 = homeFragment2.mParentFragment;
                                            mainFragment3 = fragment5 instanceof MainFragment ? (MainFragment) fragment5 : null;
                                            if (mainFragment3 != null) {
                                                ShareUtil.shareText(mainFragment3.requireContext(), historyEntry4.getTitle().getDisplayText(), historyEntry4.getTitle().getUri());
                                                break;
                                            }
                                            break;
                                        default:
                                            historyEntry4.getClass();
                                            SVGAndroidRenderer sVGAndroidRenderer7 = homeFragment2.instrument;
                                            String simpleName7 = card4.getClass().getSimpleName();
                                            DeviceUtil$$ExternalSyntheticLambda1 deviceUtil$$ExternalSyntheticLambda17 = TestKitchenAdapter.flushEventsRunnable;
                                            SVGAndroidRenderer.submitInteraction$default(sVGAndroidRenderer7, "click", simpleName7, "feed_item_overflow", "article_copy_link", TestKitchenAdapter.getPageData$default(historyEntry4.getTitle()), null, 208);
                                            Fragment fragment6 = homeFragment2.mParentFragment;
                                            MainFragment mainFragment4 = fragment6 instanceof MainFragment ? (MainFragment) fragment6 : null;
                                            if (mainFragment4 != null) {
                                                Context requireContext = mainFragment4.requireContext();
                                                String uri = historyEntry4.getTitle().getUri();
                                                ClipboardManager clipboardManager = (ClipboardManager) requireContext.getSystemService(ClipboardManager.class);
                                                if (clipboardManager != null) {
                                                    clipboardManager.setPrimaryClip(ClipData.newPlainText(null, uri));
                                                }
                                                ShareUtil.showMessage(mainFragment4.requireActivity(), R.string.address_copied);
                                                break;
                                            }
                                            break;
                                    }
                                    return unit;
                                }
                            }, new Function1() { // from class: org.wikipedia.feed.HomeFragment$$ExternalSyntheticLambda11
                                @Override // kotlin.jvm.functions.Function1
                                public final Object invoke(Object obj2) {
                                    MainFragment mainFragment3;
                                    int i6 = i4;
                                    Unit unit = Unit.INSTANCE;
                                    Card card4 = card3;
                                    HomeFragment homeFragment2 = homeFragment;
                                    HistoryEntry historyEntry4 = (HistoryEntry) obj2;
                                    switch (i6) {
                                        case 0:
                                            historyEntry4.getClass();
                                            SVGAndroidRenderer sVGAndroidRenderer4 = homeFragment2.instrument;
                                            String simpleName4 = card4.getClass().getSimpleName();
                                            DeviceUtil$$ExternalSyntheticLambda1 deviceUtil$$ExternalSyntheticLambda14 = TestKitchenAdapter.flushEventsRunnable;
                                            SVGAndroidRenderer.submitInteraction$default(sVGAndroidRenderer4, "click", simpleName4, "feed_item_overflow", "article_open", TestKitchenAdapter.getPageData$default(historyEntry4.getTitle()), null, 208);
                                            Fragment fragment3 = homeFragment2.mParentFragment;
                                            mainFragment3 = fragment3 instanceof MainFragment ? (MainFragment) fragment3 : null;
                                            if (mainFragment3 != null) {
                                                mainFragment3.onFeedSelectPage(historyEntry4, false);
                                                break;
                                            }
                                            break;
                                        case 1:
                                            historyEntry4.getClass();
                                            SVGAndroidRenderer sVGAndroidRenderer5 = homeFragment2.instrument;
                                            String simpleName5 = card4.getClass().getSimpleName();
                                            DeviceUtil$$ExternalSyntheticLambda1 deviceUtil$$ExternalSyntheticLambda15 = TestKitchenAdapter.flushEventsRunnable;
                                            SVGAndroidRenderer.submitInteraction$default(sVGAndroidRenderer5, "click", simpleName5, "feed_item_overflow", "article_open_new_tab", TestKitchenAdapter.getPageData$default(historyEntry4.getTitle()), null, 208);
                                            Fragment fragment4 = homeFragment2.mParentFragment;
                                            mainFragment3 = fragment4 instanceof MainFragment ? (MainFragment) fragment4 : null;
                                            if (mainFragment3 != null) {
                                                mainFragment3.onFeedSelectPage(historyEntry4, true);
                                            }
                                            homeFragment2.getViewModel().updateTabCount(true);
                                            break;
                                        case 2:
                                            historyEntry4.getClass();
                                            SVGAndroidRenderer sVGAndroidRenderer6 = homeFragment2.instrument;
                                            String simpleName6 = card4.getClass().getSimpleName();
                                            DeviceUtil$$ExternalSyntheticLambda1 deviceUtil$$ExternalSyntheticLambda16 = TestKitchenAdapter.flushEventsRunnable;
                                            SVGAndroidRenderer.submitInteraction$default(sVGAndroidRenderer6, "click", simpleName6, "feed_item_overflow", "article_share", TestKitchenAdapter.getPageData$default(historyEntry4.getTitle()), null, 208);
                                            Fragment fragment5 = homeFragment2.mParentFragment;
                                            mainFragment3 = fragment5 instanceof MainFragment ? (MainFragment) fragment5 : null;
                                            if (mainFragment3 != null) {
                                                ShareUtil.shareText(mainFragment3.requireContext(), historyEntry4.getTitle().getDisplayText(), historyEntry4.getTitle().getUri());
                                                break;
                                            }
                                            break;
                                        default:
                                            historyEntry4.getClass();
                                            SVGAndroidRenderer sVGAndroidRenderer7 = homeFragment2.instrument;
                                            String simpleName7 = card4.getClass().getSimpleName();
                                            DeviceUtil$$ExternalSyntheticLambda1 deviceUtil$$ExternalSyntheticLambda17 = TestKitchenAdapter.flushEventsRunnable;
                                            SVGAndroidRenderer.submitInteraction$default(sVGAndroidRenderer7, "click", simpleName7, "feed_item_overflow", "article_copy_link", TestKitchenAdapter.getPageData$default(historyEntry4.getTitle()), null, 208);
                                            Fragment fragment6 = homeFragment2.mParentFragment;
                                            MainFragment mainFragment4 = fragment6 instanceof MainFragment ? (MainFragment) fragment6 : null;
                                            if (mainFragment4 != null) {
                                                Context requireContext = mainFragment4.requireContext();
                                                String uri = historyEntry4.getTitle().getUri();
                                                ClipboardManager clipboardManager = (ClipboardManager) requireContext.getSystemService(ClipboardManager.class);
                                                if (clipboardManager != null) {
                                                    clipboardManager.setPrimaryClip(ClipData.newPlainText(null, uri));
                                                }
                                                ShareUtil.showMessage(mainFragment4.requireActivity(), R.string.address_copied);
                                                break;
                                            }
                                            break;
                                    }
                                    return unit;
                                }
                            }, new Function2() { // from class: org.wikipedia.feed.HomeFragment$$ExternalSyntheticLambda13
                                @Override // kotlin.jvm.functions.Function2
                                public final Object invoke(Object obj2, Object obj3) {
                                    MainFragment mainFragment3;
                                    int i6 = i2;
                                    Unit unit = Unit.INSTANCE;
                                    Card card4 = card3;
                                    HomeFragment homeFragment2 = homeFragment;
                                    switch (i6) {
                                        case 0:
                                            HistoryEntry historyEntry4 = (HistoryEntry) obj2;
                                            boolean booleanValue = ((Boolean) obj3).booleanValue();
                                            historyEntry4.getClass();
                                            SVGAndroidRenderer sVGAndroidRenderer4 = homeFragment2.instrument;
                                            String simpleName4 = card4.getClass().getSimpleName();
                                            DeviceUtil$$ExternalSyntheticLambda1 deviceUtil$$ExternalSyntheticLambda14 = TestKitchenAdapter.flushEventsRunnable;
                                            SVGAndroidRenderer.submitInteraction$default(sVGAndroidRenderer4, "click", simpleName4, "feed_item_overflow", "article_save", TestKitchenAdapter.getPageData$default(historyEntry4.getTitle()), null, 208);
                                            Fragment fragment3 = homeFragment2.mParentFragment;
                                            MainFragment mainFragment4 = fragment3 instanceof MainFragment ? (MainFragment) fragment3 : null;
                                            if (mainFragment4 != null) {
                                                List list2 = ReadingListBehaviorsUtil.allReadingLists;
                                                ReadingListBehaviorsUtil.addToDefaultList(mainFragment4.requireActivity(), historyEntry4.getTitle(), booleanValue, Constants.InvokeSource.FEED, null);
                                                break;
                                            }
                                            break;
                                        case 1:
                                            long longValue = ((Long) obj2).longValue();
                                            HistoryEntry historyEntry5 = (HistoryEntry) obj3;
                                            historyEntry5.getClass();
                                            SVGAndroidRenderer sVGAndroidRenderer5 = homeFragment2.instrument;
                                            String simpleName5 = card4.getClass().getSimpleName();
                                            DeviceUtil$$ExternalSyntheticLambda1 deviceUtil$$ExternalSyntheticLambda15 = TestKitchenAdapter.flushEventsRunnable;
                                            SVGAndroidRenderer.submitInteraction$default(sVGAndroidRenderer5, "click", simpleName5, "feed_item_overflow", "article_move", TestKitchenAdapter.getPageData$default(historyEntry5.getTitle()), null, 208);
                                            Fragment fragment4 = homeFragment2.mParentFragment;
                                            mainFragment3 = fragment4 instanceof MainFragment ? (MainFragment) fragment4 : null;
                                            if (mainFragment3 != null) {
                                                List list3 = ReadingListBehaviorsUtil.allReadingLists;
                                                ReadingListBehaviorsUtil.moveToList(mainFragment3.requireActivity(), longValue, historyEntry5.getTitle(), Constants.InvokeSource.FEED, true, null);
                                                break;
                                            }
                                            break;
                                        default:
                                            HistoryEntry historyEntry6 = (HistoryEntry) obj2;
                                            List list4 = (List) obj3;
                                            historyEntry6.getClass();
                                            list4.getClass();
                                            SVGAndroidRenderer sVGAndroidRenderer6 = homeFragment2.instrument;
                                            String simpleName6 = card4.getClass().getSimpleName();
                                            DeviceUtil$$ExternalSyntheticLambda1 deviceUtil$$ExternalSyntheticLambda16 = TestKitchenAdapter.flushEventsRunnable;
                                            SVGAndroidRenderer.submitInteraction$default(sVGAndroidRenderer6, "click", simpleName6, "feed_item_overflow", "article_remove", TestKitchenAdapter.getPageData$default(historyEntry6.getTitle()), null, 208);
                                            Fragment fragment5 = homeFragment2.mParentFragment;
                                            mainFragment3 = fragment5 instanceof MainFragment ? (MainFragment) fragment5 : null;
                                            if (mainFragment3 != null) {
                                                new Dispatcher$promoteAndExecute$Effects(list4).deleteOrShowDialog(mainFragment3.requireActivity(), new TextLinkScope$$ExternalSyntheticLambda3(7, mainFragment3, historyEntry6));
                                                break;
                                            }
                                            break;
                                    }
                                    return unit;
                                }
                            }, new Function2() { // from class: org.wikipedia.feed.HomeFragment$$ExternalSyntheticLambda13
                                @Override // kotlin.jvm.functions.Function2
                                public final Object invoke(Object obj2, Object obj3) {
                                    MainFragment mainFragment3;
                                    int i6 = i4;
                                    Unit unit = Unit.INSTANCE;
                                    Card card4 = card3;
                                    HomeFragment homeFragment2 = homeFragment;
                                    switch (i6) {
                                        case 0:
                                            HistoryEntry historyEntry4 = (HistoryEntry) obj2;
                                            boolean booleanValue = ((Boolean) obj3).booleanValue();
                                            historyEntry4.getClass();
                                            SVGAndroidRenderer sVGAndroidRenderer4 = homeFragment2.instrument;
                                            String simpleName4 = card4.getClass().getSimpleName();
                                            DeviceUtil$$ExternalSyntheticLambda1 deviceUtil$$ExternalSyntheticLambda14 = TestKitchenAdapter.flushEventsRunnable;
                                            SVGAndroidRenderer.submitInteraction$default(sVGAndroidRenderer4, "click", simpleName4, "feed_item_overflow", "article_save", TestKitchenAdapter.getPageData$default(historyEntry4.getTitle()), null, 208);
                                            Fragment fragment3 = homeFragment2.mParentFragment;
                                            MainFragment mainFragment4 = fragment3 instanceof MainFragment ? (MainFragment) fragment3 : null;
                                            if (mainFragment4 != null) {
                                                List list2 = ReadingListBehaviorsUtil.allReadingLists;
                                                ReadingListBehaviorsUtil.addToDefaultList(mainFragment4.requireActivity(), historyEntry4.getTitle(), booleanValue, Constants.InvokeSource.FEED, null);
                                                break;
                                            }
                                            break;
                                        case 1:
                                            long longValue = ((Long) obj2).longValue();
                                            HistoryEntry historyEntry5 = (HistoryEntry) obj3;
                                            historyEntry5.getClass();
                                            SVGAndroidRenderer sVGAndroidRenderer5 = homeFragment2.instrument;
                                            String simpleName5 = card4.getClass().getSimpleName();
                                            DeviceUtil$$ExternalSyntheticLambda1 deviceUtil$$ExternalSyntheticLambda15 = TestKitchenAdapter.flushEventsRunnable;
                                            SVGAndroidRenderer.submitInteraction$default(sVGAndroidRenderer5, "click", simpleName5, "feed_item_overflow", "article_move", TestKitchenAdapter.getPageData$default(historyEntry5.getTitle()), null, 208);
                                            Fragment fragment4 = homeFragment2.mParentFragment;
                                            mainFragment3 = fragment4 instanceof MainFragment ? (MainFragment) fragment4 : null;
                                            if (mainFragment3 != null) {
                                                List list3 = ReadingListBehaviorsUtil.allReadingLists;
                                                ReadingListBehaviorsUtil.moveToList(mainFragment3.requireActivity(), longValue, historyEntry5.getTitle(), Constants.InvokeSource.FEED, true, null);
                                                break;
                                            }
                                            break;
                                        default:
                                            HistoryEntry historyEntry6 = (HistoryEntry) obj2;
                                            List list4 = (List) obj3;
                                            historyEntry6.getClass();
                                            list4.getClass();
                                            SVGAndroidRenderer sVGAndroidRenderer6 = homeFragment2.instrument;
                                            String simpleName6 = card4.getClass().getSimpleName();
                                            DeviceUtil$$ExternalSyntheticLambda1 deviceUtil$$ExternalSyntheticLambda16 = TestKitchenAdapter.flushEventsRunnable;
                                            SVGAndroidRenderer.submitInteraction$default(sVGAndroidRenderer6, "click", simpleName6, "feed_item_overflow", "article_remove", TestKitchenAdapter.getPageData$default(historyEntry6.getTitle()), null, 208);
                                            Fragment fragment5 = homeFragment2.mParentFragment;
                                            mainFragment3 = fragment5 instanceof MainFragment ? (MainFragment) fragment5 : null;
                                            if (mainFragment3 != null) {
                                                new Dispatcher$promoteAndExecute$Effects(list4).deleteOrShowDialog(mainFragment3.requireActivity(), new TextLinkScope$$ExternalSyntheticLambda3(7, mainFragment3, historyEntry6));
                                                break;
                                            }
                                            break;
                                    }
                                    return unit;
                                }
                            }, new Function2() { // from class: org.wikipedia.feed.HomeFragment$$ExternalSyntheticLambda13
                                @Override // kotlin.jvm.functions.Function2
                                public final Object invoke(Object obj2, Object obj3) {
                                    MainFragment mainFragment3;
                                    int i6 = i5;
                                    Unit unit = Unit.INSTANCE;
                                    Card card4 = card3;
                                    HomeFragment homeFragment2 = homeFragment;
                                    switch (i6) {
                                        case 0:
                                            HistoryEntry historyEntry4 = (HistoryEntry) obj2;
                                            boolean booleanValue = ((Boolean) obj3).booleanValue();
                                            historyEntry4.getClass();
                                            SVGAndroidRenderer sVGAndroidRenderer4 = homeFragment2.instrument;
                                            String simpleName4 = card4.getClass().getSimpleName();
                                            DeviceUtil$$ExternalSyntheticLambda1 deviceUtil$$ExternalSyntheticLambda14 = TestKitchenAdapter.flushEventsRunnable;
                                            SVGAndroidRenderer.submitInteraction$default(sVGAndroidRenderer4, "click", simpleName4, "feed_item_overflow", "article_save", TestKitchenAdapter.getPageData$default(historyEntry4.getTitle()), null, 208);
                                            Fragment fragment3 = homeFragment2.mParentFragment;
                                            MainFragment mainFragment4 = fragment3 instanceof MainFragment ? (MainFragment) fragment3 : null;
                                            if (mainFragment4 != null) {
                                                List list2 = ReadingListBehaviorsUtil.allReadingLists;
                                                ReadingListBehaviorsUtil.addToDefaultList(mainFragment4.requireActivity(), historyEntry4.getTitle(), booleanValue, Constants.InvokeSource.FEED, null);
                                                break;
                                            }
                                            break;
                                        case 1:
                                            long longValue = ((Long) obj2).longValue();
                                            HistoryEntry historyEntry5 = (HistoryEntry) obj3;
                                            historyEntry5.getClass();
                                            SVGAndroidRenderer sVGAndroidRenderer5 = homeFragment2.instrument;
                                            String simpleName5 = card4.getClass().getSimpleName();
                                            DeviceUtil$$ExternalSyntheticLambda1 deviceUtil$$ExternalSyntheticLambda15 = TestKitchenAdapter.flushEventsRunnable;
                                            SVGAndroidRenderer.submitInteraction$default(sVGAndroidRenderer5, "click", simpleName5, "feed_item_overflow", "article_move", TestKitchenAdapter.getPageData$default(historyEntry5.getTitle()), null, 208);
                                            Fragment fragment4 = homeFragment2.mParentFragment;
                                            mainFragment3 = fragment4 instanceof MainFragment ? (MainFragment) fragment4 : null;
                                            if (mainFragment3 != null) {
                                                List list3 = ReadingListBehaviorsUtil.allReadingLists;
                                                ReadingListBehaviorsUtil.moveToList(mainFragment3.requireActivity(), longValue, historyEntry5.getTitle(), Constants.InvokeSource.FEED, true, null);
                                                break;
                                            }
                                            break;
                                        default:
                                            HistoryEntry historyEntry6 = (HistoryEntry) obj2;
                                            List list4 = (List) obj3;
                                            historyEntry6.getClass();
                                            list4.getClass();
                                            SVGAndroidRenderer sVGAndroidRenderer6 = homeFragment2.instrument;
                                            String simpleName6 = card4.getClass().getSimpleName();
                                            DeviceUtil$$ExternalSyntheticLambda1 deviceUtil$$ExternalSyntheticLambda16 = TestKitchenAdapter.flushEventsRunnable;
                                            SVGAndroidRenderer.submitInteraction$default(sVGAndroidRenderer6, "click", simpleName6, "feed_item_overflow", "article_remove", TestKitchenAdapter.getPageData$default(historyEntry6.getTitle()), null, 208);
                                            Fragment fragment5 = homeFragment2.mParentFragment;
                                            mainFragment3 = fragment5 instanceof MainFragment ? (MainFragment) fragment5 : null;
                                            if (mainFragment3 != null) {
                                                new Dispatcher$promoteAndExecute$Effects(list4).deleteOrShowDialog(mainFragment3.requireActivity(), new TextLinkScope$$ExternalSyntheticLambda3(7, mainFragment3, historyEntry6));
                                                break;
                                            }
                                            break;
                                    }
                                    return unit;
                                }
                            }, new Function1() { // from class: org.wikipedia.feed.HomeFragment$$ExternalSyntheticLambda11
                                @Override // kotlin.jvm.functions.Function1
                                public final Object invoke(Object obj2) {
                                    MainFragment mainFragment3;
                                    int i6 = i5;
                                    Unit unit = Unit.INSTANCE;
                                    Card card4 = card3;
                                    HomeFragment homeFragment2 = homeFragment;
                                    HistoryEntry historyEntry4 = (HistoryEntry) obj2;
                                    switch (i6) {
                                        case 0:
                                            historyEntry4.getClass();
                                            SVGAndroidRenderer sVGAndroidRenderer4 = homeFragment2.instrument;
                                            String simpleName4 = card4.getClass().getSimpleName();
                                            DeviceUtil$$ExternalSyntheticLambda1 deviceUtil$$ExternalSyntheticLambda14 = TestKitchenAdapter.flushEventsRunnable;
                                            SVGAndroidRenderer.submitInteraction$default(sVGAndroidRenderer4, "click", simpleName4, "feed_item_overflow", "article_open", TestKitchenAdapter.getPageData$default(historyEntry4.getTitle()), null, 208);
                                            Fragment fragment3 = homeFragment2.mParentFragment;
                                            mainFragment3 = fragment3 instanceof MainFragment ? (MainFragment) fragment3 : null;
                                            if (mainFragment3 != null) {
                                                mainFragment3.onFeedSelectPage(historyEntry4, false);
                                                break;
                                            }
                                            break;
                                        case 1:
                                            historyEntry4.getClass();
                                            SVGAndroidRenderer sVGAndroidRenderer5 = homeFragment2.instrument;
                                            String simpleName5 = card4.getClass().getSimpleName();
                                            DeviceUtil$$ExternalSyntheticLambda1 deviceUtil$$ExternalSyntheticLambda15 = TestKitchenAdapter.flushEventsRunnable;
                                            SVGAndroidRenderer.submitInteraction$default(sVGAndroidRenderer5, "click", simpleName5, "feed_item_overflow", "article_open_new_tab", TestKitchenAdapter.getPageData$default(historyEntry4.getTitle()), null, 208);
                                            Fragment fragment4 = homeFragment2.mParentFragment;
                                            mainFragment3 = fragment4 instanceof MainFragment ? (MainFragment) fragment4 : null;
                                            if (mainFragment3 != null) {
                                                mainFragment3.onFeedSelectPage(historyEntry4, true);
                                            }
                                            homeFragment2.getViewModel().updateTabCount(true);
                                            break;
                                        case 2:
                                            historyEntry4.getClass();
                                            SVGAndroidRenderer sVGAndroidRenderer6 = homeFragment2.instrument;
                                            String simpleName6 = card4.getClass().getSimpleName();
                                            DeviceUtil$$ExternalSyntheticLambda1 deviceUtil$$ExternalSyntheticLambda16 = TestKitchenAdapter.flushEventsRunnable;
                                            SVGAndroidRenderer.submitInteraction$default(sVGAndroidRenderer6, "click", simpleName6, "feed_item_overflow", "article_share", TestKitchenAdapter.getPageData$default(historyEntry4.getTitle()), null, 208);
                                            Fragment fragment5 = homeFragment2.mParentFragment;
                                            mainFragment3 = fragment5 instanceof MainFragment ? (MainFragment) fragment5 : null;
                                            if (mainFragment3 != null) {
                                                ShareUtil.shareText(mainFragment3.requireContext(), historyEntry4.getTitle().getDisplayText(), historyEntry4.getTitle().getUri());
                                                break;
                                            }
                                            break;
                                        default:
                                            historyEntry4.getClass();
                                            SVGAndroidRenderer sVGAndroidRenderer7 = homeFragment2.instrument;
                                            String simpleName7 = card4.getClass().getSimpleName();
                                            DeviceUtil$$ExternalSyntheticLambda1 deviceUtil$$ExternalSyntheticLambda17 = TestKitchenAdapter.flushEventsRunnable;
                                            SVGAndroidRenderer.submitInteraction$default(sVGAndroidRenderer7, "click", simpleName7, "feed_item_overflow", "article_copy_link", TestKitchenAdapter.getPageData$default(historyEntry4.getTitle()), null, 208);
                                            Fragment fragment6 = homeFragment2.mParentFragment;
                                            MainFragment mainFragment4 = fragment6 instanceof MainFragment ? (MainFragment) fragment6 : null;
                                            if (mainFragment4 != null) {
                                                Context requireContext = mainFragment4.requireContext();
                                                String uri = historyEntry4.getTitle().getUri();
                                                ClipboardManager clipboardManager = (ClipboardManager) requireContext.getSystemService(ClipboardManager.class);
                                                if (clipboardManager != null) {
                                                    clipboardManager.setPrimaryClip(ClipData.newPlainText(null, uri));
                                                }
                                                ShareUtil.showMessage(mainFragment4.requireActivity(), R.string.address_copied);
                                                break;
                                            }
                                            break;
                                    }
                                    return unit;
                                }
                            }, new Function1() { // from class: org.wikipedia.feed.HomeFragment$$ExternalSyntheticLambda11
                                @Override // kotlin.jvm.functions.Function1
                                public final Object invoke(Object obj2) {
                                    MainFragment mainFragment3;
                                    int i6 = i;
                                    Unit unit = Unit.INSTANCE;
                                    Card card4 = card3;
                                    HomeFragment homeFragment2 = homeFragment;
                                    HistoryEntry historyEntry4 = (HistoryEntry) obj2;
                                    switch (i6) {
                                        case 0:
                                            historyEntry4.getClass();
                                            SVGAndroidRenderer sVGAndroidRenderer4 = homeFragment2.instrument;
                                            String simpleName4 = card4.getClass().getSimpleName();
                                            DeviceUtil$$ExternalSyntheticLambda1 deviceUtil$$ExternalSyntheticLambda14 = TestKitchenAdapter.flushEventsRunnable;
                                            SVGAndroidRenderer.submitInteraction$default(sVGAndroidRenderer4, "click", simpleName4, "feed_item_overflow", "article_open", TestKitchenAdapter.getPageData$default(historyEntry4.getTitle()), null, 208);
                                            Fragment fragment3 = homeFragment2.mParentFragment;
                                            mainFragment3 = fragment3 instanceof MainFragment ? (MainFragment) fragment3 : null;
                                            if (mainFragment3 != null) {
                                                mainFragment3.onFeedSelectPage(historyEntry4, false);
                                                break;
                                            }
                                            break;
                                        case 1:
                                            historyEntry4.getClass();
                                            SVGAndroidRenderer sVGAndroidRenderer5 = homeFragment2.instrument;
                                            String simpleName5 = card4.getClass().getSimpleName();
                                            DeviceUtil$$ExternalSyntheticLambda1 deviceUtil$$ExternalSyntheticLambda15 = TestKitchenAdapter.flushEventsRunnable;
                                            SVGAndroidRenderer.submitInteraction$default(sVGAndroidRenderer5, "click", simpleName5, "feed_item_overflow", "article_open_new_tab", TestKitchenAdapter.getPageData$default(historyEntry4.getTitle()), null, 208);
                                            Fragment fragment4 = homeFragment2.mParentFragment;
                                            mainFragment3 = fragment4 instanceof MainFragment ? (MainFragment) fragment4 : null;
                                            if (mainFragment3 != null) {
                                                mainFragment3.onFeedSelectPage(historyEntry4, true);
                                            }
                                            homeFragment2.getViewModel().updateTabCount(true);
                                            break;
                                        case 2:
                                            historyEntry4.getClass();
                                            SVGAndroidRenderer sVGAndroidRenderer6 = homeFragment2.instrument;
                                            String simpleName6 = card4.getClass().getSimpleName();
                                            DeviceUtil$$ExternalSyntheticLambda1 deviceUtil$$ExternalSyntheticLambda16 = TestKitchenAdapter.flushEventsRunnable;
                                            SVGAndroidRenderer.submitInteraction$default(sVGAndroidRenderer6, "click", simpleName6, "feed_item_overflow", "article_share", TestKitchenAdapter.getPageData$default(historyEntry4.getTitle()), null, 208);
                                            Fragment fragment5 = homeFragment2.mParentFragment;
                                            mainFragment3 = fragment5 instanceof MainFragment ? (MainFragment) fragment5 : null;
                                            if (mainFragment3 != null) {
                                                ShareUtil.shareText(mainFragment3.requireContext(), historyEntry4.getTitle().getDisplayText(), historyEntry4.getTitle().getUri());
                                                break;
                                            }
                                            break;
                                        default:
                                            historyEntry4.getClass();
                                            SVGAndroidRenderer sVGAndroidRenderer7 = homeFragment2.instrument;
                                            String simpleName7 = card4.getClass().getSimpleName();
                                            DeviceUtil$$ExternalSyntheticLambda1 deviceUtil$$ExternalSyntheticLambda17 = TestKitchenAdapter.flushEventsRunnable;
                                            SVGAndroidRenderer.submitInteraction$default(sVGAndroidRenderer7, "click", simpleName7, "feed_item_overflow", "article_copy_link", TestKitchenAdapter.getPageData$default(historyEntry4.getTitle()), null, 208);
                                            Fragment fragment6 = homeFragment2.mParentFragment;
                                            MainFragment mainFragment4 = fragment6 instanceof MainFragment ? (MainFragment) fragment6 : null;
                                            if (mainFragment4 != null) {
                                                Context requireContext = mainFragment4.requireContext();
                                                String uri = historyEntry4.getTitle().getUri();
                                                ClipboardManager clipboardManager = (ClipboardManager) requireContext.getSystemService(ClipboardManager.class);
                                                if (clipboardManager != null) {
                                                    clipboardManager.setPrimaryClip(ClipData.newPlainText(null, uri));
                                                }
                                                ShareUtil.showMessage(mainFragment4.requireActivity(), R.string.address_copied);
                                                break;
                                            }
                                            break;
                                    }
                                    return unit;
                                }
                            });
                        } else if (homeAction.equals(HomeAction.PageOverflowDismiss.INSTANCE)) {
                            ((PageOverflowMenuViewModel) builder.getValue()).pageOverflowMenuState$delegate.setValue(null);
                        } else if (homeAction instanceof HomeAction.NewsClick) {
                            HomeAction.NewsClick newsClick = (HomeAction.NewsClick) homeAction;
                            NewsItem newsItem = newsClick.newsItem;
                            NewsCard newsCard = newsClick.card;
                            SVGAndroidRenderer sVGAndroidRenderer4 = homeFragment.instrument;
                            Map singletonMap = Collections.singletonMap("index", Integer.valueOf(newsCard.news.indexOf(newsItem)));
                            singletonMap.getClass();
                            SVGAndroidRenderer.submitInteraction$default(sVGAndroidRenderer4, "click", "NewsCard", null, "NewsCard", null, singletonMap, 116);
                            Fragment fragment3 = homeFragment.mParentFragment;
                            MainFragment mainFragment3 = fragment3 instanceof MainFragment ? (MainFragment) fragment3 : null;
                            if (mainFragment3 != null) {
                                wikiSite.getClass();
                                int i6 = NewsActivity.$r8$clinit;
                                Intent putExtra = new Intent(mainFragment3.requireActivity(), (Class<?>) NewsActivity.class).putExtra("item", newsItem).putExtra("wikiSite", wikiSite);
                                putExtra.getClass();
                                mainFragment3.startActivity(putExtra, null);
                            }
                        } else if (homeAction instanceof HomeAction.ImageClick) {
                            FeaturedImageCard featuredImageCard = ((HomeAction.ImageClick) homeAction).card;
                            SVGAndroidRenderer sVGAndroidRenderer5 = homeFragment.instrument;
                            FeaturedImage featuredImage = featuredImageCard.featuredImage;
                            DeviceUtil$$ExternalSyntheticLambda1 deviceUtil$$ExternalSyntheticLambda14 = TestKitchenAdapter.flushEventsRunnable;
                            SVGAndroidRenderer.submitInteraction$default(sVGAndroidRenderer5, "click", "FeaturedImageCard", null, "article_open", TestKitchenAdapter.getPageData$default(featuredImage.toPageTitle()), null, 212);
                            Fragment fragment4 = homeFragment.mParentFragment;
                            MainFragment mainFragment4 = fragment4 instanceof MainFragment ? (MainFragment) fragment4 : null;
                            if (mainFragment4 != null) {
                                int i7 = FilePageActivity.$r8$clinit;
                                mainFragment4.startActivity(Path.Companion.newIntent((Context) mainFragment4.requireActivity(), featuredImage.toPageTitle(), true), null);
                            }
                        } else if (homeAction instanceof HomeAction.ImageShareClick) {
                            FeaturedImageCard featuredImageCard2 = ((HomeAction.ImageShareClick) homeAction).card;
                            SVGAndroidRenderer sVGAndroidRenderer6 = homeFragment.instrument;
                            FeaturedImage featuredImage2 = featuredImageCard2.featuredImage;
                            DeviceUtil$$ExternalSyntheticLambda1 deviceUtil$$ExternalSyntheticLambda15 = TestKitchenAdapter.flushEventsRunnable;
                            SVGAndroidRenderer.submitInteraction$default(sVGAndroidRenderer6, "click", "FeaturedImageCard", null, "share", TestKitchenAdapter.getPageData$default(featuredImage2.toPageTitle()), null, 212);
                            Fragment fragment5 = homeFragment.mParentFragment;
                            MainFragment mainFragment5 = fragment5 instanceof MainFragment ? (MainFragment) fragment5 : null;
                            if (mainFragment5 != null) {
                                int i8 = featuredImageCard2.age;
                                String str3 = featuredImage2.thumbnail.source;
                                String str4 = featuredImage2.original.source;
                                Context requireContext = mainFragment5.requireContext();
                                MainFragment$$ExternalSyntheticLambda7 mainFragment$$ExternalSyntheticLambda7 = new MainFragment$$ExternalSyntheticLambda7(mainFragment5, str3, i8, str4, 0);
                                if (Okio__OkioKt._implementation == null) {
                                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("ImageService has not been set, call ImageService.setImplementation() before using ImageService");
                                    return null;
                                }
                                ImageRequest.Builder builder2 = new ImageRequest.Builder(requireContext);
                                builder2.data = str3;
                                builder2.target = new DrawResult(mainFragment$$ExternalSyntheticLambda7);
                                SingletonImageLoader.get(requireContext).enqueue(builder2.build());
                            }
                        } else if (homeAction instanceof HomeAction.ImageDownloadClick) {
                            FeaturedImageCard featuredImageCard3 = ((HomeAction.ImageDownloadClick) homeAction).card;
                            SVGAndroidRenderer sVGAndroidRenderer7 = homeFragment.instrument;
                            FeaturedImage featuredImage3 = featuredImageCard3.featuredImage;
                            DeviceUtil$$ExternalSyntheticLambda1 deviceUtil$$ExternalSyntheticLambda16 = TestKitchenAdapter.flushEventsRunnable;
                            SVGAndroidRenderer.submitInteraction$default(sVGAndroidRenderer7, "click", "FeaturedImageCard", null, "download", TestKitchenAdapter.getPageData$default(featuredImage3.toPageTitle()), null, 212);
                            Fragment fragment6 = homeFragment.mParentFragment;
                            MainFragment mainFragment6 = fragment6 instanceof MainFragment ? (MainFragment) fragment6 : null;
                            if (mainFragment6 != null) {
                                mainFragment6.pendingDownloadImage = featuredImage3;
                                if (Build.VERSION.SDK_INT >= 33 || FileUtil.checkSelfPermission(mainFragment6.requireContext(), "android.permission.WRITE_EXTERNAL_STORAGE") == 0) {
                                    mainFragment6.download(featuredImage3);
                                } else {
                                    mainFragment6.requestPermissionLauncher.launch("android.permission.WRITE_EXTERNAL_STORAGE", null);
                                }
                            }
                        } else if (homeAction instanceof HomeAction.LanguageSelected) {
                            SVGAndroidRenderer sVGAndroidRenderer8 = homeFragment.instrument;
                            Pair pair = new Pair("selected_tab", homeTab.name());
                            String str5 = ((HomeAction.LanguageSelected) homeAction).languageCode;
                            SVGAndroidRenderer.submitInteraction$default(sVGAndroidRenderer8, "click", "language_menu", null, "language_change", null, MapsKt__MapsKt.mapOf(pair, new Pair("language_code", str5)), 116);
                            HomeViewModel viewModel = homeFragment.getViewModel();
                            Prefs prefs2 = Prefs.INSTANCE;
                            PrefsIoUtil.setString(R.string.preference_key_home_language_code, str5);
                            StateFlowImpl stateFlowImpl = viewModel._wikiSite;
                            WikiSite.Companion.getClass();
                            WikiSite forLanguageCode = WikiSite.Companion.forLanguageCode(str5);
                            stateFlowImpl.getClass();
                            stateFlowImpl.updateState(null, forLanguageCode);
                        } else if (homeAction.equals(HomeAction.ManageLanguagesClick.INSTANCE)) {
                            SVGAndroidRenderer sVGAndroidRenderer9 = homeFragment.instrument;
                            Map singletonMap2 = Collections.singletonMap("selected_tab", homeTab.name());
                            singletonMap2.getClass();
                            SVGAndroidRenderer.submitInteraction$default(sVGAndroidRenderer9, "click", "language_menu", null, "manage_languages", null, singletonMap2, 116);
                            AppCompatActivity requireActivity4 = homeFragment.requireActivity();
                            int i9 = WikipediaLanguagesActivity.$r8$clinit;
                            requireActivity4.startActivity(Cache.Companion.newIntent(homeFragment.requireContext(), Constants.InvokeSource.FEED));
                        } else if (homeAction instanceof HomeAction.CustomizeClick) {
                            Card card4 = ((HomeAction.CustomizeClick) homeAction).card;
                            if (card4 != null) {
                                SVGAndroidRenderer.submitInteraction$default(homeFragment.instrument, "click", card4.getClass().getSimpleName(), !(card4 instanceof EmptyForYouCard) ? "feed_overflow" : null, "feed_customize", null, null, 240);
                            }
                            if (card4 instanceof DiscoverCard) {
                                AppCompatActivity requireActivity5 = homeFragment.requireActivity();
                                int i10 = RecommendedReadingListSettingsActivity.$r8$clinit;
                                requireActivity5.startActivity(new Intent(homeFragment.requireContext(), (Class<?>) RecommendedReadingListSettingsActivity.class));
                            } else {
                                Fragment.AnonymousClass10 anonymousClass10 = homeFragment.customizeInterestsLauncher;
                                int i11 = PersonalizationActivity.$r8$clinit;
                                anonymousClass10.launch(PersonalizationScreenKt.newIntent(homeFragment.requireContext()), null);
                            }
                        } else if (homeAction.equals(HomeAction.TabClick.INSTANCE)) {
                            AppCompatActivity requireActivity6 = homeFragment.requireActivity();
                            int i12 = TabActivity.$r8$clinit;
                            requireActivity6.startActivity(new Intent(homeFragment.requireActivity(), (Class<?>) TabActivity.class));
                        } else if (homeAction.equals(HomeAction.UpdateTabCount.INSTANCE)) {
                            homeFragment.getViewModel().updateTabCount(false);
                        } else if (homeAction instanceof HomeAction.CardImpression) {
                            HomeAction.CardImpression cardImpression = (HomeAction.CardImpression) homeAction;
                            Card card5 = cardImpression.card;
                            int i13 = cardImpression.index;
                            if (homeFragment.cardImpressions.add(card5.getHideKey())) {
                                SVGAndroidRenderer sVGAndroidRenderer10 = homeFragment.instrument;
                                String simpleName4 = card5.getClass().getSimpleName();
                                Map singletonMap3 = Collections.singletonMap("card_index", Integer.valueOf(i13));
                                singletonMap3.getClass();
                                SVGAndroidRenderer.submitInteraction$default(sVGAndroidRenderer10, "impression", simpleName4, null, null, null, singletonMap3, 124);
                            }
                        } else if (homeAction instanceof HomeAction.CardFooterClick) {
                            Card card6 = ((HomeAction.CardFooterClick) homeAction).card;
                            if (card6 instanceof TopReadCard) {
                                SVGAndroidRenderer.submitInteraction$default(homeFragment.instrument, "click", card6.getClass().getSimpleName(), null, "more_top_read", null, null, 244);
                                int i14 = TopReadArticlesActivity.$r8$clinit;
                                TopReadCard topReadCard = (TopReadCard) card6;
                                Intent putExtra2 = new Intent(homeFragment.requireActivity(), (Class<?>) TopReadArticlesActivity.class).putExtra("item", new TopReadCard(topReadCard.articles, topReadCard.age, wikiSite));
                                putExtra2.getClass();
                                homeFragment.startActivity(putExtra2, null);
                            } else if (card6 instanceof OnThisDayCard) {
                                SVGAndroidRenderer.submitInteraction$default(homeFragment.instrument, "click", card6.getClass().getSimpleName(), null, "more_on_this_day", null, null, 244);
                                int i15 = OnThisDayActivity.$r8$clinit;
                                AppCompatActivity requireActivity7 = homeFragment.requireActivity();
                                int i16 = ((OnThisDayCard) card6).age;
                                Constants.InvokeSource invokeSource = Constants.InvokeSource.ON_THIS_DAY_CARD_FOOTER;
                                wikiSite.getClass();
                                invokeSource.getClass();
                                Intent putExtra3 = new Intent(requireActivity7, (Class<?>) OnThisDayActivity.class).putExtra("age", i16).putExtra("wikiSite", wikiSite).putExtra("year", -1).putExtra("invokeSource", invokeSource);
                                putExtra3.getClass();
                                homeFragment.startActivity(putExtra3, null);
                            } else if (card6 instanceof DidYouKnowCard) {
                                SVGAndroidRenderer.submitInteraction$default(homeFragment.instrument, "click", card6.getClass().getSimpleName(), null, "more_did_you_know", null, null, 244);
                                int i17 = DidYouKnowActivity.$r8$clinit;
                                AppCompatActivity requireActivity8 = homeFragment.requireActivity();
                                DidYouKnowCard didYouKnowCard = (DidYouKnowCard) card6;
                                WikiSite wikiSite2 = didYouKnowCard.site;
                                List list2 = didYouKnowCard.items;
                                wikiSite2.getClass();
                                list2.getClass();
                                Intent putExtra4 = new Intent(requireActivity8, (Class<?>) DidYouKnowActivity.class).putExtra("wikiSite", wikiSite2);
                                ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list2, 10));
                                Iterator it = list2.iterator();
                                while (it.hasNext()) {
                                    arrayList.add(((DidYouKnowItem) it.next()).html);
                                }
                                Intent putStringArrayListExtra = putExtra4.putStringArrayListExtra("did_you_know_items", new ArrayList<>(arrayList));
                                putStringArrayListExtra.getClass();
                                homeFragment.startActivity(putStringArrayListExtra, null);
                            }
                        } else if (homeAction.equals(HomeAction.NotificationClick.INSTANCE)) {
                            AppCompatActivity requireActivity9 = homeFragment.requireActivity();
                            int i18 = NotificationActivity.$r8$clinit;
                            requireActivity9.startActivity(Headers.Companion.newIntent(homeFragment.requireActivity()));
                        } else if (homeAction.equals(HomeAction.ManageModulesClick.INSTANCE)) {
                            SVGAndroidRenderer.submitInteraction$default(homeFragment.instrument, "click", "feed_empty", null, "customize_feed", null, null, 244);
                            int i19 = HomeFeedSettingsActivity.$r8$clinit;
                            Context requireContext2 = homeFragment.requireContext();
                            int i20 = HomeFragment.WhenMappings.$EnumSwitchMapping$0[homeTab.ordinal()];
                            if (i20 == 1) {
                                homeFeedSettingsStartDestination = HomeFeedSettingsStartDestination.COMMUNITY_MODULES;
                            } else {
                                if (i20 != 2) {
                                    ContextsKt$$ExternalSyntheticBUOutline0.m();
                                    return null;
                                }
                                homeFeedSettingsStartDestination = HomeFeedSettingsStartDestination.FOR_YOU_MODULES;
                            }
                            homeFeedSettingsStartDestination.getClass();
                            Intent putExtra5 = new Intent(requireContext2, (Class<?>) HomeFeedSettingsActivity.class).putExtra("start_destination", homeFeedSettingsStartDestination.name());
                            putExtra5.getClass();
                            homeFragment.requireActivity().startActivity(putExtra5);
                        } else if (homeAction.equals(HomeAction.ShuffleClick.INSTANCE)) {
                            SVGAndroidRenderer.submitInteraction$default(homeFragment.instrument, "click", null, null, "random_card_shuffle_button", null, null, 246);
                            int i21 = RandomActivity.$r8$clinit;
                            homeFragment.startActivity(RandomScreenKt.newIntent(homeFragment.requireActivity(), wikiSite, Constants.InvokeSource.FEED), null);
                        } else if (homeAction.equals(HomeAction.PlacesTeaserClick.INSTANCE)) {
                            SVGAndroidRenderer.submitInteraction$default(homeFragment.instrument, "click", "PlacesOfInterestLocationPromptCard", null, "go_to_places", null, null, 244);
                            AppCompatActivity requireActivity10 = homeFragment.requireActivity();
                            int i22 = PlacesActivity.$r8$clinit;
                            requireActivity10.startActivity(ByteString.Companion.newIntent(homeFragment.requireContext(), null, null));
                        } else if (homeAction.equals(HomeAction.DiscoverTeaserClick.INSTANCE)) {
                            SVGAndroidRenderer.submitInteraction$default(homeFragment.instrument, "click", null, null, "enable_discover_reading_list_button", null, null, 246);
                            AppCompatActivity requireActivity11 = homeFragment.requireActivity();
                            int i23 = RecommendedReadingListOnboardingActivity.$r8$clinit;
                            requireActivity11.startActivity(RecommendedReadingListHelper.newIntent$default(homeFragment.requireContext()));
                        } else if (homeAction.equals(HomeAction.SeeAllRecommendationsClick.INSTANCE)) {
                            SVGAndroidRenderer.submitInteraction$default(homeFragment.instrument, "click", null, null, "explore_all_recommendations_button", null, null, 246);
                            int i24 = ReadingListActivity.$r8$clinit;
                            homeFragment.startActivity(NodeUtils.newIntent(homeFragment.requireContext(), ReadingListMode.RECOMMENDED, null), null);
                        } else if (homeAction instanceof HomeAction.GameActionClick) {
                            WikiGame$OnThisDayGame wikiGame$OnThisDayGame = ((HomeAction.GameActionClick) homeAction).wikiGame;
                            if (!(wikiGame$OnThisDayGame instanceof WikiGame$OnThisDayGame)) {
                                ContextsKt$$ExternalSyntheticBUOutline0.m();
                                return null;
                            }
                            OnThisDayCardGameState onThisDayCardGameState = wikiGame$OnThisDayGame.state;
                            boolean z = onThisDayCardGameState instanceof OnThisDayCardGameState.Completed;
                            if (z) {
                                i2 = 1;
                            } else if (!(onThisDayCardGameState instanceof OnThisDayCardGameState.InProgress) && !(onThisDayCardGameState instanceof OnThisDayCardGameState.Preview)) {
                                ContextsKt$$ExternalSyntheticBUOutline0.m();
                                return null;
                            }
                            if (onThisDayCardGameState instanceof OnThisDayCardGameState.Preview) {
                                str = "play_click";
                            } else if (onThisDayCardGameState instanceof OnThisDayCardGameState.InProgress) {
                                str = "continue_click";
                            } else {
                                if (!z) {
                                    ContextsKt$$ExternalSyntheticBUOutline0.m();
                                    return null;
                                }
                                str = "review_click";
                            }
                            String str6 = str;
                            SVGAndroidRenderer sVGAndroidRenderer11 = homeFragment.instrument;
                            Map singletonMap4 = Collections.singletonMap("game", WikiGames.WHICH_CAME_FIRST.name());
                            singletonMap4.getClass();
                            SVGAndroidRenderer.submitInteraction$default(sVGAndroidRenderer11, "click", "WikiGameCard", null, str6, null, singletonMap4, 116);
                            AppCompatActivity requireActivity12 = homeFragment.requireActivity();
                            int i25 = OnThisDayGameActivity.$r8$clinit;
                            requireActivity12.startActivity(OnThisDayGameProvider.newIntent$default(homeFragment.requireContext(), Constants.InvokeSource.FEED, wikiSite, null, i2, 8));
                        } else {
                            if (!homeAction.equals(HomeAction.GoToGamesHubClick.INSTANCE)) {
                                ContextsKt$$ExternalSyntheticBUOutline0.m();
                                return null;
                            }
                            SVGAndroidRenderer.submitInteraction$default(homeFragment.instrument, "click", "GamesModulePromptCard", null, "go_to_games_hub", null, null, 244);
                            AppCompatActivity requireActivity13 = homeFragment.requireActivity();
                            int i26 = GamesHubActivity.$r8$clinit;
                            requireActivity13.startActivity(new Intent(homeFragment.requireContext(), (Class<?>) GamesHubActivity.class));
                        }
                    }
                }
            }
        }
        return Unit.INSTANCE;
    }

    private final Object invoke$org$wikipedia$games$GamesHubFragment$$ExternalSyntheticLambda6(Object obj) {
        ComposeView composeView = (ComposeView) this.f$0;
        AppCompatActivity appCompatActivity = (AppCompatActivity) this.f$1;
        GamesHubFragment gamesHubFragment = (GamesHubFragment) this.f$2;
        String str = (String) obj;
        str.getClass();
        Snackbar makeSnackbar$default = ShareUtil.makeSnackbar$default(composeView, str);
        makeSnackbar$default.setAction(R.string.games_hub_activity_games_unavailable_message_learn_more_action, new HomeFragment$$ExternalSyntheticLambda8(13, appCompatActivity, gamesHubFragment));
        makeSnackbar$default.show();
        return Unit.INSTANCE;
    }

    private final Object invoke$org$wikipedia$games$GamesHubScreenKt$$ExternalSyntheticLambda1(Object obj) {
        List list = (List) this.f$0;
        Function2 function2 = (Function2) this.f$1;
        String str = (String) this.f$2;
        LazyListIntervalContent lazyListIntervalContent = (LazyListIntervalContent) obj;
        lazyListIntervalContent.getClass();
        lazyListIntervalContent.items(5, null, LazyListScope$items$1.INSTANCE, new ComposableLambdaImpl(new RandomScreenKt$$ExternalSyntheticLambda5(list, function2, str, 2), true, -1734641589));
        return Unit.INSTANCE;
    }

    private final Object invoke$org$wikipedia$language$addlanguages$AddLanguagesListScreenKt$$ExternalSyntheticLambda4(Object obj) {
        List list = (List) this.f$0;
        Context context = (Context) this.f$1;
        Function1 function1 = (Function1) this.f$2;
        LazyListIntervalContent lazyListIntervalContent = (LazyListIntervalContent) obj;
        lazyListIntervalContent.getClass();
        lazyListIntervalContent.items(list.size(), null, new LangLinksScreenKt$ComposeLangLinksScreen$lambda$4$3$0$$inlined$items$default$3(list, 3), new ComposableLambdaImpl(new WatchlistExpiryDialogKt$WatchlistExpiryDialogView$lambda$3$1$0$$inlined$items$default$4(list, context, function1, 2), true, 2039820996));
        return Unit.INSTANCE;
    }

    private final Object invoke$org$wikipedia$places$PlacesFragment$$ExternalSyntheticLambda17(Object obj) {
        Object obj2;
        Style style;
        PlacesFragment placesFragment = (PlacesFragment) this.f$0;
        NearbyPage nearbyPage = (NearbyPage) this.f$1;
        String str = (String) this.f$2;
        Bitmap bitmap = (Bitmap) obj;
        String[] strArr = PlacesFragment.CLUSTER_FONT_STACK;
        bitmap.getClass();
        boolean isAdded = placesFragment.isAdded();
        Unit unit = Unit.INSTANCE;
        if (isAdded) {
            Iterator it = placesFragment.annotationCache.iterator();
            while (true) {
                if (!it.hasNext()) {
                    obj2 = null;
                    break;
                }
                obj2 = it.next();
                if (((NearbyPage) obj2).pageId == nearbyPage.pageId) {
                    break;
                }
            }
            NearbyPage nearbyPage2 = (NearbyPage) obj2;
            if (nearbyPage2 != null) {
                String[] strArr2 = PlacesFragment.CLUSTER_FONT_STACK;
                Rect rect = placesFragment.markerRect;
                Paint paint = placesFragment.markerPaintSrc;
                if (paint == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("markerPaintSrc");
                    throw null;
                }
                Paint paint2 = placesFragment.markerPaintSrcIn;
                if (paint2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("markerPaintSrcIn");
                    throw null;
                }
                Paint paint3 = placesFragment.markerBorderPaint;
                if (paint3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("markerBorderPaint");
                    throw null;
                }
                Bitmap markerBitmap = Jsoup.getMarkerBitmap(bitmap, rect, paint, paint2, paint3);
                MapLibreMap mapLibreMap = placesFragment.mapboxMap;
                if (mapLibreMap != null && (style = mapLibreMap.getStyle()) != null) {
                    Resources resources = placesFragment.getResources();
                    resources.getClass();
                    Bitmap bitmapFromDrawable = HttpUrl.Companion.getBitmapFromDrawable(new BitmapDrawable(resources, markerBitmap));
                    if (bitmapFromDrawable == null) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m("Provided drawable couldn't be converted to a Bitmap.");
                        return null;
                    }
                    style.addImage(str, bitmapFromDrawable);
                }
                Symbol symbol = nearbyPage2.annotation;
                if (symbol != null) {
                    symbol.jsonObject.addProperty("icon-image", str);
                    SymbolManager symbolManager = placesFragment.symbolManager;
                    if (symbolManager != null) {
                        symbolManager.update(symbol);
                        return unit;
                    }
                }
            }
        }
        return unit;
    }

    /* JADX WARN: Type inference failed for: r5v0, types: [java.lang.Object, org.wikipedia.random.RandomScreenKt$ShakeToAdvance$1$1$listener$1] */
    private final Object invoke$org$wikipedia$random$RandomScreenKt$$ExternalSyntheticLambda15(Object obj) {
        final Context context = (Context) this.f$0;
        final LifecycleOwner lifecycleOwner = (LifecycleOwner) this.f$1;
        final MutableState mutableState = (MutableState) this.f$2;
        ((DisposableEffectScope) obj).getClass();
        final SensorManager sensorManager = (SensorManager) context.getSystemService(SensorManager.class);
        Sensor defaultSensor = sensorManager != null ? sensorManager.getDefaultSensor(1) : null;
        final Ref$LongRef ref$LongRef = new Ref$LongRef();
        final Ref$LongRef ref$LongRef2 = new Ref$LongRef();
        final ?? r5 = new SensorEventListener() { // from class: org.wikipedia.random.RandomScreenKt$ShakeToAdvance$1$1$listener$1
            @Override // android.hardware.SensorEventListener
            public final void onSensorChanged(SensorEvent sensorEvent) {
                sensorEvent.getClass();
                float[] fArr = sensorEvent.values;
                float f = fArr[0];
                float f2 = fArr[1];
                float f3 = fArr[2];
                if (((float) Math.sqrt((f3 * f3) + ((f2 * f2) + (f * f)))) - 9.80665f <= 12.0f) {
                    return;
                }
                long currentTimeMillis = System.currentTimeMillis();
                Ref$LongRef ref$LongRef3 = Ref$LongRef.this;
                if (currentTimeMillis - ref$LongRef3.element < 1000) {
                    return;
                }
                Ref$LongRef ref$LongRef4 = ref$LongRef2;
                long j = ref$LongRef4.element;
                if (j == 0) {
                    ref$LongRef4.element = currentTimeMillis;
                    return;
                }
                if (currentTimeMillis - j > 500) {
                    ref$LongRef4.element = currentTimeMillis;
                    return;
                }
                ref$LongRef4.element = 0L;
                ref$LongRef3.element = currentTimeMillis;
                ((Function0) mutableState.getValue()).invoke();
                Vibrator vibrator = (Vibrator) context.getSystemService(Vibrator.class);
                if (Build.VERSION.SDK_INT >= 26) {
                    if (vibrator != null) {
                        vibrator.vibrate(VibrationEffect.createOneShot(80L, -1));
                    }
                } else if (vibrator != null) {
                    vibrator.vibrate(80L);
                }
            }

            @Override // android.hardware.SensorEventListener
            public final void onAccuracyChanged(Sensor sensor, int i) {
            }
        };
        final RandomScreenKt$$ExternalSyntheticLambda17 randomScreenKt$$ExternalSyntheticLambda17 = new RandomScreenKt$$ExternalSyntheticLambda17(ref$LongRef2, sensorManager, r5, defaultSensor, 0);
        lifecycleOwner.getLifecycle().addObserver(randomScreenKt$$ExternalSyntheticLambda17);
        return new DisposableEffectResult() { // from class: org.wikipedia.random.RandomScreenKt$ShakeToAdvance$lambda$1$0$$inlined$onDispose$1
            @Override // androidx.compose.runtime.DisposableEffectResult
            public final void dispose() {
                LifecycleOwner.this.getLifecycle().removeObserver(randomScreenKt$$ExternalSyntheticLambda17);
                SensorManager sensorManager2 = sensorManager;
                if (sensorManager2 != null) {
                    sensorManager2.unregisterListener(r5);
                }
            }
        };
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        long Color;
        Brush brush;
        TextForegroundStyle.Unspecified unspecified;
        Canvas canvas;
        AnnotatedString.Range range;
        Integer nextWordOffset;
        Integer previousWordOffset;
        Integer previousWordOffset2;
        Integer nextWordOffset2;
        TextLayoutResult textLayoutResult;
        TextLayoutResult textLayoutResult2;
        TextLayoutResultProxy textLayoutResultProxy;
        TextLayoutResultProxy textLayoutResultProxy2;
        Integer nextWordOffset3;
        Integer previousWordOffset3;
        Integer previousWordOffset4;
        Integer nextWordOffset4;
        TextLayoutResult textLayoutResult3;
        TextLayoutResult textLayoutResult4;
        TextLayoutResultProxy textLayoutResultProxy3;
        TextLayoutResultProxy textLayoutResultProxy4;
        TextFieldValue textFieldValue;
        CardView.AnonymousClass1 anonymousClass1;
        TextFieldValue textFieldValue2;
        int i = this.$r8$classId;
        int i2 = 28;
        int i3 = 15;
        int i4 = 6;
        final int i5 = 2;
        int i6 = 3;
        Continuation continuation = null;
        final int i7 = 0;
        Unit unit = Unit.INSTANCE;
        Object obj2 = this.f$2;
        Object obj3 = this.f$1;
        Object obj4 = this.f$0;
        final int i8 = 1;
        switch (i) {
            case 0:
                Painter painter = (Painter) obj4;
                Painter painter2 = (Painter) obj3;
                Painter painter3 = (Painter) obj2;
                AsyncImagePainter.State state = (AsyncImagePainter.State) obj;
                if (state instanceof AsyncImagePainter.State.Loading) {
                    return painter != null ? new AsyncImagePainter.State.Loading(painter) : (AsyncImagePainter.State.Loading) state;
                }
                if (!(state instanceof AsyncImagePainter.State.Error)) {
                    return state;
                }
                AsyncImagePainter.State.Error error = (AsyncImagePainter.State.Error) state;
                ErrorResult errorResult = error.result;
                return errorResult.throwable instanceof NullRequestDataException ? painter2 != null ? new AsyncImagePainter.State.Error(painter2, errorResult) : error : painter3 != null ? new AsyncImagePainter.State.Error(painter3, errorResult) : error;
            case 1:
                ContentInViewNode contentInViewNode = (ContentInViewNode) obj4;
                Job job = (Job) obj3;
                ScrollingLogic$nestedScrollScope$1 scrollingLogic$nestedScrollScope$1 = (ScrollingLogic$nestedScrollScope$1) obj2;
                float floatValue = ((Float) obj).floatValue();
                float f = contentInViewNode.reverseDirection ? 1.0f : -1.0f;
                ScrollingLogic scrollingLogic = contentInViewNode.scrollingLogic;
                long m102reverseIfNeededMKHz9U = scrollingLogic.m102reverseIfNeededMKHz9U(scrollingLogic.m104toOffsettuRUvjQ(f * floatValue));
                ScrollingLogic scrollingLogic2 = scrollingLogic$nestedScrollScope$1.this$0;
                float m103toFloatk4lQ0M = scrollingLogic.m103toFloatk4lQ0M(scrollingLogic.m102reverseIfNeededMKHz9U(scrollingLogic2.m101performScroll3eAAhYA(scrollingLogic2.outerStateScope, m102reverseIfNeededMKHz9U, 1))) * f;
                if (Math.abs(m103toFloatk4lQ0M) < Math.abs(floatValue)) {
                    job.cancel(AwaitKt.CancellationException("Scroll animation cancelled because scroll was not consumed (" + m103toFloatk4lQ0M + " < " + floatValue + ')', null));
                }
                return unit;
            case 2:
                Ref$FloatRef ref$FloatRef = (Ref$FloatRef) obj4;
                AnimationScope animationScope = (AnimationScope) obj;
                float floatValue2 = ((Number) animationScope.value$delegate.getValue()).floatValue() - ref$FloatRef.element;
                float scrollBy = ((ScrollingLogic$doFlingAnimation$2$reverseScope$1) obj3).scrollBy(floatValue2);
                ref$FloatRef.element = ((Number) animationScope.value$delegate.getValue()).floatValue();
                ((Ref$FloatRef) obj2).element = ((Number) animationScope.typeConverter.convertFromVector.invoke(animationScope.velocityVector)).floatValue();
                if (Math.abs(floatValue2 - scrollBy) > 0.5f) {
                    animationScope.cancelAnimation();
                }
                return unit;
            case 3:
                Function1 function1 = (Function1) obj4;
                MutableState mutableState = (MutableState) obj2;
                TextFieldValue textFieldValue3 = (TextFieldValue) obj;
                ((MutableState) obj3).setValue(textFieldValue3);
                boolean areEqual = Intrinsics.areEqual((String) mutableState.getValue(), textFieldValue3.annotatedString.text);
                AnnotatedString annotatedString = textFieldValue3.annotatedString;
                mutableState.setValue(annotatedString.text);
                if (!areEqual) {
                    function1.invoke(annotatedString.text);
                }
                return unit;
            case 4:
                LegacyTextFieldState legacyTextFieldState = (LegacyTextFieldState) obj4;
                long j = ((TextFieldValue) obj3).selection;
                OffsetMapping offsetMapping = (OffsetMapping) obj2;
                DrawScope drawScope = (DrawScope) obj;
                TextLayoutResultProxy layoutResult = legacyTextFieldState.getLayoutResult();
                if (layoutResult != null) {
                    Canvas canvas2 = drawScope.getDrawContext().getCanvas();
                    long j2 = ((TextRange) legacyTextFieldState.selectionPreviewHighlightRange$delegate.getValue()).packedValue;
                    long j3 = ((TextRange) legacyTextFieldState.deletionPreviewHighlightRange$delegate.getValue()).packedValue;
                    TextLayoutResult textLayoutResult5 = layoutResult.value;
                    long j4 = textLayoutResult5.size;
                    TextLayoutInput textLayoutInput = textLayoutResult5.layoutInput;
                    MultiParagraph multiParagraph = textLayoutResult5.multiParagraph;
                    AndroidPaint androidPaint = legacyTextFieldState.highlightPaint;
                    long j5 = legacyTextFieldState.selectionBackgroundColor;
                    if (!TextRange.m641getCollapsedimpl(j2)) {
                        androidPaint.m411setColor8_81llA(j5);
                        int originalToTransformed = offsetMapping.originalToTransformed(TextRange.m644getMinimpl(j2));
                        int originalToTransformed2 = offsetMapping.originalToTransformed(TextRange.m643getMaximpl(j2));
                        if (originalToTransformed != originalToTransformed2) {
                            canvas2.drawPath(textLayoutResult5.getPathForRange(originalToTransformed, originalToTransformed2), androidPaint);
                        }
                    } else if (!TextRange.m641getCollapsedimpl(j3)) {
                        long m649getColor0d7_KjU = textLayoutInput.style.m649getColor0d7_KjU();
                        Color color = m649getColor0d7_KjU == 16 ? null : new Color(m649getColor0d7_KjU);
                        long j6 = color != null ? color.value : Color.Black;
                        Color = ColorKt.Color(Color.m433getRedimpl(j6), Color.m432getGreenimpl(j6), Color.m430getBlueimpl(j6), Color.m429getAlphaimpl(j6) * 0.2f, Color.m431getColorSpaceimpl(j6));
                        androidPaint.m411setColor8_81llA(Color);
                        int originalToTransformed3 = offsetMapping.originalToTransformed(TextRange.m644getMinimpl(j3));
                        int originalToTransformed4 = offsetMapping.originalToTransformed(TextRange.m643getMaximpl(j3));
                        if (originalToTransformed3 != originalToTransformed4) {
                            canvas2.drawPath(textLayoutResult5.getPathForRange(originalToTransformed3, originalToTransformed4), androidPaint);
                        }
                    } else if (!TextRange.m641getCollapsedimpl(j)) {
                        androidPaint.m411setColor8_81llA(j5);
                        int originalToTransformed5 = offsetMapping.originalToTransformed(TextRange.m644getMinimpl(j));
                        int originalToTransformed6 = offsetMapping.originalToTransformed(TextRange.m643getMaximpl(j));
                        if (originalToTransformed5 != originalToTransformed6) {
                            canvas2.drawPath(textLayoutResult5.getPathForRange(originalToTransformed5, originalToTransformed6), androidPaint);
                        }
                    }
                    boolean z = ((((float) ((int) (j4 >> 32))) > multiParagraph.width ? 1 : (((float) ((int) (j4 >> 32))) == multiParagraph.width ? 0 : -1)) < 0 || textLayoutResult5.getDidOverflowHeight()) && textLayoutInput.overflow != 3;
                    if (z) {
                        androidx.compose.ui.geometry.Rect m793Recttz77jQw = coil3.util.UtilsKt.m793Recttz77jQw(0L, (Float.floatToRawIntBits((int) (j4 & 4294967295L)) & 4294967295L) | (Float.floatToRawIntBits((int) (j4 >> 32)) << 32));
                        canvas2.save();
                        canvas2.mo402clipRectmtrdDE(m793Recttz77jQw);
                    }
                    SpanStyle spanStyle = textLayoutInput.style.spanStyle;
                    TextDecoration textDecoration = spanStyle.textDecoration;
                    TextForegroundStyle textForegroundStyle = spanStyle.textForegroundStyle;
                    if (textDecoration == null) {
                        textDecoration = TextDecoration.None;
                    }
                    TextDecoration textDecoration2 = textDecoration;
                    Shadow shadow = spanStyle.shadow;
                    if (shadow == null) {
                        shadow = Shadow.None;
                    }
                    Shadow shadow2 = shadow;
                    DrawStyle drawStyle = spanStyle.drawStyle;
                    if (drawStyle == null) {
                        drawStyle = Fill.INSTANCE;
                    }
                    DrawStyle drawStyle2 = drawStyle;
                    try {
                        brush = textForegroundStyle.getBrush();
                        unspecified = TextForegroundStyle.Unspecified.INSTANCE;
                    } catch (Throwable th) {
                        th = th;
                    }
                    try {
                        if (brush != null) {
                            canvas = canvas2;
                            MultiParagraph.m627painthn5TExg$default(multiParagraph, canvas, brush, textForegroundStyle != unspecified ? textForegroundStyle.getAlpha() : 1.0f, shadow2, textDecoration2, drawStyle2);
                        } else {
                            canvas = canvas2;
                            MultiParagraph.m626paintLG529CI$default(multiParagraph, canvas, textForegroundStyle != unspecified ? textForegroundStyle.mo667getColor0d7_KjU() : Color.Black, shadow2, textDecoration2, drawStyle2);
                        }
                        if (z) {
                            canvas.restore();
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        if (z) {
                            canvas2.restore();
                        }
                        throw th;
                    }
                }
                return unit;
            case 5:
                Ref$BooleanRef ref$BooleanRef = (Ref$BooleanRef) obj4;
                AnnotatedString.Range range2 = (AnnotatedString.Range) obj3;
                SpanStyle spanStyle2 = (SpanStyle) obj2;
                AnnotatedString.Range range3 = (AnnotatedString.Range) obj;
                if (ref$BooleanRef.element) {
                    Object obj5 = range3.item;
                    int i9 = range3.end;
                    int i10 = range3.start;
                    if ((obj5 instanceof SpanStyle) && i10 == range2.start && i9 == range2.end) {
                        if (spanStyle2 == null) {
                            spanStyle2 = new SpanStyle(0L, 0L, (FontWeight) null, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, 65535);
                        }
                        range = new AnnotatedString.Range(i10, i9, spanStyle2);
                        ref$BooleanRef.element = range2.equals(range3);
                        return range;
                    }
                }
                range = range3;
                ref$BooleanRef.element = range2.equals(range3);
                return range;
            case 6:
                Function1 function12 = (Function1) obj3;
                TextInputSession textInputSession = (TextInputSession) ((Ref$ObjectRef) obj2).element;
                TextFieldValue apply = ((CardView.AnonymousClass1) obj4).apply((List) obj);
                if (textInputSession != null) {
                    textInputSession.updateState(null, apply);
                }
                function12.invoke(apply);
                return unit;
            case 7:
                TextFieldKeyInput textFieldKeyInput = (TextFieldKeyInput) obj3;
                Ref$BooleanRef ref$BooleanRef2 = (Ref$BooleanRef) obj2;
                TextFieldPreparedSelection textFieldPreparedSelection = (TextFieldPreparedSelection) obj;
                int i11 = TextFieldKeyInput.WhenMappings.$EnumSwitchMapping$0[((KeyCommand) obj4).ordinal()];
                int i12 = 4;
                switch (i11) {
                    case 1:
                        textFieldKeyInput.selectionManager.copy$foundation(false);
                        break;
                    case 2:
                        textFieldKeyInput.selectionManager.paste$foundation();
                        break;
                    case 3:
                        textFieldKeyInput.selectionManager.cut$foundation();
                        break;
                    case 4:
                        textFieldPreparedSelection.state.cachedX = null;
                        if (textFieldPreparedSelection.annotatedString.text.length() > 0) {
                            if (!TextRange.m641getCollapsedimpl(textFieldPreparedSelection.selection)) {
                                boolean isLtr = textFieldPreparedSelection.isLtr();
                                long j7 = textFieldPreparedSelection.selection;
                                if (!isLtr) {
                                    int m643getMaximpl = TextRange.m643getMaximpl(j7);
                                    textFieldPreparedSelection.setSelection(m643getMaximpl, m643getMaximpl);
                                    break;
                                } else {
                                    int m644getMinimpl = TextRange.m644getMinimpl(j7);
                                    textFieldPreparedSelection.setSelection(m644getMinimpl, m644getMinimpl);
                                    break;
                                }
                            } else {
                                textFieldPreparedSelection.moveCursorLeft();
                                break;
                            }
                        }
                        break;
                    case 5:
                        textFieldPreparedSelection.state.cachedX = null;
                        if (textFieldPreparedSelection.annotatedString.text.length() > 0) {
                            if (!TextRange.m641getCollapsedimpl(textFieldPreparedSelection.selection)) {
                                boolean isLtr2 = textFieldPreparedSelection.isLtr();
                                long j8 = textFieldPreparedSelection.selection;
                                if (!isLtr2) {
                                    int m644getMinimpl2 = TextRange.m644getMinimpl(j8);
                                    textFieldPreparedSelection.setSelection(m644getMinimpl2, m644getMinimpl2);
                                    break;
                                } else {
                                    int m643getMaximpl2 = TextRange.m643getMaximpl(j8);
                                    textFieldPreparedSelection.setSelection(m643getMaximpl2, m643getMaximpl2);
                                    break;
                                }
                            } else {
                                textFieldPreparedSelection.moveCursorRight();
                                break;
                            }
                        }
                        break;
                    case 6:
                        TextPreparedSelectionState textPreparedSelectionState = textFieldPreparedSelection.state;
                        textPreparedSelectionState.cachedX = null;
                        AnnotatedString annotatedString2 = textFieldPreparedSelection.annotatedString;
                        String str = annotatedString2.text;
                        String str2 = annotatedString2.text;
                        if (str.length() > 0) {
                            if (!textFieldPreparedSelection.isLtr()) {
                                textPreparedSelectionState.cachedX = null;
                                if (str2.length() > 0 && (nextWordOffset = textFieldPreparedSelection.getNextWordOffset()) != null) {
                                    int intValue = nextWordOffset.intValue();
                                    textFieldPreparedSelection.setSelection(intValue, intValue);
                                    break;
                                }
                            } else {
                                textPreparedSelectionState.cachedX = null;
                                if (str2.length() > 0 && (previousWordOffset = textFieldPreparedSelection.getPreviousWordOffset()) != null) {
                                    int intValue2 = previousWordOffset.intValue();
                                    textFieldPreparedSelection.setSelection(intValue2, intValue2);
                                    break;
                                }
                            }
                        }
                        break;
                    case 7:
                        TextPreparedSelectionState textPreparedSelectionState2 = textFieldPreparedSelection.state;
                        textPreparedSelectionState2.cachedX = null;
                        AnnotatedString annotatedString3 = textFieldPreparedSelection.annotatedString;
                        String str3 = annotatedString3.text;
                        String str4 = annotatedString3.text;
                        if (str3.length() > 0) {
                            if (!textFieldPreparedSelection.isLtr()) {
                                textPreparedSelectionState2.cachedX = null;
                                if (str4.length() > 0 && (previousWordOffset2 = textFieldPreparedSelection.getPreviousWordOffset()) != null) {
                                    int intValue3 = previousWordOffset2.intValue();
                                    textFieldPreparedSelection.setSelection(intValue3, intValue3);
                                    break;
                                }
                            } else {
                                textPreparedSelectionState2.cachedX = null;
                                if (str4.length() > 0 && (nextWordOffset2 = textFieldPreparedSelection.getNextWordOffset()) != null) {
                                    int intValue4 = nextWordOffset2.intValue();
                                    textFieldPreparedSelection.setSelection(intValue4, intValue4);
                                    break;
                                }
                            }
                        }
                        break;
                    case 8:
                        textFieldPreparedSelection.moveCursorPrevByParagraph();
                        break;
                    case 9:
                        textFieldPreparedSelection.moveCursorNextByParagraph();
                        break;
                    case 10:
                        if (textFieldPreparedSelection.annotatedString.text.length() > 0 && (textLayoutResult = textFieldPreparedSelection.layoutResult) != null) {
                            int jumpByLinesOffset = textFieldPreparedSelection.jumpByLinesOffset(textLayoutResult, -1);
                            textFieldPreparedSelection.setSelection(jumpByLinesOffset, jumpByLinesOffset);
                            break;
                        }
                        break;
                    case 11:
                        if (textFieldPreparedSelection.annotatedString.text.length() > 0 && (textLayoutResult2 = textFieldPreparedSelection.layoutResult) != null) {
                            int jumpByLinesOffset2 = textFieldPreparedSelection.jumpByLinesOffset(textLayoutResult2, 1);
                            textFieldPreparedSelection.setSelection(jumpByLinesOffset2, jumpByLinesOffset2);
                            break;
                        }
                        break;
                    case 12:
                        if (textFieldPreparedSelection.annotatedString.text.length() > 0 && (textLayoutResultProxy = textFieldPreparedSelection.layoutResultProxy) != null) {
                            int jumpByPagesOffset = textFieldPreparedSelection.jumpByPagesOffset(textLayoutResultProxy, -1);
                            textFieldPreparedSelection.setSelection(jumpByPagesOffset, jumpByPagesOffset);
                            break;
                        }
                        break;
                    case IMAGE_VALUE:
                        if (textFieldPreparedSelection.annotatedString.text.length() > 0 && (textLayoutResultProxy2 = textFieldPreparedSelection.layoutResultProxy) != null) {
                            int jumpByPagesOffset2 = textFieldPreparedSelection.jumpByPagesOffset(textLayoutResultProxy2, 1);
                            textFieldPreparedSelection.setSelection(jumpByPagesOffset2, jumpByPagesOffset2);
                            break;
                        }
                        break;
                    case LINEAR_PROGRESS_INDICATOR_VALUE:
                        textFieldPreparedSelection.moveCursorToLineStart();
                        break;
                    case 15:
                        textFieldPreparedSelection.moveCursorToLineEnd();
                        break;
                    case LAZY_VERTICAL_GRID_VALUE:
                        textFieldPreparedSelection.state.cachedX = null;
                        if (textFieldPreparedSelection.annotatedString.text.length() > 0) {
                            if (!textFieldPreparedSelection.isLtr()) {
                                textFieldPreparedSelection.moveCursorToLineEnd();
                                break;
                            } else {
                                textFieldPreparedSelection.moveCursorToLineStart();
                                break;
                            }
                        }
                        break;
                    case VERTICAL_GRID_ITEM_VALUE:
                        textFieldPreparedSelection.state.cachedX = null;
                        if (textFieldPreparedSelection.annotatedString.text.length() > 0) {
                            if (!textFieldPreparedSelection.isLtr()) {
                                textFieldPreparedSelection.moveCursorToLineStart();
                                break;
                            } else {
                                textFieldPreparedSelection.moveCursorToLineEnd();
                                break;
                            }
                        }
                        break;
                    case RADIO_GROUP_VALUE:
                        textFieldPreparedSelection.state.cachedX = null;
                        if (textFieldPreparedSelection.annotatedString.text.length() > 0) {
                            textFieldPreparedSelection.setSelection(0, 0);
                            break;
                        }
                        break;
                    case RADIO_BUTTON_VALUE:
                        textFieldPreparedSelection.state.cachedX = null;
                        AnnotatedString annotatedString4 = textFieldPreparedSelection.annotatedString;
                        if (annotatedString4.text.length() > 0) {
                            int length = annotatedString4.text.length();
                            textFieldPreparedSelection.setSelection(length, length);
                            break;
                        }
                        break;
                    case RADIO_ROW_VALUE:
                        List deleteIfSelectedOr = textFieldPreparedSelection.deleteIfSelectedOr(new BasicTextKt$$ExternalSyntheticLambda3(i2));
                        if (deleteIfSelectedOr != null) {
                            textFieldKeyInput.apply(deleteIfSelectedOr);
                            break;
                        }
                        break;
                    case RADIO_COLUMN_VALUE:
                        List deleteIfSelectedOr2 = textFieldPreparedSelection.deleteIfSelectedOr(new BasicTextKt$$ExternalSyntheticLambda3(29));
                        if (deleteIfSelectedOr2 != null) {
                            textFieldKeyInput.apply(deleteIfSelectedOr2);
                            break;
                        }
                        break;
                    case SIZE_BOX_VALUE:
                        List deleteIfSelectedOr3 = textFieldPreparedSelection.deleteIfSelectedOr(new ChipKt$$ExternalSyntheticLambda2(i8));
                        if (deleteIfSelectedOr3 != null) {
                            textFieldKeyInput.apply(deleteIfSelectedOr3);
                            break;
                        }
                        break;
                    case 23:
                        List deleteIfSelectedOr4 = textFieldPreparedSelection.deleteIfSelectedOr(new ChipKt$$ExternalSyntheticLambda2(i5));
                        if (deleteIfSelectedOr4 != null) {
                            textFieldKeyInput.apply(deleteIfSelectedOr4);
                            break;
                        }
                        break;
                    case 24:
                        List deleteIfSelectedOr5 = textFieldPreparedSelection.deleteIfSelectedOr(new ChipKt$$ExternalSyntheticLambda2(i6));
                        if (deleteIfSelectedOr5 != null) {
                            textFieldKeyInput.apply(deleteIfSelectedOr5);
                            break;
                        }
                        break;
                    case 25:
                        List deleteIfSelectedOr6 = textFieldPreparedSelection.deleteIfSelectedOr(new ChipKt$$ExternalSyntheticLambda2(i12));
                        if (deleteIfSelectedOr6 != null) {
                            textFieldKeyInput.apply(deleteIfSelectedOr6);
                            break;
                        }
                        break;
                    case 26:
                        if (!textFieldKeyInput.singleLine) {
                            textFieldKeyInput.apply(Room.listOf(new CommitTextCommand(1, "\n")));
                            break;
                        } else {
                            ref$BooleanRef2.element = textFieldKeyInput.state.onImeActionPerformedWithResult.f$0.keyboardActionRunner.m188runActionKlQnJC8(textFieldKeyInput.imeAction);
                            break;
                        }
                    case 27:
                        if (!textFieldKeyInput.singleLine) {
                            textFieldKeyInput.apply(Room.listOf(new CommitTextCommand(1, "\t")));
                            break;
                        } else {
                            ref$BooleanRef2.element = false;
                            break;
                        }
                    case 28:
                        textFieldPreparedSelection.state.cachedX = null;
                        AnnotatedString annotatedString5 = textFieldPreparedSelection.annotatedString;
                        if (annotatedString5.text.length() > 0) {
                            textFieldPreparedSelection.setSelection(0, annotatedString5.text.length());
                            break;
                        }
                        break;
                    case 29:
                        textFieldPreparedSelection.moveCursorLeft();
                        textFieldPreparedSelection.selectMovement();
                        break;
                    case 30:
                        textFieldPreparedSelection.moveCursorRight();
                        textFieldPreparedSelection.selectMovement();
                        break;
                    case 31:
                        TextPreparedSelectionState textPreparedSelectionState3 = textFieldPreparedSelection.state;
                        textPreparedSelectionState3.cachedX = null;
                        AnnotatedString annotatedString6 = textFieldPreparedSelection.annotatedString;
                        String str5 = annotatedString6.text;
                        String str6 = annotatedString6.text;
                        if (str5.length() > 0) {
                            if (textFieldPreparedSelection.isLtr()) {
                                textPreparedSelectionState3.cachedX = null;
                                if (str6.length() > 0 && (previousWordOffset3 = textFieldPreparedSelection.getPreviousWordOffset()) != null) {
                                    int intValue5 = previousWordOffset3.intValue();
                                    textFieldPreparedSelection.setSelection(intValue5, intValue5);
                                }
                            } else {
                                textPreparedSelectionState3.cachedX = null;
                                if (str6.length() > 0 && (nextWordOffset3 = textFieldPreparedSelection.getNextWordOffset()) != null) {
                                    int intValue6 = nextWordOffset3.intValue();
                                    textFieldPreparedSelection.setSelection(intValue6, intValue6);
                                }
                            }
                        }
                        textFieldPreparedSelection.selectMovement();
                        break;
                    case 32:
                        TextPreparedSelectionState textPreparedSelectionState4 = textFieldPreparedSelection.state;
                        textPreparedSelectionState4.cachedX = null;
                        AnnotatedString annotatedString7 = textFieldPreparedSelection.annotatedString;
                        String str7 = annotatedString7.text;
                        String str8 = annotatedString7.text;
                        if (str7.length() > 0) {
                            if (textFieldPreparedSelection.isLtr()) {
                                textPreparedSelectionState4.cachedX = null;
                                if (str8.length() > 0 && (nextWordOffset4 = textFieldPreparedSelection.getNextWordOffset()) != null) {
                                    int intValue7 = nextWordOffset4.intValue();
                                    textFieldPreparedSelection.setSelection(intValue7, intValue7);
                                }
                            } else {
                                textPreparedSelectionState4.cachedX = null;
                                if (str8.length() > 0 && (previousWordOffset4 = textFieldPreparedSelection.getPreviousWordOffset()) != null) {
                                    int intValue8 = previousWordOffset4.intValue();
                                    textFieldPreparedSelection.setSelection(intValue8, intValue8);
                                }
                            }
                        }
                        textFieldPreparedSelection.selectMovement();
                        break;
                    case 33:
                        textFieldPreparedSelection.moveCursorPrevByParagraph();
                        textFieldPreparedSelection.selectMovement();
                        break;
                    case 34:
                        textFieldPreparedSelection.moveCursorNextByParagraph();
                        textFieldPreparedSelection.selectMovement();
                        break;
                    case 35:
                        textFieldPreparedSelection.moveCursorToLineStart();
                        textFieldPreparedSelection.selectMovement();
                        break;
                    case 36:
                        textFieldPreparedSelection.moveCursorToLineEnd();
                        textFieldPreparedSelection.selectMovement();
                        break;
                    case 37:
                        textFieldPreparedSelection.state.cachedX = null;
                        if (textFieldPreparedSelection.annotatedString.text.length() > 0) {
                            if (textFieldPreparedSelection.isLtr()) {
                                textFieldPreparedSelection.moveCursorToLineStart();
                            } else {
                                textFieldPreparedSelection.moveCursorToLineEnd();
                            }
                        }
                        textFieldPreparedSelection.selectMovement();
                        break;
                    case 38:
                        textFieldPreparedSelection.state.cachedX = null;
                        if (textFieldPreparedSelection.annotatedString.text.length() > 0) {
                            if (textFieldPreparedSelection.isLtr()) {
                                textFieldPreparedSelection.moveCursorToLineEnd();
                            } else {
                                textFieldPreparedSelection.moveCursorToLineStart();
                            }
                        }
                        textFieldPreparedSelection.selectMovement();
                        break;
                    case 39:
                        if (textFieldPreparedSelection.annotatedString.text.length() > 0 && (textLayoutResult3 = textFieldPreparedSelection.layoutResult) != null) {
                            int jumpByLinesOffset3 = textFieldPreparedSelection.jumpByLinesOffset(textLayoutResult3, -1);
                            textFieldPreparedSelection.setSelection(jumpByLinesOffset3, jumpByLinesOffset3);
                        }
                        textFieldPreparedSelection.selectMovement();
                        break;
                    case 40:
                        if (textFieldPreparedSelection.annotatedString.text.length() > 0 && (textLayoutResult4 = textFieldPreparedSelection.layoutResult) != null) {
                            int jumpByLinesOffset4 = textFieldPreparedSelection.jumpByLinesOffset(textLayoutResult4, 1);
                            textFieldPreparedSelection.setSelection(jumpByLinesOffset4, jumpByLinesOffset4);
                        }
                        textFieldPreparedSelection.selectMovement();
                        break;
                    case 41:
                        if (textFieldPreparedSelection.annotatedString.text.length() > 0 && (textLayoutResultProxy3 = textFieldPreparedSelection.layoutResultProxy) != null) {
                            int jumpByPagesOffset3 = textFieldPreparedSelection.jumpByPagesOffset(textLayoutResultProxy3, -1);
                            textFieldPreparedSelection.setSelection(jumpByPagesOffset3, jumpByPagesOffset3);
                        }
                        textFieldPreparedSelection.selectMovement();
                        break;
                    case 42:
                        if (textFieldPreparedSelection.annotatedString.text.length() > 0 && (textLayoutResultProxy4 = textFieldPreparedSelection.layoutResultProxy) != null) {
                            int jumpByPagesOffset4 = textFieldPreparedSelection.jumpByPagesOffset(textLayoutResultProxy4, 1);
                            textFieldPreparedSelection.setSelection(jumpByPagesOffset4, jumpByPagesOffset4);
                        }
                        textFieldPreparedSelection.selectMovement();
                        break;
                    case 43:
                        textFieldPreparedSelection.state.cachedX = null;
                        if (textFieldPreparedSelection.annotatedString.text.length() > 0) {
                            textFieldPreparedSelection.setSelection(0, 0);
                        }
                        textFieldPreparedSelection.selectMovement();
                        break;
                    case 44:
                        textFieldPreparedSelection.state.cachedX = null;
                        AnnotatedString annotatedString8 = textFieldPreparedSelection.annotatedString;
                        if (annotatedString8.text.length() > 0) {
                            int length2 = annotatedString8.text.length();
                            textFieldPreparedSelection.setSelection(length2, length2);
                        }
                        textFieldPreparedSelection.selectMovement();
                        break;
                    case 45:
                        textFieldPreparedSelection.state.cachedX = null;
                        if (textFieldPreparedSelection.annotatedString.text.length() > 0) {
                            long j9 = textFieldPreparedSelection.selection;
                            int i13 = TextRange.$r8$clinit;
                            int i14 = (int) (j9 & 4294967295L);
                            textFieldPreparedSelection.setSelection(i14, i14);
                            break;
                        }
                        break;
                    case 46:
                        textFieldKeyInput.undoManager.makeSnapshot(TextFieldValue.m659copy3r_uNRQ$default(textFieldPreparedSelection.currentValue, textFieldPreparedSelection.annotatedString, textFieldPreparedSelection.selection, 4));
                        UndoManager undoManager = textFieldKeyInput.undoManager;
                        CardView.AnonymousClass1 anonymousClass12 = undoManager.undoStack;
                        if (anonymousClass12 == null || (anonymousClass1 = (CardView.AnonymousClass1) anonymousClass12.mCardBackground) == null) {
                            textFieldValue = null;
                        } else {
                            undoManager.undoStack = anonymousClass1;
                            undoManager.storedCharacters -= ((TextFieldValue) anonymousClass12.this$0).annotatedString.text.length();
                            undoManager.redoStack = new CardView.AnonymousClass1(i4, undoManager.redoStack, (TextFieldValue) anonymousClass12.this$0);
                            textFieldValue = (TextFieldValue) anonymousClass1.this$0;
                        }
                        if (textFieldValue != null) {
                            textFieldKeyInput.onValueChange.invoke(textFieldValue);
                            break;
                        }
                        break;
                    case 47:
                        UndoManager undoManager2 = textFieldKeyInput.undoManager;
                        CardView.AnonymousClass1 anonymousClass13 = undoManager2.redoStack;
                        if (anonymousClass13 != null) {
                            undoManager2.redoStack = (CardView.AnonymousClass1) anonymousClass13.mCardBackground;
                            TextFieldValue textFieldValue4 = (TextFieldValue) anonymousClass13.this$0;
                            undoManager2.undoStack = new CardView.AnonymousClass1(i4, undoManager2.undoStack, textFieldValue4);
                            undoManager2.storedCharacters = textFieldValue4.annotatedString.text.length() + undoManager2.storedCharacters;
                            textFieldValue2 = (TextFieldValue) anonymousClass13.this$0;
                        } else {
                            textFieldValue2 = null;
                        }
                        if (textFieldValue2 != null) {
                            textFieldKeyInput.onValueChange.invoke(textFieldValue2);
                            break;
                        }
                        break;
                    case 48:
                    case 49:
                        break;
                    default:
                        ContextsKt$$ExternalSyntheticBUOutline0.m();
                        return null;
                }
                return unit;
            case 8:
                Context context = (Context) obj3;
                TextContextMenuSession textContextMenuSession = (TextContextMenuSession) obj2;
                ContextMenuScope contextMenuScope = (ContextMenuScope) obj;
                List list = ((TextContextMenuData) obj4).components;
                int size = list.size();
                int i15 = 0;
                while (i15 < size) {
                    TextContextMenuComponent textContextMenuComponent = (TextContextMenuComponent) list.get(i15);
                    if (textContextMenuComponent instanceof TextContextMenuItem) {
                        TextContextMenuItem textContextMenuItem = (TextContextMenuItem) textContextMenuComponent;
                        ContextMenuScope.item$default(contextMenuScope, new HintHandler$$ExternalSyntheticLambda0(10, textContextMenuItem), textContextMenuItem.leadingIcon == 0 ? continuation : new ComposableLambdaImpl(new TooltipKt$animateTooltip$2(i8, textContextMenuItem), true, -1930700965), new Recomposer$$ExternalSyntheticLambda6(i3, textContextMenuItem, textContextMenuSession), 6);
                    } else if (textContextMenuComponent instanceof TextContextMenuTextClassificationItem) {
                        if (Build.VERSION.SDK_INT >= 28) {
                            TextContextMenuHelperApi28.textClassificationItem(contextMenuScope, context, (TextContextMenuTextClassificationItem) textContextMenuComponent);
                        }
                    } else if (textContextMenuComponent instanceof TextContextMenuSeparator) {
                        contextMenuScope.composables.add(ContextMenuPopupPositionProviderKt.f0lambda$1455401925);
                    }
                    i15++;
                    continuation = null;
                }
                return unit;
            case 9:
                Ref$BooleanRef ref$BooleanRef3 = (Ref$BooleanRef) obj2;
                PointerInputChange pointerInputChange = (PointerInputChange) obj;
                if (((MouseSelectionObserver) obj4).mo221onDrag3MmeM6k(pointerInputChange.position, (SelectionAdjustment$Companion$$ExternalSyntheticLambda0) obj3)) {
                    pointerInputChange.consume();
                    ref$BooleanRef3.element = true;
                }
                return unit;
            case 10:
                final TextFieldSelectionManager textFieldSelectionManager = (TextFieldSelectionManager) obj4;
                CoroutineScope coroutineScope = (CoroutineScope) obj3;
                Context context2 = (Context) obj2;
                TextContextMenuBuilderScope textContextMenuBuilderScope = (TextContextMenuBuilderScope) obj;
                textContextMenuBuilderScope.separator();
                MutableObjectList mutableObjectList = textContextMenuBuilderScope.components;
                TextContextMenuItems textContextMenuItems = TextContextMenuItems.Cut;
                boolean z2 = (TextRange.m641getCollapsedimpl(textFieldSelectionManager.getValue$foundation().selection) || !textFieldSelectionManager.getEditable() || textFieldSelectionManager.clipboard == null) ? false : true;
                int i16 = 18;
                Recomposer$$ExternalSyntheticLambda6 recomposer$$ExternalSyntheticLambda6 = new Recomposer$$ExternalSyntheticLambda6(i16, coroutineScope, new TextFieldSelectionManager$contextMenuAreaModifier$3(textFieldSelectionManager, continuation, i8));
                Resources resources = context2.getResources();
                SelectionManager_androidKt$$ExternalSyntheticLambda8 selectionManager_androidKt$$ExternalSyntheticLambda8 = new SelectionManager_androidKt$$ExternalSyntheticLambda8(recomposer$$ExternalSyntheticLambda6, null, 1);
                if (z2) {
                    mutableObjectList.add(new TextContextMenuItem(textContextMenuItems.getKey(), resources.getString(textContextMenuItems.m192getStringId9Hzcbyc()), textContextMenuItems.m191getDrawableId3I4p1mQ(), selectionManager_androidKt$$ExternalSyntheticLambda8));
                }
                TextContextMenuItems textContextMenuItems2 = TextContextMenuItems.Copy;
                boolean z3 = (TextRange.m641getCollapsedimpl(textFieldSelectionManager.getValue$foundation().selection) || textFieldSelectionManager.clipboard == null) ? false : true;
                Recomposer$$ExternalSyntheticLambda6 recomposer$$ExternalSyntheticLambda62 = new Recomposer$$ExternalSyntheticLambda6(i16, coroutineScope, new TextFieldSelectionManager$contextMenuAreaModifier$3(textFieldSelectionManager, continuation, i5));
                Resources resources2 = context2.getResources();
                SelectionManager_androidKt$$ExternalSyntheticLambda8 selectionManager_androidKt$$ExternalSyntheticLambda82 = new SelectionManager_androidKt$$ExternalSyntheticLambda8(recomposer$$ExternalSyntheticLambda62, null, 1);
                if (z3) {
                    mutableObjectList.add(new TextContextMenuItem(textContextMenuItems2.getKey(), resources2.getString(textContextMenuItems2.m192getStringId9Hzcbyc()), textContextMenuItems2.m191getDrawableId3I4p1mQ(), selectionManager_androidKt$$ExternalSyntheticLambda82));
                }
                TextContextMenuItems textContextMenuItems3 = TextContextMenuItems.Paste;
                boolean z4 = textFieldSelectionManager.getEditable() && ((Boolean) textFieldSelectionManager.hasAvailableTextToPaste$delegate.getValue()).booleanValue() && textFieldSelectionManager.clipboard != null;
                Recomposer$$ExternalSyntheticLambda6 recomposer$$ExternalSyntheticLambda63 = new Recomposer$$ExternalSyntheticLambda6(i16, coroutineScope, new TextFieldSelectionManager$contextMenuAreaModifier$3(textFieldSelectionManager, continuation, i6));
                Resources resources3 = context2.getResources();
                SelectionManager_androidKt$$ExternalSyntheticLambda8 selectionManager_androidKt$$ExternalSyntheticLambda83 = new SelectionManager_androidKt$$ExternalSyntheticLambda8(recomposer$$ExternalSyntheticLambda63, null, 1);
                if (z4) {
                    mutableObjectList.add(new TextContextMenuItem(textContextMenuItems3.getKey(), resources3.getString(textContextMenuItems3.m192getStringId9Hzcbyc()), textContextMenuItems3.m191getDrawableId3I4p1mQ(), selectionManager_androidKt$$ExternalSyntheticLambda83));
                }
                TextContextMenuItems textContextMenuItems4 = TextContextMenuItems.SelectAll;
                boolean z5 = TextRange.m642getLengthimpl(textFieldSelectionManager.getValue$foundation().selection) != textFieldSelectionManager.getValue$foundation().annotatedString.text.length();
                final int i17 = 0;
                Function0 function0 = new Function0() { // from class: androidx.compose.foundation.text.selection.TextFieldSelectionManager_androidKt$$ExternalSyntheticLambda5
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        int i18 = i17;
                        Unit unit2 = Unit.INSTANCE;
                        TextFieldSelectionManager textFieldSelectionManager2 = textFieldSelectionManager;
                        switch (i18) {
                            case 0:
                                break;
                            case 1:
                                TextFieldValue m239createTextFieldValueFDrldGo = TextFieldSelectionManager.m239createTextFieldValueFDrldGo(textFieldSelectionManager2.getValue$foundation().annotatedString, ParagraphKt.TextRange(0, textFieldSelectionManager2.getValue$foundation().annotatedString.text.length()));
                                textFieldSelectionManager2.onValueChange.invoke(m239createTextFieldValueFDrldGo);
                                long j10 = m239createTextFieldValueFDrldGo.selection;
                                textFieldSelectionManager2.latestSelection = new TextRange(j10);
                                textFieldSelectionManager2.oldValue = TextFieldValue.m659copy3r_uNRQ$default(textFieldSelectionManager2.oldValue, null, j10, 5);
                                textFieldSelectionManager2.enterSelectionMode$foundation(true);
                                break;
                            default:
                                Function0 function02 = textFieldSelectionManager2.requestAutofillAction;
                                if (function02 != null) {
                                    function02.invoke();
                                    break;
                                }
                                break;
                        }
                        return unit2;
                    }
                };
                Function0 function02 = new Function0() { // from class: androidx.compose.foundation.text.selection.TextFieldSelectionManager_androidKt$$ExternalSyntheticLambda5
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        int i18 = i8;
                        Unit unit2 = Unit.INSTANCE;
                        TextFieldSelectionManager textFieldSelectionManager2 = textFieldSelectionManager;
                        switch (i18) {
                            case 0:
                                break;
                            case 1:
                                TextFieldValue m239createTextFieldValueFDrldGo = TextFieldSelectionManager.m239createTextFieldValueFDrldGo(textFieldSelectionManager2.getValue$foundation().annotatedString, ParagraphKt.TextRange(0, textFieldSelectionManager2.getValue$foundation().annotatedString.text.length()));
                                textFieldSelectionManager2.onValueChange.invoke(m239createTextFieldValueFDrldGo);
                                long j10 = m239createTextFieldValueFDrldGo.selection;
                                textFieldSelectionManager2.latestSelection = new TextRange(j10);
                                textFieldSelectionManager2.oldValue = TextFieldValue.m659copy3r_uNRQ$default(textFieldSelectionManager2.oldValue, null, j10, 5);
                                textFieldSelectionManager2.enterSelectionMode$foundation(true);
                                break;
                            default:
                                Function0 function022 = textFieldSelectionManager2.requestAutofillAction;
                                if (function022 != null) {
                                    function022.invoke();
                                    break;
                                }
                                break;
                        }
                        return unit2;
                    }
                };
                Resources resources4 = context2.getResources();
                SelectionManager_androidKt$$ExternalSyntheticLambda8 selectionManager_androidKt$$ExternalSyntheticLambda84 = new SelectionManager_androidKt$$ExternalSyntheticLambda8(function02, function0, 1);
                if (z5) {
                    mutableObjectList.add(new TextContextMenuItem(textContextMenuItems4.getKey(), resources4.getString(textContextMenuItems4.m192getStringId9Hzcbyc()), textContextMenuItems4.m191getDrawableId3I4p1mQ(), selectionManager_androidKt$$ExternalSyntheticLambda84));
                }
                if (Build.VERSION.SDK_INT >= 26) {
                    TextContextMenuItems textContextMenuItems5 = TextContextMenuItems.Autofill;
                    boolean z6 = textFieldSelectionManager.getEditable() && TextRange.m641getCollapsedimpl(textFieldSelectionManager.getValue$foundation().selection);
                    Function0 function03 = new Function0() { // from class: androidx.compose.foundation.text.selection.TextFieldSelectionManager_androidKt$$ExternalSyntheticLambda5
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            int i18 = i5;
                            Unit unit2 = Unit.INSTANCE;
                            TextFieldSelectionManager textFieldSelectionManager2 = textFieldSelectionManager;
                            switch (i18) {
                                case 0:
                                    break;
                                case 1:
                                    TextFieldValue m239createTextFieldValueFDrldGo = TextFieldSelectionManager.m239createTextFieldValueFDrldGo(textFieldSelectionManager2.getValue$foundation().annotatedString, ParagraphKt.TextRange(0, textFieldSelectionManager2.getValue$foundation().annotatedString.text.length()));
                                    textFieldSelectionManager2.onValueChange.invoke(m239createTextFieldValueFDrldGo);
                                    long j10 = m239createTextFieldValueFDrldGo.selection;
                                    textFieldSelectionManager2.latestSelection = new TextRange(j10);
                                    textFieldSelectionManager2.oldValue = TextFieldValue.m659copy3r_uNRQ$default(textFieldSelectionManager2.oldValue, null, j10, 5);
                                    textFieldSelectionManager2.enterSelectionMode$foundation(true);
                                    break;
                                default:
                                    Function0 function022 = textFieldSelectionManager2.requestAutofillAction;
                                    if (function022 != null) {
                                        function022.invoke();
                                        break;
                                    }
                                    break;
                            }
                            return unit2;
                        }
                    };
                    Resources resources5 = context2.getResources();
                    SelectionManager_androidKt$$ExternalSyntheticLambda8 selectionManager_androidKt$$ExternalSyntheticLambda85 = new SelectionManager_androidKt$$ExternalSyntheticLambda8(function03, null, 1);
                    if (z6) {
                        mutableObjectList.add(new TextContextMenuItem(textContextMenuItems5.getKey(), resources5.getString(textContextMenuItems5.m192getStringId9Hzcbyc()), textContextMenuItems5.m191getDrawableId3I4p1mQ(), selectionManager_androidKt$$ExternalSyntheticLambda85));
                    }
                }
                textContextMenuBuilderScope.separator();
                return unit;
            case 11:
                PaddingValues paddingValues = (PaddingValues) obj3;
                Alignment.Horizontal horizontal = (Alignment.Horizontal) obj2;
                LayoutNodeDrawScope layoutNodeDrawScope = (LayoutNodeDrawScope) obj;
                long j10 = ((Size) ((TextFieldImplKt$CommonDecorationBox$3$borderContainerWithId$1.AnonymousClass1) obj4).get()).packedValue;
                float intBitsToFloat = Float.intBitsToFloat((int) (j10 >> 32));
                if (intBitsToFloat > RecyclerView.DECELERATION_RATE) {
                    float mo87toPx0680j_4 = layoutNodeDrawScope.mo87toPx0680j_4(4.0f);
                    CanvasDrawScope canvasDrawScope = layoutNodeDrawScope.canvasDrawScope;
                    SVG svg = canvasDrawScope.drawContext;
                    float align = horizontal.align(UnsignedKt.roundToInt(intBitsToFloat), UnsignedKt.roundToInt((Float.intBitsToFloat((int) (svg.m796getSizeNHjbRc() >> 32)) - r10) - layoutNodeDrawScope.mo87toPx0680j_4(paddingValues.mo122calculateRightPaddingu2uoSUM(layoutNodeDrawScope.getLayoutDirection()))), layoutNodeDrawScope.getLayoutDirection()) + layoutNodeDrawScope.mo87toPx0680j_4(paddingValues.mo121calculateLeftPaddingu2uoSUM(layoutNodeDrawScope.getLayoutDirection()));
                    float f2 = intBitsToFloat / 2.0f;
                    float f3 = align + f2;
                    float f4 = (f3 - f2) - mo87toPx0680j_4;
                    float f5 = f4 < RecyclerView.DECELERATION_RATE ? 0.0f : f4;
                    float f6 = f3 + f2 + mo87toPx0680j_4;
                    float intBitsToFloat2 = Float.intBitsToFloat((int) (svg.m796getSizeNHjbRc() >> 32));
                    float f7 = f6 > intBitsToFloat2 ? intBitsToFloat2 : f6;
                    float intBitsToFloat3 = Float.intBitsToFloat((int) (j10 & 4294967295L));
                    float f8 = (-intBitsToFloat3) / 2.0f;
                    float f9 = intBitsToFloat3 / 2.0f;
                    SVG svg2 = canvasDrawScope.drawContext;
                    long m796getSizeNHjbRc = svg2.m796getSizeNHjbRc();
                    svg2.getCanvas().save();
                    try {
                        ((PopupMenu$1) svg2.rootElement).m1clipRectN_I0leg(f5, f8, f7, f9, 0);
                        layoutNodeDrawScope.drawContent();
                    } finally {
                        Animation.CC.m(svg2, m796getSizeNHjbRc);
                    }
                } else {
                    layoutNodeDrawScope.drawContent();
                }
                return unit;
            case 12:
                LifecycleOwner lifecycleOwner = (LifecycleOwner) obj4;
                NavControllerImpl$$ExternalSyntheticLambda1 navControllerImpl$$ExternalSyntheticLambda1 = new NavControllerImpl$$ExternalSyntheticLambda1(i8, (Function1) obj3);
                lifecycleOwner.getLifecycle().addObserver(navControllerImpl$$ExternalSyntheticLambda1);
                return new AnimatedContentKt$AnimatedContent$6$1$5$1$1$invoke$$inlined$onDispose$1((Function0) obj2, lifecycleOwner, navControllerImpl$$ExternalSyntheticLambda1, i8);
            case IMAGE_VALUE:
                BasicTooltipKt$$ExternalSyntheticLambda7 basicTooltipKt$$ExternalSyntheticLambda7 = new BasicTooltipKt$$ExternalSyntheticLambda7((CoroutineScope) obj3, (TooltipStateImpl) obj2, i7);
                KProperty[] kPropertyArr = SemanticsPropertiesKt.$$delegatedProperties;
                ((SemanticsPropertyReceiver) obj).set(SemanticsActions.OnLongClick, new AccessibilityAction((String) obj4, basicTooltipKt$$ExternalSyntheticLambda7));
                return unit;
            case LINEAR_PROGRESS_INDICATOR_VALUE:
                SaveableStateHolderImpl saveableStateHolderImpl = (SaveableStateHolderImpl) obj4;
                SaveableStateRegistryWrapper saveableStateRegistryWrapper = (SaveableStateRegistryWrapper) obj2;
                MutableScatterMap mutableScatterMap = saveableStateHolderImpl.registries;
                if (mutableScatterMap.contains(obj3)) {
                    ContextsKt$$ExternalSyntheticBUOutline0.m(obj3, " was used multiple times ", "Key ");
                    return null;
                }
                saveableStateHolderImpl.savedStates.remove(obj3);
                mutableScatterMap.set(obj3, saveableStateRegistryWrapper);
                return new AnimatedContentKt$AnimatedContent$6$1$5$1$1$invoke$$inlined$onDispose$1(saveableStateHolderImpl, obj3, saveableStateRegistryWrapper, i5);
            case 15:
                LifecycleOwner lifecycleOwner2 = (LifecycleOwner) obj4;
                Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
                MenuHostHelper$$ExternalSyntheticLambda0 menuHostHelper$$ExternalSyntheticLambda0 = new MenuHostHelper$$ExternalSyntheticLambda0((LifecycleStartStopEffectScope) obj3, ref$ObjectRef, (Function1) obj2, i8);
                lifecycleOwner2.getLifecycle().addObserver(menuHostHelper$$ExternalSyntheticLambda0);
                return new AnimatedContentKt$AnimatedContent$6$1$5$1$1$invoke$$inlined$onDispose$1(lifecycleOwner2, menuHostHelper$$ExternalSyntheticLambda0, ref$ObjectRef, i6);
            case LAZY_VERTICAL_GRID_VALUE:
                SnapshotStateList snapshotStateList = (SnapshotStateList) obj4;
                NavBackStackEntry navBackStackEntry = (NavBackStackEntry) obj3;
                snapshotStateList.add(navBackStackEntry);
                return new AnimatedContentKt$AnimatedContent$6$1$5$1$1$invoke$$inlined$onDispose$1((DialogNavigator) obj2, navBackStackEntry, snapshotStateList);
            case VERTICAL_GRID_ITEM_VALUE:
                ((BufferedSink) obj).getClass();
                ((BasicDerAdapter) obj4).codec.encode((Latch) obj3, obj2);
                return unit;
            case RADIO_GROUP_VALUE:
                FilePageFragment filePageFragment = (FilePageFragment) obj4;
                String str9 = (String) obj3;
                PageSummaryForEdit pageSummaryForEdit = (PageSummaryForEdit) obj2;
                Bitmap bitmap = (Bitmap) obj;
                bitmap.getClass();
                if (filePageFragment.isAdded()) {
                    LifecycleCoroutineScopeImpl lifecycleScope = ViewModelKt.getLifecycleScope(filePageFragment);
                    Context requireContext = filePageFragment.requireContext();
                    String name = new File(str9).getName();
                    name.getClass();
                    String str10 = pageSummaryForEdit.displayTitle;
                    String uri = pageSummaryForEdit.pageTitle.getUri();
                    str10.getClass();
                    AwaitKt.launch$default(lifecycleScope, new ShareUtil$shareImage$$inlined$CoroutineExceptionHandler$1(requireContext), null, new ShareUtil$shareImage$2(requireContext, str10, uri, (Function0) null, bitmap, name, (Continuation) null), 2);
                }
                return unit;
            case RADIO_BUTTON_VALUE:
                return invoke$org$wikipedia$compose$components$FadeInAsyncImageKt$$ExternalSyntheticLambda2(obj);
            case RADIO_ROW_VALUE:
                PageSummary pageSummary = (PageSummary) obj;
                pageSummary.getClass();
                ((Function1) obj4).invoke(new HomeAction.PageClick((TopReadCard) obj3, pageSummary.getHistoryEntry((WikiSite) obj2, 14)));
                return unit;
            case RADIO_COLUMN_VALUE:
                return invoke$org$wikipedia$feed$CommunityContentTabKt$$ExternalSyntheticLambda20(obj);
            case SIZE_BOX_VALUE:
                return invoke$org$wikipedia$feed$HomeFragment$$ExternalSyntheticLambda6(obj);
            case 23:
                return invoke$org$wikipedia$games$GamesHubFragment$$ExternalSyntheticLambda6(obj);
            case 24:
                return invoke$org$wikipedia$games$GamesHubScreenKt$$ExternalSyntheticLambda1(obj);
            case 25:
                return invoke$org$wikipedia$language$addlanguages$AddLanguagesListScreenKt$$ExternalSyntheticLambda4(obj);
            case 26:
                return invoke$org$wikipedia$places$PlacesFragment$$ExternalSyntheticLambda17(obj);
            case 27:
                return invoke$org$wikipedia$random$RandomScreenKt$$ExternalSyntheticLambda15(obj);
            default:
                String str11 = (String) obj4;
                final List list2 = (List) obj3;
                final InfiniteTransition infiniteTransition = (InfiniteTransition) obj2;
                LazyListIntervalContent lazyListIntervalContent = (LazyListIntervalContent) obj;
                lazyListIntervalContent.getClass();
                int hashCode = str11.hashCode();
                if (hashCode != -1641849634) {
                    if (hashCode != -201031894) {
                        if (hashCode == 951543133 && str11.equals("control")) {
                            lazyListIntervalContent.items(15, null, LazyListScope$items$1.INSTANCE, new ComposableLambdaImpl(new HybridSearchSkeletonLoaderKt$$ExternalSyntheticLambda0(list2, infiniteTransition, i8), true, 1398200991));
                        }
                    } else if (str11.equals("lexicalsemantic")) {
                        lazyListIntervalContent.items(3, null, LazyListScope$items$1.INSTANCE, new ComposableLambdaImpl(new HybridSearchSkeletonLoaderKt$$ExternalSyntheticLambda0(list2, infiniteTransition, i5), true, 1185081480));
                        LazyItemScope$CC.item$default(lazyListIntervalContent, null, new ComposableLambdaImpl(new Function3() { // from class: org.wikipedia.search.HybridSearchSkeletonLoaderKt$$ExternalSyntheticLambda5
                            @Override // kotlin.jvm.functions.Function3
                            public final Object invoke(Object obj6, Object obj7, Object obj8) {
                                int i18 = i7;
                                Unit unit2 = Unit.INSTANCE;
                                InfiniteTransition infiniteTransition2 = infiniteTransition;
                                List list3 = list2;
                                switch (i18) {
                                    case 0:
                                        GapComposer gapComposer = (GapComposer) obj7;
                                        int intValue9 = ((Integer) obj8).intValue();
                                        ((LazyItemScopeImpl) obj6).getClass();
                                        if (!gapComposer.shouldExecute(intValue9 & 1, (intValue9 & 17) != 16)) {
                                            gapComposer.skipToGroupEnd();
                                            break;
                                        } else {
                                            NoSearchResultsKt.HorizontalHybridSearchListItemLoader(OffsetKt.m136paddingqDBjuR0$default(Modifier.Companion.$$INSTANCE, RecyclerView.DECELERATION_RATE, 8.0f, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 13), list3, infiniteTransition2, gapComposer, 4150);
                                            break;
                                        }
                                    default:
                                        GapComposer gapComposer2 = (GapComposer) obj7;
                                        int intValue10 = ((Integer) obj8).intValue();
                                        ((LazyItemScopeImpl) obj6).getClass();
                                        if (!gapComposer2.shouldExecute(intValue10 & 1, (intValue10 & 17) != 16)) {
                                            gapComposer2.skipToGroupEnd();
                                            break;
                                        } else {
                                            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
                                            NoSearchResultsKt.HorizontalHybridSearchListItemLoader(OffsetKt.m136paddingqDBjuR0$default(companion, RecyclerView.DECELERATION_RATE, 8.0f, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 13), list3, infiniteTransition2, gapComposer2, 4150);
                                            OffsetKt.Spacer(gapComposer2, SizeKt.m140height3ABfNKs(companion, 8.0f));
                                            break;
                                        }
                                }
                                return unit2;
                            }
                        }, true, 407774015), 3);
                    }
                } else if (str11.equals("semanticlexical")) {
                    LazyItemScope$CC.item$default(lazyListIntervalContent, null, new ComposableLambdaImpl(new Function3() { // from class: org.wikipedia.search.HybridSearchSkeletonLoaderKt$$ExternalSyntheticLambda5
                        @Override // kotlin.jvm.functions.Function3
                        public final Object invoke(Object obj6, Object obj7, Object obj8) {
                            int i18 = i8;
                            Unit unit2 = Unit.INSTANCE;
                            InfiniteTransition infiniteTransition2 = infiniteTransition;
                            List list3 = list2;
                            switch (i18) {
                                case 0:
                                    GapComposer gapComposer = (GapComposer) obj7;
                                    int intValue9 = ((Integer) obj8).intValue();
                                    ((LazyItemScopeImpl) obj6).getClass();
                                    if (!gapComposer.shouldExecute(intValue9 & 1, (intValue9 & 17) != 16)) {
                                        gapComposer.skipToGroupEnd();
                                        break;
                                    } else {
                                        NoSearchResultsKt.HorizontalHybridSearchListItemLoader(OffsetKt.m136paddingqDBjuR0$default(Modifier.Companion.$$INSTANCE, RecyclerView.DECELERATION_RATE, 8.0f, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 13), list3, infiniteTransition2, gapComposer, 4150);
                                        break;
                                    }
                                default:
                                    GapComposer gapComposer2 = (GapComposer) obj7;
                                    int intValue10 = ((Integer) obj8).intValue();
                                    ((LazyItemScopeImpl) obj6).getClass();
                                    if (!gapComposer2.shouldExecute(intValue10 & 1, (intValue10 & 17) != 16)) {
                                        gapComposer2.skipToGroupEnd();
                                        break;
                                    } else {
                                        Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
                                        NoSearchResultsKt.HorizontalHybridSearchListItemLoader(OffsetKt.m136paddingqDBjuR0$default(companion, RecyclerView.DECELERATION_RATE, 8.0f, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 13), list3, infiniteTransition2, gapComposer2, 4150);
                                        OffsetKt.Spacer(gapComposer2, SizeKt.m140height3ABfNKs(companion, 8.0f));
                                        break;
                                    }
                            }
                            return unit2;
                        }
                    }, true, 710661406), 3);
                    lazyListIntervalContent.items(3, null, LazyListScope$items$1.INSTANCE, new ComposableLambdaImpl(new HybridSearchSkeletonLoaderKt$$ExternalSyntheticLambda0(list2, infiniteTransition, i6), true, 1487968871));
                }
                return unit;
        }
    }

    public /* synthetic */ UtilsKt$$ExternalSyntheticLambda1(Object obj, Object obj2, Object obj3, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = obj2;
        this.f$2 = obj3;
    }

    public /* synthetic */ UtilsKt$$ExternalSyntheticLambda1(Ref$FloatRef ref$FloatRef, ScrollingLogic$doFlingAnimation$2$reverseScope$1 scrollingLogic$doFlingAnimation$2$reverseScope$1, Ref$FloatRef ref$FloatRef2, DefaultFlingBehavior defaultFlingBehavior) {
        this.$r8$classId = 2;
        this.f$0 = ref$FloatRef;
        this.f$1 = scrollingLogic$doFlingAnimation$2$reverseScope$1;
        this.f$2 = ref$FloatRef2;
    }
}
