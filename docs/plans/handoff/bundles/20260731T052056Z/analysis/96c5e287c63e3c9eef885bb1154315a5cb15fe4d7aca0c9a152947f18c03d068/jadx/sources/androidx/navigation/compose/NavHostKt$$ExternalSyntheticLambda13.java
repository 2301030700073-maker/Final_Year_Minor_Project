package androidx.navigation.compose;

import androidx.compose.animation.core.EasingKt$$ExternalSyntheticLambda0;
import androidx.compose.animation.core.InfiniteTransition;
import androidx.compose.foundation.layout.Arrangement$SpacedAligned;
import androidx.compose.foundation.layout.FillElement;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridState;
import androidx.compose.foundation.lazy.staggeredgrid.StaggeredGridCells$Adaptive;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.navigation.NavHostController;
import androidx.recyclerview.widget.RecyclerView;
import coil3.util.ContextsKt;
import coil3.util.UtilsKt;
import java.util.ArrayList;
import java.util.Map;
import kotlin.Function;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import okhttp3.Headers;
import org.jsoup.nodes.NodeUtils;
import org.jsoup.select.NodeTraversor;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.feed.ForYouModule;
import org.wikipedia.feed.personalization.interest.ArticlesState;
import org.wikipedia.feed.places.PlacesOfInterestModuleKt;
import org.wikipedia.search.NoSearchResultsKt;
import org.wikipedia.search.SearchResultsViewModel;
import org.wikipedia.yearinreview.YearInReviewGeoSlideKt$$ExternalSyntheticLambda10;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class NavHostKt$$ExternalSyntheticLambda13 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ Object f$11;
    public final /* synthetic */ Modifier f$2;
    public final /* synthetic */ Object f$3;
    public final /* synthetic */ Object f$5;
    public final /* synthetic */ Function1 f$6;
    public final /* synthetic */ Function1 f$7;
    public final /* synthetic */ Object f$8;
    public final /* synthetic */ Function f$9;

    public /* synthetic */ NavHostKt$$ExternalSyntheticLambda13(LazyStaggeredGridState lazyStaggeredGridState, Function0 function0, ArrayList arrayList, String str, Function1 function1, ArticlesState articlesState, Modifier modifier, Function0 function02, InfiniteTransition infiniteTransition, Function1 function12) {
        this.$r8$classId = 4;
        this.f$0 = lazyStaggeredGridState;
        this.f$1 = function0;
        this.f$3 = arrayList;
        this.f$5 = str;
        this.f$6 = function1;
        this.f$8 = articlesState;
        this.f$2 = modifier;
        this.f$9 = function02;
        this.f$11 = infiniteTransition;
        this.f$7 = function12;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Object obj3 = this.f$1;
        Unit unit = Unit.INSTANCE;
        Object obj4 = this.f$11;
        Function function = this.f$9;
        Object obj5 = this.f$8;
        Object obj6 = this.f$5;
        Object obj7 = this.f$3;
        Object obj8 = this.f$0;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                ContextsKt.NavHost((NavHostController) obj8, this.f$1, this.f$2, (Alignment) obj7, (Map) obj6, this.f$6, this.f$7, (Function1) obj5, (Function1) function, (Function1) obj4, (GapComposer) obj, Updater.updateChangedFlags(920125441));
                break;
            case 1:
                ((Integer) obj2).getClass();
                NodeUtils.BecauseYouReadModule(this.f$2, (WikiSite) obj8, (ForYouModule.BecauseYouRead) obj3, (Function2) obj7, (Function2) obj6, (Function2) obj5, (Function2) function, (Function0) obj4, this.f$6, this.f$7, (GapComposer) obj, Updater.updateChangedFlags(1));
                break;
            case 2:
                ((Integer) obj2).getClass();
                NodeTraversor.ContinueReadingModule(this.f$2, (WikiSite) obj8, (ForYouModule.ContinueReading) obj3, (Function2) obj7, (Function2) obj6, (Function2) obj5, (Function2) function, (Function0) obj4, this.f$6, this.f$7, (GapComposer) obj, Updater.updateChangedFlags(1));
                break;
            case 3:
                ((Integer) obj2).getClass();
                Headers.Companion.BasedOnInterestModule(this.f$2, (WikiSite) obj8, (ForYouModule.BasedOnInterest) obj3, (Function2) obj7, (Function2) obj6, (Function2) obj5, (Function2) function, (Function0) obj4, this.f$6, this.f$7, (GapComposer) obj, Updater.updateChangedFlags(1));
                break;
            case 4:
                LazyStaggeredGridState lazyStaggeredGridState = (LazyStaggeredGridState) obj8;
                Function0 function0 = (Function0) obj3;
                ArrayList arrayList = (ArrayList) obj7;
                String str = (String) obj6;
                ArticlesState articlesState = (ArticlesState) obj5;
                Function0 function02 = (Function0) function;
                InfiniteTransition infiniteTransition = (InfiniteTransition) obj4;
                GapComposer gapComposer = (GapComposer) obj;
                int intValue = ((Integer) obj2).intValue();
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    StaggeredGridCells$Adaptive staggeredGridCells$Adaptive = new StaggeredGridCells$Adaptive();
                    FillElement fillElement = SizeKt.FillWholeMaxSize;
                    Arrangement$SpacedAligned arrangement$SpacedAligned = new Arrangement$SpacedAligned(16.0f, true, new EasingKt$$ExternalSyntheticLambda0(10));
                    PaddingValuesImpl m126PaddingValuesa9UjIt4$default = OffsetKt.m126PaddingValuesa9UjIt4$default(16.0f, RecyclerView.DECELERATION_RATE, 16.0f, 16.0f, 2);
                    boolean changed = gapComposer.changed(function0) | gapComposer.changedInstance(arrayList) | gapComposer.changed(str);
                    Function1 function1 = this.f$6;
                    boolean changed2 = changed | gapComposer.changed(function1) | gapComposer.changedInstance(articlesState);
                    Modifier modifier = this.f$2;
                    boolean changed3 = changed2 | gapComposer.changed(modifier) | gapComposer.changed(function02) | gapComposer.changedInstance(infiniteTransition);
                    Function1 function12 = this.f$7;
                    boolean changed4 = changed3 | gapComposer.changed(function12);
                    Object rememberedValue = gapComposer.rememberedValue();
                    if (changed4 || rememberedValue == Composer$Companion.Empty) {
                        YearInReviewGeoSlideKt$$ExternalSyntheticLambda10 yearInReviewGeoSlideKt$$ExternalSyntheticLambda10 = new YearInReviewGeoSlideKt$$ExternalSyntheticLambda10(articlesState, function0, arrayList, str, function1, modifier, function02, infiniteTransition, function12, 2);
                        gapComposer.updateRememberedValue(yearInReviewGeoSlideKt$$ExternalSyntheticLambda10);
                        rememberedValue = yearInReviewGeoSlideKt$$ExternalSyntheticLambda10;
                    }
                    UtilsKt.m792LazyVerticalStaggeredGrid6qCrX9Q(staggeredGridCells$Adaptive, fillElement, lazyStaggeredGridState, m126PaddingValuesa9UjIt4$default, 16.0f, arrangement$SpacedAligned, null, false, null, (Function1) rememberedValue, gapComposer, 1772592, 912);
                    break;
                }
                break;
            case 5:
                ((Integer) obj2).getClass();
                PlacesOfInterestModuleKt.PlacesOfInterestArticlesModule(this.f$2, (WikiSite) obj8, (ForYouModule.PlacesOfInterest) obj3, (Function2) obj7, (Function2) obj6, (Function2) obj5, (Function2) function, (Function0) obj4, this.f$6, this.f$7, (GapComposer) obj, Updater.updateChangedFlags(1));
                break;
            default:
                ((Integer) obj2).getClass();
                NoSearchResultsKt.SearchResultsScreen(this.f$2, (SearchResultsViewModel) obj8, (Function4) obj3, (Function3) obj7, (Function3) obj6, this.f$6, (Function0) obj5, (Function0) function, this.f$7, (Function0) obj4, (GapComposer) obj, Updater.updateChangedFlags(7));
                break;
        }
        return unit;
    }

    public /* synthetic */ NavHostKt$$ExternalSyntheticLambda13(Modifier modifier, WikiSite wikiSite, ForYouModule forYouModule, Function2 function2, Function2 function22, Function2 function23, Function2 function24, Function0 function0, Function1 function1, Function1 function12, int i, int i2) {
        this.$r8$classId = i2;
        this.f$2 = modifier;
        this.f$0 = wikiSite;
        this.f$1 = forYouModule;
        this.f$3 = function2;
        this.f$5 = function22;
        this.f$8 = function23;
        this.f$9 = function24;
        this.f$11 = function0;
        this.f$6 = function1;
        this.f$7 = function12;
    }

    public /* synthetic */ NavHostKt$$ExternalSyntheticLambda13(Modifier modifier, SearchResultsViewModel searchResultsViewModel, Function4 function4, Function3 function3, Function3 function32, Function1 function1, Function0 function0, Function0 function02, Function1 function12, Function0 function03, int i) {
        this.$r8$classId = 6;
        this.f$2 = modifier;
        this.f$0 = searchResultsViewModel;
        this.f$1 = function4;
        this.f$3 = function3;
        this.f$5 = function32;
        this.f$6 = function1;
        this.f$8 = function0;
        this.f$9 = function02;
        this.f$7 = function12;
        this.f$11 = function03;
    }

    public /* synthetic */ NavHostKt$$ExternalSyntheticLambda13(NavHostController navHostController, Object obj, Modifier modifier, Alignment alignment, Map map, Function1 function1, Function1 function12, Function1 function13, Function1 function14, Function1 function15, int i) {
        this.$r8$classId = 0;
        this.f$0 = navHostController;
        this.f$1 = obj;
        this.f$2 = modifier;
        this.f$3 = alignment;
        this.f$5 = map;
        this.f$6 = function1;
        this.f$7 = function12;
        this.f$8 = function13;
        this.f$9 = function14;
        this.f$11 = function15;
    }
}
