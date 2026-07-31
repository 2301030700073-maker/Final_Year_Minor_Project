package org.wikipedia.activitytab;

import androidx.compose.animation.core.Animation;
import androidx.compose.animation.core.EasingKt$$ExternalSyntheticLambda0;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.layout.Arrangement$SpacedAligned;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.lazy.LazyItemScopeImpl;
import androidx.compose.material3.TextKt;
import androidx.compose.material3.Typography;
import androidx.compose.material3.TypographyKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.style.TextAlign;
import androidx.recyclerview.widget.RecyclerView;
import coil3.util.UtilsKt;
import java.util.Iterator;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function3;
import org.wikipedia.R;
import org.wikipedia.compose.components.OnboardingItem;
import org.wikipedia.compose.components.TabsBoxKt;
import org.wikipedia.compose.theme.WikipediaColor;
import org.wikipedia.compose.theme.WikipediaColorKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class ActivityTabOnboardingActivityKt$$ExternalSyntheticLambda1 implements Function3 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ List f$0;

    public /* synthetic */ ActivityTabOnboardingActivityKt$$ExternalSyntheticLambda1(List list, int i) {
        this.$r8$classId = i;
        this.f$0 = list;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        List list = this.f$0;
        switch (i) {
            case 0:
                PaddingValues paddingValues = (PaddingValues) obj;
                GapComposer gapComposer = (GapComposer) obj2;
                int intValue = ((Integer) obj3).intValue();
                paddingValues.getClass();
                if ((intValue & 6) == 0) {
                    intValue |= gapComposer.changed(paddingValues) ? 4 : 2;
                }
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 19) != 18)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    Modifier scroll$default = ImageKt.scroll$default(OffsetKt.m134paddingVpY3zN4$default(OffsetKt.padding(SizeKt.FillWholeMaxSize, paddingValues), 24.0f, RecyclerView.DECELERATION_RATE, 2), ImageKt.rememberScrollState(gapComposer), true);
                    ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(OffsetKt.Top, Alignment.Companion.Start, gapComposer, 0);
                    long j = gapComposer.compositeKeyHashCode;
                    int i2 = (int) (j ^ (j >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
                    Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, scroll$default);
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
                    Updater.m327setimpl(gapComposer, Integer.valueOf(i2), ComposeUiNode.Companion.SetCompositeKeyHash);
                    Updater.m326reconcileimpl(gapComposer, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                    Updater.m327setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
                    Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
                    TextKt.m308TextNvy7gAk(UtilsKt.stringResource(R.string.activity_tab_onboarding_screen_title, gapComposer), OffsetKt.m136paddingqDBjuR0$default(SizeKt.fillMaxWidth(companion, 1.0f), RecyclerView.DECELERATION_RATE, 58.0f, RecyclerView.DECELERATION_RATE, 32.0f, 5), ((WikipediaColor) gapComposer.consume(WikipediaColorKt.LocalWikipediaColor)).primaryColor, null, 0L, null, null, 0L, new TextAlign(3), 0L, 0, false, 0, 0, null, TextStyle.m647copyp1EtxEg$default(((Typography) gapComposer.consume(TypographyKt.LocalTypography)).headlineLarge, 0L, 0L, FontWeight.Medium, null, 0L, 0L, null, 16777211), gapComposer, 48, 0, 130040);
                    gapComposer.startReplaceGroup(-1924734289);
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        Modifier.Companion companion2 = companion;
                        TabsBoxKt.OnboardingListItem(OffsetKt.m136paddingqDBjuR0$default(companion2, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 24.0f, 7), (OnboardingItem) it.next(), gapComposer, 6, 0);
                        companion = companion2;
                    }
                    gapComposer.end(false);
                    gapComposer.end(true);
                    break;
                }
            default:
                GapComposer gapComposer2 = (GapComposer) obj2;
                int intValue2 = ((Integer) obj3).intValue();
                ((LazyItemScopeImpl) obj).getClass();
                if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 17) != 16)) {
                    gapComposer2.skipToGroupEnd();
                    break;
                } else {
                    Modifier.Companion companion3 = Modifier.Companion.$$INSTANCE;
                    Modifier m134paddingVpY3zN4$default = OffsetKt.m134paddingVpY3zN4$default(SizeKt.fillMaxWidth(companion3, 1.0f), RecyclerView.DECELERATION_RATE, 8.0f, 1);
                    RowMeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(new Arrangement$SpacedAligned(8.0f, true, new EasingKt$$ExternalSyntheticLambda0(10)), Alignment.Companion.Top, gapComposer2, 6);
                    long j2 = gapComposer2.compositeKeyHashCode;
                    int i3 = (int) (j2 ^ (j2 >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer2.currentCompositionLocalScope();
                    Modifier materializeModifier2 = AbsoluteAlignment.materializeModifier(gapComposer2, m134paddingVpY3zN4$default);
                    ComposeUiNode.Companion.getClass();
                    LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$12 = ComposeUiNode.Companion.Constructor;
                    gapComposer2.startReusableNode();
                    if (gapComposer2.inserting) {
                        gapComposer2.createNode(layoutNode$Companion$Constructor$12);
                    } else {
                        gapComposer2.useNode();
                    }
                    Updater.m327setimpl(gapComposer2, rowMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
                    Updater.m327setimpl(gapComposer2, currentCompositionLocalScope2, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                    Updater.m327setimpl(gapComposer2, Integer.valueOf(i3), ComposeUiNode.Companion.SetCompositeKeyHash);
                    Updater.m326reconcileimpl(gapComposer2, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                    Updater.m327setimpl(gapComposer2, materializeModifier2, ComposeUiNode.Companion.SetModifier);
                    Modifier weight$default$1 = Animation.CC.weight$default$1(companion3, 0.4f);
                    StaticProvidableCompositionLocal staticProvidableCompositionLocal = WikipediaColorKt.LocalWikipediaColor;
                    long j3 = ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal)).primaryColor;
                    StaticProvidableCompositionLocal staticProvidableCompositionLocal2 = TypographyKt.LocalTypography;
                    TextKt.m308TextNvy7gAk("Title", weight$default$1, j3, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, ((Typography) gapComposer2.consume(staticProvidableCompositionLocal2)).titleMedium, gapComposer2, 6, 0, 131064);
                    TextKt.m308TextNvy7gAk("Language", Animation.CC.weight$default$1(companion3, 0.3f), ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal)).primaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, ((Typography) gapComposer2.consume(staticProvidableCompositionLocal2)).titleMedium, gapComposer2, 6, 0, 131064);
                    TextKt.m308TextNvy7gAk(list != null ? "Count" : "Timestamp", Animation.CC.weight$default$1(companion3, 0.3f), ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal)).primaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, ((Typography) gapComposer2.consume(staticProvidableCompositionLocal2)).titleMedium, gapComposer2, 0, 0, 131064);
                    gapComposer2.end(true);
                    break;
                }
        }
        return unit;
    }
}
