package kotlinx.coroutines.channels;

import androidx.compose.ui.Modifier;
import androidx.emoji2.text.EmojiProcessor$EmojiProcessCallback;
import coil3.network.okhttp.internal.CallsKt$await$2$1;
import com.google.common.base.Joiner;
import com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.text.UStringsKt;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CancellableContinuationImplAtomicFieldUpdaterHelper;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.Waiter;
import kotlinx.coroutines.channels.ChannelResult;
import kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2;
import kotlinx.coroutines.internal.ConcurrentLinkedListNode;
import kotlinx.coroutines.internal.InlineList;
import kotlinx.coroutines.internal.Segment;
import kotlinx.coroutines.internal.StackTraceRecoveryKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.jsoup.select.Selector$SelectorParseException;
import sun.misc.Unsafe;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class BufferedChannel implements Channel {
    public static final /* synthetic */ AtomicReferenceFieldUpdater _closeCause$volatile$FU;
    public static final /* synthetic */ long _closeCause$volatile$FU$offset;
    public static final /* synthetic */ AtomicReferenceFieldUpdater bufferEndSegment$volatile$FU;
    public static final /* synthetic */ long bufferEndSegment$volatile$FU$offset;
    public static final /* synthetic */ AtomicReferenceFieldUpdater closeHandler$volatile$FU;
    public static final /* synthetic */ long closeHandler$volatile$FU$offset;
    public static final /* synthetic */ AtomicReferenceFieldUpdater receiveSegment$volatile$FU;
    public static final /* synthetic */ long receiveSegment$volatile$FU$offset;
    public static final /* synthetic */ long sendSegment$volatile$FU$offset;
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
    public static final /* synthetic */ AtomicLongFieldUpdater sendersAndCloseStatus$volatile$FU = AtomicLongFieldUpdater.newUpdater(BufferedChannel.class, "sendersAndCloseStatus$volatile");
    public static final /* synthetic */ AtomicLongFieldUpdater receivers$volatile$FU = AtomicLongFieldUpdater.newUpdater(BufferedChannel.class, "receivers$volatile");
    public static final /* synthetic */ AtomicLongFieldUpdater bufferEnd$volatile$FU = AtomicLongFieldUpdater.newUpdater(BufferedChannel.class, "bufferEnd$volatile");
    public static final /* synthetic */ AtomicLongFieldUpdater completedExpandBuffersAndPauseFlag$volatile$FU = AtomicLongFieldUpdater.newUpdater(BufferedChannel.class, "completedExpandBuffersAndPauseFlag$volatile");
    public static final /* synthetic */ AtomicReferenceFieldUpdater sendSegment$volatile$FU = AtomicReferenceFieldUpdater.newUpdater(BufferedChannel.class, Object.class, "sendSegment$volatile");

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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
                        Joiner joiner = BufferedChannelKt.SUSPEND;
                        if (updateCellReceive == joiner) {
                            _UtilJvmKt$$ExternalSyntheticLambda1.m$2("unreachable");
                            return null;
                        }
                        Joiner joiner2 = BufferedChannelKt.FAILED;
                        if (updateCellReceive == joiner2) {
                            if (andIncrement < bufferedChannel.getSendersCounter$kotlinx_coroutines_core()) {
                                channelSegment.cleanPrev();
                            }
                            channelSegment2 = channelSegment;
                        } else {
                            if (updateCellReceive == BufferedChannelKt.SUSPEND_NO_WAITER) {
                                BufferedChannel bufferedChannel2 = BufferedChannel.this;
                                CancellableContinuationImpl orCreateCancellableContinuation = JobKt.getOrCreateCancellableContinuation(UStringsKt.intercepted(continuationImpl));
                                try {
                                    this.continuation = orCreateCancellableContinuation;
                                    Object updateCellReceive2 = bufferedChannel2.updateCellReceive(channelSegment, i2, andIncrement, this);
                                    if (updateCellReceive2 == joiner) {
                                        invokeOnCancellation(channelSegment, i2);
                                    } else {
                                        if (updateCellReceive2 == joiner2) {
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
            Joiner joiner = BufferedChannelKt.NO_RECEIVE_RESULT;
            if (obj == joiner) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$2("`hasNext()` has not been invoked");
                return null;
            }
            this.receiveResult = joiner;
            if (obj != BufferedChannelKt.CHANNEL_CLOSED) {
                return obj;
            }
            Throwable receiveException = BufferedChannel.this.getReceiveException();
            int i = StackTraceRecoveryKt.$r8$clinit;
            throw receiveException;
        }
    }

    static {
        Unsafe unsafe = CancellableContinuationImplAtomicFieldUpdaterHelper.unsafe;
        sendSegment$volatile$FU$offset = unsafe.objectFieldOffset(BufferedChannel.class.getDeclaredField("sendSegment$volatile"));
        receiveSegment$volatile$FU = AtomicReferenceFieldUpdater.newUpdater(BufferedChannel.class, Object.class, "receiveSegment$volatile");
        receiveSegment$volatile$FU$offset = unsafe.objectFieldOffset(BufferedChannel.class.getDeclaredField("receiveSegment$volatile"));
        bufferEndSegment$volatile$FU = AtomicReferenceFieldUpdater.newUpdater(BufferedChannel.class, Object.class, "bufferEndSegment$volatile");
        bufferEndSegment$volatile$FU$offset = unsafe.objectFieldOffset(BufferedChannel.class.getDeclaredField("bufferEndSegment$volatile"));
        _closeCause$volatile$FU = AtomicReferenceFieldUpdater.newUpdater(BufferedChannel.class, Object.class, "_closeCause$volatile");
        _closeCause$volatile$FU$offset = unsafe.objectFieldOffset(BufferedChannel.class.getDeclaredField("_closeCause$volatile"));
        closeHandler$volatile$FU = AtomicReferenceFieldUpdater.newUpdater(BufferedChannel.class, Object.class, "closeHandler$volatile");
        closeHandler$volatile$FU$offset = unsafe.objectFieldOffset(BufferedChannel.class.getDeclaredField("closeHandler$volatile"));
    }

    public BufferedChannel(int i) {
        this.capacity = i;
        if (i < 0) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1((Object) Modifier.CC.m("Invalid channel capacity: ", i, ", should be >=0"));
            throw null;
        }
        ChannelSegment channelSegment = BufferedChannelKt.NULL_SEGMENT;
        this.bufferEnd$volatile = i != 0 ? i != Integer.MAX_VALUE ? i : Long.MAX_VALUE : 0L;
        this.completedExpandBuffersAndPauseFlag$volatile = bufferEnd$volatile$FU.get(this);
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

    public static final void access$onClosedSendOnNoWaiterSuspend(BufferedChannel bufferedChannel, Object obj, CancellableContinuationImpl cancellableContinuationImpl) {
        cancellableContinuationImpl.resumeWith(new Result.Failure(bufferedChannel.getSendException()));
    }

    public static final int access$updateCellSend(BufferedChannel bufferedChannel, ChannelSegment channelSegment, int i, Object obj, long j, Object obj2, boolean z) {
        channelSegment.setElementLazy(i, obj);
        if (z) {
            return bufferedChannel.updateCellSendSlow(channelSegment, i, obj, j, obj2, z);
        }
        Object state$kotlinx_coroutines_core = channelSegment.getState$kotlinx_coroutines_core(i);
        if (state$kotlinx_coroutines_core == null) {
            if (bufferedChannel.bufferOrRendezvousSend(j)) {
                if (channelSegment.casState$kotlinx_coroutines_core(null, BufferedChannelKt.BUFFERED, i)) {
                    return 1;
                }
            } else {
                if (obj2 == null) {
                    return 3;
                }
                if (channelSegment.casState$kotlinx_coroutines_core(null, obj2, i)) {
                    return 2;
                }
            }
        } else if (state$kotlinx_coroutines_core instanceof Waiter) {
            channelSegment.setElementLazy(i, null);
            if (bufferedChannel.tryResumeReceiver(state$kotlinx_coroutines_core, obj)) {
                channelSegment.setState$kotlinx_coroutines_core(i, BufferedChannelKt.DONE_RCV);
                return 0;
            }
            Joiner joiner = BufferedChannelKt.INTERRUPTED_RCV;
            if (channelSegment.data.getAndSet((i * 2) + 1, joiner) == joiner) {
                return 5;
            }
            channelSegment.onCancelledRequest(i, true);
            return 5;
        }
        return bufferedChannel.updateCellSendSlow(channelSegment, i, obj, j, obj2, z);
    }

    public static void incCompletedExpandBufferAttempts$default(BufferedChannel bufferedChannel) {
        AtomicLongFieldUpdater atomicLongFieldUpdater = completedExpandBuffersAndPauseFlag$volatile$FU;
        if ((atomicLongFieldUpdater.addAndGet(bufferedChannel, 1L) & 4611686018427387904L) != 0) {
            while ((atomicLongFieldUpdater.get(bufferedChannel) & 4611686018427387904L) != 0) {
            }
        }
    }

    public static Object receive$suspendImpl(BufferedChannel bufferedChannel, SuspendLambda suspendLambda) {
        ChannelSegment channelSegment;
        Throwable th;
        ChannelSegment channelSegment2;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = receiveSegment$volatile$FU;
        atomicReferenceFieldUpdater.getClass();
        if (bufferedChannel == null) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$2();
            return null;
        }
        ChannelSegment channelSegment3 = (ChannelSegment) CancellableContinuationImplAtomicFieldUpdaterHelper.unsafe.getObjectVolatile(bufferedChannel, receiveSegment$volatile$FU$offset);
        while (!bufferedChannel.isClosedForReceive()) {
            AtomicLongFieldUpdater atomicLongFieldUpdater = receivers$volatile$FU;
            long andIncrement = atomicLongFieldUpdater.getAndIncrement(bufferedChannel);
            long j = BufferedChannelKt.SEGMENT_SIZE;
            long j2 = andIncrement / j;
            int i = (int) (andIncrement % j);
            if (channelSegment3.id != j2) {
                ChannelSegment findSegmentReceive = bufferedChannel.findSegmentReceive(j2, channelSegment3);
                if (findSegmentReceive == null) {
                    continue;
                } else {
                    channelSegment = findSegmentReceive;
                }
            } else {
                channelSegment = channelSegment3;
            }
            BufferedChannel bufferedChannel2 = bufferedChannel;
            Object updateCellReceive = bufferedChannel2.updateCellReceive(channelSegment, i, andIncrement, null);
            Joiner joiner = BufferedChannelKt.SUSPEND;
            if (updateCellReceive == joiner) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$2("unexpected");
                return null;
            }
            Joiner joiner2 = BufferedChannelKt.FAILED;
            if (updateCellReceive == joiner2) {
                if (andIncrement < bufferedChannel2.getSendersCounter$kotlinx_coroutines_core()) {
                    channelSegment.cleanPrev();
                }
                bufferedChannel = bufferedChannel2;
                channelSegment3 = channelSegment;
            } else {
                if (updateCellReceive != BufferedChannelKt.SUSPEND_NO_WAITER) {
                    channelSegment.cleanPrev();
                    return updateCellReceive;
                }
                CancellableContinuationImpl orCreateCancellableContinuation = JobKt.getOrCreateCancellableContinuation(UStringsKt.intercepted(suspendLambda));
                try {
                    Object updateCellReceive2 = bufferedChannel2.updateCellReceive(channelSegment, i, andIncrement, orCreateCancellableContinuation);
                    if (updateCellReceive2 == joiner) {
                        orCreateCancellableContinuation.invokeOnCancellation(channelSegment, i);
                    } else {
                        if (updateCellReceive2 == joiner2) {
                            if (andIncrement < bufferedChannel2.getSendersCounter$kotlinx_coroutines_core()) {
                                channelSegment.cleanPrev();
                            }
                            ChannelSegment channelSegment4 = (ChannelSegment) atomicReferenceFieldUpdater.get(bufferedChannel2);
                            while (true) {
                                if (bufferedChannel2.isClosedForReceive()) {
                                    orCreateCancellableContinuation.resumeWith(new Result.Failure(bufferedChannel2.getReceiveException()));
                                    break;
                                }
                                CancellableContinuationImpl cancellableContinuationImpl = orCreateCancellableContinuation;
                                try {
                                    long andIncrement2 = atomicLongFieldUpdater.getAndIncrement(bufferedChannel2);
                                    long j3 = BufferedChannelKt.SEGMENT_SIZE;
                                    long j4 = andIncrement2 / j3;
                                    int i2 = (int) (andIncrement2 % j3);
                                    if (channelSegment4.id != j4) {
                                        try {
                                            ChannelSegment findSegmentReceive2 = bufferedChannel2.findSegmentReceive(j4, channelSegment4);
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
                                    BufferedChannel bufferedChannel3 = bufferedChannel2;
                                    updateCellReceive2 = bufferedChannel3.updateCellReceive(channelSegment2, i2, andIncrement2, cancellableContinuationImpl);
                                    bufferedChannel2 = bufferedChannel3;
                                    ChannelSegment channelSegment5 = channelSegment2;
                                    orCreateCancellableContinuation = cancellableContinuationImpl;
                                    if (updateCellReceive2 == BufferedChannelKt.SUSPEND) {
                                        orCreateCancellableContinuation.invokeOnCancellation(channelSegment5, i2);
                                        break;
                                    }
                                    if (updateCellReceive2 == BufferedChannelKt.FAILED) {
                                        if (andIncrement2 < bufferedChannel2.getSendersCounter$kotlinx_coroutines_core()) {
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
        Throwable receiveException = bufferedChannel.getReceiveException();
        int i3 = StackTraceRecoveryKt.$r8$clinit;
        throw receiveException;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0022  */
    /* renamed from: receiveCatching-JP2dKIU$suspendImpl, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Object m687receiveCatchingJP2dKIU$suspendImpl(kotlinx.coroutines.channels.BufferedChannel r13, kotlin.coroutines.jvm.internal.ContinuationImpl r14) {
        /*
            Method dump skipped, instructions count: 214
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.BufferedChannel.m687receiveCatchingJP2dKIU$suspendImpl(kotlinx.coroutines.channels.BufferedChannel, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:73:0x0149  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x014c A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Object send$suspendImpl(kotlinx.coroutines.channels.BufferedChannel r23, java.lang.Object r24, kotlin.coroutines.Continuation r25) {
        /*
            Method dump skipped, instructions count: 356
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.BufferedChannel.send$suspendImpl(kotlinx.coroutines.channels.BufferedChannel, java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public static boolean tryResumeSender(Object obj) {
        if (obj instanceof CancellableContinuation) {
            return BufferedChannelKt.tryResume0((CancellableContinuation) obj, Unit.INSTANCE, null);
        }
        CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m$1(obj, "Unexpected waiter: ");
        return false;
    }

    public final boolean bufferOrRendezvousSend(long j) {
        return j < bufferEnd$volatile$FU.get(this) || j < receivers$volatile$FU.get(this) + ((long) this.capacity);
    }

    @Override // kotlinx.coroutines.channels.Channel
    public final void cancel(CancellationException cancellationException) {
        if (cancellationException == null) {
            cancellationException = new CancellationException("Channel was cancelled");
        }
        closeOrCancelImpl(cancellationException, true);
    }

    @Override // kotlinx.coroutines.channels.SendChannel
    public final boolean close(Throwable th) {
        return closeOrCancelImpl(th, false);
    }

    public final ChannelSegment closeLinkedList() {
        bufferEndSegment$volatile$FU.getClass();
        Unsafe unsafe = CancellableContinuationImplAtomicFieldUpdaterHelper.unsafe;
        Object objectVolatile = unsafe.getObjectVolatile(this, bufferEndSegment$volatile$FU$offset);
        sendSegment$volatile$FU.getClass();
        ChannelSegment channelSegment = (ChannelSegment) unsafe.getObjectVolatile(this, sendSegment$volatile$FU$offset);
        if (channelSegment.id > ((ChannelSegment) objectVolatile).id) {
            objectVolatile = channelSegment;
        }
        receiveSegment$volatile$FU.getClass();
        ChannelSegment channelSegment2 = (ChannelSegment) unsafe.getObjectVolatile(this, receiveSegment$volatile$FU$offset);
        if (channelSegment2.id > ((ChannelSegment) objectVolatile).id) {
            objectVolatile = channelSegment2;
        }
        ConcurrentLinkedListNode concurrentLinkedListNode = (ConcurrentLinkedListNode) objectVolatile;
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = ConcurrentLinkedListNode._next$volatile$FU;
            Object nextOrClosed = concurrentLinkedListNode.getNextOrClosed();
            if (nextOrClosed == InlineList.CLOSED) {
                break;
            }
            ConcurrentLinkedListNode concurrentLinkedListNode2 = (ConcurrentLinkedListNode) nextOrClosed;
            if (concurrentLinkedListNode2 != null) {
                concurrentLinkedListNode = concurrentLinkedListNode2;
            } else if (concurrentLinkedListNode.markAsClosed()) {
                break;
            }
        }
        return (ChannelSegment) concurrentLinkedListNode;
    }

    public final boolean closeOrCancelImpl(Throwable th, boolean z) {
        BufferedChannel bufferedChannel;
        boolean z2;
        long j;
        long j2;
        long j3;
        AtomicLongFieldUpdater atomicLongFieldUpdater = sendersAndCloseStatus$volatile$FU;
        if (z) {
            while (true) {
                long j4 = atomicLongFieldUpdater.get(this);
                if (((int) (j4 >> 60)) != 0) {
                    break;
                }
                ChannelSegment channelSegment = BufferedChannelKt.NULL_SEGMENT;
                bufferedChannel = this;
                if (atomicLongFieldUpdater.compareAndSet(bufferedChannel, j4, (j4 & 1152921504606846975L) + 1152921504606846976L)) {
                    break;
                }
                this = bufferedChannel;
            }
        }
        bufferedChannel = this;
        Joiner joiner = BufferedChannelKt.NO_CLOSE_CAUSE;
        while (true) {
            _closeCause$volatile$FU.getClass();
            BufferedChannel bufferedChannel2 = bufferedChannel;
            Unsafe unsafe = CancellableContinuationImplAtomicFieldUpdaterHelper.unsafe;
            long j5 = _closeCause$volatile$FU$offset;
            Throwable th2 = th;
            boolean compareAndSwapObject = unsafe.compareAndSwapObject(bufferedChannel2, j5, joiner, th2);
            bufferedChannel = bufferedChannel2;
            if (compareAndSwapObject) {
                z2 = true;
                break;
            }
            if (unsafe.getObjectVolatile(bufferedChannel, j5) != joiner) {
                z2 = false;
                break;
            }
            th = th2;
        }
        if (z) {
            do {
                j3 = atomicLongFieldUpdater.get(bufferedChannel);
            } while (!atomicLongFieldUpdater.compareAndSet(bufferedChannel, j3, 3458764513820540928L + (j3 & 1152921504606846975L)));
        } else {
            do {
                j = atomicLongFieldUpdater.get(bufferedChannel);
                int i = (int) (j >> 60);
                if (i == 0) {
                    j2 = (j & 1152921504606846975L) + 2305843009213693952L;
                } else {
                    if (i != 1) {
                        break;
                    }
                    j2 = (j & 1152921504606846975L) + 3458764513820540928L;
                }
            } while (!atomicLongFieldUpdater.compareAndSet(bufferedChannel, j, j2));
        }
        bufferedChannel.isClosedForSend();
        if (z2) {
            bufferedChannel.invokeCloseHandler();
        }
        return z2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x0046, code lost:
    
        r1 = (kotlinx.coroutines.channels.ChannelSegment) r1.getPrev();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final kotlinx.coroutines.channels.ChannelSegment completeClose(long r12) {
        /*
            Method dump skipped, instructions count: 217
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.BufferedChannel.completeClose(long):kotlinx.coroutines.channels.ChannelSegment");
    }

    public final void dropFirstElementUntilTheSpecifiedCellIsInTheBuffer(long j) {
        receiveSegment$volatile$FU.getClass();
        ChannelSegment channelSegment = (ChannelSegment) CancellableContinuationImplAtomicFieldUpdaterHelper.unsafe.getObjectVolatile(this, receiveSegment$volatile$FU$offset);
        while (true) {
            AtomicLongFieldUpdater atomicLongFieldUpdater = receivers$volatile$FU;
            long j2 = atomicLongFieldUpdater.get(this);
            if (j < Math.max(this.capacity + j2, bufferEnd$volatile$FU.get(this))) {
                return;
            }
            BufferedChannel bufferedChannel = this;
            if (atomicLongFieldUpdater.compareAndSet(bufferedChannel, j2, 1 + j2)) {
                long j3 = BufferedChannelKt.SEGMENT_SIZE;
                long j4 = j2 / j3;
                int i = (int) (j2 % j3);
                if (channelSegment.id != j4) {
                    ChannelSegment findSegmentReceive = bufferedChannel.findSegmentReceive(j4, channelSegment);
                    if (findSegmentReceive != null) {
                        channelSegment = findSegmentReceive;
                    }
                }
                ChannelSegment channelSegment2 = channelSegment;
                if (bufferedChannel.updateCellReceive(channelSegment2, i, j2, null) != BufferedChannelKt.FAILED) {
                    channelSegment2.cleanPrev();
                } else if (j2 < bufferedChannel.getSendersCounter$kotlinx_coroutines_core()) {
                    channelSegment2.cleanPrev();
                }
                this = bufferedChannel;
                channelSegment = channelSegment2;
            }
            this = bufferedChannel;
        }
    }

    public final void expandBuffer() {
        BufferedChannel bufferedChannel;
        if (isRendezvousOrUnlimited()) {
            return;
        }
        bufferEndSegment$volatile$FU.getClass();
        ChannelSegment channelSegment = (ChannelSegment) CancellableContinuationImplAtomicFieldUpdaterHelper.unsafe.getObjectVolatile(this, bufferEndSegment$volatile$FU$offset);
        loop0: while (true) {
            long andIncrement = bufferEnd$volatile$FU.getAndIncrement(this);
            long j = BufferedChannelKt.SEGMENT_SIZE;
            long j2 = andIncrement / j;
            if (this.getSendersCounter$kotlinx_coroutines_core() <= andIncrement) {
                if (channelSegment.id < j2 && channelSegment.getNext() != null) {
                    this.moveSegmentBufferEndToSpecifiedOrLast(j2, channelSegment);
                }
                incCompletedExpandBufferAttempts$default(this);
                return;
            }
            bufferedChannel = this;
            if (channelSegment.id != j2) {
                ChannelSegment findSegmentBufferEnd = bufferedChannel.findSegmentBufferEnd(j2, channelSegment, andIncrement);
                if (findSegmentBufferEnd == null) {
                    continue;
                    this = bufferedChannel;
                } else {
                    channelSegment = findSegmentBufferEnd;
                }
            }
            int i = (int) (andIncrement % j);
            Object state$kotlinx_coroutines_core = channelSegment.getState$kotlinx_coroutines_core(i);
            boolean z = state$kotlinx_coroutines_core instanceof Waiter;
            AtomicLongFieldUpdater atomicLongFieldUpdater = receivers$volatile$FU;
            if (!z || andIncrement < atomicLongFieldUpdater.get(bufferedChannel) || !channelSegment.casState$kotlinx_coroutines_core(state$kotlinx_coroutines_core, BufferedChannelKt.RESUMING_BY_EB, i)) {
                while (true) {
                    Object state$kotlinx_coroutines_core2 = channelSegment.getState$kotlinx_coroutines_core(i);
                    if (!(state$kotlinx_coroutines_core2 instanceof Waiter)) {
                        if (state$kotlinx_coroutines_core2 != BufferedChannelKt.INTERRUPTED_SEND) {
                            if (state$kotlinx_coroutines_core2 != null) {
                                if (state$kotlinx_coroutines_core2 == BufferedChannelKt.BUFFERED || state$kotlinx_coroutines_core2 == BufferedChannelKt.POISONED || state$kotlinx_coroutines_core2 == BufferedChannelKt.DONE_RCV || state$kotlinx_coroutines_core2 == BufferedChannelKt.INTERRUPTED_RCV || state$kotlinx_coroutines_core2 == BufferedChannelKt.CHANNEL_CLOSED) {
                                    break loop0;
                                } else if (state$kotlinx_coroutines_core2 != BufferedChannelKt.RESUMING_BY_RCV) {
                                    CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m$1(state$kotlinx_coroutines_core2, "Unexpected cell state: ");
                                    return;
                                }
                            } else if (channelSegment.casState$kotlinx_coroutines_core(state$kotlinx_coroutines_core2, BufferedChannelKt.IN_BUFFER, i)) {
                                break loop0;
                            }
                        } else {
                            break;
                        }
                    } else if (andIncrement < atomicLongFieldUpdater.get(bufferedChannel)) {
                        if (channelSegment.casState$kotlinx_coroutines_core(state$kotlinx_coroutines_core2, new WaiterEB((Waiter) state$kotlinx_coroutines_core2), i)) {
                            break loop0;
                        }
                    } else if (channelSegment.casState$kotlinx_coroutines_core(state$kotlinx_coroutines_core2, BufferedChannelKt.RESUMING_BY_EB, i)) {
                        if (tryResumeSender(state$kotlinx_coroutines_core2)) {
                            channelSegment.setState$kotlinx_coroutines_core(i, BufferedChannelKt.BUFFERED);
                            break;
                        } else {
                            channelSegment.setState$kotlinx_coroutines_core(i, BufferedChannelKt.INTERRUPTED_SEND);
                            channelSegment.onSlotCleaned();
                        }
                    }
                }
                incCompletedExpandBufferAttempts$default(bufferedChannel);
            } else if (tryResumeSender(state$kotlinx_coroutines_core)) {
                channelSegment.setState$kotlinx_coroutines_core(i, BufferedChannelKt.BUFFERED);
                break;
            } else {
                channelSegment.setState$kotlinx_coroutines_core(i, BufferedChannelKt.INTERRUPTED_SEND);
                channelSegment.onSlotCleaned();
                incCompletedExpandBufferAttempts$default(bufferedChannel);
            }
            this = bufferedChannel;
        }
        incCompletedExpandBufferAttempts$default(bufferedChannel);
    }

    public final ChannelSegment findSegmentBufferEnd(long j, ChannelSegment channelSegment, long j2) {
        Object findSegmentInternal;
        Unsafe unsafe;
        ChannelSegment channelSegment2 = BufferedChannelKt.NULL_SEGMENT;
        BufferedChannelKt$createSegmentFunction$1 bufferedChannelKt$createSegmentFunction$1 = BufferedChannelKt$createSegmentFunction$1.INSTANCE;
        loop0: while (true) {
            findSegmentInternal = InlineList.findSegmentInternal(channelSegment, j, bufferedChannelKt$createSegmentFunction$1);
            if (!InlineList.m695isClosedimpl(findSegmentInternal)) {
                Segment m694getSegmentimpl = InlineList.m694getSegmentimpl(findSegmentInternal);
                while (true) {
                    bufferEndSegment$volatile$FU.getClass();
                    Unsafe unsafe2 = CancellableContinuationImplAtomicFieldUpdaterHelper.unsafe;
                    long j3 = bufferEndSegment$volatile$FU$offset;
                    Segment segment = (Segment) unsafe2.getObjectVolatile(this, j3);
                    if (segment.id >= m694getSegmentimpl.id) {
                        break loop0;
                    }
                    if (!m694getSegmentimpl.tryIncPointers$kotlinx_coroutines_core()) {
                        break;
                    }
                    do {
                        unsafe = CancellableContinuationImplAtomicFieldUpdaterHelper.unsafe;
                        if (unsafe.compareAndSwapObject(this, bufferEndSegment$volatile$FU$offset, segment, m694getSegmentimpl)) {
                            if (segment.decPointers$kotlinx_coroutines_core()) {
                                segment.remove();
                            }
                        }
                    } while (unsafe.getObjectVolatile(this, j3) == segment);
                    if (m694getSegmentimpl.decPointers$kotlinx_coroutines_core()) {
                        m694getSegmentimpl.remove();
                    }
                }
            } else {
                break;
            }
        }
        if (InlineList.m695isClosedimpl(findSegmentInternal)) {
            isClosedForSend();
            moveSegmentBufferEndToSpecifiedOrLast(j, channelSegment);
            incCompletedExpandBufferAttempts$default(this);
            return null;
        }
        ChannelSegment channelSegment3 = (ChannelSegment) InlineList.m694getSegmentimpl(findSegmentInternal);
        long j4 = channelSegment3.id;
        if (j4 <= j) {
            return channelSegment3;
        }
        long j5 = j4 * BufferedChannelKt.SEGMENT_SIZE;
        if (!bufferEnd$volatile$FU.compareAndSet(this, j2 + 1, j5)) {
            incCompletedExpandBufferAttempts$default(this);
            return null;
        }
        AtomicLongFieldUpdater atomicLongFieldUpdater = completedExpandBuffersAndPauseFlag$volatile$FU;
        if ((atomicLongFieldUpdater.addAndGet(this, j5 - j2) & 4611686018427387904L) != 0) {
            while ((atomicLongFieldUpdater.get(this) & 4611686018427387904L) != 0) {
            }
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:49:0x00d0, code lost:
    
        if (r8.decPointers$kotlinx_coroutines_core() == false) goto L76;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00d2, code lost:
    
        r8.remove();
     */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00de  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0107 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final kotlinx.coroutines.channels.ChannelSegment findSegmentReceive(long r16, kotlinx.coroutines.channels.ChannelSegment r18) {
        /*
            Method dump skipped, instructions count: 264
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.BufferedChannel.findSegmentReceive(long, kotlinx.coroutines.channels.ChannelSegment):kotlinx.coroutines.channels.ChannelSegment");
    }

    public final ChannelSegment findSegmentSend(long j, ChannelSegment channelSegment) {
        Object findSegmentInternal;
        long j2;
        long j3;
        Unsafe unsafe;
        ChannelSegment channelSegment2 = BufferedChannelKt.NULL_SEGMENT;
        BufferedChannelKt$createSegmentFunction$1 bufferedChannelKt$createSegmentFunction$1 = BufferedChannelKt$createSegmentFunction$1.INSTANCE;
        loop0: while (true) {
            findSegmentInternal = InlineList.findSegmentInternal(channelSegment, j, bufferedChannelKt$createSegmentFunction$1);
            if (!InlineList.m695isClosedimpl(findSegmentInternal)) {
                Segment m694getSegmentimpl = InlineList.m694getSegmentimpl(findSegmentInternal);
                while (true) {
                    sendSegment$volatile$FU.getClass();
                    Unsafe unsafe2 = CancellableContinuationImplAtomicFieldUpdaterHelper.unsafe;
                    long j4 = sendSegment$volatile$FU$offset;
                    Segment segment = (Segment) unsafe2.getObjectVolatile(this, j4);
                    if (segment.id >= m694getSegmentimpl.id) {
                        break loop0;
                    }
                    if (!m694getSegmentimpl.tryIncPointers$kotlinx_coroutines_core()) {
                        break;
                    }
                    do {
                        unsafe = CancellableContinuationImplAtomicFieldUpdaterHelper.unsafe;
                        if (unsafe.compareAndSwapObject(this, sendSegment$volatile$FU$offset, segment, m694getSegmentimpl)) {
                            if (segment.decPointers$kotlinx_coroutines_core()) {
                                segment.remove();
                            }
                        }
                    } while (unsafe.getObjectVolatile(this, j4) == segment);
                    if (m694getSegmentimpl.decPointers$kotlinx_coroutines_core()) {
                        m694getSegmentimpl.remove();
                    }
                }
            } else {
                break;
            }
        }
        boolean m695isClosedimpl = InlineList.m695isClosedimpl(findSegmentInternal);
        AtomicLongFieldUpdater atomicLongFieldUpdater = receivers$volatile$FU;
        if (m695isClosedimpl) {
            isClosedForSend();
            if (channelSegment.id * BufferedChannelKt.SEGMENT_SIZE < atomicLongFieldUpdater.get(this)) {
                channelSegment.cleanPrev();
                return null;
            }
        } else {
            ChannelSegment channelSegment3 = (ChannelSegment) InlineList.m694getSegmentimpl(findSegmentInternal);
            long j5 = channelSegment3.id;
            if (j5 <= j) {
                return channelSegment3;
            }
            long j6 = j5 * BufferedChannelKt.SEGMENT_SIZE;
            do {
                j2 = sendersAndCloseStatus$volatile$FU.get(this);
                j3 = 1152921504606846975L & j2;
                if (j3 >= j6) {
                    break;
                }
            } while (!sendersAndCloseStatus$volatile$FU.compareAndSet(this, j2, j3 + (((int) (j2 >> 60)) << 60)));
            if (j5 * BufferedChannelKt.SEGMENT_SIZE < atomicLongFieldUpdater.get(this)) {
                channelSegment3.cleanPrev();
            }
        }
        return null;
    }

    public final Throwable getCloseCause() {
        _closeCause$volatile$FU.getClass();
        return (Throwable) CancellableContinuationImplAtomicFieldUpdaterHelper.unsafe.getObjectVolatile(this, _closeCause$volatile$FU$offset);
    }

    public final Throwable getReceiveException() {
        Throwable closeCause = getCloseCause();
        return closeCause == null ? new ClosedReceiveChannelException("Channel was closed") : closeCause;
    }

    public final Throwable getSendException() {
        Throwable closeCause = getCloseCause();
        return closeCause == null ? new Selector$SelectorParseException("Channel was closed") : closeCause;
    }

    public final long getSendersCounter$kotlinx_coroutines_core() {
        return sendersAndCloseStatus$volatile$FU.get(this) & 1152921504606846975L;
    }

    public final boolean hasElements$kotlinx_coroutines_core() {
        while (true) {
            receiveSegment$volatile$FU.getClass();
            Unsafe unsafe = CancellableContinuationImplAtomicFieldUpdaterHelper.unsafe;
            long j = receiveSegment$volatile$FU$offset;
            ChannelSegment channelSegment = (ChannelSegment) unsafe.getObjectVolatile(this, j);
            AtomicLongFieldUpdater atomicLongFieldUpdater = receivers$volatile$FU;
            long j2 = atomicLongFieldUpdater.get(this);
            if (getSendersCounter$kotlinx_coroutines_core() <= j2) {
                return false;
            }
            long j3 = BufferedChannelKt.SEGMENT_SIZE;
            long j4 = j2 / j3;
            if (channelSegment.id == j4 || (channelSegment = findSegmentReceive(j4, channelSegment)) != null) {
                channelSegment.cleanPrev();
                int i = (int) (j2 % j3);
                while (true) {
                    Object state$kotlinx_coroutines_core = channelSegment.getState$kotlinx_coroutines_core(i);
                    if (state$kotlinx_coroutines_core == null || state$kotlinx_coroutines_core == BufferedChannelKt.IN_BUFFER) {
                        if (channelSegment.casState$kotlinx_coroutines_core(state$kotlinx_coroutines_core, BufferedChannelKt.POISONED, i)) {
                            expandBuffer();
                            break;
                        }
                    } else {
                        if (state$kotlinx_coroutines_core == BufferedChannelKt.BUFFERED) {
                            return true;
                        }
                        if (state$kotlinx_coroutines_core != BufferedChannelKt.INTERRUPTED_SEND && state$kotlinx_coroutines_core != BufferedChannelKt.CHANNEL_CLOSED && state$kotlinx_coroutines_core != BufferedChannelKt.DONE_RCV && state$kotlinx_coroutines_core != BufferedChannelKt.POISONED) {
                            if (state$kotlinx_coroutines_core == BufferedChannelKt.RESUMING_BY_EB) {
                                return true;
                            }
                            if (state$kotlinx_coroutines_core != BufferedChannelKt.RESUMING_BY_RCV && j2 == atomicLongFieldUpdater.get(this)) {
                                return true;
                            }
                        }
                    }
                }
                receivers$volatile$FU.compareAndSet(this, j2, j2 + 1);
            } else if (((ChannelSegment) unsafe.getObjectVolatile(this, j)).id < j4) {
                return false;
            }
        }
    }

    public final void invokeCloseHandler() {
        Object objectVolatile;
        BufferedChannel bufferedChannel;
        loop0: while (true) {
            closeHandler$volatile$FU.getClass();
            Unsafe unsafe = CancellableContinuationImplAtomicFieldUpdaterHelper.unsafe;
            long j = closeHandler$volatile$FU$offset;
            objectVolatile = unsafe.getObjectVolatile(this, j);
            Joiner joiner = objectVolatile == null ? BufferedChannelKt.CLOSE_HANDLER_CLOSED : BufferedChannelKt.CLOSE_HANDLER_INVOKED;
            while (true) {
                Unsafe unsafe2 = CancellableContinuationImplAtomicFieldUpdaterHelper.unsafe;
                bufferedChannel = this;
                if (unsafe2.compareAndSwapObject(bufferedChannel, closeHandler$volatile$FU$offset, objectVolatile, joiner)) {
                    break loop0;
                } else if (unsafe2.getObjectVolatile(bufferedChannel, j) != objectVolatile) {
                    break;
                } else {
                    this = bufferedChannel;
                }
            }
            this = bufferedChannel;
        }
        if (objectVolatile == null) {
            return;
        }
        TypeIntrinsics.beforeCheckcastToFunctionOfArity(1, objectVolatile);
        ((Function1) objectVolatile).invoke(bufferedChannel.getCloseCause());
    }

    public final void invokeOnClose(CallsKt$await$2$1 callsKt$await$2$1) {
        Unsafe unsafe;
        while (true) {
            closeHandler$volatile$FU.getClass();
            Unsafe unsafe2 = CancellableContinuationImplAtomicFieldUpdaterHelper.unsafe;
            BufferedChannel bufferedChannel = this;
            if (unsafe2.compareAndSwapObject(bufferedChannel, closeHandler$volatile$FU$offset, (Object) null, callsKt$await$2$1)) {
                return;
            }
            long j = closeHandler$volatile$FU$offset;
            if (unsafe2.getObjectVolatile(bufferedChannel, j) != null) {
                while (true) {
                    Object objectVolatile = CancellableContinuationImplAtomicFieldUpdaterHelper.unsafe.getObjectVolatile(bufferedChannel, j);
                    Joiner joiner = BufferedChannelKt.CLOSE_HANDLER_CLOSED;
                    if (objectVolatile != joiner) {
                        if (objectVolatile == BufferedChannelKt.CLOSE_HANDLER_INVOKED) {
                            _UtilJvmKt$$ExternalSyntheticLambda1.m$2("Another handler was already registered and successfully invoked");
                            return;
                        } else {
                            CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m$1(objectVolatile, "Another handler is already registered: ");
                            return;
                        }
                    }
                    Joiner joiner2 = BufferedChannelKt.CLOSE_HANDLER_INVOKED;
                    do {
                        BufferedChannel bufferedChannel2 = bufferedChannel;
                        unsafe = CancellableContinuationImplAtomicFieldUpdaterHelper.unsafe;
                        boolean compareAndSwapObject = unsafe.compareAndSwapObject(bufferedChannel2, closeHandler$volatile$FU$offset, joiner, joiner2);
                        bufferedChannel = bufferedChannel2;
                        if (compareAndSwapObject) {
                            callsKt$await$2$1.invoke(bufferedChannel.getCloseCause());
                            return;
                        }
                    } while (unsafe.getObjectVolatile(bufferedChannel, j) == joiner);
                }
            } else {
                this = bufferedChannel;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:84:0x00a3, code lost:
    
        r10 = (kotlinx.coroutines.channels.ChannelSegment) r10.getPrev();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean isClosed(long r10, boolean r12) {
        /*
            Method dump skipped, instructions count: 229
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.BufferedChannel.isClosed(long, boolean):boolean");
    }

    public final boolean isClosedForReceive() {
        return isClosed(sendersAndCloseStatus$volatile$FU.get(this), true);
    }

    public final boolean isClosedForSend() {
        return isClosed(sendersAndCloseStatus$volatile$FU.get(this), false);
    }

    public boolean isConflatedDropOldest() {
        return false;
    }

    public final boolean isRendezvousOrUnlimited() {
        long j = bufferEnd$volatile$FU.get(this);
        return j == 0 || j == Long.MAX_VALUE;
    }

    @Override // kotlinx.coroutines.channels.Channel
    public final BufferedChannelIterator iterator() {
        return new BufferedChannelIterator();
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0063, code lost:
    
        if (r5.decPointers$kotlinx_coroutines_core() == false) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0065, code lost:
    
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
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r7 = kotlinx.coroutines.channels.BufferedChannel.bufferEndSegment$volatile$FU
            r7.getClass()
            sun.misc.Unsafe r7 = kotlinx.coroutines.CancellableContinuationImplAtomicFieldUpdaterHelper.unsafe
            long r8 = kotlinx.coroutines.channels.BufferedChannel.bufferEndSegment$volatile$FU$offset
            java.lang.Object r7 = r7.getObjectVolatile(r6, r8)
            r4 = r7
            kotlinx.coroutines.internal.Segment r4 = (kotlinx.coroutines.internal.Segment) r4
            long r0 = r4.id
            long r2 = r5.id
            int r7 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r7 < 0) goto L3c
            goto L58
        L3c:
            boolean r7 = r5.tryIncPointers$kotlinx_coroutines_core()
            if (r7 != 0) goto L44
            r9 = r5
            goto L11
        L44:
            sun.misc.Unsafe r0 = kotlinx.coroutines.CancellableContinuationImplAtomicFieldUpdaterHelper.unsafe
            long r2 = kotlinx.coroutines.channels.BufferedChannel.bufferEndSegment$volatile$FU$offset
            r1 = r6
            boolean r6 = r0.compareAndSwapObject(r1, r2, r4, r5)
            if (r6 == 0) goto L59
            boolean r6 = r4.decPointers$kotlinx_coroutines_core()
            if (r6 == 0) goto L58
            r4.remove()
        L58:
            return
        L59:
            java.lang.Object r6 = r0.getObjectVolatile(r1, r8)
            if (r6 == r4) goto L6a
            boolean r6 = r5.decPointers$kotlinx_coroutines_core()
            if (r6 == 0) goto L68
            r5.remove()
        L68:
            r6 = r1
            goto L23
        L6a:
            r6 = r1
            goto L44
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.BufferedChannel.moveSegmentBufferEndToSpecifiedOrLast(long, kotlinx.coroutines.channels.ChannelSegment):void");
    }

    public final Object onClosedSend(Object obj, Continuation continuation) {
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(1, UStringsKt.intercepted(continuation));
        cancellableContinuationImpl.initCancellability();
        cancellableContinuationImpl.resumeWith(new Result.Failure(getSendException()));
        Object result = cancellableContinuationImpl.getResult();
        return result == CoroutineSingletons.COROUTINE_SUSPENDED ? result : Unit.INSTANCE;
    }

    @Override // kotlinx.coroutines.channels.Channel
    public final Object receive(SuspendLambda suspendLambda) {
        return receive$suspendImpl(this, suspendLambda);
    }

    @Override // kotlinx.coroutines.channels.Channel
    /* renamed from: receiveCatching-JP2dKIU, reason: not valid java name */
    public final Object mo688receiveCatchingJP2dKIU(CombineKt$combineInternal$2 combineKt$combineInternal$2) {
        return m687receiveCatchingJP2dKIU$suspendImpl(this, combineKt$combineInternal$2);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0020  */
    /* renamed from: receiveCatchingOnNoWaiterSuspend-GKJJFZk, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m689receiveCatchingOnNoWaiterSuspendGKJJFZk(kotlinx.coroutines.channels.ChannelSegment r10, int r11, long r12, kotlin.coroutines.jvm.internal.ContinuationImpl r14) {
        /*
            Method dump skipped, instructions count: 255
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.BufferedChannel.m689receiveCatchingOnNoWaiterSuspendGKJJFZk(kotlinx.coroutines.channels.ChannelSegment, int, long, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
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
            CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m$1(waiter, "Unexpected waiter: ");
            return;
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

    @Override // kotlinx.coroutines.channels.SendChannel
    public Object send(Object obj, Continuation continuation) {
        return send$suspendImpl(this, obj, continuation);
    }

    /* JADX WARN: Code restructure failed: missing block: B:98:0x01b2, code lost:
    
        r15 = r8;
        r16 = null;
        r3 = (kotlinx.coroutines.channels.ChannelSegment) r3.getNext();
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x01bc, code lost:
    
        if (r3 != null) goto L88;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String toString() {
        /*
            Method dump skipped, instructions count: 501
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.BufferedChannel.toString():java.lang.String");
    }

    @Override // kotlinx.coroutines.channels.Channel
    /* renamed from: tryReceive-PtdJZtk, reason: not valid java name */
    public final Object mo690tryReceivePtdJZtk() {
        ChannelSegment channelSegment;
        AtomicLongFieldUpdater atomicLongFieldUpdater = receivers$volatile$FU;
        long j = atomicLongFieldUpdater.get(this);
        long j2 = sendersAndCloseStatus$volatile$FU.get(this);
        if (isClosed(j2, true)) {
            return new ChannelResult.Closed(getCloseCause());
        }
        long j3 = j2 & 1152921504606846975L;
        ChannelResult.Failed failed = ChannelResult.failed;
        if (j >= j3) {
            return failed;
        }
        Object obj = BufferedChannelKt.INTERRUPTED_RCV;
        receiveSegment$volatile$FU.getClass();
        ChannelSegment channelSegment2 = (ChannelSegment) CancellableContinuationImplAtomicFieldUpdaterHelper.unsafe.getObjectVolatile(this, receiveSegment$volatile$FU$offset);
        while (!this.isClosedForReceive()) {
            long andIncrement = atomicLongFieldUpdater.getAndIncrement(this);
            long j4 = BufferedChannelKt.SEGMENT_SIZE;
            long j5 = andIncrement / j4;
            int i = (int) (andIncrement % j4);
            if (channelSegment2.id != j5) {
                ChannelSegment findSegmentReceive = this.findSegmentReceive(j5, channelSegment2);
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
                _UtilJvmKt$$ExternalSyntheticLambda1.m$2("unexpected");
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
        if (obj instanceof ReceiveCatching) {
            return BufferedChannelKt.tryResume0(((ReceiveCatching) obj).cont, new ChannelResult(obj2), null);
        }
        if (!(obj instanceof BufferedChannelIterator)) {
            if (obj instanceof CancellableContinuation) {
                return BufferedChannelKt.tryResume0((CancellableContinuation) obj, obj2, null);
            }
            CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m$1(obj, "Unexpected receiver type: ");
            return false;
        }
        BufferedChannelIterator bufferedChannelIterator = (BufferedChannelIterator) obj;
        CancellableContinuationImpl cancellableContinuationImpl = bufferedChannelIterator.continuation;
        cancellableContinuationImpl.getClass();
        bufferedChannelIterator.continuation = null;
        bufferedChannelIterator.receiveResult = obj2;
        Boolean bool = Boolean.TRUE;
        BufferedChannel.this.getClass();
        return BufferedChannelKt.tryResume0(cancellableContinuationImpl, bool, null);
    }

    @Override // kotlinx.coroutines.channels.SendChannel
    /* renamed from: trySend-JP2dKIU, reason: not valid java name */
    public Object mo691trySendJP2dKIU(Object obj) {
        AtomicLongFieldUpdater atomicLongFieldUpdater = sendersAndCloseStatus$volatile$FU;
        boolean z = false;
        long j = 1152921504606846975L;
        boolean z2 = isClosed(atomicLongFieldUpdater.get(this), false) ? false : !bufferOrRendezvousSend(r1 & 1152921504606846975L);
        ChannelResult.Failed failed = ChannelResult.failed;
        if (z2) {
            return failed;
        }
        EmojiProcessor$EmojiProcessCallback emojiProcessor$EmojiProcessCallback = BufferedChannelKt.INTERRUPTED_SEND;
        sendSegment$volatile$FU.getClass();
        ChannelSegment channelSegment = (ChannelSegment) CancellableContinuationImplAtomicFieldUpdaterHelper.unsafe.getObjectVolatile(this, sendSegment$volatile$FU$offset);
        while (true) {
            long andIncrement = atomicLongFieldUpdater.getAndIncrement(this);
            long j2 = andIncrement & j;
            boolean isClosed = isClosed(andIncrement, z);
            int i = BufferedChannelKt.SEGMENT_SIZE;
            long j3 = i;
            long j4 = j2 / j3;
            int i2 = (int) (j2 % j3);
            if (channelSegment.id != j4) {
                ChannelSegment findSegmentSend = findSegmentSend(j4, channelSegment);
                if (findSegmentSend != null) {
                    channelSegment = findSegmentSend;
                } else {
                    if (isClosed) {
                        return new ChannelResult.Closed(getSendException());
                    }
                    z = false;
                    j = 1152921504606846975L;
                }
            }
            int access$updateCellSend = access$updateCellSend(this, channelSegment, i2, obj, j2, emojiProcessor$EmojiProcessCallback, isClosed);
            Unit unit = Unit.INSTANCE;
            if (access$updateCellSend == 0) {
                channelSegment.cleanPrev();
                return unit;
            }
            if (access$updateCellSend == 1) {
                return unit;
            }
            if (access$updateCellSend == 2) {
                if (isClosed) {
                    channelSegment.onSlotCleaned();
                    return new ChannelResult.Closed(getSendException());
                }
                Waiter waiter = emojiProcessor$EmojiProcessCallback instanceof Waiter ? (Waiter) emojiProcessor$EmojiProcessCallback : null;
                if (waiter != null) {
                    waiter.invokeOnCancellation(channelSegment, i2 + i);
                }
                channelSegment.onSlotCleaned();
                return failed;
            }
            if (access$updateCellSend == 3) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$2("unexpected");
                return null;
            }
            if (access$updateCellSend == 4) {
                if (j2 < receivers$volatile$FU.get(this)) {
                    channelSegment.cleanPrev();
                }
                return new ChannelResult.Closed(getSendException());
            }
            if (access$updateCellSend == 5) {
                channelSegment.cleanPrev();
            }
            z = false;
            j = 1152921504606846975L;
        }
    }

    public final Object updateCellReceive(ChannelSegment channelSegment, int i, long j, Object obj) {
        Object state$kotlinx_coroutines_core = channelSegment.getState$kotlinx_coroutines_core(i);
        AtomicReferenceArray atomicReferenceArray = channelSegment.data;
        AtomicLongFieldUpdater atomicLongFieldUpdater = sendersAndCloseStatus$volatile$FU;
        if (state$kotlinx_coroutines_core == null) {
            if (j >= (atomicLongFieldUpdater.get(this) & 1152921504606846975L)) {
                if (obj == null) {
                    return BufferedChannelKt.SUSPEND_NO_WAITER;
                }
                if (channelSegment.casState$kotlinx_coroutines_core(state$kotlinx_coroutines_core, obj, i)) {
                    expandBuffer();
                    return BufferedChannelKt.SUSPEND;
                }
            }
        } else if (state$kotlinx_coroutines_core == BufferedChannelKt.BUFFERED && channelSegment.casState$kotlinx_coroutines_core(state$kotlinx_coroutines_core, BufferedChannelKt.DONE_RCV, i)) {
            expandBuffer();
            Object obj2 = atomicReferenceArray.get(i * 2);
            channelSegment.setElementLazy(i, null);
            return obj2;
        }
        while (true) {
            Object state$kotlinx_coroutines_core2 = channelSegment.getState$kotlinx_coroutines_core(i);
            if (state$kotlinx_coroutines_core2 == null || state$kotlinx_coroutines_core2 == BufferedChannelKt.IN_BUFFER) {
                if (j < (atomicLongFieldUpdater.get(this) & 1152921504606846975L)) {
                    if (channelSegment.casState$kotlinx_coroutines_core(state$kotlinx_coroutines_core2, BufferedChannelKt.POISONED, i)) {
                        expandBuffer();
                        return BufferedChannelKt.FAILED;
                    }
                } else {
                    if (obj == null) {
                        return BufferedChannelKt.SUSPEND_NO_WAITER;
                    }
                    if (channelSegment.casState$kotlinx_coroutines_core(state$kotlinx_coroutines_core2, obj, i)) {
                        expandBuffer();
                        return BufferedChannelKt.SUSPEND;
                    }
                }
            } else if (state$kotlinx_coroutines_core2 != BufferedChannelKt.BUFFERED) {
                Joiner joiner = BufferedChannelKt.INTERRUPTED_SEND;
                if (state$kotlinx_coroutines_core2 == joiner) {
                    return BufferedChannelKt.FAILED;
                }
                if (state$kotlinx_coroutines_core2 == BufferedChannelKt.POISONED) {
                    return BufferedChannelKt.FAILED;
                }
                if (state$kotlinx_coroutines_core2 == BufferedChannelKt.CHANNEL_CLOSED) {
                    expandBuffer();
                    return BufferedChannelKt.FAILED;
                }
                if (state$kotlinx_coroutines_core2 != BufferedChannelKt.RESUMING_BY_EB && channelSegment.casState$kotlinx_coroutines_core(state$kotlinx_coroutines_core2, BufferedChannelKt.RESUMING_BY_RCV, i)) {
                    boolean z = state$kotlinx_coroutines_core2 instanceof WaiterEB;
                    if (z) {
                        state$kotlinx_coroutines_core2 = ((WaiterEB) state$kotlinx_coroutines_core2).waiter;
                    }
                    if (tryResumeSender(state$kotlinx_coroutines_core2)) {
                        channelSegment.setState$kotlinx_coroutines_core(i, BufferedChannelKt.DONE_RCV);
                        expandBuffer();
                        Object obj3 = atomicReferenceArray.get(i * 2);
                        channelSegment.setElementLazy(i, null);
                        return obj3;
                    }
                    channelSegment.setState$kotlinx_coroutines_core(i, joiner);
                    channelSegment.onSlotCleaned();
                    if (z) {
                        expandBuffer();
                    }
                    return BufferedChannelKt.FAILED;
                }
            } else if (channelSegment.casState$kotlinx_coroutines_core(state$kotlinx_coroutines_core2, BufferedChannelKt.DONE_RCV, i)) {
                expandBuffer();
                Object obj4 = atomicReferenceArray.get(i * 2);
                channelSegment.setElementLazy(i, null);
                return obj4;
            }
        }
    }

    public final int updateCellSendSlow(ChannelSegment channelSegment, int i, Object obj, long j, Object obj2, boolean z) {
        while (true) {
            Object state$kotlinx_coroutines_core = channelSegment.getState$kotlinx_coroutines_core(i);
            if (state$kotlinx_coroutines_core == null) {
                if (!bufferOrRendezvousSend(j) || z) {
                    if (z) {
                        if (channelSegment.casState$kotlinx_coroutines_core(null, BufferedChannelKt.INTERRUPTED_SEND, i)) {
                            channelSegment.onSlotCleaned();
                            return 4;
                        }
                    } else {
                        if (obj2 == null) {
                            return 3;
                        }
                        if (channelSegment.casState$kotlinx_coroutines_core(null, obj2, i)) {
                            return 2;
                        }
                    }
                } else if (channelSegment.casState$kotlinx_coroutines_core(null, BufferedChannelKt.BUFFERED, i)) {
                    break;
                }
            } else {
                if (state$kotlinx_coroutines_core != BufferedChannelKt.IN_BUFFER) {
                    Joiner joiner = BufferedChannelKt.INTERRUPTED_RCV;
                    if (state$kotlinx_coroutines_core == joiner) {
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
                    if (channelSegment.data.getAndSet((i * 2) + 1, joiner) != joiner) {
                        channelSegment.onCancelledRequest(i, true);
                    }
                    return 5;
                }
                if (channelSegment.casState$kotlinx_coroutines_core(state$kotlinx_coroutines_core, BufferedChannelKt.BUFFERED, i)) {
                    break;
                }
            }
        }
        return 1;
    }

    public final void waitExpandBufferCompletion$kotlinx_coroutines_core(long j) {
        AtomicLongFieldUpdater atomicLongFieldUpdater;
        BufferedChannel bufferedChannel = this;
        if (bufferedChannel.isRendezvousOrUnlimited()) {
            return;
        }
        while (true) {
            atomicLongFieldUpdater = bufferEnd$volatile$FU;
            if (atomicLongFieldUpdater.get(bufferedChannel) > j) {
                break;
            } else {
                bufferedChannel = this;
            }
        }
        int i = BufferedChannelKt.EXPAND_BUFFER_COMPLETION_WAIT_ITERATIONS;
        int i2 = 0;
        while (true) {
            AtomicLongFieldUpdater atomicLongFieldUpdater2 = completedExpandBuffersAndPauseFlag$volatile$FU;
            if (i2 < i) {
                long j2 = atomicLongFieldUpdater.get(bufferedChannel);
                if (j2 == (4611686018427387903L & atomicLongFieldUpdater2.get(bufferedChannel)) && j2 == atomicLongFieldUpdater.get(bufferedChannel)) {
                    return;
                } else {
                    i2++;
                }
            } else {
                while (true) {
                    long j3 = atomicLongFieldUpdater2.get(bufferedChannel);
                    if (atomicLongFieldUpdater2.compareAndSet(bufferedChannel, j3, (j3 & 4611686018427387903L) + 4611686018427387904L)) {
                        break;
                    } else {
                        bufferedChannel = this;
                    }
                }
                while (true) {
                    long j4 = atomicLongFieldUpdater.get(bufferedChannel);
                    long j5 = atomicLongFieldUpdater2.get(bufferedChannel);
                    long j6 = j5 & 4611686018427387903L;
                    boolean z = (j5 & 4611686018427387904L) != 0;
                    if (j4 == j6 && j4 == atomicLongFieldUpdater.get(bufferedChannel)) {
                        break;
                    }
                    if (z) {
                        bufferedChannel = this;
                    } else {
                        bufferedChannel = this;
                        atomicLongFieldUpdater2.compareAndSet(bufferedChannel, j5, 4611686018427387904L + j6);
                    }
                }
                while (true) {
                    long j7 = atomicLongFieldUpdater2.get(bufferedChannel);
                    if (atomicLongFieldUpdater2.compareAndSet(bufferedChannel, j7, j7 & 4611686018427387903L)) {
                        return;
                    } else {
                        bufferedChannel = this;
                    }
                }
            }
        }
    }
}
