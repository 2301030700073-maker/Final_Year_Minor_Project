package androidx.compose.foundation;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.runtime.ParcelableSnapshotMutableIntState;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.runtime.snapshots.SnapshotId_jvmKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.LayoutModifierNode;
import androidx.compose.ui.node.LookaheadCapablePlaceable;
import androidx.compose.ui.node.SemanticsModifierNode;
import androidx.compose.ui.semantics.ScrollAxisRange;
import androidx.compose.ui.semantics.SemanticsProperties;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyKey;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.unit.Constraints;
import kotlin.collections.EmptyMap;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.KProperty;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ScrollNode extends Modifier.Node implements LayoutModifierNode, SemanticsModifierNode {
    public boolean isVertical;
    public ScrollState state;

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public final void applySemantics(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        SemanticsPropertiesKt.setTraversalGroup(semanticsPropertyReceiver);
        final int i = 0;
        final int i2 = 1;
        ScrollAxisRange scrollAxisRange = new ScrollAxisRange(new Function0(this) { // from class: androidx.compose.foundation.ScrollNode$$ExternalSyntheticLambda1
            public final /* synthetic */ ScrollNode f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int intValue;
                int i3 = i;
                ScrollNode scrollNode = this.f$0;
                switch (i3) {
                    case 0:
                        intValue = scrollNode.state.value$delegate.getIntValue();
                        break;
                    default:
                        intValue = scrollNode.state._maxValueState.getIntValue();
                        break;
                }
                return Float.valueOf(intValue);
            }
        }, new Function0(this) { // from class: androidx.compose.foundation.ScrollNode$$ExternalSyntheticLambda1
            public final /* synthetic */ ScrollNode f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int intValue;
                int i3 = i2;
                ScrollNode scrollNode = this.f$0;
                switch (i3) {
                    case 0:
                        intValue = scrollNode.state.value$delegate.getIntValue();
                        break;
                    default:
                        intValue = scrollNode.state._maxValueState.getIntValue();
                        break;
                }
                return Float.valueOf(intValue);
            }
        });
        if (this.isVertical) {
            SemanticsPropertyKey semanticsPropertyKey = SemanticsProperties.VerticalScrollAxisRange;
            KProperty kProperty = SemanticsPropertiesKt.$$delegatedProperties[13];
            semanticsPropertyReceiver.set(semanticsPropertyKey, scrollAxisRange);
        } else {
            SemanticsPropertyKey semanticsPropertyKey2 = SemanticsProperties.HorizontalScrollAxisRange;
            KProperty kProperty2 = SemanticsPropertiesKt.$$delegatedProperties[12];
            semanticsPropertyReceiver.set(semanticsPropertyKey2, scrollAxisRange);
        }
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public final boolean getShouldClearDescendantSemantics() {
        return false;
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public final boolean getShouldMergeDescendantSemantics() {
        return false;
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public final boolean isImportantForBounds() {
        return true;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int maxIntrinsicHeight(LookaheadCapablePlaceable lookaheadCapablePlaceable, Measurable measurable, int i) {
        if (!this.isVertical) {
            i = Integer.MAX_VALUE;
        }
        return measurable.maxIntrinsicHeight(i);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int maxIntrinsicWidth(LookaheadCapablePlaceable lookaheadCapablePlaceable, Measurable measurable, int i) {
        if (this.isVertical) {
            i = Integer.MAX_VALUE;
        }
        return measurable.maxIntrinsicWidth(i);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    /* renamed from: measure-3p2s80s */
    public final MeasureResult mo16measure3p2s80s(MeasureScope measureScope, Measurable measurable, long j) {
        ImageKt.m49checkScrollableContainerConstraintsK40F9xA(j, this.isVertical ? Orientation.Vertical : Orientation.Horizontal);
        Placeable mo512measureBRTryo0 = measurable.mo512measureBRTryo0(Constraints.m674copyZbe2FdA$default(j, 0, this.isVertical ? Constraints.m681getMaxWidthimpl(j) : Integer.MAX_VALUE, 0, this.isVertical ? Integer.MAX_VALUE : Constraints.m680getMaxHeightimpl(j), 5));
        int i = mo512measureBRTryo0.width;
        int m681getMaxWidthimpl = Constraints.m681getMaxWidthimpl(j);
        if (i > m681getMaxWidthimpl) {
            i = m681getMaxWidthimpl;
        }
        int i2 = mo512measureBRTryo0.height;
        int m680getMaxHeightimpl = Constraints.m680getMaxHeightimpl(j);
        if (i2 > m680getMaxHeightimpl) {
            i2 = m680getMaxHeightimpl;
        }
        int i3 = mo512measureBRTryo0.height - i2;
        int i4 = mo512measureBRTryo0.width - i;
        if (!this.isVertical) {
            i3 = i4;
        }
        ScrollState scrollState = this.state;
        ParcelableSnapshotMutableIntState parcelableSnapshotMutableIntState = scrollState._maxValueState;
        ParcelableSnapshotMutableIntState parcelableSnapshotMutableIntState2 = scrollState.value$delegate;
        parcelableSnapshotMutableIntState.setIntValue(i3);
        Snapshot currentThreadSnapshot = SnapshotId_jvmKt.getCurrentThreadSnapshot();
        Function1 readObserver = currentThreadSnapshot != null ? currentThreadSnapshot.getReadObserver() : null;
        Snapshot makeCurrentNonObservable = SnapshotId_jvmKt.makeCurrentNonObservable(currentThreadSnapshot);
        try {
            if (parcelableSnapshotMutableIntState2.getIntValue() > i3) {
                parcelableSnapshotMutableIntState2.setIntValue(i3);
            }
            SnapshotId_jvmKt.restoreNonObservable(currentThreadSnapshot, makeCurrentNonObservable, readObserver);
            this.state.viewportSize$delegate.setIntValue(this.isVertical ? i2 : i);
            this.state.contentSize$delegate.setIntValue(this.isVertical ? mo512measureBRTryo0.height : mo512measureBRTryo0.width);
            return measureScope.layout(i, i2, EmptyMap.INSTANCE, new ScrollNode$$ExternalSyntheticLambda0(this, i3, mo512measureBRTryo0, 0));
        } catch (Throwable th) {
            SnapshotId_jvmKt.restoreNonObservable(currentThreadSnapshot, makeCurrentNonObservable, readObserver);
            throw th;
        }
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int minIntrinsicHeight(LookaheadCapablePlaceable lookaheadCapablePlaceable, Measurable measurable, int i) {
        if (!this.isVertical) {
            i = Integer.MAX_VALUE;
        }
        return measurable.minIntrinsicHeight(i);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int minIntrinsicWidth(LookaheadCapablePlaceable lookaheadCapablePlaceable, Measurable measurable, int i) {
        if (this.isVertical) {
            i = Integer.MAX_VALUE;
        }
        return measurable.minIntrinsicWidth(i);
    }
}
