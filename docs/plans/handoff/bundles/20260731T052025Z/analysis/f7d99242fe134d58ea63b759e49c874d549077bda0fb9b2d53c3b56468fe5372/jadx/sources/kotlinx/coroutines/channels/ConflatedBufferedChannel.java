package kotlinx.coroutines.channels;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.room.util.DBUtil$$ExternalSyntheticBUOutline0;
import com.fsck.k9.mailstore.LockableDatabase;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.Waiter;
import kotlinx.coroutines.channels.ChannelResult;
import kotlinx.coroutines.internal.InlineList;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.jsoup.SerializationException;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ConflatedBufferedChannel extends BufferedChannel {
    public final BufferOverflow onBufferOverflow;

    public ConflatedBufferedChannel(int i, BufferOverflow bufferOverflow, Function1 function1) {
        super(i, function1);
        this.onBufferOverflow = bufferOverflow;
        if (bufferOverflow == BufferOverflow.SUSPEND) {
            DBUtil$$ExternalSyntheticBUOutline0.m(Reflection.getOrCreateKotlinClass(BufferedChannel.class).getSimpleName(), " instead", "This implementation does not support suspension for senders, use ");
            throw null;
        }
        if (i >= 1) {
            return;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$2((Object) CameraDevices$CC.m(i, "Buffered channel capacity must be at least 1, but ", " was specified"));
        throw null;
    }

    @Override // kotlinx.coroutines.channels.BufferedChannel
    public final boolean isConflatedDropOldest() {
        return this.onBufferOverflow == BufferOverflow.DROP_OLDEST;
    }

    @Override // kotlinx.coroutines.channels.BufferedChannel, kotlinx.coroutines.channels.SendChannel
    public final Object send(Object obj, Continuation continuation) {
        SerializationException callUndeliveredElementCatchingException;
        if (!(m1019trySendImplMj0NB7M(obj, true) instanceof ChannelResult.Closed)) {
            return Unit.INSTANCE;
        }
        Function1 function1 = this.onUndeliveredElement;
        if (function1 == null || (callUndeliveredElementCatchingException = InlineList.callUndeliveredElementCatchingException(function1, obj, null)) == null) {
            throw getSendException();
        }
        ResultKt.addSuppressed(callUndeliveredElementCatchingException, getSendException());
        throw callUndeliveredElementCatchingException;
    }

    @Override // kotlinx.coroutines.channels.BufferedChannel, kotlinx.coroutines.channels.SendChannel
    /* renamed from: trySend-JP2dKIU */
    public final Object mo1016trySendJP2dKIU(Object obj) {
        return m1019trySendImplMj0NB7M(obj, false);
    }

    /* renamed from: trySendImpl-Mj0NB7M, reason: not valid java name */
    public final Object m1019trySendImplMj0NB7M(Object obj, boolean z) {
        Function1 function1;
        SerializationException callUndeliveredElementCatchingException;
        BufferOverflow bufferOverflow = this.onBufferOverflow;
        BufferOverflow bufferOverflow2 = BufferOverflow.DROP_LATEST;
        Unit unit = Unit.INSTANCE;
        Waiter waiter = null;
        if (bufferOverflow == bufferOverflow2) {
            Object mo1016trySendJP2dKIU = super.mo1016trySendJP2dKIU(obj);
            if (!(mo1016trySendJP2dKIU instanceof ChannelResult.Failed) || (mo1016trySendJP2dKIU instanceof ChannelResult.Closed)) {
                return mo1016trySendJP2dKIU;
            }
            if (z && (function1 = this.onUndeliveredElement) != null && (callUndeliveredElementCatchingException = InlineList.callUndeliveredElementCatchingException(function1, obj, null)) != null) {
                throw callUndeliveredElementCatchingException;
            }
        } else {
            Object obj2 = obj;
            LockableDatabase.DbCallback dbCallback = BufferedChannelKt.BUFFERED;
            ChannelSegment channelSegment = (ChannelSegment) BufferedChannel.sendSegment$volatile$FU.get(this);
            while (true) {
                long andIncrement = BufferedChannel.sendersAndCloseStatus$volatile$FU.getAndIncrement(this);
                long j = 1152921504606846975L & andIncrement;
                boolean isClosed = isClosed(andIncrement, false);
                int i = BufferedChannelKt.SEGMENT_SIZE;
                long j2 = i;
                long j3 = j / j2;
                Waiter waiter2 = waiter;
                int i2 = (int) (j % j2);
                if (channelSegment.id != j3) {
                    ChannelSegment findSegmentSend = findSegmentSend(j3, channelSegment);
                    if (findSegmentSend != null) {
                        channelSegment = findSegmentSend;
                    } else {
                        if (isClosed) {
                            return new ChannelResult.Closed(getSendException());
                        }
                        waiter = waiter2;
                    }
                }
                int access$updateCellSend = BufferedChannel.access$updateCellSend(this, channelSegment, i2, obj2, j, dbCallback, isClosed);
                if (access$updateCellSend == 0) {
                    channelSegment.cleanPrev();
                    return unit;
                }
                if (access$updateCellSend == 1) {
                    break;
                }
                if (access$updateCellSend != 2) {
                    if (access$updateCellSend == 3) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("unexpected");
                        return waiter2;
                    }
                    if (access$updateCellSend == 4) {
                        if (j < BufferedChannel.receivers$volatile$FU.get(this)) {
                            channelSegment.cleanPrev();
                        }
                        return new ChannelResult.Closed(getSendException());
                    }
                    if (access$updateCellSend == 5) {
                        channelSegment.cleanPrev();
                    }
                    obj2 = obj;
                    waiter = waiter2;
                } else {
                    if (isClosed) {
                        channelSegment.onSlotCleaned();
                        return new ChannelResult.Closed(getSendException());
                    }
                    Waiter waiter3 = dbCallback instanceof Waiter ? (Waiter) dbCallback : waiter2;
                    if (waiter3 != null) {
                        waiter3.invokeOnCancellation(channelSegment, i2 + i);
                    }
                    dropFirstElementUntilTheSpecifiedCellIsInTheBuffer((channelSegment.id * j2) + i2);
                }
            }
        }
        return unit;
    }
}
