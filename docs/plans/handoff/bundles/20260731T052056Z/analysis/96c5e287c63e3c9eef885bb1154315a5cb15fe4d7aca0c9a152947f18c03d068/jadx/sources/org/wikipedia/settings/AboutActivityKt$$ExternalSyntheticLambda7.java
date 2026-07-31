package org.wikipedia.settings;

import android.content.Context;
import android.os.Bundle;
import androidx.activity.compose.BackHandlerKt$BackHandler$lambda$4$0$$inlined$onDispose$1;
import androidx.activity.compose.ManagedActivityResultLauncher;
import androidx.cardview.widget.CardView;
import androidx.compose.animation.AnimatedContentScopeImpl;
import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.Animation;
import androidx.compose.animation.core.AnimationScope;
import androidx.compose.animation.core.AnimationState;
import androidx.compose.animation.core.ArcSplineKt;
import androidx.compose.animation.core.InfiniteTransition;
import androidx.compose.foundation.BorderStroke;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.ScrollNode$$ExternalSyntheticLambda0;
import androidx.compose.foundation.gestures.MouseWheelScrollingLogic;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.gestures.ScrollableKt;
import androidx.compose.foundation.gestures.ScrollingLogic$nestedScrollScope$1;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.lazy.LazyItemScope$CC;
import androidx.compose.foundation.lazy.LazyItemScopeImpl;
import androidx.compose.foundation.lazy.LazyListIntervalContent;
import androidx.compose.foundation.lazy.LazyListIntervalContent$$ExternalSyntheticLambda2;
import androidx.compose.foundation.lazy.LazyListScope$items$1;
import androidx.compose.foundation.lazy.grid.LazyGridMeasureResult;
import androidx.compose.foundation.lazy.layout.PrefetchHandleProvider$HandleAndRequestImpl;
import androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridInterval;
import androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridIntervalContent;
import androidx.compose.foundation.lazy.staggeredgrid.StaggeredGridItemSpan;
import androidx.compose.foundation.pager.PagerState;
import androidx.compose.foundation.text.BasicTextKt$$ExternalSyntheticLambda3;
import androidx.compose.foundation.text.CoreTextFieldKt$$ExternalSyntheticLambda1;
import androidx.compose.foundation.text.CoreTextFieldKt$CoreTextField$lambda$18$0$$inlined$onDispose$1;
import androidx.compose.foundation.text.LegacyTextFieldState;
import androidx.compose.material3.AppBarKt$$ExternalSyntheticLambda11;
import androidx.compose.material3.CardKt;
import androidx.compose.material3.CardKt$Card$1;
import androidx.compose.material3.ChipKt;
import androidx.compose.material3.ColorScheme;
import androidx.compose.material3.ColorSchemeKt;
import androidx.compose.material3.FilterChipDefaults;
import androidx.compose.material3.SelectableChipColors;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.material3.TextKt;
import androidx.compose.material3.TooltipKt$TooltipBox$3;
import androidx.compose.material3.Typography;
import androidx.compose.material3.TypographyKt;
import androidx.compose.material3.internal.TextFieldImplKt$$ExternalSyntheticLambda9;
import androidx.compose.material3.tokens.FilterChipTokens;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Latch$await$2$2;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.State;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.layout.SubcomposeLayoutState;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.platform.TestTagKt;
import androidx.compose.ui.text.input.ImeOptions;
import androidx.compose.ui.text.input.PlatformTextInputService;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.compose.ui.text.input.TextInputService;
import androidx.compose.ui.text.input.TextInputSession;
import androidx.core.view.MenuHostHelper$$ExternalSyntheticLambda0;
import androidx.lifecycle.LifecycleOwner;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavDestination;
import androidx.navigation.NavGraphBuilder;
import androidx.navigation.NavHostController;
import androidx.navigation.internal.NavControllerImpl;
import androidx.paging.ItemSnapshotList;
import androidx.paging.compose.LazyPagingItems;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.Room;
import androidx.work.OperationKt;
import coil3.compose.SubcomposeAsyncImageKt$$ExternalSyntheticLambda2;
import coil3.compose.internal.UtilsKt$$ExternalSyntheticLambda1;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import kotlin.Unit;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.functions.Function6;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlin.jvm.internal.Ref$FloatRef;
import kotlin.jvm.internal.Ref$IntRef;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.CoroutineScope;
import okhttp3.internal.http2.Http2Connection;
import okhttp3.internal.http2.Http2Connection$$ExternalSyntheticLambda2;
import okio.Okio__OkioKt;
import org.wikipedia.activitytab.ActivityTabFragment$$ExternalSyntheticLambda34;
import org.wikipedia.compose.components.menu.PageOverflowMenuViewModel;
import org.wikipedia.compose.theme.WikipediaColor;
import org.wikipedia.compose.theme.WikipediaColorKt;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.donate.donationreminder.DonationReminderViewModel;
import org.wikipedia.feed.CommunityContentState;
import org.wikipedia.feed.CommunityContentTabKt$$ExternalSyntheticLambda47;
import org.wikipedia.feed.CommunityContentTabKt$$ExternalSyntheticLambda49;
import org.wikipedia.feed.ForYouCardKt;
import org.wikipedia.feed.ForYouCardKt$$ExternalSyntheticLambda1;
import org.wikipedia.feed.HomeAction;
import org.wikipedia.feed.dayheader.DayHeaderCard;
import org.wikipedia.feed.didyouknow.DidYouKnowCard;
import org.wikipedia.feed.featured.FeaturedArticleCard;
import org.wikipedia.feed.image.FeaturedImageCard;
import org.wikipedia.feed.model.Card;
import org.wikipedia.feed.news.NewsCard;
import org.wikipedia.feed.onthisday.OnThisDayCard;
import org.wikipedia.feed.personalization.homepreference.HomeContentState;
import org.wikipedia.feed.personalization.homepreference.HomePreferenceScreenKt;
import org.wikipedia.feed.personalization.homepreference.HomePreferenceType;
import org.wikipedia.feed.personalization.interest.InterestSelectionScreenKt$$ExternalSyntheticLambda15;
import org.wikipedia.feed.topread.TopRead;
import org.wikipedia.feed.topread.TopReadCard;
import org.wikipedia.games.GamesHubScreenKt$$ExternalSyntheticLambda23;
import org.wikipedia.games.GamesHubScreenKt$$ExternalSyntheticLambda8;
import org.wikipedia.language.LangLinksScreenKt$ComposeLangLinksScreen$lambda$4$3$0$$inlined$items$default$3;
import org.wikipedia.language.LangLinksScreenKt$ComposeLangLinksScreen$lambda$4$3$0$$inlined$items$default$4;
import org.wikipedia.random.RandomScreenKt$$ExternalSyntheticLambda5;
import org.wikipedia.readinglist.ReadingListFragment;
import org.wikipedia.readinglist.recommended.RecommendedReadingListSourceScreenKt;
import org.wikipedia.settings.AboutActivityKt$$ExternalSyntheticLambda11;
import org.wikipedia.settings.AboutActivityKt$$ExternalSyntheticLambda2;
import org.wikipedia.settings.homefeed.FeedConfigurationScreenKt$WhenMappings;
import org.wikipedia.settings.homefeed.FeedConfigurationType;
import org.wikipedia.settings.homefeed.HomeFeedSettingsDestination;
import org.wikipedia.settings.homefeed.HomeFeedSettingsNavHostKt$$ExternalSyntheticLambda13;
import org.wikipedia.settings.homefeed.HomeFeedSettingsNavHostKt$$ExternalSyntheticLambda18;
import org.wikipedia.settings.homefeed.HomeFeedSettingsNavHostKt$$ExternalSyntheticLambda7;
import org.wikipedia.talk.TalkTopicsViewModel$watchOrUnwatch$1;
import org.wikipedia.util.SingleLiveData$$ExternalSyntheticLambda0;
import org.wikipedia.util.TabUtil;
import org.wikipedia.util.UriUtil;
import org.wikipedia.watchlist.WatchlistExpiryDialogKt$WatchlistExpiryDialogView$lambda$3$1$0$$inlined$items$default$4;
import org.wikipedia.yearinreview.YearInReviewCaptureRequest;
import org.wikipedia.yearinreview.YearInReviewScreenData;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class AboutActivityKt$$ExternalSyntheticLambda7 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ Object f$2;
    public final /* synthetic */ Object f$3;

    public /* synthetic */ AboutActivityKt$$ExternalSyntheticLambda7(LazyPagingItems lazyPagingItems, String str, Function4 function4, Function3 function3) {
        this.$r8$classId = 14;
        this.f$0 = lazyPagingItems;
        this.f$2 = str;
        this.f$1 = function4;
        this.f$3 = function3;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        final Function1 function1;
        int i = this.$r8$classId;
        final int i2 = 0;
        int i3 = 3;
        int i4 = 2;
        Unit unit = Unit.INSTANCE;
        final int i5 = 1;
        Object obj2 = this.f$3;
        Object obj3 = this.f$2;
        Object obj4 = this.f$1;
        Object obj5 = this.f$0;
        switch (i) {
            case 0:
                AwaitKt.launch$default((CoroutineScope) obj5, null, null, new TalkTopicsViewModel$watchOrUnwatch$1(((Boolean) obj).booleanValue(), (SnackbarHostState) obj4, (String) obj3, (String) obj2, null, 5), 3);
                return unit;
            case 1:
                Animatable animatable = (Animatable) obj5;
                AnimationState animationState = (AnimationState) obj4;
                Function1 function12 = (Function1) obj3;
                Ref$BooleanRef ref$BooleanRef = (Ref$BooleanRef) obj2;
                AnimationScope animationScope = (AnimationScope) obj;
                ArcSplineKt.updateState(animationScope, animatable.internalState);
                ParcelableSnapshotMutableState parcelableSnapshotMutableState = animationScope.value$delegate;
                Object clampToBounds = animatable.clampToBounds(parcelableSnapshotMutableState.getValue());
                if (!Intrinsics.areEqual(clampToBounds, parcelableSnapshotMutableState.getValue())) {
                    animatable.internalState.value$delegate.setValue(clampToBounds);
                    animationState.value$delegate.setValue(clampToBounds);
                    if (function12 != null) {
                        function12.invoke(animatable);
                    }
                    animationScope.cancelAnimation();
                    ref$BooleanRef.element = true;
                } else if (function12 != null) {
                    function12.invoke(animatable);
                }
                return unit;
            case 2:
                InfiniteTransition infiniteTransition = (InfiniteTransition) obj3;
                Ref$FloatRef ref$FloatRef = (Ref$FloatRef) obj2;
                CoroutineScope coroutineScope = (CoroutineScope) obj5;
                long longValue = ((Long) obj).longValue();
                State state = (State) ((MutableState) obj4).getValue();
                long longValue2 = state != null ? ((Number) state.getValue()).longValue() : longValue;
                long j = infiniteTransition.startTimeNanos;
                MutableVector mutableVector = infiniteTransition._animations;
                if (j == Long.MIN_VALUE || ref$FloatRef.element != ArcSplineKt.getDurationScale(coroutineScope.getCoroutineContext())) {
                    infiniteTransition.startTimeNanos = longValue;
                    Object[] objArr = mutableVector.content;
                    int i6 = mutableVector.size;
                    for (int i7 = 0; i7 < i6; i7++) {
                        ((InfiniteTransition.TransitionAnimationState) objArr[i7]).startOnTheNextFrame = true;
                    }
                    ref$FloatRef.element = ArcSplineKt.getDurationScale(coroutineScope.getCoroutineContext());
                }
                float f = ref$FloatRef.element;
                if (f == RecyclerView.DECELERATION_RATE) {
                    Object[] objArr2 = mutableVector.content;
                    int i8 = mutableVector.size;
                    while (i2 < i8) {
                        InfiniteTransition.TransitionAnimationState transitionAnimationState = (InfiniteTransition.TransitionAnimationState) objArr2[i2];
                        transitionAnimationState.value$delegate.setValue(transitionAnimationState.animation.mutableTargetValue);
                        transitionAnimationState.startOnTheNextFrame = true;
                        i2++;
                    }
                } else {
                    long j2 = (long) ((longValue2 - infiniteTransition.startTimeNanos) / f);
                    Object[] objArr3 = mutableVector.content;
                    int i9 = mutableVector.size;
                    boolean z = true;
                    for (int i10 = 0; i10 < i9; i10++) {
                        InfiniteTransition.TransitionAnimationState transitionAnimationState2 = (InfiniteTransition.TransitionAnimationState) objArr3[i10];
                        boolean z2 = transitionAnimationState2.isFinished;
                        if (!z2) {
                            transitionAnimationState2.this$0.refreshChildNeeded$delegate.setValue(Boolean.FALSE);
                            if (transitionAnimationState2.startOnTheNextFrame) {
                                transitionAnimationState2.startOnTheNextFrame = false;
                                transitionAnimationState2.playTimeNanosOffset = j2;
                            }
                            long j3 = j2 - transitionAnimationState2.playTimeNanosOffset;
                            transitionAnimationState2.value$delegate.setValue(transitionAnimationState2.animation.getValueFromNanos(j3));
                            z2 = Animation.CC.$default$isFinishedFromNanos(transitionAnimationState2.animation, j3);
                            transitionAnimationState2.isFinished = z2;
                        }
                        if (!z2) {
                            z = false;
                        }
                    }
                    infiniteTransition.isRunning$delegate.setValue(Boolean.valueOf(!z));
                }
                return unit;
            case 3:
                Ref$FloatRef ref$FloatRef2 = (Ref$FloatRef) obj5;
                MouseWheelScrollingLogic mouseWheelScrollingLogic = (MouseWheelScrollingLogic) obj4;
                ScrollingLogic$nestedScrollScope$1 scrollingLogic$nestedScrollScope$1 = (ScrollingLogic$nestedScrollScope$1) obj3;
                GamesHubScreenKt$$ExternalSyntheticLambda23 gamesHubScreenKt$$ExternalSyntheticLambda23 = (GamesHubScreenKt$$ExternalSyntheticLambda23) obj2;
                AnimationScope animationScope2 = (AnimationScope) obj;
                float floatValue = ((Number) animationScope2.value$delegate.getValue()).floatValue() - ref$FloatRef2.element;
                if (!ScrollableKt.isLowScrollingDelta(floatValue)) {
                    if (!ScrollableKt.isLowScrollingDelta(floatValue - mouseWheelScrollingLogic.dispatchMouseWheelScroll(scrollingLogic$nestedScrollScope$1, floatValue))) {
                        animationScope2.cancelAnimation();
                        return unit;
                    }
                    ref$FloatRef2.element += floatValue;
                }
                if (((Boolean) gamesHubScreenKt$$ExternalSyntheticLambda23.invoke(Float.valueOf(ref$FloatRef2.element))).booleanValue()) {
                    animationScope2.cancelAnimation();
                }
                return unit;
            case 4:
                List list = (List) obj5;
                Ref$IntRef ref$IntRef = (Ref$IntRef) obj4;
                List list2 = (List) obj3;
                LazyGridMeasureResult lazyGridMeasureResult = (LazyGridMeasureResult) obj2;
                PrefetchHandleProvider$HandleAndRequestImpl prefetchHandleProvider$HandleAndRequestImpl = (PrefetchHandleProvider$HandleAndRequestImpl) obj;
                SubcomposeLayoutState.PrecomposedSlotHandle precomposedSlotHandle = prefetchHandleProvider$HandleAndRequestImpl.precomposeHandle;
                int placeablesCount = precomposedSlotHandle != null ? precomposedSlotHandle.getPlaceablesCount() : 0;
                int i11 = 0;
                while (i2 < placeablesCount) {
                    Orientation orientation = lazyGridMeasureResult.orientation;
                    Orientation orientation2 = Orientation.Vertical;
                    SubcomposeLayoutState.PrecomposedSlotHandle precomposedSlotHandle2 = prefetchHandleProvider$HandleAndRequestImpl.precomposeHandle;
                    i11 += (int) (orientation == orientation2 ? 4294967295L & (precomposedSlotHandle2 != null ? precomposedSlotHandle2.mo527getSizeYEO4UFw(i2) : 0L) : (precomposedSlotHandle2 != null ? precomposedSlotHandle2.mo527getSizeYEO4UFw(i2) : 0L) >> 32);
                    i2++;
                }
                if (list != null) {
                    list.add(Integer.valueOf(i11));
                }
                if (ref$IntRef.element != list2.size()) {
                    ref$IntRef.element++;
                }
                return unit;
            case 5:
                LegacyTextFieldState legacyTextFieldState = (LegacyTextFieldState) obj5;
                TextInputService textInputService = (TextInputService) obj4;
                TextFieldValue textFieldValue = (TextFieldValue) obj3;
                ImeOptions imeOptions = (ImeOptions) obj2;
                if (legacyTextFieldState.getHasFocus()) {
                    CardView.AnonymousClass1 anonymousClass1 = legacyTextFieldState.processor;
                    CoreTextFieldKt$$ExternalSyntheticLambda1 coreTextFieldKt$$ExternalSyntheticLambda1 = legacyTextFieldState.onValueChange;
                    CoreTextFieldKt$$ExternalSyntheticLambda1 coreTextFieldKt$$ExternalSyntheticLambda12 = legacyTextFieldState.onImeActionPerformed;
                    Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
                    UtilsKt$$ExternalSyntheticLambda1 utilsKt$$ExternalSyntheticLambda1 = new UtilsKt$$ExternalSyntheticLambda1(anonymousClass1, coreTextFieldKt$$ExternalSyntheticLambda1, ref$ObjectRef, 6);
                    PlatformTextInputService platformTextInputService = textInputService.platformTextInputService;
                    platformTextInputService.startInput(textFieldValue, imeOptions, utilsKt$$ExternalSyntheticLambda1, coreTextFieldKt$$ExternalSyntheticLambda12);
                    TextInputSession textInputSession = new TextInputSession(textInputService, platformTextInputService);
                    textInputService._currentInputSession.set(textInputSession);
                    ref$ObjectRef.element = textInputSession;
                    legacyTextFieldState.inputSession = textInputSession;
                }
                return new CoreTextFieldKt$CoreTextField$lambda$18$0$$inlined$onDispose$1();
            case 6:
                NavBackStackEntry navBackStackEntry = (NavBackStackEntry) obj;
                navBackStackEntry.getClass();
                ((Ref$BooleanRef) obj5).element = true;
                ((NavControllerImpl) obj4).addEntryToBackStack((NavDestination) obj3, (Bundle) obj2, navBackStackEntry, EmptyList.INSTANCE);
                return unit;
            case 7:
                LifecycleOwner lifecycleOwner = (LifecycleOwner) obj5;
                ((DisposableEffectScope) obj).getClass();
                MenuHostHelper$$ExternalSyntheticLambda0 menuHostHelper$$ExternalSyntheticLambda0 = new MenuHostHelper$$ExternalSyntheticLambda0((DonationReminderViewModel) obj4, (Function1) obj3, (MutableState) obj2, i4);
                lifecycleOwner.getLifecycle().addObserver(menuHostHelper$$ExternalSyntheticLambda0);
                return new BackHandlerKt$BackHandler$lambda$4$0$$inlined$onDispose$1(12, lifecycleOwner, menuHostHelper$$ExternalSyntheticLambda0);
            case 8:
                CommunityContentState communityContentState = (CommunityContentState) obj5;
                final WikiSite wikiSite = (WikiSite) obj4;
                Function1 function13 = (Function1) obj3;
                final PageOverflowMenuViewModel.PageOverflowMenuState pageOverflowMenuState = (PageOverflowMenuViewModel.PageOverflowMenuState) obj2;
                LazyListIntervalContent lazyListIntervalContent = (LazyListIntervalContent) obj;
                lazyListIntervalContent.getClass();
                LazyItemScope$CC.item$default(lazyListIntervalContent, null, new ComposableLambdaImpl(new CommunityContentTabKt$$ExternalSyntheticLambda47(i2, wikiSite), true, 50875070), 3);
                boolean z3 = false;
                for (Object obj6 : communityContentState.cards) {
                    int i12 = i2 + 1;
                    if (i2 < 0) {
                        Room.throwIndexOverflow();
                        throw null;
                    }
                    Card card = (Card) obj6;
                    boolean z4 = card instanceof DayHeaderCard;
                    if (z4) {
                        DayHeaderCard dayHeaderCard = (DayHeaderCard) card;
                        LazyItemScope$CC.item$default(lazyListIntervalContent, Animation.CC.m(dayHeaderCard.age, "day-header-"), new ComposableLambdaImpl(new CommunityContentTabKt$$ExternalSyntheticLambda47(11, dayHeaderCard), true, 1928619645), 2);
                    } else if (card instanceof FeaturedArticleCard) {
                        FeaturedArticleCard featuredArticleCard = (FeaturedArticleCard) card;
                        LazyItemScope$CC.item$default(lazyListIntervalContent, Animation.CC.m(featuredArticleCard.age, "tfa-"), new ComposableLambdaImpl(new CommunityContentTabKt$$ExternalSyntheticLambda49(i2, function13, wikiSite, featuredArticleCard), true, -790986202), 2);
                    } else {
                        if (card instanceof TopReadCard) {
                            if (z3) {
                                LazyItemScope$CC.item$default(lazyListIntervalContent, Animation.CC.m(((TopReadCard) card).age, "top-read-spacer-"), ForYouCardKt.f36lambda$1859074208, 2);
                            }
                            final TopReadCard topReadCard = (TopReadCard) card;
                            final int i13 = 0;
                            final int i14 = i2;
                            function1 = function13;
                            LazyItemScope$CC.item$default(lazyListIntervalContent, Animation.CC.m(topReadCard.age, "top-read-"), new ComposableLambdaImpl(new Function3() { // from class: org.wikipedia.feed.CommunityContentTabKt$$ExternalSyntheticLambda50
                                @Override // kotlin.jvm.functions.Function3
                                public final Object invoke(Object obj7, Object obj8, Object obj9) {
                                    int i15 = i13;
                                    int i16 = 3;
                                    Unit unit2 = Unit.INSTANCE;
                                    Object obj10 = Composer$Companion.Empty;
                                    PageOverflowMenuViewModel.PageOverflowMenuState pageOverflowMenuState2 = pageOverflowMenuState;
                                    int i17 = i14;
                                    final Function1 function14 = function1;
                                    Card card2 = topReadCard;
                                    final int i18 = 0;
                                    final int i19 = 1;
                                    switch (i15) {
                                        case 0:
                                            final TopReadCard topReadCard2 = (TopReadCard) card2;
                                            GapComposer gapComposer = (GapComposer) obj8;
                                            int intValue = ((Integer) obj9).intValue();
                                            ((LazyItemScopeImpl) obj7).getClass();
                                            if (!gapComposer.shouldExecute(intValue & 1, (intValue & 17) != 16)) {
                                                gapComposer.skipToGroupEnd();
                                                break;
                                            } else {
                                                TopRead topRead = topReadCard2.articles;
                                                ComposableLambdaImpl rememberComposableLambda = Expect_jvmKt.rememberComposableLambda(-107913496, new AboutActivityKt$$ExternalSyntheticLambda2(topReadCard2, pageOverflowMenuState2, function14, i16), gapComposer);
                                                boolean changed = gapComposer.changed(function14) | gapComposer.changed(topReadCard2);
                                                Object rememberedValue = gapComposer.rememberedValue();
                                                if (changed || rememberedValue == obj10) {
                                                    rememberedValue = new Function0() { // from class: org.wikipedia.feed.CommunityContentTabKt$$ExternalSyntheticLambda11
                                                        @Override // kotlin.jvm.functions.Function0
                                                        public final Object invoke() {
                                                            int i20 = i18;
                                                            Unit unit3 = Unit.INSTANCE;
                                                            TopReadCard topReadCard3 = topReadCard2;
                                                            Function1 function15 = function14;
                                                            switch (i20) {
                                                                case 0:
                                                                    function15.invoke(new HomeAction.HideCommunityCard(topReadCard3));
                                                                    break;
                                                                default:
                                                                    function15.invoke(new HomeAction.CardFooterClick(topReadCard3));
                                                                    break;
                                                            }
                                                            return unit3;
                                                        }
                                                    };
                                                    gapComposer.updateRememberedValue(rememberedValue);
                                                }
                                                Function0 function0 = (Function0) rememberedValue;
                                                boolean changed2 = gapComposer.changed(function14) | gapComposer.changed(topReadCard2);
                                                Object rememberedValue2 = gapComposer.rememberedValue();
                                                if (changed2 || rememberedValue2 == obj10) {
                                                    rememberedValue2 = new HomeScreenKt$$ExternalSyntheticLambda4(function14, topReadCard2, 1);
                                                    gapComposer.updateRememberedValue(rememberedValue2);
                                                }
                                                Function0 function02 = (Function0) rememberedValue2;
                                                boolean changed3 = gapComposer.changed(function14) | gapComposer.changed(topReadCard2);
                                                WikiSite wikiSite2 = wikiSite;
                                                boolean changedInstance = changed3 | gapComposer.changedInstance(wikiSite2);
                                                Object rememberedValue3 = gapComposer.rememberedValue();
                                                if (changedInstance || rememberedValue3 == obj10) {
                                                    rememberedValue3 = new UtilsKt$$ExternalSyntheticLambda1(function14, topReadCard2, wikiSite2, 20);
                                                    gapComposer.updateRememberedValue(rememberedValue3);
                                                }
                                                Function1 function15 = (Function1) rememberedValue3;
                                                boolean changed4 = gapComposer.changed(function14) | gapComposer.changed(topReadCard2);
                                                Object rememberedValue4 = gapComposer.rememberedValue();
                                                if (changed4 || rememberedValue4 == obj10) {
                                                    rememberedValue4 = new HomeScreenKt$$ExternalSyntheticLambda17(24, function14, topReadCard2);
                                                    gapComposer.updateRememberedValue(rememberedValue4);
                                                }
                                                Function2 function2 = (Function2) rememberedValue4;
                                                boolean changed5 = gapComposer.changed(function14) | gapComposer.changed(topReadCard2);
                                                Object rememberedValue5 = gapComposer.rememberedValue();
                                                if (changed5 || rememberedValue5 == obj10) {
                                                    rememberedValue5 = new Function0() { // from class: org.wikipedia.feed.CommunityContentTabKt$$ExternalSyntheticLambda11
                                                        @Override // kotlin.jvm.functions.Function0
                                                        public final Object invoke() {
                                                            int i20 = i19;
                                                            Unit unit3 = Unit.INSTANCE;
                                                            TopReadCard topReadCard3 = topReadCard2;
                                                            Function1 function152 = function14;
                                                            switch (i20) {
                                                                case 0:
                                                                    function152.invoke(new HomeAction.HideCommunityCard(topReadCard3));
                                                                    break;
                                                                default:
                                                                    function152.invoke(new HomeAction.CardFooterClick(topReadCard3));
                                                                    break;
                                                            }
                                                            return unit3;
                                                        }
                                                    };
                                                    gapComposer.updateRememberedValue(rememberedValue5);
                                                }
                                                Function0 function03 = (Function0) rememberedValue5;
                                                boolean changed6 = gapComposer.changed(function14) | gapComposer.changed(topReadCard2) | gapComposer.changed(i17);
                                                Object rememberedValue6 = gapComposer.rememberedValue();
                                                if (changed6 || rememberedValue6 == obj10) {
                                                    rememberedValue6 = new Http2Connection$$ExternalSyntheticLambda2(i17, 2, topReadCard2, function14);
                                                    gapComposer.updateRememberedValue(rememberedValue6);
                                                }
                                                Okio__OkioKt.TopReadModule(wikiSite2, topRead, rememberComposableLambda, function0, function02, function15, function2, function03, (Function0) rememberedValue6, gapComposer, 384);
                                                break;
                                            }
                                        case 1:
                                            final OnThisDayCard onThisDayCard = (OnThisDayCard) card2;
                                            GapComposer gapComposer2 = (GapComposer) obj8;
                                            int intValue2 = ((Integer) obj9).intValue();
                                            ((LazyItemScopeImpl) obj7).getClass();
                                            if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 17) != 16)) {
                                                gapComposer2.skipToGroupEnd();
                                                break;
                                            } else {
                                                List list3 = onThisDayCard.events;
                                                ComposableLambdaImpl rememberComposableLambda2 = Expect_jvmKt.rememberComposableLambda(-801690947, new RandomScreenKt$$ExternalSyntheticLambda5(onThisDayCard, pageOverflowMenuState2, function14), gapComposer2);
                                                boolean changed7 = gapComposer2.changed(function14) | gapComposer2.changed(onThisDayCard);
                                                Object rememberedValue7 = gapComposer2.rememberedValue();
                                                if (changed7 || rememberedValue7 == obj10) {
                                                    rememberedValue7 = new Function0() { // from class: org.wikipedia.feed.CommunityContentTabKt$$ExternalSyntheticLambda18
                                                        @Override // kotlin.jvm.functions.Function0
                                                        public final Object invoke() {
                                                            int i20 = i18;
                                                            Unit unit3 = Unit.INSTANCE;
                                                            OnThisDayCard onThisDayCard2 = onThisDayCard;
                                                            Function1 function16 = function14;
                                                            switch (i20) {
                                                                case 0:
                                                                    function16.invoke(new HomeAction.HideCommunityCard(onThisDayCard2));
                                                                    break;
                                                                default:
                                                                    function16.invoke(new HomeAction.CardFooterClick(onThisDayCard2));
                                                                    break;
                                                            }
                                                            return unit3;
                                                        }
                                                    };
                                                    gapComposer2.updateRememberedValue(rememberedValue7);
                                                }
                                                Function0 function04 = (Function0) rememberedValue7;
                                                boolean changed8 = gapComposer2.changed(function14) | gapComposer2.changed(onThisDayCard);
                                                Object rememberedValue8 = gapComposer2.rememberedValue();
                                                if (changed8 || rememberedValue8 == obj10) {
                                                    rememberedValue8 = new HomeScreenKt$$ExternalSyntheticLambda4(function14, onThisDayCard, 2);
                                                    gapComposer2.updateRememberedValue(rememberedValue8);
                                                }
                                                Function0 function05 = (Function0) rememberedValue8;
                                                boolean changed9 = gapComposer2.changed(function14) | gapComposer2.changed(onThisDayCard);
                                                WikiSite wikiSite3 = wikiSite;
                                                boolean changedInstance2 = changed9 | gapComposer2.changedInstance(wikiSite3);
                                                Object rememberedValue9 = gapComposer2.rememberedValue();
                                                if (changedInstance2 || rememberedValue9 == obj10) {
                                                    rememberedValue9 = new UtilsKt$$ExternalSyntheticLambda1(function14, onThisDayCard, wikiSite3, 21);
                                                    gapComposer2.updateRememberedValue(rememberedValue9);
                                                }
                                                Function1 function16 = (Function1) rememberedValue9;
                                                boolean changed10 = gapComposer2.changed(function14) | gapComposer2.changed(onThisDayCard);
                                                Object rememberedValue10 = gapComposer2.rememberedValue();
                                                if (changed10 || rememberedValue10 == obj10) {
                                                    rememberedValue10 = new SubcomposeAsyncImageKt$$ExternalSyntheticLambda2(9, function14, onThisDayCard);
                                                    gapComposer2.updateRememberedValue(rememberedValue10);
                                                }
                                                Function3 function3 = (Function3) rememberedValue10;
                                                boolean changed11 = gapComposer2.changed(function14) | gapComposer2.changed(onThisDayCard);
                                                Object rememberedValue11 = gapComposer2.rememberedValue();
                                                if (changed11 || rememberedValue11 == obj10) {
                                                    rememberedValue11 = new Function0() { // from class: org.wikipedia.feed.CommunityContentTabKt$$ExternalSyntheticLambda18
                                                        @Override // kotlin.jvm.functions.Function0
                                                        public final Object invoke() {
                                                            int i20 = i19;
                                                            Unit unit3 = Unit.INSTANCE;
                                                            OnThisDayCard onThisDayCard2 = onThisDayCard;
                                                            Function1 function162 = function14;
                                                            switch (i20) {
                                                                case 0:
                                                                    function162.invoke(new HomeAction.HideCommunityCard(onThisDayCard2));
                                                                    break;
                                                                default:
                                                                    function162.invoke(new HomeAction.CardFooterClick(onThisDayCard2));
                                                                    break;
                                                            }
                                                            return unit3;
                                                        }
                                                    };
                                                    gapComposer2.updateRememberedValue(rememberedValue11);
                                                }
                                                Function0 function06 = (Function0) rememberedValue11;
                                                boolean changed12 = gapComposer2.changed(function14) | gapComposer2.changed(onThisDayCard) | gapComposer2.changed(i17);
                                                Object rememberedValue12 = gapComposer2.rememberedValue();
                                                if (changed12 || rememberedValue12 == obj10) {
                                                    rememberedValue12 = new Http2Connection$$ExternalSyntheticLambda2(i17, 3, onThisDayCard, function14);
                                                    gapComposer2.updateRememberedValue(rememberedValue12);
                                                }
                                                ReadingListFragment.MultiSelectCallback.OnThisDayModule(wikiSite3, list3, rememberComposableLambda2, function04, function05, function16, function3, function06, (Function0) rememberedValue12, gapComposer2, 384);
                                                break;
                                            }
                                        default:
                                            final DidYouKnowCard didYouKnowCard = (DidYouKnowCard) card2;
                                            GapComposer gapComposer3 = (GapComposer) obj8;
                                            int intValue3 = ((Integer) obj9).intValue();
                                            ((LazyItemScopeImpl) obj7).getClass();
                                            if (!gapComposer3.shouldExecute(intValue3 & 1, (intValue3 & 17) != 16)) {
                                                gapComposer3.skipToGroupEnd();
                                                break;
                                            } else {
                                                List list4 = didYouKnowCard.items;
                                                boolean changed13 = gapComposer3.changed(function14) | gapComposer3.changed(didYouKnowCard);
                                                Object rememberedValue13 = gapComposer3.rememberedValue();
                                                if (changed13 || rememberedValue13 == obj10) {
                                                    rememberedValue13 = new Function0() { // from class: org.wikipedia.feed.CommunityContentTabKt$$ExternalSyntheticLambda32
                                                        @Override // kotlin.jvm.functions.Function0
                                                        public final Object invoke() {
                                                            int i20 = i18;
                                                            Unit unit3 = Unit.INSTANCE;
                                                            DidYouKnowCard didYouKnowCard2 = didYouKnowCard;
                                                            Function1 function17 = function14;
                                                            switch (i20) {
                                                                case 0:
                                                                    function17.invoke(new HomeAction.HideCommunityCard(didYouKnowCard2));
                                                                    break;
                                                                default:
                                                                    function17.invoke(new HomeAction.CardFooterClick(didYouKnowCard2));
                                                                    break;
                                                            }
                                                            return unit3;
                                                        }
                                                    };
                                                    gapComposer3.updateRememberedValue(rememberedValue13);
                                                }
                                                Function0 function07 = (Function0) rememberedValue13;
                                                boolean changed14 = gapComposer3.changed(function14) | gapComposer3.changed(didYouKnowCard);
                                                Object rememberedValue14 = gapComposer3.rememberedValue();
                                                if (changed14 || rememberedValue14 == obj10) {
                                                    rememberedValue14 = new HomeScreenKt$$ExternalSyntheticLambda4(function14, didYouKnowCard, 6);
                                                    gapComposer3.updateRememberedValue(rememberedValue14);
                                                }
                                                Function0 function08 = (Function0) rememberedValue14;
                                                boolean changed15 = gapComposer3.changed(function14) | gapComposer3.changed(didYouKnowCard);
                                                Object rememberedValue15 = gapComposer3.rememberedValue();
                                                if (changed15 || rememberedValue15 == obj10) {
                                                    rememberedValue15 = new GamesHubScreenKt$$ExternalSyntheticLambda8(15, function14, didYouKnowCard);
                                                    gapComposer3.updateRememberedValue(rememberedValue15);
                                                }
                                                Function1 function17 = (Function1) rememberedValue15;
                                                boolean changed16 = gapComposer3.changed(function14) | gapComposer3.changed(didYouKnowCard);
                                                Object rememberedValue16 = gapComposer3.rememberedValue();
                                                if (changed16 || rememberedValue16 == obj10) {
                                                    rememberedValue16 = new Function0() { // from class: org.wikipedia.feed.CommunityContentTabKt$$ExternalSyntheticLambda32
                                                        @Override // kotlin.jvm.functions.Function0
                                                        public final Object invoke() {
                                                            int i20 = i19;
                                                            Unit unit3 = Unit.INSTANCE;
                                                            DidYouKnowCard didYouKnowCard2 = didYouKnowCard;
                                                            Function1 function172 = function14;
                                                            switch (i20) {
                                                                case 0:
                                                                    function172.invoke(new HomeAction.HideCommunityCard(didYouKnowCard2));
                                                                    break;
                                                                default:
                                                                    function172.invoke(new HomeAction.CardFooterClick(didYouKnowCard2));
                                                                    break;
                                                            }
                                                            return unit3;
                                                        }
                                                    };
                                                    gapComposer3.updateRememberedValue(rememberedValue16);
                                                }
                                                Function0 function09 = (Function0) rememberedValue16;
                                                boolean changed17 = gapComposer3.changed(function14) | gapComposer3.changed(didYouKnowCard) | gapComposer3.changed(i17);
                                                Object rememberedValue17 = gapComposer3.rememberedValue();
                                                if (changed17 || rememberedValue17 == obj10) {
                                                    rememberedValue17 = new Http2Connection$$ExternalSyntheticLambda2(i17, 5, didYouKnowCard, function14);
                                                    gapComposer3.updateRememberedValue(rememberedValue17);
                                                }
                                                Function0 function010 = (Function0) rememberedValue17;
                                                ComposableLambdaImpl rememberComposableLambda3 = Expect_jvmKt.rememberComposableLambda(946757843, new AboutActivityKt$$ExternalSyntheticLambda2(didYouKnowCard, pageOverflowMenuState2, function14, 4), gapComposer3);
                                                boolean changed18 = gapComposer3.changed(function14) | gapComposer3.changed(didYouKnowCard);
                                                Object rememberedValue18 = gapComposer3.rememberedValue();
                                                if (changed18 || rememberedValue18 == obj10) {
                                                    rememberedValue18 = new HomeScreenKt$$ExternalSyntheticLambda17(25, function14, didYouKnowCard);
                                                    gapComposer3.updateRememberedValue(rememberedValue18);
                                                }
                                                TabUtil.DidYouKnowModule(wikiSite, list4, function07, function08, function17, function09, function010, rememberComposableLambda3, (Function2) rememberedValue18, gapComposer3, 12582912);
                                                break;
                                            }
                                    }
                                    return unit2;
                                }
                            }, true, -1211105147), 2);
                        } else {
                            final int i15 = i2;
                            function1 = function13;
                            PageOverflowMenuViewModel.PageOverflowMenuState pageOverflowMenuState2 = pageOverflowMenuState;
                            if (card instanceof NewsCard) {
                                NewsCard newsCard = (NewsCard) card;
                                WikiSite wikiSite2 = wikiSite;
                                wikiSite = wikiSite2;
                                LazyItemScope$CC.item$default(lazyListIntervalContent, Animation.CC.m(newsCard.age, "news-"), new ComposableLambdaImpl(new CommunityContentTabKt$$ExternalSyntheticLambda49(newsCard, wikiSite2, function1, i15, 1), true, -1631224092), 2);
                            } else if (card instanceof OnThisDayCard) {
                                if (z3) {
                                    LazyItemScope$CC.item$default(lazyListIntervalContent, Animation.CC.m(((OnThisDayCard) card).age, "on-this-day-spacer-"), ForYouCardKt.lambda$1595655198, 2);
                                }
                                final OnThisDayCard onThisDayCard = (OnThisDayCard) card;
                                final int i16 = 1;
                                pageOverflowMenuState = pageOverflowMenuState2;
                                LazyItemScope$CC.item$default(lazyListIntervalContent, Animation.CC.m(onThisDayCard.age, "on-this-day-"), new ComposableLambdaImpl(new Function3() { // from class: org.wikipedia.feed.CommunityContentTabKt$$ExternalSyntheticLambda50
                                    @Override // kotlin.jvm.functions.Function3
                                    public final Object invoke(Object obj7, Object obj8, Object obj9) {
                                        int i152 = i16;
                                        int i162 = 3;
                                        Unit unit2 = Unit.INSTANCE;
                                        Object obj10 = Composer$Companion.Empty;
                                        PageOverflowMenuViewModel.PageOverflowMenuState pageOverflowMenuState22 = pageOverflowMenuState;
                                        int i17 = i15;
                                        final Function1 function14 = function1;
                                        Card card2 = onThisDayCard;
                                        final int i18 = 0;
                                        final int i19 = 1;
                                        switch (i152) {
                                            case 0:
                                                final TopReadCard topReadCard2 = (TopReadCard) card2;
                                                GapComposer gapComposer = (GapComposer) obj8;
                                                int intValue = ((Integer) obj9).intValue();
                                                ((LazyItemScopeImpl) obj7).getClass();
                                                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 17) != 16)) {
                                                    gapComposer.skipToGroupEnd();
                                                    break;
                                                } else {
                                                    TopRead topRead = topReadCard2.articles;
                                                    ComposableLambdaImpl rememberComposableLambda = Expect_jvmKt.rememberComposableLambda(-107913496, new AboutActivityKt$$ExternalSyntheticLambda2(topReadCard2, pageOverflowMenuState22, function14, i162), gapComposer);
                                                    boolean changed = gapComposer.changed(function14) | gapComposer.changed(topReadCard2);
                                                    Object rememberedValue = gapComposer.rememberedValue();
                                                    if (changed || rememberedValue == obj10) {
                                                        rememberedValue = new Function0() { // from class: org.wikipedia.feed.CommunityContentTabKt$$ExternalSyntheticLambda11
                                                            @Override // kotlin.jvm.functions.Function0
                                                            public final Object invoke() {
                                                                int i20 = i18;
                                                                Unit unit3 = Unit.INSTANCE;
                                                                TopReadCard topReadCard3 = topReadCard2;
                                                                Function1 function152 = function14;
                                                                switch (i20) {
                                                                    case 0:
                                                                        function152.invoke(new HomeAction.HideCommunityCard(topReadCard3));
                                                                        break;
                                                                    default:
                                                                        function152.invoke(new HomeAction.CardFooterClick(topReadCard3));
                                                                        break;
                                                                }
                                                                return unit3;
                                                            }
                                                        };
                                                        gapComposer.updateRememberedValue(rememberedValue);
                                                    }
                                                    Function0 function0 = (Function0) rememberedValue;
                                                    boolean changed2 = gapComposer.changed(function14) | gapComposer.changed(topReadCard2);
                                                    Object rememberedValue2 = gapComposer.rememberedValue();
                                                    if (changed2 || rememberedValue2 == obj10) {
                                                        rememberedValue2 = new HomeScreenKt$$ExternalSyntheticLambda4(function14, topReadCard2, 1);
                                                        gapComposer.updateRememberedValue(rememberedValue2);
                                                    }
                                                    Function0 function02 = (Function0) rememberedValue2;
                                                    boolean changed3 = gapComposer.changed(function14) | gapComposer.changed(topReadCard2);
                                                    WikiSite wikiSite22 = wikiSite;
                                                    boolean changedInstance = changed3 | gapComposer.changedInstance(wikiSite22);
                                                    Object rememberedValue3 = gapComposer.rememberedValue();
                                                    if (changedInstance || rememberedValue3 == obj10) {
                                                        rememberedValue3 = new UtilsKt$$ExternalSyntheticLambda1(function14, topReadCard2, wikiSite22, 20);
                                                        gapComposer.updateRememberedValue(rememberedValue3);
                                                    }
                                                    Function1 function15 = (Function1) rememberedValue3;
                                                    boolean changed4 = gapComposer.changed(function14) | gapComposer.changed(topReadCard2);
                                                    Object rememberedValue4 = gapComposer.rememberedValue();
                                                    if (changed4 || rememberedValue4 == obj10) {
                                                        rememberedValue4 = new HomeScreenKt$$ExternalSyntheticLambda17(24, function14, topReadCard2);
                                                        gapComposer.updateRememberedValue(rememberedValue4);
                                                    }
                                                    Function2 function2 = (Function2) rememberedValue4;
                                                    boolean changed5 = gapComposer.changed(function14) | gapComposer.changed(topReadCard2);
                                                    Object rememberedValue5 = gapComposer.rememberedValue();
                                                    if (changed5 || rememberedValue5 == obj10) {
                                                        rememberedValue5 = new Function0() { // from class: org.wikipedia.feed.CommunityContentTabKt$$ExternalSyntheticLambda11
                                                            @Override // kotlin.jvm.functions.Function0
                                                            public final Object invoke() {
                                                                int i20 = i19;
                                                                Unit unit3 = Unit.INSTANCE;
                                                                TopReadCard topReadCard3 = topReadCard2;
                                                                Function1 function152 = function14;
                                                                switch (i20) {
                                                                    case 0:
                                                                        function152.invoke(new HomeAction.HideCommunityCard(topReadCard3));
                                                                        break;
                                                                    default:
                                                                        function152.invoke(new HomeAction.CardFooterClick(topReadCard3));
                                                                        break;
                                                                }
                                                                return unit3;
                                                            }
                                                        };
                                                        gapComposer.updateRememberedValue(rememberedValue5);
                                                    }
                                                    Function0 function03 = (Function0) rememberedValue5;
                                                    boolean changed6 = gapComposer.changed(function14) | gapComposer.changed(topReadCard2) | gapComposer.changed(i17);
                                                    Object rememberedValue6 = gapComposer.rememberedValue();
                                                    if (changed6 || rememberedValue6 == obj10) {
                                                        rememberedValue6 = new Http2Connection$$ExternalSyntheticLambda2(i17, 2, topReadCard2, function14);
                                                        gapComposer.updateRememberedValue(rememberedValue6);
                                                    }
                                                    Okio__OkioKt.TopReadModule(wikiSite22, topRead, rememberComposableLambda, function0, function02, function15, function2, function03, (Function0) rememberedValue6, gapComposer, 384);
                                                    break;
                                                }
                                            case 1:
                                                final OnThisDayCard onThisDayCard2 = (OnThisDayCard) card2;
                                                GapComposer gapComposer2 = (GapComposer) obj8;
                                                int intValue2 = ((Integer) obj9).intValue();
                                                ((LazyItemScopeImpl) obj7).getClass();
                                                if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 17) != 16)) {
                                                    gapComposer2.skipToGroupEnd();
                                                    break;
                                                } else {
                                                    List list3 = onThisDayCard2.events;
                                                    ComposableLambdaImpl rememberComposableLambda2 = Expect_jvmKt.rememberComposableLambda(-801690947, new RandomScreenKt$$ExternalSyntheticLambda5(onThisDayCard2, pageOverflowMenuState22, function14), gapComposer2);
                                                    boolean changed7 = gapComposer2.changed(function14) | gapComposer2.changed(onThisDayCard2);
                                                    Object rememberedValue7 = gapComposer2.rememberedValue();
                                                    if (changed7 || rememberedValue7 == obj10) {
                                                        rememberedValue7 = new Function0() { // from class: org.wikipedia.feed.CommunityContentTabKt$$ExternalSyntheticLambda18
                                                            @Override // kotlin.jvm.functions.Function0
                                                            public final Object invoke() {
                                                                int i20 = i18;
                                                                Unit unit3 = Unit.INSTANCE;
                                                                OnThisDayCard onThisDayCard22 = onThisDayCard2;
                                                                Function1 function162 = function14;
                                                                switch (i20) {
                                                                    case 0:
                                                                        function162.invoke(new HomeAction.HideCommunityCard(onThisDayCard22));
                                                                        break;
                                                                    default:
                                                                        function162.invoke(new HomeAction.CardFooterClick(onThisDayCard22));
                                                                        break;
                                                                }
                                                                return unit3;
                                                            }
                                                        };
                                                        gapComposer2.updateRememberedValue(rememberedValue7);
                                                    }
                                                    Function0 function04 = (Function0) rememberedValue7;
                                                    boolean changed8 = gapComposer2.changed(function14) | gapComposer2.changed(onThisDayCard2);
                                                    Object rememberedValue8 = gapComposer2.rememberedValue();
                                                    if (changed8 || rememberedValue8 == obj10) {
                                                        rememberedValue8 = new HomeScreenKt$$ExternalSyntheticLambda4(function14, onThisDayCard2, 2);
                                                        gapComposer2.updateRememberedValue(rememberedValue8);
                                                    }
                                                    Function0 function05 = (Function0) rememberedValue8;
                                                    boolean changed9 = gapComposer2.changed(function14) | gapComposer2.changed(onThisDayCard2);
                                                    WikiSite wikiSite3 = wikiSite;
                                                    boolean changedInstance2 = changed9 | gapComposer2.changedInstance(wikiSite3);
                                                    Object rememberedValue9 = gapComposer2.rememberedValue();
                                                    if (changedInstance2 || rememberedValue9 == obj10) {
                                                        rememberedValue9 = new UtilsKt$$ExternalSyntheticLambda1(function14, onThisDayCard2, wikiSite3, 21);
                                                        gapComposer2.updateRememberedValue(rememberedValue9);
                                                    }
                                                    Function1 function16 = (Function1) rememberedValue9;
                                                    boolean changed10 = gapComposer2.changed(function14) | gapComposer2.changed(onThisDayCard2);
                                                    Object rememberedValue10 = gapComposer2.rememberedValue();
                                                    if (changed10 || rememberedValue10 == obj10) {
                                                        rememberedValue10 = new SubcomposeAsyncImageKt$$ExternalSyntheticLambda2(9, function14, onThisDayCard2);
                                                        gapComposer2.updateRememberedValue(rememberedValue10);
                                                    }
                                                    Function3 function3 = (Function3) rememberedValue10;
                                                    boolean changed11 = gapComposer2.changed(function14) | gapComposer2.changed(onThisDayCard2);
                                                    Object rememberedValue11 = gapComposer2.rememberedValue();
                                                    if (changed11 || rememberedValue11 == obj10) {
                                                        rememberedValue11 = new Function0() { // from class: org.wikipedia.feed.CommunityContentTabKt$$ExternalSyntheticLambda18
                                                            @Override // kotlin.jvm.functions.Function0
                                                            public final Object invoke() {
                                                                int i20 = i19;
                                                                Unit unit3 = Unit.INSTANCE;
                                                                OnThisDayCard onThisDayCard22 = onThisDayCard2;
                                                                Function1 function162 = function14;
                                                                switch (i20) {
                                                                    case 0:
                                                                        function162.invoke(new HomeAction.HideCommunityCard(onThisDayCard22));
                                                                        break;
                                                                    default:
                                                                        function162.invoke(new HomeAction.CardFooterClick(onThisDayCard22));
                                                                        break;
                                                                }
                                                                return unit3;
                                                            }
                                                        };
                                                        gapComposer2.updateRememberedValue(rememberedValue11);
                                                    }
                                                    Function0 function06 = (Function0) rememberedValue11;
                                                    boolean changed12 = gapComposer2.changed(function14) | gapComposer2.changed(onThisDayCard2) | gapComposer2.changed(i17);
                                                    Object rememberedValue12 = gapComposer2.rememberedValue();
                                                    if (changed12 || rememberedValue12 == obj10) {
                                                        rememberedValue12 = new Http2Connection$$ExternalSyntheticLambda2(i17, 3, onThisDayCard2, function14);
                                                        gapComposer2.updateRememberedValue(rememberedValue12);
                                                    }
                                                    ReadingListFragment.MultiSelectCallback.OnThisDayModule(wikiSite3, list3, rememberComposableLambda2, function04, function05, function16, function3, function06, (Function0) rememberedValue12, gapComposer2, 384);
                                                    break;
                                                }
                                            default:
                                                final DidYouKnowCard didYouKnowCard = (DidYouKnowCard) card2;
                                                GapComposer gapComposer3 = (GapComposer) obj8;
                                                int intValue3 = ((Integer) obj9).intValue();
                                                ((LazyItemScopeImpl) obj7).getClass();
                                                if (!gapComposer3.shouldExecute(intValue3 & 1, (intValue3 & 17) != 16)) {
                                                    gapComposer3.skipToGroupEnd();
                                                    break;
                                                } else {
                                                    List list4 = didYouKnowCard.items;
                                                    boolean changed13 = gapComposer3.changed(function14) | gapComposer3.changed(didYouKnowCard);
                                                    Object rememberedValue13 = gapComposer3.rememberedValue();
                                                    if (changed13 || rememberedValue13 == obj10) {
                                                        rememberedValue13 = new Function0() { // from class: org.wikipedia.feed.CommunityContentTabKt$$ExternalSyntheticLambda32
                                                            @Override // kotlin.jvm.functions.Function0
                                                            public final Object invoke() {
                                                                int i20 = i18;
                                                                Unit unit3 = Unit.INSTANCE;
                                                                DidYouKnowCard didYouKnowCard2 = didYouKnowCard;
                                                                Function1 function172 = function14;
                                                                switch (i20) {
                                                                    case 0:
                                                                        function172.invoke(new HomeAction.HideCommunityCard(didYouKnowCard2));
                                                                        break;
                                                                    default:
                                                                        function172.invoke(new HomeAction.CardFooterClick(didYouKnowCard2));
                                                                        break;
                                                                }
                                                                return unit3;
                                                            }
                                                        };
                                                        gapComposer3.updateRememberedValue(rememberedValue13);
                                                    }
                                                    Function0 function07 = (Function0) rememberedValue13;
                                                    boolean changed14 = gapComposer3.changed(function14) | gapComposer3.changed(didYouKnowCard);
                                                    Object rememberedValue14 = gapComposer3.rememberedValue();
                                                    if (changed14 || rememberedValue14 == obj10) {
                                                        rememberedValue14 = new HomeScreenKt$$ExternalSyntheticLambda4(function14, didYouKnowCard, 6);
                                                        gapComposer3.updateRememberedValue(rememberedValue14);
                                                    }
                                                    Function0 function08 = (Function0) rememberedValue14;
                                                    boolean changed15 = gapComposer3.changed(function14) | gapComposer3.changed(didYouKnowCard);
                                                    Object rememberedValue15 = gapComposer3.rememberedValue();
                                                    if (changed15 || rememberedValue15 == obj10) {
                                                        rememberedValue15 = new GamesHubScreenKt$$ExternalSyntheticLambda8(15, function14, didYouKnowCard);
                                                        gapComposer3.updateRememberedValue(rememberedValue15);
                                                    }
                                                    Function1 function17 = (Function1) rememberedValue15;
                                                    boolean changed16 = gapComposer3.changed(function14) | gapComposer3.changed(didYouKnowCard);
                                                    Object rememberedValue16 = gapComposer3.rememberedValue();
                                                    if (changed16 || rememberedValue16 == obj10) {
                                                        rememberedValue16 = new Function0() { // from class: org.wikipedia.feed.CommunityContentTabKt$$ExternalSyntheticLambda32
                                                            @Override // kotlin.jvm.functions.Function0
                                                            public final Object invoke() {
                                                                int i20 = i19;
                                                                Unit unit3 = Unit.INSTANCE;
                                                                DidYouKnowCard didYouKnowCard2 = didYouKnowCard;
                                                                Function1 function172 = function14;
                                                                switch (i20) {
                                                                    case 0:
                                                                        function172.invoke(new HomeAction.HideCommunityCard(didYouKnowCard2));
                                                                        break;
                                                                    default:
                                                                        function172.invoke(new HomeAction.CardFooterClick(didYouKnowCard2));
                                                                        break;
                                                                }
                                                                return unit3;
                                                            }
                                                        };
                                                        gapComposer3.updateRememberedValue(rememberedValue16);
                                                    }
                                                    Function0 function09 = (Function0) rememberedValue16;
                                                    boolean changed17 = gapComposer3.changed(function14) | gapComposer3.changed(didYouKnowCard) | gapComposer3.changed(i17);
                                                    Object rememberedValue17 = gapComposer3.rememberedValue();
                                                    if (changed17 || rememberedValue17 == obj10) {
                                                        rememberedValue17 = new Http2Connection$$ExternalSyntheticLambda2(i17, 5, didYouKnowCard, function14);
                                                        gapComposer3.updateRememberedValue(rememberedValue17);
                                                    }
                                                    Function0 function010 = (Function0) rememberedValue17;
                                                    ComposableLambdaImpl rememberComposableLambda3 = Expect_jvmKt.rememberComposableLambda(946757843, new AboutActivityKt$$ExternalSyntheticLambda2(didYouKnowCard, pageOverflowMenuState22, function14, 4), gapComposer3);
                                                    boolean changed18 = gapComposer3.changed(function14) | gapComposer3.changed(didYouKnowCard);
                                                    Object rememberedValue18 = gapComposer3.rememberedValue();
                                                    if (changed18 || rememberedValue18 == obj10) {
                                                        rememberedValue18 = new HomeScreenKt$$ExternalSyntheticLambda17(25, function14, didYouKnowCard);
                                                        gapComposer3.updateRememberedValue(rememberedValue18);
                                                    }
                                                    TabUtil.DidYouKnowModule(wikiSite, list4, function07, function08, function17, function09, function010, rememberComposableLambda3, (Function2) rememberedValue18, gapComposer3, 12582912);
                                                    break;
                                                }
                                        }
                                        return unit2;
                                    }
                                }, true, -2051343037), 2);
                            } else if (card instanceof FeaturedImageCard) {
                                FeaturedImageCard featuredImageCard = (FeaturedImageCard) card;
                                WikiSite wikiSite3 = wikiSite;
                                wikiSite = wikiSite3;
                                LazyItemScope$CC.item$default(lazyListIntervalContent, Animation.CC.m(featuredImageCard.age, "tfi-"), new ComposableLambdaImpl(new CommunityContentTabKt$$ExternalSyntheticLambda49(featuredImageCard, wikiSite3, function1, i15, 2), true, 1823505314), 2);
                            } else if (card instanceof DidYouKnowCard) {
                                final DidYouKnowCard didYouKnowCard = (DidYouKnowCard) card;
                                final int i17 = 2;
                                pageOverflowMenuState = pageOverflowMenuState2;
                                function13 = function1;
                                LazyItemScope$CC.item$default(lazyListIntervalContent, Modifier.CC.m("dyk-", didYouKnowCard.date), new ComposableLambdaImpl(new Function3() { // from class: org.wikipedia.feed.CommunityContentTabKt$$ExternalSyntheticLambda50
                                    @Override // kotlin.jvm.functions.Function3
                                    public final Object invoke(Object obj7, Object obj8, Object obj9) {
                                        int i152 = i17;
                                        int i162 = 3;
                                        Unit unit2 = Unit.INSTANCE;
                                        Object obj10 = Composer$Companion.Empty;
                                        PageOverflowMenuViewModel.PageOverflowMenuState pageOverflowMenuState22 = pageOverflowMenuState;
                                        int i172 = i15;
                                        final Function1 function14 = function1;
                                        Card card2 = didYouKnowCard;
                                        final int i18 = 0;
                                        final int i19 = 1;
                                        switch (i152) {
                                            case 0:
                                                final TopReadCard topReadCard2 = (TopReadCard) card2;
                                                GapComposer gapComposer = (GapComposer) obj8;
                                                int intValue = ((Integer) obj9).intValue();
                                                ((LazyItemScopeImpl) obj7).getClass();
                                                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 17) != 16)) {
                                                    gapComposer.skipToGroupEnd();
                                                    break;
                                                } else {
                                                    TopRead topRead = topReadCard2.articles;
                                                    ComposableLambdaImpl rememberComposableLambda = Expect_jvmKt.rememberComposableLambda(-107913496, new AboutActivityKt$$ExternalSyntheticLambda2(topReadCard2, pageOverflowMenuState22, function14, i162), gapComposer);
                                                    boolean changed = gapComposer.changed(function14) | gapComposer.changed(topReadCard2);
                                                    Object rememberedValue = gapComposer.rememberedValue();
                                                    if (changed || rememberedValue == obj10) {
                                                        rememberedValue = new Function0() { // from class: org.wikipedia.feed.CommunityContentTabKt$$ExternalSyntheticLambda11
                                                            @Override // kotlin.jvm.functions.Function0
                                                            public final Object invoke() {
                                                                int i20 = i18;
                                                                Unit unit3 = Unit.INSTANCE;
                                                                TopReadCard topReadCard3 = topReadCard2;
                                                                Function1 function152 = function14;
                                                                switch (i20) {
                                                                    case 0:
                                                                        function152.invoke(new HomeAction.HideCommunityCard(topReadCard3));
                                                                        break;
                                                                    default:
                                                                        function152.invoke(new HomeAction.CardFooterClick(topReadCard3));
                                                                        break;
                                                                }
                                                                return unit3;
                                                            }
                                                        };
                                                        gapComposer.updateRememberedValue(rememberedValue);
                                                    }
                                                    Function0 function0 = (Function0) rememberedValue;
                                                    boolean changed2 = gapComposer.changed(function14) | gapComposer.changed(topReadCard2);
                                                    Object rememberedValue2 = gapComposer.rememberedValue();
                                                    if (changed2 || rememberedValue2 == obj10) {
                                                        rememberedValue2 = new HomeScreenKt$$ExternalSyntheticLambda4(function14, topReadCard2, 1);
                                                        gapComposer.updateRememberedValue(rememberedValue2);
                                                    }
                                                    Function0 function02 = (Function0) rememberedValue2;
                                                    boolean changed3 = gapComposer.changed(function14) | gapComposer.changed(topReadCard2);
                                                    WikiSite wikiSite22 = wikiSite;
                                                    boolean changedInstance = changed3 | gapComposer.changedInstance(wikiSite22);
                                                    Object rememberedValue3 = gapComposer.rememberedValue();
                                                    if (changedInstance || rememberedValue3 == obj10) {
                                                        rememberedValue3 = new UtilsKt$$ExternalSyntheticLambda1(function14, topReadCard2, wikiSite22, 20);
                                                        gapComposer.updateRememberedValue(rememberedValue3);
                                                    }
                                                    Function1 function15 = (Function1) rememberedValue3;
                                                    boolean changed4 = gapComposer.changed(function14) | gapComposer.changed(topReadCard2);
                                                    Object rememberedValue4 = gapComposer.rememberedValue();
                                                    if (changed4 || rememberedValue4 == obj10) {
                                                        rememberedValue4 = new HomeScreenKt$$ExternalSyntheticLambda17(24, function14, topReadCard2);
                                                        gapComposer.updateRememberedValue(rememberedValue4);
                                                    }
                                                    Function2 function2 = (Function2) rememberedValue4;
                                                    boolean changed5 = gapComposer.changed(function14) | gapComposer.changed(topReadCard2);
                                                    Object rememberedValue5 = gapComposer.rememberedValue();
                                                    if (changed5 || rememberedValue5 == obj10) {
                                                        rememberedValue5 = new Function0() { // from class: org.wikipedia.feed.CommunityContentTabKt$$ExternalSyntheticLambda11
                                                            @Override // kotlin.jvm.functions.Function0
                                                            public final Object invoke() {
                                                                int i20 = i19;
                                                                Unit unit3 = Unit.INSTANCE;
                                                                TopReadCard topReadCard3 = topReadCard2;
                                                                Function1 function152 = function14;
                                                                switch (i20) {
                                                                    case 0:
                                                                        function152.invoke(new HomeAction.HideCommunityCard(topReadCard3));
                                                                        break;
                                                                    default:
                                                                        function152.invoke(new HomeAction.CardFooterClick(topReadCard3));
                                                                        break;
                                                                }
                                                                return unit3;
                                                            }
                                                        };
                                                        gapComposer.updateRememberedValue(rememberedValue5);
                                                    }
                                                    Function0 function03 = (Function0) rememberedValue5;
                                                    boolean changed6 = gapComposer.changed(function14) | gapComposer.changed(topReadCard2) | gapComposer.changed(i172);
                                                    Object rememberedValue6 = gapComposer.rememberedValue();
                                                    if (changed6 || rememberedValue6 == obj10) {
                                                        rememberedValue6 = new Http2Connection$$ExternalSyntheticLambda2(i172, 2, topReadCard2, function14);
                                                        gapComposer.updateRememberedValue(rememberedValue6);
                                                    }
                                                    Okio__OkioKt.TopReadModule(wikiSite22, topRead, rememberComposableLambda, function0, function02, function15, function2, function03, (Function0) rememberedValue6, gapComposer, 384);
                                                    break;
                                                }
                                            case 1:
                                                final OnThisDayCard onThisDayCard2 = (OnThisDayCard) card2;
                                                GapComposer gapComposer2 = (GapComposer) obj8;
                                                int intValue2 = ((Integer) obj9).intValue();
                                                ((LazyItemScopeImpl) obj7).getClass();
                                                if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 17) != 16)) {
                                                    gapComposer2.skipToGroupEnd();
                                                    break;
                                                } else {
                                                    List list3 = onThisDayCard2.events;
                                                    ComposableLambdaImpl rememberComposableLambda2 = Expect_jvmKt.rememberComposableLambda(-801690947, new RandomScreenKt$$ExternalSyntheticLambda5(onThisDayCard2, pageOverflowMenuState22, function14), gapComposer2);
                                                    boolean changed7 = gapComposer2.changed(function14) | gapComposer2.changed(onThisDayCard2);
                                                    Object rememberedValue7 = gapComposer2.rememberedValue();
                                                    if (changed7 || rememberedValue7 == obj10) {
                                                        rememberedValue7 = new Function0() { // from class: org.wikipedia.feed.CommunityContentTabKt$$ExternalSyntheticLambda18
                                                            @Override // kotlin.jvm.functions.Function0
                                                            public final Object invoke() {
                                                                int i20 = i18;
                                                                Unit unit3 = Unit.INSTANCE;
                                                                OnThisDayCard onThisDayCard22 = onThisDayCard2;
                                                                Function1 function162 = function14;
                                                                switch (i20) {
                                                                    case 0:
                                                                        function162.invoke(new HomeAction.HideCommunityCard(onThisDayCard22));
                                                                        break;
                                                                    default:
                                                                        function162.invoke(new HomeAction.CardFooterClick(onThisDayCard22));
                                                                        break;
                                                                }
                                                                return unit3;
                                                            }
                                                        };
                                                        gapComposer2.updateRememberedValue(rememberedValue7);
                                                    }
                                                    Function0 function04 = (Function0) rememberedValue7;
                                                    boolean changed8 = gapComposer2.changed(function14) | gapComposer2.changed(onThisDayCard2);
                                                    Object rememberedValue8 = gapComposer2.rememberedValue();
                                                    if (changed8 || rememberedValue8 == obj10) {
                                                        rememberedValue8 = new HomeScreenKt$$ExternalSyntheticLambda4(function14, onThisDayCard2, 2);
                                                        gapComposer2.updateRememberedValue(rememberedValue8);
                                                    }
                                                    Function0 function05 = (Function0) rememberedValue8;
                                                    boolean changed9 = gapComposer2.changed(function14) | gapComposer2.changed(onThisDayCard2);
                                                    WikiSite wikiSite32 = wikiSite;
                                                    boolean changedInstance2 = changed9 | gapComposer2.changedInstance(wikiSite32);
                                                    Object rememberedValue9 = gapComposer2.rememberedValue();
                                                    if (changedInstance2 || rememberedValue9 == obj10) {
                                                        rememberedValue9 = new UtilsKt$$ExternalSyntheticLambda1(function14, onThisDayCard2, wikiSite32, 21);
                                                        gapComposer2.updateRememberedValue(rememberedValue9);
                                                    }
                                                    Function1 function16 = (Function1) rememberedValue9;
                                                    boolean changed10 = gapComposer2.changed(function14) | gapComposer2.changed(onThisDayCard2);
                                                    Object rememberedValue10 = gapComposer2.rememberedValue();
                                                    if (changed10 || rememberedValue10 == obj10) {
                                                        rememberedValue10 = new SubcomposeAsyncImageKt$$ExternalSyntheticLambda2(9, function14, onThisDayCard2);
                                                        gapComposer2.updateRememberedValue(rememberedValue10);
                                                    }
                                                    Function3 function3 = (Function3) rememberedValue10;
                                                    boolean changed11 = gapComposer2.changed(function14) | gapComposer2.changed(onThisDayCard2);
                                                    Object rememberedValue11 = gapComposer2.rememberedValue();
                                                    if (changed11 || rememberedValue11 == obj10) {
                                                        rememberedValue11 = new Function0() { // from class: org.wikipedia.feed.CommunityContentTabKt$$ExternalSyntheticLambda18
                                                            @Override // kotlin.jvm.functions.Function0
                                                            public final Object invoke() {
                                                                int i20 = i19;
                                                                Unit unit3 = Unit.INSTANCE;
                                                                OnThisDayCard onThisDayCard22 = onThisDayCard2;
                                                                Function1 function162 = function14;
                                                                switch (i20) {
                                                                    case 0:
                                                                        function162.invoke(new HomeAction.HideCommunityCard(onThisDayCard22));
                                                                        break;
                                                                    default:
                                                                        function162.invoke(new HomeAction.CardFooterClick(onThisDayCard22));
                                                                        break;
                                                                }
                                                                return unit3;
                                                            }
                                                        };
                                                        gapComposer2.updateRememberedValue(rememberedValue11);
                                                    }
                                                    Function0 function06 = (Function0) rememberedValue11;
                                                    boolean changed12 = gapComposer2.changed(function14) | gapComposer2.changed(onThisDayCard2) | gapComposer2.changed(i172);
                                                    Object rememberedValue12 = gapComposer2.rememberedValue();
                                                    if (changed12 || rememberedValue12 == obj10) {
                                                        rememberedValue12 = new Http2Connection$$ExternalSyntheticLambda2(i172, 3, onThisDayCard2, function14);
                                                        gapComposer2.updateRememberedValue(rememberedValue12);
                                                    }
                                                    ReadingListFragment.MultiSelectCallback.OnThisDayModule(wikiSite32, list3, rememberComposableLambda2, function04, function05, function16, function3, function06, (Function0) rememberedValue12, gapComposer2, 384);
                                                    break;
                                                }
                                            default:
                                                final DidYouKnowCard didYouKnowCard2 = (DidYouKnowCard) card2;
                                                GapComposer gapComposer3 = (GapComposer) obj8;
                                                int intValue3 = ((Integer) obj9).intValue();
                                                ((LazyItemScopeImpl) obj7).getClass();
                                                if (!gapComposer3.shouldExecute(intValue3 & 1, (intValue3 & 17) != 16)) {
                                                    gapComposer3.skipToGroupEnd();
                                                    break;
                                                } else {
                                                    List list4 = didYouKnowCard2.items;
                                                    boolean changed13 = gapComposer3.changed(function14) | gapComposer3.changed(didYouKnowCard2);
                                                    Object rememberedValue13 = gapComposer3.rememberedValue();
                                                    if (changed13 || rememberedValue13 == obj10) {
                                                        rememberedValue13 = new Function0() { // from class: org.wikipedia.feed.CommunityContentTabKt$$ExternalSyntheticLambda32
                                                            @Override // kotlin.jvm.functions.Function0
                                                            public final Object invoke() {
                                                                int i20 = i18;
                                                                Unit unit3 = Unit.INSTANCE;
                                                                DidYouKnowCard didYouKnowCard22 = didYouKnowCard2;
                                                                Function1 function172 = function14;
                                                                switch (i20) {
                                                                    case 0:
                                                                        function172.invoke(new HomeAction.HideCommunityCard(didYouKnowCard22));
                                                                        break;
                                                                    default:
                                                                        function172.invoke(new HomeAction.CardFooterClick(didYouKnowCard22));
                                                                        break;
                                                                }
                                                                return unit3;
                                                            }
                                                        };
                                                        gapComposer3.updateRememberedValue(rememberedValue13);
                                                    }
                                                    Function0 function07 = (Function0) rememberedValue13;
                                                    boolean changed14 = gapComposer3.changed(function14) | gapComposer3.changed(didYouKnowCard2);
                                                    Object rememberedValue14 = gapComposer3.rememberedValue();
                                                    if (changed14 || rememberedValue14 == obj10) {
                                                        rememberedValue14 = new HomeScreenKt$$ExternalSyntheticLambda4(function14, didYouKnowCard2, 6);
                                                        gapComposer3.updateRememberedValue(rememberedValue14);
                                                    }
                                                    Function0 function08 = (Function0) rememberedValue14;
                                                    boolean changed15 = gapComposer3.changed(function14) | gapComposer3.changed(didYouKnowCard2);
                                                    Object rememberedValue15 = gapComposer3.rememberedValue();
                                                    if (changed15 || rememberedValue15 == obj10) {
                                                        rememberedValue15 = new GamesHubScreenKt$$ExternalSyntheticLambda8(15, function14, didYouKnowCard2);
                                                        gapComposer3.updateRememberedValue(rememberedValue15);
                                                    }
                                                    Function1 function17 = (Function1) rememberedValue15;
                                                    boolean changed16 = gapComposer3.changed(function14) | gapComposer3.changed(didYouKnowCard2);
                                                    Object rememberedValue16 = gapComposer3.rememberedValue();
                                                    if (changed16 || rememberedValue16 == obj10) {
                                                        rememberedValue16 = new Function0() { // from class: org.wikipedia.feed.CommunityContentTabKt$$ExternalSyntheticLambda32
                                                            @Override // kotlin.jvm.functions.Function0
                                                            public final Object invoke() {
                                                                int i20 = i19;
                                                                Unit unit3 = Unit.INSTANCE;
                                                                DidYouKnowCard didYouKnowCard22 = didYouKnowCard2;
                                                                Function1 function172 = function14;
                                                                switch (i20) {
                                                                    case 0:
                                                                        function172.invoke(new HomeAction.HideCommunityCard(didYouKnowCard22));
                                                                        break;
                                                                    default:
                                                                        function172.invoke(new HomeAction.CardFooterClick(didYouKnowCard22));
                                                                        break;
                                                                }
                                                                return unit3;
                                                            }
                                                        };
                                                        gapComposer3.updateRememberedValue(rememberedValue16);
                                                    }
                                                    Function0 function09 = (Function0) rememberedValue16;
                                                    boolean changed17 = gapComposer3.changed(function14) | gapComposer3.changed(didYouKnowCard2) | gapComposer3.changed(i172);
                                                    Object rememberedValue17 = gapComposer3.rememberedValue();
                                                    if (changed17 || rememberedValue17 == obj10) {
                                                        rememberedValue17 = new Http2Connection$$ExternalSyntheticLambda2(i172, 5, didYouKnowCard2, function14);
                                                        gapComposer3.updateRememberedValue(rememberedValue17);
                                                    }
                                                    Function0 function010 = (Function0) rememberedValue17;
                                                    ComposableLambdaImpl rememberComposableLambda3 = Expect_jvmKt.rememberComposableLambda(946757843, new AboutActivityKt$$ExternalSyntheticLambda2(didYouKnowCard2, pageOverflowMenuState22, function14, 4), gapComposer3);
                                                    boolean changed18 = gapComposer3.changed(function14) | gapComposer3.changed(didYouKnowCard2);
                                                    Object rememberedValue18 = gapComposer3.rememberedValue();
                                                    if (changed18 || rememberedValue18 == obj10) {
                                                        rememberedValue18 = new HomeScreenKt$$ExternalSyntheticLambda17(25, function14, didYouKnowCard2);
                                                        gapComposer3.updateRememberedValue(rememberedValue18);
                                                    }
                                                    TabUtil.DidYouKnowModule(wikiSite, list4, function07, function08, function17, function09, function010, rememberComposableLambda3, (Function2) rememberedValue18, gapComposer3, 12582912);
                                                    break;
                                                }
                                        }
                                        return unit2;
                                    }
                                }, true, 1403386369), 2);
                            }
                            pageOverflowMenuState = pageOverflowMenuState2;
                        }
                        function13 = function1;
                    }
                    i2 = i12;
                    z3 = z4;
                }
                LazyItemScope$CC.item$default(lazyListIntervalContent, "load-more-community", new ComposableLambdaImpl(new AboutActivityKt$$ExternalSyntheticLambda2(communityContentState, wikiSite, function13, 5), true, -89279819), 2);
                if (communityContentState.error != null && !communityContentState.cards.isEmpty()) {
                    LazyItemScope$CC.item$default(lazyListIntervalContent, "error-community", new ComposableLambdaImpl(new SubcomposeAsyncImageKt$$ExternalSyntheticLambda2(10, communityContentState, function13), true, 672688601), 2);
                }
                return unit;
            case 9:
                HomeContentState homeContentState = (HomeContentState) obj5;
                Function1 function14 = (Function1) obj4;
                HomePreferenceType homePreferenceType = (HomePreferenceType) obj3;
                InfiniteTransition infiniteTransition2 = (InfiniteTransition) obj2;
                LazyListIntervalContent lazyListIntervalContent2 = (LazyListIntervalContent) obj;
                lazyListIntervalContent2.getClass();
                if (homeContentState instanceof HomeContentState.Error) {
                    LazyItemScope$CC.item$default(lazyListIntervalContent2, null, new ComposableLambdaImpl(new AboutActivityKt$$ExternalSyntheticLambda2(homeContentState, function14, homePreferenceType, 7), true, -1071888042), 3);
                } else if (homeContentState.equals(HomeContentState.Loading.INSTANCE)) {
                    lazyListIntervalContent2.items(3, null, LazyListScope$items$1.INSTANCE, new ComposableLambdaImpl(new InterestSelectionScreenKt$$ExternalSyntheticLambda15(infiniteTransition2, i5), true, 589063844));
                } else if (homeContentState.equals(HomeContentState.Empty.INSTANCE)) {
                    LazyItemScope$CC.item$default(lazyListIntervalContent2, null, HomePreferenceScreenKt.f44lambda$1391714738, 3);
                } else {
                    if (!(homeContentState instanceof HomeContentState.Success)) {
                        ContextsKt$$ExternalSyntheticBUOutline0.m();
                        return null;
                    }
                    List list3 = ((HomeContentState.Success) homeContentState).content;
                    lazyListIntervalContent2.items(list3.size(), null, new LangLinksScreenKt$ComposeLangLinksScreen$lambda$4$3$0$$inlined$items$default$3(list3, 1), new ComposableLambdaImpl(new LangLinksScreenKt$ComposeLangLinksScreen$lambda$4$3$0$$inlined$items$default$4(i5, homePreferenceType, list3), true, 802480018));
                }
                return unit;
            case 10:
                final ArrayList arrayList = (ArrayList) obj5;
                final Function1 function15 = (Function1) obj4;
                final Context context = (Context) obj2;
                final String str = (String) obj3;
                LazyListIntervalContent lazyListIntervalContent3 = (LazyListIntervalContent) obj;
                lazyListIntervalContent3.getClass();
                final int i18 = 0;
                lazyListIntervalContent3.items(arrayList.size(), new Latch$await$2$2(9, new ForYouCardKt$$ExternalSyntheticLambda1(18), arrayList), new Function1() { // from class: org.wikipedia.feed.personalization.interest.InterestSelectionScreenKt$TopicFilterChipRow$lambda$0$0$$inlined$items$default$3
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj7) {
                        int i19 = i2;
                        ArrayList arrayList2 = arrayList;
                        switch (i19) {
                            case 0:
                                arrayList2.get(((Number) obj7).intValue());
                                break;
                            default:
                                arrayList2.get(((Number) obj7).intValue());
                                break;
                        }
                        return null;
                    }
                }, new ComposableLambdaImpl(new Function4() { // from class: org.wikipedia.feed.personalization.interest.InterestSelectionScreenKt$TopicFilterChipRow$lambda$0$0$$inlined$items$default$4
                    @Override // kotlin.jvm.functions.Function4
                    public final Object invoke(Object obj7, Object obj8, Object obj9, Object obj10) {
                        int i19;
                        int i20;
                        int i21 = i18;
                        Unit unit2 = Unit.INSTANCE;
                        String str2 = str;
                        ArrayList arrayList2 = arrayList;
                        final Function1 function16 = function15;
                        Object obj11 = context;
                        Object obj12 = Composer$Companion.Empty;
                        final int i22 = 1;
                        final int i23 = 0;
                        switch (i21) {
                            case 0:
                                Object obj13 = (LazyItemScopeImpl) obj7;
                                int intValue = ((Number) obj8).intValue();
                                GapComposer gapComposer = (GapComposer) obj9;
                                int intValue2 = ((Number) obj10).intValue();
                                if ((intValue2 & 6) == 0) {
                                    i19 = intValue2 | (gapComposer.changed(obj13) ? 4 : 2);
                                } else {
                                    i19 = intValue2;
                                }
                                if ((intValue2 & 48) == 0) {
                                    i19 |= gapComposer.changed(intValue) ? 32 : 16;
                                }
                                if (!gapComposer.shouldExecute(i19 & 1, (i19 & 147) != 146)) {
                                    gapComposer.skipToGroupEnd();
                                    break;
                                } else {
                                    OnboardingTopic onboardingTopic = (OnboardingTopic) arrayList2.get(intValue);
                                    gapComposer.startReplaceGroup(-371025164);
                                    boolean z5 = onboardingTopic.isSelected;
                                    float f2 = FilterChipDefaults.Height;
                                    ProvidableCompositionLocal providableCompositionLocal = WikipediaColorKt.LocalWikipediaColor;
                                    long j4 = ((WikipediaColor) gapComposer.consume(providableCompositionLocal)).backgroundColor;
                                    long j5 = ((WikipediaColor) gapComposer.consume(providableCompositionLocal)).primaryColor;
                                    long j6 = ((WikipediaColor) gapComposer.consume(providableCompositionLocal)).primaryColor;
                                    long j7 = ((WikipediaColor) gapComposer.consume(providableCompositionLocal)).progressiveColor;
                                    long j8 = ((WikipediaColor) gapComposer.consume(providableCompositionLocal)).additionColor;
                                    long j9 = ((WikipediaColor) gapComposer.consume(providableCompositionLocal)).progressiveColor;
                                    long j10 = Color.Unspecified;
                                    SelectableChipColors m296copydaRQuJA = FilterChipDefaults.getDefaultFilterChipColors$material3((ColorScheme) gapComposer.consume(ColorSchemeKt.LocalColorScheme)).m296copydaRQuJA(j4, j5, j6, j6, j10, j10, j10, j10, j8, j10, j9, j7, j10);
                                    boolean z6 = onboardingTopic.isSelected;
                                    long j11 = ((WikipediaColor) gapComposer.consume(providableCompositionLocal)).borderColor;
                                    long j12 = Color.Transparent;
                                    if ((240 & 4) != 0) {
                                        j11 = ColorSchemeKt.getValue(FilterChipTokens.FlatUnselectedOutlineColor, gapComposer);
                                    }
                                    if ((240 & 8) != 0) {
                                        j12 = Color.Transparent;
                                    }
                                    ColorKt.Color(Color.m433getRedimpl(r4), Color.m432getGreenimpl(r4), Color.m430getBlueimpl(r4), FilterChipTokens.FlatDisabledUnselectedOutlineOpacity, Color.m431getColorSpaceimpl(ColorSchemeKt.getValue(FilterChipTokens.FlatDisabledUnselectedOutlineColor, gapComposer)));
                                    int i24 = Color.$r8$clinit;
                                    float f3 = FilterChipTokens.FlatUnselectedOutlineWidth;
                                    if (z6) {
                                        j11 = j12;
                                    }
                                    if (z6) {
                                        f3 = RecyclerView.DECELERATION_RATE;
                                    }
                                    BorderStroke m45BorderStrokecXLIe8U = ImageKt.m45BorderStrokecXLIe8U(f3, j11);
                                    boolean changed = gapComposer.changed(function16) | gapComposer.changed(onboardingTopic);
                                    Object rememberedValue = gapComposer.rememberedValue();
                                    if (changed || rememberedValue == obj12) {
                                        rememberedValue = new Http2Connection.ReaderRunnable(function16, onboardingTopic, 4);
                                        gapComposer.updateRememberedValue(rememberedValue);
                                    }
                                    Function0 function0 = (Function0) rememberedValue;
                                    int i25 = 3;
                                    ChipKt.FilterChip(z5, function0, Expect_jvmKt.rememberComposableLambda(145326135, new TooltipKt$TooltipBox$3((Context) obj11, str2, onboardingTopic, i25), gapComposer), null, false, Expect_jvmKt.rememberComposableLambda(1337977850, new CardKt$Card$1(i25, onboardingTopic), gapComposer), null, m296copydaRQuJA, null, m45BorderStrokecXLIe8U, gapComposer, 196992);
                                    gapComposer.end(false);
                                    break;
                                }
                            default:
                                LazyItemScopeImpl lazyItemScopeImpl = (LazyItemScopeImpl) obj7;
                                int intValue3 = ((Number) obj8).intValue();
                                GapComposer gapComposer2 = (GapComposer) obj9;
                                int intValue4 = ((Number) obj10).intValue();
                                final Function0 function02 = (Function0) obj11;
                                if ((intValue4 & 6) == 0) {
                                    i20 = intValue4 | (gapComposer2.changed(lazyItemScopeImpl) ? 4 : 2);
                                } else {
                                    i20 = intValue4;
                                }
                                if ((intValue4 & 48) == 0) {
                                    i20 |= gapComposer2.changed(intValue3) ? 32 : 16;
                                }
                                if (!gapComposer2.shouldExecute(i20 & 1, (i20 & 147) != 146)) {
                                    gapComposer2.skipToGroupEnd();
                                    break;
                                } else {
                                    final String str3 = (String) arrayList2.get(intValue3);
                                    gapComposer2.startReplaceGroup(-1036817515);
                                    Modifier fillMaxWidth = SizeKt.fillMaxWidth(Modifier.Companion.$$INSTANCE, 1.0f);
                                    boolean changed2 = gapComposer2.changed(function16) | gapComposer2.changed(str3) | gapComposer2.changed(function02);
                                    Object rememberedValue2 = gapComposer2.rememberedValue();
                                    if (changed2 || rememberedValue2 == obj12) {
                                        rememberedValue2 = new Function0() { // from class: org.wikipedia.readinglist.recommended.RecommendedReadingListSettingsScreenKt$RadioListDialog$1$1$1$1$1$1
                                            @Override // kotlin.jvm.functions.Function0
                                            public final Object invoke() {
                                                int i26 = i23;
                                                Unit unit3 = Unit.INSTANCE;
                                                Function0 function03 = function02;
                                                String str4 = str3;
                                                Function1 function17 = function16;
                                                switch (i26) {
                                                    case 0:
                                                        function17.invoke(str4);
                                                        function03.invoke();
                                                        break;
                                                    default:
                                                        function17.invoke(str4);
                                                        function03.invoke();
                                                        break;
                                                }
                                                return unit3;
                                            }
                                        };
                                        gapComposer2.updateRememberedValue(rememberedValue2);
                                    }
                                    Modifier m51clickableoSLSa3U$default = ImageKt.m51clickableoSLSa3U$default(15, fillMaxWidth, null, (Function0) rememberedValue2, false);
                                    RowMeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(OffsetKt.f5Start, Alignment.Companion.CenterVertically, gapComposer2, 48);
                                    long j13 = gapComposer2.compositeKeyHashCode;
                                    int i26 = (int) ((j13 >>> 32) ^ j13);
                                    PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer2.currentCompositionLocalScope();
                                    Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer2, m51clickableoSLSa3U$default);
                                    ComposeUiNode.Companion.getClass();
                                    LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
                                    gapComposer2.startReusableNode();
                                    if (gapComposer2.inserting) {
                                        gapComposer2.createNode(layoutNode$Companion$Constructor$1);
                                    } else {
                                        gapComposer2.useNode();
                                    }
                                    Updater.m327setimpl(gapComposer2, rowMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
                                    Updater.m327setimpl(gapComposer2, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                                    Updater.m327setimpl(gapComposer2, Integer.valueOf(i26), ComposeUiNode.Companion.SetCompositeKeyHash);
                                    Updater.m326reconcileimpl(gapComposer2, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                                    Updater.m327setimpl(gapComposer2, materializeModifier, ComposeUiNode.Companion.SetModifier);
                                    boolean areEqual = Intrinsics.areEqual(str3, str2);
                                    boolean changed3 = gapComposer2.changed(function16) | gapComposer2.changed(str3) | gapComposer2.changed(function02);
                                    Object rememberedValue3 = gapComposer2.rememberedValue();
                                    if (changed3 || rememberedValue3 == obj12) {
                                        rememberedValue3 = new Function0() { // from class: org.wikipedia.readinglist.recommended.RecommendedReadingListSettingsScreenKt$RadioListDialog$1$1$1$1$1$1
                                            @Override // kotlin.jvm.functions.Function0
                                            public final Object invoke() {
                                                int i262 = i22;
                                                Unit unit3 = Unit.INSTANCE;
                                                Function0 function03 = function02;
                                                String str4 = str3;
                                                Function1 function17 = function16;
                                                switch (i262) {
                                                    case 0:
                                                        function17.invoke(str4);
                                                        function03.invoke();
                                                        break;
                                                    default:
                                                        function17.invoke(str4);
                                                        function03.invoke();
                                                        break;
                                                }
                                                return unit3;
                                            }
                                        };
                                        gapComposer2.updateRememberedValue(rememberedValue3);
                                    }
                                    StaticProvidableCompositionLocal staticProvidableCompositionLocal = WikipediaColorKt.LocalWikipediaColor;
                                    CardKt.RadioButton(areEqual, (Function0) rememberedValue3, null, false, CardKt.m277colorsro_MJ88(((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal)).progressiveColor, 0L, 0L, 0L, gapComposer2, 14), gapComposer2, 0, 44);
                                    TextKt.m308TextNvy7gAk(str3, null, ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal)).primaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, ((Typography) gapComposer2.consume(TypographyKt.LocalTypography)).bodyLarge, gapComposer2, 0, 0, 131066);
                                    gapComposer2.end(true);
                                    gapComposer2.end(false);
                                    break;
                                }
                        }
                        return unit2;
                    }
                }, true, 802480018));
                return unit;
            case 11:
                List list4 = (List) obj5;
                LazyStaggeredGridIntervalContent lazyStaggeredGridIntervalContent = (LazyStaggeredGridIntervalContent) obj;
                lazyStaggeredGridIntervalContent.getClass();
                lazyStaggeredGridIntervalContent.intervals.addInterval(1, new LazyStaggeredGridInterval(null, new BasicTextKt$$ExternalSyntheticLambda3(12), new AppBarKt$$ExternalSyntheticLambda11(16, StaggeredGridItemSpan.FullLine), new ComposableLambdaImpl(new LazyListIntervalContent$$ExternalSyntheticLambda2(RecommendedReadingListSourceScreenKt.lambda$23780735, 1), true, 1062451479)));
                lazyStaggeredGridIntervalContent.intervals.addInterval(1, new LazyStaggeredGridInterval(null, new BasicTextKt$$ExternalSyntheticLambda3(12), new AppBarKt$$ExternalSyntheticLambda11(16, StaggeredGridItemSpan.FullLine), new ComposableLambdaImpl(new LazyListIntervalContent$$ExternalSyntheticLambda2(new ComposableLambdaImpl(new TextFieldImplKt$$ExternalSyntheticLambda9(i4, (Function0) obj4), true, -617584472), 1), true, 1062451479)));
                lazyStaggeredGridIntervalContent.intervals.addInterval(list4.size(), new LazyStaggeredGridInterval(null, new LangLinksScreenKt$ComposeLangLinksScreen$lambda$4$3$0$$inlined$items$default$3(list4, 4), null, new ComposableLambdaImpl(new WatchlistExpiryDialogKt$WatchlistExpiryDialogView$lambda$3$1$0$$inlined$items$default$4(list4, (Set) obj3, (Function1) obj2, i3), true, -334987442)));
                lazyStaggeredGridIntervalContent.intervals.addInterval(1, new LazyStaggeredGridInterval(null, new BasicTextKt$$ExternalSyntheticLambda3(12), new AppBarKt$$ExternalSyntheticLambda11(16, StaggeredGridItemSpan.FullLine), new ComposableLambdaImpl(new LazyListIntervalContent$$ExternalSyntheticLambda2(RecommendedReadingListSourceScreenKt.f52lambda$1322444793, 1), true, 1062451479)));
                return unit;
            case 12:
                final ArrayList arrayList2 = (ArrayList) obj5;
                final Function1 function16 = (Function1) obj4;
                final Function0 function0 = (Function0) obj2;
                final String str2 = (String) obj3;
                LazyListIntervalContent lazyListIntervalContent4 = (LazyListIntervalContent) obj;
                lazyListIntervalContent4.getClass();
                final int i19 = 1;
                lazyListIntervalContent4.items(arrayList2.size(), null, new Function1() { // from class: org.wikipedia.feed.personalization.interest.InterestSelectionScreenKt$TopicFilterChipRow$lambda$0$0$$inlined$items$default$3
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj7) {
                        int i192 = i5;
                        ArrayList arrayList22 = arrayList2;
                        switch (i192) {
                            case 0:
                                arrayList22.get(((Number) obj7).intValue());
                                break;
                            default:
                                arrayList22.get(((Number) obj7).intValue());
                                break;
                        }
                        return null;
                    }
                }, new ComposableLambdaImpl(new Function4() { // from class: org.wikipedia.feed.personalization.interest.InterestSelectionScreenKt$TopicFilterChipRow$lambda$0$0$$inlined$items$default$4
                    @Override // kotlin.jvm.functions.Function4
                    public final Object invoke(Object obj7, Object obj8, Object obj9, Object obj10) {
                        int i192;
                        int i20;
                        int i21 = i19;
                        Unit unit2 = Unit.INSTANCE;
                        String str22 = str2;
                        ArrayList arrayList22 = arrayList2;
                        final Function1 function162 = function16;
                        Object obj11 = function0;
                        Object obj12 = Composer$Companion.Empty;
                        final int i22 = 1;
                        final int i23 = 0;
                        switch (i21) {
                            case 0:
                                Object obj13 = (LazyItemScopeImpl) obj7;
                                int intValue = ((Number) obj8).intValue();
                                GapComposer gapComposer = (GapComposer) obj9;
                                int intValue2 = ((Number) obj10).intValue();
                                if ((intValue2 & 6) == 0) {
                                    i192 = intValue2 | (gapComposer.changed(obj13) ? 4 : 2);
                                } else {
                                    i192 = intValue2;
                                }
                                if ((intValue2 & 48) == 0) {
                                    i192 |= gapComposer.changed(intValue) ? 32 : 16;
                                }
                                if (!gapComposer.shouldExecute(i192 & 1, (i192 & 147) != 146)) {
                                    gapComposer.skipToGroupEnd();
                                    break;
                                } else {
                                    OnboardingTopic onboardingTopic = (OnboardingTopic) arrayList22.get(intValue);
                                    gapComposer.startReplaceGroup(-371025164);
                                    boolean z5 = onboardingTopic.isSelected;
                                    float f2 = FilterChipDefaults.Height;
                                    ProvidableCompositionLocal providableCompositionLocal = WikipediaColorKt.LocalWikipediaColor;
                                    long j4 = ((WikipediaColor) gapComposer.consume(providableCompositionLocal)).backgroundColor;
                                    long j5 = ((WikipediaColor) gapComposer.consume(providableCompositionLocal)).primaryColor;
                                    long j6 = ((WikipediaColor) gapComposer.consume(providableCompositionLocal)).primaryColor;
                                    long j7 = ((WikipediaColor) gapComposer.consume(providableCompositionLocal)).progressiveColor;
                                    long j8 = ((WikipediaColor) gapComposer.consume(providableCompositionLocal)).additionColor;
                                    long j9 = ((WikipediaColor) gapComposer.consume(providableCompositionLocal)).progressiveColor;
                                    long j10 = Color.Unspecified;
                                    SelectableChipColors m296copydaRQuJA = FilterChipDefaults.getDefaultFilterChipColors$material3((ColorScheme) gapComposer.consume(ColorSchemeKt.LocalColorScheme)).m296copydaRQuJA(j4, j5, j6, j6, j10, j10, j10, j10, j8, j10, j9, j7, j10);
                                    boolean z6 = onboardingTopic.isSelected;
                                    long j11 = ((WikipediaColor) gapComposer.consume(providableCompositionLocal)).borderColor;
                                    long j12 = Color.Transparent;
                                    if ((240 & 4) != 0) {
                                        j11 = ColorSchemeKt.getValue(FilterChipTokens.FlatUnselectedOutlineColor, gapComposer);
                                    }
                                    if ((240 & 8) != 0) {
                                        j12 = Color.Transparent;
                                    }
                                    ColorKt.Color(Color.m433getRedimpl(r4), Color.m432getGreenimpl(r4), Color.m430getBlueimpl(r4), FilterChipTokens.FlatDisabledUnselectedOutlineOpacity, Color.m431getColorSpaceimpl(ColorSchemeKt.getValue(FilterChipTokens.FlatDisabledUnselectedOutlineColor, gapComposer)));
                                    int i24 = Color.$r8$clinit;
                                    float f3 = FilterChipTokens.FlatUnselectedOutlineWidth;
                                    if (z6) {
                                        j11 = j12;
                                    }
                                    if (z6) {
                                        f3 = RecyclerView.DECELERATION_RATE;
                                    }
                                    BorderStroke m45BorderStrokecXLIe8U = ImageKt.m45BorderStrokecXLIe8U(f3, j11);
                                    boolean changed = gapComposer.changed(function162) | gapComposer.changed(onboardingTopic);
                                    Object rememberedValue = gapComposer.rememberedValue();
                                    if (changed || rememberedValue == obj12) {
                                        rememberedValue = new Http2Connection.ReaderRunnable(function162, onboardingTopic, 4);
                                        gapComposer.updateRememberedValue(rememberedValue);
                                    }
                                    Function0 function02 = (Function0) rememberedValue;
                                    int i25 = 3;
                                    ChipKt.FilterChip(z5, function02, Expect_jvmKt.rememberComposableLambda(145326135, new TooltipKt$TooltipBox$3((Context) obj11, str22, onboardingTopic, i25), gapComposer), null, false, Expect_jvmKt.rememberComposableLambda(1337977850, new CardKt$Card$1(i25, onboardingTopic), gapComposer), null, m296copydaRQuJA, null, m45BorderStrokecXLIe8U, gapComposer, 196992);
                                    gapComposer.end(false);
                                    break;
                                }
                            default:
                                LazyItemScopeImpl lazyItemScopeImpl = (LazyItemScopeImpl) obj7;
                                int intValue3 = ((Number) obj8).intValue();
                                GapComposer gapComposer2 = (GapComposer) obj9;
                                int intValue4 = ((Number) obj10).intValue();
                                final Function0 function022 = (Function0) obj11;
                                if ((intValue4 & 6) == 0) {
                                    i20 = intValue4 | (gapComposer2.changed(lazyItemScopeImpl) ? 4 : 2);
                                } else {
                                    i20 = intValue4;
                                }
                                if ((intValue4 & 48) == 0) {
                                    i20 |= gapComposer2.changed(intValue3) ? 32 : 16;
                                }
                                if (!gapComposer2.shouldExecute(i20 & 1, (i20 & 147) != 146)) {
                                    gapComposer2.skipToGroupEnd();
                                    break;
                                } else {
                                    final String str3 = (String) arrayList22.get(intValue3);
                                    gapComposer2.startReplaceGroup(-1036817515);
                                    Modifier fillMaxWidth = SizeKt.fillMaxWidth(Modifier.Companion.$$INSTANCE, 1.0f);
                                    boolean changed2 = gapComposer2.changed(function162) | gapComposer2.changed(str3) | gapComposer2.changed(function022);
                                    Object rememberedValue2 = gapComposer2.rememberedValue();
                                    if (changed2 || rememberedValue2 == obj12) {
                                        rememberedValue2 = new Function0() { // from class: org.wikipedia.readinglist.recommended.RecommendedReadingListSettingsScreenKt$RadioListDialog$1$1$1$1$1$1
                                            @Override // kotlin.jvm.functions.Function0
                                            public final Object invoke() {
                                                int i262 = i23;
                                                Unit unit3 = Unit.INSTANCE;
                                                Function0 function03 = function022;
                                                String str4 = str3;
                                                Function1 function17 = function162;
                                                switch (i262) {
                                                    case 0:
                                                        function17.invoke(str4);
                                                        function03.invoke();
                                                        break;
                                                    default:
                                                        function17.invoke(str4);
                                                        function03.invoke();
                                                        break;
                                                }
                                                return unit3;
                                            }
                                        };
                                        gapComposer2.updateRememberedValue(rememberedValue2);
                                    }
                                    Modifier m51clickableoSLSa3U$default = ImageKt.m51clickableoSLSa3U$default(15, fillMaxWidth, null, (Function0) rememberedValue2, false);
                                    RowMeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(OffsetKt.f5Start, Alignment.Companion.CenterVertically, gapComposer2, 48);
                                    long j13 = gapComposer2.compositeKeyHashCode;
                                    int i26 = (int) ((j13 >>> 32) ^ j13);
                                    PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer2.currentCompositionLocalScope();
                                    Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer2, m51clickableoSLSa3U$default);
                                    ComposeUiNode.Companion.getClass();
                                    LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
                                    gapComposer2.startReusableNode();
                                    if (gapComposer2.inserting) {
                                        gapComposer2.createNode(layoutNode$Companion$Constructor$1);
                                    } else {
                                        gapComposer2.useNode();
                                    }
                                    Updater.m327setimpl(gapComposer2, rowMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
                                    Updater.m327setimpl(gapComposer2, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                                    Updater.m327setimpl(gapComposer2, Integer.valueOf(i26), ComposeUiNode.Companion.SetCompositeKeyHash);
                                    Updater.m326reconcileimpl(gapComposer2, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                                    Updater.m327setimpl(gapComposer2, materializeModifier, ComposeUiNode.Companion.SetModifier);
                                    boolean areEqual = Intrinsics.areEqual(str3, str22);
                                    boolean changed3 = gapComposer2.changed(function162) | gapComposer2.changed(str3) | gapComposer2.changed(function022);
                                    Object rememberedValue3 = gapComposer2.rememberedValue();
                                    if (changed3 || rememberedValue3 == obj12) {
                                        rememberedValue3 = new Function0() { // from class: org.wikipedia.readinglist.recommended.RecommendedReadingListSettingsScreenKt$RadioListDialog$1$1$1$1$1$1
                                            @Override // kotlin.jvm.functions.Function0
                                            public final Object invoke() {
                                                int i262 = i22;
                                                Unit unit3 = Unit.INSTANCE;
                                                Function0 function03 = function022;
                                                String str4 = str3;
                                                Function1 function17 = function162;
                                                switch (i262) {
                                                    case 0:
                                                        function17.invoke(str4);
                                                        function03.invoke();
                                                        break;
                                                    default:
                                                        function17.invoke(str4);
                                                        function03.invoke();
                                                        break;
                                                }
                                                return unit3;
                                            }
                                        };
                                        gapComposer2.updateRememberedValue(rememberedValue3);
                                    }
                                    StaticProvidableCompositionLocal staticProvidableCompositionLocal = WikipediaColorKt.LocalWikipediaColor;
                                    CardKt.RadioButton(areEqual, (Function0) rememberedValue3, null, false, CardKt.m277colorsro_MJ88(((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal)).progressiveColor, 0L, 0L, 0L, gapComposer2, 14), gapComposer2, 0, 44);
                                    TextKt.m308TextNvy7gAk(str3, null, ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal)).primaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, ((Typography) gapComposer2.consume(TypographyKt.LocalTypography)).bodyLarge, gapComposer2, 0, 0, 131066);
                                    gapComposer2.end(true);
                                    gapComposer2.end(false);
                                    break;
                                }
                        }
                        return unit2;
                    }
                }, true, 802480018));
                return unit;
            case IMAGE_VALUE:
                final ArrayList arrayList3 = (ArrayList) obj5;
                final Function6 function6 = (Function6) obj4;
                final Function4 function4 = (Function4) obj3;
                final Function2 function2 = (Function2) obj2;
                LazyListIntervalContent lazyListIntervalContent5 = (LazyListIntervalContent) obj;
                lazyListIntervalContent5.getClass();
                final int i20 = 1;
                lazyListIntervalContent5.items(arrayList3.size(), null, LazyListScope$items$1.INSTANCE, new ComposableLambdaImpl(new Function4() { // from class: org.wikipedia.search.SearchResultsScreenKt$$ExternalSyntheticLambda13
                    @Override // kotlin.jvm.functions.Function4
                    public final Object invoke(Object obj7, Object obj8, Object obj9, Object obj10) {
                        int i21 = i20;
                        Unit unit2 = Unit.INSTANCE;
                        Object obj11 = Composer$Companion.Empty;
                        Object obj12 = function2;
                        Object obj13 = function4;
                        Object obj14 = function6;
                        Object obj15 = arrayList3;
                        int i22 = 0;
                        switch (i21) {
                            case 0:
                                LazyPagingItems lazyPagingItems = (LazyPagingItems) obj15;
                                String str3 = (String) obj14;
                                Function4 function42 = (Function4) obj13;
                                Function3 function3 = (Function3) obj12;
                                int intValue = ((Integer) obj8).intValue();
                                GapComposer gapComposer = (GapComposer) obj9;
                                int intValue2 = ((Integer) obj10).intValue();
                                ((LazyItemScopeImpl) obj7).getClass();
                                if ((intValue2 & 48) == 0) {
                                    intValue2 |= gapComposer.changed(intValue) ? 32 : 16;
                                }
                                if (!gapComposer.shouldExecute(intValue2 & 1, (intValue2 & 145) != 144)) {
                                    gapComposer.skipToGroupEnd();
                                    break;
                                } else {
                                    lazyPagingItems.pagingDataPresenter.get(intValue);
                                    SearchResult searchResult = (SearchResult) ((ItemSnapshotList) lazyPagingItems.itemSnapshotList$delegate.getValue()).get(intValue);
                                    if (searchResult != null) {
                                        gapComposer.startReplaceGroup(-1794256002);
                                        Modifier testTag = TestTagKt.testTag(Modifier.Companion.$$INSTANCE, "search_list" + intValue);
                                        int i23 = intValue2 & 112;
                                        boolean changed = gapComposer.changed(function42) | gapComposer.changedInstance(searchResult) | (i23 == 32);
                                        Object rememberedValue = gapComposer.rememberedValue();
                                        if (changed || rememberedValue == obj11) {
                                            rememberedValue = new SearchResultsScreenKt$$ExternalSyntheticLambda14(function42, searchResult, intValue, 0);
                                            gapComposer.updateRememberedValue(rememberedValue);
                                        }
                                        Function0 function02 = (Function0) rememberedValue;
                                        boolean changed2 = gapComposer.changed(function3) | gapComposer.changedInstance(searchResult) | (i23 == 32);
                                        Object rememberedValue2 = gapComposer.rememberedValue();
                                        if (changed2 || rememberedValue2 == obj11) {
                                            rememberedValue2 = new SearchResultsScreenKt$$ExternalSyntheticLambda15(function3, searchResult, intValue, 0);
                                            gapComposer.updateRememberedValue(rememberedValue2);
                                        }
                                        NoSearchResultsKt.SearchResultPageItem(testTag, searchResult, str3, function02, (Function1) rememberedValue2, gapComposer, 0, 0);
                                        gapComposer.end(false);
                                        break;
                                    } else {
                                        gapComposer.startReplaceGroup(-1794256003);
                                        gapComposer.end(false);
                                        break;
                                    }
                                }
                            case 1:
                                ArrayList arrayList4 = (ArrayList) obj15;
                                Function6 function62 = (Function6) obj14;
                                Function4 function43 = (Function4) obj13;
                                Function2 function22 = (Function2) obj12;
                                int intValue3 = ((Integer) obj8).intValue();
                                GapComposer gapComposer2 = (GapComposer) obj9;
                                int intValue4 = ((Integer) obj10).intValue();
                                ((LazyItemScopeImpl) obj7).getClass();
                                if ((intValue4 & 48) == 0) {
                                    intValue4 |= gapComposer2.changed(intValue3) ? 32 : 16;
                                }
                                if (!gapComposer2.shouldExecute(intValue4 & 1, (intValue4 & 145) != 144)) {
                                    gapComposer2.skipToGroupEnd();
                                    break;
                                } else {
                                    SearchResult searchResult2 = (SearchResult) arrayList4.get(intValue3);
                                    int i24 = intValue4 & 112;
                                    boolean changed3 = gapComposer2.changed(function62) | gapComposer2.changedInstance(searchResult2) | (i24 == 32);
                                    Object rememberedValue3 = gapComposer2.rememberedValue();
                                    if (changed3 || rememberedValue3 == obj11) {
                                        rememberedValue3 = new Http2Connection$$ExternalSyntheticLambda2(intValue3, 8, searchResult2, function62);
                                        gapComposer2.updateRememberedValue(rememberedValue3);
                                    }
                                    Function0 function03 = (Function0) rememberedValue3;
                                    boolean changed4 = gapComposer2.changed(function43) | (i24 == 32) | gapComposer2.changedInstance(searchResult2);
                                    Object rememberedValue4 = gapComposer2.rememberedValue();
                                    if (changed4 || rememberedValue4 == obj11) {
                                        rememberedValue4 = new ScrollNode$$ExternalSyntheticLambda0(function43, intValue3, searchResult2, 4);
                                        gapComposer2.updateRememberedValue(rememberedValue4);
                                    }
                                    Function1 function17 = (Function1) rememberedValue4;
                                    boolean changed5 = gapComposer2.changed(function62) | gapComposer2.changedInstance(searchResult2) | (i24 == 32);
                                    Object rememberedValue5 = gapComposer2.rememberedValue();
                                    if (changed5 || rememberedValue5 == obj11) {
                                        rememberedValue5 = new ScrollNode$$ExternalSyntheticLambda0(function62, searchResult2, intValue3, 5);
                                        gapComposer2.updateRememberedValue(rememberedValue5);
                                    }
                                    Function1 function18 = (Function1) rememberedValue5;
                                    boolean changed6 = gapComposer2.changed(function22) | gapComposer2.changedInstance(searchResult2);
                                    Object rememberedValue6 = gapComposer2.rememberedValue();
                                    if (changed6 || rememberedValue6 == obj11) {
                                        rememberedValue6 = new SingleLiveData$$ExternalSyntheticLambda0(6, function22, searchResult2);
                                        gapComposer2.updateRememberedValue(rememberedValue6);
                                    }
                                    NoSearchResultsKt.SemanticSearchResultPageItem(searchResult2, function03, function17, function18, (Function1) rememberedValue6, gapComposer2, 0);
                                    break;
                                }
                            default:
                                NavHostController navHostController = (NavHostController) obj15;
                                Function0 function04 = (Function0) obj14;
                                Context context2 = (Context) obj13;
                                ManagedActivityResultLauncher managedActivityResultLauncher = (ManagedActivityResultLauncher) obj12;
                                GapComposer gapComposer3 = (GapComposer) obj9;
                                ((Integer) obj10).getClass();
                                ((AnimatedContentScopeImpl) obj7).getClass();
                                ((NavBackStackEntry) obj8).getClass();
                                boolean changedInstance = gapComposer3.changedInstance(navHostController) | gapComposer3.changed(function04);
                                Object rememberedValue7 = gapComposer3.rememberedValue();
                                int i25 = 2;
                                if (changedInstance || rememberedValue7 == obj11) {
                                    rememberedValue7 = new HomeFeedSettingsNavHostKt$$ExternalSyntheticLambda13(navHostController, function04, 2);
                                    gapComposer3.updateRememberedValue(rememberedValue7);
                                }
                                Function0 function05 = (Function0) rememberedValue7;
                                boolean changedInstance2 = gapComposer3.changedInstance(context2) | gapComposer3.changedInstance(managedActivityResultLauncher);
                                Object rememberedValue8 = gapComposer3.rememberedValue();
                                if (changedInstance2 || rememberedValue8 == obj11) {
                                    rememberedValue8 = new AboutActivityKt$$ExternalSyntheticLambda11(10, context2, managedActivityResultLauncher);
                                    gapComposer3.updateRememberedValue(rememberedValue8);
                                }
                                Function0 function06 = (Function0) rememberedValue8;
                                boolean changedInstance3 = gapComposer3.changedInstance(context2);
                                Object rememberedValue9 = gapComposer3.rememberedValue();
                                if (changedInstance3 || rememberedValue9 == obj11) {
                                    rememberedValue9 = new HomeFeedSettingsNavHostKt$$ExternalSyntheticLambda18(context2, i22);
                                    gapComposer3.updateRememberedValue(rememberedValue9);
                                }
                                Function0 function07 = (Function0) rememberedValue9;
                                boolean changedInstance4 = gapComposer3.changedInstance(context2);
                                Object rememberedValue10 = gapComposer3.rememberedValue();
                                if (changedInstance4 || rememberedValue10 == obj11) {
                                    rememberedValue10 = new HomeFeedSettingsNavHostKt$$ExternalSyntheticLambda18(context2, i25);
                                    gapComposer3.updateRememberedValue(rememberedValue10);
                                }
                                Function0 function08 = (Function0) rememberedValue10;
                                boolean changedInstance5 = gapComposer3.changedInstance(context2);
                                Object rememberedValue11 = gapComposer3.rememberedValue();
                                if (changedInstance5 || rememberedValue11 == obj11) {
                                    rememberedValue11 = new HomeFeedSettingsNavHostKt$$ExternalSyntheticLambda18(context2, 3);
                                    gapComposer3.updateRememberedValue(rememberedValue11);
                                }
                                Okio__OkioKt.FeedConfigurationScreen(null, function05, function06, function07, function08, (Function0) rememberedValue11, gapComposer3, 0);
                                break;
                        }
                        return unit2;
                    }
                }, true, -1737867535));
                return unit;
            case LINEAR_PROGRESS_INDICATOR_VALUE:
                final LazyPagingItems lazyPagingItems = (LazyPagingItems) obj5;
                final String str3 = (String) obj3;
                final Function4 function42 = (Function4) obj4;
                final Function3 function3 = (Function3) obj2;
                LazyListIntervalContent lazyListIntervalContent6 = (LazyListIntervalContent) obj;
                lazyListIntervalContent6.getClass();
                final int i21 = 0;
                lazyListIntervalContent6.items(lazyPagingItems.getItemCount(), null, LazyListScope$items$1.INSTANCE, new ComposableLambdaImpl(new Function4() { // from class: org.wikipedia.search.SearchResultsScreenKt$$ExternalSyntheticLambda13
                    @Override // kotlin.jvm.functions.Function4
                    public final Object invoke(Object obj7, Object obj8, Object obj9, Object obj10) {
                        int i212 = i21;
                        Unit unit2 = Unit.INSTANCE;
                        Object obj11 = Composer$Companion.Empty;
                        Object obj12 = function3;
                        Object obj13 = function42;
                        Object obj14 = str3;
                        Object obj15 = lazyPagingItems;
                        int i22 = 0;
                        switch (i212) {
                            case 0:
                                LazyPagingItems lazyPagingItems2 = (LazyPagingItems) obj15;
                                String str32 = (String) obj14;
                                Function4 function422 = (Function4) obj13;
                                Function3 function32 = (Function3) obj12;
                                int intValue = ((Integer) obj8).intValue();
                                GapComposer gapComposer = (GapComposer) obj9;
                                int intValue2 = ((Integer) obj10).intValue();
                                ((LazyItemScopeImpl) obj7).getClass();
                                if ((intValue2 & 48) == 0) {
                                    intValue2 |= gapComposer.changed(intValue) ? 32 : 16;
                                }
                                if (!gapComposer.shouldExecute(intValue2 & 1, (intValue2 & 145) != 144)) {
                                    gapComposer.skipToGroupEnd();
                                    break;
                                } else {
                                    lazyPagingItems2.pagingDataPresenter.get(intValue);
                                    SearchResult searchResult = (SearchResult) ((ItemSnapshotList) lazyPagingItems2.itemSnapshotList$delegate.getValue()).get(intValue);
                                    if (searchResult != null) {
                                        gapComposer.startReplaceGroup(-1794256002);
                                        Modifier testTag = TestTagKt.testTag(Modifier.Companion.$$INSTANCE, "search_list" + intValue);
                                        int i23 = intValue2 & 112;
                                        boolean changed = gapComposer.changed(function422) | gapComposer.changedInstance(searchResult) | (i23 == 32);
                                        Object rememberedValue = gapComposer.rememberedValue();
                                        if (changed || rememberedValue == obj11) {
                                            rememberedValue = new SearchResultsScreenKt$$ExternalSyntheticLambda14(function422, searchResult, intValue, 0);
                                            gapComposer.updateRememberedValue(rememberedValue);
                                        }
                                        Function0 function02 = (Function0) rememberedValue;
                                        boolean changed2 = gapComposer.changed(function32) | gapComposer.changedInstance(searchResult) | (i23 == 32);
                                        Object rememberedValue2 = gapComposer.rememberedValue();
                                        if (changed2 || rememberedValue2 == obj11) {
                                            rememberedValue2 = new SearchResultsScreenKt$$ExternalSyntheticLambda15(function32, searchResult, intValue, 0);
                                            gapComposer.updateRememberedValue(rememberedValue2);
                                        }
                                        NoSearchResultsKt.SearchResultPageItem(testTag, searchResult, str32, function02, (Function1) rememberedValue2, gapComposer, 0, 0);
                                        gapComposer.end(false);
                                        break;
                                    } else {
                                        gapComposer.startReplaceGroup(-1794256003);
                                        gapComposer.end(false);
                                        break;
                                    }
                                }
                            case 1:
                                ArrayList arrayList4 = (ArrayList) obj15;
                                Function6 function62 = (Function6) obj14;
                                Function4 function43 = (Function4) obj13;
                                Function2 function22 = (Function2) obj12;
                                int intValue3 = ((Integer) obj8).intValue();
                                GapComposer gapComposer2 = (GapComposer) obj9;
                                int intValue4 = ((Integer) obj10).intValue();
                                ((LazyItemScopeImpl) obj7).getClass();
                                if ((intValue4 & 48) == 0) {
                                    intValue4 |= gapComposer2.changed(intValue3) ? 32 : 16;
                                }
                                if (!gapComposer2.shouldExecute(intValue4 & 1, (intValue4 & 145) != 144)) {
                                    gapComposer2.skipToGroupEnd();
                                    break;
                                } else {
                                    SearchResult searchResult2 = (SearchResult) arrayList4.get(intValue3);
                                    int i24 = intValue4 & 112;
                                    boolean changed3 = gapComposer2.changed(function62) | gapComposer2.changedInstance(searchResult2) | (i24 == 32);
                                    Object rememberedValue3 = gapComposer2.rememberedValue();
                                    if (changed3 || rememberedValue3 == obj11) {
                                        rememberedValue3 = new Http2Connection$$ExternalSyntheticLambda2(intValue3, 8, searchResult2, function62);
                                        gapComposer2.updateRememberedValue(rememberedValue3);
                                    }
                                    Function0 function03 = (Function0) rememberedValue3;
                                    boolean changed4 = gapComposer2.changed(function43) | (i24 == 32) | gapComposer2.changedInstance(searchResult2);
                                    Object rememberedValue4 = gapComposer2.rememberedValue();
                                    if (changed4 || rememberedValue4 == obj11) {
                                        rememberedValue4 = new ScrollNode$$ExternalSyntheticLambda0(function43, intValue3, searchResult2, 4);
                                        gapComposer2.updateRememberedValue(rememberedValue4);
                                    }
                                    Function1 function17 = (Function1) rememberedValue4;
                                    boolean changed5 = gapComposer2.changed(function62) | gapComposer2.changedInstance(searchResult2) | (i24 == 32);
                                    Object rememberedValue5 = gapComposer2.rememberedValue();
                                    if (changed5 || rememberedValue5 == obj11) {
                                        rememberedValue5 = new ScrollNode$$ExternalSyntheticLambda0(function62, searchResult2, intValue3, 5);
                                        gapComposer2.updateRememberedValue(rememberedValue5);
                                    }
                                    Function1 function18 = (Function1) rememberedValue5;
                                    boolean changed6 = gapComposer2.changed(function22) | gapComposer2.changedInstance(searchResult2);
                                    Object rememberedValue6 = gapComposer2.rememberedValue();
                                    if (changed6 || rememberedValue6 == obj11) {
                                        rememberedValue6 = new SingleLiveData$$ExternalSyntheticLambda0(6, function22, searchResult2);
                                        gapComposer2.updateRememberedValue(rememberedValue6);
                                    }
                                    NoSearchResultsKt.SemanticSearchResultPageItem(searchResult2, function03, function17, function18, (Function1) rememberedValue6, gapComposer2, 0);
                                    break;
                                }
                            default:
                                NavHostController navHostController = (NavHostController) obj15;
                                Function0 function04 = (Function0) obj14;
                                Context context2 = (Context) obj13;
                                ManagedActivityResultLauncher managedActivityResultLauncher = (ManagedActivityResultLauncher) obj12;
                                GapComposer gapComposer3 = (GapComposer) obj9;
                                ((Integer) obj10).getClass();
                                ((AnimatedContentScopeImpl) obj7).getClass();
                                ((NavBackStackEntry) obj8).getClass();
                                boolean changedInstance = gapComposer3.changedInstance(navHostController) | gapComposer3.changed(function04);
                                Object rememberedValue7 = gapComposer3.rememberedValue();
                                int i25 = 2;
                                if (changedInstance || rememberedValue7 == obj11) {
                                    rememberedValue7 = new HomeFeedSettingsNavHostKt$$ExternalSyntheticLambda13(navHostController, function04, 2);
                                    gapComposer3.updateRememberedValue(rememberedValue7);
                                }
                                Function0 function05 = (Function0) rememberedValue7;
                                boolean changedInstance2 = gapComposer3.changedInstance(context2) | gapComposer3.changedInstance(managedActivityResultLauncher);
                                Object rememberedValue8 = gapComposer3.rememberedValue();
                                if (changedInstance2 || rememberedValue8 == obj11) {
                                    rememberedValue8 = new AboutActivityKt$$ExternalSyntheticLambda11(10, context2, managedActivityResultLauncher);
                                    gapComposer3.updateRememberedValue(rememberedValue8);
                                }
                                Function0 function06 = (Function0) rememberedValue8;
                                boolean changedInstance3 = gapComposer3.changedInstance(context2);
                                Object rememberedValue9 = gapComposer3.rememberedValue();
                                if (changedInstance3 || rememberedValue9 == obj11) {
                                    rememberedValue9 = new HomeFeedSettingsNavHostKt$$ExternalSyntheticLambda18(context2, i22);
                                    gapComposer3.updateRememberedValue(rememberedValue9);
                                }
                                Function0 function07 = (Function0) rememberedValue9;
                                boolean changedInstance4 = gapComposer3.changedInstance(context2);
                                Object rememberedValue10 = gapComposer3.rememberedValue();
                                if (changedInstance4 || rememberedValue10 == obj11) {
                                    rememberedValue10 = new HomeFeedSettingsNavHostKt$$ExternalSyntheticLambda18(context2, i25);
                                    gapComposer3.updateRememberedValue(rememberedValue10);
                                }
                                Function0 function08 = (Function0) rememberedValue10;
                                boolean changedInstance5 = gapComposer3.changedInstance(context2);
                                Object rememberedValue11 = gapComposer3.rememberedValue();
                                if (changedInstance5 || rememberedValue11 == obj11) {
                                    rememberedValue11 = new HomeFeedSettingsNavHostKt$$ExternalSyntheticLambda18(context2, 3);
                                    gapComposer3.updateRememberedValue(rememberedValue11);
                                }
                                Okio__OkioKt.FeedConfigurationScreen(null, function05, function06, function07, function08, (Function0) rememberedValue11, gapComposer3, 0);
                                break;
                        }
                        return unit2;
                    }
                }, true, 1879195206));
                return unit;
            case 15:
                Function0 function02 = (Function0) obj5;
                Function0 function03 = (Function0) obj4;
                Function0 function04 = (Function0) obj3;
                Function0 function05 = (Function0) obj2;
                FeedConfigurationType feedConfigurationType = (FeedConfigurationType) obj;
                feedConfigurationType.getClass();
                int i22 = FeedConfigurationScreenKt$WhenMappings.$EnumSwitchMapping$0[feedConfigurationType.ordinal()];
                if (i22 == 1) {
                    function02.invoke();
                } else if (i22 == 2) {
                    function03.invoke();
                } else if (i22 == 3) {
                    function04.invoke();
                } else {
                    if (i22 != 4) {
                        ContextsKt$$ExternalSyntheticBUOutline0.m();
                        return null;
                    }
                    function05.invoke();
                }
                return unit;
            case LAZY_VERTICAL_GRID_VALUE:
                final Function0 function06 = (Function0) obj5;
                final Context context2 = (Context) obj4;
                final NavHostController navHostController = (NavHostController) obj3;
                final ManagedActivityResultLauncher managedActivityResultLauncher = (ManagedActivityResultLauncher) obj2;
                NavGraphBuilder navGraphBuilder = (NavGraphBuilder) obj;
                navGraphBuilder.getClass();
                ComposableLambdaImpl composableLambdaImpl = new ComposableLambdaImpl(new HomeFeedSettingsNavHostKt$$ExternalSyntheticLambda7(function06, context2, navHostController), true, 87627179);
                ReflectionFactory reflectionFactory = Reflection.factory;
                OperationKt.composable(navGraphBuilder, reflectionFactory.getOrCreateKotlinClass(HomeFeedSettingsDestination.Root.class), composableLambdaImpl);
                OperationKt.composable(navGraphBuilder, reflectionFactory.getOrCreateKotlinClass(HomeFeedSettingsDestination.CommunityModuleScreen.class), new ComposableLambdaImpl(new ActivityTabFragment$$ExternalSyntheticLambda34(i4, navHostController, function06), true, -297385246));
                OperationKt.composable(navGraphBuilder, reflectionFactory.getOrCreateKotlinClass(HomeFeedSettingsDestination.ForYouModuleScreen.class), new ComposableLambdaImpl(new HomeFeedSettingsNavHostKt$$ExternalSyntheticLambda7(context2, navHostController, function06), true, -2056745117));
                final int i23 = 2;
                OperationKt.composable(navGraphBuilder, reflectionFactory.getOrCreateKotlinClass(HomeFeedSettingsDestination.FeedConfiguration.class), new ComposableLambdaImpl(new Function4() { // from class: org.wikipedia.search.SearchResultsScreenKt$$ExternalSyntheticLambda13
                    @Override // kotlin.jvm.functions.Function4
                    public final Object invoke(Object obj7, Object obj8, Object obj9, Object obj10) {
                        int i212 = i23;
                        Unit unit2 = Unit.INSTANCE;
                        Object obj11 = Composer$Companion.Empty;
                        Object obj12 = managedActivityResultLauncher;
                        Object obj13 = context2;
                        Object obj14 = function06;
                        Object obj15 = navHostController;
                        int i222 = 0;
                        switch (i212) {
                            case 0:
                                LazyPagingItems lazyPagingItems2 = (LazyPagingItems) obj15;
                                String str32 = (String) obj14;
                                Function4 function422 = (Function4) obj13;
                                Function3 function32 = (Function3) obj12;
                                int intValue = ((Integer) obj8).intValue();
                                GapComposer gapComposer = (GapComposer) obj9;
                                int intValue2 = ((Integer) obj10).intValue();
                                ((LazyItemScopeImpl) obj7).getClass();
                                if ((intValue2 & 48) == 0) {
                                    intValue2 |= gapComposer.changed(intValue) ? 32 : 16;
                                }
                                if (!gapComposer.shouldExecute(intValue2 & 1, (intValue2 & 145) != 144)) {
                                    gapComposer.skipToGroupEnd();
                                    break;
                                } else {
                                    lazyPagingItems2.pagingDataPresenter.get(intValue);
                                    SearchResult searchResult = (SearchResult) ((ItemSnapshotList) lazyPagingItems2.itemSnapshotList$delegate.getValue()).get(intValue);
                                    if (searchResult != null) {
                                        gapComposer.startReplaceGroup(-1794256002);
                                        Modifier testTag = TestTagKt.testTag(Modifier.Companion.$$INSTANCE, "search_list" + intValue);
                                        int i232 = intValue2 & 112;
                                        boolean changed = gapComposer.changed(function422) | gapComposer.changedInstance(searchResult) | (i232 == 32);
                                        Object rememberedValue = gapComposer.rememberedValue();
                                        if (changed || rememberedValue == obj11) {
                                            rememberedValue = new SearchResultsScreenKt$$ExternalSyntheticLambda14(function422, searchResult, intValue, 0);
                                            gapComposer.updateRememberedValue(rememberedValue);
                                        }
                                        Function0 function022 = (Function0) rememberedValue;
                                        boolean changed2 = gapComposer.changed(function32) | gapComposer.changedInstance(searchResult) | (i232 == 32);
                                        Object rememberedValue2 = gapComposer.rememberedValue();
                                        if (changed2 || rememberedValue2 == obj11) {
                                            rememberedValue2 = new SearchResultsScreenKt$$ExternalSyntheticLambda15(function32, searchResult, intValue, 0);
                                            gapComposer.updateRememberedValue(rememberedValue2);
                                        }
                                        NoSearchResultsKt.SearchResultPageItem(testTag, searchResult, str32, function022, (Function1) rememberedValue2, gapComposer, 0, 0);
                                        gapComposer.end(false);
                                        break;
                                    } else {
                                        gapComposer.startReplaceGroup(-1794256003);
                                        gapComposer.end(false);
                                        break;
                                    }
                                }
                            case 1:
                                ArrayList arrayList4 = (ArrayList) obj15;
                                Function6 function62 = (Function6) obj14;
                                Function4 function43 = (Function4) obj13;
                                Function2 function22 = (Function2) obj12;
                                int intValue3 = ((Integer) obj8).intValue();
                                GapComposer gapComposer2 = (GapComposer) obj9;
                                int intValue4 = ((Integer) obj10).intValue();
                                ((LazyItemScopeImpl) obj7).getClass();
                                if ((intValue4 & 48) == 0) {
                                    intValue4 |= gapComposer2.changed(intValue3) ? 32 : 16;
                                }
                                if (!gapComposer2.shouldExecute(intValue4 & 1, (intValue4 & 145) != 144)) {
                                    gapComposer2.skipToGroupEnd();
                                    break;
                                } else {
                                    SearchResult searchResult2 = (SearchResult) arrayList4.get(intValue3);
                                    int i24 = intValue4 & 112;
                                    boolean changed3 = gapComposer2.changed(function62) | gapComposer2.changedInstance(searchResult2) | (i24 == 32);
                                    Object rememberedValue3 = gapComposer2.rememberedValue();
                                    if (changed3 || rememberedValue3 == obj11) {
                                        rememberedValue3 = new Http2Connection$$ExternalSyntheticLambda2(intValue3, 8, searchResult2, function62);
                                        gapComposer2.updateRememberedValue(rememberedValue3);
                                    }
                                    Function0 function032 = (Function0) rememberedValue3;
                                    boolean changed4 = gapComposer2.changed(function43) | (i24 == 32) | gapComposer2.changedInstance(searchResult2);
                                    Object rememberedValue4 = gapComposer2.rememberedValue();
                                    if (changed4 || rememberedValue4 == obj11) {
                                        rememberedValue4 = new ScrollNode$$ExternalSyntheticLambda0(function43, intValue3, searchResult2, 4);
                                        gapComposer2.updateRememberedValue(rememberedValue4);
                                    }
                                    Function1 function17 = (Function1) rememberedValue4;
                                    boolean changed5 = gapComposer2.changed(function62) | gapComposer2.changedInstance(searchResult2) | (i24 == 32);
                                    Object rememberedValue5 = gapComposer2.rememberedValue();
                                    if (changed5 || rememberedValue5 == obj11) {
                                        rememberedValue5 = new ScrollNode$$ExternalSyntheticLambda0(function62, searchResult2, intValue3, 5);
                                        gapComposer2.updateRememberedValue(rememberedValue5);
                                    }
                                    Function1 function18 = (Function1) rememberedValue5;
                                    boolean changed6 = gapComposer2.changed(function22) | gapComposer2.changedInstance(searchResult2);
                                    Object rememberedValue6 = gapComposer2.rememberedValue();
                                    if (changed6 || rememberedValue6 == obj11) {
                                        rememberedValue6 = new SingleLiveData$$ExternalSyntheticLambda0(6, function22, searchResult2);
                                        gapComposer2.updateRememberedValue(rememberedValue6);
                                    }
                                    NoSearchResultsKt.SemanticSearchResultPageItem(searchResult2, function032, function17, function18, (Function1) rememberedValue6, gapComposer2, 0);
                                    break;
                                }
                            default:
                                NavHostController navHostController2 = (NavHostController) obj15;
                                Function0 function042 = (Function0) obj14;
                                Context context22 = (Context) obj13;
                                ManagedActivityResultLauncher managedActivityResultLauncher2 = (ManagedActivityResultLauncher) obj12;
                                GapComposer gapComposer3 = (GapComposer) obj9;
                                ((Integer) obj10).getClass();
                                ((AnimatedContentScopeImpl) obj7).getClass();
                                ((NavBackStackEntry) obj8).getClass();
                                boolean changedInstance = gapComposer3.changedInstance(navHostController2) | gapComposer3.changed(function042);
                                Object rememberedValue7 = gapComposer3.rememberedValue();
                                int i25 = 2;
                                if (changedInstance || rememberedValue7 == obj11) {
                                    rememberedValue7 = new HomeFeedSettingsNavHostKt$$ExternalSyntheticLambda13(navHostController2, function042, 2);
                                    gapComposer3.updateRememberedValue(rememberedValue7);
                                }
                                Function0 function052 = (Function0) rememberedValue7;
                                boolean changedInstance2 = gapComposer3.changedInstance(context22) | gapComposer3.changedInstance(managedActivityResultLauncher2);
                                Object rememberedValue8 = gapComposer3.rememberedValue();
                                if (changedInstance2 || rememberedValue8 == obj11) {
                                    rememberedValue8 = new AboutActivityKt$$ExternalSyntheticLambda11(10, context22, managedActivityResultLauncher2);
                                    gapComposer3.updateRememberedValue(rememberedValue8);
                                }
                                Function0 function062 = (Function0) rememberedValue8;
                                boolean changedInstance3 = gapComposer3.changedInstance(context22);
                                Object rememberedValue9 = gapComposer3.rememberedValue();
                                if (changedInstance3 || rememberedValue9 == obj11) {
                                    rememberedValue9 = new HomeFeedSettingsNavHostKt$$ExternalSyntheticLambda18(context22, i222);
                                    gapComposer3.updateRememberedValue(rememberedValue9);
                                }
                                Function0 function07 = (Function0) rememberedValue9;
                                boolean changedInstance4 = gapComposer3.changedInstance(context22);
                                Object rememberedValue10 = gapComposer3.rememberedValue();
                                if (changedInstance4 || rememberedValue10 == obj11) {
                                    rememberedValue10 = new HomeFeedSettingsNavHostKt$$ExternalSyntheticLambda18(context22, i25);
                                    gapComposer3.updateRememberedValue(rememberedValue10);
                                }
                                Function0 function08 = (Function0) rememberedValue10;
                                boolean changedInstance5 = gapComposer3.changedInstance(context22);
                                Object rememberedValue11 = gapComposer3.rememberedValue();
                                if (changedInstance5 || rememberedValue11 == obj11) {
                                    rememberedValue11 = new HomeFeedSettingsNavHostKt$$ExternalSyntheticLambda18(context22, 3);
                                    gapComposer3.updateRememberedValue(rememberedValue11);
                                }
                                Okio__OkioKt.FeedConfigurationScreen(null, function052, function062, function07, function08, (Function0) rememberedValue11, gapComposer3, 0);
                                break;
                        }
                        return unit2;
                    }
                }, true, 478862308));
                OperationKt.composable(navGraphBuilder, reflectionFactory.getOrCreateKotlinClass(HomeFeedSettingsDestination.DefaultFeedViewScreen.class), new ComposableLambdaImpl(new HomeFeedSettingsNavHostKt$$ExternalSyntheticLambda7(navHostController, function06, context2), true, -1280497563));
                return unit;
            default:
                List list5 = (List) obj5;
                PagerState pagerState = (PagerState) obj4;
                Function1 function17 = (Function1) obj3;
                MutableState mutableState = (MutableState) obj2;
                YearInReviewScreenData yearInReviewScreenData = (YearInReviewScreenData) obj;
                yearInReviewScreenData.getClass();
                if (yearInReviewScreenData instanceof YearInReviewScreenData.HighlightsScreen) {
                    UriUtil.submit$default(238, null, "share_click", null, ((YearInReviewScreenData) list5.get(pagerState.getCurrentPage())).slideName, null);
                    mutableState.setValue(new YearInReviewCaptureRequest.HighlightsScreen((YearInReviewScreenData.HighlightsScreen) yearInReviewScreenData));
                } else if (yearInReviewScreenData instanceof YearInReviewScreenData.StandardScreen) {
                    function17.invoke(((YearInReviewScreenData) list5.get(pagerState.getCurrentPage())).slideName);
                }
                return unit;
        }
    }

    public /* synthetic */ AboutActivityKt$$ExternalSyntheticLambda7(MutableState mutableState, InfiniteTransition infiniteTransition, Ref$FloatRef ref$FloatRef, CoroutineScope coroutineScope) {
        this.$r8$classId = 2;
        this.f$1 = mutableState;
        this.f$2 = infiniteTransition;
        this.f$3 = ref$FloatRef;
        this.f$0 = coroutineScope;
    }

    public /* synthetic */ AboutActivityKt$$ExternalSyntheticLambda7(Object obj, Object obj2, Object obj3, Object obj4, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = obj2;
        this.f$2 = obj3;
        this.f$3 = obj4;
    }

    public /* synthetic */ AboutActivityKt$$ExternalSyntheticLambda7(ArrayList arrayList, Function1 function1, Object obj, String str, int i) {
        this.$r8$classId = i;
        this.f$0 = arrayList;
        this.f$1 = function1;
        this.f$3 = obj;
        this.f$2 = str;
    }

    public /* synthetic */ AboutActivityKt$$ExternalSyntheticLambda7(ArrayList arrayList, Ref$IntRef ref$IntRef, List list, int i, LazyGridMeasureResult lazyGridMeasureResult) {
        this.$r8$classId = 4;
        this.f$0 = arrayList;
        this.f$1 = ref$IntRef;
        this.f$2 = list;
        this.f$3 = lazyGridMeasureResult;
    }
}
