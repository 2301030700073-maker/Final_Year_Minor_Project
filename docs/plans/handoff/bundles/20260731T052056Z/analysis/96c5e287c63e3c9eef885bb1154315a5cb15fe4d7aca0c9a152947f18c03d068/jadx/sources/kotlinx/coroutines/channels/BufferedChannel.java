package kotlinx.coroutines.channels;

import _COROUTINE.ArtificialStackFramesUnsafe;
import androidx.compose.animation.core.Animation;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.ExceptionsKt;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.Waiter;
import kotlinx.coroutines.channels.ChannelResult;
import kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2;
import kotlinx.coroutines.internal.InlineList;
import kotlinx.coroutines.internal.Segment;
import kotlinx.coroutines.internal.StackTraceRecoveryKt;
import kotlinx.coroutines.internal.Symbol;
import kotlinx.coroutines.selects.SelectImplementation;
import kotlinx.coroutines.selects.TrySelectDetailedResult;
import okhttp3.FormBody;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import sun.misc.Unsafe;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public class BufferedChannel implements Channel {
    public static final /* synthetic */ long _closeCause$volatile$FU$offset;
    public static final /* synthetic */ AtomicLongFieldUpdater bufferEnd$volatile$FU;
    public static final /* synthetic */ long bufferEnd$volatile$FU$offset;
    public static final /* synthetic */ long bufferEndSegment$volatile$FU$offset;
    public static final /* synthetic */ long closeHandler$volatile$FU$offset;
    public static final /* synthetic */ AtomicLongFieldUpdater completedExpandBuffersAndPauseFlag$volatile$FU;
    public static final /* synthetic */ long completedExpandBuffersAndPauseFlag$volatile$FU$offset;
    public static final /* synthetic */ AtomicReferenceFieldUpdater receiveSegment$volatile$FU;
    public static final /* synthetic */ long receiveSegment$volatile$FU$offset;
    public static final /* synthetic */ AtomicLongFieldUpdater receivers$volatile$FU;
    public static final /* synthetic */ long receivers$volatile$FU$offset;
    public static final /* synthetic */ long sendSegment$volatile$FU$offset;
    public static final /* synthetic */ AtomicLongFieldUpdater sendersAndCloseStatus$volatile$FU = AtomicLongFieldUpdater.newUpdater(BufferedChannel.class, "sendersAndCloseStatus$volatile");
    public static final /* synthetic */ long sendersAndCloseStatus$volatile$FU$offset;
    private volatile /* synthetic */ Object _closeCause$volatile;
    private volatile /* synthetic */ long bufferEnd$volatile;
    private volatile /* synthetic */ Object bufferEndSegment$volatile;
    public final int capacity;
    private volatile /* synthetic */ Object closeHandler$volatile;
    private volatile /* synthetic */ long completedExpandBuffersAndPauseFlag$volatile;
    private volatile /* synthetic */ Object receiveSegment$volatile;
    private volatile /* synthetic */ long receivers$volatile;
    private volatile /* synthetic */ Object sendSegment$volatile;
    private volatile /* synthetic */ long sendersAndCloseStatus$volatile;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class BufferedChannelIterator implements Waiter {
        public CancellableContinuationImpl continuation;
        public Object receiveResult = BufferedChannelKt.NO_RECEIVE_RESULT;

        public BufferedChannelIterator() {
        }

        public final Object hasNext(ContinuationImpl continuationImpl) {
            ChannelSegment channelSegment;
            Object obj = this.receiveResult;
            boolean z = true;
            if (obj == BufferedChannelKt.NO_RECEIVE_RESULT || obj == BufferedChannelKt.CHANNEL_CLOSED) {
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = BufferedChannel.receiveSegment$volatile$FU;
                BufferedChannel bufferedChannel = BufferedChannel.this;
                ChannelSegment channelSegment2 = (ChannelSegment) atomicReferenceFieldUpdater.get(bufferedChannel);
                while (true) {
                    if (bufferedChannel.isClosedForReceive()) {
                        this.receiveResult = BufferedChannelKt.CHANNEL_CLOSED;
                        Throwable closeCause = bufferedChannel.getCloseCause();
                        if (closeCause != null) {
                            int i = StackTraceRecoveryKt.$r8$clinit;
                            throw closeCause;
                        }
                        z = false;
                    } else {
                        long andIncrement = BufferedChannel.receivers$volatile$FU.getAndIncrement(bufferedChannel);
                        long j = BufferedChannelKt.SEGMENT_SIZE;
                        long j2 = andIncrement / j;
                        int i2 = (int) (andIncrement % j);
                        if (channelSegment2.id != j2) {
                            channelSegment = bufferedChannel.findSegmentReceive(j2, channelSegment2);
                            if (channelSegment == null) {
                                continue;
                            }
                        } else {
                            channelSegment = channelSegment2;
                        }
                        Object updateCellReceive = bufferedChannel.updateCellReceive(channelSegment, i2, andIncrement, null);
                        Symbol symbol = BufferedChannelKt.SUSPEND;
                        if (updateCellReceive == symbol) {
                            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("unreachable");
                            return null;
                        }
                        Symbol symbol2 = BufferedChannelKt.FAILED;
                        if (updateCellReceive == symbol2) {
                            if (andIncrement < bufferedChannel.getSendersCounter$kotlinx_coroutines_core()) {
                                channelSegment.cleanPrev();
                            }
                            channelSegment2 = channelSegment;
                        } else {
                            if (updateCellReceive == BufferedChannelKt.SUSPEND_NO_WAITER) {
                                BufferedChannel bufferedChannel2 = BufferedChannel.this;
                                CancellableContinuationImpl orCreateCancellableContinuation = AwaitKt.getOrCreateCancellableContinuation(ExceptionsKt.intercepted(continuationImpl));
                                try {
                                    this.continuation = orCreateCancellableContinuation;
                                    Object updateCellReceive2 = bufferedChannel2.updateCellReceive(channelSegment, i2, andIncrement, this);
                                    if (updateCellReceive2 == symbol) {
                                        invokeOnCancellation(channelSegment, i2);
                                    } else {
                                        if (updateCellReceive2 == symbol2) {
                                            if (andIncrement < bufferedChannel2.getSendersCounter$kotlinx_coroutines_core()) {
                                                channelSegment.cleanPrev();
                                            }
                                            ChannelSegment channelSegment3 = (ChannelSegment) BufferedChannel.receiveSegment$volatile$FU.get(bufferedChannel2);
                                            while (true) {
                                                if (bufferedChannel2.isClosedForReceive()) {
                                                    CancellableContinuationImpl cancellableContinuationImpl = this.continuation;
                                                    cancellableContinuationImpl.getClass();
                                                    this.continuation = null;
                                                    this.receiveResult = BufferedChannelKt.CHANNEL_CLOSED;
                                                    Throwable closeCause2 = bufferedChannel.getCloseCause();
                                                    if (closeCause2 == null) {
                                                        cancellableContinuationImpl.resumeWith(Boolean.FALSE);
                                                    } else {
                                                        cancellableContinuationImpl.resumeWith(new Result.Failure(closeCause2));
                                                    }
                                                } else {
                                                    long andIncrement2 = BufferedChannel.receivers$volatile$FU.getAndIncrement(bufferedChannel2);
                                                    long j3 = BufferedChannelKt.SEGMENT_SIZE;
                                                    long j4 = andIncrement2 / j3;
                                                    int i3 = (int) (andIncrement2 % j3);
                                                    if (channelSegment3.id != j4) {
                                                        ChannelSegment findSegmentReceive = bufferedChannel2.findSegmentReceive(j4, channelSegment3);
                                                        if (findSegmentReceive != null) {
                                                            channelSegment3 = findSegmentReceive;
                                                        }
                                                    }
                                                    Object updateCellReceive3 = bufferedChannel2.updateCellReceive(channelSegment3, i3, andIncrement2, this);
                                                    if (updateCellReceive3 == BufferedChannelKt.SUSPEND) {
                                                        invokeOnCancellation(channelSegment3, i3);
                                                        break;
                                                    }
                                                    if (updateCellReceive3 == BufferedChannelKt.FAILED) {
                                                        if (andIncrement2 < bufferedChannel2.getSendersCounter$kotlinx_coroutines_core()) {
                                                            channelSegment3.cleanPrev();
                                                        }
                                                    } else {
                                                        if (updateCellReceive3 == BufferedChannelKt.SUSPEND_NO_WAITER) {
                                                            throw new IllegalStateException("unexpected");
                                                        }
                                                        channelSegment3.cleanPrev();
                                                        this.receiveResult = updateCellReceive3;
                                                        this.continuation = null;
                                                    }
                                                }
                                            }
                                        } else {
                                            channelSegment.cleanPrev();
                                            this.receiveResult = updateCellReceive2;
                                            this.continuation = null;
                                        }
                                        orCreateCancellableContinuation.resume(Boolean.TRUE, null);
                                    }
                                    return orCreateCancellableContinuation.getResult();
                                } catch (Throwable th) {
                                    orCreateCancellableContinuation.releaseClaimedReusableContinuation$kotlinx_coroutines_core();
                                    throw th;
                                }
                            }
                            channelSegment.cleanPrev();
                            this.receiveResult = updateCellReceive;
                        }
                    }
                }
            }
            return Boolean.valueOf(z);
        }

        @Override // kotlinx.coroutines.Waiter
        public final void invokeOnCancellation(Segment segment, int i) {
            CancellableContinuationImpl cancellableContinuationImpl = this.continuation;
            if (cancellableContinuationImpl != null) {
                cancellableContinuationImpl.invokeOnCancellation(segment, i);
            }
        }

        public final Object next() {
            Object obj = this.receiveResult;
            Symbol symbol = BufferedChannelKt.NO_RECEIVE_RESULT;
            if (obj == symbol) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1("`hasNext()` has not been invoked");
                return null;
            }
            this.receiveResult = symbol;
            if (obj != BufferedChannelKt.CHANNEL_CLOSED) {
                return obj;
            }
            Throwable receiveException = BufferedChannel.this.getReceiveException();
            int i = StackTraceRecoveryKt.$r8$clinit;
            throw receiveException;
        }
    }

    static {
        Unsafe unsafe = ArtificialStackFramesUnsafe.unsafe;
        sendersAndCloseStatus$volatile$FU$offset = unsafe.objectFieldOffset(BufferedChannel.class.getDeclaredField("sendersAndCloseStatus$volatile"));
        receivers$volatile$FU = AtomicLongFieldUpdater.newUpdater(BufferedChannel.class, "receivers$volatile");
        receivers$volatile$FU$offset = unsafe.objectFieldOffset(BufferedChannel.class.getDeclaredField("receivers$volatile"));
        bufferEnd$volatile$FU = AtomicLongFieldUpdater.newUpdater(BufferedChannel.class, "bufferEnd$volatile");
        bufferEnd$volatile$FU$offset = unsafe.objectFieldOffset(BufferedChannel.class.getDeclaredField("bufferEnd$volatile"));
        completedExpandBuffersAndPauseFlag$volatile$FU = AtomicLongFieldUpdater.newUpdater(BufferedChannel.class, "completedExpandBuffersAndPauseFlag$volatile");
        completedExpandBuffersAndPauseFlag$volatile$FU$offset = unsafe.objectFieldOffset(BufferedChannel.class.getDeclaredField("completedExpandBuffersAndPauseFlag$volatile"));
        sendSegment$volatile$FU$offset = unsafe.objectFieldOffset(BufferedChannel.class.getDeclaredField("sendSegment$volatile"));
        receiveSegment$volatile$FU = AtomicReferenceFieldUpdater.newUpdater(BufferedChannel.class, Object.class, "receiveSegment$volatile");
        receiveSegment$volatile$FU$offset = unsafe.objectFieldOffset(BufferedChannel.class.getDeclaredField("receiveSegment$volatile"));
        bufferEndSegment$volatile$FU$offset = unsafe.objectFieldOffset(BufferedChannel.class.getDeclaredField("bufferEndSegment$volatile"));
        _closeCause$volatile$FU$offset = unsafe.objectFieldOffset(BufferedChannel.class.getDeclaredField("_closeCause$volatile"));
        closeHandler$volatile$FU$offset = unsafe.objectFieldOffset(BufferedChannel.class.getDeclaredField("closeHandler$volatile"));
    }

    public BufferedChannel(int i) {
        this.capacity = i;
        if (i < 0) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) Animation.CC.m(i, "Invalid channel capacity: ", ", should be >=0"));
            throw null;
        }
        ChannelSegment channelSegment = BufferedChannelKt.NULL_SEGMENT;
        this.bufferEnd$volatile = i != 0 ? i != Integer.MAX_VALUE ? i : Long.MAX_VALUE : 0L;
        this.completedExpandBuffersAndPauseFlag$volatile = getBufferEndCounter();
        ChannelSegment channelSegment2 = new ChannelSegment(0L, null, this, 3);
        this.sendSegment$volatile = channelSegment2;
        this.receiveSegment$volatile = channelSegment2;
        if (isRendezvousOrUnlimited()) {
            channelSegment2 = BufferedChannelKt.NULL_SEGMENT;
            channelSegment2.getClass();
        }
        this.bufferEndSegment$volatile = channelSegment2;
        this._closeCause$volatile = BufferedChannelKt.NO_CLOSE_CAUSE;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0024  */
    /* renamed from: receiveCatching-JP2dKIU$suspendImpl, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Object m861receiveCatchingJP2dKIU$suspendImpl(kotlinx.coroutines.channels.BufferedChannel r13, kotlin.coroutines.jvm.internal.ContinuationImpl r14) {
        /*
            boolean r0 = r14 instanceof kotlinx.coroutines.channels.BufferedChannel$receiveCatching$1
            if (r0 == 0) goto L14
            r0 = r14
            kotlinx.coroutines.channels.BufferedChannel$receiveCatching$1 r0 = (kotlinx.coroutines.channels.BufferedChannel$receiveCatching$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L14
            int r1 = r1 - r2
            r0.label = r1
        L12:
            r6 = r0
            goto L1a
        L14:
            kotlinx.coroutines.channels.BufferedChannel$receiveCatching$1 r0 = new kotlinx.coroutines.channels.BufferedChannel$receiveCatching$1
            r0.<init>(r13, r14)
            goto L12
        L1a:
            java.lang.Object r14 = r6.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r6.label
            r2 = 0
            r3 = 1
            if (r1 == 0) goto L34
            if (r1 != r3) goto L2e
            kotlin.ResultKt.throwOnFailure(r14)
            kotlinx.coroutines.channels.ChannelResult r14 = (kotlinx.coroutines.channels.ChannelResult) r14
            java.lang.Object r13 = r14.holder
            return r13
        L2e:
            java.lang.String r13 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r13)
            return r2
        L34:
            kotlin.ResultKt.throwOnFailure(r14)
            sun.misc.Unsafe r14 = _COROUTINE.ArtificialStackFramesUnsafe.unsafe
            long r4 = kotlinx.coroutines.channels.BufferedChannel.receiveSegment$volatile$FU$offset
            java.lang.Object r14 = r14.getObjectVolatile(r13, r4)
            kotlinx.coroutines.channels.ChannelSegment r14 = (kotlinx.coroutines.channels.ChannelSegment) r14
        L41:
            boolean r1 = r13.isClosedForReceive()
            if (r1 == 0) goto L51
            java.lang.Throwable r13 = r13.getCloseCause()
            kotlinx.coroutines.channels.ChannelResult$Closed r14 = new kotlinx.coroutines.channels.ChannelResult$Closed
            r14.<init>(r13)
            return r14
        L51:
            java.util.concurrent.atomic.AtomicLongFieldUpdater r1 = kotlinx.coroutines.channels.BufferedChannel.receivers$volatile$FU
            long r4 = r1.getAndIncrement(r13)
            int r1 = kotlinx.coroutines.channels.BufferedChannelKt.SEGMENT_SIZE
            long r7 = (long) r1
            long r9 = r4 / r7
            long r7 = r4 % r7
            int r1 = (int) r7
            long r7 = r14.id
            int r7 = (r7 > r9 ? 1 : (r7 == r9 ? 0 : -1))
            if (r7 == 0) goto L6e
            kotlinx.coroutines.channels.ChannelSegment r7 = r13.findSegmentReceive(r9, r14)
            if (r7 != 0) goto L6c
            goto L41
        L6c:
            r8 = r7
            goto L6f
        L6e:
            r8 = r14
        L6f:
            r12 = 0
            r7 = r13
            r9 = r1
            r10 = r4
            java.lang.Object r13 = r7.updateCellReceive(r8, r9, r10, r12)
            r1 = r7
            kotlinx.coroutines.internal.Symbol r14 = kotlinx.coroutines.channels.BufferedChannelKt.SUSPEND
            if (r13 == r14) goto La2
            kotlinx.coroutines.internal.Symbol r14 = kotlinx.coroutines.channels.BufferedChannelKt.FAILED
            if (r13 != r14) goto L8e
            long r13 = r1.getSendersCounter$kotlinx_coroutines_core()
            int r13 = (r4 > r13 ? 1 : (r4 == r13 ? 0 : -1))
            if (r13 >= 0) goto L8b
            r8.cleanPrev()
        L8b:
            r13 = r1
            r14 = r8
            goto L41
        L8e:
            kotlinx.coroutines.internal.Symbol r14 = kotlinx.coroutines.channels.BufferedChannelKt.SUSPEND_NO_WAITER
            if (r13 != r14) goto L9e
            r6.label = r3
            r2 = r8
            r3 = r9
            java.lang.Object r13 = r1.m863receiveCatchingOnNoWaiterSuspendGKJJFZk(r2, r3, r4, r6)
            if (r13 != r0) goto L9d
            return r0
        L9d:
            return r13
        L9e:
            r8.cleanPrev()
            return r13
        La2:
            java.lang.String r13 = "unexpected"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r13)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.BufferedChannel.m861receiveCatchingJP2dKIU$suspendImpl(kotlinx.coroutines.channels.BufferedChannel, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public final boolean bufferOrRendezvousSend(long j) {
        return j < getBufferEndCounter() || j < getReceiversCounter$kotlinx_coroutines_core() + ((long) this.capacity);
    }

    @Override // kotlinx.coroutines.channels.Channel
    public final void cancel(CancellationException cancellationException) {
        if (cancellationException == null) {
            cancellationException = new CancellationException("Channel was cancelled");
        }
        closeOrCancelImpl(cancellationException, true);
    }

    public final boolean close(Throwable th) {
        return closeOrCancelImpl(th, false);
    }

    public final boolean closeOrCancelImpl(Throwable th, boolean z) {
        boolean z2;
        Unsafe unsafe;
        long j;
        long longVolatile;
        long j2;
        Object objectVolatile;
        Unsafe unsafe2;
        Unsafe unsafe3;
        long j3;
        long longVolatile2;
        BufferedChannel bufferedChannel = this;
        if (z) {
            while (true) {
                Unsafe unsafe4 = ArtificialStackFramesUnsafe.unsafe;
                long j4 = sendersAndCloseStatus$volatile$FU$offset;
                long longVolatile3 = unsafe4.getLongVolatile(bufferedChannel, j4);
                if (((int) (longVolatile3 >> 60)) != 0) {
                    break;
                }
                ChannelSegment channelSegment = BufferedChannelKt.NULL_SEGMENT;
                if (unsafe4.compareAndSwapLong(bufferedChannel, j4, longVolatile3, (longVolatile3 & 1152921504606846975L) + 1152921504606846976L)) {
                    break;
                }
                bufferedChannel = this;
            }
        }
        Symbol symbol = BufferedChannelKt.NO_CLOSE_CAUSE;
        while (true) {
            Unsafe unsafe5 = ArtificialStackFramesUnsafe.unsafe;
            long j5 = _closeCause$volatile$FU$offset;
            if (unsafe5.compareAndSwapObject(this, j5, symbol, th)) {
                z2 = true;
                break;
            }
            if (unsafe5.getObjectVolatile(this, j5) != symbol) {
                z2 = false;
                break;
            }
        }
        if (z) {
            do {
                unsafe3 = ArtificialStackFramesUnsafe.unsafe;
                j3 = sendersAndCloseStatus$volatile$FU$offset;
                longVolatile2 = unsafe3.getLongVolatile(this, j3);
            } while (!unsafe3.compareAndSwapLong(this, j3, longVolatile2, (longVolatile2 & 1152921504606846975L) + 3458764513820540928L));
        } else {
            do {
                unsafe = ArtificialStackFramesUnsafe.unsafe;
                j = sendersAndCloseStatus$volatile$FU$offset;
                longVolatile = unsafe.getLongVolatile(this, j);
                int i = (int) (longVolatile >> 60);
                if (i == 0) {
                    j2 = (longVolatile & 1152921504606846975L) + 2305843009213693952L;
                } else {
                    if (i != 1) {
                        break;
                    }
                    j2 = (longVolatile & 1152921504606846975L) + 3458764513820540928L;
                }
            } while (!unsafe.compareAndSwapLong(this, j, longVolatile, j2));
        }
        isClosedForSend();
        if (z2) {
            loop3: while (true) {
                Unsafe unsafe6 = ArtificialStackFramesUnsafe.unsafe;
                long j6 = closeHandler$volatile$FU$offset;
                objectVolatile = unsafe6.getObjectVolatile(this, j6);
                Symbol symbol2 = objectVolatile == null ? BufferedChannelKt.CLOSE_HANDLER_CLOSED : BufferedChannelKt.CLOSE_HANDLER_INVOKED;
                do {
                    unsafe2 = ArtificialStackFramesUnsafe.unsafe;
                    if (unsafe2.compareAndSwapObject(this, closeHandler$volatile$FU$offset, objectVolatile, symbol2)) {
                        break loop3;
                    }
                } while (unsafe2.getObjectVolatile(this, j6) == objectVolatile);
            }
            if (objectVolatile != null) {
                TypeIntrinsics.beforeCheckcastToFunctionOfArity(1, objectVolatile);
                ((Function1) objectVolatile).invoke(getCloseCause());
                return z2;
            }
        }
        return z2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:50:0x0097, code lost:
    
        r0 = (kotlinx.coroutines.channels.ChannelSegment) ((kotlinx.coroutines.internal.ConcurrentLinkedListNode) _COROUTINE.ArtificialStackFramesUnsafe.unsafe.getObjectVolatile(r0, kotlinx.coroutines.internal.ConcurrentLinkedListNode._prev$volatile$FU$offset));
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final kotlinx.coroutines.channels.ChannelSegment completeClose(long r12) {
        /*
            Method dump skipped, instructions count: 318
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.BufferedChannel.completeClose(long):kotlinx.coroutines.channels.ChannelSegment");
    }

    public final void dropFirstElementUntilTheSpecifiedCellIsInTheBuffer(long j) {
        ChannelSegment channelSegment = (ChannelSegment) ArtificialStackFramesUnsafe.unsafe.getObjectVolatile(this, receiveSegment$volatile$FU$offset);
        while (true) {
            Unsafe unsafe = ArtificialStackFramesUnsafe.unsafe;
            long j2 = receivers$volatile$FU$offset;
            long longVolatile = unsafe.getLongVolatile(this, j2);
            if (j < Math.max(this.capacity + longVolatile, this.getBufferEndCounter())) {
                return;
            }
            BufferedChannel bufferedChannel = this;
            if (unsafe.compareAndSwapLong(bufferedChannel, j2, longVolatile, 1 + longVolatile)) {
                long j3 = BufferedChannelKt.SEGMENT_SIZE;
                long j4 = longVolatile / j3;
                int i = (int) (longVolatile % j3);
                if (channelSegment.id != j4) {
                    ChannelSegment findSegmentReceive = bufferedChannel.findSegmentReceive(j4, channelSegment);
                    if (findSegmentReceive != null) {
                        channelSegment = findSegmentReceive;
                    }
                }
                ChannelSegment channelSegment2 = channelSegment;
                if (bufferedChannel.updateCellReceive(channelSegment2, i, longVolatile, null) != BufferedChannelKt.FAILED) {
                    channelSegment2.cleanPrev();
                } else if (longVolatile < bufferedChannel.getSendersCounter$kotlinx_coroutines_core()) {
                    channelSegment2.cleanPrev();
                }
                this = bufferedChannel;
                channelSegment = channelSegment2;
            }
            this = bufferedChannel;
        }
    }

    public final void expandBuffer() {
        Object findSegmentInternal;
        Unsafe unsafe;
        if (isRendezvousOrUnlimited()) {
            return;
        }
        Unsafe unsafe2 = ArtificialStackFramesUnsafe.unsafe;
        long j = bufferEndSegment$volatile$FU$offset;
        ChannelSegment channelSegment = (ChannelSegment) unsafe2.getObjectVolatile(this, j);
        loop0: while (true) {
            long andIncrement = bufferEnd$volatile$FU.getAndIncrement(this);
            long j2 = andIncrement / BufferedChannelKt.SEGMENT_SIZE;
            if (getSendersCounter$kotlinx_coroutines_core() <= andIncrement) {
                if (channelSegment.id < j2 && channelSegment.getNext() != null) {
                    moveSegmentBufferEndToSpecifiedOrLast(j2, channelSegment);
                }
                incCompletedExpandBufferAttempts(1L);
                return;
            }
            if (channelSegment.id != j2) {
                BufferedChannelKt$createSegmentFunction$1 bufferedChannelKt$createSegmentFunction$1 = BufferedChannelKt$createSegmentFunction$1.INSTANCE;
                while (true) {
                    findSegmentInternal = InlineList.findSegmentInternal(channelSegment, j2, bufferedChannelKt$createSegmentFunction$1);
                    if (!InlineList.m868isClosedimpl(findSegmentInternal)) {
                        Segment m867getSegmentimpl = InlineList.m867getSegmentimpl(findSegmentInternal);
                        while (true) {
                            Segment segment = (Segment) ArtificialStackFramesUnsafe.unsafe.getObjectVolatile(this, j);
                            if (segment.id >= m867getSegmentimpl.id) {
                                break;
                            }
                            if (!m867getSegmentimpl.tryIncPointers$kotlinx_coroutines_core()) {
                                break;
                            }
                            do {
                                unsafe = ArtificialStackFramesUnsafe.unsafe;
                                if (unsafe.compareAndSwapObject(this, bufferEndSegment$volatile$FU$offset, segment, m867getSegmentimpl)) {
                                    if (segment.decPointers$kotlinx_coroutines_core()) {
                                        segment.remove();
                                    }
                                }
                            } while (unsafe.getObjectVolatile(this, j) == segment);
                            if (m867getSegmentimpl.decPointers$kotlinx_coroutines_core()) {
                                m867getSegmentimpl.remove();
                            }
                        }
                    } else {
                        break;
                    }
                }
                ChannelSegment channelSegment2 = null;
                if (InlineList.m868isClosedimpl(findSegmentInternal)) {
                    isClosedForSend();
                    moveSegmentBufferEndToSpecifiedOrLast(j2, channelSegment);
                    incCompletedExpandBufferAttempts(1L);
                } else {
                    ChannelSegment channelSegment3 = (ChannelSegment) InlineList.m867getSegmentimpl(findSegmentInternal);
                    long j3 = channelSegment3.id;
                    if (j3 > j2) {
                        long j4 = BufferedChannelKt.SEGMENT_SIZE * j3;
                        if (ArtificialStackFramesUnsafe.unsafe.compareAndSwapLong(this, bufferEnd$volatile$FU$offset, 1 + andIncrement, j4)) {
                            incCompletedExpandBufferAttempts(j4 - andIncrement);
                        } else {
                            incCompletedExpandBufferAttempts(1L);
                        }
                    } else {
                        channelSegment2 = channelSegment3;
                    }
                }
                if (channelSegment2 == null) {
                    continue;
                } else {
                    channelSegment = channelSegment2;
                }
            }
            int i = (int) (andIncrement % BufferedChannelKt.SEGMENT_SIZE);
            Object state$kotlinx_coroutines_core = channelSegment.getState$kotlinx_coroutines_core(i);
            boolean z = state$kotlinx_coroutines_core instanceof Waiter;
            long j5 = receivers$volatile$FU$offset;
            if (!z || andIncrement < ArtificialStackFramesUnsafe.unsafe.getLongVolatile(this, j5) || !channelSegment.casState$kotlinx_coroutines_core(i, state$kotlinx_coroutines_core, BufferedChannelKt.RESUMING_BY_EB)) {
                while (true) {
                    Object state$kotlinx_coroutines_core2 = channelSegment.getState$kotlinx_coroutines_core(i);
                    if (!(state$kotlinx_coroutines_core2 instanceof Waiter)) {
                        if (state$kotlinx_coroutines_core2 != BufferedChannelKt.INTERRUPTED_SEND) {
                            if (state$kotlinx_coroutines_core2 != null) {
                                if (state$kotlinx_coroutines_core2 == BufferedChannelKt.BUFFERED || state$kotlinx_coroutines_core2 == BufferedChannelKt.POISONED || state$kotlinx_coroutines_core2 == BufferedChannelKt.DONE_RCV || state$kotlinx_coroutines_core2 == BufferedChannelKt.INTERRUPTED_RCV || state$kotlinx_coroutines_core2 == BufferedChannelKt.CHANNEL_CLOSED) {
                                    break loop0;
                                } else if (state$kotlinx_coroutines_core2 != BufferedChannelKt.RESUMING_BY_RCV) {
                                    Gson$$ExternalSyntheticBUOutline0.m$8("Unexpected cell state: ", state$kotlinx_coroutines_core2);
                                    return;
                                }
                            } else if (channelSegment.casState$kotlinx_coroutines_core(i, state$kotlinx_coroutines_core2, BufferedChannelKt.IN_BUFFER)) {
                                break loop0;
                            }
                        } else {
                            break;
                        }
                    } else if (andIncrement < ArtificialStackFramesUnsafe.unsafe.getLongVolatile(this, j5)) {
                        if (channelSegment.casState$kotlinx_coroutines_core(i, state$kotlinx_coroutines_core2, new WaiterEB((Waiter) state$kotlinx_coroutines_core2))) {
                            break loop0;
                        }
                    } else if (channelSegment.casState$kotlinx_coroutines_core(i, state$kotlinx_coroutines_core2, BufferedChannelKt.RESUMING_BY_EB)) {
                        if (tryResumeSender(state$kotlinx_coroutines_core2, channelSegment, i)) {
                            channelSegment.setState$kotlinx_coroutines_core(i, BufferedChannelKt.BUFFERED);
                            break;
                        } else {
                            channelSegment.setState$kotlinx_coroutines_core(i, BufferedChannelKt.INTERRUPTED_SEND);
                            channelSegment.onSlotCleaned();
                        }
                    }
                }
            } else if (tryResumeSender(state$kotlinx_coroutines_core, channelSegment, i)) {
                channelSegment.setState$kotlinx_coroutines_core(i, BufferedChannelKt.BUFFERED);
                break;
            } else {
                channelSegment.setState$kotlinx_coroutines_core(i, BufferedChannelKt.INTERRUPTED_SEND);
                channelSegment.onSlotCleaned();
                incCompletedExpandBufferAttempts(1L);
            }
        }
        incCompletedExpandBufferAttempts(1L);
    }

    /* JADX WARN: Code restructure failed: missing block: B:49:0x00c4, code lost:
    
        if (r8.decPointers$kotlinx_coroutines_core() == false) goto L76;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00c6, code lost:
    
        r8.remove();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final kotlinx.coroutines.channels.ChannelSegment findSegmentReceive(long r16, kotlinx.coroutines.channels.ChannelSegment r18) {
        /*
            Method dump skipped, instructions count: 252
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.BufferedChannel.findSegmentReceive(long, kotlinx.coroutines.channels.ChannelSegment):kotlinx.coroutines.channels.ChannelSegment");
    }

    public final ChannelSegment findSegmentSend(long j, ChannelSegment channelSegment) {
        Object findSegmentInternal;
        ChannelSegment channelSegment2;
        long j2;
        Unsafe unsafe;
        BufferedChannel bufferedChannel = this;
        ChannelSegment channelSegment3 = BufferedChannelKt.NULL_SEGMENT;
        BufferedChannelKt$createSegmentFunction$1 bufferedChannelKt$createSegmentFunction$1 = BufferedChannelKt$createSegmentFunction$1.INSTANCE;
        loop0: while (true) {
            findSegmentInternal = InlineList.findSegmentInternal(channelSegment, j, bufferedChannelKt$createSegmentFunction$1);
            if (!InlineList.m868isClosedimpl(findSegmentInternal)) {
                Segment m867getSegmentimpl = InlineList.m867getSegmentimpl(findSegmentInternal);
                while (true) {
                    Unsafe unsafe2 = ArtificialStackFramesUnsafe.unsafe;
                    long j3 = sendSegment$volatile$FU$offset;
                    Segment segment = (Segment) unsafe2.getObjectVolatile(bufferedChannel, j3);
                    if (segment.id >= m867getSegmentimpl.id) {
                        break loop0;
                    }
                    if (!m867getSegmentimpl.tryIncPointers$kotlinx_coroutines_core()) {
                        break;
                    }
                    do {
                        unsafe = ArtificialStackFramesUnsafe.unsafe;
                        if (unsafe.compareAndSwapObject(bufferedChannel, sendSegment$volatile$FU$offset, segment, m867getSegmentimpl)) {
                            if (segment.decPointers$kotlinx_coroutines_core()) {
                                segment.remove();
                            }
                        }
                    } while (unsafe.getObjectVolatile(bufferedChannel, j3) == segment);
                    if (m867getSegmentimpl.decPointers$kotlinx_coroutines_core()) {
                        m867getSegmentimpl.remove();
                    }
                }
            } else {
                break;
            }
        }
        ChannelSegment channelSegment4 = null;
        if (InlineList.m868isClosedimpl(findSegmentInternal)) {
            bufferedChannel.isClosedForSend();
            if (channelSegment.id * BufferedChannelKt.SEGMENT_SIZE >= bufferedChannel.getReceiversCounter$kotlinx_coroutines_core()) {
                return null;
            }
            channelSegment.cleanPrev();
            return null;
        }
        ChannelSegment channelSegment5 = (ChannelSegment) InlineList.m867getSegmentimpl(findSegmentInternal);
        long j4 = channelSegment5.id;
        if (j4 <= j) {
            return channelSegment5;
        }
        long j5 = j4 * BufferedChannelKt.SEGMENT_SIZE;
        while (true) {
            Unsafe unsafe3 = ArtificialStackFramesUnsafe.unsafe;
            long j6 = sendersAndCloseStatus$volatile$FU$offset;
            long longVolatile = unsafe3.getLongVolatile(bufferedChannel, j6);
            long j7 = 1152921504606846975L & longVolatile;
            if (j7 >= j5) {
                channelSegment2 = channelSegment4;
                j2 = j4;
                break;
            }
            channelSegment2 = channelSegment4;
            j2 = j4;
            if (unsafe3.compareAndSwapLong(bufferedChannel, j6, longVolatile, j7 + (((int) (longVolatile >> 60)) << 60))) {
                break;
            }
            bufferedChannel = this;
            channelSegment4 = channelSegment2;
            j4 = j2;
        }
        if (j2 * BufferedChannelKt.SEGMENT_SIZE >= getReceiversCounter$kotlinx_coroutines_core()) {
            return channelSegment2;
        }
        channelSegment5.cleanPrev();
        return channelSegment2;
    }

    public final long getBufferEndCounter() {
        return ArtificialStackFramesUnsafe.unsafe.getLongVolatile(this, bufferEnd$volatile$FU$offset);
    }

    public final Throwable getCloseCause() {
        return (Throwable) ArtificialStackFramesUnsafe.unsafe.getObjectVolatile(this, _closeCause$volatile$FU$offset);
    }

    @Override // kotlinx.coroutines.channels.Channel
    public final FormBody.Builder getOnReceiveCatching() {
        TypeIntrinsics.beforeCheckcastToFunctionOfArity(3, BufferedChannel$onReceiveCatching$1.INSTANCE);
        TypeIntrinsics.beforeCheckcastToFunctionOfArity(3, BufferedChannel$onReceiveCatching$2.INSTANCE);
        return new FormBody.Builder(this, (BufferedChannel$$ExternalSyntheticLambda0) null);
    }

    public final Throwable getReceiveException() {
        Throwable closeCause = getCloseCause();
        return closeCause == null ? new ClosedReceiveChannelException("Channel was closed") : closeCause;
    }

    public final long getReceiversCounter$kotlinx_coroutines_core() {
        return ArtificialStackFramesUnsafe.unsafe.getLongVolatile(this, receivers$volatile$FU$offset);
    }

    public final Throwable getSendException() {
        Throwable closeCause = getCloseCause();
        return closeCause == null ? new ClosedSendChannelException("Channel was closed") : closeCause;
    }

    public final long getSendersCounter$kotlinx_coroutines_core() {
        return ArtificialStackFramesUnsafe.unsafe.getLongVolatile(this, sendersAndCloseStatus$volatile$FU$offset) & 1152921504606846975L;
    }

    public final void incCompletedExpandBufferAttempts(long j) {
        if ((completedExpandBuffersAndPauseFlag$volatile$FU.addAndGet(this, j) & 4611686018427387904L) != 0) {
            while ((ArtificialStackFramesUnsafe.unsafe.getLongVolatile(this, completedExpandBuffersAndPauseFlag$volatile$FU$offset) & 4611686018427387904L) != 0) {
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:84:0x00a0, code lost:
    
        r12 = (kotlinx.coroutines.channels.ChannelSegment) ((kotlinx.coroutines.internal.ConcurrentLinkedListNode) _COROUTINE.ArtificialStackFramesUnsafe.unsafe.getObjectVolatile(r12, kotlinx.coroutines.internal.ConcurrentLinkedListNode._prev$volatile$FU$offset));
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean isClosed(long r12, boolean r14) {
        /*
            Method dump skipped, instructions count: 367
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.BufferedChannel.isClosed(long, boolean):boolean");
    }

    public final boolean isClosedForReceive() {
        return isClosed(ArtificialStackFramesUnsafe.unsafe.getLongVolatile(this, sendersAndCloseStatus$volatile$FU$offset), true);
    }

    public final boolean isClosedForSend() {
        return isClosed(ArtificialStackFramesUnsafe.unsafe.getLongVolatile(this, sendersAndCloseStatus$volatile$FU$offset), false);
    }

    public boolean isConflatedDropOldest() {
        return false;
    }

    public final boolean isRendezvousOrUnlimited() {
        long bufferEndCounter = getBufferEndCounter();
        return bufferEndCounter == 0 || bufferEndCounter == Long.MAX_VALUE;
    }

    @Override // kotlinx.coroutines.channels.Channel
    public final BufferedChannelIterator iterator() {
        return new BufferedChannelIterator();
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x005e, code lost:
    
        if (r5.decPointers$kotlinx_coroutines_core() == false) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0060, code lost:
    
        r5.remove();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void moveSegmentBufferEndToSpecifiedOrLast(long r7, kotlinx.coroutines.channels.ChannelSegment r9) {
        /*
            r6 = this;
        L0:
            long r0 = r9.id
            int r0 = (r0 > r7 ? 1 : (r0 == r7 ? 0 : -1))
            if (r0 >= 0) goto L11
            kotlinx.coroutines.internal.ConcurrentLinkedListNode r0 = r9.getNext()
            kotlinx.coroutines.channels.ChannelSegment r0 = (kotlinx.coroutines.channels.ChannelSegment) r0
            if (r0 != 0) goto Lf
            goto L11
        Lf:
            r9 = r0
            goto L0
        L11:
            r5 = r9
        L12:
            boolean r7 = r5.isRemoved()
            if (r7 == 0) goto L23
            kotlinx.coroutines.internal.ConcurrentLinkedListNode r7 = r5.getNext()
            kotlinx.coroutines.channels.ChannelSegment r7 = (kotlinx.coroutines.channels.ChannelSegment) r7
            if (r7 != 0) goto L21
            goto L23
        L21:
            r5 = r7
            goto L12
        L23:
            sun.misc.Unsafe r7 = _COROUTINE.ArtificialStackFramesUnsafe.unsafe
            long r8 = kotlinx.coroutines.channels.BufferedChannel.bufferEndSegment$volatile$FU$offset
            java.lang.Object r7 = r7.getObjectVolatile(r6, r8)
            r4 = r7
            kotlinx.coroutines.internal.Segment r4 = (kotlinx.coroutines.internal.Segment) r4
            long r0 = r4.id
            long r2 = r5.id
            int r7 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r7 < 0) goto L37
            goto L53
        L37:
            boolean r7 = r5.tryIncPointers$kotlinx_coroutines_core()
            if (r7 != 0) goto L3f
            r9 = r5
            goto L11
        L3f:
            sun.misc.Unsafe r0 = _COROUTINE.ArtificialStackFramesUnsafe.unsafe
            long r2 = kotlinx.coroutines.channels.BufferedChannel.bufferEndSegment$volatile$FU$offset
            r1 = r6
            boolean r6 = r0.compareAndSwapObject(r1, r2, r4, r5)
            if (r6 == 0) goto L54
            boolean r6 = r4.decPointers$kotlinx_coroutines_core()
            if (r6 == 0) goto L53
            r4.remove()
        L53:
            return
        L54:
            java.lang.Object r6 = r0.getObjectVolatile(r1, r8)
            if (r6 == r4) goto L65
            boolean r6 = r5.decPointers$kotlinx_coroutines_core()
            if (r6 == 0) goto L63
            r5.remove()
        L63:
            r6 = r1
            goto L23
        L65:
            r6 = r1
            goto L3f
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.BufferedChannel.moveSegmentBufferEndToSpecifiedOrLast(long, kotlinx.coroutines.channels.ChannelSegment):void");
    }

    public final Object onClosedSend(Object obj, Continuation continuation) {
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(1, ExceptionsKt.intercepted(continuation));
        cancellableContinuationImpl.initCancellability();
        cancellableContinuationImpl.resumeWith(new Result.Failure(getSendException()));
        Object result = cancellableContinuationImpl.getResult();
        return result == CoroutineSingletons.COROUTINE_SUSPENDED ? result : Unit.INSTANCE;
    }

    public final void onClosedSendOnNoWaiterSuspend(Object obj, CancellableContinuationImpl cancellableContinuationImpl) {
        cancellableContinuationImpl.resumeWith(new Result.Failure(getSendException()));
    }

    @Override // kotlinx.coroutines.channels.Channel
    public final Object receive(Continuation continuation) {
        ChannelSegment channelSegment;
        Throwable th;
        ChannelSegment channelSegment2;
        Unsafe unsafe = ArtificialStackFramesUnsafe.unsafe;
        long j = receiveSegment$volatile$FU$offset;
        ChannelSegment channelSegment3 = (ChannelSegment) unsafe.getObjectVolatile(this, j);
        while (!this.isClosedForReceive()) {
            AtomicLongFieldUpdater atomicLongFieldUpdater = receivers$volatile$FU;
            long andIncrement = atomicLongFieldUpdater.getAndIncrement(this);
            long j2 = BufferedChannelKt.SEGMENT_SIZE;
            long j3 = andIncrement / j2;
            int i = (int) (andIncrement % j2);
            if (channelSegment3.id != j3) {
                ChannelSegment findSegmentReceive = this.findSegmentReceive(j3, channelSegment3);
                if (findSegmentReceive == null) {
                    continue;
                } else {
                    channelSegment = findSegmentReceive;
                }
            } else {
                channelSegment = channelSegment3;
            }
            BufferedChannel bufferedChannel = this;
            Object updateCellReceive = bufferedChannel.updateCellReceive(channelSegment, i, andIncrement, null);
            Symbol symbol = BufferedChannelKt.SUSPEND;
            if (updateCellReceive == symbol) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1("unexpected");
                return null;
            }
            Symbol symbol2 = BufferedChannelKt.FAILED;
            if (updateCellReceive == symbol2) {
                if (andIncrement < bufferedChannel.getSendersCounter$kotlinx_coroutines_core()) {
                    channelSegment.cleanPrev();
                }
                this = bufferedChannel;
                channelSegment3 = channelSegment;
            } else {
                if (updateCellReceive != BufferedChannelKt.SUSPEND_NO_WAITER) {
                    channelSegment.cleanPrev();
                    return updateCellReceive;
                }
                CancellableContinuationImpl orCreateCancellableContinuation = AwaitKt.getOrCreateCancellableContinuation(ExceptionsKt.intercepted(continuation));
                try {
                    Object updateCellReceive2 = bufferedChannel.updateCellReceive(channelSegment, i, andIncrement, orCreateCancellableContinuation);
                    if (updateCellReceive2 == symbol) {
                        orCreateCancellableContinuation.invokeOnCancellation(channelSegment, i);
                    } else {
                        if (updateCellReceive2 == symbol2) {
                            if (andIncrement < bufferedChannel.getSendersCounter$kotlinx_coroutines_core()) {
                                channelSegment.cleanPrev();
                            }
                            ChannelSegment channelSegment4 = (ChannelSegment) ArtificialStackFramesUnsafe.unsafe.getObjectVolatile(bufferedChannel, j);
                            while (true) {
                                if (bufferedChannel.isClosedForReceive()) {
                                    orCreateCancellableContinuation.resumeWith(new Result.Failure(bufferedChannel.getReceiveException()));
                                    break;
                                }
                                CancellableContinuationImpl cancellableContinuationImpl = orCreateCancellableContinuation;
                                try {
                                    long andIncrement2 = atomicLongFieldUpdater.getAndIncrement(bufferedChannel);
                                    long j4 = BufferedChannelKt.SEGMENT_SIZE;
                                    long j5 = andIncrement2 / j4;
                                    int i2 = (int) (andIncrement2 % j4);
                                    if (channelSegment4.id != j5) {
                                        try {
                                            ChannelSegment findSegmentReceive2 = bufferedChannel.findSegmentReceive(j5, channelSegment4);
                                            if (findSegmentReceive2 == null) {
                                                orCreateCancellableContinuation = cancellableContinuationImpl;
                                            } else {
                                                channelSegment2 = findSegmentReceive2;
                                            }
                                        } catch (Throwable th2) {
                                            th = th2;
                                            orCreateCancellableContinuation = cancellableContinuationImpl;
                                            orCreateCancellableContinuation.releaseClaimedReusableContinuation$kotlinx_coroutines_core();
                                            throw th;
                                        }
                                    } else {
                                        channelSegment2 = channelSegment4;
                                    }
                                    BufferedChannel bufferedChannel2 = bufferedChannel;
                                    updateCellReceive2 = bufferedChannel2.updateCellReceive(channelSegment2, i2, andIncrement2, cancellableContinuationImpl);
                                    bufferedChannel = bufferedChannel2;
                                    ChannelSegment channelSegment5 = channelSegment2;
                                    orCreateCancellableContinuation = cancellableContinuationImpl;
                                    if (updateCellReceive2 == BufferedChannelKt.SUSPEND) {
                                        orCreateCancellableContinuation.invokeOnCancellation(channelSegment5, i2);
                                        break;
                                    }
                                    if (updateCellReceive2 == BufferedChannelKt.FAILED) {
                                        if (andIncrement2 < bufferedChannel.getSendersCounter$kotlinx_coroutines_core()) {
                                            channelSegment5.cleanPrev();
                                        }
                                        channelSegment4 = channelSegment5;
                                    } else {
                                        if (updateCellReceive2 == BufferedChannelKt.SUSPEND_NO_WAITER) {
                                            throw new IllegalStateException("unexpected");
                                        }
                                        channelSegment5.cleanPrev();
                                    }
                                } catch (Throwable th3) {
                                    th = th3;
                                    orCreateCancellableContinuation = cancellableContinuationImpl;
                                    th = th;
                                    orCreateCancellableContinuation.releaseClaimedReusableContinuation$kotlinx_coroutines_core();
                                    throw th;
                                }
                            }
                        } else {
                            channelSegment.cleanPrev();
                        }
                        orCreateCancellableContinuation.resume(updateCellReceive2, null);
                    }
                    return orCreateCancellableContinuation.getResult();
                } catch (Throwable th4) {
                    th = th4;
                }
            }
        }
        Throwable receiveException = this.getReceiveException();
        int i3 = StackTraceRecoveryKt.$r8$clinit;
        throw receiveException;
    }

    @Override // kotlinx.coroutines.channels.Channel
    /* renamed from: receiveCatching-JP2dKIU, reason: not valid java name */
    public final Object mo862receiveCatchingJP2dKIU(CombineKt$combineInternal$2 combineKt$combineInternal$2) {
        return m861receiveCatchingJP2dKIU$suspendImpl(this, combineKt$combineInternal$2);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x002f  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /* renamed from: receiveCatchingOnNoWaiterSuspend-GKJJFZk, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m863receiveCatchingOnNoWaiterSuspendGKJJFZk(kotlinx.coroutines.channels.ChannelSegment r11, int r12, long r13, kotlin.coroutines.jvm.internal.ContinuationImpl r15) {
        /*
            Method dump skipped, instructions count: 244
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.BufferedChannel.m863receiveCatchingOnNoWaiterSuspendGKJJFZk(kotlinx.coroutines.channels.ChannelSegment, int, long, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public final void resumeWaiterOnClosedChannel(Waiter waiter, boolean z) {
        if (waiter instanceof CancellableContinuation) {
            ((Continuation) waiter).resumeWith(new Result.Failure(z ? getReceiveException() : getSendException()));
            return;
        }
        if (waiter instanceof ReceiveCatching) {
            ((ReceiveCatching) waiter).cont.resumeWith(new ChannelResult(new ChannelResult.Closed(getCloseCause())));
            return;
        }
        if (!(waiter instanceof BufferedChannelIterator)) {
            if (waiter instanceof SelectImplementation) {
                ((SelectImplementation) waiter).trySelectInternal(this, BufferedChannelKt.CHANNEL_CLOSED);
                return;
            } else {
                Gson$$ExternalSyntheticBUOutline0.m$8("Unexpected waiter: ", waiter);
                return;
            }
        }
        BufferedChannelIterator bufferedChannelIterator = (BufferedChannelIterator) waiter;
        CancellableContinuationImpl cancellableContinuationImpl = bufferedChannelIterator.continuation;
        cancellableContinuationImpl.getClass();
        bufferedChannelIterator.continuation = null;
        bufferedChannelIterator.receiveResult = BufferedChannelKt.CHANNEL_CLOSED;
        Throwable closeCause = BufferedChannel.this.getCloseCause();
        if (closeCause == null) {
            cancellableContinuationImpl.resumeWith(Boolean.FALSE);
        } else {
            cancellableContinuationImpl.resumeWith(new Result.Failure(closeCause));
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x0177, code lost:
    
        return r13;
     */
    /* JADX WARN: Removed duplicated region for block: B:72:0x015c  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x015f A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:75:? A[RETURN, SYNTHETIC] */
    @Override // kotlinx.coroutines.channels.SendChannel
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object send(java.lang.Object r23, kotlin.coroutines.Continuation r24) {
        /*
            Method dump skipped, instructions count: 381
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.BufferedChannel.send(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:101:0x01ae, code lost:
    
        r3 = (kotlinx.coroutines.channels.ChannelSegment) r3.getNext();
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x01b5, code lost:
    
        if (r3 != null) goto L90;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String toString() {
        /*
            Method dump skipped, instructions count: 475
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.BufferedChannel.toString():java.lang.String");
    }

    @Override // kotlinx.coroutines.channels.Channel
    /* renamed from: tryReceive-PtdJZtk, reason: not valid java name */
    public final Object mo864tryReceivePtdJZtk() {
        ChannelSegment channelSegment;
        Unsafe unsafe = ArtificialStackFramesUnsafe.unsafe;
        long longVolatile = unsafe.getLongVolatile(this, receivers$volatile$FU$offset);
        long longVolatile2 = unsafe.getLongVolatile(this, sendersAndCloseStatus$volatile$FU$offset);
        if (isClosed(longVolatile2, true)) {
            return new ChannelResult.Closed(getCloseCause());
        }
        long j = longVolatile2 & 1152921504606846975L;
        ChannelResult.Failed failed = ChannelResult.failed;
        if (longVolatile >= j) {
            return failed;
        }
        Object obj = BufferedChannelKt.INTERRUPTED_RCV;
        ChannelSegment channelSegment2 = (ChannelSegment) unsafe.getObjectVolatile(this, receiveSegment$volatile$FU$offset);
        while (!this.isClosedForReceive()) {
            long andIncrement = receivers$volatile$FU.getAndIncrement(this);
            long j2 = BufferedChannelKt.SEGMENT_SIZE;
            long j3 = andIncrement / j2;
            int i = (int) (andIncrement % j2);
            if (channelSegment2.id != j3) {
                ChannelSegment findSegmentReceive = this.findSegmentReceive(j3, channelSegment2);
                if (findSegmentReceive == null) {
                    continue;
                } else {
                    channelSegment = findSegmentReceive;
                }
            } else {
                channelSegment = channelSegment2;
            }
            BufferedChannel bufferedChannel = this;
            Object updateCellReceive = bufferedChannel.updateCellReceive(channelSegment, i, andIncrement, obj);
            channelSegment2 = channelSegment;
            if (updateCellReceive == BufferedChannelKt.SUSPEND) {
                Waiter waiter = obj instanceof Waiter ? (Waiter) obj : null;
                if (waiter != null) {
                    waiter.invokeOnCancellation(channelSegment2, i);
                }
                bufferedChannel.waitExpandBufferCompletion$kotlinx_coroutines_core(andIncrement);
                channelSegment2.onSlotCleaned();
                return failed;
            }
            if (updateCellReceive != BufferedChannelKt.FAILED) {
                if (updateCellReceive != BufferedChannelKt.SUSPEND_NO_WAITER) {
                    channelSegment2.cleanPrev();
                    return updateCellReceive;
                }
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1("unexpected");
                return null;
            }
            if (andIncrement < bufferedChannel.getSendersCounter$kotlinx_coroutines_core()) {
                channelSegment2.cleanPrev();
            }
            this = bufferedChannel;
        }
        return new ChannelResult.Closed(this.getCloseCause());
    }

    public final boolean tryResumeReceiver(Object obj, Object obj2) {
        if (obj instanceof SelectImplementation) {
            return ((SelectImplementation) obj).trySelectInternal(this, obj2) == 0;
        }
        if (obj instanceof ReceiveCatching) {
            CancellableContinuationImpl cancellableContinuationImpl = ((ReceiveCatching) obj).cont;
            ChannelResult channelResult = new ChannelResult(obj2);
            ChannelSegment channelSegment = BufferedChannelKt.NULL_SEGMENT;
            Symbol tryResume = cancellableContinuationImpl.tryResume(channelResult, null);
            if (tryResume == null) {
                return false;
            }
            cancellableContinuationImpl.completeResume(tryResume);
            return true;
        }
        if (!(obj instanceof BufferedChannelIterator)) {
            if (!(obj instanceof CancellableContinuation)) {
                Gson$$ExternalSyntheticBUOutline0.m$8("Unexpected receiver type: ", obj);
                return false;
            }
            CancellableContinuation cancellableContinuation = (CancellableContinuation) obj;
            ChannelSegment channelSegment2 = BufferedChannelKt.NULL_SEGMENT;
            Symbol tryResume2 = cancellableContinuation.tryResume(obj2, null);
            if (tryResume2 == null) {
                return false;
            }
            cancellableContinuation.completeResume(tryResume2);
            return true;
        }
        BufferedChannelIterator bufferedChannelIterator = (BufferedChannelIterator) obj;
        CancellableContinuationImpl cancellableContinuationImpl2 = bufferedChannelIterator.continuation;
        cancellableContinuationImpl2.getClass();
        bufferedChannelIterator.continuation = null;
        bufferedChannelIterator.receiveResult = obj2;
        Boolean bool = Boolean.TRUE;
        BufferedChannel.this.getClass();
        ChannelSegment channelSegment3 = BufferedChannelKt.NULL_SEGMENT;
        Symbol tryResume3 = cancellableContinuationImpl2.tryResume(bool, null);
        if (tryResume3 == null) {
            return false;
        }
        cancellableContinuationImpl2.completeResume(tryResume3);
        return true;
    }

    public final boolean tryResumeSender(Object obj, ChannelSegment channelSegment, int i) {
        TrySelectDetailedResult trySelectDetailedResult;
        boolean z = obj instanceof CancellableContinuation;
        Unit unit = Unit.INSTANCE;
        if (z) {
            CancellableContinuation cancellableContinuation = (CancellableContinuation) obj;
            ChannelSegment channelSegment2 = BufferedChannelKt.NULL_SEGMENT;
            Symbol tryResume = cancellableContinuation.tryResume(unit, null);
            if (tryResume == null) {
                return false;
            }
            cancellableContinuation.completeResume(tryResume);
            return true;
        }
        if (!(obj instanceof SelectImplementation)) {
            Gson$$ExternalSyntheticBUOutline0.m$8("Unexpected waiter: ", obj);
            return false;
        }
        int trySelectInternal = ((SelectImplementation) obj).trySelectInternal(this, unit);
        if (trySelectInternal == 0) {
            trySelectDetailedResult = TrySelectDetailedResult.SUCCESSFUL;
        } else if (trySelectInternal == 1) {
            trySelectDetailedResult = TrySelectDetailedResult.REREGISTER;
        } else if (trySelectInternal == 2) {
            trySelectDetailedResult = TrySelectDetailedResult.CANCELLED;
        } else {
            if (trySelectInternal != 3) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1(trySelectInternal, "Unexpected internal result: ");
                return false;
            }
            trySelectDetailedResult = TrySelectDetailedResult.ALREADY_SELECTED;
        }
        if (trySelectDetailedResult == TrySelectDetailedResult.REREGISTER) {
            channelSegment.setElementLazy(i, null);
        }
        return trySelectDetailedResult == TrySelectDetailedResult.SUCCESSFUL;
    }

    @Override // kotlinx.coroutines.channels.SendChannel
    /* renamed from: trySend-JP2dKIU */
    public Object mo757trySendJP2dKIU(Object obj) {
        BufferedChannel bufferedChannel = this;
        Unsafe unsafe = ArtificialStackFramesUnsafe.unsafe;
        long j = 1152921504606846975L;
        boolean z = bufferedChannel.isClosed(unsafe.getLongVolatile(bufferedChannel, sendersAndCloseStatus$volatile$FU$offset), false) ? false : !bufferedChannel.bufferOrRendezvousSend(r2 & 1152921504606846975L);
        ChannelResult.Failed failed = ChannelResult.failed;
        if (z) {
            return failed;
        }
        Object obj2 = BufferedChannelKt.INTERRUPTED_SEND;
        ChannelSegment channelSegment = (ChannelSegment) unsafe.getObjectVolatile(bufferedChannel, sendSegment$volatile$FU$offset);
        while (true) {
            long andIncrement = sendersAndCloseStatus$volatile$FU.getAndIncrement(bufferedChannel);
            long j2 = andIncrement & j;
            boolean isClosed = bufferedChannel.isClosed(andIncrement, false);
            int i = BufferedChannelKt.SEGMENT_SIZE;
            long j3 = i;
            long j4 = j2 / j3;
            int i2 = (int) (j2 % j3);
            if (channelSegment.id != j4) {
                ChannelSegment findSegmentSend = bufferedChannel.findSegmentSend(j4, channelSegment);
                if (findSegmentSend != null) {
                    channelSegment = findSegmentSend;
                } else {
                    if (isClosed) {
                        return new ChannelResult.Closed(bufferedChannel.getSendException());
                    }
                    j = 1152921504606846975L;
                }
            }
            int updateCellSend = bufferedChannel.updateCellSend(channelSegment, i2, obj, j2, obj2, isClosed);
            Unit unit = Unit.INSTANCE;
            if (updateCellSend == 0) {
                channelSegment.cleanPrev();
                return unit;
            }
            if (updateCellSend == 1) {
                return unit;
            }
            if (updateCellSend == 2) {
                if (isClosed) {
                    channelSegment.onSlotCleaned();
                    return new ChannelResult.Closed(getSendException());
                }
                Waiter waiter = obj2 instanceof Waiter ? (Waiter) obj2 : null;
                if (waiter != null) {
                    waiter.invokeOnCancellation(channelSegment, i2 + i);
                }
                channelSegment.onSlotCleaned();
                return failed;
            }
            if (updateCellSend == 3) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1("unexpected");
                return null;
            }
            if (updateCellSend == 4) {
                if (j2 < getReceiversCounter$kotlinx_coroutines_core()) {
                    channelSegment.cleanPrev();
                }
                return new ChannelResult.Closed(getSendException());
            }
            if (updateCellSend == 5) {
                channelSegment.cleanPrev();
            }
            j = 1152921504606846975L;
            bufferedChannel = this;
        }
    }

    public final Object updateCellReceive(ChannelSegment channelSegment, int i, long j, Object obj) {
        Object state$kotlinx_coroutines_core = channelSegment.getState$kotlinx_coroutines_core(i);
        AtomicReferenceArray atomicReferenceArray = channelSegment.data;
        long j2 = sendersAndCloseStatus$volatile$FU$offset;
        if (state$kotlinx_coroutines_core == null) {
            if (j >= (ArtificialStackFramesUnsafe.unsafe.getLongVolatile(this, j2) & 1152921504606846975L)) {
                if (obj == null) {
                    return BufferedChannelKt.SUSPEND_NO_WAITER;
                }
                if (channelSegment.casState$kotlinx_coroutines_core(i, state$kotlinx_coroutines_core, obj)) {
                    expandBuffer();
                    return BufferedChannelKt.SUSPEND;
                }
            }
        } else if (state$kotlinx_coroutines_core == BufferedChannelKt.BUFFERED && channelSegment.casState$kotlinx_coroutines_core(i, state$kotlinx_coroutines_core, BufferedChannelKt.DONE_RCV)) {
            expandBuffer();
            Object obj2 = atomicReferenceArray.get(i * 2);
            channelSegment.setElementLazy(i, null);
            return obj2;
        }
        while (true) {
            Object state$kotlinx_coroutines_core2 = channelSegment.getState$kotlinx_coroutines_core(i);
            if (state$kotlinx_coroutines_core2 == null || state$kotlinx_coroutines_core2 == BufferedChannelKt.IN_BUFFER) {
                if (j < (ArtificialStackFramesUnsafe.unsafe.getLongVolatile(this, j2) & 1152921504606846975L)) {
                    if (channelSegment.casState$kotlinx_coroutines_core(i, state$kotlinx_coroutines_core2, BufferedChannelKt.POISONED)) {
                        expandBuffer();
                        return BufferedChannelKt.FAILED;
                    }
                } else {
                    if (obj == null) {
                        return BufferedChannelKt.SUSPEND_NO_WAITER;
                    }
                    if (channelSegment.casState$kotlinx_coroutines_core(i, state$kotlinx_coroutines_core2, obj)) {
                        expandBuffer();
                        return BufferedChannelKt.SUSPEND;
                    }
                }
            } else if (state$kotlinx_coroutines_core2 != BufferedChannelKt.BUFFERED) {
                Symbol symbol = BufferedChannelKt.INTERRUPTED_SEND;
                if (state$kotlinx_coroutines_core2 == symbol) {
                    return BufferedChannelKt.FAILED;
                }
                if (state$kotlinx_coroutines_core2 == BufferedChannelKt.POISONED) {
                    return BufferedChannelKt.FAILED;
                }
                if (state$kotlinx_coroutines_core2 == BufferedChannelKt.CHANNEL_CLOSED) {
                    expandBuffer();
                    return BufferedChannelKt.FAILED;
                }
                if (state$kotlinx_coroutines_core2 != BufferedChannelKt.RESUMING_BY_EB && channelSegment.casState$kotlinx_coroutines_core(i, state$kotlinx_coroutines_core2, BufferedChannelKt.RESUMING_BY_RCV)) {
                    boolean z = state$kotlinx_coroutines_core2 instanceof WaiterEB;
                    if (z) {
                        state$kotlinx_coroutines_core2 = ((WaiterEB) state$kotlinx_coroutines_core2).waiter;
                    }
                    if (tryResumeSender(state$kotlinx_coroutines_core2, channelSegment, i)) {
                        channelSegment.setState$kotlinx_coroutines_core(i, BufferedChannelKt.DONE_RCV);
                        expandBuffer();
                        Object obj3 = atomicReferenceArray.get(i * 2);
                        channelSegment.setElementLazy(i, null);
                        return obj3;
                    }
                    channelSegment.setState$kotlinx_coroutines_core(i, symbol);
                    channelSegment.onSlotCleaned();
                    if (z) {
                        expandBuffer();
                    }
                    return BufferedChannelKt.FAILED;
                }
            } else if (channelSegment.casState$kotlinx_coroutines_core(i, state$kotlinx_coroutines_core2, BufferedChannelKt.DONE_RCV)) {
                expandBuffer();
                Object obj4 = atomicReferenceArray.get(i * 2);
                channelSegment.setElementLazy(i, null);
                return obj4;
            }
        }
    }

    public final int updateCellSend(ChannelSegment channelSegment, int i, Object obj, long j, Object obj2, boolean z) {
        channelSegment.setElementLazy(i, obj);
        if (z) {
            return updateCellSendSlow(channelSegment, i, obj, j, obj2, z);
        }
        Object state$kotlinx_coroutines_core = channelSegment.getState$kotlinx_coroutines_core(i);
        if (state$kotlinx_coroutines_core == null) {
            if (bufferOrRendezvousSend(j)) {
                if (channelSegment.casState$kotlinx_coroutines_core(i, null, BufferedChannelKt.BUFFERED)) {
                    return 1;
                }
            } else {
                if (obj2 == null) {
                    return 3;
                }
                if (channelSegment.casState$kotlinx_coroutines_core(i, null, obj2)) {
                    return 2;
                }
            }
        } else if (state$kotlinx_coroutines_core instanceof Waiter) {
            channelSegment.setElementLazy(i, null);
            if (tryResumeReceiver(state$kotlinx_coroutines_core, obj)) {
                channelSegment.setState$kotlinx_coroutines_core(i, BufferedChannelKt.DONE_RCV);
                return 0;
            }
            Symbol symbol = BufferedChannelKt.INTERRUPTED_RCV;
            if (channelSegment.data.getAndSet((i * 2) + 1, symbol) == symbol) {
                return 5;
            }
            channelSegment.onCancelledRequest(i, true);
            return 5;
        }
        return updateCellSendSlow(channelSegment, i, obj, j, obj2, z);
    }

    public final int updateCellSendSlow(ChannelSegment channelSegment, int i, Object obj, long j, Object obj2, boolean z) {
        while (true) {
            Object state$kotlinx_coroutines_core = channelSegment.getState$kotlinx_coroutines_core(i);
            if (state$kotlinx_coroutines_core == null) {
                if (!bufferOrRendezvousSend(j) || z) {
                    if (z) {
                        if (channelSegment.casState$kotlinx_coroutines_core(i, null, BufferedChannelKt.INTERRUPTED_SEND)) {
                            channelSegment.onSlotCleaned();
                            return 4;
                        }
                    } else {
                        if (obj2 == null) {
                            return 3;
                        }
                        if (channelSegment.casState$kotlinx_coroutines_core(i, null, obj2)) {
                            return 2;
                        }
                    }
                } else if (channelSegment.casState$kotlinx_coroutines_core(i, null, BufferedChannelKt.BUFFERED)) {
                    break;
                }
            } else {
                if (state$kotlinx_coroutines_core != BufferedChannelKt.IN_BUFFER) {
                    Symbol symbol = BufferedChannelKt.INTERRUPTED_RCV;
                    if (state$kotlinx_coroutines_core == symbol) {
                        channelSegment.setElementLazy(i, null);
                        return 5;
                    }
                    if (state$kotlinx_coroutines_core == BufferedChannelKt.POISONED) {
                        channelSegment.setElementLazy(i, null);
                        return 5;
                    }
                    if (state$kotlinx_coroutines_core == BufferedChannelKt.CHANNEL_CLOSED) {
                        channelSegment.setElementLazy(i, null);
                        isClosedForSend();
                        return 4;
                    }
                    channelSegment.setElementLazy(i, null);
                    if (state$kotlinx_coroutines_core instanceof WaiterEB) {
                        state$kotlinx_coroutines_core = ((WaiterEB) state$kotlinx_coroutines_core).waiter;
                    }
                    if (tryResumeReceiver(state$kotlinx_coroutines_core, obj)) {
                        channelSegment.setState$kotlinx_coroutines_core(i, BufferedChannelKt.DONE_RCV);
                        return 0;
                    }
                    if (channelSegment.data.getAndSet((i * 2) + 1, symbol) != symbol) {
                        channelSegment.onCancelledRequest(i, true);
                    }
                    return 5;
                }
                if (channelSegment.casState$kotlinx_coroutines_core(i, state$kotlinx_coroutines_core, BufferedChannelKt.BUFFERED)) {
                    break;
                }
            }
        }
        return 1;
    }

    public final void waitExpandBufferCompletion$kotlinx_coroutines_core(long j) {
        BufferedChannel bufferedChannel = this;
        if (bufferedChannel.isRendezvousOrUnlimited()) {
            return;
        }
        while (bufferedChannel.getBufferEndCounter() <= j) {
            bufferedChannel = this;
        }
        int i = BufferedChannelKt.EXPAND_BUFFER_COMPLETION_WAIT_ITERATIONS;
        int i2 = 0;
        while (true) {
            long j2 = completedExpandBuffersAndPauseFlag$volatile$FU$offset;
            if (i2 < i) {
                long bufferEndCounter = bufferedChannel.getBufferEndCounter();
                if (bufferEndCounter == (ArtificialStackFramesUnsafe.unsafe.getLongVolatile(bufferedChannel, j2) & 4611686018427387903L) && bufferEndCounter == bufferedChannel.getBufferEndCounter()) {
                    return;
                } else {
                    i2++;
                }
            } else {
                while (true) {
                    Unsafe unsafe = ArtificialStackFramesUnsafe.unsafe;
                    long longVolatile = unsafe.getLongVolatile(bufferedChannel, j2);
                    if (unsafe.compareAndSwapLong(bufferedChannel, completedExpandBuffersAndPauseFlag$volatile$FU$offset, longVolatile, 4611686018427387904L + (longVolatile & 4611686018427387903L))) {
                        break;
                    } else {
                        bufferedChannel = this;
                    }
                }
                while (true) {
                    long bufferEndCounter2 = bufferedChannel.getBufferEndCounter();
                    Unsafe unsafe2 = ArtificialStackFramesUnsafe.unsafe;
                    long longVolatile2 = unsafe2.getLongVolatile(bufferedChannel, j2);
                    long j3 = longVolatile2 & 4611686018427387903L;
                    boolean z = (longVolatile2 & 4611686018427387904L) != 0;
                    if (bufferEndCounter2 == j3 && bufferEndCounter2 == bufferedChannel.getBufferEndCounter()) {
                        break;
                    }
                    if (z) {
                        bufferedChannel = this;
                    } else {
                        bufferedChannel = this;
                        unsafe2.compareAndSwapLong(bufferedChannel, completedExpandBuffersAndPauseFlag$volatile$FU$offset, longVolatile2, j3 + 4611686018427387904L);
                    }
                }
                while (true) {
                    Unsafe unsafe3 = ArtificialStackFramesUnsafe.unsafe;
                    long longVolatile3 = unsafe3.getLongVolatile(bufferedChannel, j2);
                    if (unsafe3.compareAndSwapLong(bufferedChannel, completedExpandBuffersAndPauseFlag$volatile$FU$offset, longVolatile3, longVolatile3 & 4611686018427387903L)) {
                        return;
                    } else {
                        bufferedChannel = this;
                    }
                }
            }
        }
    }
}
