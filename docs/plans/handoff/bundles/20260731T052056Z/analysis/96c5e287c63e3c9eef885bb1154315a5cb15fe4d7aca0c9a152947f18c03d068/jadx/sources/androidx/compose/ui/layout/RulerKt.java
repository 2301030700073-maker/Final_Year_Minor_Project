package androidx.compose.ui.layout;

import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.node.LayoutNode$_foldedChildren$1;
import androidx.compose.ui.node.LookaheadDelegate;
import androidx.compose.ui.node.NodeCoordinator;
import androidx.recyclerview.widget.RecyclerView;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class RulerKt {
    public static final ContentScale$Companion$Fit$1 ReusedSlotId = new ContentScale$Companion$Fit$1(5);
    public static final Object UnspecifiedSlotId = new Object();

    public static final void SubcomposeLayout(SubcomposeLayoutState subcomposeLayoutState, Modifier modifier, Function2 function2, GapComposer gapComposer, int i) {
        int i2;
        gapComposer.startRestartGroup(-511989831);
        if ((i & 6) == 0) {
            i2 = (gapComposer.changedInstance(subcomposeLayoutState) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer.changed(modifier) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= gapComposer.changedInstance(function2) ? 256 : 128;
        }
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 147) != 146)) {
            long j = gapComposer.compositeKeyHashCode;
            int i3 = (int) (j ^ (j >>> 32));
            GapComposer.CompositionContextImpl rememberCompositionContext = Updater.rememberCompositionContext(gapComposer);
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, modifier);
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
            LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = LayoutNode$Companion$Constructor$1.INSTANCE;
            gapComposer.startReusableNode();
            if (gapComposer.inserting) {
                gapComposer.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer.useNode();
            }
            Updater.m327setimpl(gapComposer, subcomposeLayoutState, subcomposeLayoutState.setRoot);
            Updater.m327setimpl(gapComposer, rememberCompositionContext, subcomposeLayoutState.setCompositionContext);
            Updater.m327setimpl(gapComposer, function2, subcomposeLayoutState.setMeasurePolicy);
            ComposeUiNode.Companion.getClass();
            Updater.m327setimpl(gapComposer, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
            Updater.m326reconcileimpl(gapComposer, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
            Updater.m327setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
            Updater.m327setimpl(gapComposer, Integer.valueOf(i3), ComposeUiNode.Companion.SetCompositeKeyHash);
            gapComposer.end(true);
            if (gapComposer.getSkipping()) {
                gapComposer.startReplaceGroup(-1259187287);
                gapComposer.end(false);
            } else {
                gapComposer.startReplaceGroup(-1259245908);
                boolean changedInstance = gapComposer.changedInstance(subcomposeLayoutState);
                Object rememberedValue = gapComposer.rememberedValue();
                if (changedInstance || rememberedValue == Composer$Companion.Empty) {
                    rememberedValue = new LayoutNode$_foldedChildren$1(7, subcomposeLayoutState);
                    gapComposer.updateRememberedValue(rememberedValue);
                }
                Updater.SideEffect((Function0) rememberedValue, gapComposer);
                gapComposer.end(false);
            }
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new SubcomposeLayoutKt$SubcomposeLayout$5(subcomposeLayoutState, modifier, function2, i, 0);
        }
    }

    public static final Rect boundsInParent(LayoutCoordinates layoutCoordinates) {
        LayoutCoordinates parentLayoutCoordinates = layoutCoordinates.getParentLayoutCoordinates();
        return parentLayoutCoordinates != null ? parentLayoutCoordinates.localBoundingBoxOf(layoutCoordinates, true) : new Rect(RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, (int) (layoutCoordinates.mo517getSizeYbymL2g() >> 32), (int) (layoutCoordinates.mo517getSizeYbymL2g() & 4294967295L));
    }

    public static final Rect boundsInWindow(LayoutCoordinates layoutCoordinates, boolean z) {
        LayoutCoordinates findRootCoordinates = findRootCoordinates(layoutCoordinates);
        float mo517getSizeYbymL2g = (int) (findRootCoordinates.mo517getSizeYbymL2g() >> 32);
        float mo517getSizeYbymL2g2 = (int) (findRootCoordinates.mo517getSizeYbymL2g() & 4294967295L);
        Rect localBoundingBoxOf = findRootCoordinates.localBoundingBoxOf(layoutCoordinates, z);
        float f = localBoundingBoxOf.left;
        float f2 = RecyclerView.DECELERATION_RATE;
        if (z) {
            if (f < RecyclerView.DECELERATION_RATE) {
                f = 0.0f;
            }
            if (f > mo517getSizeYbymL2g) {
                f = mo517getSizeYbymL2g;
            }
        }
        float f3 = localBoundingBoxOf.top;
        if (z) {
            if (f3 < RecyclerView.DECELERATION_RATE) {
                f3 = 0.0f;
            }
            if (f3 > mo517getSizeYbymL2g2) {
                f3 = mo517getSizeYbymL2g2;
            }
        }
        float f4 = localBoundingBoxOf.right;
        if (z) {
            if (f4 < RecyclerView.DECELERATION_RATE) {
                f4 = 0.0f;
            }
            if (f4 <= mo517getSizeYbymL2g) {
                mo517getSizeYbymL2g = f4;
            }
            f4 = mo517getSizeYbymL2g;
        }
        float f5 = localBoundingBoxOf.bottom;
        if (z) {
            if (f5 >= RecyclerView.DECELERATION_RATE) {
                f2 = f5;
            }
            if (f2 <= mo517getSizeYbymL2g2) {
                mo517getSizeYbymL2g2 = f2;
            }
            f5 = mo517getSizeYbymL2g2;
        }
        if (f == f4 || f3 == f5) {
            return Rect.Zero;
        }
        long mo522localToWindowMKHz9U = findRootCoordinates.mo522localToWindowMKHz9U((Float.floatToRawIntBits(f) << 32) | (Float.floatToRawIntBits(f3) & 4294967295L));
        long mo522localToWindowMKHz9U2 = findRootCoordinates.mo522localToWindowMKHz9U((Float.floatToRawIntBits(f4) << 32) | (Float.floatToRawIntBits(f3) & 4294967295L));
        long mo522localToWindowMKHz9U3 = findRootCoordinates.mo522localToWindowMKHz9U((Float.floatToRawIntBits(f4) << 32) | (Float.floatToRawIntBits(f5) & 4294967295L));
        long mo522localToWindowMKHz9U4 = findRootCoordinates.mo522localToWindowMKHz9U((Float.floatToRawIntBits(f5) & 4294967295L) | (Float.floatToRawIntBits(f) << 32));
        float intBitsToFloat = Float.intBitsToFloat((int) (mo522localToWindowMKHz9U >> 32));
        float intBitsToFloat2 = Float.intBitsToFloat((int) (mo522localToWindowMKHz9U2 >> 32));
        float intBitsToFloat3 = Float.intBitsToFloat((int) (mo522localToWindowMKHz9U4 >> 32));
        float intBitsToFloat4 = Float.intBitsToFloat((int) (mo522localToWindowMKHz9U3 >> 32));
        float min = Math.min(intBitsToFloat, Math.min(intBitsToFloat2, Math.min(intBitsToFloat3, intBitsToFloat4)));
        float max = Math.max(intBitsToFloat, Math.max(intBitsToFloat2, Math.max(intBitsToFloat3, intBitsToFloat4)));
        float intBitsToFloat5 = Float.intBitsToFloat((int) (mo522localToWindowMKHz9U & 4294967295L));
        float intBitsToFloat6 = Float.intBitsToFloat((int) (mo522localToWindowMKHz9U2 & 4294967295L));
        float intBitsToFloat7 = Float.intBitsToFloat((int) (mo522localToWindowMKHz9U4 & 4294967295L));
        float intBitsToFloat8 = Float.intBitsToFloat((int) (mo522localToWindowMKHz9U3 & 4294967295L));
        return new Rect(min, Math.min(intBitsToFloat5, Math.min(intBitsToFloat6, Math.min(intBitsToFloat7, intBitsToFloat8))), max, Math.max(intBitsToFloat5, Math.max(intBitsToFloat6, Math.max(intBitsToFloat7, intBitsToFloat8))));
    }

    /* renamed from: computeFillMinDimension-iLBOSCw, reason: not valid java name */
    public static final float m537computeFillMinDimensioniLBOSCw(long j, long j2) {
        return Math.min(Float.intBitsToFloat((int) (j2 >> 32)) / Float.intBitsToFloat((int) (j >> 32)), Float.intBitsToFloat((int) (j2 & 4294967295L)) / Float.intBitsToFloat((int) (j & 4294967295L)));
    }

    /* renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m538equalsimpl0(long j, long j2) {
        return j == j2;
    }

    public static final LayoutCoordinates findRootCoordinates(LayoutCoordinates layoutCoordinates) {
        LayoutCoordinates layoutCoordinates2;
        LayoutCoordinates parentLayoutCoordinates = layoutCoordinates.getParentLayoutCoordinates();
        while (true) {
            LayoutCoordinates layoutCoordinates3 = parentLayoutCoordinates;
            layoutCoordinates2 = layoutCoordinates;
            layoutCoordinates = layoutCoordinates3;
            if (layoutCoordinates == null) {
                break;
            }
            parentLayoutCoordinates = layoutCoordinates.getParentLayoutCoordinates();
        }
        NodeCoordinator nodeCoordinator = layoutCoordinates2 instanceof NodeCoordinator ? (NodeCoordinator) layoutCoordinates2 : null;
        if (nodeCoordinator == null) {
            return layoutCoordinates2;
        }
        NodeCoordinator nodeCoordinator2 = nodeCoordinator.wrappedBy;
        while (true) {
            NodeCoordinator nodeCoordinator3 = nodeCoordinator2;
            NodeCoordinator nodeCoordinator4 = nodeCoordinator;
            nodeCoordinator = nodeCoordinator3;
            if (nodeCoordinator == null) {
                return nodeCoordinator4;
            }
            nodeCoordinator2 = nodeCoordinator.wrappedBy;
        }
    }

    public static final Object getLayoutId(Measurable measurable) {
        Object parentData = measurable.getParentData();
        LayoutIdModifier layoutIdModifier = parentData instanceof LayoutIdModifier ? (LayoutIdModifier) parentData : null;
        if (layoutIdModifier != null) {
            return layoutIdModifier.layoutId;
        }
        return null;
    }

    public static final LookaheadDelegate getRootLookaheadDelegate(LookaheadDelegate lookaheadDelegate) {
        LayoutNode layoutNode = lookaheadDelegate.coordinator.layoutNode;
        while (true) {
            LayoutNode parent$ui = layoutNode.getParent$ui();
            LayoutNode layoutNode2 = null;
            if ((parent$ui != null ? parent$ui.lookaheadRoot : null) == null) {
                LookaheadDelegate lookaheadDelegate2 = ((NodeCoordinator) layoutNode.nodes.outerCoordinator).getLookaheadDelegate();
                lookaheadDelegate2.getClass();
                return lookaheadDelegate2;
            }
            LayoutNode parent$ui2 = layoutNode.getParent$ui();
            if (parent$ui2 != null) {
                layoutNode2 = parent$ui2.lookaheadRoot;
            }
            layoutNode2.getClass();
            LayoutNode parent$ui3 = layoutNode.getParent$ui();
            parent$ui3.getClass();
            layoutNode = parent$ui3.lookaheadRoot;
            layoutNode.getClass();
        }
    }

    public static final Modifier layout(Modifier modifier, Function3 function3) {
        return modifier.then(new LayoutElement(function3));
    }

    public static final Modifier layoutId(Modifier modifier, String str) {
        return modifier.then(new LayoutIdElement(str));
    }

    public static final float mergeRulerValues(Placeable.PlacementScope placementScope, boolean z, VerticalRuler[] verticalRulerArr, float f) {
        float f2 = Float.NaN;
        for (VerticalRuler verticalRuler : verticalRulerArr) {
            float current = placementScope.current(verticalRuler);
            if (!Float.isNaN(f2)) {
                int i = z != (current > f2) ? i + 1 : 0;
            }
            f2 = current;
        }
        return Float.isNaN(f2) ? f : f2;
    }

    public static final Modifier onGloballyPositioned(Modifier modifier, Function1 function1) {
        return modifier.then(new OnGloballyPositionedElement(function1));
    }

    public static final Modifier onSizeChanged(Modifier modifier, Function1 function1) {
        return modifier.then(new OnSizeChangedModifier(function1));
    }

    /* renamed from: times-UQTWf7w, reason: not valid java name */
    public static final long m539timesUQTWf7w(long j, long j2) {
        float intBitsToFloat = Float.intBitsToFloat((int) (j2 >> 32)) * Float.intBitsToFloat((int) (j >> 32));
        float intBitsToFloat2 = Float.intBitsToFloat((int) (j2 & 4294967295L)) * Float.intBitsToFloat((int) (j & 4294967295L));
        return (Float.floatToRawIntBits(intBitsToFloat2) & 4294967295L) | (Float.floatToRawIntBits(intBitsToFloat) << 32);
    }

    public static final void SubcomposeLayout(final Modifier modifier, final Function2 function2, GapComposer gapComposer, final int i, final int i2) {
        int i3;
        gapComposer.startRestartGroup(-1298353104);
        int i4 = i2 & 1;
        if (i4 != 0) {
            i3 = i | 6;
        } else if ((i & 6) == 0) {
            i3 = (gapComposer.changed(modifier) ? 4 : 2) | i;
        } else {
            i3 = i;
        }
        if ((i & 48) == 0) {
            i3 |= gapComposer.changedInstance(function2) ? 32 : 16;
        }
        if (gapComposer.shouldExecute(i3 & 1, (i3 & 19) != 18)) {
            if (i4 != 0) {
                modifier = Modifier.Companion.$$INSTANCE;
            }
            Object rememberedValue = gapComposer.rememberedValue();
            if (rememberedValue == Composer$Companion.Empty) {
                rememberedValue = new SubcomposeLayoutState(ContentScale$Companion$Fit$1.INSTANCE);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            SubcomposeLayout((SubcomposeLayoutState) rememberedValue, modifier, function2, gapComposer, (i3 << 3) & 1008);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new Function2() { // from class: androidx.compose.ui.layout.SubcomposeLayoutKt$SubcomposeLayout$2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Number) obj2).intValue();
                    int updateChangedFlags = Updater.updateChangedFlags(i | 1);
                    int i5 = i2;
                    RulerKt.SubcomposeLayout(Modifier.this, function2, (GapComposer) obj, updateChangedFlags, i5);
                    return Unit.INSTANCE;
                }
            };
        }
    }
}
