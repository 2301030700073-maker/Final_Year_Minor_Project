package androidx.compose.foundation;

import android.view.View;
import androidx.camera.core.ImageAnalysis$$ExternalSyntheticLambda3;
import androidx.compose.foundation.PlatformMagnifierFactoryApi28Impl;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager_androidKt$$ExternalSyntheticLambda4;
import androidx.compose.material3.AppBarKt$$ExternalSyntheticLambda0;
import androidx.compose.material3.ThumbNode$onAttach$1;
import androidx.compose.runtime.DerivedSnapshotState;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.compose.runtime.Updater;
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
import androidx.compose.ui.unit.DpSize;
import androidx.compose.ui.unit.IntSize;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.channels.BufferedChannel;
import okhttp3.Cookie;
import org.jsoup.helper.Validate;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MagnifierNode extends Modifier.Node implements GlobalPositionAwareModifierNode, DrawModifierNode, SemanticsModifierNode, ObserverModifierNode {
    public DerivedSnapshotState anchorPositionInRootState;
    public Density density;
    public BufferedChannel drawSignalChannel;
    public PlatformMagnifier magnifier;
    public TextFieldSelectionManager_androidKt$$ExternalSyntheticLambda4 onSizeChanged;
    public PlatformMagnifierFactory platformMagnifierFactory;
    public IntSize previousSize;
    public AppBarKt$$ExternalSyntheticLambda0 sourceCenter;
    public View view;
    public final ParcelableSnapshotMutableState layoutCoordinates$delegate = new ParcelableSnapshotMutableState(null, NeverEqualPolicy.INSTANCE);
    public long sourceCenterInRoot = 9205357640488583168L;

    public MagnifierNode(AppBarKt$$ExternalSyntheticLambda0 appBarKt$$ExternalSyntheticLambda0, TextFieldSelectionManager_androidKt$$ExternalSyntheticLambda4 textFieldSelectionManager_androidKt$$ExternalSyntheticLambda4, PlatformMagnifierFactory platformMagnifierFactory) {
        this.sourceCenter = appBarKt$$ExternalSyntheticLambda0;
        this.onSizeChanged = textFieldSelectionManager_androidKt$$ExternalSyntheticLambda4;
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
            bufferedChannel.mo1016trySendJP2dKIU(Unit.INSTANCE);
        }
    }

    /* renamed from: getAnchorPositionInRoot-F1C5BW0, reason: not valid java name */
    public final long m141getAnchorPositionInRootF1C5BW0() {
        if (this.anchorPositionInRootState == null) {
            this.anchorPositionInRootState = Updater.derivedStateOf(new MagnifierNode$$ExternalSyntheticLambda0(this, 2));
        }
        DerivedSnapshotState derivedSnapshotState = this.anchorPositionInRootState;
        if (derivedSnapshotState != null) {
            return ((Offset) derivedSnapshotState.getValue()).packedValue;
        }
        return 9205357640488583168L;
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public final /* synthetic */ boolean getShouldClearDescendantSemantics() {
        return false;
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public final /* synthetic */ boolean getShouldMergeDescendantSemantics() {
        return false;
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public final /* synthetic */ boolean isImportantForBounds() {
        return true;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void onAttach() {
        onObservedReadsChanged();
        this.drawSignalChannel = Cookie.Companion.Channel$default(0, null, null, 7);
        JobKt.launch$default(getCoroutineScope(), null, CoroutineStart.UNDISPATCHED, new ThumbNode$onAttach$1(this, (Continuation) null, 16), 1);
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
        this.view = view;
        Density density = this.density;
        if (density == null) {
            density = HitTestResultKt.requireLayoutNode(this).density;
        }
        this.density = density;
        this.magnifier = this.platformMagnifierFactory.mo143createnHHXs2Y(view, density);
        updateSizeIfNecessary();
    }

    public final void updateMagnifier() {
        Density density = this.density;
        if (density == null) {
            density = HitTestResultKt.requireLayoutNode(this).density;
            this.density = density;
        }
        long j = ((Offset) this.sourceCenter.invoke(density)).packedValue;
        if ((j & 9223372034707292159L) == 9205357640488583168L || (9223372034707292159L & m141getAnchorPositionInRootF1C5BW0()) == 9205357640488583168L) {
            this.sourceCenterInRoot = 9205357640488583168L;
            PlatformMagnifier platformMagnifier = this.magnifier;
            if (platformMagnifier != null) {
                ((PlatformMagnifierFactoryApi28Impl.PlatformMagnifierImpl) platformMagnifier).dismiss();
                return;
            }
            return;
        }
        this.sourceCenterInRoot = Offset.m441plusMKHz9U(m141getAnchorPositionInRootF1C5BW0(), j);
        if (this.magnifier == null) {
            recreateMagnifier();
        }
        PlatformMagnifier platformMagnifier2 = this.magnifier;
        if (platformMagnifier2 != null) {
            platformMagnifier2.mo142updateWko1d7g(this.sourceCenterInRoot, 9205357640488583168L);
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
        long m144getSizeYbymL2g = platformMagnifierImpl.m144getSizeYbymL2g();
        IntSize intSize = this.previousSize;
        if (ImageAnalysis$$ExternalSyntheticLambda3.m(intSize) && m144getSizeYbymL2g == intSize.packedValue) {
            return;
        }
        this.onSizeChanged.invoke(new DpSize(density.mo175toDpSizekrfVVM(Validate.m1072toSizeozmzZPI(platformMagnifierImpl.m144getSizeYbymL2g()))));
        this.previousSize = new IntSize(platformMagnifierImpl.m144getSizeYbymL2g());
    }

    @Override // androidx.compose.ui.node.DrawModifierNode
    public final /* synthetic */ void onMeasureResultChanged() {
    }
}
