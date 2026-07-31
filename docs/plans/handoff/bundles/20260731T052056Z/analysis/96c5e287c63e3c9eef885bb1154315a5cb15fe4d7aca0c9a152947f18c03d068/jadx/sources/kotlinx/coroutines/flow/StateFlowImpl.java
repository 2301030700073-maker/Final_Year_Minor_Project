package kotlinx.coroutines.flow;

import _COROUTINE.ArtificialStackFramesUnsafe;
import androidx.room.Room;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.flow.internal.AbstractSharedFlow;
import kotlinx.coroutines.flow.internal.AbstractSharedFlowSlot;
import kotlinx.coroutines.flow.internal.CombineKt;
import kotlinx.coroutines.flow.internal.FusibleFlow;
import kotlinx.coroutines.internal.Symbol;
import sun.misc.Unsafe;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class StateFlowImpl extends AbstractSharedFlow implements Flow, FusibleFlow, StateFlow, MutableSharedFlow {
    public static final /* synthetic */ long _state$volatile$FU$offset = ArtificialStackFramesUnsafe.unsafe.objectFieldOffset(StateFlowImpl.class.getDeclaredField("_state$volatile"));
    private volatile /* synthetic */ Object _state$volatile;
    public int sequence;

    public StateFlowImpl(Object obj) {
        this._state$volatile = obj;
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x00b0, code lost:
    
        r1 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x00b4, code lost:
    
        if (r0.equals(r11) != false) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x011a, code lost:
    
        if (r12 == r4) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0096, code lost:
    
        if (r11 != r4) goto L35;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Not initialized variable reg: 11, insn: 0x0041: MOVE (r1 I:??[OBJECT, ARRAY]) = (r11 I:??[OBJECT, ARRAY]) (LINE:66), block:B:66:0x0041 */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0098 A[Catch: all -> 0x0063, TryCatch #1 {all -> 0x0063, blocks: (B:14:0x0098, B:16:0x00a2, B:19:0x00a9, B:20:0x00ad, B:23:0x00b0, B:25:0x00d5, B:28:0x00e5, B:29:0x0101, B:35:0x0111, B:31:0x0108, B:34:0x010e, B:44:0x00b6, B:47:0x00bd, B:53:0x011d, B:54:0x0122, B:11:0x005f, B:12:0x0087, B:70:0x0070, B:72:0x0074), top: B:7:0x0028 }] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00e4  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00e5 A[Catch: all -> 0x0063, TryCatch #1 {all -> 0x0063, blocks: (B:14:0x0098, B:16:0x00a2, B:19:0x00a9, B:20:0x00ad, B:23:0x00b0, B:25:0x00d5, B:28:0x00e5, B:29:0x0101, B:35:0x0111, B:31:0x0108, B:34:0x010e, B:44:0x00b6, B:47:0x00bd, B:53:0x011d, B:54:0x0122, B:11:0x005f, B:12:0x0087, B:70:0x0070, B:72:0x0074), top: B:7:0x0028 }] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x011d A[Catch: all -> 0x0063, TryCatch #1 {all -> 0x0063, blocks: (B:14:0x0098, B:16:0x00a2, B:19:0x00a9, B:20:0x00ad, B:23:0x00b0, B:25:0x00d5, B:28:0x00e5, B:29:0x0101, B:35:0x0111, B:31:0x0108, B:34:0x010e, B:44:0x00b6, B:47:0x00bd, B:53:0x011d, B:54:0x0122, B:11:0x005f, B:12:0x0087, B:70:0x0070, B:72:0x0074), top: B:7:0x0028 }] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0066  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x002a  */
    /* JADX WARN: Type inference failed for: r5v0, types: [int, kotlinx.coroutines.flow.internal.AbstractSharedFlowSlot] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x00e4 -> B:13:0x0096). Please report as a decompilation issue!!! */
    @Override // kotlinx.coroutines.flow.Flow
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object collect(kotlinx.coroutines.flow.FlowCollector r17, kotlin.coroutines.Continuation r18) {
        /*
            Method dump skipped, instructions count: 295
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.StateFlowImpl.collect(kotlinx.coroutines.flow.FlowCollector, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final boolean compareAndSet(Object obj, Object obj2) {
        Symbol symbol = CombineKt.NULL;
        if (obj == null) {
            obj = symbol;
        }
        if (obj2 == null) {
            obj2 = symbol;
        }
        return updateState(obj, obj2);
    }

    @Override // kotlinx.coroutines.flow.internal.AbstractSharedFlow
    public final AbstractSharedFlowSlot createSlot() {
        return new StateFlowSlot();
    }

    @Override // kotlinx.coroutines.flow.internal.AbstractSharedFlow
    public final AbstractSharedFlowSlot[] createSlotArray() {
        return new StateFlowSlot[2];
    }

    @Override // kotlinx.coroutines.flow.FlowCollector
    public final Object emit(Object obj, Continuation continuation) {
        setValue(obj);
        return Unit.INSTANCE;
    }

    @Override // kotlinx.coroutines.flow.internal.FusibleFlow
    public final Flow fuse(CoroutineContext coroutineContext, int i, BufferOverflow bufferOverflow) {
        return (((i < 0 || i >= 2) && i != -2) || bufferOverflow != BufferOverflow.DROP_OLDEST) ? StateFlowKt.fuseSharedFlow(this, coroutineContext, i, bufferOverflow) : this;
    }

    @Override // kotlinx.coroutines.flow.SharedFlow
    public final List getReplayCache() {
        return Room.listOf(getValue());
    }

    @Override // kotlinx.coroutines.flow.StateFlow
    public final Object getValue() {
        Symbol symbol = CombineKt.NULL;
        Object objectVolatile = ArtificialStackFramesUnsafe.unsafe.getObjectVolatile(this, _state$volatile$FU$offset);
        if (objectVolatile == symbol) {
            return null;
        }
        return objectVolatile;
    }

    @Override // kotlinx.coroutines.flow.MutableSharedFlow
    public final void resetReplayCache() {
        throw new UnsupportedOperationException("MutableStateFlow.resetReplayCache is not supported");
    }

    public final void setValue(Object obj) {
        if (obj == null) {
            obj = CombineKt.NULL;
        }
        updateState(null, obj);
    }

    @Override // kotlinx.coroutines.flow.MutableSharedFlow
    public final boolean tryEmit(Object obj) {
        setValue(obj);
        return true;
    }

    public final boolean updateState(Object obj, Object obj2) {
        int i;
        AbstractSharedFlowSlot[] abstractSharedFlowSlotArr;
        Symbol symbol;
        synchronized (this) {
            Unsafe unsafe = ArtificialStackFramesUnsafe.unsafe;
            long j = _state$volatile$FU$offset;
            Object objectVolatile = unsafe.getObjectVolatile(this, j);
            if (obj != null && !Intrinsics.areEqual(objectVolatile, obj)) {
                return false;
            }
            if (Intrinsics.areEqual(objectVolatile, obj2)) {
                return true;
            }
            unsafe.putObjectVolatile(this, j, obj2);
            int i2 = this.sequence;
            if ((i2 & 1) != 0) {
                this.sequence = i2 + 2;
                return true;
            }
            int i3 = i2 + 1;
            this.sequence = i3;
            AbstractSharedFlowSlot[] abstractSharedFlowSlotArr2 = this.slots;
            while (true) {
                StateFlowSlot[] stateFlowSlotArr = (StateFlowSlot[]) abstractSharedFlowSlotArr2;
                if (stateFlowSlotArr != null) {
                    for (StateFlowSlot stateFlowSlot : stateFlowSlotArr) {
                        if (stateFlowSlot != null) {
                            AtomicReference atomicReference = stateFlowSlot._state;
                            while (true) {
                                Object obj3 = atomicReference.get();
                                if (obj3 != null && obj3 != (symbol = StateFlowKt.PENDING)) {
                                    Symbol symbol2 = StateFlowKt.NONE;
                                    if (obj3 != symbol2) {
                                        while (!atomicReference.compareAndSet(obj3, symbol2)) {
                                            if (atomicReference.get() != obj3) {
                                                break;
                                            }
                                        }
                                        ((CancellableContinuationImpl) obj3).resumeWith(Unit.INSTANCE);
                                        break;
                                    }
                                    while (!atomicReference.compareAndSet(obj3, symbol)) {
                                        if (atomicReference.get() != obj3) {
                                            break;
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                synchronized (this) {
                    i = this.sequence;
                    if (i == i3) {
                        this.sequence = i3 + 1;
                        return true;
                    }
                    abstractSharedFlowSlotArr = this.slots;
                }
                abstractSharedFlowSlotArr2 = abstractSharedFlowSlotArr;
                i3 = i;
            }
        }
    }
}
