package androidx.compose.material3;

import android.content.Context;
import androidx.compose.animation.core.Transition;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.ScrollState;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.IntrinsicSize;
import androidx.compose.foundation.layout.LayoutWeightElement;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.internal.InlineClassHelperKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifier;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.ComposeUiNode$Companion$SetModifier$1;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.recyclerview.widget.RecyclerView;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.wikipedia.extensions.ContextKt;
import org.wikipedia.feed.personalization.interest.OnboardingTopic;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class TooltipKt$TooltipBox$3 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object $scope;
    public final /* synthetic */ Object $tooltip;
    public final /* synthetic */ Object $transition;

    public /* synthetic */ TooltipKt$TooltipBox$3(Object obj, Object obj2, ComposableLambdaImpl composableLambdaImpl, int i) {
        this.$r8$classId = i;
        this.$transition = obj;
        this.$scope = obj2;
        this.$tooltip = composableLambdaImpl;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Object obj3 = this.$scope;
        Object obj4 = this.$tooltip;
        Object obj5 = this.$transition;
        int i2 = 0;
        switch (i) {
            case 0:
                GapComposer gapComposer = (GapComposer) obj;
                int intValue = ((Number) obj2).intValue();
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    ComposedModifier composedModifier = new ComposedModifier(new TooltipKt$animateTooltip$2(i2, (Transition) obj5));
                    ComposableLambdaImpl composableLambdaImpl = (ComposableLambdaImpl) obj4;
                    TooltipScopeImpl tooltipScopeImpl = (TooltipScopeImpl) obj3;
                    MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.TopStart, false);
                    int currentCompositeKeyHash = Updater.getCurrentCompositeKeyHash(gapComposer);
                    PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
                    Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, composedModifier);
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
                    composableLambdaImpl.invoke((Object) tooltipScopeImpl, (Object) gapComposer, (Object) 6);
                    gapComposer.end(true);
                    break;
                }
                break;
            case 1:
                GapComposer gapComposer2 = (GapComposer) obj;
                int intValue2 = ((Number) obj2).intValue();
                if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 3) != 2)) {
                    gapComposer2.skipToGroupEnd();
                    break;
                } else {
                    Modifier scroll$default = ImageKt.scroll$default(OffsetKt.width(OffsetKt.m134paddingVpY3zN4$default((Modifier) obj5, RecyclerView.DECELERATION_RATE, 8.0f, 1), IntrinsicSize.Max), (ScrollState) obj3, true);
                    ComposableLambdaImpl composableLambdaImpl2 = (ComposableLambdaImpl) obj4;
                    ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(OffsetKt.Top, Alignment.Companion.Start, gapComposer2, 0);
                    int currentCompositeKeyHash2 = Updater.getCurrentCompositeKeyHash(gapComposer2);
                    PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer2.currentCompositionLocalScope();
                    Modifier materializeModifier2 = AbsoluteAlignment.materializeModifier(gapComposer2, scroll$default);
                    ComposeUiNode.Companion.getClass();
                    LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$12 = ComposeUiNode.Companion.Constructor;
                    gapComposer2.startReusableNode();
                    if (gapComposer2.inserting) {
                        gapComposer2.createNode(layoutNode$Companion$Constructor$12);
                    } else {
                        gapComposer2.useNode();
                    }
                    Updater.m327setimpl(gapComposer2, columnMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
                    Updater.m327setimpl(gapComposer2, currentCompositionLocalScope2, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                    ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$12 = ComposeUiNode.Companion.SetCompositeKeyHash;
                    if (gapComposer2.inserting || !Intrinsics.areEqual(gapComposer2.rememberedValue(), Integer.valueOf(currentCompositeKeyHash2))) {
                        Modifier.CC.m(currentCompositeKeyHash2, gapComposer2, currentCompositeKeyHash2, composeUiNode$Companion$SetModifier$12);
                    }
                    Updater.m327setimpl(gapComposer2, materializeModifier2, ComposeUiNode.Companion.SetModifier);
                    composableLambdaImpl2.invoke((Object) ColumnScopeInstance.INSTANCE, (Object) gapComposer2, (Object) 6);
                    gapComposer2.end(true);
                    break;
                }
                break;
            case 2:
                GapComposer gapComposer3 = (GapComposer) obj;
                int intValue3 = ((Number) obj2).intValue();
                if (!gapComposer3.shouldExecute(intValue3 & 1, (intValue3 & 3) != 2)) {
                    gapComposer3.skipToGroupEnd();
                    break;
                } else {
                    if (1.0f <= 0.0d) {
                        InlineClassHelperKt.throwIllegalArgumentException("invalid weight; must be greater than zero");
                    }
                    Modifier m136paddingqDBjuR0$default = OffsetKt.m136paddingqDBjuR0$default(new LayoutWeightElement(1.0f > Float.MAX_VALUE ? Float.MAX_VALUE : 1.0f, true), ((Function2) obj5) != null ? 12.0f : 0.0f, RecyclerView.DECELERATION_RATE, ((Function2) obj3) != null ? 12.0f : 0.0f, RecyclerView.DECELERATION_RATE, 10);
                    ComposableLambdaImpl composableLambdaImpl3 = (ComposableLambdaImpl) obj4;
                    MeasurePolicy maybeCachedBoxMeasurePolicy2 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.TopStart, false);
                    int currentCompositeKeyHash3 = Updater.getCurrentCompositeKeyHash(gapComposer3);
                    PersistentCompositionLocalHashMap currentCompositionLocalScope3 = gapComposer3.currentCompositionLocalScope();
                    Modifier materializeModifier3 = AbsoluteAlignment.materializeModifier(gapComposer3, m136paddingqDBjuR0$default);
                    ComposeUiNode.Companion.getClass();
                    LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$13 = ComposeUiNode.Companion.Constructor;
                    gapComposer3.startReusableNode();
                    if (gapComposer3.inserting) {
                        gapComposer3.createNode(layoutNode$Companion$Constructor$13);
                    } else {
                        gapComposer3.useNode();
                    }
                    Updater.m327setimpl(gapComposer3, maybeCachedBoxMeasurePolicy2, ComposeUiNode.Companion.SetMeasurePolicy);
                    Updater.m327setimpl(gapComposer3, currentCompositionLocalScope3, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                    ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$13 = ComposeUiNode.Companion.SetCompositeKeyHash;
                    if (gapComposer3.inserting || !Intrinsics.areEqual(gapComposer3.rememberedValue(), Integer.valueOf(currentCompositeKeyHash3))) {
                        Modifier.CC.m(currentCompositeKeyHash3, gapComposer3, currentCompositeKeyHash3, composeUiNode$Companion$SetModifier$13);
                    }
                    Updater.m327setimpl(gapComposer3, materializeModifier3, ComposeUiNode.Companion.SetModifier);
                    composableLambdaImpl3.invoke((Object) gapComposer3, (Object) 0);
                    gapComposer3.end(true);
                    break;
                }
            default:
                GapComposer gapComposer4 = (GapComposer) obj;
                int intValue4 = ((Number) obj2).intValue();
                if (!gapComposer4.shouldExecute(intValue4 & 1, (intValue4 & 3) != 2)) {
                    gapComposer4.skipToGroupEnd();
                    break;
                } else {
                    TextKt.m308TextNvy7gAk(ContextKt.getString((Context) obj5, (String) obj4, ((OnboardingTopic) obj3).topic.msgKey, new Object[0]), null, 0L, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, null, gapComposer4, 0, 0, 262142);
                    break;
                }
        }
        return unit;
    }

    public /* synthetic */ TooltipKt$TooltipBox$3(Object obj, Object obj2, Object obj3, int i) {
        this.$r8$classId = i;
        this.$transition = obj;
        this.$tooltip = obj2;
        this.$scope = obj3;
    }
}
