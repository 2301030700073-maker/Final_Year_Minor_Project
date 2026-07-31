package androidx.compose.material3;

import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.compose.runtime.Updater;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.sync.MutexImpl;
import org.wikipedia.talk.TalkTopicsViewModel$watchOrUnwatch$1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SnackbarHostState {
    public final MutexImpl mutex = new MutexImpl();
    public final ParcelableSnapshotMutableState currentSnackbarData$delegate = Updater.mutableStateOf$default(null);

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class SnackbarDataImpl {
        public final CancellableContinuationImpl continuation;
        public final SnackbarVisualsImpl visuals;

        public SnackbarDataImpl(SnackbarVisualsImpl snackbarVisualsImpl, CancellableContinuationImpl cancellableContinuationImpl) {
            this.visuals = snackbarVisualsImpl;
            this.continuation = cancellableContinuationImpl;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && SnackbarDataImpl.class == obj.getClass()) {
                SnackbarDataImpl snackbarDataImpl = (SnackbarDataImpl) obj;
                return Intrinsics.areEqual(this.visuals, snackbarDataImpl.visuals) && this.continuation == snackbarDataImpl.continuation;
            }
            return false;
        }

        public final int hashCode() {
            return this.continuation.hashCode() + (this.visuals.hashCode() * 31);
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class SnackbarVisualsImpl {
        public final SnackbarDuration duration;
        public final String message;

        public SnackbarVisualsImpl(String str, SnackbarDuration snackbarDuration) {
            this.message = str;
            this.duration = snackbarDuration;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || SnackbarVisualsImpl.class != obj.getClass()) {
                return false;
            }
            SnackbarVisualsImpl snackbarVisualsImpl = (SnackbarVisualsImpl) obj;
            return Intrinsics.areEqual(this.message, snackbarVisualsImpl.message) && this.duration == snackbarVisualsImpl.duration;
        }

        public final int hashCode() {
            return this.duration.hashCode() + (((this.message.hashCode() * 961) + 1237) * 31);
        }
    }

    public static Object showSnackbar$default(SnackbarHostState snackbarHostState, String str, SnackbarDuration snackbarDuration, TalkTopicsViewModel$watchOrUnwatch$1 talkTopicsViewModel$watchOrUnwatch$1) {
        snackbarHostState.getClass();
        return snackbarHostState.showSnackbar(new SnackbarVisualsImpl(str, snackbarDuration), talkTopicsViewModel$watchOrUnwatch$1);
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x006f, code lost:
    
        if (r9 != r1) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0071, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x004e, code lost:
    
        if (r9 == r1) goto L25;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:24:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0025  */
    /* JADX WARN: Type inference failed for: r7v0, types: [androidx.compose.material3.SnackbarHostState] */
    /* JADX WARN: Type inference failed for: r7v1, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r7v4, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r7v5, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r7v8 */
    /* JADX WARN: Type inference failed for: r7v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object showSnackbar(androidx.compose.material3.SnackbarHostState.SnackbarVisualsImpl r8, kotlin.coroutines.jvm.internal.ContinuationImpl r9) {
        /*
            r7 = this;
            boolean r0 = r9 instanceof androidx.compose.material3.SnackbarHostState$showSnackbar$2
            if (r0 == 0) goto L13
            r0 = r9
            androidx.compose.material3.SnackbarHostState$showSnackbar$2 r0 = (androidx.compose.material3.SnackbarHostState$showSnackbar$2) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.compose.material3.SnackbarHostState$showSnackbar$2 r0 = new androidx.compose.material3.SnackbarHostState$showSnackbar$2
            r0.<init>(r7, r9)
        L18:
            java.lang.Object r9 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.label
            androidx.compose.runtime.ParcelableSnapshotMutableState r3 = r7.currentSnackbarData$delegate
            r4 = 2
            r5 = 1
            r6 = 0
            if (r2 == 0) goto L3f
            if (r2 == r5) goto L37
            if (r2 != r4) goto L31
            kotlinx.coroutines.sync.Mutex r7 = r0.L$1
            kotlin.ResultKt.throwOnFailure(r9)     // Catch: java.lang.Throwable -> L2f
            goto L72
        L2f:
            r8 = move-exception
            goto L7b
        L31:
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r7)
            return r6
        L37:
            kotlinx.coroutines.sync.Mutex r7 = r0.L$1
            androidx.compose.material3.SnackbarHostState$SnackbarVisualsImpl r8 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r9)
            goto L51
        L3f:
            kotlin.ResultKt.throwOnFailure(r9)
            r0.L$0 = r8
            kotlinx.coroutines.sync.MutexImpl r7 = r7.mutex
            r0.L$1 = r7
            r0.label = r5
            java.lang.Object r9 = r7.lock(r0)
            if (r9 != r1) goto L51
            goto L71
        L51:
            r0.L$0 = r8     // Catch: java.lang.Throwable -> L2f
            r0.L$1 = r7     // Catch: java.lang.Throwable -> L2f
            r0.label = r4     // Catch: java.lang.Throwable -> L2f
            kotlinx.coroutines.CancellableContinuationImpl r9 = new kotlinx.coroutines.CancellableContinuationImpl     // Catch: java.lang.Throwable -> L2f
            kotlin.coroutines.Continuation r0 = kotlin.ExceptionsKt.intercepted(r0)     // Catch: java.lang.Throwable -> L2f
            r9.<init>(r5, r0)     // Catch: java.lang.Throwable -> L2f
            r9.initCancellability()     // Catch: java.lang.Throwable -> L2f
            androidx.compose.material3.SnackbarHostState$SnackbarDataImpl r0 = new androidx.compose.material3.SnackbarHostState$SnackbarDataImpl     // Catch: java.lang.Throwable -> L2f
            r0.<init>(r8, r9)     // Catch: java.lang.Throwable -> L2f
            r3.setValue(r0)     // Catch: java.lang.Throwable -> L2f
            java.lang.Object r9 = r9.getResult()     // Catch: java.lang.Throwable -> L2f
            if (r9 != r1) goto L72
        L71:
            return r1
        L72:
            r3.setValue(r6)     // Catch: java.lang.Throwable -> L79
            r7.unlock(r6)
            return r9
        L79:
            r8 = move-exception
            goto L7f
        L7b:
            r3.setValue(r6)     // Catch: java.lang.Throwable -> L79
            throw r8     // Catch: java.lang.Throwable -> L79
        L7f:
            r7.unlock(r6)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.SnackbarHostState.showSnackbar(androidx.compose.material3.SnackbarHostState$SnackbarVisualsImpl, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}
