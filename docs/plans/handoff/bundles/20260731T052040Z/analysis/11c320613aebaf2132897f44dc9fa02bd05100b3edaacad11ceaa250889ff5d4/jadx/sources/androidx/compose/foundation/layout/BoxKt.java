package androidx.compose.foundation.layout;

import androidx.collection.MutableScatterMap;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.Updater$$ExternalSyntheticLambda0;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.ranges.RangesKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class BoxKt {
    public static final MutableScatterMap Cache1 = cacheFor(true);
    public static final MutableScatterMap Cache2 = cacheFor(false);
    public static final SpacerMeasurePolicy EmptyBoxMeasurePolicy = SpacerMeasurePolicy.INSTANCE$1;

    public static final void Box(Modifier modifier, Composer composer, int i) {
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-211209833);
        int i2 = 2;
        int i3 = (gapComposer.changed(modifier) ? 4 : 2) | i;
        if (gapComposer.shouldExecute(i3 & 1, (i3 & 3) != 2)) {
            long j = gapComposer.compositeKeyHashCode;
            int i4 = (int) (j ^ (j >>> 32));
            Modifier materializeModifier = RangesKt.materializeModifier(gapComposer, modifier);
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
            ComposeUiNode.Companion.getClass();
            LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
            gapComposer.startReusableNode();
            if (gapComposer.inserting) {
                gapComposer.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer.useNode();
            }
            Updater.m170setimpl(gapComposer, EmptyBoxMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
            Updater.m170setimpl(gapComposer, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
            Updater.m169reconcileimpl(gapComposer, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
            Updater.m170setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
            Updater.m170setimpl(gapComposer, Integer.valueOf(i4), ComposeUiNode.Companion.SetCompositeKeyHash);
            gapComposer.end(true);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new Updater$$ExternalSyntheticLambda0(modifier, i, i2);
        }
    }

    public static final void access$placeInBox(Placeable.PlacementScope placementScope, Placeable placeable, Measurable measurable, LayoutDirection layoutDirection, int i, int i2, BiasAlignment biasAlignment) {
        measurable.getParentData();
        Placeable.PlacementScope.m305place70tqf50$default(placementScope, placeable, biasAlignment.m178alignKFBX0sM((placeable.width << 32) | (placeable.height & 4294967295L), (i << 32) | (i2 & 4294967295L), layoutDirection));
    }

    public static final MutableScatterMap cacheFor(boolean z) {
        MutableScatterMap mutableScatterMap = new MutableScatterMap(9);
        BiasAlignment biasAlignment = Alignment.Companion.TopStart;
        mutableScatterMap.set(biasAlignment, new BoxMeasurePolicy(biasAlignment, z));
        BiasAlignment biasAlignment2 = Alignment.Companion.TopCenter;
        mutableScatterMap.set(biasAlignment2, new BoxMeasurePolicy(biasAlignment2, z));
        BiasAlignment biasAlignment3 = Alignment.Companion.TopEnd;
        mutableScatterMap.set(biasAlignment3, new BoxMeasurePolicy(biasAlignment3, z));
        BiasAlignment biasAlignment4 = Alignment.Companion.CenterStart;
        mutableScatterMap.set(biasAlignment4, new BoxMeasurePolicy(biasAlignment4, z));
        BiasAlignment biasAlignment5 = Alignment.Companion.Center;
        mutableScatterMap.set(biasAlignment5, new BoxMeasurePolicy(biasAlignment5, z));
        BiasAlignment biasAlignment6 = Alignment.Companion.CenterEnd;
        mutableScatterMap.set(biasAlignment6, new BoxMeasurePolicy(biasAlignment6, z));
        BiasAlignment biasAlignment7 = Alignment.Companion.BottomStart;
        mutableScatterMap.set(biasAlignment7, new BoxMeasurePolicy(biasAlignment7, z));
        BiasAlignment biasAlignment8 = Alignment.Companion.BottomCenter;
        mutableScatterMap.set(biasAlignment8, new BoxMeasurePolicy(biasAlignment8, z));
        BiasAlignment biasAlignment9 = Alignment.Companion.BottomEnd;
        mutableScatterMap.set(biasAlignment9, new BoxMeasurePolicy(biasAlignment9, z));
        return mutableScatterMap;
    }

    public static final MeasurePolicy maybeCachedBoxMeasurePolicy(BiasAlignment biasAlignment, boolean z) {
        MeasurePolicy measurePolicy = (MeasurePolicy) (z ? Cache1 : Cache2).get(biasAlignment);
        return measurePolicy == null ? new BoxMeasurePolicy(biasAlignment, z) : measurePolicy;
    }
}
