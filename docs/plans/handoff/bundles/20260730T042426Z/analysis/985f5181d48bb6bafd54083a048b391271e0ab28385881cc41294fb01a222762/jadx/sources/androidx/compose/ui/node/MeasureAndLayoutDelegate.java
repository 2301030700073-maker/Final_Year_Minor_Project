package androidx.compose.ui.node;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.Owner;
import androidx.compose.ui.unit.Constraints;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: MeasureAndLayoutDelegate.kt */
/* loaded from: classes.dex */
public final class MeasureAndLayoutDelegate {
    private final LayoutTreeConsistencyChecker consistencyChecker;
    private boolean duringFullMeasureLayoutPass;
    private boolean duringMeasureLayout;
    private long measureIteration;
    private final MutableVector onLayoutCompletedListeners;
    private final OnPositionedDispatcher onPositionedDispatcher;
    private final MutableVector postponedMeasureRequests;
    private final DepthSortedSetsForDifferentPasses relayoutNodes;
    private final LayoutNode root;
    private Constraints rootConstraints;

    /* compiled from: MeasureAndLayoutDelegate.kt */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[LayoutNode.LayoutState.values().length];
            try {
                iArr[LayoutNode.LayoutState.LookaheadMeasuring.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LayoutNode.LayoutState.Measuring.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[LayoutNode.LayoutState.LookaheadLayingOut.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[LayoutNode.LayoutState.LayingOut.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[LayoutNode.LayoutState.Idle.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public MeasureAndLayoutDelegate(LayoutNode layoutNode) {
        this.root = layoutNode;
        Owner.Companion companion = Owner.Companion;
        DepthSortedSetsForDifferentPasses depthSortedSetsForDifferentPasses = new DepthSortedSetsForDifferentPasses(companion.getEnableExtraAssertions());
        this.relayoutNodes = depthSortedSetsForDifferentPasses;
        this.onPositionedDispatcher = new OnPositionedDispatcher();
        this.onLayoutCompletedListeners = new MutableVector(new Owner.OnLayoutCompletedListener[16], 0);
        this.measureIteration = 1L;
        MutableVector mutableVector = new MutableVector(new PostponedRequest[16], 0);
        this.postponedMeasureRequests = mutableVector;
        this.consistencyChecker = companion.getEnableExtraAssertions() ? new LayoutTreeConsistencyChecker(layoutNode, depthSortedSetsForDifferentPasses, mutableVector.asMutableList()) : null;
    }

    public final boolean getHasPendingMeasureOrLayout() {
        return this.relayoutNodes.isNotEmpty();
    }

    public final boolean getHasPendingOnPositionedCallbacks() {
        return this.onPositionedDispatcher.isNotEmpty();
    }

    public final long getMeasureIteration() {
        if (!this.duringMeasureLayout) {
            InlineClassHelperKt.throwIllegalArgumentException("measureIteration should be only used during the measure/layout pass");
        }
        return this.measureIteration;
    }

    /* renamed from: updateRootConstraints-BRTryo0, reason: not valid java name */
    public final void m1861updateRootConstraintsBRTryo0(long j) {
        Constraints constraints = this.rootConstraints;
        if (constraints == null ? false : Constraints.m2391equalsimpl0(constraints.m2403unboximpl(), j)) {
            return;
        }
        if (this.duringMeasureLayout) {
            InlineClassHelperKt.throwIllegalArgumentException("updateRootConstraints called while measuring");
        }
        this.rootConstraints = Constraints.m2386boximpl(j);
        if (this.root.getLookaheadRoot$ui_release() != null) {
            this.root.markLookaheadMeasurePending$ui_release();
        }
        this.root.markMeasurePending$ui_release();
        DepthSortedSetsForDifferentPasses depthSortedSetsForDifferentPasses = this.relayoutNodes;
        LayoutNode layoutNode = this.root;
        depthSortedSetsForDifferentPasses.add(layoutNode, layoutNode.getLookaheadRoot$ui_release() != null);
    }

    public final boolean requestLookaheadRemeasure(LayoutNode layoutNode, boolean z) {
        LayoutNode parent$ui_release;
        LayoutNode parent$ui_release2;
        if (!(layoutNode.getLookaheadRoot$ui_release() != null)) {
            InlineClassHelperKt.throwIllegalStateException("Error: requestLookaheadRemeasure cannot be called on a node outside LookaheadScope");
        }
        int i = WhenMappings.$EnumSwitchMapping$0[layoutNode.getLayoutState$ui_release().ordinal()];
        if (i == 1) {
            return false;
        }
        if (i == 2 || i == 3 || i == 4) {
            this.postponedMeasureRequests.add(new PostponedRequest(layoutNode, true, z));
            LayoutTreeConsistencyChecker layoutTreeConsistencyChecker = this.consistencyChecker;
            if (layoutTreeConsistencyChecker == null) {
                return false;
            }
            layoutTreeConsistencyChecker.assertConsistent();
            return false;
        }
        if (i != 5) {
            throw new NoWhenBranchMatchedException();
        }
        if (layoutNode.getLookaheadMeasurePending$ui_release() && !z) {
            return false;
        }
        layoutNode.markLookaheadMeasurePending$ui_release();
        layoutNode.markMeasurePending$ui_release();
        if (layoutNode.isDeactivated()) {
            return false;
        }
        if ((Intrinsics.areEqual(layoutNode.isPlacedInLookahead(), Boolean.TRUE) || getCanAffectParentInLookahead(layoutNode)) && ((parent$ui_release = layoutNode.getParent$ui_release()) == null || !parent$ui_release.getLookaheadMeasurePending$ui_release())) {
            this.relayoutNodes.add(layoutNode, true);
        } else if ((layoutNode.isPlaced() || getCanAffectParent(layoutNode)) && ((parent$ui_release2 = layoutNode.getParent$ui_release()) == null || !parent$ui_release2.getMeasurePending$ui_release())) {
            this.relayoutNodes.add(layoutNode, false);
        }
        return !this.duringFullMeasureLayoutPass;
    }

    public static /* synthetic */ boolean requestRemeasure$default(MeasureAndLayoutDelegate measureAndLayoutDelegate, LayoutNode layoutNode, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return measureAndLayoutDelegate.requestRemeasure(layoutNode, z);
    }

    public final boolean requestRemeasure(LayoutNode layoutNode, boolean z) {
        int i = WhenMappings.$EnumSwitchMapping$0[layoutNode.getLayoutState$ui_release().ordinal()];
        if (i != 1 && i != 2) {
            if (i == 3 || i == 4) {
                this.postponedMeasureRequests.add(new PostponedRequest(layoutNode, false, z));
                LayoutTreeConsistencyChecker layoutTreeConsistencyChecker = this.consistencyChecker;
                if (layoutTreeConsistencyChecker != null) {
                    layoutTreeConsistencyChecker.assertConsistent();
                }
            } else if (i == 5) {
                if (!layoutNode.getMeasurePending$ui_release() || z) {
                    layoutNode.markMeasurePending$ui_release();
                    if (!layoutNode.isDeactivated() && (layoutNode.isPlaced() || getCanAffectParent(layoutNode))) {
                        LayoutNode parent$ui_release = layoutNode.getParent$ui_release();
                        if (parent$ui_release == null || !parent$ui_release.getMeasurePending$ui_release()) {
                            this.relayoutNodes.add(layoutNode, false);
                        }
                        if (!this.duringFullMeasureLayoutPass) {
                            return true;
                        }
                    }
                }
            } else {
                throw new NoWhenBranchMatchedException();
            }
        }
        return false;
    }

    private final void ensureSubtreeLookaheadReplaced(LayoutNode layoutNode) {
        MutableVector mutableVector = layoutNode.get_children$ui_release();
        int size = mutableVector.getSize();
        if (size > 0) {
            Object[] content = mutableVector.getContent();
            int i = 0;
            do {
                LayoutNode layoutNode2 = (LayoutNode) content[i];
                if (Intrinsics.areEqual(layoutNode2.isPlacedInLookahead(), Boolean.TRUE) && !layoutNode2.isDeactivated()) {
                    if (this.relayoutNodes.contains(layoutNode2, true)) {
                        layoutNode2.lookaheadReplace$ui_release();
                    }
                    ensureSubtreeLookaheadReplaced(layoutNode2);
                }
                i++;
            } while (i < size);
        }
    }

    private final void forceMeasureTheSubtreeInternal(LayoutNode layoutNode, boolean z) {
        MutableVector mutableVector = layoutNode.get_children$ui_release();
        int size = mutableVector.getSize();
        if (size > 0) {
            Object[] content = mutableVector.getContent();
            int i = 0;
            do {
                LayoutNode layoutNode2 = (LayoutNode) content[i];
                if ((!z && getMeasureAffectsParent(layoutNode2)) || (z && getMeasureAffectsParentLookahead(layoutNode2))) {
                    if (LayoutNodeLayoutDelegateKt.isOutMostLookaheadRoot(layoutNode2) && !z) {
                        if (layoutNode2.getLookaheadMeasurePending$ui_release() && this.relayoutNodes.contains(layoutNode2, true)) {
                            remeasureAndRelayoutIfNeeded(layoutNode2, true, false);
                        } else {
                            forceMeasureTheSubtree(layoutNode2, true);
                        }
                    }
                    onlyRemeasureIfScheduled(layoutNode2, z);
                    if (!measurePending(layoutNode2, z)) {
                        forceMeasureTheSubtreeInternal(layoutNode2, z);
                    }
                }
                i++;
            } while (i < size);
        }
        onlyRemeasureIfScheduled(layoutNode, z);
    }

    private final void remeasureLookaheadRootsInSubtree(LayoutNode layoutNode) {
        MutableVector mutableVector = layoutNode.get_children$ui_release();
        int size = mutableVector.getSize();
        if (size > 0) {
            Object[] content = mutableVector.getContent();
            int i = 0;
            do {
                LayoutNode layoutNode2 = (LayoutNode) content[i];
                if (getMeasureAffectsParent(layoutNode2)) {
                    if (LayoutNodeLayoutDelegateKt.isOutMostLookaheadRoot(layoutNode2)) {
                        remeasureOnly(layoutNode2, true);
                    } else {
                        remeasureLookaheadRootsInSubtree(layoutNode2);
                    }
                }
                i++;
            } while (i < size);
        }
    }

    public final boolean requestLookaheadRelayout(LayoutNode layoutNode, boolean z) {
        int i = WhenMappings.$EnumSwitchMapping$0[layoutNode.getLayoutState$ui_release().ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i != 4 && i != 5) {
                        throw new NoWhenBranchMatchedException();
                    }
                }
            }
            if ((layoutNode.getLookaheadMeasurePending$ui_release() || layoutNode.getLookaheadLayoutPending$ui_release()) && !z) {
                LayoutTreeConsistencyChecker layoutTreeConsistencyChecker = this.consistencyChecker;
                if (layoutTreeConsistencyChecker == null) {
                    return false;
                }
                layoutTreeConsistencyChecker.assertConsistent();
                return false;
            }
            layoutNode.markLookaheadLayoutPending$ui_release();
            layoutNode.markLayoutPending$ui_release();
            if (layoutNode.isDeactivated()) {
                return false;
            }
            LayoutNode parent$ui_release = layoutNode.getParent$ui_release();
            if (Intrinsics.areEqual(layoutNode.isPlacedInLookahead(), Boolean.TRUE) && ((parent$ui_release == null || !parent$ui_release.getLookaheadMeasurePending$ui_release()) && (parent$ui_release == null || !parent$ui_release.getLookaheadLayoutPending$ui_release()))) {
                this.relayoutNodes.add(layoutNode, true);
            } else if (layoutNode.isPlaced() && ((parent$ui_release == null || !parent$ui_release.getLayoutPending$ui_release()) && (parent$ui_release == null || !parent$ui_release.getMeasurePending$ui_release()))) {
                this.relayoutNodes.add(layoutNode, false);
            }
            return !this.duringFullMeasureLayoutPass;
        }
        LayoutTreeConsistencyChecker layoutTreeConsistencyChecker2 = this.consistencyChecker;
        if (layoutTreeConsistencyChecker2 == null) {
            return false;
        }
        layoutTreeConsistencyChecker2.assertConsistent();
        return false;
    }

    public final boolean requestRelayout(LayoutNode layoutNode, boolean z) {
        int i = WhenMappings.$EnumSwitchMapping$0[layoutNode.getLayoutState$ui_release().ordinal()];
        if (i == 1 || i == 2 || i == 3 || i == 4) {
            LayoutTreeConsistencyChecker layoutTreeConsistencyChecker = this.consistencyChecker;
            if (layoutTreeConsistencyChecker != null) {
                layoutTreeConsistencyChecker.assertConsistent();
            }
        } else if (i == 5) {
            if (!z && layoutNode.isPlaced() == layoutNode.isPlacedByParent() && (layoutNode.getMeasurePending$ui_release() || layoutNode.getLayoutPending$ui_release())) {
                LayoutTreeConsistencyChecker layoutTreeConsistencyChecker2 = this.consistencyChecker;
                if (layoutTreeConsistencyChecker2 != null) {
                    layoutTreeConsistencyChecker2.assertConsistent();
                }
            } else {
                layoutNode.markLayoutPending$ui_release();
                if (!layoutNode.isDeactivated() && layoutNode.isPlacedByParent()) {
                    LayoutNode parent$ui_release = layoutNode.getParent$ui_release();
                    if ((parent$ui_release == null || !parent$ui_release.getLayoutPending$ui_release()) && (parent$ui_release == null || !parent$ui_release.getMeasurePending$ui_release())) {
                        this.relayoutNodes.add(layoutNode, false);
                    }
                    if (!this.duringFullMeasureLayoutPass) {
                        return true;
                    }
                }
            }
        } else {
            throw new NoWhenBranchMatchedException();
        }
        return false;
    }

    public final void requestOnPositionedCallback(LayoutNode layoutNode) {
        this.onPositionedDispatcher.onNodePositioned(layoutNode);
    }

    /* renamed from: doLookaheadRemeasure-sdFAvZA, reason: not valid java name */
    private final boolean m1858doLookaheadRemeasuresdFAvZA(LayoutNode layoutNode, Constraints constraints) {
        boolean m1815lookaheadRemeasure_Sx5XlM$ui_release$default;
        if (layoutNode.getLookaheadRoot$ui_release() == null) {
            return false;
        }
        if (constraints != null) {
            m1815lookaheadRemeasure_Sx5XlM$ui_release$default = layoutNode.m1819lookaheadRemeasure_Sx5XlM$ui_release(constraints);
        } else {
            m1815lookaheadRemeasure_Sx5XlM$ui_release$default = LayoutNode.m1815lookaheadRemeasure_Sx5XlM$ui_release$default(layoutNode, null, 1, null);
        }
        LayoutNode parent$ui_release = layoutNode.getParent$ui_release();
        if (m1815lookaheadRemeasure_Sx5XlM$ui_release$default && parent$ui_release != null) {
            if (parent$ui_release.getLookaheadRoot$ui_release() == null) {
                LayoutNode.requestRemeasure$ui_release$default(parent$ui_release, false, false, false, 3, null);
            } else if (layoutNode.getMeasuredByParentInLookahead$ui_release() == LayoutNode.UsageByParent.InMeasureBlock) {
                LayoutNode.requestLookaheadRemeasure$ui_release$default(parent$ui_release, false, false, false, 3, null);
            } else if (layoutNode.getMeasuredByParentInLookahead$ui_release() == LayoutNode.UsageByParent.InLayoutBlock) {
                LayoutNode.requestLookaheadRelayout$ui_release$default(parent$ui_release, false, 1, null);
            }
        }
        return m1815lookaheadRemeasure_Sx5XlM$ui_release$default;
    }

    /* renamed from: doRemeasure-sdFAvZA, reason: not valid java name */
    private final boolean m1859doRemeasuresdFAvZA(LayoutNode layoutNode, Constraints constraints) {
        boolean m1816remeasure_Sx5XlM$ui_release$default;
        if (constraints != null) {
            m1816remeasure_Sx5XlM$ui_release$default = layoutNode.m1820remeasure_Sx5XlM$ui_release(constraints);
        } else {
            m1816remeasure_Sx5XlM$ui_release$default = LayoutNode.m1816remeasure_Sx5XlM$ui_release$default(layoutNode, null, 1, null);
        }
        LayoutNode parent$ui_release = layoutNode.getParent$ui_release();
        if (m1816remeasure_Sx5XlM$ui_release$default && parent$ui_release != null) {
            if (layoutNode.getMeasuredByParent$ui_release() == LayoutNode.UsageByParent.InMeasureBlock) {
                LayoutNode.requestRemeasure$ui_release$default(parent$ui_release, false, false, false, 3, null);
            } else if (layoutNode.getMeasuredByParent$ui_release() == LayoutNode.UsageByParent.InLayoutBlock) {
                LayoutNode.requestRelayout$ui_release$default(parent$ui_release, false, 1, null);
            }
        }
        return m1816remeasure_Sx5XlM$ui_release$default;
    }

    public final void measureOnly() {
        if (this.relayoutNodes.isNotEmpty()) {
            if (!this.root.isAttached()) {
                InlineClassHelperKt.throwIllegalArgumentException("performMeasureAndLayout called with unattached root");
            }
            if (!this.root.isPlaced()) {
                InlineClassHelperKt.throwIllegalArgumentException("performMeasureAndLayout called with unplaced root");
            }
            if (this.duringMeasureLayout) {
                InlineClassHelperKt.throwIllegalArgumentException("performMeasureAndLayout called during measure layout");
            }
            if (this.rootConstraints != null) {
                this.duringMeasureLayout = true;
                this.duringFullMeasureLayoutPass = false;
                try {
                    if (!this.relayoutNodes.isEmpty(true)) {
                        if (this.root.getLookaheadRoot$ui_release() != null) {
                            remeasureOnly(this.root, true);
                        } else {
                            remeasureLookaheadRootsInSubtree(this.root);
                        }
                    }
                    remeasureOnly(this.root, false);
                    this.duringMeasureLayout = false;
                    this.duringFullMeasureLayoutPass = false;
                    LayoutTreeConsistencyChecker layoutTreeConsistencyChecker = this.consistencyChecker;
                    if (layoutTreeConsistencyChecker != null) {
                        layoutTreeConsistencyChecker.assertConsistent();
                    }
                } catch (Throwable th) {
                    this.duringMeasureLayout = false;
                    this.duringFullMeasureLayoutPass = false;
                    throw th;
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x0091  */
    /* renamed from: measureAndLayout-0kLqBqw, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m1860measureAndLayout0kLqBqw(androidx.compose.ui.node.LayoutNode r4, long r5) {
        /*
            r3 = this;
            boolean r0 = r4.isDeactivated()
            if (r0 == 0) goto L7
            return
        L7:
            androidx.compose.ui.node.LayoutNode r0 = r3.root
            boolean r0 = kotlin.jvm.internal.Intrinsics.areEqual(r4, r0)
            if (r0 == 0) goto L14
            java.lang.String r0 = "measureAndLayout called on root"
            androidx.compose.ui.internal.InlineClassHelperKt.throwIllegalArgumentException(r0)
        L14:
            androidx.compose.ui.node.LayoutNode r0 = r3.root
            boolean r0 = r0.isAttached()
            if (r0 != 0) goto L21
            java.lang.String r0 = "performMeasureAndLayout called with unattached root"
            androidx.compose.ui.internal.InlineClassHelperKt.throwIllegalArgumentException(r0)
        L21:
            androidx.compose.ui.node.LayoutNode r0 = r3.root
            boolean r0 = r0.isPlaced()
            if (r0 != 0) goto L2e
            java.lang.String r0 = "performMeasureAndLayout called with unplaced root"
            androidx.compose.ui.internal.InlineClassHelperKt.throwIllegalArgumentException(r0)
        L2e:
            boolean r0 = r3.duringMeasureLayout
            if (r0 == 0) goto L37
            java.lang.String r0 = "performMeasureAndLayout called during measure layout"
            androidx.compose.ui.internal.InlineClassHelperKt.throwIllegalArgumentException(r0)
        L37:
            androidx.compose.ui.unit.Constraints r0 = r3.rootConstraints
            if (r0 == 0) goto L9a
            r0 = 1
            r3.duringMeasureLayout = r0
            r0 = 0
            r3.duringFullMeasureLayoutPass = r0
            androidx.compose.ui.node.DepthSortedSetsForDifferentPasses r1 = r3.relayoutNodes     // Catch: java.lang.Throwable -> L57
            r1.remove(r4)     // Catch: java.lang.Throwable -> L57
            androidx.compose.ui.unit.Constraints r1 = androidx.compose.ui.unit.Constraints.m2386boximpl(r5)     // Catch: java.lang.Throwable -> L57
            boolean r1 = r3.m1858doLookaheadRemeasuresdFAvZA(r4, r1)     // Catch: java.lang.Throwable -> L57
            if (r1 != 0) goto L59
            boolean r1 = r4.getLookaheadLayoutPending$ui_release()     // Catch: java.lang.Throwable -> L57
            if (r1 == 0) goto L68
            goto L59
        L57:
            r4 = move-exception
            goto L95
        L59:
            java.lang.Boolean r1 = r4.isPlacedInLookahead()     // Catch: java.lang.Throwable -> L57
            java.lang.Boolean r2 = java.lang.Boolean.TRUE     // Catch: java.lang.Throwable -> L57
            boolean r1 = kotlin.jvm.internal.Intrinsics.areEqual(r1, r2)     // Catch: java.lang.Throwable -> L57
            if (r1 == 0) goto L68
            r4.lookaheadReplace$ui_release()     // Catch: java.lang.Throwable -> L57
        L68:
            r3.ensureSubtreeLookaheadReplaced(r4)     // Catch: java.lang.Throwable -> L57
            androidx.compose.ui.unit.Constraints r5 = androidx.compose.ui.unit.Constraints.m2386boximpl(r5)     // Catch: java.lang.Throwable -> L57
            r3.m1859doRemeasuresdFAvZA(r4, r5)     // Catch: java.lang.Throwable -> L57
            boolean r5 = r4.getLayoutPending$ui_release()     // Catch: java.lang.Throwable -> L57
            if (r5 == 0) goto L86
            boolean r5 = r4.isPlaced()     // Catch: java.lang.Throwable -> L57
            if (r5 == 0) goto L86
            r4.replace$ui_release()     // Catch: java.lang.Throwable -> L57
            androidx.compose.ui.node.OnPositionedDispatcher r5 = r3.onPositionedDispatcher     // Catch: java.lang.Throwable -> L57
            r5.onNodePositioned(r4)     // Catch: java.lang.Throwable -> L57
        L86:
            r3.drainPostponedMeasureRequests()     // Catch: java.lang.Throwable -> L57
            r3.duringMeasureLayout = r0
            r3.duringFullMeasureLayoutPass = r0
            androidx.compose.ui.node.LayoutTreeConsistencyChecker r4 = r3.consistencyChecker
            if (r4 == 0) goto L9a
            r4.assertConsistent()
            goto L9a
        L95:
            r3.duringMeasureLayout = r0
            r3.duringFullMeasureLayoutPass = r0
            throw r4
        L9a:
            r3.callOnLayoutCompletedListeners()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.node.MeasureAndLayoutDelegate.m1860measureAndLayout0kLqBqw(androidx.compose.ui.node.LayoutNode, long):void");
    }

    public final boolean measureAndLayout(Function0 function0) {
        boolean z;
        DepthSortedSet depthSortedSet;
        if (!this.root.isAttached()) {
            InlineClassHelperKt.throwIllegalArgumentException("performMeasureAndLayout called with unattached root");
        }
        if (!this.root.isPlaced()) {
            InlineClassHelperKt.throwIllegalArgumentException("performMeasureAndLayout called with unplaced root");
        }
        if (this.duringMeasureLayout) {
            InlineClassHelperKt.throwIllegalArgumentException("performMeasureAndLayout called during measure layout");
        }
        boolean z2 = false;
        if (this.rootConstraints != null) {
            this.duringMeasureLayout = true;
            this.duringFullMeasureLayoutPass = true;
            try {
                if (this.relayoutNodes.isNotEmpty()) {
                    DepthSortedSetsForDifferentPasses depthSortedSetsForDifferentPasses = this.relayoutNodes;
                    z = false;
                    while (depthSortedSetsForDifferentPasses.isNotEmpty()) {
                        depthSortedSet = depthSortedSetsForDifferentPasses.lookaheadSet;
                        boolean isEmpty = depthSortedSet.isEmpty();
                        boolean z3 = !isEmpty;
                        LayoutNode pop = (!isEmpty ? depthSortedSetsForDifferentPasses.lookaheadSet : depthSortedSetsForDifferentPasses.set).pop();
                        boolean remeasureAndRelayoutIfNeeded$default = remeasureAndRelayoutIfNeeded$default(this, pop, z3, false, 4, null);
                        if (pop == this.root && remeasureAndRelayoutIfNeeded$default) {
                            z = true;
                        }
                    }
                    if (function0 != null) {
                        function0.invoke();
                    }
                } else {
                    z = false;
                }
                this.duringMeasureLayout = false;
                this.duringFullMeasureLayoutPass = false;
                LayoutTreeConsistencyChecker layoutTreeConsistencyChecker = this.consistencyChecker;
                if (layoutTreeConsistencyChecker != null) {
                    layoutTreeConsistencyChecker.assertConsistent();
                }
                z2 = z;
            } catch (Throwable th) {
                this.duringMeasureLayout = false;
                this.duringFullMeasureLayoutPass = false;
                throw th;
            }
        }
        callOnLayoutCompletedListeners();
        return z2;
    }

    private final void callOnLayoutCompletedListeners() {
        MutableVector mutableVector = this.onLayoutCompletedListeners;
        int size = mutableVector.getSize();
        if (size > 0) {
            Object[] content = mutableVector.getContent();
            int i = 0;
            do {
                ((Owner.OnLayoutCompletedListener) content[i]).onLayoutComplete();
                i++;
            } while (i < size);
        }
        this.onLayoutCompletedListeners.clear();
    }

    static /* synthetic */ boolean remeasureAndRelayoutIfNeeded$default(MeasureAndLayoutDelegate measureAndLayoutDelegate, LayoutNode layoutNode, boolean z, boolean z2, int i, Object obj) {
        if ((i & 2) != 0) {
            z = true;
        }
        if ((i & 4) != 0) {
            z2 = true;
        }
        return measureAndLayoutDelegate.remeasureAndRelayoutIfNeeded(layoutNode, z, z2);
    }

    private final boolean remeasureAndRelayoutIfNeeded(LayoutNode layoutNode, boolean z, boolean z2) {
        Constraints constraints;
        LayoutNode parent$ui_release;
        if (layoutNode.isDeactivated()) {
            return false;
        }
        if (layoutNode.isPlaced() || layoutNode.isPlacedByParent() || getCanAffectParent(layoutNode) || Intrinsics.areEqual(layoutNode.isPlacedInLookahead(), Boolean.TRUE) || getCanAffectParentInLookahead(layoutNode) || layoutNode.getAlignmentLinesRequired$ui_release()) {
            if (layoutNode == this.root) {
                constraints = this.rootConstraints;
                Intrinsics.checkNotNull(constraints);
            } else {
                constraints = null;
            }
            if (z) {
                r1 = layoutNode.getLookaheadMeasurePending$ui_release() ? m1858doLookaheadRemeasuresdFAvZA(layoutNode, constraints) : false;
                if (z2 && ((r1 || layoutNode.getLookaheadLayoutPending$ui_release()) && Intrinsics.areEqual(layoutNode.isPlacedInLookahead(), Boolean.TRUE))) {
                    layoutNode.lookaheadReplace$ui_release();
                }
            } else {
                boolean m1859doRemeasuresdFAvZA = layoutNode.getMeasurePending$ui_release() ? m1859doRemeasuresdFAvZA(layoutNode, constraints) : false;
                if (z2 && layoutNode.getLayoutPending$ui_release() && (layoutNode == this.root || ((parent$ui_release = layoutNode.getParent$ui_release()) != null && parent$ui_release.isPlaced() && layoutNode.isPlacedByParent()))) {
                    if (layoutNode == this.root) {
                        layoutNode.place$ui_release(0, 0);
                    } else {
                        layoutNode.replace$ui_release();
                    }
                    this.onPositionedDispatcher.onNodePositioned(layoutNode);
                    LayoutTreeConsistencyChecker layoutTreeConsistencyChecker = this.consistencyChecker;
                    if (layoutTreeConsistencyChecker != null) {
                        layoutTreeConsistencyChecker.assertConsistent();
                    }
                }
                r1 = m1859doRemeasuresdFAvZA;
            }
            drainPostponedMeasureRequests();
        }
        return r1;
    }

    private final void drainPostponedMeasureRequests() {
        if (this.postponedMeasureRequests.isNotEmpty()) {
            MutableVector mutableVector = this.postponedMeasureRequests;
            int size = mutableVector.getSize();
            if (size > 0) {
                Object[] content = mutableVector.getContent();
                int i = 0;
                do {
                    PostponedRequest postponedRequest = (PostponedRequest) content[i];
                    if (postponedRequest.getNode().isAttached()) {
                        if (!postponedRequest.isLookahead()) {
                            LayoutNode.requestRemeasure$ui_release$default(postponedRequest.getNode(), postponedRequest.isForced(), false, false, 2, null);
                        } else {
                            LayoutNode.requestLookaheadRemeasure$ui_release$default(postponedRequest.getNode(), postponedRequest.isForced(), false, false, 2, null);
                        }
                    }
                    i++;
                } while (i < size);
            }
            this.postponedMeasureRequests.clear();
        }
    }

    private final void remeasureOnly(LayoutNode layoutNode, boolean z) {
        Constraints constraints;
        if (layoutNode.isDeactivated()) {
            return;
        }
        if (layoutNode == this.root) {
            constraints = this.rootConstraints;
            Intrinsics.checkNotNull(constraints);
        } else {
            constraints = null;
        }
        if (z) {
            m1858doLookaheadRemeasuresdFAvZA(layoutNode, constraints);
        } else {
            m1859doRemeasuresdFAvZA(layoutNode, constraints);
        }
    }

    public final void forceMeasureTheSubtree(LayoutNode layoutNode, boolean z) {
        if (this.relayoutNodes.isEmpty(z)) {
            return;
        }
        if (!this.duringMeasureLayout) {
            InlineClassHelperKt.throwIllegalStateException("forceMeasureTheSubtree should be executed during the measureAndLayout pass");
        }
        if (measurePending(layoutNode, z)) {
            InlineClassHelperKt.throwIllegalArgumentException("node not yet measured");
        }
        forceMeasureTheSubtreeInternal(layoutNode, z);
    }

    private final void onlyRemeasureIfScheduled(LayoutNode layoutNode, boolean z) {
        if (measurePending(layoutNode, z) && this.relayoutNodes.contains(layoutNode, z)) {
            remeasureAndRelayoutIfNeeded(layoutNode, z, false);
        }
    }

    public static /* synthetic */ void dispatchOnPositionedCallbacks$default(MeasureAndLayoutDelegate measureAndLayoutDelegate, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        measureAndLayoutDelegate.dispatchOnPositionedCallbacks(z);
    }

    public final void dispatchOnPositionedCallbacks(boolean z) {
        if (z) {
            this.onPositionedDispatcher.onRootNodePositioned(this.root);
        }
        this.onPositionedDispatcher.dispatch();
    }

    public final void onNodeDetached(LayoutNode layoutNode) {
        this.relayoutNodes.remove(layoutNode);
        this.onPositionedDispatcher.remove(layoutNode);
    }

    private final boolean getMeasureAffectsParent(LayoutNode layoutNode) {
        return layoutNode.getMeasuredByParent$ui_release() == LayoutNode.UsageByParent.InMeasureBlock || layoutNode.getLayoutDelegate$ui_release().getAlignmentLinesOwner$ui_release().getAlignmentLines().getRequired$ui_release();
    }

    private final boolean getCanAffectParent(LayoutNode layoutNode) {
        return layoutNode.getMeasurePending$ui_release() && getMeasureAffectsParent(layoutNode);
    }

    private final boolean getCanAffectParentInLookahead(LayoutNode layoutNode) {
        return layoutNode.getLookaheadMeasurePending$ui_release() && getMeasureAffectsParentLookahead(layoutNode);
    }

    private final boolean getMeasureAffectsParentLookahead(LayoutNode layoutNode) {
        AlignmentLines alignmentLines;
        if (layoutNode.getMeasuredByParentInLookahead$ui_release() == LayoutNode.UsageByParent.InMeasureBlock) {
            return true;
        }
        AlignmentLinesOwner lookaheadAlignmentLinesOwner$ui_release = layoutNode.getLayoutDelegate$ui_release().getLookaheadAlignmentLinesOwner$ui_release();
        return (lookaheadAlignmentLinesOwner$ui_release == null || (alignmentLines = lookaheadAlignmentLinesOwner$ui_release.getAlignmentLines()) == null || !alignmentLines.getRequired$ui_release()) ? false : true;
    }

    private final boolean measurePending(LayoutNode layoutNode, boolean z) {
        return z ? layoutNode.getLookaheadMeasurePending$ui_release() : layoutNode.getMeasurePending$ui_release();
    }

    /* compiled from: MeasureAndLayoutDelegate.kt */
    public static final class PostponedRequest {
        private final boolean isForced;
        private final boolean isLookahead;
        private final LayoutNode node;

        public PostponedRequest(LayoutNode layoutNode, boolean z, boolean z2) {
            this.node = layoutNode;
            this.isLookahead = z;
            this.isForced = z2;
        }

        public final LayoutNode getNode() {
            return this.node;
        }

        public final boolean isForced() {
            return this.isForced;
        }

        public final boolean isLookahead() {
            return this.isLookahead;
        }
    }
}
