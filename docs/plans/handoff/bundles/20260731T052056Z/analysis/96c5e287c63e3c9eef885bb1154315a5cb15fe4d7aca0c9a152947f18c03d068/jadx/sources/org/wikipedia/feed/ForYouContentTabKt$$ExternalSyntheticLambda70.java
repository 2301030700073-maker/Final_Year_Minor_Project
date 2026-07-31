package org.wikipedia.feed;

import androidx.compose.animation.SplineBasedFloatDecayAnimationSpec_androidKt;
import androidx.compose.animation.core.ArcSplineKt;
import androidx.compose.animation.core.DecayAnimationSpecImpl;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.gestures.snapping.PagerSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1;
import androidx.compose.foundation.gestures.snapping.SnapFlingBehavior;
import androidx.compose.foundation.gestures.snapping.SnapPosition$Start;
import androidx.compose.foundation.layout.BoxWithConstraintsScopeImpl;
import androidx.compose.foundation.layout.FillElement;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.lazy.LazyItemScope$CC;
import androidx.compose.foundation.lazy.LazyItemScopeImpl;
import androidx.compose.foundation.lazy.LazyListIntervalContent;
import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.foundation.lazy.LazyListStateKt;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Density;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.Room;
import coil3.compose.SubcomposeAsyncImageKt$$ExternalSyntheticLambda2;
import java.util.Iterator;
import java.util.List;
import kotlin.ExceptionsKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import org.wikipedia.R;
import org.wikipedia.compose.theme.WikipediaColor;
import org.wikipedia.compose.theme.WikipediaColorKt;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.feed.model.EmptyForYouCard;
import org.wikipedia.page.PageActivity$onCreate$1$1$1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class ForYouContentTabKt$$ExternalSyntheticLambda70 implements Function2 {
    public final /* synthetic */ int $r8$classId = 0;
    public final /* synthetic */ ForYouContentState f$0;
    public final /* synthetic */ int f$1;
    public final /* synthetic */ WikiSite f$2;
    public final /* synthetic */ Function1 f$3;

    public /* synthetic */ ForYouContentTabKt$$ExternalSyntheticLambda70(ForYouContentState forYouContentState, int i, WikiSite wikiSite, Function1 function1) {
        this.f$0 = forYouContentState;
        this.f$1 = i;
        this.f$2 = wikiSite;
        this.f$3 = function1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                GapComposer gapComposer = (GapComposer) obj;
                int intValue = ((Integer) obj2).intValue();
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    final LazyListState rememberLazyListState = LazyListStateKt.rememberLazyListState(gapComposer);
                    final ForYouContentState forYouContentState = this.f$0;
                    final List list = forYouContentState.modules;
                    Integer valueOf = Integer.valueOf(list.size());
                    boolean changed = gapComposer.changed(rememberLazyListState) | gapComposer.changedInstance(list);
                    Object rememberedValue = gapComposer.rememberedValue();
                    if (changed || rememberedValue == Composer$Companion.Empty) {
                        rememberedValue = new PageActivity$onCreate$1$1$1(rememberLazyListState, list, null, 10);
                        gapComposer.updateRememberedValue(rememberedValue);
                    }
                    Updater.LaunchedEffect(rememberLazyListState, valueOf, (Function2) rememberedValue, gapComposer);
                    FillElement fillElement = SizeKt.FillWholeMaxSize;
                    final int i2 = this.f$1;
                    final WikiSite wikiSite = this.f$2;
                    final Function1 function1 = this.f$3;
                    OffsetKt.BoxWithConstraints(fillElement, null, false, Expect_jvmKt.rememberComposableLambda(-1516327423, new Function3() { // from class: org.wikipedia.feed.ForYouContentTabKt$$ExternalSyntheticLambda72
                        @Override // kotlin.jvm.functions.Function3
                        public final Object invoke(Object obj3, Object obj4, Object obj5) {
                            BoxWithConstraintsScopeImpl boxWithConstraintsScopeImpl = (BoxWithConstraintsScopeImpl) obj3;
                            GapComposer gapComposer2 = (GapComposer) obj4;
                            int intValue2 = ((Integer) obj5).intValue();
                            boxWithConstraintsScopeImpl.getClass();
                            if ((intValue2 & 6) == 0) {
                                intValue2 |= gapComposer2.changed(boxWithConstraintsScopeImpl) ? 4 : 2;
                            }
                            if (gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 19) != 18)) {
                                Density density = boxWithConstraintsScopeImpl.density;
                                long j = boxWithConstraintsScopeImpl.constraints;
                                final float mo84toDpu2uoSUM = Constraints.m676getHasBoundedHeightimpl(j) ? density.mo84toDpu2uoSUM(Constraints.m680getMaxHeightimpl(j)) : Float.POSITIVE_INFINITY;
                                SnapPosition$Start snapPosition$Start = SnapPosition$Start.INSTANCE$1;
                                LazyListState lazyListState = LazyListState.this;
                                boolean changed2 = gapComposer2.changed(lazyListState);
                                Object rememberedValue2 = gapComposer2.rememberedValue();
                                Object obj6 = Composer$Companion.Empty;
                                if (changed2 || rememberedValue2 == obj6) {
                                    rememberedValue2 = new PagerSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1(lazyListState, snapPosition$Start);
                                    gapComposer2.updateRememberedValue(rememberedValue2);
                                }
                                PagerSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1 pagerSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1 = (PagerSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1) rememberedValue2;
                                Object obj7 = (Density) gapComposer2.consume(CompositionLocalsKt.LocalDensity);
                                DecayAnimationSpecImpl rememberSplineBasedDecay = SplineBasedFloatDecayAnimationSpec_androidKt.rememberSplineBasedDecay(gapComposer2);
                                boolean changed3 = gapComposer2.changed(obj7) | gapComposer2.changed(pagerSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1) | gapComposer2.changed(rememberSplineBasedDecay);
                                Object rememberedValue3 = gapComposer2.rememberedValue();
                                if (changed3 || rememberedValue3 == obj6) {
                                    rememberedValue3 = new SnapFlingBehavior(pagerSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1, rememberSplineBasedDecay, ArcSplineKt.spring$default(RecyclerView.DECELERATION_RATE, 400.0f, null, 5));
                                    gapComposer2.updateRememberedValue(rememberedValue3);
                                }
                                SnapFlingBehavior snapFlingBehavior = (SnapFlingBehavior) rememberedValue3;
                                Modifier m46backgroundbw27NRU = ImageKt.m46backgroundbw27NRU(SizeKt.FillWholeMaxSize, ((WikipediaColor) gapComposer2.consume(WikipediaColorKt.LocalWikipediaColor)).backgroundColor, ColorKt.RectangleShape);
                                final List list2 = list;
                                boolean changedInstance = gapComposer2.changedInstance(list2);
                                final int i3 = i2;
                                boolean changed4 = changedInstance | gapComposer2.changed(i3) | gapComposer2.changed(mo84toDpu2uoSUM);
                                final WikiSite wikiSite2 = wikiSite;
                                boolean changedInstance2 = changed4 | gapComposer2.changedInstance(wikiSite2);
                                final Function1 function12 = function1;
                                boolean changed5 = changedInstance2 | gapComposer2.changed(function12);
                                final ForYouContentState forYouContentState2 = forYouContentState;
                                boolean changedInstance3 = changed5 | gapComposer2.changedInstance(forYouContentState2);
                                Object rememberedValue4 = gapComposer2.rememberedValue();
                                if (changedInstance3 || rememberedValue4 == obj6) {
                                    Object obj8 = new Function1() { // from class: org.wikipedia.feed.ForYouContentTabKt$$ExternalSyntheticLambda74
                                        @Override // kotlin.jvm.functions.Function1
                                        public final Object invoke(Object obj9) {
                                            LazyListIntervalContent lazyListIntervalContent = (LazyListIntervalContent) obj9;
                                            lazyListIntervalContent.getClass();
                                            List list3 = list2;
                                            Iterator it = list3.iterator();
                                            int i4 = 0;
                                            while (true) {
                                                boolean hasNext = it.hasNext();
                                                final int i5 = i3;
                                                final float f = mo84toDpu2uoSUM;
                                                final WikiSite wikiSite3 = wikiSite2;
                                                final Function1 function13 = function12;
                                                if (!hasNext) {
                                                    final ForYouContentState forYouContentState3 = forYouContentState2;
                                                    LazyItemScope$CC.item$default(lazyListIntervalContent, "load-more-foryou", new ComposableLambdaImpl(new Function3() { // from class: org.wikipedia.feed.ForYouContentTabKt$$ExternalSyntheticLambda0
                                                        @Override // kotlin.jvm.functions.Function3
                                                        public final Object invoke(Object obj10, Object obj11, Object obj12) {
                                                            GapComposer gapComposer3 = (GapComposer) obj11;
                                                            int intValue3 = ((Integer) obj12).intValue();
                                                            ((LazyItemScopeImpl) obj10).getClass();
                                                            if (gapComposer3.shouldExecute(intValue3 & 1, (intValue3 & 17) != 16)) {
                                                                ForYouContentState forYouContentState4 = ForYouContentState.this;
                                                                if (forYouContentState4.isLoadingMore) {
                                                                    gapComposer3.startReplaceGroup(408038458);
                                                                    ForYouCardKt.LoadingIndicator(null, gapComposer3, 0, 1);
                                                                    gapComposer3.end(false);
                                                                } else if (forYouContentState4.modules.isEmpty()) {
                                                                    gapComposer3.startReplaceGroup(410120108);
                                                                    gapComposer3.end(false);
                                                                } else {
                                                                    gapComposer3.startReplaceGroup(408620948);
                                                                    EmptyForYouCard emptyForYouCard = new EmptyForYouCard();
                                                                    Modifier navigationBarsPadding = OffsetKt.navigationBarsPadding(OffsetKt.m136paddingqDBjuR0$default(OffsetKt.m132padding3ABfNKs(ImageKt.m46backgroundbw27NRU(SizeKt.m140height3ABfNKs(SizeKt.fillMaxWidth(Modifier.Companion.$$INSTANCE, 1.0f), f), TuplesKt.colorResource(R.color.green800, gapComposer3), ColorKt.RectangleShape), 16.0f), RecyclerView.DECELERATION_RATE, (i5 * 2) + 64, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 13));
                                                                    Function1 function14 = function13;
                                                                    boolean changed6 = gapComposer3.changed(function14) | gapComposer3.changed(emptyForYouCard);
                                                                    Object rememberedValue5 = gapComposer3.rememberedValue();
                                                                    Object obj13 = Composer$Companion.Empty;
                                                                    if (changed6 || rememberedValue5 == obj13) {
                                                                        rememberedValue5 = new ForYouContentTabKt$$ExternalSyntheticLambda3(function14, emptyForYouCard, 0);
                                                                        gapComposer3.updateRememberedValue(rememberedValue5);
                                                                    }
                                                                    Function0 function0 = (Function0) rememberedValue5;
                                                                    boolean changed7 = gapComposer3.changed(function14) | gapComposer3.changed(emptyForYouCard);
                                                                    Object rememberedValue6 = gapComposer3.rememberedValue();
                                                                    if (changed7 || rememberedValue6 == obj13) {
                                                                        rememberedValue6 = new ForYouContentTabKt$$ExternalSyntheticLambda3(function14, emptyForYouCard, 1);
                                                                        gapComposer3.updateRememberedValue(rememberedValue6);
                                                                    }
                                                                    ForYouCardKt.ForYouFeedMessageView(navigationBarsPadding, wikiSite3, R.drawable.yir_puzzle_browser, R.string.home_feed_for_you_screen_end_of_feed_title, R.string.home_feed_for_you_screen_end_of_feed_description, R.string.home_feed_for_you_screen_end_of_feed_ways_to_keep_learning, R.string.home_feed_for_you_screen_end_of_feed_add_interests, 0, false, function0, (Function0) rememberedValue6, gapComposer3, 0, 0, 384);
                                                                    gapComposer3.end(false);
                                                                }
                                                            } else {
                                                                gapComposer3.skipToGroupEnd();
                                                            }
                                                            return Unit.INSTANCE;
                                                        }
                                                    }, true, 1824772886), 2);
                                                    Throwable th = forYouContentState3.error;
                                                    List list4 = forYouContentState3.modules;
                                                    if (th != null && !list4.isEmpty()) {
                                                        LazyItemScope$CC.item$default(lazyListIntervalContent, "error-foryou", new ComposableLambdaImpl(new SubcomposeAsyncImageKt$$ExternalSyntheticLambda2(12, forYouContentState3, function13), true, 2079161137), 2);
                                                    }
                                                    if (forYouContentState3.error == null && !forYouContentState3.isLoadingMore && !list4.isEmpty()) {
                                                        ForYouCardKt.m908forYouModuleItemFJfuzF0(lazyListIntervalContent, (ForYouModule) CollectionsKt.first(list4), 1 + list3.size(), i5, f, wikiSite3, function13, new ForYouCardKt$$ExternalSyntheticLambda17(9));
                                                    }
                                                    return Unit.INSTANCE;
                                                }
                                                Object next = it.next();
                                                int i6 = i4 + 1;
                                                if (i4 < 0) {
                                                    Room.throwIndexOverflow();
                                                    throw null;
                                                }
                                                ForYouCardKt.m908forYouModuleItemFJfuzF0(lazyListIntervalContent, (ForYouModule) next, i4, i5, f, wikiSite3, function13, new HomeScreenKt$$ExternalSyntheticLambda7(function13, 2));
                                                i4 = i6;
                                            }
                                        }
                                    };
                                    gapComposer2.updateRememberedValue(obj8);
                                    rememberedValue4 = obj8;
                                }
                                ExceptionsKt.LazyColumn(m46backgroundbw27NRU, lazyListState, null, null, null, snapFlingBehavior, false, null, (Function1) rememberedValue4, gapComposer2, 0, 444);
                            } else {
                                gapComposer2.skipToGroupEnd();
                            }
                            return Unit.INSTANCE;
                        }
                    }, gapComposer), gapComposer, 3078, 6);
                    break;
                }
                break;
            default:
                ((Integer) obj2).getClass();
                ForYouCardKt.ForYouContentTab(this.f$0, this.f$1, this.f$2, this.f$3, (GapComposer) obj, Updater.updateChangedFlags(1));
                break;
        }
        return unit;
    }

    public /* synthetic */ ForYouContentTabKt$$ExternalSyntheticLambda70(ForYouContentState forYouContentState, int i, WikiSite wikiSite, Function1 function1, int i2) {
        this.f$0 = forYouContentState;
        this.f$1 = i;
        this.f$2 = wikiSite;
        this.f$3 = function1;
    }
}
