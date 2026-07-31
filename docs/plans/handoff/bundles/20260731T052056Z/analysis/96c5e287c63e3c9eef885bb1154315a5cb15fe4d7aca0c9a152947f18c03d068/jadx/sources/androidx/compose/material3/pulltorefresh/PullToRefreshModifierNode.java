package androidx.compose.material3.pulltorefresh;

import androidx.compose.runtime.ParcelableSnapshotMutableFloatState;
import androidx.compose.ui.input.nestedscroll.NestedScrollConnection;
import androidx.compose.ui.input.nestedscroll.NestedScrollNode;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.unit.Velocity;
import androidx.recyclerview.widget.RecyclerView;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.text.RegexKt;
import kotlinx.coroutines.AwaitKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class PullToRefreshModifierNode extends DelegatingNode implements NestedScrollConnection {
    public boolean isRefreshing;
    public Function0 onRefresh;
    public PullToRefreshStateImpl state;
    public float threshold;
    public boolean enabled = true;
    public final NestedScrollNode nestedScrollNode = new NestedScrollNode(this, null);
    public final ParcelableSnapshotMutableFloatState verticalOffset$delegate = new ParcelableSnapshotMutableFloatState(RecyclerView.DECELERATION_RATE);
    public final ParcelableSnapshotMutableFloatState distancePulled$delegate = new ParcelableSnapshotMutableFloatState(RecyclerView.DECELERATION_RATE);

    public PullToRefreshModifierNode(boolean z, Function0 function0, PullToRefreshStateImpl pullToRefreshStateImpl, float f) {
        this.isRefreshing = z;
        this.onRefresh = function0;
        this.state = pullToRefreshStateImpl;
        this.threshold = f;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0026  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0036  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object animateToHidden(kotlin.coroutines.jvm.internal.ContinuationImpl r10) {
        /*
            r9 = this;
            boolean r0 = r10 instanceof androidx.compose.material3.pulltorefresh.PullToRefreshModifierNode$animateToHidden$1
            if (r0 == 0) goto L14
            r0 = r10
            androidx.compose.material3.pulltorefresh.PullToRefreshModifierNode$animateToHidden$1 r0 = (androidx.compose.material3.pulltorefresh.PullToRefreshModifierNode$animateToHidden$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L14
            int r1 = r1 - r2
            r0.label = r1
        L12:
            r5 = r0
            goto L1a
        L14:
            androidx.compose.material3.pulltorefresh.PullToRefreshModifierNode$animateToHidden$1 r0 = new androidx.compose.material3.pulltorefresh.PullToRefreshModifierNode$animateToHidden$1
            r0.<init>(r9, r10)
            goto L12
        L1a:
            java.lang.Object r10 = r5.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r5.label
            kotlin.Unit r7 = kotlin.Unit.INSTANCE
            r2 = 1
            r8 = 0
            if (r1 == 0) goto L36
            if (r1 != r2) goto L2f
            kotlin.ResultKt.throwOnFailure(r10)     // Catch: java.lang.Throwable -> L2c
            goto L53
        L2c:
            r0 = move-exception
            r10 = r0
            goto L5a
        L2f:
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r9)
            r9 = 0
            return r9
        L36:
            kotlin.ResultKt.throwOnFailure(r10)
            androidx.compose.material3.pulltorefresh.PullToRefreshStateImpl r10 = r9.state     // Catch: java.lang.Throwable -> L2c
            r5.label = r2     // Catch: java.lang.Throwable -> L2c
            androidx.compose.animation.core.Animatable r1 = r10.anim     // Catch: java.lang.Throwable -> L2c
            java.lang.Float r2 = new java.lang.Float     // Catch: java.lang.Throwable -> L2c
            r2.<init>(r8)     // Catch: java.lang.Throwable -> L2c
            r4 = 0
            r6 = 14
            r3 = 0
            java.lang.Object r10 = androidx.compose.animation.core.Animatable.animateTo$default(r1, r2, r3, r4, r5, r6)     // Catch: java.lang.Throwable -> L2c
            if (r10 != r0) goto L4f
            goto L50
        L4f:
            r10 = r7
        L50:
            if (r10 != r0) goto L53
            return r0
        L53:
            r9.setDistancePulled(r8)
            r9.setVerticalOffset(r8)
            return r7
        L5a:
            r9.setDistancePulled(r8)
            r9.setVerticalOffset(r8)
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.pulltorefresh.PullToRefreshModifierNode.animateToHidden(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0035  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object animateToThreshold(kotlin.coroutines.jvm.internal.ContinuationImpl r9) {
        /*
            r8 = this;
            boolean r0 = r9 instanceof androidx.compose.material3.pulltorefresh.PullToRefreshModifierNode$animateToThreshold$1
            if (r0 == 0) goto L14
            r0 = r9
            androidx.compose.material3.pulltorefresh.PullToRefreshModifierNode$animateToThreshold$1 r0 = (androidx.compose.material3.pulltorefresh.PullToRefreshModifierNode$animateToThreshold$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L14
            int r1 = r1 - r2
            r0.label = r1
        L12:
            r5 = r0
            goto L1a
        L14:
            androidx.compose.material3.pulltorefresh.PullToRefreshModifierNode$animateToThreshold$1 r0 = new androidx.compose.material3.pulltorefresh.PullToRefreshModifierNode$animateToThreshold$1
            r0.<init>(r8, r9)
            goto L12
        L1a:
            java.lang.Object r9 = r5.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r5.label
            kotlin.Unit r7 = kotlin.Unit.INSTANCE
            r2 = 1
            if (r1 == 0) goto L35
            if (r1 != r2) goto L2e
            kotlin.ResultKt.throwOnFailure(r9)     // Catch: java.lang.Throwable -> L2b
            goto L54
        L2b:
            r0 = move-exception
            r9 = r0
            goto L69
        L2e:
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r8)
            r8 = 0
            return r8
        L35:
            kotlin.ResultKt.throwOnFailure(r9)
            androidx.compose.material3.pulltorefresh.PullToRefreshStateImpl r9 = r8.state     // Catch: java.lang.Throwable -> L2b
            r5.label = r2     // Catch: java.lang.Throwable -> L2b
            androidx.compose.animation.core.Animatable r1 = r9.anim     // Catch: java.lang.Throwable -> L2b
            java.lang.Float r2 = new java.lang.Float     // Catch: java.lang.Throwable -> L2b
            r9 = 1065353216(0x3f800000, float:1.0)
            r2.<init>(r9)     // Catch: java.lang.Throwable -> L2b
            r4 = 0
            r6 = 14
            r3 = 0
            java.lang.Object r9 = androidx.compose.animation.core.Animatable.animateTo$default(r1, r2, r3, r4, r5, r6)     // Catch: java.lang.Throwable -> L2b
            if (r9 != r0) goto L50
            goto L51
        L50:
            r9 = r7
        L51:
            if (r9 != r0) goto L54
            return r0
        L54:
            boolean r9 = r8.isAttached
            if (r9 == 0) goto L68
            int r9 = r8.getThresholdPx()
            float r9 = (float) r9
            r8.setDistancePulled(r9)
            int r9 = r8.getThresholdPx()
            float r9 = (float) r9
            r8.setVerticalOffset(r9)
        L68:
            return r7
        L69:
            boolean r0 = r8.isAttached
            if (r0 == 0) goto L7d
            int r0 = r8.getThresholdPx()
            float r0 = (float) r0
            r8.setDistancePulled(r0)
            int r0 = r8.getThresholdPx()
            float r0 = (float) r0
            r8.setVerticalOffset(r0)
        L7d:
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.pulltorefresh.PullToRefreshModifierNode.animateToThreshold(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* renamed from: consumeAvailableOffset-MK-Hz9U, reason: not valid java name */
    public final long m321consumeAvailableOffsetMKHz9U(long j) {
        float floatValue;
        float thresholdPx;
        if (this.isRefreshing) {
            floatValue = 0.0f;
        } else {
            ParcelableSnapshotMutableFloatState parcelableSnapshotMutableFloatState = this.distancePulled$delegate;
            float intBitsToFloat = Float.intBitsToFloat((int) (j & 4294967295L)) + parcelableSnapshotMutableFloatState.getFloatValue();
            if (intBitsToFloat < RecyclerView.DECELERATION_RATE) {
                intBitsToFloat = 0.0f;
            }
            floatValue = intBitsToFloat - parcelableSnapshotMutableFloatState.getFloatValue();
            setDistancePulled(intBitsToFloat);
            if (parcelableSnapshotMutableFloatState.getFloatValue() * 0.5f <= getThresholdPx()) {
                thresholdPx = parcelableSnapshotMutableFloatState.getFloatValue() * 0.5f;
            } else {
                float coerceIn = RegexKt.coerceIn(Math.abs((parcelableSnapshotMutableFloatState.getFloatValue() * 0.5f) / getThresholdPx()) - 1.0f, RecyclerView.DECELERATION_RATE, 2.0f);
                thresholdPx = getThresholdPx() + (getThresholdPx() * (coerceIn - (((float) Math.pow(coerceIn, 2.0d)) / 4.0f)));
            }
            setVerticalOffset(thresholdPx);
        }
        return (Float.floatToRawIntBits(RecyclerView.DECELERATION_RATE) << 32) | (4294967295L & Float.floatToRawIntBits(floatValue));
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final boolean getShouldAutoInvalidate() {
        return false;
    }

    public final int getThresholdPx() {
        return HitTestResultKt.requireLayoutNode(this).density.mo81roundToPx0680j_4(this.threshold);
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void onAttach() {
        delegate(this.nestedScrollNode);
        AwaitKt.launch$default(getCoroutineScope(), null, null, new PullToRefreshModifierNode$update$1(this, null, 1), 3);
        setVerticalOffset(this.isRefreshing ? getThresholdPx() : RecyclerView.DECELERATION_RATE);
    }

    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    /* renamed from: onPostFling-RZ2iAVY */
    public final Object mo2onPostFlingRZ2iAVY(long j, long j2, Continuation continuation) {
        return new Velocity(0L);
    }

    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    /* renamed from: onPostScroll-DzOQY0M */
    public final long mo3onPostScrollDzOQY0M(int i, long j, long j2) {
        if (this.state.anim.isRunning() || !this.enabled || i != 1) {
            return 0L;
        }
        long m321consumeAvailableOffsetMKHz9U = m321consumeAvailableOffsetMKHz9U(j2);
        AwaitKt.launch$default(getCoroutineScope(), null, null, new PullToRefreshModifierNode$update$1(this, null, 2), 3);
        return m321consumeAvailableOffsetMKHz9U;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    /* renamed from: onPreFling-QWom1Mo */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object mo4onPreFlingQWom1Mo(long r5, kotlin.coroutines.Continuation r7) {
        /*
            r4 = this;
            boolean r0 = r7 instanceof androidx.compose.material3.pulltorefresh.PullToRefreshModifierNode$onPreFling$1
            if (r0 == 0) goto L13
            r0 = r7
            androidx.compose.material3.pulltorefresh.PullToRefreshModifierNode$onPreFling$1 r0 = (androidx.compose.material3.pulltorefresh.PullToRefreshModifierNode$onPreFling$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L1a
        L13:
            androidx.compose.material3.pulltorefresh.PullToRefreshModifierNode$onPreFling$1 r0 = new androidx.compose.material3.pulltorefresh.PullToRefreshModifierNode$onPreFling$1
            kotlin.coroutines.jvm.internal.ContinuationImpl r7 = (kotlin.coroutines.jvm.internal.ContinuationImpl) r7
            r0.<init>(r4, r7)
        L1a:
            java.lang.Object r7 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L30
            if (r2 != r3) goto L29
            kotlin.ResultKt.throwOnFailure(r7)
            goto L40
        L29:
            java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r4)
            r4 = 0
            return r4
        L30:
            kotlin.ResultKt.throwOnFailure(r7)
            float r5 = androidx.compose.ui.unit.Velocity.m732getYimpl(r5)
            r0.label = r3
            java.lang.Object r7 = r4.onRelease(r5, r0)
            if (r7 != r1) goto L40
            return r1
        L40:
            java.lang.Number r7 = (java.lang.Number) r7
            float r4 = r7.floatValue()
            r5 = 0
            long r4 = kotlin.ResultKt.Velocity(r5, r4)
            androidx.compose.ui.unit.Velocity r6 = new androidx.compose.ui.unit.Velocity
            r6.<init>(r4)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.pulltorefresh.PullToRefreshModifierNode.mo4onPreFlingQWom1Mo(long, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    /* renamed from: onPreScroll-OzD1aCk */
    public final long mo5onPreScrollOzD1aCk(long j, int i) {
        if (!this.state.anim.isRunning() && this.enabled && i == 1 && Float.intBitsToFloat((int) (4294967295L & j)) < RecyclerView.DECELERATION_RATE) {
            return m321consumeAvailableOffsetMKHz9U(j);
        }
        return 0L;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object onRelease(float r7, kotlin.coroutines.jvm.internal.ContinuationImpl r8) {
        /*
            r6 = this;
            boolean r0 = r8 instanceof androidx.compose.material3.pulltorefresh.PullToRefreshModifierNode$onRelease$1
            if (r0 == 0) goto L13
            r0 = r8
            androidx.compose.material3.pulltorefresh.PullToRefreshModifierNode$onRelease$1 r0 = (androidx.compose.material3.pulltorefresh.PullToRefreshModifierNode$onRelease$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.compose.material3.pulltorefresh.PullToRefreshModifierNode$onRelease$1 r0 = new androidx.compose.material3.pulltorefresh.PullToRefreshModifierNode$onRelease$1
            r0.<init>(r6, r8)
        L18:
            java.lang.Object r8 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L31
            if (r2 != r3) goto L2a
            float r7 = r0.F$0
            kotlin.ResultKt.throwOnFailure(r8)
            goto L6f
        L2a:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r6)
            r6 = 0
            return r6
        L31:
            kotlin.ResultKt.throwOnFailure(r8)
            boolean r8 = r6.isRefreshing
            if (r8 == 0) goto L3e
            java.lang.Float r6 = new java.lang.Float
            r6.<init>(r4)
            return r6
        L3e:
            androidx.compose.runtime.ParcelableSnapshotMutableFloatState r8 = r6.distancePulled$delegate
            float r2 = r8.getFloatValue()
            r5 = 1056964608(0x3f000000, float:0.5)
            float r2 = r2 * r5
            int r5 = r6.getThresholdPx()
            float r5 = (float) r5
            int r2 = (r2 > r5 ? 1 : (r2 == r5 ? 0 : -1))
            if (r2 <= 0) goto L55
            kotlin.jvm.functions.Function0 r2 = r6.onRefresh
            r2.invoke()
        L55:
            float r8 = r8.getFloatValue()
            int r8 = (r8 > r4 ? 1 : (r8 == r4 ? 0 : -1))
            if (r8 != 0) goto L5f
        L5d:
            r7 = r4
            goto L64
        L5f:
            int r8 = (r7 > r4 ? 1 : (r7 == r4 ? 0 : -1))
            if (r8 >= 0) goto L64
            goto L5d
        L64:
            r0.F$0 = r7
            r0.label = r3
            java.lang.Object r8 = r6.animateToHidden(r0)
            if (r8 != r1) goto L6f
            return r1
        L6f:
            r6.setDistancePulled(r4)
            java.lang.Float r6 = new java.lang.Float
            r6.<init>(r7)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.pulltorefresh.PullToRefreshModifierNode.onRelease(float, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public final void setDistancePulled(float f) {
        this.distancePulled$delegate.setFloatValue(f);
    }

    public final void setVerticalOffset(float f) {
        this.verticalOffset$delegate.setFloatValue(f);
    }
}
