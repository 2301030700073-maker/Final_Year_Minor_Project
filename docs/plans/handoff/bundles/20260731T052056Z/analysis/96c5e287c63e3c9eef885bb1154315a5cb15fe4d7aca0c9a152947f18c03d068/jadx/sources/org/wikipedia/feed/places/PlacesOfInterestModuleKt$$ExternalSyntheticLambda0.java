package org.wikipedia.feed.places;

import android.content.Context;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.pager.DefaultPagerState;
import androidx.compose.foundation.pager.PagerScopeImpl;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.RectangleShapeKt$RectangleShape$1;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.unit.DpKt;
import androidx.lifecycle.ViewModelKt;
import androidx.recyclerview.widget.RecyclerView;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import com.caverock.androidsvg.SVGAndroidRenderer;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.Function;
import kotlin.Unit;
import kotlin.UnsignedKt;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.text.Regex$$ExternalSyntheticLambda0;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.flow.StateFlowImpl;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp$logOut$$inlined$CoroutineExceptionHandler$1;
import org.wikipedia.WikipediaApp$logOut$2;
import org.wikipedia.compose.theme.WikipediaColor;
import org.wikipedia.compose.theme.WikipediaColorKt;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.extensions.ContextKt;
import org.wikipedia.feed.ForYouCardKt;
import org.wikipedia.feed.ForYouModule;
import org.wikipedia.feed.model.PlacesOfInterestCard;
import org.wikipedia.feed.personalization.PersonalizationScreenKt;
import org.wikipedia.feed.personalization.PersonalizationViewModel;
import org.wikipedia.feed.personalization.homepreference.HomeContentState;
import org.wikipedia.feed.personalization.homepreference.HomePreferenceScreenKt;
import org.wikipedia.feed.personalization.homepreference.HomePreferenceType;
import org.wikipedia.feed.personalization.homepreference.HomePreferenceUiState;
import org.wikipedia.feed.personalization.interest.ArticlesState;
import org.wikipedia.feed.personalization.interest.InterestSelectionScreenKt;
import org.wikipedia.feed.personalization.interest.InterestUiState;
import org.wikipedia.feed.personalization.interest.OnboardingTopic;
import org.wikipedia.history.HistoryEntry;
import org.wikipedia.page.PageTitle;
import org.wikipedia.settings.Prefs;
import org.wikipedia.settings.PrefsIoUtil;
import org.wikipedia.talk.TalkTopicsViewModel$watchOrUnwatch$1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class PlacesOfInterestModuleKt$$ExternalSyntheticLambda0 implements Function3 {
    public final /* synthetic */ int $r8$classId = 1;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ Context f$2;
    public final /* synthetic */ Object f$3;
    public final /* synthetic */ Object f$4;
    public final /* synthetic */ Function f$5;
    public final /* synthetic */ Object f$6;
    public final /* synthetic */ Function0 f$7;
    public final /* synthetic */ Object f$8;

    public /* synthetic */ PlacesOfInterestModuleKt$$ExternalSyntheticLambda0(DefaultPagerState defaultPagerState, List list, MutableState mutableState, Context context, PersonalizationViewModel personalizationViewModel, Function0 function0, Function0 function02, MutableState mutableState2, Map map) {
        this.f$0 = defaultPagerState;
        this.f$1 = list;
        this.f$3 = mutableState;
        this.f$2 = context;
        this.f$4 = personalizationViewModel;
        this.f$7 = function0;
        this.f$5 = function02;
        this.f$6 = mutableState2;
        this.f$8 = map;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Object obj4 = this.f$8;
        Object obj5 = this.f$6;
        Function function = this.f$5;
        Object obj6 = this.f$4;
        Object obj7 = this.f$3;
        Object obj8 = this.f$1;
        Object obj9 = this.f$0;
        final int i2 = 0;
        switch (i) {
            case 0:
                ForYouModule.PlacesOfInterest placesOfInterest = (ForYouModule.PlacesOfInterest) obj9;
                WikiSite wikiSite = (WikiSite) obj8;
                final Function2 function2 = (Function2) obj7;
                final Function2 function22 = (Function2) obj6;
                final Function2 function23 = (Function2) function;
                Function2 function24 = (Function2) obj5;
                Object obj10 = (Function1) obj4;
                int intValue = ((Integer) obj).intValue();
                GapComposer gapComposer = (GapComposer) obj2;
                int intValue2 = ((Integer) obj3).intValue();
                if ((intValue2 & 6) == 0) {
                    intValue2 |= gapComposer.changed(intValue) ? 4 : 2;
                }
                if (!gapComposer.shouldExecute(intValue2 & 1, (intValue2 & 19) != 18)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    Object obj11 = placesOfInterest.cards.get(intValue);
                    obj11.getClass();
                    final PlacesOfInterestCard placesOfInterestCard = (PlacesOfInterestCard) obj11;
                    final HistoryEntry historyEntry = new HistoryEntry(42, placesOfInterestCard.title);
                    PageTitle pageTitle = placesOfInterestCard.title;
                    Painter painterResource = UnsignedKt.painterResource(R.drawable.ic_location_on_24dp, 0, gapComposer);
                    String string = ContextKt.getString(this.f$2, wikiSite.languageCode, R.string.home_feed_places_of_interest_card_footer, placesOfInterestCard.distance);
                    boolean changed = gapComposer.changed(function2) | gapComposer.changedInstance(placesOfInterestCard) | gapComposer.changedInstance(historyEntry);
                    Object rememberedValue = gapComposer.rememberedValue();
                    Object obj12 = Composer$Companion.Empty;
                    if (changed || rememberedValue == obj12) {
                        rememberedValue = new Function1() { // from class: org.wikipedia.feed.places.PlacesOfInterestModuleKt$$ExternalSyntheticLambda3
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj13) {
                                int i3 = i2;
                                Unit unit2 = Unit.INSTANCE;
                                HistoryEntry historyEntry2 = historyEntry;
                                PlacesOfInterestCard placesOfInterestCard2 = placesOfInterestCard;
                                Function2 function25 = function2;
                                PageTitle pageTitle2 = (PageTitle) obj13;
                                switch (i3) {
                                    case 0:
                                        pageTitle2.getClass();
                                        function25.invoke(placesOfInterestCard2, historyEntry2);
                                        break;
                                    case 1:
                                        pageTitle2.getClass();
                                        function25.invoke(placesOfInterestCard2, historyEntry2);
                                        break;
                                    default:
                                        pageTitle2.getClass();
                                        function25.invoke(placesOfInterestCard2, historyEntry2);
                                        break;
                                }
                                return unit2;
                            }
                        };
                        gapComposer.updateRememberedValue(rememberedValue);
                    }
                    Function1 function1 = (Function1) rememberedValue;
                    boolean changed2 = gapComposer.changed(function22) | gapComposer.changedInstance(placesOfInterestCard) | gapComposer.changedInstance(historyEntry);
                    Object rememberedValue2 = gapComposer.rememberedValue();
                    if (changed2 || rememberedValue2 == obj12) {
                        final int i3 = 1;
                        rememberedValue2 = new Function1() { // from class: org.wikipedia.feed.places.PlacesOfInterestModuleKt$$ExternalSyntheticLambda3
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj13) {
                                int i32 = i3;
                                Unit unit2 = Unit.INSTANCE;
                                HistoryEntry historyEntry2 = historyEntry;
                                PlacesOfInterestCard placesOfInterestCard2 = placesOfInterestCard;
                                Function2 function25 = function22;
                                PageTitle pageTitle2 = (PageTitle) obj13;
                                switch (i32) {
                                    case 0:
                                        pageTitle2.getClass();
                                        function25.invoke(placesOfInterestCard2, historyEntry2);
                                        break;
                                    case 1:
                                        pageTitle2.getClass();
                                        function25.invoke(placesOfInterestCard2, historyEntry2);
                                        break;
                                    default:
                                        pageTitle2.getClass();
                                        function25.invoke(placesOfInterestCard2, historyEntry2);
                                        break;
                                }
                                return unit2;
                            }
                        };
                        gapComposer.updateRememberedValue(rememberedValue2);
                    }
                    Function1 function12 = (Function1) rememberedValue2;
                    boolean changed3 = gapComposer.changed(function23) | gapComposer.changedInstance(placesOfInterestCard) | gapComposer.changedInstance(historyEntry);
                    Object rememberedValue3 = gapComposer.rememberedValue();
                    if (changed3 || rememberedValue3 == obj12) {
                        final int i4 = 2;
                        rememberedValue3 = new Function1() { // from class: org.wikipedia.feed.places.PlacesOfInterestModuleKt$$ExternalSyntheticLambda3
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj13) {
                                int i32 = i4;
                                Unit unit2 = Unit.INSTANCE;
                                HistoryEntry historyEntry2 = historyEntry;
                                PlacesOfInterestCard placesOfInterestCard2 = placesOfInterestCard;
                                Function2 function25 = function23;
                                PageTitle pageTitle2 = (PageTitle) obj13;
                                switch (i32) {
                                    case 0:
                                        pageTitle2.getClass();
                                        function25.invoke(placesOfInterestCard2, historyEntry2);
                                        break;
                                    case 1:
                                        pageTitle2.getClass();
                                        function25.invoke(placesOfInterestCard2, historyEntry2);
                                        break;
                                    default:
                                        pageTitle2.getClass();
                                        function25.invoke(placesOfInterestCard2, historyEntry2);
                                        break;
                                }
                                return unit2;
                            }
                        };
                        gapComposer.updateRememberedValue(rememberedValue3);
                    }
                    Function1 function13 = (Function1) rememberedValue3;
                    boolean changed4 = gapComposer.changed(obj10) | gapComposer.changedInstance(placesOfInterestCard);
                    Object rememberedValue4 = gapComposer.rememberedValue();
                    if (changed4 || rememberedValue4 == obj12) {
                        rememberedValue4 = new Regex$$ExternalSyntheticLambda0(23, obj10, placesOfInterestCard);
                        gapComposer.updateRememberedValue(rememberedValue4);
                    }
                    ForYouCardKt.ForYouCardContent(wikiSite, pageTitle, null, 0, placesOfInterest, placesOfInterestCard, painterResource, string, null, function1, function12, function13, function24, this.f$7, 0, (Function0) rememberedValue4, gapComposer, 2097152, 16652);
                    break;
                }
            default:
                final DefaultPagerState defaultPagerState = (DefaultPagerState) obj9;
                final List list = (List) obj8;
                final State state = (State) obj7;
                final PersonalizationViewModel personalizationViewModel = (PersonalizationViewModel) obj6;
                final Function0 function0 = (Function0) function;
                final State state2 = (State) obj5;
                final Map map = (Map) obj4;
                PaddingValues paddingValues = (PaddingValues) obj;
                GapComposer gapComposer2 = (GapComposer) obj2;
                int intValue3 = ((Integer) obj3).intValue();
                paddingValues.getClass();
                if ((intValue3 & 6) == 0) {
                    intValue3 |= gapComposer2.changed(paddingValues) ? 4 : 2;
                }
                if (!gapComposer2.shouldExecute(intValue3 & 1, (intValue3 & 19) != 18)) {
                    gapComposer2.skipToGroupEnd();
                    break;
                } else {
                    Modifier padding = OffsetKt.padding(Modifier.Companion.$$INSTANCE, paddingValues);
                    ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(OffsetKt.Top, Alignment.Companion.Start, gapComposer2, 0);
                    long j = gapComposer2.compositeKeyHashCode;
                    int i5 = (int) (j ^ (j >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer2.currentCompositionLocalScope();
                    Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer2, padding);
                    ComposeUiNode.Companion.getClass();
                    LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
                    gapComposer2.startReusableNode();
                    if (gapComposer2.inserting) {
                        gapComposer2.createNode(layoutNode$Companion$Constructor$1);
                    } else {
                        gapComposer2.useNode();
                    }
                    Updater.m327setimpl(gapComposer2, columnMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
                    Updater.m327setimpl(gapComposer2, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                    Updater.m327setimpl(gapComposer2, Integer.valueOf(i5), ComposeUiNode.Companion.SetCompositeKeyHash);
                    Updater.m326reconcileimpl(gapComposer2, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                    Updater.m327setimpl(gapComposer2, materializeModifier, ComposeUiNode.Companion.SetModifier);
                    final Context context = this.f$2;
                    final Function0 function02 = this.f$7;
                    DpKt.m696HorizontalPager8jOkeI(defaultPagerState, null, null, null, 0, null, null, false, null, null, null, Expect_jvmKt.rememberComposableLambda(-807260172, new Function4() { // from class: org.wikipedia.feed.personalization.PersonalizationScreenKt$$ExternalSyntheticLambda6
                        @Override // kotlin.jvm.functions.Function4
                        public final Object invoke(Object obj13, Object obj14, Object obj15, Object obj16) {
                            int intValue4 = ((Integer) obj14).intValue();
                            GapComposer gapComposer3 = (GapComposer) obj15;
                            ((Integer) obj16).getClass();
                            ((PagerScopeImpl) obj13).getClass();
                            final List list2 = list;
                            int i6 = PersonalizationScreenKt.WhenMappings.$EnumSwitchMapping$0[((PersonalizationPage) list2.get(intValue4)).ordinal()];
                            if (i6 != 1) {
                                RectangleShapeKt$RectangleShape$1 rectangleShapeKt$RectangleShape$1 = ColorKt.RectangleShape;
                                final Context context2 = context;
                                final DefaultPagerState defaultPagerState2 = defaultPagerState;
                                final PersonalizationViewModel personalizationViewModel2 = personalizationViewModel;
                                final Map map2 = map;
                                NeverEqualPolicy neverEqualPolicy = Composer$Companion.Empty;
                                if (i6 == 2) {
                                    gapComposer3.startReplaceGroup(-1565533433);
                                    Modifier m136paddingqDBjuR0$default = OffsetKt.m136paddingqDBjuR0$default(ImageKt.m46backgroundbw27NRU(SizeKt.FillWholeMaxSize, ((WikipediaColor) gapComposer3.consume(WikipediaColorKt.LocalWikipediaColor)).paperColor, rectangleShapeKt$RectangleShape$1), RecyclerView.DECELERATION_RATE, 40.0f, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 13);
                                    State state3 = state;
                                    ArrayList arrayList = ((InterestUiState) state3.getValue()).topicsList;
                                    ArticlesState articlesState = ((InterestUiState) state3.getValue()).articlesState;
                                    int i7 = ((InterestUiState) state3.getValue()).totalSelectedCount;
                                    String str = ((InterestUiState) state3.getValue()).languageCode;
                                    boolean changedInstance = gapComposer3.changedInstance(context2) | gapComposer3.changedInstance(list2) | gapComposer3.changed(defaultPagerState2) | gapComposer3.changedInstance(personalizationViewModel2);
                                    Object rememberedValue5 = gapComposer3.rememberedValue();
                                    if (changedInstance || rememberedValue5 == neverEqualPolicy) {
                                        final int i8 = 0;
                                        Function1 function14 = new Function1() { // from class: org.wikipedia.feed.personalization.PersonalizationScreenKt$$ExternalSyntheticLambda10
                                            @Override // kotlin.jvm.functions.Function1
                                            public final Object invoke(Object obj17) {
                                                Object value;
                                                int i9 = i8;
                                                Unit unit2 = Unit.INSTANCE;
                                                PersonalizationViewModel personalizationViewModel3 = personalizationViewModel2;
                                                DefaultPagerState defaultPagerState3 = defaultPagerState2;
                                                List list3 = list2;
                                                Map map3 = map2;
                                                Context context3 = context2;
                                                switch (i9) {
                                                    case 0:
                                                        OnboardingTopic onboardingTopic = (OnboardingTopic) obj17;
                                                        onboardingTopic.getClass();
                                                        SVGAndroidRenderer instrument = ContextKt.getInstrument(context3);
                                                        if (instrument != null) {
                                                            SVGAndroidRenderer.submitInteraction$default(instrument, "click", (String) map3.get(list3.get(defaultPagerState3.getCurrentPage())), null, "topic_select", null, null, 244);
                                                        }
                                                        personalizationViewModel3.getClass();
                                                        AwaitKt.launch$default(ViewModelKt.getViewModelScope(personalizationViewModel3), new WikipediaApp$logOut$$inlined$CoroutineExceptionHandler$1(Job.Key.$$INSTANCE$1, 12), null, new WikipediaApp$logOut$2(personalizationViewModel3, onboardingTopic, (Continuation) null, 4), 2);
                                                        break;
                                                    case 1:
                                                        PageTitle pageTitle2 = (PageTitle) obj17;
                                                        pageTitle2.getClass();
                                                        SVGAndroidRenderer instrument2 = ContextKt.getInstrument(context3);
                                                        if (instrument2 != null) {
                                                            SVGAndroidRenderer.submitInteraction$default(instrument2, "click", (String) map3.get(list3.get(defaultPagerState3.getCurrentPage())), null, "article_select", null, null, 244);
                                                        }
                                                        personalizationViewModel3.getClass();
                                                        AwaitKt.launch$default(ViewModelKt.getViewModelScope(personalizationViewModel3), new PersonalizationViewModel$loadArticlesByTopic$$inlined$CoroutineExceptionHandler$1(personalizationViewModel3, 6), null, new TalkTopicsViewModel$watchOrUnwatch$1(personalizationViewModel3, pageTitle2, ((WikiSite) personalizationViewModel3.interestSelectionRepository.callAdapterFactories).languageCode, null), 2);
                                                        break;
                                                    case 2:
                                                        HomePreferenceType homePreferenceType = (HomePreferenceType) obj17;
                                                        homePreferenceType.getClass();
                                                        SVGAndroidRenderer instrument3 = ContextKt.getInstrument(context3);
                                                        if (instrument3 != null) {
                                                            SVGAndroidRenderer.submitInteraction$default(instrument3, "click", (String) map3.get(list3.get(defaultPagerState3.getCurrentPage())), null, homePreferenceType == HomePreferenceType.COMMUNITY ? "community_first" : "for_you_first", null, null, 244);
                                                        }
                                                        personalizationViewModel3.getClass();
                                                        personalizationViewModel3.homePreferenceRepository.getClass();
                                                        Prefs prefs = Prefs.INSTANCE;
                                                        PrefsIoUtil.setString(R.string.preference_key_home_preference_selection, homePreferenceType.name());
                                                        StateFlowImpl stateFlowImpl = personalizationViewModel3.state;
                                                        do {
                                                            value = stateFlowImpl.getValue();
                                                        } while (!stateFlowImpl.compareAndSet(value, PersonalizedViewModelState.copy$default((PersonalizedViewModelState) value, null, false, null, null, null, null, homePreferenceType, null, false, null, null, false, null, 32511)));
                                                    default:
                                                        HomePreferenceType homePreferenceType2 = (HomePreferenceType) obj17;
                                                        homePreferenceType2.getClass();
                                                        SVGAndroidRenderer instrument4 = ContextKt.getInstrument(context3);
                                                        if (instrument4 != null) {
                                                            SVGAndroidRenderer.submitInteraction$default(instrument4, "click", (String) map3.get(list3.get(defaultPagerState3.getCurrentPage())), null, "retry", null, null, 244);
                                                        }
                                                        personalizationViewModel3.getClass();
                                                        int i10 = PersonalizationViewModel.WhenMappings.$EnumSwitchMapping$1[homePreferenceType2.ordinal()];
                                                        if (i10 == 1) {
                                                            AwaitKt.launch$default(ViewModelKt.getViewModelScope(personalizationViewModel3), new PersonalizationViewModel$loadArticlesByTopic$$inlined$CoroutineExceptionHandler$1(personalizationViewModel3, 3), null, new PersonalizationViewModel$loadInitialArticles$2(personalizationViewModel3, null, 2), 2);
                                                            break;
                                                        } else if (i10 != 2) {
                                                            ContextsKt$$ExternalSyntheticBUOutline0.m();
                                                            break;
                                                        } else {
                                                            AwaitKt.launch$default(ViewModelKt.getViewModelScope(personalizationViewModel3), new PersonalizationViewModel$loadArticlesByTopic$$inlined$CoroutineExceptionHandler$1(personalizationViewModel3, 5), null, new PersonalizationViewModel$loadInitialArticles$2(personalizationViewModel3, null, 4), 2);
                                                            break;
                                                        }
                                                }
                                                return unit2;
                                            }
                                        };
                                        gapComposer3.updateRememberedValue(function14);
                                        rememberedValue5 = function14;
                                    }
                                    Function1 function15 = (Function1) rememberedValue5;
                                    boolean changedInstance2 = gapComposer3.changedInstance(context2) | gapComposer3.changedInstance(list2) | gapComposer3.changed(defaultPagerState2) | gapComposer3.changedInstance(personalizationViewModel2);
                                    Object rememberedValue6 = gapComposer3.rememberedValue();
                                    if (changedInstance2 || rememberedValue6 == neverEqualPolicy) {
                                        final int i9 = 1;
                                        Function1 function16 = new Function1() { // from class: org.wikipedia.feed.personalization.PersonalizationScreenKt$$ExternalSyntheticLambda10
                                            @Override // kotlin.jvm.functions.Function1
                                            public final Object invoke(Object obj17) {
                                                Object value;
                                                int i92 = i9;
                                                Unit unit2 = Unit.INSTANCE;
                                                PersonalizationViewModel personalizationViewModel3 = personalizationViewModel2;
                                                DefaultPagerState defaultPagerState3 = defaultPagerState2;
                                                List list3 = list2;
                                                Map map3 = map2;
                                                Context context3 = context2;
                                                switch (i92) {
                                                    case 0:
                                                        OnboardingTopic onboardingTopic = (OnboardingTopic) obj17;
                                                        onboardingTopic.getClass();
                                                        SVGAndroidRenderer instrument = ContextKt.getInstrument(context3);
                                                        if (instrument != null) {
                                                            SVGAndroidRenderer.submitInteraction$default(instrument, "click", (String) map3.get(list3.get(defaultPagerState3.getCurrentPage())), null, "topic_select", null, null, 244);
                                                        }
                                                        personalizationViewModel3.getClass();
                                                        AwaitKt.launch$default(ViewModelKt.getViewModelScope(personalizationViewModel3), new WikipediaApp$logOut$$inlined$CoroutineExceptionHandler$1(Job.Key.$$INSTANCE$1, 12), null, new WikipediaApp$logOut$2(personalizationViewModel3, onboardingTopic, (Continuation) null, 4), 2);
                                                        break;
                                                    case 1:
                                                        PageTitle pageTitle2 = (PageTitle) obj17;
                                                        pageTitle2.getClass();
                                                        SVGAndroidRenderer instrument2 = ContextKt.getInstrument(context3);
                                                        if (instrument2 != null) {
                                                            SVGAndroidRenderer.submitInteraction$default(instrument2, "click", (String) map3.get(list3.get(defaultPagerState3.getCurrentPage())), null, "article_select", null, null, 244);
                                                        }
                                                        personalizationViewModel3.getClass();
                                                        AwaitKt.launch$default(ViewModelKt.getViewModelScope(personalizationViewModel3), new PersonalizationViewModel$loadArticlesByTopic$$inlined$CoroutineExceptionHandler$1(personalizationViewModel3, 6), null, new TalkTopicsViewModel$watchOrUnwatch$1(personalizationViewModel3, pageTitle2, ((WikiSite) personalizationViewModel3.interestSelectionRepository.callAdapterFactories).languageCode, null), 2);
                                                        break;
                                                    case 2:
                                                        HomePreferenceType homePreferenceType = (HomePreferenceType) obj17;
                                                        homePreferenceType.getClass();
                                                        SVGAndroidRenderer instrument3 = ContextKt.getInstrument(context3);
                                                        if (instrument3 != null) {
                                                            SVGAndroidRenderer.submitInteraction$default(instrument3, "click", (String) map3.get(list3.get(defaultPagerState3.getCurrentPage())), null, homePreferenceType == HomePreferenceType.COMMUNITY ? "community_first" : "for_you_first", null, null, 244);
                                                        }
                                                        personalizationViewModel3.getClass();
                                                        personalizationViewModel3.homePreferenceRepository.getClass();
                                                        Prefs prefs = Prefs.INSTANCE;
                                                        PrefsIoUtil.setString(R.string.preference_key_home_preference_selection, homePreferenceType.name());
                                                        StateFlowImpl stateFlowImpl = personalizationViewModel3.state;
                                                        do {
                                                            value = stateFlowImpl.getValue();
                                                        } while (!stateFlowImpl.compareAndSet(value, PersonalizedViewModelState.copy$default((PersonalizedViewModelState) value, null, false, null, null, null, null, homePreferenceType, null, false, null, null, false, null, 32511)));
                                                    default:
                                                        HomePreferenceType homePreferenceType2 = (HomePreferenceType) obj17;
                                                        homePreferenceType2.getClass();
                                                        SVGAndroidRenderer instrument4 = ContextKt.getInstrument(context3);
                                                        if (instrument4 != null) {
                                                            SVGAndroidRenderer.submitInteraction$default(instrument4, "click", (String) map3.get(list3.get(defaultPagerState3.getCurrentPage())), null, "retry", null, null, 244);
                                                        }
                                                        personalizationViewModel3.getClass();
                                                        int i10 = PersonalizationViewModel.WhenMappings.$EnumSwitchMapping$1[homePreferenceType2.ordinal()];
                                                        if (i10 == 1) {
                                                            AwaitKt.launch$default(ViewModelKt.getViewModelScope(personalizationViewModel3), new PersonalizationViewModel$loadArticlesByTopic$$inlined$CoroutineExceptionHandler$1(personalizationViewModel3, 3), null, new PersonalizationViewModel$loadInitialArticles$2(personalizationViewModel3, null, 2), 2);
                                                            break;
                                                        } else if (i10 != 2) {
                                                            ContextsKt$$ExternalSyntheticBUOutline0.m();
                                                            break;
                                                        } else {
                                                            AwaitKt.launch$default(ViewModelKt.getViewModelScope(personalizationViewModel3), new PersonalizationViewModel$loadArticlesByTopic$$inlined$CoroutineExceptionHandler$1(personalizationViewModel3, 5), null, new PersonalizationViewModel$loadInitialArticles$2(personalizationViewModel3, null, 4), 2);
                                                            break;
                                                        }
                                                }
                                                return unit2;
                                            }
                                        };
                                        gapComposer3.updateRememberedValue(function16);
                                        rememberedValue6 = function16;
                                    }
                                    Function1 function17 = (Function1) rememberedValue6;
                                    boolean changedInstance3 = gapComposer3.changedInstance(context2) | gapComposer3.changedInstance(list2) | gapComposer3.changed(defaultPagerState2) | gapComposer3.changedInstance(personalizationViewModel2);
                                    Object rememberedValue7 = gapComposer3.rememberedValue();
                                    if (changedInstance3 || rememberedValue7 == neverEqualPolicy) {
                                        final int i10 = 0;
                                        Function0 function03 = new Function0() { // from class: org.wikipedia.feed.personalization.PersonalizationScreenKt$$ExternalSyntheticLambda12
                                            @Override // kotlin.jvm.functions.Function0
                                            public final Object invoke() {
                                                int i11 = i10;
                                                Unit unit2 = Unit.INSTANCE;
                                                PersonalizationViewModel personalizationViewModel3 = personalizationViewModel2;
                                                DefaultPagerState defaultPagerState3 = defaultPagerState2;
                                                List list3 = list2;
                                                Map map3 = map2;
                                                Context context3 = context2;
                                                switch (i11) {
                                                    case 0:
                                                        SVGAndroidRenderer instrument = ContextKt.getInstrument(context3);
                                                        if (instrument != null) {
                                                            SVGAndroidRenderer.submitInteraction$default(instrument, "click", (String) map3.get(list3.get(defaultPagerState3.getCurrentPage())), null, "deselect_all", null, null, 244);
                                                        }
                                                        personalizationViewModel3.getClass();
                                                        AwaitKt.launch$default(ViewModelKt.getViewModelScope(personalizationViewModel3), new PersonalizationViewModel$loadArticlesByTopic$$inlined$CoroutineExceptionHandler$1(personalizationViewModel3, 2), null, new PersonalizationViewModel$loadInitialArticles$2(personalizationViewModel3, null, 1), 2);
                                                        break;
                                                    default:
                                                        SVGAndroidRenderer instrument2 = ContextKt.getInstrument(context3);
                                                        if (instrument2 != null) {
                                                            SVGAndroidRenderer.submitInteraction$default(instrument2, "click", (String) map3.get(list3.get(defaultPagerState3.getCurrentPage())), null, "retry", null, null, 244);
                                                        }
                                                        OnboardingTopic onboardingTopic = (OnboardingTopic) CollectionsKt.lastOrNull(((PersonalizedViewModelState) personalizationViewModel3.state.getValue()).selectedTopics);
                                                        if (onboardingTopic == null) {
                                                            personalizationViewModel3.loadInitialArticles();
                                                            break;
                                                        } else {
                                                            personalizationViewModel3.loadArticlesByTopic(onboardingTopic);
                                                            break;
                                                        }
                                                }
                                                return unit2;
                                            }
                                        };
                                        gapComposer3.updateRememberedValue(function03);
                                        rememberedValue7 = function03;
                                    }
                                    Function0 function04 = (Function0) rememberedValue7;
                                    boolean changedInstance4 = gapComposer3.changedInstance(context2) | gapComposer3.changedInstance(list2) | gapComposer3.changed(defaultPagerState2) | gapComposer3.changedInstance(personalizationViewModel2);
                                    Object rememberedValue8 = gapComposer3.rememberedValue();
                                    if (changedInstance4 || rememberedValue8 == neverEqualPolicy) {
                                        final int i11 = 1;
                                        Function0 function05 = new Function0() { // from class: org.wikipedia.feed.personalization.PersonalizationScreenKt$$ExternalSyntheticLambda12
                                            @Override // kotlin.jvm.functions.Function0
                                            public final Object invoke() {
                                                int i112 = i11;
                                                Unit unit2 = Unit.INSTANCE;
                                                PersonalizationViewModel personalizationViewModel3 = personalizationViewModel2;
                                                DefaultPagerState defaultPagerState3 = defaultPagerState2;
                                                List list3 = list2;
                                                Map map3 = map2;
                                                Context context3 = context2;
                                                switch (i112) {
                                                    case 0:
                                                        SVGAndroidRenderer instrument = ContextKt.getInstrument(context3);
                                                        if (instrument != null) {
                                                            SVGAndroidRenderer.submitInteraction$default(instrument, "click", (String) map3.get(list3.get(defaultPagerState3.getCurrentPage())), null, "deselect_all", null, null, 244);
                                                        }
                                                        personalizationViewModel3.getClass();
                                                        AwaitKt.launch$default(ViewModelKt.getViewModelScope(personalizationViewModel3), new PersonalizationViewModel$loadArticlesByTopic$$inlined$CoroutineExceptionHandler$1(personalizationViewModel3, 2), null, new PersonalizationViewModel$loadInitialArticles$2(personalizationViewModel3, null, 1), 2);
                                                        break;
                                                    default:
                                                        SVGAndroidRenderer instrument2 = ContextKt.getInstrument(context3);
                                                        if (instrument2 != null) {
                                                            SVGAndroidRenderer.submitInteraction$default(instrument2, "click", (String) map3.get(list3.get(defaultPagerState3.getCurrentPage())), null, "retry", null, null, 244);
                                                        }
                                                        OnboardingTopic onboardingTopic = (OnboardingTopic) CollectionsKt.lastOrNull(((PersonalizedViewModelState) personalizationViewModel3.state.getValue()).selectedTopics);
                                                        if (onboardingTopic == null) {
                                                            personalizationViewModel3.loadInitialArticles();
                                                            break;
                                                        } else {
                                                            personalizationViewModel3.loadArticlesByTopic(onboardingTopic);
                                                            break;
                                                        }
                                                }
                                                return unit2;
                                            }
                                        };
                                        gapComposer3.updateRememberedValue(function05);
                                        rememberedValue8 = function05;
                                    }
                                    InterestSelectionScreenKt.InterestOnboardingScreen(m136paddingqDBjuR0$default, articlesState, arrayList, i7, str, null, function15, function17, function02, function04, (Function0) rememberedValue8, function0, gapComposer3, 0);
                                    gapComposer3.end(false);
                                } else {
                                    if (i6 != 3) {
                                        throw Modifier.CC.m(gapComposer3, 1612060056, false);
                                    }
                                    gapComposer3.startReplaceGroup(-1563494749);
                                    Modifier m136paddingqDBjuR0$default2 = OffsetKt.m136paddingqDBjuR0$default(ImageKt.m46backgroundbw27NRU(SizeKt.FillWholeMaxSize, ((WikipediaColor) gapComposer3.consume(WikipediaColorKt.LocalWikipediaColor)).paperColor, rectangleShapeKt$RectangleShape$1), RecyclerView.DECELERATION_RATE, 40.0f, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 13);
                                    State state4 = state2;
                                    HomePreferenceType homePreferenceType = ((HomePreferenceUiState) state4.getValue()).selectedType;
                                    HomeContentState homeContentState = ((HomePreferenceUiState) state4.getValue()).communityState;
                                    HomeContentState homeContentState2 = ((HomePreferenceUiState) state4.getValue()).personalizedState;
                                    boolean changedInstance5 = gapComposer3.changedInstance(context2) | gapComposer3.changedInstance(list2) | gapComposer3.changed(defaultPagerState2) | gapComposer3.changedInstance(personalizationViewModel2);
                                    Object rememberedValue9 = gapComposer3.rememberedValue();
                                    if (changedInstance5 || rememberedValue9 == neverEqualPolicy) {
                                        final int i12 = 2;
                                        Function1 function18 = new Function1() { // from class: org.wikipedia.feed.personalization.PersonalizationScreenKt$$ExternalSyntheticLambda10
                                            @Override // kotlin.jvm.functions.Function1
                                            public final Object invoke(Object obj17) {
                                                Object value;
                                                int i92 = i12;
                                                Unit unit2 = Unit.INSTANCE;
                                                PersonalizationViewModel personalizationViewModel3 = personalizationViewModel2;
                                                DefaultPagerState defaultPagerState3 = defaultPagerState2;
                                                List list3 = list2;
                                                Map map3 = map2;
                                                Context context3 = context2;
                                                switch (i92) {
                                                    case 0:
                                                        OnboardingTopic onboardingTopic = (OnboardingTopic) obj17;
                                                        onboardingTopic.getClass();
                                                        SVGAndroidRenderer instrument = ContextKt.getInstrument(context3);
                                                        if (instrument != null) {
                                                            SVGAndroidRenderer.submitInteraction$default(instrument, "click", (String) map3.get(list3.get(defaultPagerState3.getCurrentPage())), null, "topic_select", null, null, 244);
                                                        }
                                                        personalizationViewModel3.getClass();
                                                        AwaitKt.launch$default(ViewModelKt.getViewModelScope(personalizationViewModel3), new WikipediaApp$logOut$$inlined$CoroutineExceptionHandler$1(Job.Key.$$INSTANCE$1, 12), null, new WikipediaApp$logOut$2(personalizationViewModel3, onboardingTopic, (Continuation) null, 4), 2);
                                                        break;
                                                    case 1:
                                                        PageTitle pageTitle2 = (PageTitle) obj17;
                                                        pageTitle2.getClass();
                                                        SVGAndroidRenderer instrument2 = ContextKt.getInstrument(context3);
                                                        if (instrument2 != null) {
                                                            SVGAndroidRenderer.submitInteraction$default(instrument2, "click", (String) map3.get(list3.get(defaultPagerState3.getCurrentPage())), null, "article_select", null, null, 244);
                                                        }
                                                        personalizationViewModel3.getClass();
                                                        AwaitKt.launch$default(ViewModelKt.getViewModelScope(personalizationViewModel3), new PersonalizationViewModel$loadArticlesByTopic$$inlined$CoroutineExceptionHandler$1(personalizationViewModel3, 6), null, new TalkTopicsViewModel$watchOrUnwatch$1(personalizationViewModel3, pageTitle2, ((WikiSite) personalizationViewModel3.interestSelectionRepository.callAdapterFactories).languageCode, null), 2);
                                                        break;
                                                    case 2:
                                                        HomePreferenceType homePreferenceType2 = (HomePreferenceType) obj17;
                                                        homePreferenceType2.getClass();
                                                        SVGAndroidRenderer instrument3 = ContextKt.getInstrument(context3);
                                                        if (instrument3 != null) {
                                                            SVGAndroidRenderer.submitInteraction$default(instrument3, "click", (String) map3.get(list3.get(defaultPagerState3.getCurrentPage())), null, homePreferenceType2 == HomePreferenceType.COMMUNITY ? "community_first" : "for_you_first", null, null, 244);
                                                        }
                                                        personalizationViewModel3.getClass();
                                                        personalizationViewModel3.homePreferenceRepository.getClass();
                                                        Prefs prefs = Prefs.INSTANCE;
                                                        PrefsIoUtil.setString(R.string.preference_key_home_preference_selection, homePreferenceType2.name());
                                                        StateFlowImpl stateFlowImpl = personalizationViewModel3.state;
                                                        do {
                                                            value = stateFlowImpl.getValue();
                                                        } while (!stateFlowImpl.compareAndSet(value, PersonalizedViewModelState.copy$default((PersonalizedViewModelState) value, null, false, null, null, null, null, homePreferenceType2, null, false, null, null, false, null, 32511)));
                                                    default:
                                                        HomePreferenceType homePreferenceType22 = (HomePreferenceType) obj17;
                                                        homePreferenceType22.getClass();
                                                        SVGAndroidRenderer instrument4 = ContextKt.getInstrument(context3);
                                                        if (instrument4 != null) {
                                                            SVGAndroidRenderer.submitInteraction$default(instrument4, "click", (String) map3.get(list3.get(defaultPagerState3.getCurrentPage())), null, "retry", null, null, 244);
                                                        }
                                                        personalizationViewModel3.getClass();
                                                        int i102 = PersonalizationViewModel.WhenMappings.$EnumSwitchMapping$1[homePreferenceType22.ordinal()];
                                                        if (i102 == 1) {
                                                            AwaitKt.launch$default(ViewModelKt.getViewModelScope(personalizationViewModel3), new PersonalizationViewModel$loadArticlesByTopic$$inlined$CoroutineExceptionHandler$1(personalizationViewModel3, 3), null, new PersonalizationViewModel$loadInitialArticles$2(personalizationViewModel3, null, 2), 2);
                                                            break;
                                                        } else if (i102 != 2) {
                                                            ContextsKt$$ExternalSyntheticBUOutline0.m();
                                                            break;
                                                        } else {
                                                            AwaitKt.launch$default(ViewModelKt.getViewModelScope(personalizationViewModel3), new PersonalizationViewModel$loadArticlesByTopic$$inlined$CoroutineExceptionHandler$1(personalizationViewModel3, 5), null, new PersonalizationViewModel$loadInitialArticles$2(personalizationViewModel3, null, 4), 2);
                                                            break;
                                                        }
                                                }
                                                return unit2;
                                            }
                                        };
                                        gapComposer3.updateRememberedValue(function18);
                                        rememberedValue9 = function18;
                                    }
                                    Function1 function19 = (Function1) rememberedValue9;
                                    boolean changedInstance6 = gapComposer3.changedInstance(context2) | gapComposer3.changedInstance(list2) | gapComposer3.changed(defaultPagerState2) | gapComposer3.changedInstance(personalizationViewModel2);
                                    Object rememberedValue10 = gapComposer3.rememberedValue();
                                    if (changedInstance6 || rememberedValue10 == neverEqualPolicy) {
                                        final int i13 = 3;
                                        Function1 function110 = new Function1() { // from class: org.wikipedia.feed.personalization.PersonalizationScreenKt$$ExternalSyntheticLambda10
                                            @Override // kotlin.jvm.functions.Function1
                                            public final Object invoke(Object obj17) {
                                                Object value;
                                                int i92 = i13;
                                                Unit unit2 = Unit.INSTANCE;
                                                PersonalizationViewModel personalizationViewModel3 = personalizationViewModel2;
                                                DefaultPagerState defaultPagerState3 = defaultPagerState2;
                                                List list3 = list2;
                                                Map map3 = map2;
                                                Context context3 = context2;
                                                switch (i92) {
                                                    case 0:
                                                        OnboardingTopic onboardingTopic = (OnboardingTopic) obj17;
                                                        onboardingTopic.getClass();
                                                        SVGAndroidRenderer instrument = ContextKt.getInstrument(context3);
                                                        if (instrument != null) {
                                                            SVGAndroidRenderer.submitInteraction$default(instrument, "click", (String) map3.get(list3.get(defaultPagerState3.getCurrentPage())), null, "topic_select", null, null, 244);
                                                        }
                                                        personalizationViewModel3.getClass();
                                                        AwaitKt.launch$default(ViewModelKt.getViewModelScope(personalizationViewModel3), new WikipediaApp$logOut$$inlined$CoroutineExceptionHandler$1(Job.Key.$$INSTANCE$1, 12), null, new WikipediaApp$logOut$2(personalizationViewModel3, onboardingTopic, (Continuation) null, 4), 2);
                                                        break;
                                                    case 1:
                                                        PageTitle pageTitle2 = (PageTitle) obj17;
                                                        pageTitle2.getClass();
                                                        SVGAndroidRenderer instrument2 = ContextKt.getInstrument(context3);
                                                        if (instrument2 != null) {
                                                            SVGAndroidRenderer.submitInteraction$default(instrument2, "click", (String) map3.get(list3.get(defaultPagerState3.getCurrentPage())), null, "article_select", null, null, 244);
                                                        }
                                                        personalizationViewModel3.getClass();
                                                        AwaitKt.launch$default(ViewModelKt.getViewModelScope(personalizationViewModel3), new PersonalizationViewModel$loadArticlesByTopic$$inlined$CoroutineExceptionHandler$1(personalizationViewModel3, 6), null, new TalkTopicsViewModel$watchOrUnwatch$1(personalizationViewModel3, pageTitle2, ((WikiSite) personalizationViewModel3.interestSelectionRepository.callAdapterFactories).languageCode, null), 2);
                                                        break;
                                                    case 2:
                                                        HomePreferenceType homePreferenceType2 = (HomePreferenceType) obj17;
                                                        homePreferenceType2.getClass();
                                                        SVGAndroidRenderer instrument3 = ContextKt.getInstrument(context3);
                                                        if (instrument3 != null) {
                                                            SVGAndroidRenderer.submitInteraction$default(instrument3, "click", (String) map3.get(list3.get(defaultPagerState3.getCurrentPage())), null, homePreferenceType2 == HomePreferenceType.COMMUNITY ? "community_first" : "for_you_first", null, null, 244);
                                                        }
                                                        personalizationViewModel3.getClass();
                                                        personalizationViewModel3.homePreferenceRepository.getClass();
                                                        Prefs prefs = Prefs.INSTANCE;
                                                        PrefsIoUtil.setString(R.string.preference_key_home_preference_selection, homePreferenceType2.name());
                                                        StateFlowImpl stateFlowImpl = personalizationViewModel3.state;
                                                        do {
                                                            value = stateFlowImpl.getValue();
                                                        } while (!stateFlowImpl.compareAndSet(value, PersonalizedViewModelState.copy$default((PersonalizedViewModelState) value, null, false, null, null, null, null, homePreferenceType2, null, false, null, null, false, null, 32511)));
                                                    default:
                                                        HomePreferenceType homePreferenceType22 = (HomePreferenceType) obj17;
                                                        homePreferenceType22.getClass();
                                                        SVGAndroidRenderer instrument4 = ContextKt.getInstrument(context3);
                                                        if (instrument4 != null) {
                                                            SVGAndroidRenderer.submitInteraction$default(instrument4, "click", (String) map3.get(list3.get(defaultPagerState3.getCurrentPage())), null, "retry", null, null, 244);
                                                        }
                                                        personalizationViewModel3.getClass();
                                                        int i102 = PersonalizationViewModel.WhenMappings.$EnumSwitchMapping$1[homePreferenceType22.ordinal()];
                                                        if (i102 == 1) {
                                                            AwaitKt.launch$default(ViewModelKt.getViewModelScope(personalizationViewModel3), new PersonalizationViewModel$loadArticlesByTopic$$inlined$CoroutineExceptionHandler$1(personalizationViewModel3, 3), null, new PersonalizationViewModel$loadInitialArticles$2(personalizationViewModel3, null, 2), 2);
                                                            break;
                                                        } else if (i102 != 2) {
                                                            ContextsKt$$ExternalSyntheticBUOutline0.m();
                                                            break;
                                                        } else {
                                                            AwaitKt.launch$default(ViewModelKt.getViewModelScope(personalizationViewModel3), new PersonalizationViewModel$loadArticlesByTopic$$inlined$CoroutineExceptionHandler$1(personalizationViewModel3, 5), null, new PersonalizationViewModel$loadInitialArticles$2(personalizationViewModel3, null, 4), 2);
                                                            break;
                                                        }
                                                }
                                                return unit2;
                                            }
                                        };
                                        gapComposer3.updateRememberedValue(function110);
                                        rememberedValue10 = function110;
                                    }
                                    HomePreferenceScreenKt.HomePreferenceScreen(m136paddingqDBjuR0$default2, homePreferenceType, homeContentState, homeContentState2, function19, (Function1) rememberedValue10, gapComposer3, 0);
                                    gapComposer3.end(false);
                                }
                            } else {
                                gapComposer3.startReplaceGroup(-1565779263);
                                PersonalizationScreenKt.OnboardingCuriosityScreen(SizeKt.fillMaxWidth(Modifier.Companion.$$INSTANCE, 1.0f), gapComposer3, 6, 0);
                                gapComposer3.end(false);
                            }
                            return Unit.INSTANCE;
                        }
                    }, gapComposer2), gapComposer2, 0, 16382);
                    gapComposer2.end(true);
                    break;
                }
        }
        return unit;
    }

    public /* synthetic */ PlacesOfInterestModuleKt$$ExternalSyntheticLambda0(ForYouModule.PlacesOfInterest placesOfInterest, WikiSite wikiSite, Context context, Function2 function2, Function2 function22, Function2 function23, Function2 function24, Function0 function0, Function1 function1) {
        this.f$0 = placesOfInterest;
        this.f$1 = wikiSite;
        this.f$2 = context;
        this.f$3 = function2;
        this.f$4 = function22;
        this.f$5 = function23;
        this.f$6 = function24;
        this.f$7 = function0;
        this.f$8 = function1;
    }
}
