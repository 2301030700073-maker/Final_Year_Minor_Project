package org.wikipedia.games;

import androidx.compose.animation.core.EasingKt$$ExternalSyntheticLambda0;
import androidx.compose.animation.core.InfiniteTransition;
import androidx.compose.foundation.layout.Arrangement$SpacedAligned;
import androidx.compose.foundation.layout.BoxScope;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.pulltorefresh.PullToRefreshStateImpl;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.recyclerview.widget.RecyclerView;
import java.util.List;
import kotlin.ExceptionsKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.text.RegexKt;
import org.wikipedia.games.onthisday.OnThisDayGameArchiveCalendarHelper;
import org.wikipedia.util.UiState;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class GamesHubScreenKt$$ExternalSyntheticLambda18 implements Function3 {
    public final /* synthetic */ int $r8$classId = 1;
    public final /* synthetic */ GamesHubViewModel f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ Function2 f$10;
    public final /* synthetic */ MutableState f$2;
    public final /* synthetic */ MutableState f$3;
    public final /* synthetic */ List f$4;
    public final /* synthetic */ Function1 f$5;
    public final /* synthetic */ OnThisDayGameArchiveCalendarHelper f$6;
    public final /* synthetic */ UiState f$7;
    public final /* synthetic */ InfiniteTransition f$8;
    public final /* synthetic */ Function0 f$9;

    public /* synthetic */ GamesHubScreenKt$$ExternalSyntheticLambda18(PaddingValues paddingValues, List list, Function1 function1, GamesHubViewModel gamesHubViewModel, OnThisDayGameArchiveCalendarHelper onThisDayGameArchiveCalendarHelper, UiState uiState, InfiniteTransition infiniteTransition, Function0 function0, Function2 function2, MutableState mutableState, MutableState mutableState2) {
        this.f$1 = paddingValues;
        this.f$4 = list;
        this.f$5 = function1;
        this.f$0 = gamesHubViewModel;
        this.f$6 = onThisDayGameArchiveCalendarHelper;
        this.f$7 = uiState;
        this.f$8 = infiniteTransition;
        this.f$9 = function0;
        this.f$10 = function2;
        this.f$2 = mutableState;
        this.f$3 = mutableState2;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        Object gamesHubScreenKt$$ExternalSyntheticLambda23;
        GamesHubViewModel gamesHubViewModel;
        MutableState mutableState;
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        NeverEqualPolicy neverEqualPolicy = Composer$Companion.Empty;
        Object obj4 = this.f$1;
        switch (i) {
            case 0:
                PullToRefreshStateImpl pullToRefreshStateImpl = (PullToRefreshStateImpl) obj4;
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
                    MutableState mutableState2 = this.f$2;
                    boolean booleanValue = ((Boolean) mutableState2.getValue()).booleanValue();
                    GamesHubViewModel gamesHubViewModel2 = this.f$0;
                    boolean changedInstance = gapComposer.changedInstance(gamesHubViewModel2);
                    Object rememberedValue = gapComposer.rememberedValue();
                    MutableState mutableState3 = this.f$3;
                    if (changedInstance || rememberedValue == neverEqualPolicy) {
                        rememberedValue = new GamesHubScreenKt$$ExternalSyntheticLambda20(gamesHubViewModel2, mutableState3, mutableState2, 0);
                        gapComposer.updateRememberedValue(rememberedValue);
                    }
                    RegexKt.PullToRefreshBox(booleanValue, (Function0) rememberedValue, null, pullToRefreshStateImpl, null, Expect_jvmKt.rememberComposableLambda(-34901822, new GamesHubScreenKt$$ExternalSyntheticLambda21(pullToRefreshStateImpl, mutableState2, 0), gapComposer), Expect_jvmKt.rememberComposableLambda(1844624801, new GamesHubScreenKt$$ExternalSyntheticLambda18(paddingValues, this.f$4, this.f$5, gamesHubViewModel2, this.f$6, this.f$7, this.f$8, this.f$9, this.f$10, mutableState3, mutableState2), gapComposer), gapComposer, 1769472, 20);
                    break;
                }
            default:
                PaddingValues paddingValues2 = (PaddingValues) obj4;
                GapComposer gapComposer2 = (GapComposer) obj2;
                int intValue2 = ((Integer) obj3).intValue();
                ((BoxScope) obj).getClass();
                if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 17) != 16)) {
                    gapComposer2.skipToGroupEnd();
                    break;
                } else {
                    Modifier padding = OffsetKt.padding(SizeKt.FillWholeMaxSize, paddingValues2);
                    ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(OffsetKt.Top, Alignment.Companion.Start, gapComposer2, 0);
                    long j = gapComposer2.compositeKeyHashCode;
                    int i2 = (int) (j ^ (j >>> 32));
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
                    Updater.m327setimpl(gapComposer2, Integer.valueOf(i2), ComposeUiNode.Companion.SetCompositeKeyHash);
                    Updater.m326reconcileimpl(gapComposer2, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                    Updater.m327setimpl(gapComposer2, materializeModifier, ComposeUiNode.Companion.SetModifier);
                    Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
                    Modifier fillMaxWidth = SizeKt.fillMaxWidth(companion, 1.0f);
                    BiasAlignment.Vertical vertical = Alignment.Companion.CenterVertically;
                    Arrangement$SpacedAligned arrangement$SpacedAligned = new Arrangement$SpacedAligned(8.0f, true, new EasingKt$$ExternalSyntheticLambda0(10));
                    PaddingValuesImpl m125PaddingValuesYgX7TsA$default = OffsetKt.m125PaddingValuesYgX7TsA$default(2, 16.0f);
                    List list = this.f$4;
                    boolean changedInstance2 = gapComposer2.changedInstance(list);
                    Function1 function1 = this.f$5;
                    boolean changed = changedInstance2 | gapComposer2.changed(function1);
                    GamesHubViewModel gamesHubViewModel3 = this.f$0;
                    boolean changedInstance3 = changed | gapComposer2.changedInstance(gamesHubViewModel3);
                    OnThisDayGameArchiveCalendarHelper onThisDayGameArchiveCalendarHelper = this.f$6;
                    boolean changedInstance4 = changedInstance3 | gapComposer2.changedInstance(onThisDayGameArchiveCalendarHelper);
                    Object rememberedValue2 = gapComposer2.rememberedValue();
                    MutableState mutableState4 = this.f$2;
                    if (changedInstance4 || rememberedValue2 == neverEqualPolicy) {
                        gamesHubScreenKt$$ExternalSyntheticLambda23 = new GamesHubScreenKt$$ExternalSyntheticLambda23(list, function1, gamesHubViewModel3, onThisDayGameArchiveCalendarHelper, mutableState4, 0);
                        gamesHubViewModel = gamesHubViewModel3;
                        mutableState = mutableState4;
                        gapComposer2.updateRememberedValue(gamesHubScreenKt$$ExternalSyntheticLambda23);
                    } else {
                        gamesHubScreenKt$$ExternalSyntheticLambda23 = rememberedValue2;
                        gamesHubViewModel = gamesHubViewModel3;
                        mutableState = mutableState4;
                    }
                    ExceptionsKt.LazyRow(fillMaxWidth, null, m125PaddingValuesYgX7TsA$default, arrangement$SpacedAligned, vertical, null, false, null, (Function1) gamesHubScreenKt$$ExternalSyntheticLambda23, gapComposer2, 221574, 458);
                    Modifier m134paddingVpY3zN4$default = OffsetKt.m134paddingVpY3zN4$default(SizeKt.fillMaxWidth(companion, 1.0f), RecyclerView.DECELERATION_RATE, 8.0f, 1);
                    UiState uiState = this.f$7;
                    boolean changedInstance5 = gapComposer2.changedInstance(uiState);
                    InfiniteTransition infiniteTransition = this.f$8;
                    boolean changedInstance6 = changedInstance5 | gapComposer2.changedInstance(infiniteTransition) | gapComposer2.changedInstance(gamesHubViewModel);
                    Function0 function0 = this.f$9;
                    boolean changed2 = changedInstance6 | gapComposer2.changed(function0);
                    Function2 function2 = this.f$10;
                    boolean changed3 = changed2 | gapComposer2.changed(function2);
                    Object rememberedValue3 = gapComposer2.rememberedValue();
                    if (changed3 || rememberedValue3 == neverEqualPolicy) {
                        rememberedValue3 = new GamesHubScreenKt$$ExternalSyntheticLambda24(uiState, infiniteTransition, function0, gamesHubViewModel, function2, this.f$3, mutableState);
                        gapComposer2.updateRememberedValue(rememberedValue3);
                    }
                    ExceptionsKt.LazyColumn(m134paddingVpY3zN4$default, null, null, null, null, null, false, null, (Function1) rememberedValue3, gapComposer2, 6, 510);
                    gapComposer2.end(true);
                    break;
                }
        }
        return unit;
    }

    public /* synthetic */ GamesHubScreenKt$$ExternalSyntheticLambda18(GamesHubViewModel gamesHubViewModel, PullToRefreshStateImpl pullToRefreshStateImpl, MutableState mutableState, MutableState mutableState2, List list, Function1 function1, OnThisDayGameArchiveCalendarHelper onThisDayGameArchiveCalendarHelper, UiState uiState, InfiniteTransition infiniteTransition, Function0 function0, Function2 function2) {
        this.f$0 = gamesHubViewModel;
        this.f$1 = pullToRefreshStateImpl;
        this.f$2 = mutableState;
        this.f$3 = mutableState2;
        this.f$4 = list;
        this.f$5 = function1;
        this.f$6 = onThisDayGameArchiveCalendarHelper;
        this.f$7 = uiState;
        this.f$8 = infiniteTransition;
        this.f$9 = function0;
        this.f$10 = function2;
    }
}
