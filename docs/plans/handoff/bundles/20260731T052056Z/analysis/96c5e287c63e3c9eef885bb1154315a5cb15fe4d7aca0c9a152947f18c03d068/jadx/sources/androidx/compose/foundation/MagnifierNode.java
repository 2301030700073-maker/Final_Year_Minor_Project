package androidx.compose.foundation;

import android.view.View;
import androidx.compose.animation.core.Animation;
import androidx.compose.foundation.PlatformMagnifierFactoryApi28Impl;
import androidx.compose.material3.ThumbNode$onAttach$1;
import androidx.compose.runtime.DerivedSnapshotState;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.compose.runtime.SnapshotStateKt__DerivedStateKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.node.DrawModifierNode;
import androidx.compose.ui.node.GlobalPositionAwareModifierNode;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.node.LayoutNodeDrawScope;
import androidx.compose.ui.node.NodeCoordinator;
import androidx.compose.ui.node.ObserverModifierNode;
import androidx.compose.ui.node.SemanticsModifierNode;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.DpKt;
import androidx.compose.ui.unit.DpSize;
import androidx.compose.ui.unit.IntSize;
import kotlin.ExceptionsKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.channels.BufferedChannel;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class MagnifierNode extends Modifier.Node implements GlobalPositionAwareModifierNode, DrawModifierNode, SemanticsModifierNode, ObserverModifierNode {
    public DerivedSnapshotState anchorPositionInRootState;
    public Density density;
    public BufferedChannel drawSignalChannel;
    public PlatformMagnifier magnifier;
    public Function1 onSizeChanged;
    public PlatformMagnifierFactory platformMagnifierFactory;
    public IntSize previousSize;
    public Function1 sourceCenter;
    public View view;
    public float zoom = Float.NaN;
    public boolean useTextDefault = true;
    public long size = 9205357640488583168L;
    public float cornerRadius = Float.NaN;
    public float elevation = Float.NaN;
    public boolean clippingEnabled = true;
    public final ParcelableSnapshotMutableState layoutCoordinates$delegate = new ParcelableSnapshotMutableState(null, NeverEqualPolicy.INSTANCE);
    public long sourceCenterInRoot = 9205357640488583168L;

    public MagnifierNode(Function1 function1, Function1 function12, PlatformMagnifierFactory platformMagnifierFactory) {
        this.sourceCenter = function1;
        this.onSizeChanged = function12;
        this.platformMagnifierFactory = platformMagnifierFactory;
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public final void applySemantics(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        semanticsPropertyReceiver.set(Magnifier_androidKt.MagnifierPositionInRoot, new MagnifierNode$$ExternalSyntheticLambda0(this, 1));
    }

    @Override // androidx.compose.ui.node.DrawModifierNode
    public final void draw(LayoutNodeDrawScope layoutNodeDrawScope) {
        layoutNodeDrawScope.drawContent();
        BufferedChannel bufferedChannel = this.drawSignalChannel;
        if (bufferedChannel != null) {
            bufferedChannel.mo757trySendJP2dKIU(Unit.INSTANCE);
        }
    }

    /* renamed from: getAnchorPositionInRoot-F1C5BW0, reason: not valid java name */
    public final long m56getAnchorPositionInRootF1C5BW0() {
        DerivedSnapshotState derivedSnapshotState = this.anchorPositionInRootState;
        if (derivedSnapshotState == null) {
            derivedSnapshotState = SnapshotStateKt__DerivedStateKt.derivedStateOf(new MagnifierNode$$ExternalSyntheticLambda0(this, 2));
            this.anchorPositionInRootState = derivedSnapshotState;
        }
        return ((Offset) derivedSnapshotState.getValue()).packedValue;
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

    @Override // androidx.compose.ui.Modifier.Node
    public final void onAttach() {
        onObservedReadsChanged();
        this.drawSignalChannel = DpKt.Channel$default(0, 7, null);
        AwaitKt.launch$default(getCoroutineScope(), null, CoroutineStart.UNDISPATCHED, new ThumbNode$onAttach$1(4, this, null), 1);
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void onDetach() {
        PlatformMagnifier platformMagnifier = this.magnifier;
        if (platformMagnifier != null) {
            ((PlatformMagnifierFactoryApi28Impl.PlatformMagnifierImpl) platformMagnifier).dismiss();
        }
        this.magnifier = null;
    }

    @Override // androidx.compose.ui.node.GlobalPositionAwareModifierNode
    public final void onGloballyPositioned(NodeCoordinator nodeCoordinator) {
        this.layoutCoordinates$delegate.setValue(nodeCoordinator);
    }

    @Override // androidx.compose.ui.node.ObserverModifierNode
    public final void onObservedReadsChanged() {
        HitTestResultKt.observeReads(this, new MagnifierNode$$ExternalSyntheticLambda0(this, 0));
    }

    public final void recreateMagnifier() {
        PlatformMagnifier platformMagnifier = this.magnifier;
        if (platformMagnifier != null) {
            ((PlatformMagnifierFactoryApi28Impl.PlatformMagnifierImpl) platformMagnifier).dismiss();
        }
        View view = this.view;
        if (view == null) {
            view = HitTestResultKt.requireView(this);
        }
        View view2 = view;
        this.view = view2;
        Density density = this.density;
        if (density == null) {
            density = HitTestResultKt.requireLayoutNode(this).density;
        }
        Density density2 = density;
        this.density = density2;
        this.magnifier = this.platformMagnifierFactory.mo59createnHHXs2Y(view2, this.useTextDefault, this.size, this.cornerRadius, this.elevation, this.clippingEnabled, density2, this.zoom);
        updateSizeIfNecessary();
    }

    public final void updateMagnifier() {
        Density density = this.density;
        if (density == null) {
            density = HitTestResultKt.requireLayoutNode(this).density;
            this.density = density;
        }
        long j = ((Offset) this.sourceCenter.invoke(density)).packedValue;
        if ((j & 9223372034707292159L) == 9205357640488583168L || (9223372034707292159L & m56getAnchorPositionInRootF1C5BW0()) == 9205357640488583168L) {
            this.sourceCenterInRoot = 9205357640488583168L;
            PlatformMagnifier platformMagnifier = this.magnifier;
            if (platformMagnifier != null) {
                ((PlatformMagnifierFactoryApi28Impl.PlatformMagnifierImpl) platformMagnifier).dismiss();
                return;
            }
            return;
        }
        this.sourceCenterInRoot = Offset.m386plusMKHz9U(m56getAnchorPositionInRootF1C5BW0(), j);
        if (this.magnifier == null) {
            recreateMagnifier();
        }
        PlatformMagnifier platformMagnifier2 = this.magnifier;
        if (platformMagnifier2 != null) {
            platformMagnifier2.mo58updateWko1d7g(this.sourceCenterInRoot, 9205357640488583168L, this.zoom);
        }
        updateSizeIfNecessary();
    }

    public final void updateSizeIfNecessary() {
        Density density;
        PlatformMagnifier platformMagnifier = this.magnifier;
        if (platformMagnifier == null || (density = this.density) == null) {
            return;
        }
        PlatformMagnifierFactoryApi28Impl.PlatformMagnifierImpl platformMagnifierImpl = (PlatformMagnifierFactoryApi28Impl.PlatformMagnifierImpl) platformMagnifier;
        long m60getSizeYbymL2g = platformMagnifierImpl.m60getSizeYbymL2g();
        IntSize intSize = this.previousSize;
        if (Animation.CC.m23m((Object) intSize) && m60getSizeYbymL2g == intSize.packedValue) {
            return;
        }
        Function1 function1 = this.onSizeChanged;
        if (function1 != null) {
            function1.invoke(new DpSize(density.mo85toDpSizekrfVVM(ExceptionsKt.m813toSizeozmzZPI(platformMagnifierImpl.m60getSizeYbymL2g()))));
        }
        this.previousSize = new IntSize(platformMagnifierImpl.m60getSizeYbymL2g());
    }

    @Override // androidx.compose.ui.node.DrawModifierNode
    public final void onMeasureResultChanged() {
    }
}
