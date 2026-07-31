package org.wikipedia.readinglist;

import androidx.compose.animation.core.Animation;
import androidx.compose.animation.core.EasingKt$$ExternalSyntheticLambda0;
import androidx.compose.foundation.layout.Arrangement$SpacedAligned;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.lazy.LazyItemScope$CC;
import androidx.compose.foundation.lazy.LazyItemScopeImpl;
import androidx.compose.foundation.lazy.LazyListIntervalContent;
import androidx.compose.foundation.lazy.grid.LazyGridInterval;
import androidx.compose.foundation.lazy.grid.LazyGridIntervalContent;
import androidx.compose.foundation.lazy.grid.LazyGridScope$items$1;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.recyclerview.widget.RecyclerView;
import androidx.sqlite.db.framework.FrameworkSQLiteDatabase$$ExternalSyntheticLambda0;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function4;
import org.wikipedia.activitytab.ActivityTabOnboardingActivityKt$$ExternalSyntheticLambda1;
import org.wikipedia.categories.db.Category;
import org.wikipedia.compose.theme.WikipediaColor;
import org.wikipedia.compose.theme.WikipediaColorKt;
import org.wikipedia.language.LangLinksScreenKt$ComposeLangLinksScreen$lambda$4$3$0$$inlined$items$default$3;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class RecommendedReadingListDiscoverCardViewKt$$ExternalSyntheticLambda2 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ List f$0;

    public /* synthetic */ RecommendedReadingListDiscoverCardViewKt$$ExternalSyntheticLambda2(List list, int i) {
        this.$r8$classId = i;
        this.f$0 = list;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        final List list = this.f$0;
        final int i2 = 1;
        switch (i) {
            case 0:
                LazyGridIntervalContent lazyGridIntervalContent = (LazyGridIntervalContent) obj;
                lazyGridIntervalContent.getClass();
                lazyGridIntervalContent.intervals.addInterval(4, new LazyGridInterval(LazyGridIntervalContent.DefaultSpan, LazyGridScope$items$1.INSTANCE, new ComposableLambdaImpl(new FrameworkSQLiteDatabase$$ExternalSyntheticLambda0(3, list), true, 903344959)));
                break;
            default:
                LazyListIntervalContent lazyListIntervalContent = (LazyListIntervalContent) obj;
                lazyListIntervalContent.getClass();
                LazyItemScope$CC.item$default(lazyListIntervalContent, null, new ComposableLambdaImpl(new ActivityTabOnboardingActivityKt$$ExternalSyntheticLambda1(list, 1), true, 1580623452), 3);
                if (list != null) {
                    final int i3 = 0;
                    lazyListIntervalContent.items(list.size(), null, new LangLinksScreenKt$ComposeLangLinksScreen$lambda$4$3$0$$inlined$items$default$3(list, 5), new ComposableLambdaImpl(new Function4() { // from class: org.wikipedia.settings.dev.playground.CategoryDeveloperPlayGroundActivityKt$CategoryTable$lambda$0$0$$inlined$items$default$4
                        @Override // kotlin.jvm.functions.Function4
                        public final Object invoke(Object obj2, Object obj3, Object obj4, Object obj5) {
                            int i4;
                            int i5;
                            int i6 = i3;
                            Unit unit2 = Unit.INSTANCE;
                            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
                            List list2 = list;
                            switch (i6) {
                                case 0:
                                    LazyItemScopeImpl lazyItemScopeImpl = (LazyItemScopeImpl) obj2;
                                    int intValue = ((Number) obj3).intValue();
                                    GapComposer gapComposer = (GapComposer) obj4;
                                    int intValue2 = ((Number) obj5).intValue();
                                    if ((intValue2 & 6) == 0) {
                                        i4 = intValue2 | (gapComposer.changed(lazyItemScopeImpl) ? 4 : 2);
                                    } else {
                                        i4 = intValue2;
                                    }
                                    if ((intValue2 & 48) == 0) {
                                        i4 |= gapComposer.changed(intValue) ? 32 : 16;
                                    }
                                    if (!gapComposer.shouldExecute(i4 & 1, (i4 & 147) != 146)) {
                                        gapComposer.skipToGroupEnd();
                                        break;
                                    } else {
                                        Category category = (Category) list2.get(intValue);
                                        gapComposer.startReplaceGroup(1983712689);
                                        Modifier m134paddingVpY3zN4$default = OffsetKt.m134paddingVpY3zN4$default(SizeKt.fillMaxWidth(companion, 1.0f), RecyclerView.DECELERATION_RATE, 8.0f, 1);
                                        RowMeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(new Arrangement$SpacedAligned(8.0f, true, new EasingKt$$ExternalSyntheticLambda0(10)), Alignment.Companion.Top, gapComposer, 6);
                                        long j = gapComposer.compositeKeyHashCode;
                                        int i7 = (int) (j ^ (j >>> 32));
                                        PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
                                        Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, m134paddingVpY3zN4$default);
                                        ComposeUiNode.Companion.getClass();
                                        LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
                                        gapComposer.startReusableNode();
                                        if (gapComposer.inserting) {
                                            gapComposer.createNode(layoutNode$Companion$Constructor$1);
                                        } else {
                                            gapComposer.useNode();
                                        }
                                        Updater.m327setimpl(gapComposer, rowMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
                                        Updater.m327setimpl(gapComposer, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                                        Updater.m327setimpl(gapComposer, Integer.valueOf(i7), ComposeUiNode.Companion.SetCompositeKeyHash);
                                        Updater.m326reconcileimpl(gapComposer, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                                        Updater.m327setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
                                        String str = category.title;
                                        StaticProvidableCompositionLocal staticProvidableCompositionLocal = WikipediaColorKt.LocalWikipediaColor;
                                        TextKt.m308TextNvy7gAk(str, Animation.CC.weight$default$1(companion, 0.4f), ((WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal)).primaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, null, gapComposer, 0, 0, 262136);
                                        TextKt.m308TextNvy7gAk(category.lang, Animation.CC.weight$default$1(companion, 0.3f), ((WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal)).primaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, null, gapComposer, 0, 0, 262136);
                                        TextKt.m308TextNvy7gAk(String.valueOf(category.count), Animation.CC.weight$default$1(companion, 0.3f), ((WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal)).primaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, null, gapComposer, 0, 0, 262136);
                                        gapComposer.end(true);
                                        gapComposer.end(false);
                                        break;
                                    }
                                default:
                                    LazyItemScopeImpl lazyItemScopeImpl2 = (LazyItemScopeImpl) obj2;
                                    int intValue3 = ((Number) obj3).intValue();
                                    GapComposer gapComposer2 = (GapComposer) obj4;
                                    int intValue4 = ((Number) obj5).intValue();
                                    if ((intValue4 & 6) == 0) {
                                        i5 = intValue4 | (gapComposer2.changed(lazyItemScopeImpl2) ? 4 : 2);
                                    } else {
                                        i5 = intValue4;
                                    }
                                    if ((intValue4 & 48) == 0) {
                                        i5 |= gapComposer2.changed(intValue3) ? 32 : 16;
                                    }
                                    if (!gapComposer2.shouldExecute(i5 & 1, (i5 & 147) != 146)) {
                                        gapComposer2.skipToGroupEnd();
                                        break;
                                    } else {
                                        Category category2 = (Category) list2.get(intValue3);
                                        gapComposer2.startReplaceGroup(294609880);
                                        Modifier m134paddingVpY3zN4$default2 = OffsetKt.m134paddingVpY3zN4$default(SizeKt.fillMaxWidth(companion, 1.0f), RecyclerView.DECELERATION_RATE, 8.0f, 1);
                                        RowMeasurePolicy rowMeasurePolicy2 = RowKt.rowMeasurePolicy(new Arrangement$SpacedAligned(8.0f, true, new EasingKt$$ExternalSyntheticLambda0(10)), Alignment.Companion.Top, gapComposer2, 6);
                                        long j2 = gapComposer2.compositeKeyHashCode;
                                        int i8 = (int) (j2 ^ (j2 >>> 32));
                                        PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer2.currentCompositionLocalScope();
                                        Modifier materializeModifier2 = AbsoluteAlignment.materializeModifier(gapComposer2, m134paddingVpY3zN4$default2);
                                        ComposeUiNode.Companion.getClass();
                                        LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$12 = ComposeUiNode.Companion.Constructor;
                                        gapComposer2.startReusableNode();
                                        if (gapComposer2.inserting) {
                                            gapComposer2.createNode(layoutNode$Companion$Constructor$12);
                                        } else {
                                            gapComposer2.useNode();
                                        }
                                        Updater.m327setimpl(gapComposer2, rowMeasurePolicy2, ComposeUiNode.Companion.SetMeasurePolicy);
                                        Updater.m327setimpl(gapComposer2, currentCompositionLocalScope2, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                                        Updater.m327setimpl(gapComposer2, Integer.valueOf(i8), ComposeUiNode.Companion.SetCompositeKeyHash);
                                        Updater.m326reconcileimpl(gapComposer2, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                                        Updater.m327setimpl(gapComposer2, materializeModifier2, ComposeUiNode.Companion.SetModifier);
                                        String str2 = category2.title;
                                        StaticProvidableCompositionLocal staticProvidableCompositionLocal2 = WikipediaColorKt.LocalWikipediaColor;
                                        TextKt.m308TextNvy7gAk(str2, Animation.CC.weight$default$1(companion, 0.4f), ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal2)).primaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, null, gapComposer2, 0, 0, 262136);
                                        TextKt.m308TextNvy7gAk(category2.lang, Animation.CC.weight$default$1(companion, 0.3f), ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal2)).primaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, null, gapComposer2, 0, 0, 262136);
                                        TextKt.m308TextNvy7gAk(String.valueOf(category2.year), Animation.CC.weight$default$1(companion, 0.3f), ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal2)).primaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, null, gapComposer2, 0, 0, 262136);
                                        gapComposer2.end(true);
                                        gapComposer2.end(false);
                                        break;
                                    }
                            }
                            return unit2;
                        }
                    }, true, 802480018));
                }
                if (list != null) {
                    lazyListIntervalContent.items(list.size(), null, new LangLinksScreenKt$ComposeLangLinksScreen$lambda$4$3$0$$inlined$items$default$3(list, 6), new ComposableLambdaImpl(new Function4() { // from class: org.wikipedia.settings.dev.playground.CategoryDeveloperPlayGroundActivityKt$CategoryTable$lambda$0$0$$inlined$items$default$4
                        @Override // kotlin.jvm.functions.Function4
                        public final Object invoke(Object obj2, Object obj3, Object obj4, Object obj5) {
                            int i4;
                            int i5;
                            int i6 = i2;
                            Unit unit2 = Unit.INSTANCE;
                            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
                            List list2 = list;
                            switch (i6) {
                                case 0:
                                    LazyItemScopeImpl lazyItemScopeImpl = (LazyItemScopeImpl) obj2;
                                    int intValue = ((Number) obj3).intValue();
                                    GapComposer gapComposer = (GapComposer) obj4;
                                    int intValue2 = ((Number) obj5).intValue();
                                    if ((intValue2 & 6) == 0) {
                                        i4 = intValue2 | (gapComposer.changed(lazyItemScopeImpl) ? 4 : 2);
                                    } else {
                                        i4 = intValue2;
                                    }
                                    if ((intValue2 & 48) == 0) {
                                        i4 |= gapComposer.changed(intValue) ? 32 : 16;
                                    }
                                    if (!gapComposer.shouldExecute(i4 & 1, (i4 & 147) != 146)) {
                                        gapComposer.skipToGroupEnd();
                                        break;
                                    } else {
                                        Category category = (Category) list2.get(intValue);
                                        gapComposer.startReplaceGroup(1983712689);
                                        Modifier m134paddingVpY3zN4$default = OffsetKt.m134paddingVpY3zN4$default(SizeKt.fillMaxWidth(companion, 1.0f), RecyclerView.DECELERATION_RATE, 8.0f, 1);
                                        RowMeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(new Arrangement$SpacedAligned(8.0f, true, new EasingKt$$ExternalSyntheticLambda0(10)), Alignment.Companion.Top, gapComposer, 6);
                                        long j = gapComposer.compositeKeyHashCode;
                                        int i7 = (int) (j ^ (j >>> 32));
                                        PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
                                        Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, m134paddingVpY3zN4$default);
                                        ComposeUiNode.Companion.getClass();
                                        LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
                                        gapComposer.startReusableNode();
                                        if (gapComposer.inserting) {
                                            gapComposer.createNode(layoutNode$Companion$Constructor$1);
                                        } else {
                                            gapComposer.useNode();
                                        }
                                        Updater.m327setimpl(gapComposer, rowMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
                                        Updater.m327setimpl(gapComposer, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                                        Updater.m327setimpl(gapComposer, Integer.valueOf(i7), ComposeUiNode.Companion.SetCompositeKeyHash);
                                        Updater.m326reconcileimpl(gapComposer, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                                        Updater.m327setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
                                        String str = category.title;
                                        StaticProvidableCompositionLocal staticProvidableCompositionLocal = WikipediaColorKt.LocalWikipediaColor;
                                        TextKt.m308TextNvy7gAk(str, Animation.CC.weight$default$1(companion, 0.4f), ((WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal)).primaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, null, gapComposer, 0, 0, 262136);
                                        TextKt.m308TextNvy7gAk(category.lang, Animation.CC.weight$default$1(companion, 0.3f), ((WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal)).primaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, null, gapComposer, 0, 0, 262136);
                                        TextKt.m308TextNvy7gAk(String.valueOf(category.count), Animation.CC.weight$default$1(companion, 0.3f), ((WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal)).primaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, null, gapComposer, 0, 0, 262136);
                                        gapComposer.end(true);
                                        gapComposer.end(false);
                                        break;
                                    }
                                default:
                                    LazyItemScopeImpl lazyItemScopeImpl2 = (LazyItemScopeImpl) obj2;
                                    int intValue3 = ((Number) obj3).intValue();
                                    GapComposer gapComposer2 = (GapComposer) obj4;
                                    int intValue4 = ((Number) obj5).intValue();
                                    if ((intValue4 & 6) == 0) {
                                        i5 = intValue4 | (gapComposer2.changed(lazyItemScopeImpl2) ? 4 : 2);
                                    } else {
                                        i5 = intValue4;
                                    }
                                    if ((intValue4 & 48) == 0) {
                                        i5 |= gapComposer2.changed(intValue3) ? 32 : 16;
                                    }
                                    if (!gapComposer2.shouldExecute(i5 & 1, (i5 & 147) != 146)) {
                                        gapComposer2.skipToGroupEnd();
                                        break;
                                    } else {
                                        Category category2 = (Category) list2.get(intValue3);
                                        gapComposer2.startReplaceGroup(294609880);
                                        Modifier m134paddingVpY3zN4$default2 = OffsetKt.m134paddingVpY3zN4$default(SizeKt.fillMaxWidth(companion, 1.0f), RecyclerView.DECELERATION_RATE, 8.0f, 1);
                                        RowMeasurePolicy rowMeasurePolicy2 = RowKt.rowMeasurePolicy(new Arrangement$SpacedAligned(8.0f, true, new EasingKt$$ExternalSyntheticLambda0(10)), Alignment.Companion.Top, gapComposer2, 6);
                                        long j2 = gapComposer2.compositeKeyHashCode;
                                        int i8 = (int) (j2 ^ (j2 >>> 32));
                                        PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer2.currentCompositionLocalScope();
                                        Modifier materializeModifier2 = AbsoluteAlignment.materializeModifier(gapComposer2, m134paddingVpY3zN4$default2);
                                        ComposeUiNode.Companion.getClass();
                                        LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$12 = ComposeUiNode.Companion.Constructor;
                                        gapComposer2.startReusableNode();
                                        if (gapComposer2.inserting) {
                                            gapComposer2.createNode(layoutNode$Companion$Constructor$12);
                                        } else {
                                            gapComposer2.useNode();
                                        }
                                        Updater.m327setimpl(gapComposer2, rowMeasurePolicy2, ComposeUiNode.Companion.SetMeasurePolicy);
                                        Updater.m327setimpl(gapComposer2, currentCompositionLocalScope2, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                                        Updater.m327setimpl(gapComposer2, Integer.valueOf(i8), ComposeUiNode.Companion.SetCompositeKeyHash);
                                        Updater.m326reconcileimpl(gapComposer2, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                                        Updater.m327setimpl(gapComposer2, materializeModifier2, ComposeUiNode.Companion.SetModifier);
                                        String str2 = category2.title;
                                        StaticProvidableCompositionLocal staticProvidableCompositionLocal2 = WikipediaColorKt.LocalWikipediaColor;
                                        TextKt.m308TextNvy7gAk(str2, Animation.CC.weight$default$1(companion, 0.4f), ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal2)).primaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, null, gapComposer2, 0, 0, 262136);
                                        TextKt.m308TextNvy7gAk(category2.lang, Animation.CC.weight$default$1(companion, 0.3f), ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal2)).primaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, null, gapComposer2, 0, 0, 262136);
                                        TextKt.m308TextNvy7gAk(String.valueOf(category2.year), Animation.CC.weight$default$1(companion, 0.3f), ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal2)).primaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, null, gapComposer2, 0, 0, 262136);
                                        gapComposer2.end(true);
                                        gapComposer2.end(false);
                                        break;
                                    }
                            }
                            return unit2;
                        }
                    }, true, 802480018));
                    break;
                }
                break;
        }
        return unit;
    }
}
