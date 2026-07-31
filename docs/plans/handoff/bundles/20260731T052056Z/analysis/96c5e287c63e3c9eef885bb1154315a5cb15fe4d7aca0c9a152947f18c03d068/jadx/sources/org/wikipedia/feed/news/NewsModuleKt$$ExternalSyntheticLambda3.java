package org.wikipedia.feed.news;

import androidx.compose.animation.core.Animation;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.LayoutWeightElement;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.VerticalAlignElement;
import androidx.compose.foundation.lazy.LazyItemScopeImpl;
import androidx.compose.foundation.pager.PagerScopeImpl;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.foundation.text.AutoSizeStepBased;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.material3.TextKt;
import androidx.compose.material3.Typography;
import androidx.compose.material3.TypographyKt;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.ComposeUiNode$Companion$SetModifier$1;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.node.OwnerSnapshotObserver$onCommitAffectingLayout$1;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontWeight;
import coil3.util.ContextsKt;
import coil3.util.UtilsKt;
import java.util.List;
import java.util.Locale;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function4;
import kotlin.text.StringsKt__StringsJVMKt;
import okhttp3.HttpUrl;
import org.wikipedia.R;
import org.wikipedia.compose.theme.WikipediaColor;
import org.wikipedia.compose.theme.WikipediaColorKt;
import org.wikipedia.search.NoSearchResultsKt$$ExternalSyntheticLambda3;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class NewsModuleKt$$ExternalSyntheticLambda3 implements Function4 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ List f$0;
    public final /* synthetic */ Function1 f$1;

    public /* synthetic */ NewsModuleKt$$ExternalSyntheticLambda3(List list, Function1 function1, int i) {
        this.$r8$classId = i;
        this.f$0 = list;
        this.f$1 = function1;
    }

    @Override // kotlin.jvm.functions.Function4
    public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
        StaticProvidableCompositionLocal staticProvidableCompositionLocal;
        long j;
        Modifier modifier;
        String pluralStringResource;
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Function1 function1 = this.f$1;
        List list = this.f$0;
        switch (i) {
            case 0:
                int intValue = ((Integer) obj2).intValue();
                ((Integer) obj4).getClass();
                ((PagerScopeImpl) obj).getClass();
                HttpUrl.Companion.NewsItemContent((NewsItem) list.get(intValue), function1, (GapComposer) obj3, 0);
                break;
            default:
                int intValue2 = ((Integer) obj2).intValue();
                GapComposer gapComposer = (GapComposer) obj3;
                int intValue3 = ((Integer) obj4).intValue();
                ((LazyItemScopeImpl) obj).getClass();
                if ((intValue3 & 48) == 0) {
                    intValue3 |= gapComposer.changed(intValue2) ? 32 : 16;
                }
                if (!gapComposer.shouldExecute(intValue3 & 1, (intValue3 & 145) != 144)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    Pair pair = (Pair) list.get(intValue2);
                    String str = (String) pair.first;
                    int intValue4 = ((Number) pair.second).intValue();
                    if (intValue4 == 0) {
                        gapComposer.startReplaceGroup(-1637425426);
                        staticProvidableCompositionLocal = WikipediaColorKt.LocalWikipediaColor;
                        j = ((WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal)).secondaryColor;
                    } else {
                        gapComposer.startReplaceGroup(-1637424080);
                        staticProvidableCompositionLocal = WikipediaColorKt.LocalWikipediaColor;
                        j = ((WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal)).progressiveColor;
                    }
                    gapComposer.end(false);
                    long j2 = j;
                    Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
                    Modifier fillMaxWidth = SizeKt.fillMaxWidth(companion, 1.0f);
                    if (intValue4 > 0) {
                        gapComposer.startReplaceGroup(779655754);
                        boolean changed = ((intValue3 & 112) == 32) | gapComposer.changed(function1);
                        Object rememberedValue = gapComposer.rememberedValue();
                        if (changed || rememberedValue == Composer$Companion.Empty) {
                            rememberedValue = new NoSearchResultsKt$$ExternalSyntheticLambda3(intValue2, 0, function1);
                            gapComposer.updateRememberedValue(rememberedValue);
                        }
                        modifier = ImageKt.m51clickableoSLSa3U$default(15, companion, null, (Function0) rememberedValue, false);
                        gapComposer.end(false);
                    } else {
                        gapComposer.startReplaceGroup(-1637413880);
                        gapComposer.end(false);
                        modifier = companion;
                    }
                    Modifier m132padding3ABfNKs = OffsetKt.m132padding3ABfNKs(fillMaxWidth.then(modifier), 16.0f);
                    BiasAlignment.Vertical vertical = Alignment.Companion.CenterVertically;
                    RowMeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(OffsetKt.f5Start, vertical, gapComposer, 48);
                    long j3 = gapComposer.compositeKeyHashCode;
                    int i2 = (int) (j3 ^ (j3 >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
                    Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, m132padding3ABfNKs);
                    ComposeUiNode.Companion.getClass();
                    LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
                    gapComposer.startReusableNode();
                    if (gapComposer.inserting) {
                        gapComposer.createNode(layoutNode$Companion$Constructor$1);
                    } else {
                        gapComposer.useNode();
                    }
                    ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$1 = ComposeUiNode.Companion.SetMeasurePolicy;
                    Updater.m327setimpl(gapComposer, rowMeasurePolicy, composeUiNode$Companion$SetModifier$1);
                    ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$12 = ComposeUiNode.Companion.SetResolvedCompositionLocals;
                    Updater.m327setimpl(gapComposer, currentCompositionLocalScope, composeUiNode$Companion$SetModifier$12);
                    Integer valueOf = Integer.valueOf(i2);
                    ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$13 = ComposeUiNode.Companion.SetCompositeKeyHash;
                    Updater.m327setimpl(gapComposer, valueOf, composeUiNode$Companion$SetModifier$13);
                    OwnerSnapshotObserver$onCommitAffectingLayout$1 ownerSnapshotObserver$onCommitAffectingLayout$1 = ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion;
                    Updater.m326reconcileimpl(gapComposer, ownerSnapshotObserver$onCommitAffectingLayout$1);
                    ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$14 = ComposeUiNode.Companion.SetModifier;
                    Updater.m327setimpl(gapComposer, materializeModifier, composeUiNode$Companion$SetModifier$14);
                    if (intValue4 == 0) {
                        gapComposer.startReplaceGroup(-496963122);
                        pluralStringResource = UtilsKt.stringResource(R.string.search_results_count_zero, gapComposer);
                    } else {
                        gapComposer.startReplaceGroup(-496961204);
                        pluralStringResource = UtilsKt.pluralStringResource(R.plurals.search_results_count, intValue4, new Object[]{Integer.valueOf(intValue4)}, gapComposer);
                    }
                    gapComposer.end(false);
                    StaticProvidableCompositionLocal staticProvidableCompositionLocal2 = staticProvidableCompositionLocal;
                    TextKt.m308TextNvy7gAk(pluralStringResource, new LayoutWeightElement(1.0f, true), ((WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal)).secondaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, TextStyle.m647copyp1EtxEg$default(((Typography) gapComposer.consume(TypographyKt.LocalTypography)).bodyLarge, 0L, 0L, FontWeight.Medium, null, 0L, 0L, null, 16777211), gapComposer, 0, 0, 131064);
                    if (list.size() > 1) {
                        gapComposer.startReplaceGroup(1774672828);
                        Modifier m145size3ABfNKs = SizeKt.m145size3ABfNKs(ImageKt.m48borderxT4_qwU(ImageKt.m46backgroundbw27NRU(new VerticalAlignElement(vertical), ((WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal2)).paperColor, ColorKt.RectangleShape), 1.5f, j2, RoundedCornerShapeKt.m177RoundedCornerShape0680j_4(4.0f)), 20.0f);
                        ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(OffsetKt.Center, Alignment.Companion.CenterHorizontally, gapComposer, 54);
                        long j4 = gapComposer.compositeKeyHashCode;
                        int i3 = (int) (j4 ^ (j4 >>> 32));
                        PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer.currentCompositionLocalScope();
                        Modifier materializeModifier2 = AbsoluteAlignment.materializeModifier(gapComposer, m145size3ABfNKs);
                        gapComposer.startReusableNode();
                        if (gapComposer.inserting) {
                            gapComposer.createNode(layoutNode$Companion$Constructor$1);
                        } else {
                            gapComposer.useNode();
                        }
                        Updater.m327setimpl(gapComposer, columnMeasurePolicy, composeUiNode$Companion$SetModifier$1);
                        Updater.m327setimpl(gapComposer, currentCompositionLocalScope2, composeUiNode$Companion$SetModifier$12);
                        Animation.CC.m(i3, gapComposer, composeUiNode$Companion$SetModifier$13, gapComposer, ownerSnapshotObserver$onCommitAffectingLayout$1);
                        Updater.m327setimpl(gapComposer, materializeModifier2, composeUiNode$Companion$SetModifier$14);
                        Modifier m132padding3ABfNKs2 = OffsetKt.m132padding3ABfNKs(companion, 1.0f);
                        String upperCase = str.toUpperCase(Locale.ROOT);
                        upperCase.getClass();
                        BasicTextKt.m180BasicTextRWo7tUw(StringsKt__StringsJVMKt.replace$default(upperCase, "-", "-\n"), m132padding3ABfNKs2, new TextStyle(j2, 0L, FontWeight.Bold, null, 0L, 3, 0L, 16744442), null, 0, false, 0, 0, new AutoSizeStepBased(ContextsKt.getSp(1), ContextsKt.getSp(10), ContextsKt.getSp(1)), gapComposer, 48, 504);
                        gapComposer.end(true);
                        gapComposer.end(false);
                    } else {
                        gapComposer.startReplaceGroup(1775943270);
                        gapComposer.end(false);
                    }
                    gapComposer.end(true);
                    break;
                }
                break;
        }
        return unit;
    }
}
