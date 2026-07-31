package androidx.compose.ui.layout;

import androidx.collection.MutableObjectList;
import androidx.collection.MutableScatterMap;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.layout.LayoutNodeSubcompositionsState;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.node.LookaheadDelegate;
import androidx.compose.ui.node.NodeCoordinator;
import com.google.android.exoplayer2.RendererCapabilities;
import com.google.android.exoplayer2.analytics.AnalyticsListener;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.ranges.RangesKt;
import org.mozilla.javascript.Token;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class RulerKt {
    public static final ContentScale$Companion$Fit$1 ReusedSlotId = new ContentScale$Companion$Fit$1(3);
    public static final Object UnspecifiedSlotId = new Object();

    public static final void SubcomposeLayout(final SubcomposeLayoutState subcomposeLayoutState, Modifier modifier, final Function2 function2, Composer composer, final int i, final int i2) {
        int i3;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-511989831);
        if ((i & 6) == 0) {
            i3 = (gapComposer.changedInstance(subcomposeLayoutState) ? 4 : 2) | i;
        } else {
            i3 = i;
        }
        int i4 = i2 & 2;
        if (i4 != 0) {
            i3 |= 48;
        } else if ((i & 48) == 0) {
            i3 |= gapComposer.changed(modifier) ? 32 : 16;
        }
        if ((i & RendererCapabilities.MODE_SUPPORT_MASK) == 0) {
            i3 |= gapComposer.changedInstance(function2) ? 256 : 128;
        }
        if (gapComposer.shouldExecute(i3 & 1, (i3 & Token.EXPR_VOID) != 146)) {
            if (i4 != 0) {
                modifier = Modifier.Companion.$$INSTANCE;
            }
            long j = gapComposer.compositeKeyHashCode;
            int i5 = (int) (j ^ (j >>> 32));
            GapComposer.CompositionContextImpl rememberCompositionContext = Updater.rememberCompositionContext(gapComposer);
            Modifier materializeModifier = RangesKt.materializeModifier(gapComposer, modifier);
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
            LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = LayoutNode$Companion$Constructor$1.INSTANCE;
            gapComposer.startReusableNode();
            if (gapComposer.inserting) {
                gapComposer.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer.useNode();
            }
            Updater.m170setimpl(gapComposer, subcomposeLayoutState, subcomposeLayoutState.setRoot);
            Updater.m170setimpl(gapComposer, rememberCompositionContext, subcomposeLayoutState.setCompositionContext);
            Updater.m170setimpl(gapComposer, function2, subcomposeLayoutState.setMeasurePolicy);
            ComposeUiNode.Companion.getClass();
            Updater.m170setimpl(gapComposer, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
            Updater.m169reconcileimpl(gapComposer, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
            Updater.m170setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
            Updater.m170setimpl(gapComposer, Integer.valueOf(i5), ComposeUiNode.Companion.SetCompositeKeyHash);
            gapComposer.end(true);
            if (gapComposer.getSkipping()) {
                gapComposer.startReplaceGroup(-1259187287);
                gapComposer.end(false);
            } else {
                gapComposer.startReplaceGroup(-1259245908);
                boolean changedInstance = gapComposer.changedInstance(subcomposeLayoutState);
                Object rememberedValue = gapComposer.rememberedValue();
                if (changedInstance || rememberedValue == Composer.Companion.Empty) {
                    rememberedValue = new Function0() { // from class: androidx.compose.ui.layout.SubcomposeLayoutKt$SubcomposeLayout$4$1
                        {
                            super(0);
                        }

                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            LayoutNodeSubcompositionsState state = SubcomposeLayoutState.this.getState();
                            LayoutNode layoutNode = state.root;
                            if (state.reusableCount != ((MutableVector) ((MutableObjectList.ObjectListMutableList) layoutNode.getFoldedChildren$ui()).objectList).size) {
                                MutableScatterMap mutableScatterMap = state.nodeToNodeState;
                                Object[] objArr = mutableScatterMap.values;
                                long[] jArr = mutableScatterMap.metadata;
                                int length = jArr.length - 2;
                                if (length >= 0) {
                                    int i6 = 0;
                                    while (true) {
                                        long j2 = jArr[i6];
                                        if ((((~j2) << 7) & j2 & (-9187201950435737472L)) != -9187201950435737472L) {
                                            int i7 = 8 - ((~(i6 - length)) >>> 31);
                                            for (int i8 = 0; i8 < i7; i8++) {
                                                if ((255 & j2) < 128) {
                                                    ((LayoutNodeSubcompositionsState.NodeState) objArr[(i6 << 3) + i8]).forceRecompose = true;
                                                }
                                                j2 >>= 8;
                                            }
                                            if (i7 != 8) {
                                                break;
                                            }
                                        }
                                        if (i6 == length) {
                                            break;
                                        }
                                        i6++;
                                    }
                                }
                                if (layoutNode.lookaheadRoot != null) {
                                    if (!layoutNode.layoutDelegate.lookaheadMeasurePending) {
                                        LayoutNode.requestLookaheadRemeasure$ui$default(layoutNode, false, 7);
                                    }
                                } else if (!layoutNode.getMeasurePending$ui()) {
                                    LayoutNode.requestRemeasure$ui$default(layoutNode, false, 7);
                                }
                            }
                            return Unit.INSTANCE;
                        }
                    };
                    gapComposer.updateRememberedValue(rememberedValue);
                }
                Updater.SideEffect((Function0) rememberedValue, gapComposer);
                gapComposer.end(false);
            }
        } else {
            gapComposer.skipToGroupEnd();
        }
        final Modifier modifier2 = modifier;
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new Function2() { // from class: androidx.compose.ui.layout.SubcomposeLayoutKt$SubcomposeLayout$5
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Number) obj2).intValue();
                    RulerKt.SubcomposeLayout(SubcomposeLayoutState.this, modifier2, function2, (Composer) obj, Updater.updateChangedFlags(i | 1), i2);
                    return Unit.INSTANCE;
                }
            };
        }
    }

    public static final float access$mergeRulerValues(Placeable.PlacementScope placementScope, boolean z, Ruler[] rulerArr, float f) {
        float f2 = Float.NaN;
        for (Ruler ruler : rulerArr) {
            float current = placementScope.current(ruler);
            if (!Float.isNaN(f2)) {
                int i = z != (current > f2) ? i + 1 : 0;
            }
            f2 = current;
        }
        return Float.isNaN(f2) ? f : f2;
    }

    public static final Rect boundsInParent(LayoutCoordinates layoutCoordinates) {
        LayoutCoordinates parentLayoutCoordinates = layoutCoordinates.getParentLayoutCoordinates();
        return parentLayoutCoordinates != null ? parentLayoutCoordinates.localBoundingBoxOf(layoutCoordinates, true) : new Rect(0.0f, 0.0f, (int) (layoutCoordinates.mo296getSizeYbymL2g() >> 32), (int) (layoutCoordinates.mo296getSizeYbymL2g() & 4294967295L));
    }

    public static final Rect boundsInWindow(LayoutCoordinates layoutCoordinates, boolean z) {
        LayoutCoordinates findRootCoordinates = findRootCoordinates(layoutCoordinates);
        float mo296getSizeYbymL2g = (int) (findRootCoordinates.mo296getSizeYbymL2g() >> 32);
        float mo296getSizeYbymL2g2 = (int) (findRootCoordinates.mo296getSizeYbymL2g() & 4294967295L);
        Rect localBoundingBoxOf = findRootCoordinates.localBoundingBoxOf(layoutCoordinates, z);
        float f = localBoundingBoxOf.left;
        if (z) {
            if (f < 0.0f) {
                f = 0.0f;
            }
            if (f > mo296getSizeYbymL2g) {
                f = mo296getSizeYbymL2g;
            }
        }
        float f2 = localBoundingBoxOf.top;
        if (z) {
            if (f2 < 0.0f) {
                f2 = 0.0f;
            }
            if (f2 > mo296getSizeYbymL2g2) {
                f2 = mo296getSizeYbymL2g2;
            }
        }
        float f3 = localBoundingBoxOf.right;
        if (z) {
            if (f3 < 0.0f) {
                f3 = 0.0f;
            }
            if (f3 <= mo296getSizeYbymL2g) {
                mo296getSizeYbymL2g = f3;
            }
            f3 = mo296getSizeYbymL2g;
        }
        float f4 = localBoundingBoxOf.bottom;
        if (z) {
            float f5 = f4 >= 0.0f ? f4 : 0.0f;
            if (f5 <= mo296getSizeYbymL2g2) {
                mo296getSizeYbymL2g2 = f5;
            }
            f4 = mo296getSizeYbymL2g2;
        }
        if (f == f3 || f2 == f4) {
            return Rect.Zero;
        }
        long mo300localToWindowMKHz9U = findRootCoordinates.mo300localToWindowMKHz9U((Float.floatToRawIntBits(f) << 32) | (Float.floatToRawIntBits(f2) & 4294967295L));
        long mo300localToWindowMKHz9U2 = findRootCoordinates.mo300localToWindowMKHz9U((Float.floatToRawIntBits(f3) << 32) | (Float.floatToRawIntBits(f2) & 4294967295L));
        long mo300localToWindowMKHz9U3 = findRootCoordinates.mo300localToWindowMKHz9U((Float.floatToRawIntBits(f3) << 32) | (Float.floatToRawIntBits(f4) & 4294967295L));
        long mo300localToWindowMKHz9U4 = findRootCoordinates.mo300localToWindowMKHz9U((Float.floatToRawIntBits(f4) & 4294967295L) | (Float.floatToRawIntBits(f) << 32));
        float intBitsToFloat = Float.intBitsToFloat((int) (mo300localToWindowMKHz9U >> 32));
        float intBitsToFloat2 = Float.intBitsToFloat((int) (mo300localToWindowMKHz9U2 >> 32));
        float intBitsToFloat3 = Float.intBitsToFloat((int) (mo300localToWindowMKHz9U4 >> 32));
        float intBitsToFloat4 = Float.intBitsToFloat((int) (mo300localToWindowMKHz9U3 >> 32));
        float min = Math.min(intBitsToFloat, Math.min(intBitsToFloat2, Math.min(intBitsToFloat3, intBitsToFloat4)));
        float max = Math.max(intBitsToFloat, Math.max(intBitsToFloat2, Math.max(intBitsToFloat3, intBitsToFloat4)));
        float intBitsToFloat5 = Float.intBitsToFloat((int) (mo300localToWindowMKHz9U & 4294967295L));
        float intBitsToFloat6 = Float.intBitsToFloat((int) (mo300localToWindowMKHz9U2 & 4294967295L));
        float intBitsToFloat7 = Float.intBitsToFloat((int) (mo300localToWindowMKHz9U4 & 4294967295L));
        float intBitsToFloat8 = Float.intBitsToFloat((int) (mo300localToWindowMKHz9U3 & 4294967295L));
        return new Rect(min, Math.min(intBitsToFloat5, Math.min(intBitsToFloat6, Math.min(intBitsToFloat7, intBitsToFloat8))), max, Math.max(intBitsToFloat5, Math.max(intBitsToFloat6, Math.max(intBitsToFloat7, intBitsToFloat8))));
    }

    public static final ComposableLambdaImpl combineAsVirtualLayouts(final List list) {
        return new ComposableLambdaImpl(1271844412, true, new Function2() { // from class: androidx.compose.ui.layout.LayoutKt$combineAsVirtualLayouts$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                Composer composer = (Composer) obj;
                int intValue = ((Number) obj2).intValue();
                GapComposer gapComposer = (GapComposer) composer;
                if (gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    List<Function2> list2 = list;
                    int size = list2.size();
                    for (int i = 0; i < size; i++) {
                        Function2 function2 = list2.get(i);
                        long j = gapComposer.compositeKeyHashCode;
                        int i2 = (int) (j ^ (j >>> 32));
                        ComposeUiNode.Companion.getClass();
                        LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.VirtualConstructor;
                        gapComposer.startReusableNode();
                        if (gapComposer.inserting) {
                            gapComposer.createNode(layoutNode$Companion$Constructor$1);
                        } else {
                            gapComposer.useNode();
                        }
                        Updater.m170setimpl(gapComposer, Integer.valueOf(i2), ComposeUiNode.Companion.SetCompositeKeyHash);
                        function2.invoke(gapComposer, 0);
                        gapComposer.end(true);
                    }
                } else {
                    gapComposer.skipToGroupEnd();
                }
                return Unit.INSTANCE;
            }
        });
    }

    /* renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m307equalsimpl0(long j, long j2) {
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
                LookaheadDelegate lookaheadDelegate2 = layoutNode.nodes.outerCoordinator.getLookaheadDelegate();
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

    public static final Modifier layoutId(String str) {
        return new LayoutIdElement(str);
    }

    /* renamed from: times-UQTWf7w, reason: not valid java name */
    public static final long m308timesUQTWf7w(long j, long j2) {
        float intBitsToFloat = Float.intBitsToFloat((int) (j2 >> 32)) * Float.intBitsToFloat((int) (j >> 32));
        float intBitsToFloat2 = Float.intBitsToFloat((int) (j2 & 4294967295L)) * Float.intBitsToFloat((int) (j & 4294967295L));
        return (Float.floatToRawIntBits(intBitsToFloat2) & 4294967295L) | (Float.floatToRawIntBits(intBitsToFloat) << 32);
    }

    public static final void SubcomposeLayout(final Modifier modifier, Function2 function2, Composer composer, final int i, final int i2) {
        int i3;
        final Function2 function22;
        GapComposer gapComposer = (GapComposer) composer;
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
            Modifier modifier2 = modifier;
            Object rememberedValue = gapComposer.rememberedValue();
            if (rememberedValue == Composer.Companion.Empty) {
                rememberedValue = new SubcomposeLayoutState(ContentScale$Companion$Fit$1.INSTANCE);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            function22 = function2;
            SubcomposeLayout((SubcomposeLayoutState) rememberedValue, modifier2, function22, gapComposer, (i3 << 3) & AnalyticsListener.EVENT_AUDIO_DECODER_INITIALIZED, 0);
            modifier = modifier2;
        } else {
            function22 = function2;
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
                    RulerKt.SubcomposeLayout(Modifier.this, function22, (Composer) obj, Updater.updateChangedFlags(i | 1), i2);
                    return Unit.INSTANCE;
                }
            };
        }
    }
}
