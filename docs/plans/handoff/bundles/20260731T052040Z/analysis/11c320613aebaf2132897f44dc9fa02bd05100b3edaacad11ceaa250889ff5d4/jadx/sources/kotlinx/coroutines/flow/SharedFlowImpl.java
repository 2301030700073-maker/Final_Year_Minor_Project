package kotlinx.coroutines.flow;

import coil3.decode.DecodeUtils$$ExternalSyntheticBUOutline0;
import com.google.common.base.Joiner;
import java.util.Arrays;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.UStringsKt;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.DisposableHandle;
import kotlinx.coroutines.DisposeOnCancel;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.flow.internal.AbstractSharedFlow;
import kotlinx.coroutines.flow.internal.AbstractSharedFlowSlot;
import kotlinx.coroutines.flow.internal.ChannelFlowKt;
import kotlinx.coroutines.flow.internal.ChannelFlowOperatorImpl;
import kotlinx.coroutines.flow.internal.FusibleFlow;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class SharedFlowImpl extends AbstractSharedFlow implements MutableSharedFlow, Flow, FusibleFlow {
    public Object[] buffer;
    public final int bufferCapacity;
    public int bufferSize;
    public long minCollectorIndex;
    public final BufferOverflow onBufferOverflow;
    public int queueSize;
    public final int replay;
    public long replayIndex;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Emitter implements DisposableHandle {
        public final CancellableContinuationImpl cont;
        public final SharedFlowImpl flow;
        public final long index;
        public final Object value;

        public Emitter(SharedFlowImpl sharedFlowImpl, long j, Object obj, CancellableContinuationImpl cancellableContinuationImpl) {
            this.flow = sharedFlowImpl;
            this.index = j;
            this.value = obj;
            this.cont = cancellableContinuationImpl;
        }

        @Override // kotlinx.coroutines.DisposableHandle
        public final void dispose() {
            SharedFlowImpl sharedFlowImpl = this.flow;
            synchronized (sharedFlowImpl) {
                if (this.index >= sharedFlowImpl.getHead()) {
                    Object[] objArr = sharedFlowImpl.buffer;
                    objArr.getClass();
                    long j = this.index;
                    if (objArr[((int) j) & (objArr.length - 1)] == this) {
                        FlowKt.access$setBufferAt(objArr, j, FlowKt.NO_VALUE);
                        sharedFlowImpl.cleanupTailLocked();
                    }
                }
            }
        }
    }

    public SharedFlowImpl(int i, int i2, BufferOverflow bufferOverflow) {
        this.replay = i;
        this.bufferCapacity = i2;
        this.onBufferOverflow = bufferOverflow;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0097 A[Catch: all -> 0x003e, TRY_ENTER, TryCatch #2 {all -> 0x003e, blocks: (B:14:0x0037, B:18:0x008c, B:21:0x0097, B:30:0x00ac, B:33:0x00b3, B:34:0x00b7, B:36:0x00b8, B:42:0x0057), top: B:7:0x001e }] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00aa A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0020  */
    /* JADX WARN: Type inference failed for: r10v0, types: [kotlinx.coroutines.flow.FlowCollector] */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v18 */
    /* JADX WARN: Type inference failed for: r10v19 */
    /* JADX WARN: Type inference failed for: r10v2, types: [kotlinx.coroutines.flow.internal.AbstractSharedFlowSlot] */
    /* JADX WARN: Type inference failed for: r10v20 */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r10v4 */
    /* JADX WARN: Type inference failed for: r10v5, types: [java.lang.Object, kotlinx.coroutines.flow.SharedFlowSlot] */
    /* JADX WARN: Type inference failed for: r10v9, types: [kotlinx.coroutines.flow.SharedFlowSlot] */
    /* JADX WARN: Type inference failed for: r4v1, types: [kotlinx.coroutines.flow.internal.AbstractSharedFlow] */
    /* JADX WARN: Type inference failed for: r4v14 */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v4, types: [java.lang.Object, kotlinx.coroutines.flow.SharedFlowImpl] */
    /* JADX WARN: Type inference failed for: r4v5 */
    /* JADX WARN: Type inference failed for: r4v7 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x00c8 -> B:15:0x003a). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void collect$suspendImpl(kotlinx.coroutines.flow.SharedFlowImpl r9, kotlinx.coroutines.flow.FlowCollector r10, kotlin.coroutines.Continuation r11) {
        /*
            Method dump skipped, instructions count: 210
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.SharedFlowImpl.collect$suspendImpl(kotlinx.coroutines.flow.SharedFlowImpl, kotlinx.coroutines.flow.FlowCollector, kotlin.coroutines.Continuation):void");
    }

    public final Object awaitValue(SharedFlowSlot sharedFlowSlot, SharedFlowImpl$collect$1 sharedFlowImpl$collect$1) {
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(1, UStringsKt.intercepted(sharedFlowImpl$collect$1));
        cancellableContinuationImpl.initCancellability();
        synchronized (this) {
            try {
                if (tryPeekLocked(sharedFlowSlot) < 0) {
                    sharedFlowSlot.cont = cancellableContinuationImpl;
                } else {
                    cancellableContinuationImpl.resumeWith(Unit.INSTANCE);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        Object result = cancellableContinuationImpl.getResult();
        return result == CoroutineSingletons.COROUTINE_SUSPENDED ? result : Unit.INSTANCE;
    }

    public final void cleanupTailLocked() {
        if (this.bufferCapacity != 0 || this.queueSize > 1) {
            Object[] objArr = this.buffer;
            objArr.getClass();
            while (this.queueSize > 0) {
                long head = getHead();
                int i = this.bufferSize;
                int i2 = this.queueSize;
                if (objArr[((int) ((head + (i + i2)) - 1)) & (objArr.length - 1)] != FlowKt.NO_VALUE) {
                    return;
                }
                this.queueSize = i2 - 1;
                FlowKt.access$setBufferAt(objArr, getHead() + this.bufferSize + this.queueSize, null);
            }
        }
    }

    @Override // kotlinx.coroutines.flow.Flow
    public final Object collect(FlowCollector flowCollector, Continuation continuation) {
        collect$suspendImpl(this, flowCollector, continuation);
        return CoroutineSingletons.COROUTINE_SUSPENDED;
    }

    @Override // kotlinx.coroutines.flow.internal.AbstractSharedFlow
    public final AbstractSharedFlowSlot createSlot() {
        SharedFlowSlot sharedFlowSlot = new SharedFlowSlot();
        sharedFlowSlot.index = -1L;
        return sharedFlowSlot;
    }

    @Override // kotlinx.coroutines.flow.internal.AbstractSharedFlow
    public final AbstractSharedFlowSlot[] createSlotArray() {
        return new SharedFlowSlot[2];
    }

    public final void dropOldestLocked() {
        AbstractSharedFlowSlot[] abstractSharedFlowSlotArr;
        Object[] objArr = this.buffer;
        objArr.getClass();
        FlowKt.access$setBufferAt(objArr, getHead(), null);
        this.bufferSize--;
        long head = getHead() + 1;
        if (this.replayIndex < head) {
            this.replayIndex = head;
        }
        if (this.minCollectorIndex < head) {
            if (this.nCollectors != 0 && (abstractSharedFlowSlotArr = this.slots) != null) {
                for (AbstractSharedFlowSlot abstractSharedFlowSlot : abstractSharedFlowSlotArr) {
                    if (abstractSharedFlowSlot != null) {
                        SharedFlowSlot sharedFlowSlot = (SharedFlowSlot) abstractSharedFlowSlot;
                        long j = sharedFlowSlot.index;
                        if (0 <= j && j < head) {
                            sharedFlowSlot.index = head;
                        }
                    }
                }
            }
            this.minCollectorIndex = head;
        }
    }

    @Override // kotlinx.coroutines.flow.FlowCollector
    public final Object emit(Object obj, Continuation continuation) {
        SharedFlowImpl sharedFlowImpl;
        Throwable th;
        Continuation[] findSlotsToResumeLocked;
        Emitter emitter;
        if (tryEmit(obj)) {
            return Unit.INSTANCE;
        }
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(1, UStringsKt.intercepted(continuation));
        cancellableContinuationImpl.initCancellability();
        Continuation[] continuationArr = ChannelFlowKt.EMPTY_RESUMES;
        synchronized (this) {
            try {
                if (tryEmitLocked(obj)) {
                    try {
                        cancellableContinuationImpl.resumeWith(Unit.INSTANCE);
                        findSlotsToResumeLocked = findSlotsToResumeLocked(continuationArr);
                        emitter = null;
                        sharedFlowImpl = this;
                    } catch (Throwable th2) {
                        th = th2;
                        sharedFlowImpl = this;
                        throw th;
                    }
                } else {
                    try {
                        sharedFlowImpl = this;
                        try {
                            Emitter emitter2 = new Emitter(sharedFlowImpl, getHead() + this.bufferSize + this.queueSize, obj, cancellableContinuationImpl);
                            sharedFlowImpl.enqueueLocked(emitter2);
                            sharedFlowImpl.queueSize++;
                            if (sharedFlowImpl.bufferCapacity == 0) {
                                continuationArr = sharedFlowImpl.findSlotsToResumeLocked(continuationArr);
                            }
                            findSlotsToResumeLocked = continuationArr;
                            emitter = emitter2;
                        } catch (Throwable th3) {
                            th = th3;
                            th = th;
                            throw th;
                        }
                    } catch (Throwable th4) {
                        sharedFlowImpl = this;
                        th = th4;
                        throw th;
                    }
                }
                int i = 0;
                if (emitter != null) {
                    cancellableContinuationImpl.invokeOnCancellationImpl(new DisposeOnCancel(emitter, i));
                }
                int length = findSlotsToResumeLocked.length;
                while (i < length) {
                    Continuation continuation2 = findSlotsToResumeLocked[i];
                    if (continuation2 != null) {
                        continuation2.resumeWith(Unit.INSTANCE);
                    }
                    i++;
                }
                Object result = cancellableContinuationImpl.getResult();
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                if (result != coroutineSingletons) {
                    result = Unit.INSTANCE;
                }
                return result == coroutineSingletons ? result : Unit.INSTANCE;
            } catch (Throwable th5) {
                th = th5;
                sharedFlowImpl = this;
            }
        }
    }

    public final void enqueueLocked(Object obj) {
        int i = this.bufferSize + this.queueSize;
        Object[] objArr = this.buffer;
        if (objArr == null) {
            objArr = growBuffer(null, 0, 2);
        } else if (i >= objArr.length) {
            objArr = growBuffer(objArr, i, objArr.length * 2);
        }
        FlowKt.access$setBufferAt(objArr, getHead() + i, obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Continuation[] findSlotsToResumeLocked(Continuation[] continuationArr) {
        AbstractSharedFlowSlot[] abstractSharedFlowSlotArr;
        SharedFlowSlot sharedFlowSlot;
        CancellableContinuationImpl cancellableContinuationImpl;
        int length = continuationArr.length;
        if (this.nCollectors != 0 && (abstractSharedFlowSlotArr = this.slots) != null) {
            int length2 = abstractSharedFlowSlotArr.length;
            int i = 0;
            continuationArr = continuationArr;
            while (i < length2) {
                AbstractSharedFlowSlot abstractSharedFlowSlot = abstractSharedFlowSlotArr[i];
                if (abstractSharedFlowSlot != null && (cancellableContinuationImpl = (sharedFlowSlot = (SharedFlowSlot) abstractSharedFlowSlot).cont) != null && tryPeekLocked(sharedFlowSlot) >= 0) {
                    int length3 = continuationArr.length;
                    continuationArr = continuationArr;
                    if (length >= length3) {
                        continuationArr = Arrays.copyOf(continuationArr, Math.max(2, continuationArr.length * 2));
                    }
                    continuationArr[length] = cancellableContinuationImpl;
                    sharedFlowSlot.cont = null;
                    length++;
                }
                i++;
                continuationArr = continuationArr;
            }
        }
        return continuationArr;
    }

    @Override // kotlinx.coroutines.flow.internal.FusibleFlow
    public final Flow fuse(CoroutineContext coroutineContext, int i, BufferOverflow bufferOverflow) {
        return ((i == 0 || i == -3) && bufferOverflow == BufferOverflow.SUSPEND) ? this : new ChannelFlowOperatorImpl(this, coroutineContext, i, bufferOverflow);
    }

    public final long getHead() {
        return Math.min(this.minCollectorIndex, this.replayIndex);
    }

    public final Object[] growBuffer(Object[] objArr, int i, int i2) {
        if (i2 <= 0) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$2("Buffer size overflow");
            return null;
        }
        Object[] objArr2 = new Object[i2];
        this.buffer = objArr2;
        if (objArr != null) {
            long head = getHead();
            for (int i3 = 0; i3 < i; i3++) {
                long j = i3 + head;
                FlowKt.access$setBufferAt(objArr2, j, objArr[((int) j) & (objArr.length - 1)]);
            }
        }
        return objArr2;
    }

    @Override // kotlinx.coroutines.flow.MutableSharedFlow
    public final void resetReplayCache() {
        SharedFlowImpl sharedFlowImpl;
        synchronized (this) {
            try {
                sharedFlowImpl = this;
                try {
                    sharedFlowImpl.updateBufferLocked(getHead() + this.bufferSize, this.minCollectorIndex, getHead() + this.bufferSize, getHead() + this.bufferSize + this.queueSize);
                } catch (Throwable th) {
                    th = th;
                    Throwable th2 = th;
                    throw th2;
                }
            } catch (Throwable th3) {
                th = th3;
                sharedFlowImpl = this;
            }
        }
    }

    @Override // kotlinx.coroutines.flow.MutableSharedFlow
    public final boolean tryEmit(Object obj) {
        int i;
        boolean z;
        Continuation[] continuationArr = ChannelFlowKt.EMPTY_RESUMES;
        synchronized (this) {
            if (tryEmitLocked(obj)) {
                continuationArr = findSlotsToResumeLocked(continuationArr);
                z = true;
            } else {
                z = false;
            }
        }
        for (Continuation continuation : continuationArr) {
            if (continuation != null) {
                continuation.resumeWith(Unit.INSTANCE);
            }
        }
        return z;
    }

    public final boolean tryEmitLocked(Object obj) {
        int i = this.nCollectors;
        int i2 = this.replay;
        if (i != 0) {
            int i3 = this.bufferSize;
            int i4 = this.bufferCapacity;
            if (i3 >= i4 && this.minCollectorIndex <= this.replayIndex) {
                int ordinal = this.onBufferOverflow.ordinal();
                if (ordinal == 0) {
                    return false;
                }
                if (ordinal != 1) {
                    if (ordinal != 2) {
                        DecodeUtils$$ExternalSyntheticBUOutline0.m();
                        return false;
                    }
                }
            }
            enqueueLocked(obj);
            int i5 = this.bufferSize + 1;
            this.bufferSize = i5;
            if (i5 > i4) {
                dropOldestLocked();
            }
            long head = getHead() + this.bufferSize;
            long j = this.replayIndex;
            if (((int) (head - j)) > i2) {
                updateBufferLocked(1 + j, this.minCollectorIndex, getHead() + this.bufferSize, getHead() + this.bufferSize + this.queueSize);
            }
        } else if (i2 != 0) {
            enqueueLocked(obj);
            int i6 = this.bufferSize + 1;
            this.bufferSize = i6;
            if (i6 > i2) {
                dropOldestLocked();
            }
            this.minCollectorIndex = getHead() + this.bufferSize;
            return true;
        }
        return true;
    }

    public final long tryPeekLocked(SharedFlowSlot sharedFlowSlot) {
        long j = sharedFlowSlot.index;
        if (j >= getHead() + this.bufferSize && (this.bufferCapacity > 0 || j > getHead() || this.queueSize == 0)) {
            return -1L;
        }
        return j;
    }

    public final Object tryTakeValue(SharedFlowSlot sharedFlowSlot) {
        Object obj;
        Continuation[] continuationArr = ChannelFlowKt.EMPTY_RESUMES;
        synchronized (this) {
            try {
                long tryPeekLocked = tryPeekLocked(sharedFlowSlot);
                if (tryPeekLocked < 0) {
                    obj = FlowKt.NO_VALUE;
                } else {
                    long j = sharedFlowSlot.index;
                    Object[] objArr = this.buffer;
                    objArr.getClass();
                    Object obj2 = objArr[((int) tryPeekLocked) & (objArr.length - 1)];
                    if (obj2 instanceof Emitter) {
                        obj2 = ((Emitter) obj2).value;
                    }
                    sharedFlowSlot.index = tryPeekLocked + 1;
                    Object obj3 = obj2;
                    continuationArr = updateCollectorIndexLocked$kotlinx_coroutines_core(j);
                    obj = obj3;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        for (Continuation continuation : continuationArr) {
            if (continuation != null) {
                continuation.resumeWith(Unit.INSTANCE);
            }
        }
        return obj;
    }

    public final void updateBufferLocked(long j, long j2, long j3, long j4) {
        long min = Math.min(j2, j);
        for (long head = getHead(); head < min; head++) {
            Object[] objArr = this.buffer;
            objArr.getClass();
            FlowKt.access$setBufferAt(objArr, head, null);
        }
        this.replayIndex = j;
        this.minCollectorIndex = j2;
        this.bufferSize = (int) (j3 - min);
        this.queueSize = (int) (j4 - j3);
    }

    public final Continuation[] updateCollectorIndexLocked$kotlinx_coroutines_core(long j) {
        long j2;
        long j3;
        int i;
        long j4;
        Continuation[] continuationArr;
        Continuation[] continuationArr2;
        AbstractSharedFlowSlot[] abstractSharedFlowSlotArr;
        Joiner joiner = FlowKt.NO_VALUE;
        Continuation[] continuationArr3 = ChannelFlowKt.EMPTY_RESUMES;
        if (j <= this.minCollectorIndex) {
            long head = getHead();
            long j5 = this.bufferSize + head;
            int i2 = this.bufferCapacity;
            if (i2 == 0 && this.queueSize > 0) {
                j5++;
            }
            int i3 = 0;
            if (this.nCollectors != 0 && (abstractSharedFlowSlotArr = this.slots) != null) {
                for (AbstractSharedFlowSlot abstractSharedFlowSlot : abstractSharedFlowSlotArr) {
                    if (abstractSharedFlowSlot != null) {
                        long j6 = ((SharedFlowSlot) abstractSharedFlowSlot).index;
                        if (0 <= j6 && j6 < j5) {
                            j5 = j6;
                        }
                    }
                }
            }
            if (j5 > this.minCollectorIndex) {
                long head2 = getHead() + this.bufferSize;
                int i4 = this.nCollectors;
                int i5 = this.queueSize;
                if (i4 > 0) {
                    j2 = 1;
                    i5 = Math.min(i5, i2 - ((int) (head2 - j5)));
                } else {
                    j2 = 1;
                }
                long j7 = this.queueSize + head2;
                if (i5 > 0) {
                    Continuation[] continuationArr4 = new Continuation[i5];
                    Object[] objArr = this.buffer;
                    objArr.getClass();
                    j3 = j5;
                    long j8 = head2;
                    while (true) {
                        if (head2 >= j7) {
                            continuationArr2 = continuationArr4;
                            i = i2;
                            j4 = j7;
                            break;
                        }
                        continuationArr2 = continuationArr4;
                        Object obj = objArr[((int) head2) & (objArr.length - 1)];
                        if (obj != joiner) {
                            obj.getClass();
                            Emitter emitter = (Emitter) obj;
                            i = i2;
                            int i6 = i3 + 1;
                            j4 = j7;
                            continuationArr2[i3] = emitter.cont;
                            FlowKt.access$setBufferAt(objArr, head2, joiner);
                            FlowKt.access$setBufferAt(objArr, j8, emitter.value);
                            j8 += j2;
                            if (i6 >= i5) {
                                break;
                            }
                            i3 = i6;
                        } else {
                            i = i2;
                            j4 = j7;
                        }
                        head2 += j2;
                        continuationArr4 = continuationArr2;
                        i2 = i;
                        j7 = j4;
                    }
                    head2 = j8;
                    continuationArr = continuationArr2;
                } else {
                    j3 = j5;
                    i = i2;
                    j4 = j7;
                    continuationArr = continuationArr3;
                }
                long max = Math.max(this.replayIndex, Math.max(head, head2 - this.replay));
                if (i == 0 && max < j4) {
                    Object[] objArr2 = this.buffer;
                    objArr2.getClass();
                    if (Intrinsics.areEqual(objArr2[((int) max) & (objArr2.length - 1)], joiner)) {
                        head2 += j2;
                        max += j2;
                    }
                }
                long j9 = head2;
                updateBufferLocked(max, this.nCollectors == 0 ? j9 : j3, j9, j4);
                cleanupTailLocked();
                return continuationArr.length == 0 ? continuationArr : findSlotsToResumeLocked(continuationArr);
            }
        }
        return continuationArr3;
    }
}
