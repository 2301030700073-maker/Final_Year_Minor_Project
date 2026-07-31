package androidx.camera.camera2.pipe.compat;

import kotlinx.atomicfu.AtomicFU;
import kotlinx.atomicfu.AtomicRef;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SessionSequencer {
    public final AtomicRef state;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class State {
        public static final /* synthetic */ State[] $VALUES;
        public static final State CREATED;
        public static final State CREATING;
        public static final State PENDING;

        static {
            State state = new State("PENDING", 0);
            PENDING = state;
            State state2 = new State("CREATING", 1);
            CREATING = state2;
            State state3 = new State("CREATED", 2);
            CREATED = state3;
            $VALUES = new State[]{state, state2, state3};
        }

        public static State valueOf(String str) {
            return (State) Enum.valueOf(State.class, str);
        }

        public static State[] values() {
            return (State[]) $VALUES.clone();
        }
    }

    public SessionSequencer(ConcurrentSessionSequencer concurrentSessionSequencer) {
        concurrentSessionSequencer.getClass();
        this.state = AtomicFU.atomic(State.PENDING);
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x003b  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x001f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object awaitSessionLock(kotlin.coroutines.jvm.internal.ContinuationImpl r5) {
        /*
            r4 = this;
            boolean r0 = r5 instanceof androidx.camera.camera2.pipe.compat.SessionSequencer$awaitSessionLock$1
            if (r0 == 0) goto L13
            r0 = r5
            androidx.camera.camera2.pipe.compat.SessionSequencer$awaitSessionLock$1 r0 = (androidx.camera.camera2.pipe.compat.SessionSequencer$awaitSessionLock$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.camera.camera2.pipe.compat.SessionSequencer$awaitSessionLock$1 r0 = new androidx.camera.camera2.pipe.compat.SessionSequencer$awaitSessionLock$1
            r0.<init>(r4, r5)
        L18:
            java.lang.Object r5 = r0.result
            int r0 = r0.label
            r1 = 0
            if (r0 == 0) goto L3b
            r2 = 1
            if (r0 != r2) goto L35
            kotlin.ResultKt.throwOnFailure(r5)
            androidx.camera.camera2.pipe.compat.SessionSequencer$State r5 = androidx.camera.camera2.pipe.compat.SessionSequencer.State.PENDING
            androidx.camera.camera2.pipe.compat.SessionSequencer$State r0 = androidx.camera.camera2.pipe.compat.SessionSequencer.State.CREATING
            kotlinx.atomicfu.AtomicRef r4 = r4.state
            boolean r4 = r4.compareAndSet(r5, r0)
            if (r4 == 0) goto L34
            kotlin.Unit r4 = kotlin.Unit.INSTANCE
            return r4
        L34:
            throw r1
        L35:
            java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r4)
            return r1
        L3b:
            kotlin.ResultKt.throwOnFailure(r5)
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.camera.camera2.pipe.compat.SessionSequencer.awaitSessionLock(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public final void release() {
        AtomicRef atomicRef = this.state;
        atomicRef.getClass();
        if (AtomicRef.FU.getAndSet(atomicRef, State.CREATED) == State.CREATING) {
            throw null;
        }
    }
}
