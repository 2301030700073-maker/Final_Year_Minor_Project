package org.wikipedia.activitytab;

import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.lazy.LazyListInterval;
import androidx.compose.foundation.lazy.LazyListItemProviderImpl;
import androidx.compose.foundation.lazy.grid.LazyGridInterval;
import androidx.compose.foundation.lazy.grid.LazyGridItemProviderImpl;
import androidx.compose.foundation.lazy.grid.LazyGridItemScopeImpl;
import androidx.compose.foundation.lazy.layout.IntervalList$Interval;
import androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridInterval;
import androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridItemProviderImpl;
import androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridItemScopeImpl;
import androidx.compose.foundation.pager.PagerIntervalContent;
import androidx.compose.foundation.pager.PagerLazyLayoutItemProvider;
import androidx.compose.foundation.pager.PagerScopeImpl;
import androidx.compose.material3.TextKt;
import androidx.compose.material3.Typography;
import androidx.compose.material3.TypographyKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.unit.DpKt;
import androidx.glance.AndroidResourceImageProvider;
import androidx.glance.GlanceModifier;
import androidx.recyclerview.widget.RecyclerView;
import coil3.util.ContextsKt;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import coil3.util.UtilsKt;
import java.text.NumberFormat;
import kotlin.Unit;
import kotlin.UnsignedKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import org.wikipedia.R;
import org.wikipedia.compose.theme.WikipediaColor;
import org.wikipedia.compose.theme.WikipediaColorKt;
import org.wikipedia.dataclient.page.PageSummary;
import org.wikipedia.widgets.readingchallenge.LargeWidgetSize;
import org.wikipedia.widgets.readingchallenge.StreakProgressBarKt;
import org.wikipedia.yearinreview.YearInReviewDialog;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class ImpactModuleKt$$ExternalSyntheticLambda3 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ int f$1;

    public /* synthetic */ ImpactModuleKt$$ExternalSyntheticLambda3(int i, LargeWidgetSize largeWidgetSize) {
        this.$r8$classId = 6;
        this.f$1 = i;
        this.f$0 = largeWidgetSize;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        float f;
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        int i2 = this.f$1;
        Object obj3 = this.f$0;
        switch (i) {
            case 0:
                NumberFormat numberFormat = (NumberFormat) obj3;
                GapComposer gapComposer = (GapComposer) obj;
                int intValue = ((Integer) obj2).intValue();
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
                    Modifier m132padding3ABfNKs = OffsetKt.m132padding3ABfNKs(companion, 16.0f);
                    ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(OffsetKt.Top, Alignment.Companion.Start, gapComposer, 0);
                    long j = gapComposer.compositeKeyHashCode;
                    int i3 = (int) (j ^ (j >>> 32));
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
                    Updater.m327setimpl(gapComposer, columnMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
                    Updater.m327setimpl(gapComposer, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                    Updater.m327setimpl(gapComposer, Integer.valueOf(i3), ComposeUiNode.Companion.SetCompositeKeyHash);
                    Updater.m326reconcileimpl(gapComposer, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                    Updater.m327setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
                    ImpactModuleKt.CommonCardHeader(null, UnsignedKt.painterResource(R.drawable.ic_public_24, 0, gapComposer), UtilsKt.stringResource(R.string.activity_tab_total_edits_all_projects, gapComposer), null, false, true, gapComposer, 196672, 25);
                    Modifier m136paddingqDBjuR0$default = OffsetKt.m136paddingqDBjuR0$default(companion, RecyclerView.DECELERATION_RATE, 16.0f, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 13);
                    String format = numberFormat.format(Integer.valueOf(i2));
                    format.getClass();
                    TextKt.m308TextNvy7gAk(format, m136paddingqDBjuR0$default, ((WikipediaColor) gapComposer.consume(WikipediaColorKt.LocalWikipediaColor)).primaryColor, null, 0L, FontWeight.Medium, null, 0L, null, 0L, 0, false, 0, 0, null, ((Typography) gapComposer.consume(TypographyKt.LocalTypography)).titleLarge, gapComposer, 1572912, 0, 131000);
                    gapComposer.end(true);
                    break;
                }
            case 1:
                LazyListItemProviderImpl lazyListItemProviderImpl = (LazyListItemProviderImpl) obj3;
                GapComposer gapComposer2 = (GapComposer) obj;
                int intValue2 = ((Integer) obj2).intValue();
                if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 3) != 2)) {
                    gapComposer2.skipToGroupEnd();
                    break;
                } else {
                    IntervalList$Interval intervalList$Interval = lazyListItemProviderImpl.intervalContent.intervals.get(i2);
                    ((LazyListInterval) intervalList$Interval.value).item.invoke((Object) lazyListItemProviderImpl.itemScope, (Object) Integer.valueOf(i2 - intervalList$Interval.startIndex), (Object) gapComposer2, (Object) 0);
                    break;
                }
            case 2:
                LazyGridItemProviderImpl lazyGridItemProviderImpl = (LazyGridItemProviderImpl) obj3;
                GapComposer gapComposer3 = (GapComposer) obj;
                int intValue3 = ((Integer) obj2).intValue();
                if (!gapComposer3.shouldExecute(intValue3 & 1, (intValue3 & 3) != 2)) {
                    gapComposer3.skipToGroupEnd();
                    break;
                } else {
                    IntervalList$Interval intervalList$Interval2 = lazyGridItemProviderImpl.intervalContent.intervals.get(i2);
                    ((LazyGridInterval) intervalList$Interval2.value).item.invoke((Object) LazyGridItemScopeImpl.INSTANCE, (Object) Integer.valueOf(i2 - intervalList$Interval2.startIndex), (Object) gapComposer3, (Object) 6);
                    break;
                }
            case 3:
                LazyStaggeredGridItemProviderImpl lazyStaggeredGridItemProviderImpl = (LazyStaggeredGridItemProviderImpl) obj3;
                GapComposer gapComposer4 = (GapComposer) obj;
                int intValue4 = ((Integer) obj2).intValue();
                if (!gapComposer4.shouldExecute(intValue4 & 1, (intValue4 & 3) != 2)) {
                    gapComposer4.skipToGroupEnd();
                    break;
                } else {
                    IntervalList$Interval intervalList$Interval3 = lazyStaggeredGridItemProviderImpl.intervalContent.intervals.get(i2);
                    ((LazyStaggeredGridInterval) intervalList$Interval3.value).item.invoke((Object) LazyStaggeredGridItemScopeImpl.INSTANCE, (Object) Integer.valueOf(i2 - intervalList$Interval3.startIndex), (Object) gapComposer4, (Object) 6);
                    break;
                }
            case 4:
                PagerLazyLayoutItemProvider pagerLazyLayoutItemProvider = (PagerLazyLayoutItemProvider) obj3;
                GapComposer gapComposer5 = (GapComposer) obj;
                int intValue5 = ((Integer) obj2).intValue();
                if (!gapComposer5.shouldExecute(intValue5 & 1, (intValue5 & 3) != 2)) {
                    gapComposer5.skipToGroupEnd();
                    break;
                } else {
                    IntervalList$Interval intervalList$Interval4 = pagerLazyLayoutItemProvider.intervalContent.getIntervals().get(i2);
                    ((PagerIntervalContent) intervalList$Interval4.value).item.invoke(PagerScopeImpl.INSTANCE, Integer.valueOf(i2 - intervalList$Interval4.startIndex), gapComposer5, 0);
                    break;
                }
            case 5:
                PageSummary pageSummary = (PageSummary) obj;
                Integer num = (Integer) obj2;
                num.intValue();
                pageSummary.getClass();
                ((Function3) obj3).invoke(pageSummary, Integer.valueOf(i2), num);
                break;
            case 6:
                LargeWidgetSize largeWidgetSize = (LargeWidgetSize) obj3;
                GapComposer gapComposer6 = (GapComposer) obj;
                int intValue6 = ((Integer) obj2).intValue();
                if (!gapComposer6.shouldExecute(intValue6 & 1, (intValue6 & 3) != 2)) {
                    gapComposer6.skipToGroupEnd();
                    break;
                } else {
                    AndroidResourceImageProvider androidResourceImageProvider = new AndroidResourceImageProvider(i2);
                    largeWidgetSize.getClass();
                    int i4 = LargeWidgetSize.WhenMappings.$EnumSwitchMapping$0[largeWidgetSize.ordinal()];
                    if (i4 == 1) {
                        f = 40.0f;
                    } else if (i4 == 2) {
                        f = 60.0f;
                    } else if (i4 == 3) {
                        f = 80.0f;
                    } else if (i4 != 4) {
                        ContextsKt$$ExternalSyntheticBUOutline0.m();
                        break;
                    } else {
                        f = 100.0f;
                    }
                    ContextsKt.m787ImageGCr5PR4(androidResourceImageProvider, DpKt.m707size3ABfNKs(f), 0, null, gapComposer6, 48, 24);
                    break;
                }
            case 7:
                ((Integer) obj2).getClass();
                StreakProgressBarKt.ReadingChallengeWidgetLoading((GlanceModifier) obj3, i2, (GapComposer) obj, Updater.updateChangedFlags(1));
                break;
            default:
                ((Integer) obj2).getClass();
                YearInReviewDialog.ReadingPatternsItem((String) obj3, i2, (GapComposer) obj, Updater.updateChangedFlags(1));
                break;
        }
        return unit;
    }

    public /* synthetic */ ImpactModuleKt$$ExternalSyntheticLambda3(int i, int i2, Object obj) {
        this.$r8$classId = i2;
        this.f$0 = obj;
        this.f$1 = i;
    }

    public /* synthetic */ ImpactModuleKt$$ExternalSyntheticLambda3(Object obj, int i, int i2, int i3) {
        this.$r8$classId = i3;
        this.f$0 = obj;
        this.f$1 = i;
    }
}
