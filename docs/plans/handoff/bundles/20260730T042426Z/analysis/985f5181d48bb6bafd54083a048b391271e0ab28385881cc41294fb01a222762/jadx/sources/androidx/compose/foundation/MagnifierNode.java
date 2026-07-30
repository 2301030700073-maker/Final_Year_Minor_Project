package androidx.compose.foundation;

import android.view.View;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.LayoutCoordinatesKt;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.DelegatableNode_androidKt;
import androidx.compose.ui.node.DrawModifierNode;
import androidx.compose.ui.node.GlobalPositionAwareModifierNode;
import androidx.compose.ui.node.ObserverModifierNode;
import androidx.compose.ui.node.ObserverModifierNodeKt;
import androidx.compose.ui.node.SemanticsModifierNode;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.DpSize;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.IntSizeKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.channels.Channel;
import kotlinx.coroutines.channels.ChannelKt;
import kotlinx.coroutines.channels.ChannelResult;

/* compiled from: Magnifier.android.kt */
/* loaded from: classes.dex */
public final class MagnifierNode extends Modifier.Node implements GlobalPositionAwareModifierNode, DrawModifierNode, SemanticsModifierNode, ObserverModifierNode {
    private State anchorPositionInRootState;
    private boolean clippingEnabled;
    private float cornerRadius;
    private Density density;
    private Channel drawSignalChannel;
    private float elevation;
    private final MutableState layoutCoordinates$delegate;
    private PlatformMagnifier magnifier;
    private Function1 magnifierCenter;
    private Function1 onSizeChanged;
    private PlatformMagnifierFactory platformMagnifierFactory;
    private IntSize previousSize;
    private long size;
    private Function1 sourceCenter;
    private long sourceCenterInRoot;
    private boolean useTextDefault;
    private View view;
    private float zoom;

    public /* synthetic */ MagnifierNode(Function1 function1, Function1 function12, Function1 function13, float f, boolean z, long j, float f2, float f3, boolean z2, PlatformMagnifierFactory platformMagnifierFactory, DefaultConstructorMarker defaultConstructorMarker) {
        this(function1, function12, function13, f, z, j, f2, f3, z2, platformMagnifierFactory);
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public /* synthetic */ boolean getShouldClearDescendantSemantics() {
        return SemanticsModifierNode.CC.$default$getShouldClearDescendantSemantics(this);
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public /* synthetic */ boolean getShouldMergeDescendantSemantics() {
        return SemanticsModifierNode.CC.$default$getShouldMergeDescendantSemantics(this);
    }

    @Override // androidx.compose.ui.node.DrawModifierNode
    public /* synthetic */ void onMeasureResultChanged() {
        DrawModifierNode.CC.$default$onMeasureResultChanged(this);
    }

    private MagnifierNode(Function1 function1, Function1 function12, Function1 function13, float f, boolean z, long j, float f2, float f3, boolean z2, PlatformMagnifierFactory platformMagnifierFactory) {
        this.sourceCenter = function1;
        this.magnifierCenter = function12;
        this.onSizeChanged = function13;
        this.zoom = f;
        this.useTextDefault = z;
        this.size = j;
        this.cornerRadius = f2;
        this.elevation = f3;
        this.clippingEnabled = z2;
        this.platformMagnifierFactory = platformMagnifierFactory;
        this.layoutCoordinates$delegate = SnapshotStateKt.mutableStateOf(null, SnapshotStateKt.neverEqualPolicy());
        this.sourceCenterInRoot = Offset.Companion.m1178getUnspecifiedF1C5BW0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final LayoutCoordinates getLayoutCoordinates() {
        return (LayoutCoordinates) this.layoutCoordinates$delegate.getValue();
    }

    private final void setLayoutCoordinates(LayoutCoordinates layoutCoordinates) {
        this.layoutCoordinates$delegate.setValue(layoutCoordinates);
    }

    /* renamed from: getAnchorPositionInRoot-F1C5BW0, reason: not valid java name */
    private final long m137getAnchorPositionInRootF1C5BW0() {
        if (this.anchorPositionInRootState == null) {
            this.anchorPositionInRootState = SnapshotStateKt.derivedStateOf(new Function0() { // from class: androidx.compose.foundation.MagnifierNode$anchorPositionInRoot$1
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Object invoke() {
                    return Offset.m1158boximpl(m139invokeF1C5BW0());
                }

                /* renamed from: invoke-F1C5BW0, reason: not valid java name */
                public final long m139invokeF1C5BW0() {
                    LayoutCoordinates layoutCoordinates;
                    layoutCoordinates = MagnifierNode.this.getLayoutCoordinates();
                    return layoutCoordinates != null ? LayoutCoordinatesKt.positionInRoot(layoutCoordinates) : Offset.Companion.m1178getUnspecifiedF1C5BW0();
                }
            });
        }
        State state = this.anchorPositionInRootState;
        return state != null ? ((Offset) state.getValue()).m1176unboximpl() : Offset.Companion.m1178getUnspecifiedF1C5BW0();
    }

    /* renamed from: update-5F03MCQ, reason: not valid java name */
    public final void m138update5F03MCQ(Function1 function1, Function1 function12, float f, boolean z, long j, float f2, float f3, boolean z2, Function1 function13, PlatformMagnifierFactory platformMagnifierFactory) {
        float f4 = this.zoom;
        long j2 = this.size;
        float f5 = this.cornerRadius;
        boolean z3 = this.useTextDefault;
        float f6 = this.elevation;
        boolean z4 = this.clippingEnabled;
        PlatformMagnifierFactory platformMagnifierFactory2 = this.platformMagnifierFactory;
        View view = this.view;
        Density density = this.density;
        this.sourceCenter = function1;
        this.magnifierCenter = function12;
        this.zoom = f;
        this.useTextDefault = z;
        this.size = j;
        this.cornerRadius = f2;
        this.elevation = f3;
        this.clippingEnabled = z2;
        this.onSizeChanged = function13;
        this.platformMagnifierFactory = platformMagnifierFactory;
        View requireView = DelegatableNode_androidKt.requireView(this);
        Density requireDensity = DelegatableNodeKt.requireDensity(this);
        if (this.magnifier != null && ((!Magnifier_androidKt.equalsIncludingNaN(f, f4) && !platformMagnifierFactory.getCanUpdateZoom()) || !DpSize.m2449equalsimpl0(j, j2) || !Dp.m2426equalsimpl0(f2, f5) || !Dp.m2426equalsimpl0(f3, f6) || z != z3 || z2 != z4 || !Intrinsics.areEqual(platformMagnifierFactory, platformMagnifierFactory2) || !Intrinsics.areEqual(requireView, view) || !Intrinsics.areEqual(requireDensity, density))) {
            recreateMagnifier();
        }
        updateMagnifier();
    }

    @Override // androidx.compose.ui.Modifier.Node
    public void onAttach() {
        onObservedReadsChanged();
        this.drawSignalChannel = ChannelKt.Channel$default(0, null, null, 7, null);
        BuildersKt__Builders_commonKt.launch$default(getCoroutineScope(), null, null, new MagnifierNode$onAttach$1(this, null), 3, null);
    }

    @Override // androidx.compose.ui.Modifier.Node
    public void onDetach() {
        PlatformMagnifier platformMagnifier = this.magnifier;
        if (platformMagnifier != null) {
            platformMagnifier.dismiss();
        }
        this.magnifier = null;
    }

    @Override // androidx.compose.ui.node.ObserverModifierNode
    public void onObservedReadsChanged() {
        ObserverModifierNodeKt.observeReads(this, new Function0() { // from class: androidx.compose.foundation.MagnifierNode$onObservedReadsChanged$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Object invoke() {
                m141invoke();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: collision with other method in class */
            public final void m141invoke() {
                MagnifierNode.this.updateMagnifier();
            }
        });
    }

    private final void recreateMagnifier() {
        PlatformMagnifier platformMagnifier = this.magnifier;
        if (platformMagnifier != null) {
            platformMagnifier.dismiss();
        }
        View view = this.view;
        if (view == null) {
            view = DelegatableNode_androidKt.requireView(this);
        }
        View view2 = view;
        this.view = view2;
        Density density = this.density;
        if (density == null) {
            density = DelegatableNodeKt.requireDensity(this);
        }
        Density density2 = density;
        this.density = density2;
        this.magnifier = this.platformMagnifierFactory.mo147createnHHXs2Y(view2, this.useTextDefault, this.size, this.cornerRadius, this.elevation, this.clippingEnabled, density2, this.zoom);
        updateSizeIfNecessary();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0070  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void updateMagnifier() {
        /*
            r8 = this;
            androidx.compose.ui.unit.Density r0 = r8.density
            if (r0 != 0) goto La
            androidx.compose.ui.unit.Density r0 = androidx.compose.ui.node.DelegatableNodeKt.requireDensity(r8)
            r8.density = r0
        La:
            kotlin.jvm.functions.Function1 r1 = r8.sourceCenter
            java.lang.Object r1 = r1.invoke(r0)
            androidx.compose.ui.geometry.Offset r1 = (androidx.compose.ui.geometry.Offset) r1
            long r1 = r1.m1176unboximpl()
            boolean r3 = androidx.compose.ui.geometry.OffsetKt.m1181isSpecifiedk4lQ0M(r1)
            if (r3 == 0) goto L7b
            long r3 = r8.m137getAnchorPositionInRootF1C5BW0()
            boolean r3 = androidx.compose.ui.geometry.OffsetKt.m1181isSpecifiedk4lQ0M(r3)
            if (r3 == 0) goto L7b
            long r3 = r8.m137getAnchorPositionInRootF1C5BW0()
            long r1 = androidx.compose.ui.geometry.Offset.m1172plusMKHz9U(r3, r1)
            r8.sourceCenterInRoot = r1
            kotlin.jvm.functions.Function1 r1 = r8.magnifierCenter
            if (r1 == 0) goto L5e
            java.lang.Object r0 = r1.invoke(r0)
            androidx.compose.ui.geometry.Offset r0 = (androidx.compose.ui.geometry.Offset) r0
            long r0 = r0.m1176unboximpl()
            androidx.compose.ui.geometry.Offset r0 = androidx.compose.ui.geometry.Offset.m1158boximpl(r0)
            long r1 = r0.m1176unboximpl()
            boolean r1 = androidx.compose.ui.geometry.OffsetKt.m1181isSpecifiedk4lQ0M(r1)
            if (r1 == 0) goto L4d
            goto L4e
        L4d:
            r0 = 0
        L4e:
            if (r0 == 0) goto L5e
            long r0 = r0.m1176unboximpl()
            long r2 = r8.m137getAnchorPositionInRootF1C5BW0()
            long r0 = androidx.compose.ui.geometry.Offset.m1172plusMKHz9U(r2, r0)
        L5c:
            r5 = r0
            goto L65
        L5e:
            androidx.compose.ui.geometry.Offset$Companion r0 = androidx.compose.ui.geometry.Offset.Companion
            long r0 = r0.m1178getUnspecifiedF1C5BW0()
            goto L5c
        L65:
            androidx.compose.foundation.PlatformMagnifier r0 = r8.magnifier
            if (r0 != 0) goto L6c
            r8.recreateMagnifier()
        L6c:
            androidx.compose.foundation.PlatformMagnifier r2 = r8.magnifier
            if (r2 == 0) goto L77
            long r3 = r8.sourceCenterInRoot
            float r7 = r8.zoom
            r2.mo146updateWko1d7g(r3, r5, r7)
        L77:
            r8.updateSizeIfNecessary()
            return
        L7b:
            androidx.compose.ui.geometry.Offset$Companion r0 = androidx.compose.ui.geometry.Offset.Companion
            long r0 = r0.m1178getUnspecifiedF1C5BW0()
            r8.sourceCenterInRoot = r0
            androidx.compose.foundation.PlatformMagnifier r0 = r8.magnifier
            if (r0 == 0) goto L8a
            r0.dismiss()
        L8a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.MagnifierNode.updateMagnifier():void");
    }

    private final void updateSizeIfNecessary() {
        Density density;
        PlatformMagnifier platformMagnifier = this.magnifier;
        if (platformMagnifier == null || (density = this.density) == null || IntSize.m2481equalsimpl(platformMagnifier.mo145getSizeYbymL2g(), this.previousSize)) {
            return;
        }
        Function1 function1 = this.onSizeChanged;
        if (function1 != null) {
            function1.invoke(DpSize.m2446boximpl(density.mo211toDpSizekrfVVM(IntSizeKt.m2491toSizeozmzZPI(platformMagnifier.mo145getSizeYbymL2g()))));
        }
        this.previousSize = IntSize.m2479boximpl(platformMagnifier.mo145getSizeYbymL2g());
    }

    @Override // androidx.compose.ui.node.DrawModifierNode
    public void draw(ContentDrawScope contentDrawScope) {
        contentDrawScope.drawContent();
        Channel channel = this.drawSignalChannel;
        if (channel != null) {
            ChannelResult.m2834boximpl(channel.mo2833trySendJP2dKIU(Unit.INSTANCE));
        }
    }

    @Override // androidx.compose.ui.node.GlobalPositionAwareModifierNode
    public void onGloballyPositioned(LayoutCoordinates layoutCoordinates) {
        setLayoutCoordinates(layoutCoordinates);
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public void applySemantics(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        semanticsPropertyReceiver.set(Magnifier_androidKt.getMagnifierPositionInRoot(), new Function0() { // from class: androidx.compose.foundation.MagnifierNode$applySemantics$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Object invoke() {
                return Offset.m1158boximpl(m140invokeF1C5BW0());
            }

            /* renamed from: invoke-F1C5BW0, reason: not valid java name */
            public final long m140invokeF1C5BW0() {
                long j;
                j = MagnifierNode.this.sourceCenterInRoot;
                return j;
            }
        });
    }
}
