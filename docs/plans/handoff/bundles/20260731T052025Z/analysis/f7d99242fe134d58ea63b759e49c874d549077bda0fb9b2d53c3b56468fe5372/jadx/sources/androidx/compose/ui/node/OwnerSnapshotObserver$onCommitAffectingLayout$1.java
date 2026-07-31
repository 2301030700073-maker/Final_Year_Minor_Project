package androidx.compose.ui.node;

import androidx.collection.MutableScatterMap;
import androidx.collection.MutableScatterSet;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.platform.GraphicsLayerOwnerLayer;
import androidx.datastore.preferences.PreferencesProto$Value;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class OwnerSnapshotObserver$onCommitAffectingLayout$1 extends Lambda implements Function1 {
    public static final OwnerSnapshotObserver$onCommitAffectingLayout$1 INSTANCE;
    public static final OwnerSnapshotObserver$onCommitAffectingLayout$1 INSTANCE$1;
    public static final OwnerSnapshotObserver$onCommitAffectingLayout$1 INSTANCE$10;
    public static final OwnerSnapshotObserver$onCommitAffectingLayout$1 INSTANCE$11;
    public static final OwnerSnapshotObserver$onCommitAffectingLayout$1 INSTANCE$2;
    public static final OwnerSnapshotObserver$onCommitAffectingLayout$1 INSTANCE$3;
    public static final OwnerSnapshotObserver$onCommitAffectingLayout$1 INSTANCE$4;
    public static final OwnerSnapshotObserver$onCommitAffectingLayout$1 INSTANCE$5;
    public static final OwnerSnapshotObserver$onCommitAffectingLayout$1 INSTANCE$6;
    public static final OwnerSnapshotObserver$onCommitAffectingLayout$1 INSTANCE$7;
    public static final OwnerSnapshotObserver$onCommitAffectingLayout$1 INSTANCE$8;
    public static final OwnerSnapshotObserver$onCommitAffectingLayout$1 INSTANCE$9;
    public final /* synthetic */ int $r8$classId;

    static {
        int i = 1;
        INSTANCE$1 = new OwnerSnapshotObserver$onCommitAffectingLayout$1(i, 1);
        INSTANCE$2 = new OwnerSnapshotObserver$onCommitAffectingLayout$1(i, 2);
        INSTANCE$3 = new OwnerSnapshotObserver$onCommitAffectingLayout$1(i, 3);
        INSTANCE$4 = new OwnerSnapshotObserver$onCommitAffectingLayout$1(i, 4);
        INSTANCE$5 = new OwnerSnapshotObserver$onCommitAffectingLayout$1(i, 5);
        INSTANCE = new OwnerSnapshotObserver$onCommitAffectingLayout$1(i, 0);
        INSTANCE$6 = new OwnerSnapshotObserver$onCommitAffectingLayout$1(i, 6);
        INSTANCE$7 = new OwnerSnapshotObserver$onCommitAffectingLayout$1(i, 7);
        INSTANCE$8 = new OwnerSnapshotObserver$onCommitAffectingLayout$1(i, 8);
        INSTANCE$9 = new OwnerSnapshotObserver$onCommitAffectingLayout$1(i, 9);
        INSTANCE$10 = new OwnerSnapshotObserver$onCommitAffectingLayout$1(i, 10);
        INSTANCE$11 = new OwnerSnapshotObserver$onCommitAffectingLayout$1(i, 11);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ OwnerSnapshotObserver$onCommitAffectingLayout$1(int i, int i2) {
        super(i);
        this.$r8$classId = i2;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                LayoutNode layoutNode = (LayoutNode) obj;
                if (layoutNode.isAttached$1()) {
                    layoutNode.requestRelayout$ui(false);
                }
                return unit;
            case 1:
                ComposeUiNode composeUiNode = (ComposeUiNode) obj;
                LayoutNode layoutNode2 = composeUiNode instanceof LayoutNode ? (LayoutNode) composeUiNode : null;
                if (layoutNode2 != null && layoutNode2.isDeactivated) {
                    InlineClassHelperKt.throwIllegalStateException("Apply is called on deactivated node " + composeUiNode);
                }
                return unit;
            case 2:
                PlaceableResult placeableResult = (PlaceableResult) obj;
                if (placeableResult.isValidOwnerScope()) {
                    LookaheadCapablePlaceable lookaheadCapablePlaceable = placeableResult.placeable;
                    if (!lookaheadCapablePlaceable.isPlacingForAlignment) {
                        Function1 rulers = placeableResult.result.getRulers();
                        MutableScatterMap mutableScatterMap = lookaheadCapablePlaceable.rulerReaders;
                        if (rulers != null) {
                            lookaheadCapablePlaceable.m610captureRulersOSxE8f4(placeableResult, 9223372034707292159L, 0L);
                            lookaheadCapablePlaceable.rulersLambda = rulers;
                        } else if (mutableScatterMap != null) {
                            Object[] objArr = mutableScatterMap.values;
                            long[] jArr = mutableScatterMap.metadata;
                            int length = jArr.length - 2;
                            if (length >= 0) {
                                int i2 = 0;
                                while (true) {
                                    long j = jArr[i2];
                                    if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                                        int i3 = 8 - ((~(i2 - length)) >>> 31);
                                        for (int i4 = 0; i4 < i3; i4++) {
                                            if ((255 & j) < 128) {
                                                lookaheadCapablePlaceable.notifyRulerValueChange((MutableScatterSet) objArr[(i2 << 3) + i4]);
                                            }
                                            j >>= 8;
                                        }
                                        if (i3 != 8) {
                                        }
                                    }
                                    if (i2 != length) {
                                        i2++;
                                    }
                                }
                            }
                            mutableScatterMap.clear();
                        }
                    }
                }
                return unit;
            case 3:
                OwnedLayer ownedLayer = ((NodeCoordinator) obj).layer;
                if (ownedLayer != null) {
                    ((GraphicsLayerOwnerLayer) ownedLayer).invalidate();
                }
                return unit;
            case 4:
                NodeCoordinator nodeCoordinator = (NodeCoordinator) obj;
                LayoutNode layoutNode3 = nodeCoordinator.layoutNode;
                try {
                    if (nodeCoordinator.isValidOwnerScope()) {
                        nodeCoordinator.updateLayerParameters(true);
                    }
                    return unit;
                } catch (Throwable th) {
                    layoutNode3.rethrowWithComposeStackTrace(th);
                    throw null;
                }
            case 5:
                ObserverNodeOwnerScope observerNodeOwnerScope = (ObserverNodeOwnerScope) obj;
                if (observerNodeOwnerScope.isValidOwnerScope()) {
                    observerNodeOwnerScope.observerNode.onObservedReadsChanged();
                }
                return unit;
            case 6:
                LayoutNode layoutNode4 = (LayoutNode) obj;
                if (layoutNode4.isAttached$1()) {
                    layoutNode4.requestRelayout$ui(false);
                }
                return unit;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                LayoutNode layoutNode5 = (LayoutNode) obj;
                if (layoutNode5.isAttached$1()) {
                    layoutNode5.requestLookaheadRelayout$ui(false);
                }
                return unit;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                LayoutNode layoutNode6 = (LayoutNode) obj;
                if (layoutNode6.isAttached$1()) {
                    layoutNode6.requestLookaheadRelayout$ui(false);
                }
                return unit;
            case 9:
                LayoutNode layoutNode7 = (LayoutNode) obj;
                if (layoutNode7.isAttached$1()) {
                    LayoutNode.requestLookaheadRemeasure$ui$default(layoutNode7, false, 7);
                }
                return unit;
            case 10:
                LayoutNode layoutNode8 = (LayoutNode) obj;
                if (layoutNode8.isAttached$1()) {
                    LayoutNode.requestRemeasure$ui$default(layoutNode8, false, 7);
                }
                return unit;
            default:
                LayoutNode layoutNode9 = (LayoutNode) obj;
                if (layoutNode9.isAttached$1()) {
                    layoutNode9.invalidateSemantics$ui();
                }
                return unit;
        }
    }
}
