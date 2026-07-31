package androidx.camera.camera2.pipe.internal;

import androidx.camera.camera2.pipe.FrameNumber;
import androidx.camera.camera2.pipe.OutputStatus;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.atomicfu.AtomicBoolean;
import kotlinx.atomicfu.AtomicFU;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class OutputDistributor implements AutoCloseable {
    public final LinkedHashMap availableOutputs;
    public long cameraOutputSequenceNumbers;
    public boolean closed;
    public long lastFailedCameraOutputNumber;
    public long lastFailedFrameNumber;
    public final Object lock;
    public long newestCameraOutputNumber;
    public long newestFrameNumber;
    public final OutputMatcher outputMatcher;
    public final ArrayList startedOutputs;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public interface OutputListener {
        /* renamed from: onOutputComplete-3ejhThk */
        void mo86onOutputComplete3ejhThk(Object obj);
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class StartedOutput {
        public final long cameraFrameNumber;
        public final long cameraOutputNumber;
        public final long cameraOutputSequence;
        public final long cameraTimestamp;
        public final AtomicBoolean complete;
        public final boolean isOutOfOrder;
        public final OutputListener outputListener;

        public StartedOutput(boolean z, long j, long j2, long j3, long j4, OutputListener outputListener) {
            outputListener.getClass();
            this.isOutOfOrder = z;
            this.cameraFrameNumber = j;
            this.cameraTimestamp = j2;
            this.cameraOutputSequence = j3;
            this.cameraOutputNumber = j4;
            this.outputListener = outputListener;
            this.complete = AtomicFU.atomic(false);
        }

        /* renamed from: completeWith-DvZWqE8, reason: not valid java name */
        public final void m90completeWithDvZWqE8(long j, Object obj) {
            if (this.complete.compareAndSet()) {
                this.outputListener.mo86onOutputComplete3ejhThk(obj);
                return;
            }
            throw new IllegalStateException(("Output " + this.cameraOutputSequence + " at " + ((Object) FrameNumber.m36toStringimpl(this.cameraFrameNumber)) + " for " + j + " was completed multiple times!").toString());
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof StartedOutput) {
                StartedOutput startedOutput = (StartedOutput) obj;
                if (this.isOutOfOrder == startedOutput.isOutOfOrder && this.cameraFrameNumber == startedOutput.cameraFrameNumber && this.cameraTimestamp == startedOutput.cameraTimestamp && this.cameraOutputSequence == startedOutput.cameraOutputSequence && this.cameraOutputNumber == startedOutput.cameraOutputNumber && Intrinsics.areEqual(this.outputListener, startedOutput.outputListener)) {
                    return true;
                }
            }
            return false;
        }

        public final int hashCode() {
            int i = this.isOutOfOrder ? 1231 : 1237;
            long j = this.cameraFrameNumber;
            long j2 = this.cameraTimestamp;
            int i2 = (((((int) (j ^ (j >>> 32))) + (i * 31)) * 31) + ((int) (j2 ^ (j2 >>> 32)))) * 31;
            long j3 = this.cameraOutputSequence;
            int i3 = (i2 + ((int) (j3 ^ (j3 >>> 32)))) * 31;
            long j4 = this.cameraOutputNumber;
            return this.outputListener.hashCode() + ((i3 + ((int) ((j4 >>> 32) ^ j4))) * 31);
        }

        public final String toString() {
            return "StartedOutput(isOutOfOrder=" + this.isOutOfOrder + ", cameraFrameNumber=" + ((Object) FrameNumber.m36toStringimpl(this.cameraFrameNumber)) + ", cameraTimestamp=" + ((Object) ("CameraTimestamp(value=" + this.cameraTimestamp + ')')) + ", cameraOutputSequence=" + this.cameraOutputSequence + ", cameraOutputNumber=" + this.cameraOutputNumber + ", outputListener=" + this.outputListener + ')';
        }
    }

    public OutputDistributor(OutputMatcher outputMatcher) {
        outputMatcher.getClass();
        this.outputMatcher = outputMatcher;
        this.lock = new Object();
        this.cameraOutputSequenceNumbers = 1L;
        this.newestCameraOutputNumber = Long.MIN_VALUE;
        this.newestFrameNumber = Long.MIN_VALUE;
        this.lastFailedFrameNumber = Long.MIN_VALUE;
        this.lastFailedCameraOutputNumber = Long.MIN_VALUE;
        this.startedOutputs = new ArrayList();
        this.availableOutputs = new LinkedHashMap();
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
        synchronized (this.lock) {
            if (this.closed) {
                return;
            }
            this.closed = true;
            ArrayList mutableList = CollectionsKt.toMutableList(this.availableOutputs.values());
            this.availableOutputs.clear();
            ArrayList mutableList2 = CollectionsKt.toMutableList((Collection) this.startedOutputs);
            this.startedOutputs.clear();
            Iterator it = mutableList.iterator();
            while (it.hasNext()) {
                Object obj = ((OutputResult) it.next()).result;
            }
            Iterator it2 = mutableList2.iterator();
            while (it2.hasNext()) {
                StartedOutput startedOutput = (StartedOutput) it2.next();
                startedOutput.getClass();
                startedOutput.m90completeWithDvZWqE8(-1L, new OutputStatus(11));
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0030, code lost:
    
        r5 = null;
     */
    /* renamed from: onOutputFailure-Vw7M1qk, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m87onOutputFailureVw7M1qk(long r10) {
        /*
            r9 = this;
            java.lang.Object r0 = r9.lock
            monitor-enter(r0)
            boolean r1 = r9.closed     // Catch: java.lang.Throwable -> L35
            if (r1 == 0) goto L9
            monitor-exit(r0)
            return
        L9:
            r9.lastFailedFrameNumber = r10     // Catch: java.lang.Throwable -> L35
            java.util.ArrayList r1 = r9.startedOutputs     // Catch: java.lang.Throwable -> L35
            java.util.Iterator r1 = r1.iterator()     // Catch: java.lang.Throwable -> L35
            r2 = 0
            r3 = 0
            r4 = r2
            r5 = r3
        L15:
            boolean r6 = r1.hasNext()     // Catch: java.lang.Throwable -> L35
            if (r6 == 0) goto L37
            java.lang.Object r6 = r1.next()     // Catch: java.lang.Throwable -> L35
            r7 = r6
            androidx.camera.camera2.pipe.internal.OutputDistributor$StartedOutput r7 = (androidx.camera.camera2.pipe.internal.OutputDistributor.StartedOutput) r7     // Catch: java.lang.Throwable -> L35
            long r7 = r7.cameraFrameNumber     // Catch: java.lang.Throwable -> L35
            int r7 = (r7 > r10 ? 1 : (r7 == r10 ? 0 : -1))
            r8 = 1
            if (r7 != 0) goto L2b
            r7 = r8
            goto L2c
        L2b:
            r7 = r2
        L2c:
            if (r7 == 0) goto L15
            if (r4 == 0) goto L32
        L30:
            r5 = r3
            goto L3a
        L32:
            r5 = r6
            r4 = r8
            goto L15
        L35:
            r9 = move-exception
            goto L58
        L37:
            if (r4 != 0) goto L3a
            goto L30
        L3a:
            androidx.camera.camera2.pipe.internal.OutputDistributor$StartedOutput r5 = (androidx.camera.camera2.pipe.internal.OutputDistributor.StartedOutput) r5     // Catch: java.lang.Throwable -> L35
            if (r5 == 0) goto L48
            long r10 = r5.cameraOutputNumber     // Catch: java.lang.Throwable -> L35
            r9.lastFailedCameraOutputNumber = r10     // Catch: java.lang.Throwable -> L35
            java.util.ArrayList r9 = r9.startedOutputs     // Catch: java.lang.Throwable -> L35
            r9.remove(r5)     // Catch: java.lang.Throwable -> L35
            r3 = r5
        L48:
            monitor-exit(r0)
            if (r3 == 0) goto L57
            androidx.camera.camera2.pipe.OutputStatus r9 = new androidx.camera.camera2.pipe.OutputStatus
            r10 = 10
            r9.<init>(r10)
            r10 = -1
            r3.m90completeWithDvZWqE8(r10, r9)
        L57:
            return
        L58:
            monitor-exit(r0)
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.camera.camera2.pipe.internal.OutputDistributor.m87onOutputFailureVw7M1qk(long):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x00a0, code lost:
    
        r10 = r11.iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00a8, code lost:
    
        if (r10.hasNext() == false) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00aa, code lost:
    
        r11 = (androidx.camera.camera2.pipe.internal.OutputDistributor.StartedOutput) r10.next();
        r11.getClass();
        r11.m90completeWithDvZWqE8(-1, new androidx.camera.camera2.pipe.OutputStatus(12));
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:?, code lost:
    
        return;
     */
    /* renamed from: onOutputResult-DvZWqE8, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m88onOutputResultDvZWqE8(long r11, java.lang.Object r13) {
        /*
            r10 = this;
            java.lang.Object r1 = r10.lock
            monitor-enter(r1)
            boolean r0 = r10.closed     // Catch: java.lang.Throwable -> L32
            r2 = 0
            if (r0 != 0) goto L8a
            androidx.camera.camera2.pipe.internal.OutputMatcher r0 = r10.outputMatcher     // Catch: java.lang.Throwable -> L32
            long r3 = r10.lastFailedCameraOutputNumber     // Catch: java.lang.Throwable -> L32
            boolean r0 = r0.fuzzyEqual(r3, r11)     // Catch: java.lang.Throwable -> L32
            if (r0 == 0) goto L14
            goto L8a
        L14:
            java.util.ArrayList r0 = r10.startedOutputs     // Catch: java.lang.Throwable -> L32
            java.util.Iterator r0 = r0.iterator()     // Catch: java.lang.Throwable -> L32
        L1a:
            boolean r3 = r0.hasNext()     // Catch: java.lang.Throwable -> L32
            if (r3 == 0) goto L36
            java.lang.Object r3 = r0.next()     // Catch: java.lang.Throwable -> L32
            r4 = r3
            androidx.camera.camera2.pipe.internal.OutputDistributor$StartedOutput r4 = (androidx.camera.camera2.pipe.internal.OutputDistributor.StartedOutput) r4     // Catch: java.lang.Throwable -> L32
            androidx.camera.camera2.pipe.internal.OutputMatcher r5 = r10.outputMatcher     // Catch: java.lang.Throwable -> L32
            long r6 = r4.cameraOutputNumber     // Catch: java.lang.Throwable -> L32
            boolean r4 = r5.fuzzyEqual(r6, r11)     // Catch: java.lang.Throwable -> L32
            if (r4 == 0) goto L1a
            goto L37
        L32:
            r0 = move-exception
            r10 = r0
            goto Lc1
        L36:
            r3 = r2
        L37:
            androidx.camera.camera2.pipe.internal.OutputDistributor$StartedOutput r3 = (androidx.camera.camera2.pipe.internal.OutputDistributor.StartedOutput) r3     // Catch: java.lang.Throwable -> L32
            if (r3 == 0) goto L51
            boolean r9 = r3.isOutOfOrder     // Catch: java.lang.Throwable -> L32
            long r5 = r3.cameraOutputSequence     // Catch: java.lang.Throwable -> L32
            long r7 = r3.cameraOutputNumber     // Catch: java.lang.Throwable -> L32
            r4 = r10
            java.util.ArrayList r10 = r4.removeOutputsOlderThan(r5, r7, r9)     // Catch: java.lang.Throwable -> L32
            r3.m90completeWithDvZWqE8(r11, r13)     // Catch: java.lang.Throwable -> L32
            java.util.ArrayList r11 = r4.startedOutputs     // Catch: java.lang.Throwable -> L32
            r11.remove(r3)     // Catch: java.lang.Throwable -> L32
            r11 = r10
            r10 = r2
            goto L90
        L51:
            r4 = r10
            java.util.LinkedHashMap r10 = r4.availableOutputs     // Catch: java.lang.Throwable -> L32
            java.lang.Long r11 = java.lang.Long.valueOf(r11)     // Catch: java.lang.Throwable -> L32
            androidx.camera.camera2.pipe.internal.OutputResult r12 = new androidx.camera.camera2.pipe.internal.OutputResult     // Catch: java.lang.Throwable -> L32
            r12.<init>(r13)     // Catch: java.lang.Throwable -> L32
            r10.put(r11, r12)     // Catch: java.lang.Throwable -> L32
            java.util.LinkedHashMap r10 = r4.availableOutputs     // Catch: java.lang.Throwable -> L32
            int r10 = r10.size()     // Catch: java.lang.Throwable -> L32
            r11 = 3
            if (r10 <= r11) goto L87
            java.util.LinkedHashMap r10 = r4.availableOutputs     // Catch: java.lang.Throwable -> L32
            java.util.Set r10 = r10.keySet()     // Catch: java.lang.Throwable -> L32
            java.lang.Iterable r10 = (java.lang.Iterable) r10     // Catch: java.lang.Throwable -> L32
            java.lang.Object r10 = kotlin.collections.CollectionsKt.first(r10)     // Catch: java.lang.Throwable -> L32
            java.lang.Number r10 = (java.lang.Number) r10     // Catch: java.lang.Throwable -> L32
            long r10 = r10.longValue()     // Catch: java.lang.Throwable -> L32
            java.util.LinkedHashMap r12 = r4.availableOutputs     // Catch: java.lang.Throwable -> L32
            java.lang.Long r10 = java.lang.Long.valueOf(r10)     // Catch: java.lang.Throwable -> L32
            java.lang.Object r10 = r12.remove(r10)     // Catch: java.lang.Throwable -> L32
        L85:
            r11 = r2
            goto L90
        L87:
            r10 = r2
            r11 = r10
            goto L90
        L8a:
            androidx.camera.camera2.pipe.internal.OutputResult r10 = new androidx.camera.camera2.pipe.internal.OutputResult     // Catch: java.lang.Throwable -> L32
            r10.<init>(r13)     // Catch: java.lang.Throwable -> L32
            goto L85
        L90:
            monitor-exit(r1)
            androidx.camera.camera2.pipe.internal.OutputResult r10 = (androidx.camera.camera2.pipe.internal.OutputResult) r10
            if (r10 == 0) goto L9e
            java.lang.Object r10 = r10.result
            boolean r12 = r10 instanceof androidx.camera.camera2.pipe.OutputStatus
            if (r12 != 0) goto L9e
            if (r10 == 0) goto L9e
            r2 = r10
        L9e:
            if (r11 == 0) goto Lc0
            java.util.Iterator r10 = r11.iterator()
        La4:
            boolean r11 = r10.hasNext()
            if (r11 == 0) goto Lc0
            java.lang.Object r11 = r10.next()
            androidx.camera.camera2.pipe.internal.OutputDistributor$StartedOutput r11 = (androidx.camera.camera2.pipe.internal.OutputDistributor.StartedOutput) r11
            r11.getClass()
            androidx.camera.camera2.pipe.OutputStatus r12 = new androidx.camera.camera2.pipe.OutputStatus
            r13 = 12
            r12.<init>(r13)
            r0 = -1
            r11.m90completeWithDvZWqE8(r0, r12)
            goto La4
        Lc0:
            return
        Lc1:
            monitor-exit(r1)
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.camera.camera2.pipe.internal.OutputDistributor.m88onOutputResultDvZWqE8(long, java.lang.Object):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x00d8 A[Catch: all -> 0x002c, TRY_LEAVE, TryCatch #1 {all -> 0x002c, blocks: (B:4:0x000c, B:5:0x0012, B:7:0x0019, B:14:0x0032, B:16:0x0036, B:21:0x0086, B:24:0x0094, B:26:0x009a, B:28:0x00a4, B:32:0x00af, B:33:0x00b1, B:37:0x00bc, B:42:0x00c6, B:43:0x00d2, B:45:0x00d8), top: B:3:0x000c }] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00fc A[Catch: all -> 0x00f2, TryCatch #0 {all -> 0x00f2, blocks: (B:47:0x00e2, B:52:0x00f8, B:54:0x00fc, B:80:0x0110, B:87:0x0126, B:88:0x0132, B:90:0x0138, B:94:0x014d, B:96:0x0151), top: B:22:0x0092 }] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0162  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0184  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0191  */
    /* JADX WARN: Removed duplicated region for block: B:79:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0110 A[Catch: all -> 0x00f2, TryCatch #0 {all -> 0x00f2, blocks: (B:47:0x00e2, B:52:0x00f8, B:54:0x00fc, B:80:0x0110, B:87:0x0126, B:88:0x0132, B:90:0x0138, B:94:0x014d, B:96:0x0151), top: B:22:0x0092 }] */
    /* JADX WARN: Removed duplicated region for block: B:81:0x00f5 A[SYNTHETIC] */
    /* renamed from: onOutputStarted-qGubWw0, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m89onOutputStartedqGubWw0(long r23, long r25, long r27, androidx.camera.camera2.pipe.internal.OutputDistributor.OutputListener r29) {
        /*
            Method dump skipped, instructions count: 434
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.camera.camera2.pipe.internal.OutputDistributor.m89onOutputStartedqGubWw0(long, long, long, androidx.camera.camera2.pipe.internal.OutputDistributor$OutputListener):void");
    }

    public final ArrayList removeOutputsOlderThan(long j, long j2, boolean z) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = this.startedOutputs;
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            Object next = it.next();
            StartedOutput startedOutput = (StartedOutput) next;
            if (startedOutput.isOutOfOrder == z && startedOutput.cameraOutputSequence < j && startedOutput.cameraOutputNumber < j2) {
                arrayList.add(next);
            }
        }
        arrayList2.removeAll(arrayList);
        return arrayList;
    }
}
