package androidx.compose.material3.pulltorefresh;

import androidx.compose.runtime.ParcelableSnapshotMutableFloatState;
import androidx.compose.ui.input.nestedscroll.NestedScrollConnection;
import androidx.compose.ui.input.nestedscroll.NestedScrollNode;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.unit.Velocity;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.JobKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class PullToRefreshModifierNode extends DelegatingNode implements NestedScrollConnection {
    public boolean isRefreshing;
    public Function0 onRefresh;
    public PullToRefreshStateImpl state;
    public float threshold;
    public boolean enabled = true;
    public final NestedScrollNode nestedScrollNode = new NestedScrollNode(this, null);
    public final ParcelableSnapshotMutableFloatState verticalOffset$delegate = new ParcelableSnapshotMutableFloatState(0.0f);
    public final ParcelableSnapshotMutableFloatState distancePulled$delegate = new ParcelableSnapshotMutableFloatState(0.0f);

    public PullToRefreshModifierNode(boolean z, Function0 function0, PullToRefreshStateImpl pullToRefreshStateImpl, float f) {
        this.isRefreshing = z;
        this.onRefresh = function0;
        this.state = pullToRefreshStateImpl;
        this.threshold = f;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0026  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x005b  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0036  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object access$animateToThreshold(androidx.compose.material3.pulltorefresh.PullToRefreshModifierNode r8, kotlin.coroutines.jvm.internal.ContinuationImpl r9) {
        /*
            r8.getClass()
            boolean r0 = r9 instanceof androidx.compose.material3.pulltorefresh.PullToRefreshModifierNode$animateToThreshold$1
            if (r0 == 0) goto L17
            r0 = r9
            androidx.compose.material3.pulltorefresh.PullToRefreshModifierNode$animateToThreshold$1 r0 = (androidx.compose.material3.pulltorefresh.PullToRefreshModifierNode$animateToThreshold$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L17
            int r1 = r1 - r2
            r0.label = r1
        L15:
            r5 = r0
            goto L1d
        L17:
            androidx.compose.material3.pulltorefresh.PullToRefreshModifierNode$animateToThreshold$1 r0 = new androidx.compose.material3.pulltorefresh.PullToRefreshModifierNode$animateToThreshold$1
            r0.<init>(r8, r9)
            goto L15
        L1d:
            java.lang.Object r9 = r5.result
            int r0 = r5.label
            kotlin.Unit r7 = kotlin.Unit.INSTANCE
            r1 = 1
            if (r0 == 0) goto L36
            if (r0 != r1) goto L2f
            kotlin.ResultKt.throwOnFailure(r9)     // Catch: java.lang.Throwable -> L2c
            goto L57
        L2c:
            r0 = move-exception
            r9 = r0
            goto L6c
        L2f:
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r8)
            r8 = 0
            return r8
        L36:
            kotlin.ResultKt.throwOnFailure(r9)
            androidx.compose.material3.pulltorefresh.PullToRefreshStateImpl r9 = r8.state     // Catch: java.lang.Throwable -> L2c
            r5.label = r1     // Catch: java.lang.Throwable -> L2c
            androidx.compose.animation.core.Animatable r1 = r9.anim     // Catch: java.lang.Throwable -> L2c
            java.lang.Float r2 = new java.lang.Float     // Catch: java.lang.Throwable -> L2c
            r9 = 1065353216(0x3f800000, float:1.0)
            r2.<init>(r9)     // Catch: java.lang.Throwable -> L2c
            r4 = 0
            r6 = 14
            r3 = 0
            java.lang.Object r9 = androidx.compose.animation.core.Animatable.animateTo$default(r1, r2, r3, r4, r5, r6)     // Catch: java.lang.Throwable -> L2c
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r9 != r0) goto L53
            goto L54
        L53:
            r9 = r7
        L54:
            if (r9 != r0) goto L57
            return r0
        L57:
            boolean r9 = r8.isAttached
            if (r9 == 0) goto L6b
            int r9 = r8.getThresholdPx()
            float r9 = (float) r9
            r8.setDistancePulled(r9)
            int r9 = r8.getThresholdPx()
            float r9 = (float) r9
            r8.setVerticalOffset(r9)
        L6b:
            return r7
        L6c:
            boolean r0 = r8.isAttached
            if (r0 == 0) goto L80
            int r0 = r8.getThresholdPx()
            float r0 = (float) r0
            r8.setDistancePulled(r0)
            int r0 = r8.getThresholdPx()
            float r0 = (float) r0
            r8.setVerticalOffset(r0)
        L80:
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.pulltorefresh.PullToRefreshModifierNode.access$animateToThreshold(androidx.compose.material3.pulltorefresh.PullToRefreshModifierNode, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0034  */
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
            int r0 = r5.label
            kotlin.Unit r7 = kotlin.Unit.INSTANCE
            r1 = 1
            r8 = 0
            if (r0 == 0) goto L34
            if (r0 != r1) goto L2d
            kotlin.ResultKt.throwOnFailure(r10)     // Catch: java.lang.Throwable -> L2a
            goto L53
        L2a:
            r0 = move-exception
            r10 = r0
            goto L5a
        L2d:
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r9)
            r9 = 0
            return r9
        L34:
            kotlin.ResultKt.throwOnFailure(r10)
            androidx.compose.material3.pulltorefresh.PullToRefreshStateImpl r10 = r9.state     // Catch: java.lang.Throwable -> L2a
            r5.label = r1     // Catch: java.lang.Throwable -> L2a
            androidx.compose.animation.core.Animatable r1 = r10.anim     // Catch: java.lang.Throwable -> L2a
            java.lang.Float r2 = new java.lang.Float     // Catch: java.lang.Throwable -> L2a
            r2.<init>(r8)     // Catch: java.lang.Throwable -> L2a
            r4 = 0
            r6 = 14
            r3 = 0
            java.lang.Object r10 = androidx.compose.animation.core.Animatable.animateTo$default(r1, r2, r3, r4, r5, r6)     // Catch: java.lang.Throwable -> L2a
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
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

    /* renamed from: consumeAvailableOffset-MK-Hz9U, reason: not valid java name */
    public final long m374consumeAvailableOffsetMKHz9U(long j) {
        float floatValue;
        float thresholdPx;
        if (this.isRefreshing) {
            floatValue = 0.0f;
        } else {
            ParcelableSnapshotMutableFloatState parcelableSnapshotMutableFloatState = this.distancePulled$delegate;
            float intBitsToFloat = Float.intBitsToFloat((int) (j & 4294967295L)) + parcelableSnapshotMutableFloatState.getFloatValue();
            if (intBitsToFloat < 0.0f) {
                intBitsToFloat = 0.0f;
            }
            floatValue = intBitsToFloat - parcelableSnapshotMutableFloatState.getFloatValue();
            setDistancePulled(intBitsToFloat);
            if (parcelableSnapshotMutableFloatState.getFloatValue() * 0.5f <= getThresholdPx()) {
                thresholdPx = parcelableSnapshotMutableFloatState.getFloatValue() * 0.5f;
            } else {
                float coerceIn = RangesKt.coerceIn(Math.abs((parcelableSnapshotMutableFloatState.getFloatValue() * 0.5f) / getThresholdPx()) - 1.0f, 0.0f, 2.0f);
                thresholdPx = getThresholdPx() + (getThresholdPx() * (coerceIn - (((float) Math.pow(coerceIn, 2.0d)) / 4.0f)));
            }
            setVerticalOffset(thresholdPx);
        }
        return (Float.floatToRawIntBits(0.0f) << 32) | (4294967295L & Float.floatToRawIntBits(floatValue));
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final boolean getShouldAutoInvalidate() {
        return false;
    }

    public final int getThresholdPx() {
        return HitTestResultKt.requireLayoutNode(this).density.mo171roundToPx0680j_4(this.threshold);
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void onAttach() {
        delegate(this.nestedScrollNode);
        JobKt.launch$default(getCoroutineScope(), null, null, new PullToRefreshModifierNode$update$1(this, null, 1), 3);
        setVerticalOffset(this.isRefreshing ? getThresholdPx() : 0.0f);
    }

    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    /* renamed from: onPostFling-RZ2iAVY */
    public final Object mo185onPostFlingRZ2iAVY(long j, long j2, Continuation continuation) {
        return new Velocity(0L);
    }

    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    /* renamed from: onPostScroll-DzOQY0M */
    public final long mo186onPostScrollDzOQY0M(int i, long j, long j2) {
        if (this.state.anim.isRunning() || !this.enabled || i != 1) {
            return 0L;
        }
        long m374consumeAvailableOffsetMKHz9U = m374consumeAvailableOffsetMKHz9U(j2);
        JobKt.launch$default(getCoroutineScope(), null, null, new PullToRefreshModifierNode$update$1(this, null, 2), 3);
        return m374consumeAvailableOffsetMKHz9U;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0021  */
    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    /* renamed from: onPreFling-QWom1Mo */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object mo187onPreFlingQWom1Mo(long r5, kotlin.coroutines.Continuation r7) {
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
            int r1 = r0.label
            r2 = 1
            if (r1 == 0) goto L2e
            if (r1 != r2) goto L27
            kotlin.ResultKt.throwOnFailure(r7)
            goto L40
        L27:
            java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r4)
            r4 = 0
            return r4
        L2e:
            kotlin.ResultKt.throwOnFailure(r7)
            float r5 = androidx.compose.ui.unit.Velocity.m780getYimpl(r5)
            r0.label = r2
            java.lang.Object r7 = r4.onRelease(r5, r0)
            kotlin.coroutines.intrinsics.CoroutineSingletons r4 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r7 != r4) goto L40
            return r4
        L40:
            java.lang.Number r7 = (java.lang.Number) r7
            float r4 = r7.floatValue()
            r5 = 0
            long r4 = org.slf4j.helpers.Util.Velocity(r5, r4)
            androidx.compose.ui.unit.Velocity r6 = new androidx.compose.ui.unit.Velocity
            r6.<init>(r4)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.pulltorefresh.PullToRefreshModifierNode.mo187onPreFlingQWom1Mo(long, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    /* renamed from: onPreScroll-OzD1aCk */
    public final long mo188onPreScrollOzD1aCk(int i, long j) {
        if (!this.state.anim.isRunning() && this.enabled && i == 1 && Float.intBitsToFloat((int) (4294967295L & j)) < 0.0f) {
            return m374consumeAvailableOffsetMKHz9U(j);
        }
        return 0L;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x002f  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0020  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object onRelease(float r6, kotlin.coroutines.jvm.internal.ContinuationImpl r7) {
        /*
            r5 = this;
            boolean r0 = r7 instanceof androidx.compose.material3.pulltorefresh.PullToRefreshModifierNode$onRelease$1
            if (r0 == 0) goto L13
            r0 = r7
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
            r0.<init>(r5, r7)
        L18:
            java.lang.Object r7 = r0.result
            int r1 = r0.label
            r2 = 1
            r3 = 0
            if (r1 == 0) goto L2f
            if (r1 != r2) goto L28
            float r6 = r0.F$0
            kotlin.ResultKt.throwOnFailure(r7)
            goto L6f
        L28:
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r5)
            r5 = 0
            return r5
        L2f:
            kotlin.ResultKt.throwOnFailure(r7)
            boolean r7 = r5.isRefreshing
            if (r7 == 0) goto L3c
            java.lang.Float r5 = new java.lang.Float
            r5.<init>(r3)
            return r5
        L3c:
            androidx.compose.runtime.ParcelableSnapshotMutableFloatState r7 = r5.distancePulled$delegate
            float r1 = r7.getFloatValue()
            r4 = 1056964608(0x3f000000, float:0.5)
            float r1 = r1 * r4
            int r4 = r5.getThresholdPx()
            float r4 = (float) r4
            int r1 = (r1 > r4 ? 1 : (r1 == r4 ? 0 : -1))
            if (r1 <= 0) goto L53
            kotlin.jvm.functions.Function0 r1 = r5.onRefresh
            r1.invoke()
        L53:
            float r7 = r7.getFloatValue()
            int r7 = (r7 > r3 ? 1 : (r7 == r3 ? 0 : -1))
            if (r7 != 0) goto L5d
        L5b:
            r6 = r3
            goto L62
        L5d:
            int r7 = (r6 > r3 ? 1 : (r6 == r3 ? 0 : -1))
            if (r7 >= 0) goto L62
            goto L5b
        L62:
            r0.F$0 = r6
            r0.label = r2
            java.lang.Object r7 = r5.animateToHidden(r0)
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r7 != r0) goto L6f
            return r0
        L6f:
            r5.setDistancePulled(r3)
            java.lang.Float r5 = new java.lang.Float
            r5.<init>(r6)
            return r5
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
