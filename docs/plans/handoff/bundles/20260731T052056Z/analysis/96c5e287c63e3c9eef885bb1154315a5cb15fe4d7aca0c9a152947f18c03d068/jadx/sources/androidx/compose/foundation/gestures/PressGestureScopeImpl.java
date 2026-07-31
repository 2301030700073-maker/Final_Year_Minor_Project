package androidx.compose.foundation.gestures;

import androidx.compose.ui.unit.Density;
import kotlinx.coroutines.sync.MutexImpl;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class PressGestureScopeImpl implements Density {
    public final /* synthetic */ Density $$delegate_0;
    public boolean isCanceled;
    public boolean isReleased;
    public final MutexImpl mutex = new MutexImpl();

    public PressGestureScopeImpl(Density density) {
        this.$$delegate_0 = density;
    }

    public final void cancel() {
        this.isCanceled = true;
        MutexImpl mutexImpl = this.mutex;
        if (mutexImpl.isLocked()) {
            mutexImpl.unlock(null);
        }
    }

    @Override // androidx.compose.ui.unit.Density
    public final float getDensity() {
        return this.$$delegate_0.getDensity();
    }

    @Override // androidx.compose.ui.unit.Density
    public final float getFontScale() {
        return this.$$delegate_0.getFontScale();
    }

    public final void release() {
        this.isReleased = true;
        MutexImpl mutexImpl = this.mutex;
        if (mutexImpl.isLocked()) {
            mutexImpl.unlock(null);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0021  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object reset(kotlin.coroutines.jvm.internal.ContinuationImpl r5) {
        /*
            r4 = this;
            boolean r0 = r5 instanceof androidx.compose.foundation.gestures.PressGestureScopeImpl$reset$1
            if (r0 == 0) goto L13
            r0 = r5
            androidx.compose.foundation.gestures.PressGestureScopeImpl$reset$1 r0 = (androidx.compose.foundation.gestures.PressGestureScopeImpl$reset$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.compose.foundation.gestures.PressGestureScopeImpl$reset$1 r0 = new androidx.compose.foundation.gestures.PressGestureScopeImpl$reset$1
            r0.<init>(r4, r5)
        L18:
            java.lang.Object r5 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L2e
            if (r2 != r3) goto L27
            kotlin.ResultKt.throwOnFailure(r5)
            goto L3c
        L27:
            java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r4)
            r4 = 0
            return r4
        L2e:
            kotlin.ResultKt.throwOnFailure(r5)
            r0.label = r3
            kotlinx.coroutines.sync.MutexImpl r5 = r4.mutex
            java.lang.Object r5 = r5.lock(r0)
            if (r5 != r1) goto L3c
            return r1
        L3c:
            r5 = 0
            r4.isReleased = r5
            r4.isCanceled = r5
            kotlin.Unit r4 = kotlin.Unit.INSTANCE
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.PressGestureScopeImpl.reset(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: roundToPx--R2X_6o, reason: not valid java name */
    public final int mo80roundToPxR2X_6o(long j) {
        return this.$$delegate_0.mo80roundToPxR2X_6o(j);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: roundToPx-0680j_4, reason: not valid java name */
    public final int mo81roundToPx0680j_4(float f) {
        return this.$$delegate_0.mo81roundToPx0680j_4(f);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toDp-GaN1DYA, reason: not valid java name */
    public final float mo82toDpGaN1DYA(long j) {
        return this.$$delegate_0.mo82toDpGaN1DYA(j);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toDp-u2uoSUM, reason: not valid java name */
    public final float mo83toDpu2uoSUM(float f) {
        return this.$$delegate_0.mo83toDpu2uoSUM(f);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toDpSize-k-rfVVM, reason: not valid java name */
    public final long mo85toDpSizekrfVVM(long j) {
        return this.$$delegate_0.mo85toDpSizekrfVVM(j);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toPx--R2X_6o, reason: not valid java name */
    public final float mo86toPxR2X_6o(long j) {
        return this.$$delegate_0.mo86toPxR2X_6o(j);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toPx-0680j_4, reason: not valid java name */
    public final float mo87toPx0680j_4(float f) {
        return this.$$delegate_0.mo87toPx0680j_4(f);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toSize-XkaWNTQ, reason: not valid java name */
    public final long mo88toSizeXkaWNTQ(long j) {
        return this.$$delegate_0.mo88toSizeXkaWNTQ(j);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toSp-kPz2Gy4, reason: not valid java name */
    public final long mo89toSpkPz2Gy4(float f) {
        return this.$$delegate_0.mo89toSpkPz2Gy4(f);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object tryAwaitRelease(kotlin.coroutines.jvm.internal.ContinuationImpl r7) {
        /*
            r6 = this;
            boolean r0 = r7 instanceof androidx.compose.foundation.gestures.PressGestureScopeImpl$tryAwaitRelease$1
            if (r0 == 0) goto L13
            r0 = r7
            androidx.compose.foundation.gestures.PressGestureScopeImpl$tryAwaitRelease$1 r0 = (androidx.compose.foundation.gestures.PressGestureScopeImpl$tryAwaitRelease$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.compose.foundation.gestures.PressGestureScopeImpl$tryAwaitRelease$1 r0 = new androidx.compose.foundation.gestures.PressGestureScopeImpl$tryAwaitRelease$1
            r0.<init>(r6, r7)
        L18:
            java.lang.Object r7 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 0
            kotlinx.coroutines.sync.MutexImpl r4 = r6.mutex
            r5 = 1
            if (r2 == 0) goto L30
            if (r2 != r5) goto L2a
            kotlin.ResultKt.throwOnFailure(r7)
            goto L44
        L2a:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r6)
            return r3
        L30:
            kotlin.ResultKt.throwOnFailure(r7)
            boolean r7 = r6.isReleased
            if (r7 != 0) goto L47
            boolean r7 = r6.isCanceled
            if (r7 != 0) goto L47
            r0.label = r5
            java.lang.Object r7 = r4.lock(r0)
            if (r7 != r1) goto L44
            return r1
        L44:
            r4.unlock(r3)
        L47:
            boolean r6 = r6.isReleased
            java.lang.Boolean r6 = java.lang.Boolean.valueOf(r6)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.PressGestureScopeImpl.tryAwaitRelease(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toDp-u2uoSUM, reason: not valid java name */
    public final float mo84toDpu2uoSUM(int i) {
        return this.$$delegate_0.mo84toDpu2uoSUM(i);
    }
}
