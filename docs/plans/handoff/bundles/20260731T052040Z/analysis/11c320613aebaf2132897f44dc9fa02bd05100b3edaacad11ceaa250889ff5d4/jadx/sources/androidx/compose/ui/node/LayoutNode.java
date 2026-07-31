package androidx.compose.ui.node;

import androidx.appcompat.widget.PopupMenu$1;
import androidx.cardview.widget.CardView;
import androidx.collection.MutableObjectList;
import androidx.compose.runtime.ComposeNodeLifecycleCallback;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.runtime.tooling.CompositionErrorContextImpl;
import androidx.compose.runtime.tooling.CompositionErrorContextKt;
import androidx.compose.ui.CombinedModifier;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.autofill.AndroidAutofillManager;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.ReusableGraphicsLayerScope;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.LayoutNodeSubcompositionsState;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.LookaheadPassDelegate;
import androidx.compose.ui.node.Owner;
import androidx.compose.ui.platform.AndroidComposeView;
import androidx.compose.ui.platform.GraphicsLayerOwnerLayer;
import androidx.compose.ui.platform.TestTagKt;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.semantics.SemanticsConfiguration;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.semantics.SemanticsProperties;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.spatial.RectManager;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.work.OperationKt;
import coil3.ComponentRegistry$Builder$$ExternalSyntheticLambda0;
import com.google.android.exoplayer2.util.Log;
import com.grack.nanojson.JsonParser;
import java.util.Arrays;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$ObjectRef;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.acra.util.ProcessFinisher;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class LayoutNode implements ComposeNodeLifecycleCallback, OwnerScope, ComposeUiNode {
    public final CardView.AnonymousClass1 _foldedChildren;
    public LayoutNode _foldedParent;
    public NodeCoordinator _innerLayerCoordinator;
    public Modifier _modifier;
    public SemanticsConfiguration _semanticsConfiguration;
    public MutableVector _unfoldedChildren;
    public final MutableVector _zSortedChildren;
    public boolean addedToRectList;
    public boolean canMultiMeasure;
    public CompositionLocalMap compositionLocalMap;
    public Density density;
    public int depth;
    public int globallyPositionedObservers;
    public boolean hasPositionalLayerTransformationsInOffsetFromRoot;
    public boolean ignoreRemeasureRequests;
    public boolean innerLayerCoordinatorIsDirty;
    public CardView.AnonymousClass1 intrinsicsPolicy;
    public UsageByParent intrinsicsUsageByParent;
    public boolean isCurrentlyCalculatingSemanticsConfiguration;
    public boolean isDeactivated;
    public boolean isSemanticsInvalidated;
    public final boolean isVirtual;
    public final LayoutNodeLayoutDelegate layoutDelegate;
    public LayoutDirection layoutDirection;
    public LayoutNode lookaheadRoot;
    public MeasurePolicy measurePolicy;
    public boolean needsOnGloballyPositionedDispatch;
    public final NodeChain nodes;
    public long outerToInnerOffset;
    public boolean outerToInnerOffsetDirty;
    public Owner owner;
    public Modifier pendingModifier;
    public UsageByParent previousIntrinsicsUsageByParent;
    public boolean rectInParentDirty;
    public int semanticsId;
    public LayoutNodeSubcompositionsState subcompositionsState;
    public boolean unfoldedVirtualChildrenListDirty;
    public ViewConfiguration viewConfiguration;
    public int virtualChildrenCount;
    public boolean zSortedChildrenInvalidated;
    public static final LayoutNode$Companion$ErrorMeasurePolicy$1 ErrorMeasurePolicy = new LayoutNode$Companion$ErrorMeasurePolicy$1("Undefined intrinsics block and it is required");
    public static final LayoutNode$Companion$DummyViewConfiguration$1 DummyViewConfiguration = new LayoutNode$Companion$DummyViewConfiguration$1();
    public static final LayoutNode$$ExternalSyntheticLambda3 ZComparator = new LayoutNode$$ExternalSyntheticLambda3(0);

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class LayoutState {
        public static final /* synthetic */ LayoutState[] $VALUES;
        public static final LayoutState Idle;
        public static final LayoutState LayingOut;
        public static final LayoutState LookaheadLayingOut;
        public static final LayoutState LookaheadMeasuring;
        public static final LayoutState Measuring;

        static {
            LayoutState layoutState = new LayoutState("Measuring", 0);
            Measuring = layoutState;
            LayoutState layoutState2 = new LayoutState("LookaheadMeasuring", 1);
            LookaheadMeasuring = layoutState2;
            LayoutState layoutState3 = new LayoutState("LayingOut", 2);
            LayingOut = layoutState3;
            LayoutState layoutState4 = new LayoutState("LookaheadLayingOut", 3);
            LookaheadLayingOut = layoutState4;
            LayoutState layoutState5 = new LayoutState("Idle", 4);
            Idle = layoutState5;
            $VALUES = new LayoutState[]{layoutState, layoutState2, layoutState3, layoutState4, layoutState5};
        }

        public static LayoutState valueOf(String str) {
            return (LayoutState) Enum.valueOf(LayoutState.class, str);
        }

        public static LayoutState[] values() {
            return (LayoutState[]) $VALUES.clone();
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public abstract class NoIntrinsicsMeasurePolicy implements MeasurePolicy {
        public final String error;

        public NoIntrinsicsMeasurePolicy(String str) {
            this.error = str;
        }

        @Override // androidx.compose.ui.layout.MeasurePolicy
        public final int maxIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
            throw new IllegalStateException(this.error.toString());
        }

        @Override // androidx.compose.ui.layout.MeasurePolicy
        public final int maxIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
            throw new IllegalStateException(this.error.toString());
        }

        @Override // androidx.compose.ui.layout.MeasurePolicy
        public final int minIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
            throw new IllegalStateException(this.error.toString());
        }

        @Override // androidx.compose.ui.layout.MeasurePolicy
        public final int minIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
            throw new IllegalStateException(this.error.toString());
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class UsageByParent {
        public static final /* synthetic */ UsageByParent[] $VALUES;
        public static final UsageByParent InLayoutBlock;
        public static final UsageByParent InMeasureBlock;
        public static final UsageByParent NotUsed;

        static {
            UsageByParent usageByParent = new UsageByParent("InMeasureBlock", 0);
            InMeasureBlock = usageByParent;
            UsageByParent usageByParent2 = new UsageByParent("InLayoutBlock", 1);
            InLayoutBlock = usageByParent2;
            UsageByParent usageByParent3 = new UsageByParent("NotUsed", 2);
            NotUsed = usageByParent3;
            $VALUES = new UsageByParent[]{usageByParent, usageByParent2, usageByParent3};
        }

        public static UsageByParent valueOf(String str) {
            return (UsageByParent) Enum.valueOf(UsageByParent.class, str);
        }

        public static UsageByParent[] values() {
            return (UsageByParent[]) $VALUES.clone();
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public abstract /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[LayoutState.values().length];
            try {
                iArr[4] = 1;
            } catch (NoSuchFieldError unused) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public LayoutNode(boolean z, int i) {
        this.isVirtual = z;
        this.semanticsId = i;
        this.outerToInnerOffset = 9223372034707292159L;
        this.outerToInnerOffsetDirty = true;
        this.rectInParentDirty = true;
        this._foldedChildren = new CardView.AnonymousClass1(17, new MutableVector(new LayoutNode[16]), new LayoutNode$_foldedChildren$1(this), false);
        this._zSortedChildren = new MutableVector(new LayoutNode[16]);
        this.zSortedChildrenInvalidated = true;
        this.measurePolicy = ErrorMeasurePolicy;
        this.density = LayoutNodeKt.DefaultDensity;
        this.layoutDirection = LayoutDirection.Ltr;
        this.viewConfiguration = DummyViewConfiguration;
        CompositionLocalMap.Companion.getClass();
        this.compositionLocalMap = CompositionLocalMap.Companion.Empty;
        UsageByParent usageByParent = UsageByParent.NotUsed;
        this.intrinsicsUsageByParent = usageByParent;
        this.previousIntrinsicsUsageByParent = usageByParent;
        this.nodes = new NodeChain(this);
        this.layoutDelegate = new LayoutNodeLayoutDelegate(this);
        this.innerLayerCoordinatorIsDirty = true;
        this._modifier = Modifier.Companion.$$INSTANCE;
    }

    private final String exceptionMessageForParentingOrOwnership(LayoutNode layoutNode) {
        StringBuilder sb = new StringBuilder("Cannot insert ");
        sb.append(layoutNode);
        sb.append(" because it already has a parent or an owner. This tree: ");
        sb.append(debugTreeToString(0));
        sb.append(" Other tree: ");
        LayoutNode layoutNode2 = layoutNode._foldedParent;
        sb.append(layoutNode2 != null ? layoutNode2.debugTreeToString(0) : null);
        return sb.toString();
    }

    public static void requestLookaheadRemeasure$ui$default(LayoutNode layoutNode, boolean z, int i) {
        LayoutNode parent$ui;
        if ((i & 1) != 0) {
            z = false;
        }
        boolean z2 = (i & 2) != 0;
        boolean z3 = (i & 4) != 0;
        if (layoutNode.lookaheadRoot == null) {
            InlineClassHelperKt.throwIllegalStateException("Lookahead measure cannot be requested on a node that is not a part of the LookaheadScope");
        }
        Owner owner = layoutNode.owner;
        if (owner == null || layoutNode.ignoreRemeasureRequests || layoutNode.isVirtual) {
            return;
        }
        ((AndroidComposeView) owner).onRequestMeasure(layoutNode, true, z, z2);
        if (z3) {
            LookaheadPassDelegate lookaheadPassDelegate = layoutNode.layoutDelegate.lookaheadPassDelegate;
            lookaheadPassDelegate.getClass();
            LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = lookaheadPassDelegate.layoutNodeLayoutDelegate;
            LayoutNode parent$ui2 = layoutNodeLayoutDelegate.layoutNode.getParent$ui();
            UsageByParent usageByParent = layoutNodeLayoutDelegate.layoutNode.intrinsicsUsageByParent;
            if (parent$ui2 == null || usageByParent == UsageByParent.NotUsed) {
                return;
            }
            while (parent$ui2.intrinsicsUsageByParent == usageByParent && (parent$ui = parent$ui2.getParent$ui()) != null) {
                parent$ui2 = parent$ui;
            }
            int ordinal = usageByParent.ordinal();
            if (ordinal == 0) {
                if (parent$ui2.lookaheadRoot != null) {
                    requestLookaheadRemeasure$ui$default(parent$ui2, z, 6);
                    return;
                } else {
                    requestRemeasure$ui$default(parent$ui2, z, 6);
                    return;
                }
            }
            if (ordinal != 1) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$2("Intrinsics isn't used by the parent");
            } else if (parent$ui2.lookaheadRoot != null) {
                parent$ui2.requestLookaheadRelayout$ui(z);
            } else {
                parent$ui2.requestRelayout$ui(z);
            }
        }
    }

    public static void requestRemeasure$ui$default(LayoutNode layoutNode, boolean z, int i) {
        Owner owner;
        LayoutNode parent$ui;
        if ((i & 1) != 0) {
            z = false;
        }
        boolean z2 = (i & 2) != 0;
        boolean z3 = (i & 4) != 0;
        if (layoutNode.ignoreRemeasureRequests || layoutNode.isVirtual || (owner = layoutNode.owner) == null) {
            return;
        }
        ((AndroidComposeView) owner).onRequestMeasure(layoutNode, false, z, z2);
        if (z3) {
            LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = layoutNode.layoutDelegate.measurePassDelegate.layoutNodeLayoutDelegate;
            LayoutNode parent$ui2 = layoutNodeLayoutDelegate.layoutNode.getParent$ui();
            UsageByParent usageByParent = layoutNodeLayoutDelegate.layoutNode.intrinsicsUsageByParent;
            if (parent$ui2 == null || usageByParent == UsageByParent.NotUsed) {
                return;
            }
            while (parent$ui2.intrinsicsUsageByParent == usageByParent && (parent$ui = parent$ui2.getParent$ui()) != null) {
                parent$ui2 = parent$ui;
            }
            int ordinal = usageByParent.ordinal();
            if (ordinal == 0) {
                requestRemeasure$ui$default(parent$ui2, z, 6);
            } else if (ordinal == 1) {
                parent$ui2.requestRelayout$ui(z);
            } else {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$2("Intrinsics isn't used by the parent");
            }
        }
    }

    public static void rescheduleRemeasureOrRelayout$ui(LayoutNode layoutNode) {
        int i = WhenMappings.$EnumSwitchMapping$0[layoutNode.layoutDelegate.layoutState.ordinal()];
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = layoutNode.layoutDelegate;
        if (i != 1) {
            LayoutNode$$ExternalSyntheticBUOutline0.m(layoutNodeLayoutDelegate.layoutState, "Unexpected state ");
            return;
        }
        if (layoutNodeLayoutDelegate.lookaheadMeasurePending) {
            requestLookaheadRemeasure$ui$default(layoutNode, true, 6);
            return;
        }
        if (layoutNodeLayoutDelegate.lookaheadLayoutPending) {
            layoutNode.requestLookaheadRelayout$ui(true);
        }
        if (layoutNode.getMeasurePending$ui()) {
            requestRemeasure$ui$default(layoutNode, true, 6);
        } else if (layoutNode.getLayoutPending$ui()) {
            layoutNode.requestRelayout$ui(true);
        }
    }

    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v16 */
    /* JADX WARN: Type inference failed for: r7v17 */
    /* JADX WARN: Type inference failed for: r7v3, types: [androidx.compose.ui.Modifier$Node, androidx.compose.ui.node.NodeCoordinator] */
    public final void applyModifier(Modifier modifier) {
        ?? r7;
        NodeChain nodeChain;
        NodeChain$sentinelHead$1 nodeChain$sentinelHead$1;
        MutableVector mutableVector;
        boolean z;
        boolean z2;
        boolean z3;
        MutableVector mutableVector2;
        boolean z4;
        Function1 function1;
        NodeChain nodeChain2 = this.nodes;
        boolean m339hasH91voCI$ui = nodeChain2.m339hasH91voCI$ui(16);
        Modifier.Node node = nodeChain2.tail;
        boolean m339hasH91voCI$ui2 = nodeChain2.m339hasH91voCI$ui(1024);
        this._modifier = modifier;
        InnerNodeCoordinator innerNodeCoordinator = nodeChain2.innerCoordinator;
        LayoutNode layoutNode = nodeChain2.layoutNode;
        Modifier.Node node2 = nodeChain2.head;
        NodeChain$sentinelHead$1 nodeChain$sentinelHead$12 = nodeChain2.sentinelHead;
        if (node2 == nodeChain$sentinelHead$12) {
            InlineClassHelperKt.throwIllegalStateException("padChain called on already padded chain");
        }
        Modifier.Node node3 = nodeChain2.head;
        node3.parent = nodeChain$sentinelHead$12;
        nodeChain$sentinelHead$12.child = node3;
        MutableVector mutableVector3 = nodeChain2.current;
        int i = mutableVector3 != null ? mutableVector3.size : 0;
        final MutableVector mutableVector4 = nodeChain2.buffer;
        if (mutableVector4 == null) {
            mutableVector4 = new MutableVector(new Modifier.Element[16]);
        }
        MutableVector mutableVector5 = nodeChain2.stack;
        mutableVector5.add(modifier);
        Function1 function12 = null;
        while (true) {
            int i2 = mutableVector5.size;
            if (i2 == 0) {
                break;
            }
            Modifier modifier2 = (Modifier) mutableVector5.removeAt(i2 - 1);
            if (modifier2 instanceof CombinedModifier) {
                CombinedModifier combinedModifier = (CombinedModifier) modifier2;
                mutableVector5.add(combinedModifier.inner);
                mutableVector5.add(combinedModifier.outer);
            } else if (modifier2 instanceof Modifier.Element) {
                mutableVector4.add(modifier2);
            } else {
                if (function12 == null) {
                    function1 = new Function1() { // from class: androidx.compose.ui.node.NodeChainKt$fillVector$1
                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            MutableVector.this.add((Modifier.Element) obj);
                            return Boolean.TRUE;
                        }
                    };
                    function12 = function1;
                } else {
                    function1 = function12;
                }
                modifier2.all(function1);
            }
        }
        int i3 = mutableVector4.size;
        if (i3 == i) {
            Modifier.Node node4 = nodeChain$sentinelHead$12.child;
            int i4 = 0;
            while (node4 != null && i4 < i) {
                if (mutableVector3 == null) {
                    throw Modifier.CC.m("expected prior modifier list to be non-empty");
                }
                Modifier.Element element = (Modifier.Element) mutableVector3.content[i4];
                Modifier.Element element2 = (Modifier.Element) mutableVector4.content[i4];
                if (Intrinsics.areEqual(element, element2)) {
                    mutableVector2 = mutableVector3;
                    z4 = 2;
                } else {
                    mutableVector2 = mutableVector3;
                    z4 = element.getClass() == element2.getClass();
                }
                if (!z4) {
                    node4 = node4.parent;
                    break;
                }
                if (z4) {
                    NodeChain.updateNode(element, element2, node4);
                }
                node4 = node4.child;
                i4++;
                mutableVector3 = mutableVector2;
            }
            mutableVector2 = mutableVector3;
            if (i4 >= i) {
                nodeChain2 = nodeChain2;
                mutableVector3 = mutableVector2;
                z2 = false;
                nodeChain = nodeChain2;
                nodeChain$sentinelHead$1 = nodeChain$sentinelHead$12;
                mutableVector = mutableVector4;
                z = false;
                r7 = z2;
            } else {
                if (mutableVector2 == null) {
                    throw Modifier.CC.m("expected prior modifier list to be non-empty");
                }
                if (node4 == null) {
                    throw Modifier.CC.m("structuralUpdate requires a non-null tail");
                }
                boolean z5 = layoutNode.pendingModifier != null;
                Modifier.Node node5 = node4;
                nodeChain = nodeChain2;
                mutableVector = mutableVector4;
                mutableVector3 = mutableVector2;
                z3 = false;
                nodeChain.structuralUpdate(i4, mutableVector3, mutableVector, node5, !z5);
                nodeChain$sentinelHead$1 = nodeChain$sentinelHead$12;
                z = true;
                r7 = z3;
            }
        } else {
            r7 = 0;
            z3 = false;
            z2 = false;
            Modifier modifier3 = layoutNode.pendingModifier;
            if (modifier3 != null && i == 0) {
                Modifier.Node node6 = nodeChain$sentinelHead$12;
                for (int i5 = 0; i5 < mutableVector4.size; i5++) {
                    node6 = NodeChain.createAndInsertNodeAsChild((Modifier.Element) mutableVector4.content[i5], node6);
                }
                int i6 = 0;
                for (Modifier.Node node7 = node.parent; node7 != null && node7 != nodeChain$sentinelHead$12; node7 = node7.parent) {
                    i6 |= node7.kindSet;
                    node7.aggregateChildKindSet = i6;
                }
                nodeChain = nodeChain2;
                nodeChain$sentinelHead$1 = nodeChain$sentinelHead$12;
                mutableVector = mutableVector4;
                z = true;
                r7 = z3;
            } else if (i3 != 0) {
                if (mutableVector3 == null) {
                    mutableVector3 = new MutableVector(new Modifier.Element[16]);
                }
                nodeChain = nodeChain2;
                nodeChain$sentinelHead$1 = nodeChain$sentinelHead$12;
                mutableVector = mutableVector4;
                nodeChain.structuralUpdate(0, mutableVector3, mutableVector, nodeChain$sentinelHead$1, !(modifier3 != null));
                z = true;
            } else {
                if (mutableVector3 == null) {
                    throw Modifier.CC.m("expected prior modifier list to be non-empty");
                }
                Modifier.Node node8 = nodeChain$sentinelHead$12.child;
                for (int i7 = 0; node8 != null && i7 < mutableVector3.size; i7++) {
                    node8 = NodeChain.detachAndRemoveNode(node8).child;
                }
                LayoutNode parent$ui = layoutNode.getParent$ui();
                innerNodeCoordinator.wrappedBy = parent$ui != null ? parent$ui.nodes.innerCoordinator : null;
                nodeChain2.outerCoordinator = innerNodeCoordinator;
                nodeChain = nodeChain2;
                nodeChain$sentinelHead$1 = nodeChain$sentinelHead$12;
                mutableVector = mutableVector4;
                z = false;
                r7 = z2;
            }
        }
        nodeChain.current = mutableVector;
        if (mutableVector3 != null) {
            mutableVector3.clear();
        } else {
            mutableVector3 = r7;
        }
        nodeChain.buffer = mutableVector3;
        Modifier.Node node9 = nodeChain$sentinelHead$1.child;
        if (node9 != null) {
            node = node9;
        }
        node.parent = r7;
        nodeChain$sentinelHead$1.child = r7;
        nodeChain$sentinelHead$1.aggregateChildKindSet = -1;
        nodeChain$sentinelHead$1.coordinator = r7;
        if (node == nodeChain$sentinelHead$1) {
            InlineClassHelperKt.throwIllegalStateException("trimChain did not update the head");
        }
        nodeChain.head = node;
        if (z) {
            nodeChain.syncCoordinators();
        }
        boolean m339hasH91voCI$ui3 = nodeChain.m339hasH91voCI$ui(16);
        boolean m339hasH91voCI$ui4 = nodeChain.m339hasH91voCI$ui(1024);
        this.layoutDelegate.updateParentData();
        if (this.lookaheadRoot == null && nodeChain.m339hasH91voCI$ui(512)) {
            setLookaheadRoot(this);
        }
        if (m339hasH91voCI$ui == m339hasH91voCI$ui3 && m339hasH91voCI$ui2 == m339hasH91voCI$ui4) {
            return;
        }
        RectManager rectManager = ((AndroidComposeView) LayoutNodeKt.requireOwner(this)).getRectManager();
        rectManager.getClass();
        if (isAttached()) {
            JsonParser jsonParser = rectManager.rects;
            int i8 = this.semanticsId & 33554431;
            long[] jArr = (long[]) jsonParser.value;
            int i9 = jsonParser.token;
            for (int i10 = 0; i10 < jArr.length - 2 && i10 < i9; i10 += 3) {
                int i11 = i10 + 2;
                long j = jArr[i11];
                if ((((int) j) & 33554431) == i8) {
                    jArr[i11] = ((-6917529027641081857L) & j) | ((m339hasH91voCI$ui4 ? 1L : 0L) * 2305843009213693952L) | ((m339hasH91voCI$ui3 ? 1L : 0L) * 4611686018427387904L);
                    return;
                }
            }
        }
    }

    public final void attach$ui(Owner owner) {
        LayoutNode layoutNode;
        AndroidAutofillManager androidAutofillManager;
        SemanticsConfiguration semanticsConfiguration;
        if (this.owner != null) {
            InlineClassHelperKt.throwIllegalStateException("Cannot attach " + this + " as it already is attached.  Tree: " + debugTreeToString(0));
        }
        LayoutNode layoutNode2 = this._foldedParent;
        if (layoutNode2 != null && !Intrinsics.areEqual(layoutNode2.owner, owner)) {
            StringBuilder sb = new StringBuilder("Attaching to a different owner(");
            sb.append(owner);
            sb.append(") than the parent's owner(");
            LayoutNode parent$ui = getParent$ui();
            sb.append(parent$ui != null ? parent$ui.owner : null);
            sb.append("). This tree: ");
            sb.append(debugTreeToString(0));
            sb.append(" Parent tree: ");
            LayoutNode layoutNode3 = this._foldedParent;
            sb.append(layoutNode3 != null ? layoutNode3.debugTreeToString(0) : null);
            InlineClassHelperKt.throwIllegalStateException(sb.toString());
        }
        LayoutNode parent$ui2 = getParent$ui();
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = this.layoutDelegate;
        if (parent$ui2 == null) {
            layoutNodeLayoutDelegate.measurePassDelegate.isPlaced = true;
            ((AndroidComposeView) owner).getRectManager().recalculateRectIfDirty(this);
            LookaheadPassDelegate lookaheadPassDelegate = layoutNodeLayoutDelegate.lookaheadPassDelegate;
            if (lookaheadPassDelegate != null) {
                lookaheadPassDelegate._placedState = LookaheadPassDelegate.PlacedState.IsPlacedInLookahead;
            }
        }
        NodeChain nodeChain = this.nodes;
        nodeChain.outerCoordinator.wrappedBy = parent$ui2 != null ? parent$ui2.nodes.innerCoordinator : null;
        this.owner = owner;
        this.depth = (parent$ui2 != null ? parent$ui2.depth : -1) + 1;
        Modifier modifier = this.pendingModifier;
        if (modifier != null) {
            applyModifier(modifier);
        }
        this.pendingModifier = null;
        ((AndroidComposeView) owner).getLayoutNodes().set(this.semanticsId, this);
        LayoutNode layoutNode4 = this._foldedParent;
        if (layoutNode4 == null || (layoutNode = layoutNode4.lookaheadRoot) == null) {
            layoutNode = this.lookaheadRoot;
        }
        setLookaheadRoot(layoutNode);
        if (this.lookaheadRoot == null && nodeChain.m339hasH91voCI$ui(512)) {
            setLookaheadRoot(this);
        }
        if (!this.isDeactivated) {
            for (Modifier.Node node = nodeChain.head; node != null; node = node.child) {
                node.markAsAttached$ui();
            }
        }
        MutableVector mutableVector = (MutableVector) this._foldedChildren.mCardBackground;
        Object[] objArr = mutableVector.content;
        int i = mutableVector.size;
        for (int i2 = 0; i2 < i; i2++) {
            ((LayoutNode) objArr[i2]).attach$ui(owner);
        }
        if (!this.isDeactivated) {
            nodeChain.runAttachLifecycle();
        }
        invalidateMeasurements$ui();
        if (parent$ui2 != null) {
            parent$ui2.invalidateMeasurements$ui();
        }
        layoutNodeLayoutDelegate.updateParentData();
        if (!this.isDeactivated && nodeChain.m339hasH91voCI$ui(8)) {
            invalidateSemantics$ui();
        }
        AndroidComposeView androidComposeView = (AndroidComposeView) owner;
        if (!AndroidComposeView.autofillSupported() || (androidAutofillManager = androidComposeView._autofillManager) == null || (semanticsConfiguration = getSemanticsConfiguration()) == null || !semanticsConfiguration.props.contains(SemanticsProperties.ContentType)) {
            return;
        }
        androidAutofillManager.currentlyDisplayedIDs.add(this.semanticsId);
        androidAutofillManager.platformAutofillManager.notifyViewVisibilityChanged(androidAutofillManager.view, this.semanticsId, true);
    }

    public final void clearSubtreeIntrinsicsUsage$ui() {
        this.previousIntrinsicsUsageByParent = this.intrinsicsUsageByParent;
        UsageByParent usageByParent = UsageByParent.NotUsed;
        this.intrinsicsUsageByParent = usageByParent;
        MutableVector mutableVector = get_children$ui();
        Object[] objArr = mutableVector.content;
        int i = mutableVector.size;
        for (int i2 = 0; i2 < i; i2++) {
            LayoutNode layoutNode = (LayoutNode) objArr[i2];
            if (layoutNode.intrinsicsUsageByParent != usageByParent) {
                layoutNode.clearSubtreeIntrinsicsUsage$ui();
            }
        }
    }

    public final void clearSubtreePlacementIntrinsicsUsage() {
        this.previousIntrinsicsUsageByParent = this.intrinsicsUsageByParent;
        this.intrinsicsUsageByParent = UsageByParent.NotUsed;
        MutableVector mutableVector = get_children$ui();
        Object[] objArr = mutableVector.content;
        int i = mutableVector.size;
        for (int i2 = 0; i2 < i; i2++) {
            LayoutNode layoutNode = (LayoutNode) objArr[i2];
            if (layoutNode.intrinsicsUsageByParent == UsageByParent.InLayoutBlock) {
                layoutNode.clearSubtreePlacementIntrinsicsUsage();
            }
        }
    }

    public final String debugTreeToString(int i) {
        StringBuilder sb = new StringBuilder();
        for (int i2 = 0; i2 < i; i2++) {
            sb.append("  ");
        }
        sb.append("|-");
        sb.append(toString());
        sb.append('\n');
        MutableVector mutableVector = get_children$ui();
        Object[] objArr = mutableVector.content;
        int i3 = mutableVector.size;
        for (int i4 = 0; i4 < i3; i4++) {
            sb.append(((LayoutNode) objArr[i4]).debugTreeToString(i + 1));
        }
        String sb2 = sb.toString();
        return i == 0 ? Owner.CC.m(1, 0, sb2) : sb2;
    }

    public final void detach$ui() {
        AndroidAutofillManager androidAutofillManager;
        LookaheadAlignmentLines lookaheadAlignmentLines;
        Owner owner = this.owner;
        if (owner == null) {
            StringBuilder sb = new StringBuilder("Cannot detach node that is already detached!  Tree: ");
            LayoutNode parent$ui = getParent$ui();
            sb.append(parent$ui != null ? parent$ui.debugTreeToString(0) : null);
            InlineClassHelperKt.throwIllegalStateExceptionForNullCheck(sb.toString());
            LayoutNode$$ExternalSyntheticBUOutline0.m322m();
            return;
        }
        LayoutNode parent$ui2 = getParent$ui();
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = this.layoutDelegate;
        if (parent$ui2 != null) {
            parent$ui2.invalidateLayer$ui();
            parent$ui2.invalidateMeasurements$ui();
            MeasurePassDelegate measurePassDelegate = layoutNodeLayoutDelegate.measurePassDelegate;
            UsageByParent usageByParent = UsageByParent.NotUsed;
            measurePassDelegate.measuredByParent = usageByParent;
            LookaheadPassDelegate lookaheadPassDelegate = layoutNodeLayoutDelegate.lookaheadPassDelegate;
            if (lookaheadPassDelegate != null) {
                lookaheadPassDelegate.measuredByParent = usageByParent;
            }
        }
        LookaheadAlignmentLines lookaheadAlignmentLines2 = layoutNodeLayoutDelegate.measurePassDelegate.alignmentLines;
        lookaheadAlignmentLines2.dirty = true;
        lookaheadAlignmentLines2.usedDuringParentMeasurement = false;
        lookaheadAlignmentLines2.previousUsedDuringParentLayout = false;
        lookaheadAlignmentLines2.usedDuringParentLayout = false;
        lookaheadAlignmentLines2.usedByModifierMeasurement = false;
        lookaheadAlignmentLines2.usedByModifierLayout = false;
        lookaheadAlignmentLines2.queryOwner = null;
        LookaheadPassDelegate lookaheadPassDelegate2 = layoutNodeLayoutDelegate.lookaheadPassDelegate;
        if (lookaheadPassDelegate2 != null && (lookaheadAlignmentLines = lookaheadPassDelegate2.alignmentLines) != null) {
            lookaheadAlignmentLines.dirty = true;
            lookaheadAlignmentLines.usedDuringParentMeasurement = false;
            lookaheadAlignmentLines.previousUsedDuringParentLayout = false;
            lookaheadAlignmentLines.usedDuringParentLayout = false;
            lookaheadAlignmentLines.usedByModifierMeasurement = false;
            lookaheadAlignmentLines.usedByModifierLayout = false;
            lookaheadAlignmentLines.queryOwner = null;
        }
        NodeChain nodeChain = this.nodes;
        Modifier.Node node = nodeChain.tail;
        NodeCoordinator nodeCoordinator = nodeChain.innerCoordinator.wrapped;
        for (NodeCoordinator nodeCoordinator2 = nodeChain.outerCoordinator; !Intrinsics.areEqual(nodeCoordinator2, nodeCoordinator) && nodeCoordinator2 != null; nodeCoordinator2 = nodeCoordinator2.wrapped) {
            nodeCoordinator2.releaseLayer();
            if (nodeCoordinator2.layoutNode.isPlaced()) {
                nodeCoordinator2.onUnplaced();
            }
        }
        for (Modifier.Node node2 = node; node2 != null; node2 = node2.parent) {
            if (node2.isAttached) {
                node2.runDetachLifecycle$ui();
            }
        }
        this.ignoreRemeasureRequests = true;
        MutableVector mutableVector = (MutableVector) this._foldedChildren.mCardBackground;
        Object[] objArr = mutableVector.content;
        int i = mutableVector.size;
        for (int i2 = 0; i2 < i; i2++) {
            ((LayoutNode) objArr[i2]).detach$ui();
        }
        this.ignoreRemeasureRequests = false;
        while (node != null) {
            if (node.isAttached) {
                node.markAsDetached$ui();
            }
            node = node.parent;
        }
        AndroidComposeView androidComposeView = (AndroidComposeView) owner;
        androidComposeView.getLayoutNodes().remove(this.semanticsId);
        MeasureAndLayoutDelegate measureAndLayoutDelegate = androidComposeView.measureAndLayoutDelegate;
        ProcessFinisher processFinisher = measureAndLayoutDelegate.relayoutNodes;
        ((PopupMenu$1) processFinisher.context).remove(this);
        ((PopupMenu$1) processFinisher.config).remove(this);
        ((PopupMenu$1) processFinisher.lastActivityManager).remove(this);
        ((MutableVector) measureAndLayoutDelegate.onPositionedDispatcher.mCardBackground).remove(this);
        androidComposeView.observationClearRequested = true;
        if (AndroidComposeView.autofillSupported() && (androidAutofillManager = androidComposeView._autofillManager) != null && androidAutofillManager.currentlyDisplayedIDs.remove(this.semanticsId)) {
            androidAutofillManager.platformAutofillManager.notifyViewVisibilityChanged(androidAutofillManager.view, this.semanticsId, false);
        }
        androidComposeView.getRectManager().remove(this);
        this.owner = null;
        setLookaheadRoot(null);
        this.depth = 0;
        MeasurePassDelegate measurePassDelegate2 = layoutNodeLayoutDelegate.measurePassDelegate;
        measurePassDelegate2.placeOrder = Log.LOG_LEVEL_OFF;
        measurePassDelegate2.previousPlaceOrder = Log.LOG_LEVEL_OFF;
        measurePassDelegate2.isPlaced = false;
        LookaheadPassDelegate lookaheadPassDelegate3 = layoutNodeLayoutDelegate.lookaheadPassDelegate;
        if (lookaheadPassDelegate3 != null) {
            lookaheadPassDelegate3.placeOrder = Log.LOG_LEVEL_OFF;
            lookaheadPassDelegate3.previousPlaceOrder = Log.LOG_LEVEL_OFF;
            lookaheadPassDelegate3._placedState = LookaheadPassDelegate.PlacedState.IsNotPlaced;
        }
        if (nodeChain.m339hasH91voCI$ui(8)) {
            SemanticsConfiguration semanticsConfiguration = this._semanticsConfiguration;
            this._semanticsConfiguration = null;
            this.isSemanticsInvalidated = false;
            androidComposeView.getSemanticsOwner().notifySemanticsChange$ui(this, semanticsConfiguration);
            androidComposeView.onSemanticsChange();
        }
    }

    public final void draw$ui(Canvas canvas, GraphicsLayer graphicsLayer) {
        try {
            this.nodes.outerCoordinator.draw(canvas, graphicsLayer);
        } catch (Throwable th) {
            rethrowWithComposeStackTrace(th);
            throw null;
        }
    }

    public final void forceRemeasure() {
        if (this.lookaheadRoot != null) {
            requestLookaheadRemeasure$ui$default(this, false, 5);
        } else {
            requestRemeasure$ui$default(this, false, 5);
        }
        MeasurePassDelegate measurePassDelegate = this.layoutDelegate.measurePassDelegate;
        Constraints constraints = measurePassDelegate.measuredOnce ? new Constraints(measurePassDelegate.measurementConstraints) : null;
        Owner owner = this.owner;
        if (constraints != null) {
            if (owner != null) {
                ((AndroidComposeView) owner).m375measureAndLayout0kLqBqw(this, constraints.value);
            }
        } else if (owner != null) {
            ((AndroidComposeView) owner).measureAndLayout(true);
        }
    }

    public final List getChildLookaheadMeasurables$ui() {
        LookaheadPassDelegate lookaheadPassDelegate = this.layoutDelegate.lookaheadPassDelegate;
        lookaheadPassDelegate.getClass();
        MutableVector mutableVector = lookaheadPassDelegate._childDelegates;
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = lookaheadPassDelegate.layoutNodeLayoutDelegate;
        layoutNodeLayoutDelegate.layoutNode.getChildren$ui();
        if (!lookaheadPassDelegate.childDelegatesDirty) {
            return mutableVector.asMutableList();
        }
        LayoutNode layoutNode = layoutNodeLayoutDelegate.layoutNode;
        MutableVector mutableVector2 = layoutNode.get_children$ui();
        Object[] objArr = mutableVector2.content;
        int i = mutableVector2.size;
        for (int i2 = 0; i2 < i; i2++) {
            LayoutNode layoutNode2 = (LayoutNode) objArr[i2];
            if (mutableVector.size <= i2) {
                LookaheadPassDelegate lookaheadPassDelegate2 = layoutNode2.layoutDelegate.lookaheadPassDelegate;
                lookaheadPassDelegate2.getClass();
                mutableVector.add(lookaheadPassDelegate2);
            } else {
                LookaheadPassDelegate lookaheadPassDelegate3 = layoutNode2.layoutDelegate.lookaheadPassDelegate;
                lookaheadPassDelegate3.getClass();
                Object[] objArr2 = mutableVector.content;
                Object obj = objArr2[i2];
                objArr2[i2] = lookaheadPassDelegate3;
            }
        }
        mutableVector.removeRange(((MutableVector) ((MutableObjectList.ObjectListMutableList) layoutNode.getChildren$ui()).objectList).size, mutableVector.size);
        lookaheadPassDelegate.childDelegatesDirty = false;
        return mutableVector.asMutableList();
    }

    public final List getChildMeasurables$ui() {
        return this.layoutDelegate.measurePassDelegate.getChildDelegates$ui();
    }

    public final List getChildren$ui() {
        return get_children$ui().asMutableList();
    }

    public final List getFoldedChildren$ui() {
        return ((MutableVector) this._foldedChildren.mCardBackground).asMutableList();
    }

    public final boolean getLayoutPending$ui() {
        return this.layoutDelegate.measurePassDelegate.layoutPending;
    }

    public final boolean getMeasurePending$ui() {
        return this.layoutDelegate.measurePassDelegate.measurePending;
    }

    public final UsageByParent getMeasuredByParent$ui() {
        return this.layoutDelegate.measurePassDelegate.measuredByParent;
    }

    public final UsageByParent getMeasuredByParentInLookahead$ui() {
        UsageByParent usageByParent;
        LookaheadPassDelegate lookaheadPassDelegate = this.layoutDelegate.lookaheadPassDelegate;
        return (lookaheadPassDelegate == null || (usageByParent = lookaheadPassDelegate.measuredByParent) == null) ? UsageByParent.NotUsed : usageByParent;
    }

    public final CardView.AnonymousClass1 getOrCreateIntrinsicsPolicy() {
        CardView.AnonymousClass1 anonymousClass1 = this.intrinsicsPolicy;
        if (anonymousClass1 != null) {
            return anonymousClass1;
        }
        CardView.AnonymousClass1 anonymousClass12 = new CardView.AnonymousClass1(this, this.measurePolicy);
        this.intrinsicsPolicy = anonymousClass12;
        return anonymousClass12;
    }

    public final LayoutNode getParent$ui() {
        LayoutNode layoutNode = this._foldedParent;
        while (layoutNode != null && layoutNode.isVirtual) {
            layoutNode = layoutNode._foldedParent;
        }
        return layoutNode;
    }

    public final int getPlaceOrder$ui() {
        return this.layoutDelegate.measurePassDelegate.placeOrder;
    }

    public final SemanticsConfiguration getSemanticsConfiguration() {
        if (isAttached() && !this.isDeactivated && this.nodes.m339hasH91voCI$ui(8)) {
            return this._semanticsConfiguration;
        }
        return null;
    }

    public final MutableVector getZSortedChildren() {
        boolean z = this.zSortedChildrenInvalidated;
        MutableVector mutableVector = this._zSortedChildren;
        if (z) {
            mutableVector.clear();
            mutableVector.addAll(mutableVector.size, get_children$ui());
            Arrays.sort(mutableVector.content, 0, mutableVector.size, ZComparator);
            this.zSortedChildrenInvalidated = false;
        }
        return mutableVector;
    }

    public final MutableVector get_children$ui() {
        updateChildrenIfDirty$ui();
        if (this.virtualChildrenCount == 0) {
            return (MutableVector) this._foldedChildren.mCardBackground;
        }
        MutableVector mutableVector = this._unfoldedChildren;
        mutableVector.getClass();
        return mutableVector;
    }

    /* renamed from: hitTest-6fMxITs$ui, reason: not valid java name */
    public final void m319hitTest6fMxITs$ui(long j, HitTestResult hitTestResult, int i, boolean z) {
        NodeChain nodeChain = this.nodes;
        NodeCoordinator nodeCoordinator = nodeChain.outerCoordinator;
        ReusableGraphicsLayerScope reusableGraphicsLayerScope = NodeCoordinator.graphicsLayerScope;
        nodeChain.outerCoordinator.m348hitTestqzLsGqo(NodeCoordinator.PointerInputSource, nodeCoordinator.m343fromParentPosition8S9VItk(j), hitTestResult, i, z);
    }

    public final void insertAt$ui(int i, LayoutNode layoutNode) {
        if (layoutNode._foldedParent != null && layoutNode.owner != null) {
            InlineClassHelperKt.throwIllegalStateException(exceptionMessageForParentingOrOwnership(layoutNode));
        }
        layoutNode._foldedParent = this;
        CardView.AnonymousClass1 anonymousClass1 = this._foldedChildren;
        ((MutableVector) anonymousClass1.mCardBackground).add(i, layoutNode);
        ((LayoutNode$_foldedChildren$1) anonymousClass1.this$0).invoke();
        onZSortedChildrenInvalidated$ui();
        if (layoutNode.isVirtual) {
            this.virtualChildrenCount++;
        }
        invalidateUnfoldedVirtualChildren();
        Owner owner = this.owner;
        if (owner != null) {
            layoutNode.attach$ui(owner);
        }
        if (layoutNode.layoutDelegate.childrenAccessingCoordinatesDuringPlacement > 0) {
            LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = this.layoutDelegate;
            layoutNodeLayoutDelegate.setChildrenAccessingCoordinatesDuringPlacement(layoutNodeLayoutDelegate.childrenAccessingCoordinatesDuringPlacement + 1);
        }
        if (layoutNode.globallyPositionedObservers > 0) {
            setGloballyPositionedObservers(this.globallyPositionedObservers + 1);
        }
    }

    public final void invalidateLayer$ui() {
        if (this.innerLayerCoordinatorIsDirty) {
            NodeChain nodeChain = this.nodes;
            NodeCoordinator nodeCoordinator = nodeChain.innerCoordinator;
            NodeCoordinator nodeCoordinator2 = nodeChain.outerCoordinator.wrappedBy;
            this._innerLayerCoordinator = null;
            while (true) {
                if (Intrinsics.areEqual(nodeCoordinator, nodeCoordinator2)) {
                    break;
                }
                if ((nodeCoordinator != null ? nodeCoordinator.layer : null) != null) {
                    this._innerLayerCoordinator = nodeCoordinator;
                    break;
                }
                nodeCoordinator = nodeCoordinator != null ? nodeCoordinator.wrappedBy : null;
            }
            this.innerLayerCoordinatorIsDirty = false;
        }
        NodeCoordinator nodeCoordinator3 = this._innerLayerCoordinator;
        if (nodeCoordinator3 != null && nodeCoordinator3.layer == null) {
            throw Modifier.CC.m("layer was not set. This error is usually caused by operating off of the UI thread. Did you call invalidate() instead of postInvalidate()?");
        }
        if (nodeCoordinator3 != null) {
            nodeCoordinator3.invalidateLayer();
            return;
        }
        LayoutNode parent$ui = getParent$ui();
        if (parent$ui != null) {
            parent$ui.invalidateLayer$ui();
            return;
        }
        Owner owner = this.owner;
        if (owner != null) {
            ((AndroidComposeView) owner).invalidate();
        }
    }

    public final void invalidateLayers$ui() {
        NodeChain nodeChain = this.nodes;
        NodeCoordinator nodeCoordinator = nodeChain.outerCoordinator;
        InnerNodeCoordinator innerNodeCoordinator = nodeChain.innerCoordinator;
        while (nodeCoordinator != innerNodeCoordinator) {
            nodeCoordinator.getClass();
            LayoutModifierNodeCoordinator layoutModifierNodeCoordinator = (LayoutModifierNodeCoordinator) nodeCoordinator;
            OwnedLayer ownedLayer = layoutModifierNodeCoordinator.layer;
            if (ownedLayer != null) {
                ((GraphicsLayerOwnerLayer) ownedLayer).invalidate();
            }
            nodeCoordinator = layoutModifierNodeCoordinator.wrapped;
        }
        OwnedLayer ownedLayer2 = nodeChain.innerCoordinator.layer;
        if (ownedLayer2 != null) {
            ((GraphicsLayerOwnerLayer) ownedLayer2).invalidate();
        }
    }

    public final void invalidateMeasurements$ui() {
        if (this.isVirtual) {
            LayoutNode parent$ui = getParent$ui();
            if (parent$ui != null) {
                parent$ui.invalidateMeasurements$ui();
                return;
            }
            return;
        }
        if (this.lookaheadRoot != null) {
            requestLookaheadRemeasure$ui$default(this, false, 7);
        } else {
            requestRemeasure$ui$default(this, false, 7);
        }
    }

    public final void invalidateSemantics$ui() {
        if (this.isCurrentlyCalculatingSemanticsConfiguration) {
            return;
        }
        if (this.nodes.sentinelHead.child != null || this.pendingModifier != null) {
            this.isSemanticsInvalidated = true;
            return;
        }
        SemanticsConfiguration semanticsConfiguration = this._semanticsConfiguration;
        this.isCurrentlyCalculatingSemanticsConfiguration = true;
        final Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
        ref$ObjectRef.element = new SemanticsConfiguration();
        OwnerSnapshotObserver snapshotObserver = ((AndroidComposeView) LayoutNodeKt.requireOwner(this)).getSnapshotObserver();
        Function0 function0 = new Function0() { // from class: androidx.compose.ui.node.LayoutNode$calculateSemanticsConfiguration$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r2v0 */
            /* JADX WARN: Type inference failed for: r2v1, types: [androidx.compose.ui.Modifier$Node] */
            /* JADX WARN: Type inference failed for: r2v10 */
            /* JADX WARN: Type inference failed for: r2v11 */
            /* JADX WARN: Type inference failed for: r2v3 */
            /* JADX WARN: Type inference failed for: r2v4, types: [androidx.compose.ui.Modifier$Node] */
            /* JADX WARN: Type inference failed for: r2v5, types: [java.lang.Object] */
            /* JADX WARN: Type inference failed for: r2v6 */
            /* JADX WARN: Type inference failed for: r2v7 */
            /* JADX WARN: Type inference failed for: r2v8 */
            /* JADX WARN: Type inference failed for: r2v9 */
            /* JADX WARN: Type inference failed for: r3v0 */
            /* JADX WARN: Type inference failed for: r3v1 */
            /* JADX WARN: Type inference failed for: r3v10 */
            /* JADX WARN: Type inference failed for: r3v11 */
            /* JADX WARN: Type inference failed for: r3v2 */
            /* JADX WARN: Type inference failed for: r3v3, types: [androidx.compose.runtime.collection.MutableVector] */
            /* JADX WARN: Type inference failed for: r3v4 */
            /* JADX WARN: Type inference failed for: r3v5 */
            /* JADX WARN: Type inference failed for: r3v6, types: [androidx.compose.runtime.collection.MutableVector] */
            /* JADX WARN: Type inference failed for: r3v8 */
            /* JADX WARN: Type inference failed for: r3v9 */
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                NodeChain nodeChain = LayoutNode.this.nodes;
                Ref$ObjectRef ref$ObjectRef2 = ref$ObjectRef;
                if ((nodeChain.head.aggregateChildKindSet & 8) != 0) {
                    for (Modifier.Node node = nodeChain.tail; node != null; node = node.parent) {
                        if ((node.kindSet & 8) != 0) {
                            DelegatingNode delegatingNode = node;
                            ?? r3 = 0;
                            while (delegatingNode != 0) {
                                if (delegatingNode instanceof SemanticsModifierNode) {
                                    SemanticsModifierNode semanticsModifierNode = (SemanticsModifierNode) delegatingNode;
                                    if (semanticsModifierNode.getShouldClearDescendantSemantics()) {
                                        SemanticsConfiguration semanticsConfiguration2 = new SemanticsConfiguration();
                                        ref$ObjectRef2.element = semanticsConfiguration2;
                                        semanticsConfiguration2.isClearingSemantics = true;
                                    }
                                    if (semanticsModifierNode.getShouldMergeDescendantSemantics()) {
                                        ((SemanticsConfiguration) ref$ObjectRef2.element).isMergingSemanticsOfDescendants = true;
                                    }
                                    semanticsModifierNode.applySemantics((SemanticsPropertyReceiver) ref$ObjectRef2.element);
                                } else if ((delegatingNode.kindSet & 8) != 0 && (delegatingNode instanceof DelegatingNode)) {
                                    Modifier.Node node2 = delegatingNode.delegate;
                                    int i = 0;
                                    delegatingNode = delegatingNode;
                                    r3 = r3;
                                    while (node2 != null) {
                                        if ((node2.kindSet & 8) != 0) {
                                            i++;
                                            r3 = r3;
                                            if (i == 1) {
                                                delegatingNode = node2;
                                            } else {
                                                if (r3 == 0) {
                                                    r3 = new MutableVector(new Modifier.Node[16]);
                                                }
                                                if (delegatingNode != 0) {
                                                    r3.add(delegatingNode);
                                                    delegatingNode = 0;
                                                }
                                                r3.add(node2);
                                            }
                                        }
                                        node2 = node2.child;
                                        delegatingNode = delegatingNode;
                                        r3 = r3;
                                    }
                                    if (i == 1) {
                                    }
                                }
                                delegatingNode = HitTestResultKt.access$pop(r3);
                            }
                        }
                    }
                }
                return Unit.INSTANCE;
            }
        };
        snapshotObserver.observer.observeReads(this, snapshotObserver.onCommitAffectingSemantics, function0);
        this.isCurrentlyCalculatingSemanticsConfiguration = false;
        this._semanticsConfiguration = (SemanticsConfiguration) ref$ObjectRef.element;
        this.isSemanticsInvalidated = false;
        AndroidComposeView androidComposeView = (AndroidComposeView) LayoutNodeKt.requireOwner(this);
        androidComposeView.getSemanticsOwner().notifySemanticsChange$ui(this, semanticsConfiguration);
        androidComposeView.onSemanticsChange();
    }

    public final void invalidateUnfoldedVirtualChildren() {
        LayoutNode layoutNode;
        if (this.virtualChildrenCount > 0) {
            this.unfoldedVirtualChildrenListDirty = true;
        }
        if (!this.isVirtual || (layoutNode = this._foldedParent) == null) {
            return;
        }
        layoutNode.invalidateUnfoldedVirtualChildren();
    }

    public final boolean isAttached() {
        return this.owner != null;
    }

    public final boolean isPlaced() {
        return this.layoutDelegate.measurePassDelegate.isPlaced;
    }

    public final Boolean isPlacedInLookahead() {
        LookaheadPassDelegate lookaheadPassDelegate = this.layoutDelegate.lookaheadPassDelegate;
        if (lookaheadPassDelegate != null) {
            return Boolean.valueOf(lookaheadPassDelegate._placedState != LookaheadPassDelegate.PlacedState.IsNotPlaced);
        }
        return null;
    }

    @Override // androidx.compose.ui.node.OwnerScope
    public final boolean isValidOwnerScope() {
        return isAttached();
    }

    public final void lookaheadReplace$ui() {
        LayoutNode parent$ui;
        if (this.intrinsicsUsageByParent == UsageByParent.NotUsed) {
            clearSubtreePlacementIntrinsicsUsage();
        }
        LookaheadPassDelegate lookaheadPassDelegate = this.layoutDelegate.lookaheadPassDelegate;
        lookaheadPassDelegate.getClass();
        boolean z = true;
        try {
            lookaheadPassDelegate.relayoutWithoutParentInProgress = true;
            if (!lookaheadPassDelegate.placedOnce) {
                InlineClassHelperKt.throwIllegalStateException("replace() called on item that was not placed");
            }
            lookaheadPassDelegate.onNodePlacedCalled = false;
            if (lookaheadPassDelegate._placedState == LookaheadPassDelegate.PlacedState.IsNotPlaced) {
                z = false;
            }
            lookaheadPassDelegate.m331placeSelfMLgxB_4$1(lookaheadPassDelegate.lastPosition, lookaheadPassDelegate.lastLayerBlock);
            if (z && !lookaheadPassDelegate.onNodePlacedCalled && (parent$ui = lookaheadPassDelegate.layoutNodeLayoutDelegate.layoutNode.getParent$ui()) != null) {
                parent$ui.requestLookaheadRelayout$ui(false);
            }
            lookaheadPassDelegate.relayoutWithoutParentInProgress = false;
        } catch (Throwable th) {
            lookaheadPassDelegate.relayoutWithoutParentInProgress = false;
            throw th;
        }
    }

    public final void move$ui(int i, int i2, int i3) {
        if (i == i2) {
            return;
        }
        for (int i4 = 0; i4 < i3; i4++) {
            int i5 = i > i2 ? i + i4 : i;
            int i6 = i > i2 ? i2 + i4 : (i2 + i3) - 2;
            CardView.AnonymousClass1 anonymousClass1 = this._foldedChildren;
            MutableVector mutableVector = (MutableVector) anonymousClass1.mCardBackground;
            LayoutNode$_foldedChildren$1 layoutNode$_foldedChildren$1 = (LayoutNode$_foldedChildren$1) anonymousClass1.this$0;
            Object removeAt = mutableVector.removeAt(i5);
            layoutNode$_foldedChildren$1.invoke();
            ((MutableVector) anonymousClass1.mCardBackground).add(i6, (LayoutNode) removeAt);
            layoutNode$_foldedChildren$1.invoke();
        }
        onZSortedChildrenInvalidated$ui();
        invalidateUnfoldedVirtualChildren();
        invalidateMeasurements$ui();
    }

    public final void onChildRemoved(LayoutNode layoutNode) {
        if (layoutNode.layoutDelegate.childrenAccessingCoordinatesDuringPlacement > 0) {
            this.layoutDelegate.setChildrenAccessingCoordinatesDuringPlacement(r0.childrenAccessingCoordinatesDuringPlacement - 1);
        }
        if (this.owner != null) {
            layoutNode.detach$ui();
        }
        layoutNode._foldedParent = null;
        if (layoutNode.globallyPositionedObservers > 0) {
            setGloballyPositionedObservers(this.globallyPositionedObservers - 1);
        }
        layoutNode.nodes.outerCoordinator.wrappedBy = null;
        if (layoutNode.isVirtual) {
            this.virtualChildrenCount--;
            MutableVector mutableVector = (MutableVector) layoutNode._foldedChildren.mCardBackground;
            Object[] objArr = mutableVector.content;
            int i = mutableVector.size;
            for (int i2 = 0; i2 < i; i2++) {
                ((LayoutNode) objArr[i2]).nodes.outerCoordinator.wrappedBy = null;
            }
        }
        invalidateUnfoldedVirtualChildren();
        onZSortedChildrenInvalidated$ui();
    }

    public final void onCoordinatorRectChanged$ui(NodeCoordinator nodeCoordinator) {
        Owner owner = this.owner;
        RectManager rectManager = owner != null ? ((AndroidComposeView) owner).getRectManager() : null;
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = this.layoutDelegate;
        int i = 0;
        boolean z = layoutNodeLayoutDelegate.layoutState != LayoutState.Idle || getMeasurePending$ui() || getLayoutPending$ui();
        if (this.addedToRectList && rectManager != null) {
            if (nodeCoordinator == this.nodes.outerCoordinator) {
                this.rectInParentDirty = true;
                if (!z) {
                    rectManager.recalculateRectIfDirty(this);
                }
            } else {
                this.outerToInnerOffsetDirty = true;
                MutableVector mutableVector = get_children$ui();
                Object[] objArr = mutableVector.content;
                int i2 = mutableVector.size;
                for (int i3 = 0; i3 < i2; i3++) {
                    LayoutNode layoutNode = (LayoutNode) objArr[i3];
                    layoutNode.rectInParentDirty = true;
                    if (!z) {
                        rectManager.recalculateRectIfDirty(layoutNode);
                    }
                }
                if (this.addedToRectList) {
                    rectManager.isDirty = true;
                    JsonParser jsonParser = rectManager.rects;
                    int i4 = this.semanticsId & 33554431;
                    long[] jArr = (long[]) jsonParser.value;
                    int i5 = jsonParser.token;
                    while (true) {
                        if (i >= jArr.length - 2 || i >= i5) {
                            break;
                        }
                        int i6 = i + 2;
                        long j = jArr[i6];
                        if ((((int) j) & 33554431) == i4) {
                            jArr[i6] = (((j >> 63) & 1) << 60) | j;
                            break;
                        }
                        i += 3;
                    }
                }
                rectManager.scheduleDebounceCallback();
            }
        }
        layoutNodeLayoutDelegate.measurePassDelegate.requestLayoutIfCoordinatesAreUsedAndNotifyChildren();
    }

    @Override // androidx.compose.runtime.ComposeNodeLifecycleCallback
    public final void onDeactivate() {
        AndroidAutofillManager androidAutofillManager;
        LayoutNodeSubcompositionsState layoutNodeSubcompositionsState = this.subcompositionsState;
        if (layoutNodeSubcompositionsState != null) {
            layoutNodeSubcompositionsState.markActiveNodesAsReused(true);
        }
        this.isDeactivated = true;
        Modifier.Node node = this.nodes.tail;
        for (Modifier.Node node2 = node; node2 != null; node2 = node2.parent) {
            if (node2.isAttached) {
                node2.reset$ui();
            }
        }
        for (Modifier.Node node3 = node; node3 != null; node3 = node3.parent) {
            if (node3.isAttached) {
                node3.runDetachLifecycle$ui();
            }
        }
        while (node != null) {
            if (node.isAttached) {
                node.markAsDetached$ui();
            }
            node = node.parent;
        }
        if (isAttached()) {
            this._semanticsConfiguration = null;
            this.isSemanticsInvalidated = false;
        }
        Owner owner = this.owner;
        if (owner != null) {
            AndroidComposeView androidComposeView = (AndroidComposeView) owner;
            if (AndroidComposeView.autofillSupported() && (androidAutofillManager = androidComposeView._autofillManager) != null && androidAutofillManager.currentlyDisplayedIDs.remove(this.semanticsId)) {
                androidAutofillManager.platformAutofillManager.notifyViewVisibilityChanged(androidAutofillManager.view, this.semanticsId, false);
            }
        }
    }

    @Override // androidx.compose.runtime.ComposeNodeLifecycleCallback
    public final void onRelease() {
        LayoutNodeSubcompositionsState layoutNodeSubcompositionsState = this.subcompositionsState;
        if (layoutNodeSubcompositionsState != null) {
            layoutNodeSubcompositionsState.onRelease();
        }
        NodeChain nodeChain = this.nodes;
        NodeCoordinator nodeCoordinator = nodeChain.innerCoordinator.wrapped;
        for (NodeCoordinator nodeCoordinator2 = nodeChain.outerCoordinator; !Intrinsics.areEqual(nodeCoordinator2, nodeCoordinator) && nodeCoordinator2 != null; nodeCoordinator2 = nodeCoordinator2.wrapped) {
            nodeCoordinator2.onRelease();
        }
    }

    public final void onZSortedChildrenInvalidated$ui() {
        if (!this.isVirtual) {
            this.zSortedChildrenInvalidated = true;
            return;
        }
        LayoutNode parent$ui = getParent$ui();
        if (parent$ui != null) {
            parent$ui.onZSortedChildrenInvalidated$ui();
        }
    }

    public final void removeAll$ui() {
        CardView.AnonymousClass1 anonymousClass1 = this._foldedChildren;
        int i = ((MutableVector) anonymousClass1.mCardBackground).size;
        while (true) {
            i--;
            MutableVector mutableVector = (MutableVector) anonymousClass1.mCardBackground;
            if (-1 >= i) {
                mutableVector.clear();
                ((LayoutNode$_foldedChildren$1) anonymousClass1.this$0).invoke();
                return;
            }
            onChildRemoved((LayoutNode) mutableVector.content[i]);
        }
    }

    public final void removeAt$ui(int i, int i2) {
        if (i2 < 0) {
            InlineClassHelperKt.throwIllegalArgumentException("count (" + i2 + ") must be greater than 0");
        }
        int i3 = (i2 + i) - 1;
        if (i > i3) {
            return;
        }
        while (true) {
            CardView.AnonymousClass1 anonymousClass1 = this._foldedChildren;
            onChildRemoved((LayoutNode) ((MutableVector) anonymousClass1.mCardBackground).content[i3]);
            Object removeAt = ((MutableVector) anonymousClass1.mCardBackground).removeAt(i3);
            ((LayoutNode$_foldedChildren$1) anonymousClass1.this$0).invoke();
            if (i3 == i) {
                return;
            } else {
                i3--;
            }
        }
    }

    public final void replace$ui() {
        LayoutNode parent$ui;
        if (this.intrinsicsUsageByParent == UsageByParent.NotUsed) {
            clearSubtreePlacementIntrinsicsUsage();
        }
        MeasurePassDelegate measurePassDelegate = this.layoutDelegate.measurePassDelegate;
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = measurePassDelegate.layoutNodeLayoutDelegate;
        try {
            measurePassDelegate.relayoutWithoutParentInProgress = true;
            if (!measurePassDelegate.placedOnce) {
                InlineClassHelperKt.throwIllegalStateException("replace called on unplaced item");
            }
            boolean z = measurePassDelegate.isPlaced;
            measurePassDelegate.m337placeOuterCoordinatorMLgxB_4(measurePassDelegate.lastPosition, measurePassDelegate.lastZIndex, measurePassDelegate.lastLayerBlock);
            if (z && !measurePassDelegate.onNodePlacedCalled && (parent$ui = layoutNodeLayoutDelegate.layoutNode.getParent$ui()) != null) {
                parent$ui.requestRelayout$ui(false);
            }
        } finally {
        }
    }

    public final void requestLookaheadRelayout$ui(boolean z) {
        Owner owner;
        if (this.isVirtual || (owner = this.owner) == null) {
            return;
        }
        ((AndroidComposeView) owner).onRequestRelayout(this, true, z);
    }

    public final void requestRelayout$ui(boolean z) {
        Owner owner;
        if (this.isVirtual || (owner = this.owner) == null) {
            return;
        }
        ((AndroidComposeView) owner).onRequestRelayout(this, false, z);
    }

    public final void resetSubtreeIntrinsicsUsage$ui() {
        MutableVector mutableVector = get_children$ui();
        Object[] objArr = mutableVector.content;
        int i = mutableVector.size;
        for (int i2 = 0; i2 < i; i2++) {
            LayoutNode layoutNode = (LayoutNode) objArr[i2];
            UsageByParent usageByParent = layoutNode.previousIntrinsicsUsageByParent;
            layoutNode.intrinsicsUsageByParent = usageByParent;
            if (usageByParent != UsageByParent.NotUsed) {
                layoutNode.resetSubtreeIntrinsicsUsage$ui();
            }
        }
    }

    public final void rethrowWithComposeStackTrace(Throwable th) {
        CompositionLocalMap compositionLocalMap = this.compositionLocalMap;
        StaticProvidableCompositionLocal staticProvidableCompositionLocal = CompositionErrorContextKt.LocalCompositionErrorContext;
        PersistentCompositionLocalHashMap persistentCompositionLocalHashMap = (PersistentCompositionLocalHashMap) compositionLocalMap;
        persistentCompositionLocalHashMap.getClass();
        CompositionErrorContextImpl compositionErrorContextImpl = (CompositionErrorContextImpl) Updater.read(persistentCompositionLocalHashMap, staticProvidableCompositionLocal);
        if (compositionErrorContextImpl == null) {
            throw th;
        }
        OperationKt.tryAttachComposeStackTrace(th, new ComponentRegistry$Builder$$ExternalSyntheticLambda0(compositionErrorContextImpl, this, 11));
        throw th;
    }

    public final void setDensity(Density density) {
        if (Intrinsics.areEqual(this.density, density)) {
            return;
        }
        this.density = density;
        invalidateMeasurements$ui();
        LayoutNode parent$ui = getParent$ui();
        if (parent$ui != null) {
            parent$ui.invalidateLayer$ui();
        } else {
            Owner owner = this.owner;
            if (owner != null) {
                ((AndroidComposeView) owner).invalidate();
            }
        }
        invalidateLayers$ui();
        for (Modifier.Node node = this.nodes.head; node != null; node = node.child) {
            node.onDensityChange();
        }
    }

    public final void setGloballyPositionedObservers(int i) {
        LayoutNode parent$ui;
        LayoutNode parent$ui2;
        int i2 = this.globallyPositionedObservers;
        if (i2 != i) {
            if (i > 0 && i2 == 0 && (parent$ui2 = getParent$ui()) != null) {
                parent$ui2.setGloballyPositionedObservers(parent$ui2.globallyPositionedObservers + 1);
            }
            if (i == 0 && this.globallyPositionedObservers > 0 && (parent$ui = getParent$ui()) != null) {
                parent$ui.setGloballyPositionedObservers(parent$ui.globallyPositionedObservers - 1);
            }
            this.globallyPositionedObservers = i;
        }
    }

    public final void setLookaheadRoot(LayoutNode layoutNode) {
        if (Intrinsics.areEqual(layoutNode, this.lookaheadRoot)) {
            return;
        }
        this.lookaheadRoot = layoutNode;
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = this.layoutDelegate;
        if (layoutNode != null) {
            if (layoutNodeLayoutDelegate.lookaheadPassDelegate == null) {
                layoutNodeLayoutDelegate.lookaheadPassDelegate = new LookaheadPassDelegate(layoutNodeLayoutDelegate);
            }
            NodeChain nodeChain = this.nodes;
            NodeCoordinator nodeCoordinator = nodeChain.innerCoordinator.wrapped;
            for (NodeCoordinator nodeCoordinator2 = nodeChain.outerCoordinator; !Intrinsics.areEqual(nodeCoordinator2, nodeCoordinator) && nodeCoordinator2 != null; nodeCoordinator2 = nodeCoordinator2.wrapped) {
                nodeCoordinator2.ensureLookaheadDelegateCreated();
            }
        } else {
            layoutNodeLayoutDelegate.lookaheadPassDelegate = null;
            layoutNodeLayoutDelegate.lookaheadLayoutPending = false;
            layoutNodeLayoutDelegate.lookaheadMeasurePending = false;
        }
        invalidateMeasurements$ui();
    }

    public final void setMeasurePolicy(MeasurePolicy measurePolicy) {
        if (Intrinsics.areEqual(this.measurePolicy, measurePolicy)) {
            return;
        }
        this.measurePolicy = measurePolicy;
        CardView.AnonymousClass1 anonymousClass1 = this.intrinsicsPolicy;
        if (anonymousClass1 != null) {
            ((ParcelableSnapshotMutableState) anonymousClass1.this$0).setValue(measurePolicy);
        }
        invalidateMeasurements$ui();
    }

    public final void setModifier(Modifier modifier) {
        if (this.isVirtual && this._modifier != Modifier.Companion.$$INSTANCE) {
            InlineClassHelperKt.throwIllegalArgumentException("Modifiers are not supported on virtual LayoutNodes");
        }
        if (this.isDeactivated) {
            InlineClassHelperKt.throwIllegalArgumentException("modifier is updated when deactivated");
        }
        if (!isAttached()) {
            this.pendingModifier = modifier;
            return;
        }
        applyModifier(modifier);
        if (this.isSemanticsInvalidated) {
            invalidateSemantics$ui();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r1v10 */
    /* JADX WARN: Type inference failed for: r1v11 */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v4, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r1v5, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r1v7 */
    /* JADX WARN: Type inference failed for: r1v8 */
    /* JADX WARN: Type inference failed for: r1v9 */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v11 */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v3, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r2v6, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r2v8 */
    /* JADX WARN: Type inference failed for: r2v9 */
    public final void setViewConfiguration(ViewConfiguration viewConfiguration) {
        if (Intrinsics.areEqual(this.viewConfiguration, viewConfiguration)) {
            return;
        }
        this.viewConfiguration = viewConfiguration;
        Modifier.Node node = this.nodes.head;
        if ((node.aggregateChildKindSet & 16) != 0) {
            while (node != null) {
                if ((node.kindSet & 16) != 0) {
                    DelegatingNode delegatingNode = node;
                    ?? r2 = 0;
                    while (delegatingNode != 0) {
                        if (delegatingNode instanceof PointerInputModifierNode) {
                            ((PointerInputModifierNode) delegatingNode).onViewConfigurationChange();
                        } else if ((delegatingNode.kindSet & 16) != 0 && (delegatingNode instanceof DelegatingNode)) {
                            Modifier.Node node2 = delegatingNode.delegate;
                            int i = 0;
                            delegatingNode = delegatingNode;
                            r2 = r2;
                            while (node2 != null) {
                                if ((node2.kindSet & 16) != 0) {
                                    i++;
                                    r2 = r2;
                                    if (i == 1) {
                                        delegatingNode = node2;
                                    } else {
                                        if (r2 == 0) {
                                            r2 = new MutableVector(new Modifier.Node[16]);
                                        }
                                        if (delegatingNode != 0) {
                                            r2.add(delegatingNode);
                                            delegatingNode = 0;
                                        }
                                        r2.add(node2);
                                    }
                                }
                                node2 = node2.child;
                                delegatingNode = delegatingNode;
                                r2 = r2;
                            }
                            if (i == 1) {
                            }
                        }
                        delegatingNode = HitTestResultKt.access$pop(r2);
                    }
                }
                if ((node.aggregateChildKindSet & 16) == 0) {
                    return;
                } else {
                    node = node.child;
                }
            }
        }
    }

    public final String toString() {
        return TestTagKt.simpleIdentityToString(this) + " children: " + ((MutableVector) ((MutableObjectList.ObjectListMutableList) getChildren$ui()).objectList).size + " measurePolicy: " + this.measurePolicy + " deactivated: " + this.isDeactivated;
    }

    public final void updateChildrenIfDirty$ui() {
        if (this.virtualChildrenCount <= 0 || !this.unfoldedVirtualChildrenListDirty) {
            return;
        }
        this.unfoldedVirtualChildrenListDirty = false;
        MutableVector mutableVector = this._unfoldedChildren;
        if (mutableVector == null) {
            mutableVector = new MutableVector(new LayoutNode[16]);
            this._unfoldedChildren = mutableVector;
        }
        mutableVector.clear();
        MutableVector mutableVector2 = (MutableVector) this._foldedChildren.mCardBackground;
        Object[] objArr = mutableVector2.content;
        int i = mutableVector2.size;
        for (int i2 = 0; i2 < i; i2++) {
            LayoutNode layoutNode = (LayoutNode) objArr[i2];
            if (layoutNode.isVirtual) {
                mutableVector.addAll(mutableVector.size, layoutNode.get_children$ui());
            } else {
                mutableVector.add(layoutNode);
            }
        }
        LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = this.layoutDelegate;
        layoutNodeLayoutDelegate.measurePassDelegate.childDelegatesDirty = true;
        LookaheadPassDelegate lookaheadPassDelegate = layoutNodeLayoutDelegate.lookaheadPassDelegate;
        if (lookaheadPassDelegate != null) {
            lookaheadPassDelegate.childDelegatesDirty = true;
        }
    }

    public LayoutNode(int i) {
        this((i & 1) == 0, SemanticsModifierKt.lastIdentifier.addAndGet(1));
    }
}
