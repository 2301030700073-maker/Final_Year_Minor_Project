package org.wikipedia.feed;

import android.content.Context;
import androidx.compose.animation.core.Animation;
import androidx.compose.animation.core.EasingKt$$ExternalSyntheticLambda0;
import androidx.compose.animation.core.Transition;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.layout.Arrangement$SpacedAligned;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.lazy.LazyListItemProviderImpl;
import androidx.compose.foundation.lazy.grid.LazyGridItemProviderImpl;
import androidx.compose.foundation.lazy.layout.LazyLayoutItemProvider;
import androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridItemProviderImpl;
import androidx.compose.foundation.pager.PagerLazyLayoutItemProvider;
import androidx.compose.foundation.text.AnnotatedStringResolveInlineContentKt;
import androidx.compose.foundation.text.KeyboardOptions;
import androidx.compose.material3.CardKt;
import androidx.compose.material3.ColorScheme;
import androidx.compose.material3.ColorSchemeKt;
import androidx.compose.material3.TextFieldColors;
import androidx.compose.material3.TextFieldDefaults;
import androidx.compose.material3.TextKt;
import androidx.compose.material3.Typography;
import androidx.compose.material3.TypographyKt;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.text.AnnotatedString;
import coil3.util.UtilsKt;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import okio.Okio__OkioKt;
import org.jsoup.Jsoup;
import org.wikipedia.R;
import org.wikipedia.activitytab.timeline.TimelineItem;
import org.wikipedia.activitytab.timeline.TimelineModuleKt;
import org.wikipedia.compose.components.menu.PageOverflowMenuViewModel;
import org.wikipedia.compose.theme.WikipediaColor;
import org.wikipedia.compose.theme.WikipediaColorKt;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.dataclient.restbase.RbDefinition$Usage;
import org.wikipedia.extensions.ContextKt;
import org.wikipedia.language.LangLinksScreenKt$$ExternalSyntheticLambda4;
import org.wikipedia.readinglist.recommended.RecommendedReadingListSettingsScreenKt$$ExternalSyntheticLambda36;
import org.wikipedia.widgets.readingchallenge.StreakProgressBarKt;
import org.wikipedia.yearinreview.YearInReviewDialog;
import org.wikipedia.yearinreview.YearInReviewScreenData;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class ForYouCardKt$$ExternalSyntheticLambda31 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ int f$2;

    public /* synthetic */ ForYouCardKt$$ExternalSyntheticLambda31(int i, PageOverflowMenuViewModel.PageOverflowMenuState pageOverflowMenuState, Function0 function0) {
        this.$r8$classId = 14;
        this.f$2 = i;
        this.f$0 = pageOverflowMenuState;
        this.f$1 = function0;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        int i2 = this.f$2;
        Object obj3 = this.f$1;
        Object obj4 = this.f$0;
        switch (i) {
            case 0:
                Context context = (Context) obj4;
                WikiSite wikiSite = (WikiSite) obj3;
                GapComposer gapComposer = (GapComposer) obj;
                int intValue = ((Integer) obj2).intValue();
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    TextKt.m308TextNvy7gAk(ContextKt.getString(context, wikiSite.languageCode, i2, new Object[0]), null, ((WikipediaColor) gapComposer.consume(WikipediaColorKt.LocalWikipediaColor)).primaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, ((Typography) gapComposer.consume(TypographyKt.LocalTypography)).bodyLarge, gapComposer, 0, 0, 131066);
                    break;
                }
            case 1:
                ((Integer) obj2).intValue();
                ((Transition) obj4).animateTo$animation_core(obj3, (GapComposer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            case 2:
                ((Integer) obj2).intValue();
                ImageKt.Canvas((Modifier) obj4, (Function1) obj3, (GapComposer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            case 3:
                ((Integer) obj2).getClass();
                ((LazyListItemProviderImpl) obj4).Item(i2, obj3, (GapComposer) obj, Updater.updateChangedFlags(1));
                break;
            case 4:
                ((Integer) obj2).getClass();
                ((LazyGridItemProviderImpl) obj4).Item(i2, obj3, (GapComposer) obj, Updater.updateChangedFlags(1));
                break;
            case 5:
                LazyLayoutItemProvider lazyLayoutItemProvider = (LazyLayoutItemProvider) obj4;
                GapComposer gapComposer2 = (GapComposer) obj;
                int intValue2 = ((Integer) obj2).intValue();
                if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 3) != 2)) {
                    gapComposer2.skipToGroupEnd();
                    break;
                } else {
                    lazyLayoutItemProvider.Item(i2, obj3, gapComposer2, 0);
                    break;
                }
            case 6:
                ((Integer) obj2).getClass();
                ((LazyStaggeredGridItemProviderImpl) obj4).Item(i2, obj3, (GapComposer) obj, Updater.updateChangedFlags(1));
                break;
            case 7:
                ((Integer) obj2).getClass();
                ((PagerLazyLayoutItemProvider) obj4).Item(i2, obj3, (GapComposer) obj, Updater.updateChangedFlags(1));
                break;
            case 8:
                ((Integer) obj2).getClass();
                AnnotatedStringResolveInlineContentKt.InlineChildren((AnnotatedString) obj4, (List) obj3, (GapComposer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            case 9:
                ((Integer) obj2).intValue();
                Updater.CompositionLocalProvider((ProvidedValue) obj4, (Function2) obj3, (GapComposer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            case 10:
                ((Integer) obj2).getClass();
                Updater.CompositionLocalProvider((ProvidedValue[]) obj4, (Function2) obj3, (GapComposer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            case 11:
                ((Integer) obj2).getClass();
                ((ComposableLambdaImpl) obj4).invoke(obj3, (GapComposer) obj, Updater.updateChangedFlags(i2) | 1);
                break;
            case 12:
                ((Integer) obj2).getClass();
                TimelineModuleKt.TimelineModule((TimelineItem) obj4, (Function1) obj3, (GapComposer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            case IMAGE_VALUE:
                ((Integer) obj2).getClass();
                ForYouCardKt.LoadMoreButton((WikiSite) obj3, (Function0) obj4, (GapComposer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            case LINEAR_PROGRESS_INDICATOR_VALUE:
                PageOverflowMenuViewModel.PageOverflowMenuState pageOverflowMenuState = (PageOverflowMenuViewModel.PageOverflowMenuState) obj4;
                Function0 function0 = (Function0) obj3;
                GapComposer gapComposer3 = (GapComposer) obj;
                int intValue3 = ((Integer) obj2).intValue();
                if (!gapComposer3.shouldExecute(intValue3 & 1, (intValue3 & 3) != 2)) {
                    gapComposer3.skipToGroupEnd();
                    break;
                } else {
                    String m = Animation.CC.m(i2, "dyk-");
                    List list = pageOverflowMenuState != null ? pageOverflowMenuState.items : null;
                    if (list == null) {
                        list = EmptyList.INSTANCE;
                    }
                    Okio__OkioKt.PageOverflowMenu(null, m, pageOverflowMenuState, function0, list, gapComposer3, 0);
                    break;
                }
            case 15:
                Function1 function1 = (Function1) obj4;
                MutableState mutableState = (MutableState) obj3;
                GapComposer gapComposer4 = (GapComposer) obj;
                int intValue4 = ((Integer) obj2).intValue();
                if (!gapComposer4.shouldExecute(intValue4 & 1, (intValue4 & 3) != 2)) {
                    gapComposer4.skipToGroupEnd();
                    break;
                } else {
                    RowMeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(new Arrangement$SpacedAligned(8.0f, true, new EasingKt$$ExternalSyntheticLambda0(10)), Alignment.Companion.CenterVertically, gapComposer4, 54);
                    long j = gapComposer4.compositeKeyHashCode;
                    int i3 = (int) (j ^ (j >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer4.currentCompositionLocalScope();
                    Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
                    Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer4, companion);
                    ComposeUiNode.Companion.getClass();
                    LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
                    gapComposer4.startReusableNode();
                    if (gapComposer4.inserting) {
                        gapComposer4.createNode(layoutNode$Companion$Constructor$1);
                    } else {
                        gapComposer4.useNode();
                    }
                    Updater.m327setimpl(gapComposer4, rowMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
                    Updater.m327setimpl(gapComposer4, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                    Updater.m327setimpl(gapComposer4, Integer.valueOf(i3), ComposeUiNode.Companion.SetCompositeKeyHash);
                    Updater.m326reconcileimpl(gapComposer4, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                    Updater.m327setimpl(gapComposer4, materializeModifier, ComposeUiNode.Companion.SetModifier);
                    Modifier m146sizeVpY3zN4 = SizeKt.m146sizeVpY3zN4(companion, 56.0f, 56.0f);
                    String str = (String) mutableState.getValue();
                    KeyboardOptions keyboardOptions = new KeyboardOptions(3, 123);
                    StaticProvidableCompositionLocal staticProvidableCompositionLocal = WikipediaColorKt.LocalWikipediaColor;
                    long j2 = ((WikipediaColor) gapComposer4.consume(staticProvidableCompositionLocal)).primaryColor;
                    StaticProvidableCompositionLocal staticProvidableCompositionLocal2 = ColorSchemeKt.LocalColorScheme;
                    TextFieldColors m304colors0hiis_0 = TextFieldDefaults.m304colors0hiis_0(j2, ((ColorScheme) gapComposer4.consume(staticProvidableCompositionLocal2)).onSurfaceVariant, 0L, 0L, ((ColorScheme) gapComposer4.consume(staticProvidableCompositionLocal2)).outline, ((ColorScheme) gapComposer4.consume(staticProvidableCompositionLocal2)).outline, gapComposer4, 2147477500);
                    boolean changed = gapComposer4.changed(function1) | gapComposer4.changed(1) | gapComposer4.changed(20);
                    Object rememberedValue = gapComposer4.rememberedValue();
                    if (changed || rememberedValue == Composer$Companion.Empty) {
                        rememberedValue = new LangLinksScreenKt$$ExternalSyntheticLambda4(function1, mutableState, 2);
                        gapComposer4.updateRememberedValue(rememberedValue);
                    }
                    CardKt.OutlinedTextField(str, (Function1) rememberedValue, m146sizeVpY3zN4, false, null, null, Expect_jvmKt.rememberComposableLambda(186466907, new RecommendedReadingListSettingsScreenKt$$ExternalSyntheticLambda36(i2, 1), gapComposer4), null, null, null, null, false, null, keyboardOptions, null, true, 0, 0, null, m304colors0hiis_0, gapComposer4, 12583296, 12779520, 4030328);
                    TextKt.m308TextNvy7gAk(UtilsKt.stringResource(R.string.recommended_reading_list_settings_articles, gapComposer4), null, ((WikipediaColor) gapComposer4.consume(staticProvidableCompositionLocal)).primaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, ((Typography) gapComposer4.consume(TypographyKt.LocalTypography)).bodyLarge, gapComposer4, 0, 0, 131066);
                    gapComposer4.end(true);
                    break;
                }
                break;
            case LAZY_VERTICAL_GRID_VALUE:
                ((Integer) obj2).getClass();
                StreakProgressBarKt.RewardScreen((Function0) obj4, (Function0) obj3, (GapComposer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            case VERTICAL_GRID_ITEM_VALUE:
                ((Integer) obj2).intValue();
                Jsoup.DefinitionList((RbDefinition$Usage) obj4, (Function1) obj3, (GapComposer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            default:
                ((Integer) obj2).getClass();
                YearInReviewDialog.YearInReviewHighlightsScreen((Modifier) obj4, (YearInReviewScreenData.HighlightsScreen) obj3, (GapComposer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
        }
        return unit;
    }

    public /* synthetic */ ForYouCardKt$$ExternalSyntheticLambda31(int i, LazyLayoutItemProvider lazyLayoutItemProvider, Object obj) {
        this.$r8$classId = 5;
        this.f$0 = lazyLayoutItemProvider;
        this.f$2 = i;
        this.f$1 = obj;
    }

    public /* synthetic */ ForYouCardKt$$ExternalSyntheticLambda31(LazyLayoutItemProvider lazyLayoutItemProvider, int i, Object obj, int i2, int i3) {
        this.$r8$classId = i3;
        this.f$0 = lazyLayoutItemProvider;
        this.f$2 = i;
        this.f$1 = obj;
    }

    public /* synthetic */ ForYouCardKt$$ExternalSyntheticLambda31(Object obj, Object obj2, int i, int i2) {
        this.$r8$classId = i2;
        this.f$0 = obj;
        this.f$1 = obj2;
        this.f$2 = i;
    }

    public /* synthetic */ ForYouCardKt$$ExternalSyntheticLambda31(WikiSite wikiSite, Function0 function0, int i) {
        this.$r8$classId = 13;
        this.f$1 = wikiSite;
        this.f$0 = function0;
        this.f$2 = i;
    }
}
