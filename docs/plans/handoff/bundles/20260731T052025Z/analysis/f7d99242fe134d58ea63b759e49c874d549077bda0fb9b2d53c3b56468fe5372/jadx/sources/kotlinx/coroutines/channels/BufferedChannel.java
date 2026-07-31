package kotlinx.coroutines.channels;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.compose.runtime.MovableContentKt$$ExternalSyntheticLambda0;
import com.fsck.k9.mailstore.LocalStore;
import com.fsck.k9.mailstore.LockableDatabase;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.coroutines.AwaitAll$AwaitAllNodeAtomicFieldUpdaterHelper;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.Waiter;
import kotlinx.coroutines.channels.ChannelResult;
import kotlinx.coroutines.internal.ConcurrentLinkedListNode;
import kotlinx.coroutines.internal.InlineList;
import kotlinx.coroutines.internal.Segment;
import kotlinx.coroutines.internal.StackTraceRecoveryKt;
import kotlinx.coroutines.selects.SelectImplementation;
import kotlinx.coroutines.selects.TrySelectDetailedResult;
import okhttp3.Dispatcher;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.jsoup.SerializationException;
import sun.misc.Unsafe;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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
    public final Function1 onUndeliveredElement;
    public final MovableContentKt$$ExternalSyntheticLambda0 onUndeliveredElementReceiveCancellationConstructor;
    private volatile /* synthetic */ Object receiveSegment$volatile;
    private volatile /* synthetic */ long receivers$volatile;
    private volatile /* synthetic */ Object sendSegment$volatile;
    private volatile /* synthetic */ long sendersAndCloseStatus$volatile;
    public static final /* synthetic */ AtomicLongFieldUpdater sendersAndCloseStatus$volatile$FU = AtomicLongFieldUpdater.newUpdater(BufferedChannel.class, "sendersAndCloseStatus$volatile");
    public static final /* synthetic */ AtomicLongFieldUpdater receivers$volatile$FU = AtomicLongFieldUpdater.newUpdater(BufferedChannel.class, "receivers$volatile");
    public static final /* synthetic */ AtomicLongFieldUpdater bufferEnd$volatile$FU = AtomicLongFieldUpdater.newUpdater(BufferedChannel.class, "bufferEnd$volatile");
    public static final /* synthetic */ AtomicLongFieldUpdater completedExpandBuffersAndPauseFlag$volatile$FU = AtomicLongFieldUpdater.newUpdater(BufferedChannel.class, "completedExpandBuffersAndPauseFlag$volatile");
    public static final /* synthetic */ AtomicReferenceFieldUpdater sendSegment$volatile$FU = AtomicReferenceFieldUpdater.newUpdater(BufferedChannel.class, Object.class, "sendSegment$volatile");

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class BufferedChannelIterator implements Waiter {
        public CancellableContinuationImpl continuation;
        public Object receiveResult = BufferedChannelKt.NO_RECEIVE_RESULT;

        public BufferedChannelIterator() {
        }

        public final Object hasNext(ContinuationImpl continuationImpl) {
            ChannelSegment channelSegment;
            Boolean bool;
            Object obj = this.receiveResult;
            boolean z = true;
            if (obj == BufferedChannelKt.NO_RECEIVE_RESULT || obj == BufferedChannelKt.CHANNEL_CLOSED) {
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = BufferedChannel.receiveSegment$volatile$FU;
                BufferedChannel bufferedChannel = BufferedChannel.this;
                ChannelSegment channelSegment2 = (ChannelSegment) atomicReferenceFieldUpdater.get(bufferedChannel);
                while (true) {
                    int i = 0;
                    if (bufferedChannel.isClosedForReceive()) {
                        this.receiveResult = BufferedChannelKt.CHANNEL_CLOSED;
                        Throwable closeCause = bufferedChannel.getCloseCause();
                        if (closeCause != null) {
                            int i2 = StackTraceRecoveryKt.$r8$clinit;
                            throw closeCause;
                        }
                        z = false;
                    } else {
                        long andIncrement = BufferedChannel.receivers$volatile$FU.getAndIncrement(bufferedChannel);
                        long j = BufferedChannelKt.SEGMENT_SIZE;
                        long j2 = andIncrement / j;
                        int i3 = (int) (andIncrement % j);
                        if (channelSegment2.id != j2) {
                            channelSegment = bufferedChannel.findSegmentReceive(j2, channelSegment2);
                            if (channelSegment == null) {
                                continue;
                            }
                        } else {
                            channelSegment = channelSegment2;
                        }
                        Object updateCellReceive = bufferedChannel.updateCellReceive(channelSegment, i3, andIncrement, null);
                        LocalStore.AnonymousClass8 anonymousClass8 = BufferedChannelKt.SUSPEND;
                        BufferedChannel$$ExternalSyntheticLambda1 bufferedChannel$$ExternalSyntheticLambda1 = null;
                        if (updateCellReceive == anonymousClass8) {
                            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("unreachable");
                            return null;
                        }
                        LocalStore.AnonymousClass8 anonymousClass82 = BufferedChannelKt.FAILED;
                        if (updateCellReceive == anonymousClass82) {
                            if (andIncrement < bufferedChannel.getSendersCounter$kotlinx_coroutines_core()) {
                                channelSegment.cleanPrev();
                            }
                            channelSegment2 = channelSegment;
                        } else {
                            if (updateCellReceive == BufferedChannelKt.SUSPEND_NO_WAITER) {
                                BufferedChannel bufferedChannel2 = BufferedChannel.this;
                                CancellableContinuationImpl orCreateCancellableContinuation = JobKt.getOrCreateCancellableContinuation(AtomicFU.intercepted(continuationImpl));
                                try {
                                    this.continuation = orCreateCancellableContinuation;
                                    Object updateCellReceive2 = bufferedChannel2.updateCellReceive(channelSegment, i3, andIncrement, this);
                                    Function1 function1 = bufferedChannel2.onUndeliveredElement;
                                    if (updateCellReceive2 == anonymousClass8) {
                                        invokeOnCancellation(channelSegment, i3);
                                    } else {
                                        if (updateCellReceive2 == anonymousClass82) {
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
                                                    int i4 = (int) (andIncrement2 % j3);
                                                    if (channelSegment3.id != j4) {
                                                        ChannelSegment findSegmentReceive = bufferedChannel2.findSegmentReceive(j4, channelSegment3);
                                                        if (findSegmentReceive != null) {
                                                            channelSegment3 = findSegmentReceive;
                                                        }
                                                    }
                                                    Object updateCellReceive3 = bufferedChannel2.updateCellReceive(channelSegment3, i4, andIncrement2, this);
                                                    if (updateCellReceive3 == BufferedChannelKt.SUSPEND) {
                                                        invokeOnCancellation(channelSegment3, i4);
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
                                                        bool = Boolean.TRUE;
                                                        if (function1 != null) {
                                                            bufferedChannel$$ExternalSyntheticLambda1 = new BufferedChannel$$ExternalSyntheticLambda1(i, function1, updateCellReceive3);
                                                        }
                                                    }
                                                }
                                            }
                                        } else {
                                            channelSegment.cleanPrev();
                                            this.receiveResult = updateCellReceive2;
                                            this.continuation = null;
                                            bool = Boolean.TRUE;
                                            if (function1 != null) {
                                                bufferedChannel$$ExternalSyntheticLambda1 = new BufferedChannel$$ExternalSyntheticLambda1(i, function1, updateCellReceive2);
                                            }
                                        }
                                        orCreateCancellableContinuation.resume(bool, bufferedChannel$$ExternalSyntheticLambda1);
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
            LocalStore.AnonymousClass8 anonymousClass8 = BufferedChannelKt.NO_RECEIVE_RESULT;
            if (obj == anonymousClass8) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("`hasNext()` has not been invoked");
                return null;
            }
            this.receiveResult = anonymousClass8;
            if (obj != BufferedChannelKt.CHANNEL_CLOSED) {
                return obj;
            }
            Throwable receiveException = BufferedChannel.this.getReceiveException();
            int i = StackTraceRecoveryKt.$r8$clinit;
            throw receiveException;
        }
    }

    static {
        Unsafe unsafe = AwaitAll$AwaitAllNodeAtomicFieldUpdaterHelper.unsafe;
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

    public BufferedChannel(int i, Function1 function1) {
        this.capacity = i;
        this.onUndeliveredElement = function1;
        if (i < 0) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2((Object) CameraDevices$CC.m(i, "Invalid channel capacity: ", ", should be >=0"));
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
        this.onUndeliveredElementReceiveCancellationConstructor = function1 != null ? new MovableContentKt$$ExternalSyntheticLambda0(7, this) : null;
        this._closeCause$volatile = BufferedChannelKt.NO_CLOSE_CAUSE;
    }

    public static final void access$onClosedSendOnNoWaiterSuspend(BufferedChannel bufferedChannel, Object obj, CancellableContinuationImpl cancellableContinuationImpl) {
        Function1 function1 = bufferedChannel.onUndeliveredElement;
        if (function1 != null) {
            InlineList.callUndeliveredElement(function1, obj, cancellableContinuationImpl.context);
        }
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
            if (bufferedChannel.tryResumeReceiver(state$kotlinx_coroutines_core, obj)) {
                channelSegment.setState$kotlinx_coroutines_core(i, BufferedChannelKt.DONE_RCV);
                return 0;
            }
            LocalStore.AnonymousClass8 anonymousClass8 = BufferedChannelKt.INTERRUPTED_RCV;
            if (channelSegment.data.getAndSet((i * 2) + 1, anonymousClass8) == anonymousClass8) {
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

    /* JADX WARN: Code restructure failed: missing block: B:72:0x00fb, code lost:
    
        r1 = r4.bindCancellationFun();
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x00f9, code lost:
    
        if (r13 != null) goto L74;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Object receive$suspendImpl(kotlinx.coroutines.channels.BufferedChannel r13, kotlin.coroutines.Continuation r14) {
        /*
            Method dump skipped, instructions count: 285
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.BufferedChannel.receive$suspendImpl(kotlinx.coroutines.channels.BufferedChannel, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0022  */
    /* renamed from: receiveCatching-JP2dKIU$suspendImpl, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Object m1012receiveCatchingJP2dKIU$suspendImpl(kotlinx.coroutines.channels.BufferedChannel r13, kotlin.coroutines.jvm.internal.ContinuationImpl r14) {
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
            int r0 = r6.label
            r1 = 0
            r2 = 1
            if (r0 == 0) goto L32
            if (r0 != r2) goto L2c
            kotlin.ResultKt.throwOnFailure(r14)
            kotlinx.coroutines.channels.ChannelResult r14 = (kotlinx.coroutines.channels.ChannelResult) r14
            java.lang.Object r13 = r14.holder
            return r13
        L2c:
            java.lang.String r13 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r13)
            return r1
        L32:
            kotlin.ResultKt.throwOnFailure(r14)
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r14 = kotlinx.coroutines.channels.BufferedChannel.receiveSegment$volatile$FU
            r14.getClass()
            sun.misc.Unsafe r14 = kotlinx.coroutines.AwaitAll$AwaitAllNodeAtomicFieldUpdaterHelper.unsafe
            long r3 = kotlinx.coroutines.channels.BufferedChannel.receiveSegment$volatile$FU$offset
            java.lang.Object r14 = r14.getObjectVolatile(r13, r3)
            kotlinx.coroutines.channels.ChannelSegment r14 = (kotlinx.coroutines.channels.ChannelSegment) r14
        L44:
            boolean r0 = r13.isClosedForReceive()
            if (r0 == 0) goto L54
            java.lang.Throwable r13 = r13.getCloseCause()
            kotlinx.coroutines.channels.ChannelResult$Closed r14 = new kotlinx.coroutines.channels.ChannelResult$Closed
            r14.<init>(r13)
            return r14
        L54:
            java.util.concurrent.atomic.AtomicLongFieldUpdater r0 = kotlinx.coroutines.channels.BufferedChannel.receivers$volatile$FU
            long r4 = r0.getAndIncrement(r13)
            int r0 = kotlinx.coroutines.channels.BufferedChannelKt.SEGMENT_SIZE
            long r7 = (long) r0
            long r9 = r4 / r7
            long r7 = r4 % r7
            int r3 = (int) r7
            long r7 = r14.id
            int r0 = (r7 > r9 ? 1 : (r7 == r9 ? 0 : -1))
            if (r0 == 0) goto L71
            kotlinx.coroutines.channels.ChannelSegment r0 = r13.findSegmentReceive(r9, r14)
            if (r0 != 0) goto L6f
            goto L44
        L6f:
            r8 = r0
            goto L72
        L71:
            r8 = r14
        L72:
            r12 = 0
            r7 = r13
            r9 = r3
            r10 = r4
            java.lang.Object r13 = r7.updateCellReceive(r8, r9, r10, r12)
            com.fsck.k9.mailstore.LocalStore$8 r14 = kotlinx.coroutines.channels.BufferedChannelKt.SUSPEND
            if (r13 == r14) goto La6
            com.fsck.k9.mailstore.LocalStore$8 r14 = kotlinx.coroutines.channels.BufferedChannelKt.FAILED
            if (r13 != r14) goto L90
            long r13 = r7.getSendersCounter$kotlinx_coroutines_core()
            int r13 = (r4 > r13 ? 1 : (r4 == r13 ? 0 : -1))
            if (r13 >= 0) goto L8d
            r8.cleanPrev()
        L8d:
            r13 = r7
            r14 = r8
            goto L44
        L90:
            com.fsck.k9.mailstore.LocalStore$8 r14 = kotlinx.coroutines.channels.BufferedChannelKt.SUSPEND_NO_WAITER
            if (r13 != r14) goto La2
            r6.label = r2
            r1 = r7
            r2 = r8
            java.lang.Object r13 = r1.m1014receiveCatchingOnNoWaiterSuspendGKJJFZk(r2, r3, r4, r6)
            kotlin.coroutines.intrinsics.CoroutineSingletons r14 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r13 != r14) goto La1
            return r14
        La1:
            return r13
        La2:
            r8.cleanPrev()
            return r13
        La6:
            java.lang.String r13 = "unexpected"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r13)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.BufferedChannel.m1012receiveCatchingJP2dKIU$suspendImpl(kotlinx.coroutines.channels.BufferedChannel, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:73:0x0148  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x014b A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Object send$suspendImpl(kotlinx.coroutines.channels.BufferedChannel r23, java.lang.Object r24, kotlin.coroutines.Continuation r25) {
        /*
            Method dump skipped, instructions count: 355
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.BufferedChannel.send$suspendImpl(kotlinx.coroutines.channels.BufferedChannel, java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final BufferedChannel$bindCancellationFun$2 bindCancellationFun() {
        return new BufferedChannel$bindCancellationFun$2(3, this, BufferedChannel.class, "onCancellationImplDoNotCall", "onCancellationImplDoNotCall(Ljava/lang/Throwable;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;)V", 0, 0);
    }

    public final BufferedChannel$bindCancellationFun$2 bindCancellationFunResult() {
        return new BufferedChannel$bindCancellationFun$2(3, this, BufferedChannel.class, "onCancellationChannelResultImplDoNotCall", "onCancellationChannelResultImplDoNotCall-5_sEAP8(Ljava/lang/Throwable;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;)V", 0, 2);
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
        Unsafe unsafe = AwaitAll$AwaitAllNodeAtomicFieldUpdaterHelper.unsafe;
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
        LocalStore.AnonymousClass8 anonymousClass8 = BufferedChannelKt.NO_CLOSE_CAUSE;
        while (true) {
            _closeCause$volatile$FU.getClass();
            BufferedChannel bufferedChannel2 = bufferedChannel;
            Unsafe unsafe = AwaitAll$AwaitAllNodeAtomicFieldUpdaterHelper.unsafe;
            long j5 = _closeCause$volatile$FU$offset;
            Throwable th2 = th;
            boolean compareAndSwapObject = unsafe.compareAndSwapObject(bufferedChannel2, j5, anonymousClass8, th2);
            bufferedChannel = bufferedChannel2;
            if (compareAndSwapObject) {
                z2 = true;
                break;
            }
            if (unsafe.getObjectVolatile(bufferedChannel, j5) != anonymousClass8) {
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
        SerializationException callUndeliveredElementCatchingException;
        receiveSegment$volatile$FU.getClass();
        ChannelSegment channelSegment = (ChannelSegment) AwaitAll$AwaitAllNodeAtomicFieldUpdaterHelper.unsafe.getObjectVolatile(this, receiveSegment$volatile$FU$offset);
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
                Object updateCellReceive = bufferedChannel.updateCellReceive(channelSegment2, i, j2, null);
                if (updateCellReceive != BufferedChannelKt.FAILED) {
                    channelSegment2.cleanPrev();
                    Function1 function1 = bufferedChannel.onUndeliveredElement;
                    if (function1 != null && (callUndeliveredElementCatchingException = InlineList.callUndeliveredElementCatchingException(function1, updateCellReceive, null)) != null) {
                        throw callUndeliveredElementCatchingException;
                    }
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
        ChannelSegment channelSegment = (ChannelSegment) AwaitAll$AwaitAllNodeAtomicFieldUpdaterHelper.unsafe.getObjectVolatile(this, bufferEndSegment$volatile$FU$offset);
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
            if (!z || andIncrement < atomicLongFieldUpdater.get(bufferedChannel) || !channelSegment.casState$kotlinx_coroutines_core(i, state$kotlinx_coroutines_core, BufferedChannelKt.RESUMING_BY_EB)) {
                while (true) {
                    Object state$kotlinx_coroutines_core2 = channelSegment.getState$kotlinx_coroutines_core(i);
                    if (!(state$kotlinx_coroutines_core2 instanceof Waiter)) {
                        if (state$kotlinx_coroutines_core2 != BufferedChannelKt.INTERRUPTED_SEND) {
                            if (state$kotlinx_coroutines_core2 != null) {
                                if (state$kotlinx_coroutines_core2 == BufferedChannelKt.BUFFERED || state$kotlinx_coroutines_core2 == BufferedChannelKt.POISONED || state$kotlinx_coroutines_core2 == BufferedChannelKt.DONE_RCV || state$kotlinx_coroutines_core2 == BufferedChannelKt.INTERRUPTED_RCV || state$kotlinx_coroutines_core2 == BufferedChannelKt.CHANNEL_CLOSED) {
                                    break loop0;
                                } else if (state$kotlinx_coroutines_core2 != BufferedChannelKt.RESUMING_BY_RCV) {
                                    _UtilJvmKt$$ExternalSyntheticLambda0.m(state$kotlinx_coroutines_core2, "Unexpected cell state: ");
                                    return;
                                }
                            } else if (channelSegment.casState$kotlinx_coroutines_core(i, state$kotlinx_coroutines_core2, BufferedChannelKt.IN_BUFFER)) {
                                break loop0;
                            }
                        } else {
                            break;
                        }
                    } else if (andIncrement < atomicLongFieldUpdater.get(bufferedChannel)) {
                        if (channelSegment.casState$kotlinx_coroutines_core(i, state$kotlinx_coroutines_core2, new WaiterEB((Waiter) state$kotlinx_coroutines_core2))) {
                            break loop0;
                        }
                    } else if (channelSegment.casState$kotlinx_coroutines_core(i, state$kotlinx_coroutines_core2, BufferedChannelKt.RESUMING_BY_EB)) {
                        if (bufferedChannel.tryResumeSender(state$kotlinx_coroutines_core2, channelSegment, i)) {
                            channelSegment.setState$kotlinx_coroutines_core(i, BufferedChannelKt.BUFFERED);
                            break;
                        } else {
                            channelSegment.setState$kotlinx_coroutines_core(i, BufferedChannelKt.INTERRUPTED_SEND);
                            channelSegment.onSlotCleaned();
                        }
                    }
                }
                incCompletedExpandBufferAttempts$default(bufferedChannel);
            } else if (bufferedChannel.tryResumeSender(state$kotlinx_coroutines_core, channelSegment, i)) {
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
            if (!InlineList.m1021isClosedimpl(findSegmentInternal)) {
                Segment m1020getSegmentimpl = InlineList.m1020getSegmentimpl(findSegmentInternal);
                while (true) {
                    bufferEndSegment$volatile$FU.getClass();
                    Unsafe unsafe2 = AwaitAll$AwaitAllNodeAtomicFieldUpdaterHelper.unsafe;
                    long j3 = bufferEndSegment$volatile$FU$offset;
                    Segment segment = (Segment) unsafe2.getObjectVolatile(this, j3);
                    if (segment.id >= m1020getSegmentimpl.id) {
                        break loop0;
                    }
                    if (!m1020getSegmentimpl.tryIncPointers$kotlinx_coroutines_core()) {
                        break;
                    }
                    do {
                        unsafe = AwaitAll$AwaitAllNodeAtomicFieldUpdaterHelper.unsafe;
                        if (unsafe.compareAndSwapObject(this, bufferEndSegment$volatile$FU$offset, segment, m1020getSegmentimpl)) {
                            if (segment.decPointers$kotlinx_coroutines_core()) {
                                segment.remove();
                            }
                        }
                    } while (unsafe.getObjectVolatile(this, j3) == segment);
                    if (m1020getSegmentimpl.decPointers$kotlinx_coroutines_core()) {
                        m1020getSegmentimpl.remove();
                    }
                }
            } else {
                break;
            }
        }
        if (InlineList.m1021isClosedimpl(findSegmentInternal)) {
            isClosedForSend();
            moveSegmentBufferEndToSpecifiedOrLast(j, channelSegment);
            incCompletedExpandBufferAttempts$default(this);
            return null;
        }
        ChannelSegment channelSegment3 = (ChannelSegment) InlineList.m1020getSegmentimpl(findSegmentInternal);
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
            if (!InlineList.m1021isClosedimpl(findSegmentInternal)) {
                Segment m1020getSegmentimpl = InlineList.m1020getSegmentimpl(findSegmentInternal);
                while (true) {
                    sendSegment$volatile$FU.getClass();
                    Unsafe unsafe2 = AwaitAll$AwaitAllNodeAtomicFieldUpdaterHelper.unsafe;
                    long j4 = sendSegment$volatile$FU$offset;
                    Segment segment = (Segment) unsafe2.getObjectVolatile(this, j4);
                    if (segment.id >= m1020getSegmentimpl.id) {
                        break loop0;
                    }
                    if (!m1020getSegmentimpl.tryIncPointers$kotlinx_coroutines_core()) {
                        break;
                    }
                    do {
                        unsafe = AwaitAll$AwaitAllNodeAtomicFieldUpdaterHelper.unsafe;
                        if (unsafe.compareAndSwapObject(this, sendSegment$volatile$FU$offset, segment, m1020getSegmentimpl)) {
                            if (segment.decPointers$kotlinx_coroutines_core()) {
                                segment.remove();
                            }
                        }
                    } while (unsafe.getObjectVolatile(this, j4) == segment);
                    if (m1020getSegmentimpl.decPointers$kotlinx_coroutines_core()) {
                        m1020getSegmentimpl.remove();
                    }
                }
            } else {
                break;
            }
        }
        boolean m1021isClosedimpl = InlineList.m1021isClosedimpl(findSegmentInternal);
        AtomicLongFieldUpdater atomicLongFieldUpdater = receivers$volatile$FU;
        if (m1021isClosedimpl) {
            isClosedForSend();
            if (channelSegment.id * BufferedChannelKt.SEGMENT_SIZE < atomicLongFieldUpdater.get(this)) {
                channelSegment.cleanPrev();
                return null;
            }
        } else {
            ChannelSegment channelSegment3 = (ChannelSegment) InlineList.m1020getSegmentimpl(findSegmentInternal);
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
        return (Throwable) AwaitAll$AwaitAllNodeAtomicFieldUpdaterHelper.unsafe.getObjectVolatile(this, _closeCause$volatile$FU$offset);
    }

    public final Dispatcher getOnReceive() {
        BufferedChannel$onReceive$1 bufferedChannel$onReceive$1 = BufferedChannel$onReceive$1.INSTANCE;
        TypeIntrinsics.beforeCheckcastToFunctionOfArity(3, bufferedChannel$onReceive$1);
        BufferedChannel$onReceive$2 bufferedChannel$onReceive$2 = BufferedChannel$onReceive$2.INSTANCE;
        TypeIntrinsics.beforeCheckcastToFunctionOfArity(3, bufferedChannel$onReceive$2);
        return new Dispatcher(this, bufferedChannel$onReceive$1, bufferedChannel$onReceive$2, this.onUndeliveredElementReceiveCancellationConstructor, 24);
    }

    public final Throwable getReceiveException() {
        Throwable closeCause = getCloseCause();
        return closeCause == null ? new ClosedReceiveChannelException("Channel was closed") : closeCause;
    }

    public final Throwable getSendException() {
        Throwable closeCause = getCloseCause();
        return closeCause == null ? new ClosedSendChannelException("Channel was closed") : closeCause;
    }

    public final long getSendersCounter$kotlinx_coroutines_core() {
        return sendersAndCloseStatus$volatile$FU.get(this) & 1152921504606846975L;
    }

    public final boolean hasElements$kotlinx_coroutines_core() {
        while (true) {
            receiveSegment$volatile$FU.getClass();
            Unsafe unsafe = AwaitAll$AwaitAllNodeAtomicFieldUpdaterHelper.unsafe;
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
                        if (channelSegment.casState$kotlinx_coroutines_core(i, state$kotlinx_coroutines_core, BufferedChannelKt.POISONED)) {
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
            Unsafe unsafe = AwaitAll$AwaitAllNodeAtomicFieldUpdaterHelper.unsafe;
            long j = closeHandler$volatile$FU$offset;
            objectVolatile = unsafe.getObjectVolatile(this, j);
            LocalStore.AnonymousClass8 anonymousClass8 = objectVolatile == null ? BufferedChannelKt.CLOSE_HANDLER_CLOSED : BufferedChannelKt.CLOSE_HANDLER_INVOKED;
            while (true) {
                Unsafe unsafe2 = AwaitAll$AwaitAllNodeAtomicFieldUpdaterHelper.unsafe;
                bufferedChannel = this;
                if (unsafe2.compareAndSwapObject(bufferedChannel, closeHandler$volatile$FU$offset, objectVolatile, anonymousClass8)) {
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

    public final void invokeOnClose(ProduceKt$awaitClose$4$1 produceKt$awaitClose$4$1) {
        Unsafe unsafe;
        while (true) {
            closeHandler$volatile$FU.getClass();
            Unsafe unsafe2 = AwaitAll$AwaitAllNodeAtomicFieldUpdaterHelper.unsafe;
            BufferedChannel bufferedChannel = this;
            if (unsafe2.compareAndSwapObject(bufferedChannel, closeHandler$volatile$FU$offset, (Object) null, produceKt$awaitClose$4$1)) {
                return;
            }
            long j = closeHandler$volatile$FU$offset;
            if (unsafe2.getObjectVolatile(bufferedChannel, j) != null) {
                while (true) {
                    Object objectVolatile = AwaitAll$AwaitAllNodeAtomicFieldUpdaterHelper.unsafe.getObjectVolatile(bufferedChannel, j);
                    LocalStore.AnonymousClass8 anonymousClass8 = BufferedChannelKt.CLOSE_HANDLER_CLOSED;
                    if (objectVolatile != anonymousClass8) {
                        if (objectVolatile == BufferedChannelKt.CLOSE_HANDLER_INVOKED) {
                            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Another handler was already registered and successfully invoked");
                            return;
                        } else {
                            _UtilJvmKt$$ExternalSyntheticLambda0.m(objectVolatile, "Another handler is already registered: ");
                            return;
                        }
                    }
                    LocalStore.AnonymousClass8 anonymousClass82 = BufferedChannelKt.CLOSE_HANDLER_INVOKED;
                    do {
                        BufferedChannel bufferedChannel2 = bufferedChannel;
                        unsafe = AwaitAll$AwaitAllNodeAtomicFieldUpdaterHelper.unsafe;
                        boolean compareAndSwapObject = unsafe.compareAndSwapObject(bufferedChannel2, closeHandler$volatile$FU$offset, anonymousClass8, anonymousClass82);
                        bufferedChannel = bufferedChannel2;
                        if (compareAndSwapObject) {
                            produceKt$awaitClose$4$1.invoke(bufferedChannel.getCloseCause());
                            return;
                        }
                    } while (unsafe.getObjectVolatile(bufferedChannel, j) == anonymousClass8);
                }
            } else {
                this = bufferedChannel;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:90:0x00c0, code lost:
    
        r13 = (kotlinx.coroutines.channels.ChannelSegment) r13.getPrev();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean isClosed(long r13, boolean r15) {
        /*
            Method dump skipped, instructions count: 261
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
            sun.misc.Unsafe r7 = kotlinx.coroutines.AwaitAll$AwaitAllNodeAtomicFieldUpdaterHelper.unsafe
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
            sun.misc.Unsafe r0 = kotlinx.coroutines.AwaitAll$AwaitAllNodeAtomicFieldUpdaterHelper.unsafe
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
        SerializationException callUndeliveredElementCatchingException;
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(1, AtomicFU.intercepted(continuation));
        cancellableContinuationImpl.initCancellability();
        Function1 function1 = this.onUndeliveredElement;
        if (function1 == null || (callUndeliveredElementCatchingException = InlineList.callUndeliveredElementCatchingException(function1, obj, null)) == null) {
            cancellableContinuationImpl.resumeWith(new Result.Failure(getSendException()));
        } else {
            ResultKt.addSuppressed(callUndeliveredElementCatchingException, getSendException());
            cancellableContinuationImpl.resumeWith(new Result.Failure(callUndeliveredElementCatchingException));
        }
        Object result = cancellableContinuationImpl.getResult();
        return result == CoroutineSingletons.COROUTINE_SUSPENDED ? result : Unit.INSTANCE;
    }

    @Override // kotlinx.coroutines.channels.Channel
    public final Object receive(SuspendLambda suspendLambda) {
        return receive$suspendImpl(this, suspendLambda);
    }

    @Override // kotlinx.coroutines.channels.Channel
    /* renamed from: receiveCatching-JP2dKIU, reason: not valid java name */
    public final Object mo1013receiveCatchingJP2dKIU(ContinuationImpl continuationImpl) {
        return m1012receiveCatchingJP2dKIU$suspendImpl(this, continuationImpl);
    }

    /* JADX WARN: Code restructure failed: missing block: B:52:0x00ce, code lost:
    
        if (r11 != null) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00d0, code lost:
    
        r2 = bindCancellationFunResult();
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x00e8, code lost:
    
        if (r11 != null) goto L50;
     */
    /* JADX WARN: Removed duplicated region for block: B:15:0x002d  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0020  */
    /* renamed from: receiveCatchingOnNoWaiterSuspend-GKJJFZk, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m1014receiveCatchingOnNoWaiterSuspendGKJJFZk(kotlinx.coroutines.channels.ChannelSegment r10, int r11, long r12, kotlin.coroutines.jvm.internal.ContinuationImpl r14) {
        /*
            Method dump skipped, instructions count: 253
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.BufferedChannel.m1014receiveCatchingOnNoWaiterSuspendGKJJFZk(kotlinx.coroutines.channels.ChannelSegment, int, long, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public final void registerSelectForReceive(SelectImplementation selectImplementation) {
        ChannelSegment channelSegment;
        BufferedChannel bufferedChannel;
        SelectImplementation selectImplementation2;
        int i;
        receiveSegment$volatile$FU.getClass();
        ChannelSegment channelSegment2 = (ChannelSegment) AwaitAll$AwaitAllNodeAtomicFieldUpdaterHelper.unsafe.getObjectVolatile(this, receiveSegment$volatile$FU$offset);
        while (!this.isClosedForReceive()) {
            long andIncrement = receivers$volatile$FU.getAndIncrement(this);
            long j = BufferedChannelKt.SEGMENT_SIZE;
            long j2 = andIncrement / j;
            int i2 = (int) (andIncrement % j);
            if (channelSegment2.id != j2) {
                ChannelSegment findSegmentReceive = this.findSegmentReceive(j2, channelSegment2);
                if (findSegmentReceive == null) {
                    continue;
                } else {
                    channelSegment = findSegmentReceive;
                    selectImplementation2 = selectImplementation;
                    i = i2;
                    bufferedChannel = this;
                }
            } else {
                channelSegment = channelSegment2;
                bufferedChannel = this;
                selectImplementation2 = selectImplementation;
                i = i2;
            }
            Object updateCellReceive = bufferedChannel.updateCellReceive(channelSegment, i, andIncrement, selectImplementation2);
            channelSegment2 = channelSegment;
            if (updateCellReceive == BufferedChannelKt.SUSPEND) {
                SelectImplementation selectImplementation3 = selectImplementation2 != null ? selectImplementation2 : null;
                if (selectImplementation3 != null) {
                    selectImplementation3.disposableHandleOrSegment = channelSegment2;
                    selectImplementation3.indexInSegment = i;
                    return;
                }
                return;
            }
            if (updateCellReceive != BufferedChannelKt.FAILED) {
                if (updateCellReceive == BufferedChannelKt.SUSPEND_NO_WAITER) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("unexpected");
                    return;
                } else {
                    channelSegment2.cleanPrev();
                    selectImplementation2.internalResult = updateCellReceive;
                    return;
                }
            }
            if (andIncrement < bufferedChannel.getSendersCounter$kotlinx_coroutines_core()) {
                channelSegment2.cleanPrev();
            }
            this = bufferedChannel;
            selectImplementation = selectImplementation2;
        }
        selectImplementation.internalResult = BufferedChannelKt.CHANNEL_CLOSED;
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
                _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) waiter, "Unexpected waiter: ");
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

    @Override // kotlinx.coroutines.channels.SendChannel
    public Object send(Object obj, Continuation continuation) {
        return send$suspendImpl(this, obj, continuation);
    }

    /* JADX WARN: Code restructure failed: missing block: B:105:0x01c9, code lost:
    
        r15 = r8;
        r3 = (kotlinx.coroutines.channels.ChannelSegment) r3.getNext();
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x01d1, code lost:
    
        if (r3 != null) goto L94;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String toString() {
        /*
            Method dump skipped, instructions count: 504
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.BufferedChannel.toString():java.lang.String");
    }

    @Override // kotlinx.coroutines.channels.Channel
    /* renamed from: tryReceive-PtdJZtk, reason: not valid java name */
    public final Object mo1015tryReceivePtdJZtk() {
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
        ChannelSegment channelSegment2 = (ChannelSegment) AwaitAll$AwaitAllNodeAtomicFieldUpdaterHelper.unsafe.getObjectVolatile(this, receiveSegment$volatile$FU$offset);
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
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("unexpected");
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
        int i = 0;
        if (obj instanceof SelectImplementation) {
            return ((SelectImplementation) obj).trySelectInternal(this, obj2) == 0;
        }
        boolean z = obj instanceof ReceiveCatching;
        Function1 function1 = this.onUndeliveredElement;
        if (z) {
            return BufferedChannelKt.tryResume0(((ReceiveCatching) obj).cont, new ChannelResult(obj2), function1 != null ? bindCancellationFunResult() : null);
        }
        if (!(obj instanceof BufferedChannelIterator)) {
            if (obj instanceof CancellableContinuation) {
                return BufferedChannelKt.tryResume0((CancellableContinuation) obj, obj2, function1 != null ? bindCancellationFun() : null);
            }
            _UtilJvmKt$$ExternalSyntheticLambda0.m(obj, "Unexpected receiver type: ");
            return false;
        }
        BufferedChannelIterator bufferedChannelIterator = (BufferedChannelIterator) obj;
        CancellableContinuationImpl cancellableContinuationImpl = bufferedChannelIterator.continuation;
        cancellableContinuationImpl.getClass();
        bufferedChannelIterator.continuation = null;
        bufferedChannelIterator.receiveResult = obj2;
        Boolean bool = Boolean.TRUE;
        Function1 function12 = BufferedChannel.this.onUndeliveredElement;
        return BufferedChannelKt.tryResume0(cancellableContinuationImpl, bool, function12 != null ? new BufferedChannel$$ExternalSyntheticLambda1(i, function12, obj2) : null);
    }

    public final boolean tryResumeSender(Object obj, ChannelSegment channelSegment, int i) {
        TrySelectDetailedResult trySelectDetailedResult;
        boolean z = obj instanceof CancellableContinuation;
        Unit unit = Unit.INSTANCE;
        if (z) {
            return BufferedChannelKt.tryResume0((CancellableContinuation) obj, unit, null);
        }
        if (!(obj instanceof SelectImplementation)) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m(obj, "Unexpected waiter: ");
            return false;
        }
        int trySelectInternal = ((SelectImplementation) obj).trySelectInternal(this, unit);
        TrySelectDetailedResult trySelectDetailedResult2 = TrySelectDetailedResult.SUCCESSFUL;
        TrySelectDetailedResult trySelectDetailedResult3 = TrySelectDetailedResult.REREGISTER;
        if (trySelectInternal == 0) {
            trySelectDetailedResult = trySelectDetailedResult2;
        } else if (trySelectInternal == 1) {
            trySelectDetailedResult = trySelectDetailedResult3;
        } else if (trySelectInternal == 2) {
            trySelectDetailedResult = TrySelectDetailedResult.CANCELLED;
        } else {
            if (trySelectInternal != 3) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Unexpected internal result: ", trySelectInternal);
                return false;
            }
            trySelectDetailedResult = TrySelectDetailedResult.ALREADY_SELECTED;
        }
        if (trySelectDetailedResult == trySelectDetailedResult3) {
            channelSegment.setElementLazy(i, null);
        }
        return trySelectDetailedResult == trySelectDetailedResult2;
    }

    @Override // kotlinx.coroutines.channels.SendChannel
    /* renamed from: trySend-JP2dKIU, reason: not valid java name */
    public Object mo1016trySendJP2dKIU(Object obj) {
        AtomicLongFieldUpdater atomicLongFieldUpdater = sendersAndCloseStatus$volatile$FU;
        boolean z = false;
        long j = 1152921504606846975L;
        boolean z2 = isClosed(atomicLongFieldUpdater.get(this), false) ? false : !bufferOrRendezvousSend(r1 & 1152921504606846975L);
        ChannelResult.Failed failed = ChannelResult.failed;
        if (z2) {
            return failed;
        }
        LockableDatabase.DbCallback dbCallback = BufferedChannelKt.INTERRUPTED_SEND;
        sendSegment$volatile$FU.getClass();
        ChannelSegment channelSegment = (ChannelSegment) AwaitAll$AwaitAllNodeAtomicFieldUpdaterHelper.unsafe.getObjectVolatile(this, sendSegment$volatile$FU$offset);
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
            int access$updateCellSend = access$updateCellSend(this, channelSegment, i2, obj, j2, dbCallback, isClosed);
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
                Waiter waiter = dbCallback instanceof Waiter ? (Waiter) dbCallback : null;
                if (waiter != null) {
                    waiter.invokeOnCancellation(channelSegment, i2 + i);
                }
                channelSegment.onSlotCleaned();
                return failed;
            }
            if (access$updateCellSend == 3) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("unexpected");
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
                if (j < (atomicLongFieldUpdater.get(this) & 1152921504606846975L)) {
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
                LocalStore.AnonymousClass8 anonymousClass8 = BufferedChannelKt.INTERRUPTED_SEND;
                if (state$kotlinx_coroutines_core2 == anonymousClass8) {
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
                    channelSegment.setState$kotlinx_coroutines_core(i, anonymousClass8);
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
                    LocalStore.AnonymousClass8 anonymousClass8 = BufferedChannelKt.INTERRUPTED_RCV;
                    if (state$kotlinx_coroutines_core == anonymousClass8) {
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
                    if (channelSegment.data.getAndSet((i * 2) + 1, anonymousClass8) != anonymousClass8) {
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
