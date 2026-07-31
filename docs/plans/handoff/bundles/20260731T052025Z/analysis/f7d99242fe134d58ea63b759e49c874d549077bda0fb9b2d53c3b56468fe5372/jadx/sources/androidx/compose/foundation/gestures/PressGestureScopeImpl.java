package androidx.compose.foundation.gestures;

import androidx.compose.ui.unit.Density;
import kotlinx.coroutines.sync.MutexImpl;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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

    /* JADX WARN: Removed duplicated region for block: B:15:0x002c  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x001f  */
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
            int r1 = r0.label
            r2 = 1
            if (r1 == 0) goto L2c
            if (r1 != r2) goto L25
            kotlin.ResultKt.throwOnFailure(r5)
            goto L3c
        L25:
            java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r4)
            r4 = 0
            return r4
        L2c:
            kotlin.ResultKt.throwOnFailure(r5)
            r0.label = r2
            kotlinx.coroutines.sync.MutexImpl r5 = r4.mutex
            java.lang.Object r5 = r5.lock(r0)
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r5 != r0) goto L3c
            return r0
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
    /* renamed from: roundToPx-0680j_4, reason: not valid java name */
    public final int mo171roundToPx0680j_4(float f) {
        return this.$$delegate_0.mo171roundToPx0680j_4(f);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toDp-GaN1DYA, reason: not valid java name */
    public final float mo172toDpGaN1DYA(long j) {
        return this.$$delegate_0.mo172toDpGaN1DYA(j);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toDp-u2uoSUM, reason: not valid java name */
    public final float mo173toDpu2uoSUM(float f) {
        return this.$$delegate_0.mo173toDpu2uoSUM(f);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toDpSize-k-rfVVM, reason: not valid java name */
    public final long mo175toDpSizekrfVVM(long j) {
        return this.$$delegate_0.mo175toDpSizekrfVVM(j);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toPx--R2X_6o, reason: not valid java name */
    public final float mo176toPxR2X_6o(long j) {
        return this.$$delegate_0.mo176toPxR2X_6o(j);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toPx-0680j_4, reason: not valid java name */
    public final float mo177toPx0680j_4(float f) {
        return this.$$delegate_0.mo177toPx0680j_4(f);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toSize-XkaWNTQ, reason: not valid java name */
    public final long mo178toSizeXkaWNTQ(long j) {
        return this.$$delegate_0.mo178toSizeXkaWNTQ(j);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toSp-0xMU5do, reason: not valid java name */
    public final long mo179toSp0xMU5do(float f) {
        return this.$$delegate_0.mo179toSp0xMU5do(f);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toSp-kPz2Gy4, reason: not valid java name */
    public final long mo180toSpkPz2Gy4(float f) {
        return this.$$delegate_0.mo180toSpkPz2Gy4(f);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object tryAwaitRelease(kotlin.coroutines.jvm.internal.ContinuationImpl r6) {
        /*
            r5 = this;
            boolean r0 = r6 instanceof androidx.compose.foundation.gestures.PressGestureScopeImpl$tryAwaitRelease$1
            if (r0 == 0) goto L13
            r0 = r6
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
            r0.<init>(r5, r6)
        L18:
            java.lang.Object r6 = r0.result
            int r1 = r0.label
            r2 = 0
            kotlinx.coroutines.sync.MutexImpl r3 = r5.mutex
            r4 = 1
            if (r1 == 0) goto L2e
            if (r1 != r4) goto L28
            kotlin.ResultKt.throwOnFailure(r6)
            goto L44
        L28:
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r5)
            return r2
        L2e:
            kotlin.ResultKt.throwOnFailure(r6)
            boolean r6 = r5.isReleased
            if (r6 != 0) goto L47
            boolean r6 = r5.isCanceled
            if (r6 != 0) goto L47
            r0.label = r4
            java.lang.Object r6 = r3.lock(r0)
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r6 != r0) goto L44
            return r0
        L44:
            r3.unlock(r2)
        L47:
            boolean r5 = r5.isReleased
            java.lang.Boolean r5 = java.lang.Boolean.valueOf(r5)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.PressGestureScopeImpl.tryAwaitRelease(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toDp-u2uoSUM, reason: not valid java name */
    public final float mo174toDpu2uoSUM(int i) {
        return this.$$delegate_0.mo174toDpu2uoSUM(i);
    }
}
