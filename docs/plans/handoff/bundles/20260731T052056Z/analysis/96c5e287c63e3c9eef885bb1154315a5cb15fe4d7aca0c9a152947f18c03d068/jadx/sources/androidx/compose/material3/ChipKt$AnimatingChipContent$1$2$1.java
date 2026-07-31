package androidx.compose.material3;

import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.internal.FloatProducer;
import androidx.compose.material3.pulltorefresh.PullToRefreshStateImpl;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.ComposeUiNode$Companion$SetModifier$1;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.recyclerview.widget.RecyclerView;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.RegexKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ChipKt$AnimatingChipContent$1$2$1 implements Function3 {
    public final /* synthetic */ Object $leadingIcon;
    public final /* synthetic */ long $leadingIconColor;
    public final /* synthetic */ int $r8$classId = 1;

    public ChipKt$AnimatingChipContent$1$2$1(long j, PullToRefreshStateImpl pullToRefreshStateImpl) {
        this.$leadingIconColor = j;
        this.$leadingIcon = pullToRefreshStateImpl;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        long j = this.$leadingIconColor;
        NeverEqualPolicy neverEqualPolicy = Composer$Companion.Empty;
        Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
        Object obj4 = this.$leadingIcon;
        switch (i) {
            case 0:
                GapComposer gapComposer = (GapComposer) obj2;
                ((Number) obj3).intValue();
                Function2 m282leadingContentXOJAsU = ChipKt.m282leadingContentXOJAsU((Function2) obj4, j, gapComposer);
                Object rememberedValue = gapComposer.rememberedValue();
                if (rememberedValue == neverEqualPolicy) {
                    rememberedValue = Updater.mutableStateOf$default(m282leadingContentXOJAsU);
                    gapComposer.updateRememberedValue(rememberedValue);
                }
                MutableState mutableState = (MutableState) rememberedValue;
                if (m282leadingContentXOJAsU != null) {
                    mutableState.setValue(m282leadingContentXOJAsU);
                }
                MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.Center, false);
                int currentCompositeKeyHash = Updater.getCurrentCompositeKeyHash(gapComposer);
                PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
                Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, companion);
                ComposeUiNode.Companion.getClass();
                LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
                gapComposer.startReusableNode();
                if (gapComposer.inserting) {
                    gapComposer.createNode(layoutNode$Companion$Constructor$1);
                } else {
                    gapComposer.useNode();
                }
                Updater.m327setimpl(gapComposer, maybeCachedBoxMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
                Updater.m327setimpl(gapComposer, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$1 = ComposeUiNode.Companion.SetCompositeKeyHash;
                if (gapComposer.inserting || !Intrinsics.areEqual(gapComposer.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                    Modifier.CC.m(currentCompositeKeyHash, gapComposer, currentCompositeKeyHash, composeUiNode$Companion$SetModifier$1);
                }
                Updater.m327setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
                Function2 function2 = (Function2) mutableState.getValue();
                if (function2 == null) {
                    gapComposer.startReplaceGroup(-1538103400);
                } else {
                    gapComposer.startReplaceGroup(-326710903);
                    function2.invoke(gapComposer, 0);
                }
                gapComposer.end(false);
                gapComposer.end(true);
                break;
            default:
                boolean booleanValue = ((Boolean) obj).booleanValue();
                GapComposer gapComposer2 = (GapComposer) obj2;
                int intValue = ((Number) obj3).intValue();
                PullToRefreshStateImpl pullToRefreshStateImpl = (PullToRefreshStateImpl) obj4;
                if ((intValue & 6) == 0) {
                    intValue |= gapComposer2.changed(booleanValue) ? 4 : 2;
                }
                if (!gapComposer2.shouldExecute(intValue & 1, (intValue & 19) != 18)) {
                    gapComposer2.skipToGroupEnd();
                    break;
                } else if (!booleanValue) {
                    gapComposer2.startReplaceGroup(-499540745);
                    boolean changed = gapComposer2.changed(pullToRefreshStateImpl);
                    Object rememberedValue2 = gapComposer2.rememberedValue();
                    if (changed || rememberedValue2 == neverEqualPolicy) {
                        rememberedValue2 = new DefaultSingleRowTopAppBarOverride$$ExternalSyntheticLambda2(1, pullToRefreshStateImpl);
                        gapComposer2.updateRememberedValue(rememberedValue2);
                    }
                    RegexKt.m837CircularArrowProgressIndicatorRPmYEkk((FloatProducer) rememberedValue2, j, gapComposer2, 0);
                    gapComposer2.end(false);
                    break;
                } else {
                    gapComposer2.startReplaceGroup(-499784343);
                    ProgressIndicatorKt.m290CircularProgressIndicator4lLiAd8(SizeKt.m145size3ABfNKs(companion, 16.0f), this.$leadingIconColor, 2.5f, 0L, 0, RecyclerView.DECELERATION_RATE, gapComposer2, 390, 56);
                    gapComposer2.end(false);
                    break;
                }
        }
        return unit;
    }

    public ChipKt$AnimatingChipContent$1$2$1(Function2 function2, long j) {
        this.$leadingIcon = function2;
        this.$leadingIconColor = j;
    }
}
