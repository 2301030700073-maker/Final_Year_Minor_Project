package androidx.compose.ui.input.pointer;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.node.Owner;
import androidx.compose.ui.node.PointerInputModifierNode;
import androidx.compose.ui.unit.Density;
import java.util.ArrayList;
import java.util.List;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.jvm.internal.BaseContinuationImpl;
import kotlin.text.UStringsKt;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.StandaloneCoroutine;
import net.newpipe.app.AppKt;
import org.jsoup.SerializationException;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class SuspendingPointerInputModifierNodeImpl extends Modifier.Node implements PointerInputScope, Density, PointerInputModifierNode {
    public PointerInputEventHandler _pointerInputEventHandler;
    public PointerEvent currentEvent = SuspendingPointerInputFilterKt.EmptyPointerEvent;
    public final MutableVector dispatchingPointerHandlers;
    public Object key1;
    public Object key2;
    public PointerEvent lastPointerEvent;
    public final MutableVector pointerHandlers;
    public final MutableVector pointerHandlersLock;
    public StandaloneCoroutine pointerInputJob;

    public SuspendingPointerInputModifierNodeImpl(Object obj, Object obj2, PointerInputEventHandler pointerInputEventHandler) {
        this.key1 = obj;
        this.key2 = obj2;
        this._pointerInputEventHandler = pointerInputEventHandler;
        MutableVector mutableVector = new MutableVector(new PointerEventHandlerCoroutine[16]);
        this.pointerHandlers = mutableVector;
        this.pointerHandlersLock = mutableVector;
        this.dispatchingPointerHandlers = new MutableVector(new PointerEventHandlerCoroutine[16]);
    }

    public final void dispatchPointerEvent(PointerEvent pointerEvent, PointerEventPass pointerEventPass) {
        CancellableContinuationImpl cancellableContinuationImpl;
        CancellableContinuationImpl cancellableContinuationImpl2;
        synchronized (this.pointerHandlersLock) {
            MutableVector mutableVector = this.dispatchingPointerHandlers;
            mutableVector.addAll(mutableVector.size, this.pointerHandlers);
        }
        try {
            int ordinal = pointerEventPass.ordinal();
            if (ordinal != 0) {
                if (ordinal == 1) {
                    MutableVector mutableVector2 = this.dispatchingPointerHandlers;
                    int i = mutableVector2.size - 1;
                    Object[] objArr = mutableVector2.content;
                    if (i < objArr.length) {
                        while (i >= 0) {
                            PointerEventHandlerCoroutine pointerEventHandlerCoroutine = (PointerEventHandlerCoroutine) objArr[i];
                            if (pointerEventPass == pointerEventHandlerCoroutine.awaitPass && (cancellableContinuationImpl2 = pointerEventHandlerCoroutine.pointerAwaiter) != null) {
                                pointerEventHandlerCoroutine.pointerAwaiter = null;
                                cancellableContinuationImpl2.resumeWith(pointerEvent);
                            }
                            i--;
                        }
                    }
                    this.dispatchingPointerHandlers.clear();
                }
                if (ordinal != 2) {
                    throw new SerializationException();
                }
            }
            MutableVector mutableVector3 = this.dispatchingPointerHandlers;
            Object[] objArr2 = mutableVector3.content;
            int i2 = mutableVector3.size;
            for (int i3 = 0; i3 < i2; i3++) {
                PointerEventHandlerCoroutine pointerEventHandlerCoroutine2 = (PointerEventHandlerCoroutine) objArr2[i3];
                if (pointerEventPass == pointerEventHandlerCoroutine2.awaitPass && (cancellableContinuationImpl = pointerEventHandlerCoroutine2.pointerAwaiter) != null) {
                    pointerEventHandlerCoroutine2.pointerAwaiter = null;
                    cancellableContinuationImpl.resumeWith(pointerEvent);
                }
            }
            this.dispatchingPointerHandlers.clear();
        } catch (Throwable th) {
            this.dispatchingPointerHandlers.clear();
            throw th;
        }
    }

    @Override // androidx.compose.ui.unit.Density
    public final float getDensity() {
        return HitTestResultKt.requireLayoutNode(this).density.getDensity();
    }

    @Override // androidx.compose.ui.unit.Density
    public final float getFontScale() {
        return HitTestResultKt.requireLayoutNode(this).density.getFontScale();
    }

    @Override // androidx.compose.ui.node.PointerInputModifierNode
    /* renamed from: getTouchBoundsExpansion-RZrCHBk */
    public final long mo12getTouchBoundsExpansionRZrCHBk() {
        return HitTestResultKt.None;
    }

    @Override // androidx.compose.ui.node.PointerInputModifierNode
    public final /* synthetic */ boolean interceptOutOfBoundsChildEvents() {
        return false;
    }

    @Override // androidx.compose.ui.node.PointerInputModifierNode
    public final void onCancelPointerInput() {
        PointerEvent pointerEvent = this.lastPointerEvent;
        if (pointerEvent == null) {
            return;
        }
        List list = pointerEvent.changes;
        int size = list.size();
        for (int i = 0; i < size; i++) {
            if (((PointerInputChange) list.get(i)).pressed) {
                ArrayList arrayList = new ArrayList(list.size());
                int size2 = list.size();
                for (int i2 = 0; i2 < size2; i2++) {
                    PointerInputChange pointerInputChange = (PointerInputChange) list.get(i2);
                    long j = pointerInputChange.id;
                    long j2 = pointerInputChange.position;
                    long j3 = pointerInputChange.uptimeMillis;
                    float f = pointerInputChange.pressure;
                    boolean z = pointerInputChange.pressed;
                    arrayList.add(new PointerInputChange(j, j3, j2, false, f, j3, j2, z, z, pointerInputChange.type, 0L, 1.0f, 0L));
                }
                PointerEvent pointerEvent2 = new PointerEvent(arrayList, null);
                this.currentEvent = pointerEvent2;
                dispatchPointerEvent(pointerEvent2, PointerEventPass.Initial);
                dispatchPointerEvent(pointerEvent2, PointerEventPass.Main);
                dispatchPointerEvent(pointerEvent2, PointerEventPass.Final);
                this.lastPointerEvent = null;
                return;
            }
        }
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void onDensityChange() {
        resetPointerInputHandler();
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void onDetach() {
        resetPointerInputHandler();
    }

    @Override // androidx.compose.ui.node.PointerInputModifierNode
    /* renamed from: onPointerEvent-H0pRuoY */
    public final void mo17onPointerEventH0pRuoY(PointerEvent pointerEvent, PointerEventPass pointerEventPass, long j) {
        if (pointerEventPass == PointerEventPass.Initial) {
            this.currentEvent = pointerEvent;
        }
        if (this.pointerInputJob == null) {
            this.pointerInputJob = JobKt.launch$default(getCoroutineScope(), null, CoroutineStart.UNDISPATCHED, new SuspendingPointerInputModifierNodeImpl$onPointerEvent$1(this, null), 1);
        }
        dispatchPointerEvent(pointerEvent, pointerEventPass);
        List list = pointerEvent.changes;
        int size = list.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                pointerEvent = null;
                break;
            } else if (!AppKt.changedToUpIgnoreConsumed((PointerInputChange) list.get(i))) {
                break;
            } else {
                i++;
            }
        }
        this.lastPointerEvent = pointerEvent;
    }

    @Override // androidx.compose.ui.node.PointerInputModifierNode
    public final void onViewConfigurationChange() {
        resetPointerInputHandler();
    }

    public final void resetPointerInputHandler() {
        StandaloneCoroutine standaloneCoroutine = this.pointerInputJob;
        if (standaloneCoroutine != null) {
            standaloneCoroutine.cancelInternal(new PointerInputResetException("Pointer input was reset", 0));
            this.pointerInputJob = null;
        }
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: roundToPx--R2X_6o */
    public final int mo57roundToPxR2X_6o(long j) {
        return Math.round(mo62toPxR2X_6o(j));
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: roundToPx-0680j_4 */
    public final /* synthetic */ int mo58roundToPx0680j_4(float f) {
        return Owner.CC.m357$default$roundToPx0680j_4(this, f);
    }

    @Override // androidx.compose.ui.node.PointerInputModifierNode
    public final /* synthetic */ boolean sharePointerInputWithSiblings() {
        return false;
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toDp-GaN1DYA */
    public final /* synthetic */ float mo59toDpGaN1DYA(long j) {
        return Owner.CC.m358$default$toDpGaN1DYA(j, this);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toDp-u2uoSUM */
    public final float mo61toDpu2uoSUM(int i) {
        return i / getDensity();
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toPx--R2X_6o */
    public final /* synthetic */ float mo62toPxR2X_6o(long j) {
        return Owner.CC.m360$default$toPxR2X_6o(j, this);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toPx-0680j_4 */
    public final float mo63toPx0680j_4(float f) {
        return getDensity() * f;
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toSize-XkaWNTQ */
    public final /* synthetic */ long mo64toSizeXkaWNTQ(long j) {
        return Owner.CC.m361$default$toSizeXkaWNTQ(j, this);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toSp-kPz2Gy4 */
    public final long mo65toSpkPz2Gy4(float f) {
        return Owner.CC.m362$default$toSp0xMU5do(this, mo60toDpu2uoSUM(f));
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class PointerEventHandlerCoroutine implements Density, Continuation {
        public final /* synthetic */ SuspendingPointerInputModifierNodeImpl $$delegate_0;
        public final CancellableContinuationImpl completion;
        public CancellableContinuationImpl pointerAwaiter;
        public PointerEventPass awaitPass = PointerEventPass.Main;
        public final EmptyCoroutineContext context = EmptyCoroutineContext.INSTANCE;

        public PointerEventHandlerCoroutine(CancellableContinuationImpl cancellableContinuationImpl) {
            this.$$delegate_0 = SuspendingPointerInputModifierNodeImpl.this;
            this.completion = cancellableContinuationImpl;
        }

        public final Object awaitPointerEvent(PointerEventPass pointerEventPass, BaseContinuationImpl baseContinuationImpl) {
            CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(1, UStringsKt.intercepted(baseContinuationImpl));
            cancellableContinuationImpl.initCancellability();
            this.awaitPass = pointerEventPass;
            this.pointerAwaiter = cancellableContinuationImpl;
            return cancellableContinuationImpl.getResult();
        }

        @Override // kotlin.coroutines.Continuation
        public final CoroutineContext getContext() {
            return this.context;
        }

        @Override // androidx.compose.ui.unit.Density
        public final float getDensity() {
            return this.$$delegate_0.getDensity();
        }

        @Override // androidx.compose.ui.unit.Density
        public final float getFontScale() {
            return this.$$delegate_0.getFontScale();
        }

        @Override // kotlin.coroutines.Continuation
        public final void resumeWith(Object obj) {
            SuspendingPointerInputModifierNodeImpl suspendingPointerInputModifierNodeImpl = SuspendingPointerInputModifierNodeImpl.this;
            synchronized (suspendingPointerInputModifierNodeImpl.pointerHandlersLock) {
                suspendingPointerInputModifierNodeImpl.pointerHandlers.remove(this);
            }
            this.completion.resumeWith(obj);
        }

        @Override // androidx.compose.ui.unit.Density
        /* renamed from: roundToPx--R2X_6o */
        public final int mo57roundToPxR2X_6o(long j) {
            return this.$$delegate_0.mo57roundToPxR2X_6o(j);
        }

        @Override // androidx.compose.ui.unit.Density
        /* renamed from: roundToPx-0680j_4 */
        public final int mo58roundToPx0680j_4(float f) {
            SuspendingPointerInputModifierNodeImpl suspendingPointerInputModifierNodeImpl = this.$$delegate_0;
            suspendingPointerInputModifierNodeImpl.getClass();
            return Owner.CC.m357$default$roundToPx0680j_4(suspendingPointerInputModifierNodeImpl, f);
        }

        @Override // androidx.compose.ui.unit.Density
        /* renamed from: toDp-GaN1DYA */
        public final float mo59toDpGaN1DYA(long j) {
            SuspendingPointerInputModifierNodeImpl suspendingPointerInputModifierNodeImpl = this.$$delegate_0;
            suspendingPointerInputModifierNodeImpl.getClass();
            return Owner.CC.m358$default$toDpGaN1DYA(j, suspendingPointerInputModifierNodeImpl);
        }

        @Override // androidx.compose.ui.unit.Density
        /* renamed from: toDp-u2uoSUM */
        public final float mo60toDpu2uoSUM(float f) {
            return f / this.$$delegate_0.getDensity();
        }

        @Override // androidx.compose.ui.unit.Density
        /* renamed from: toPx--R2X_6o */
        public final float mo62toPxR2X_6o(long j) {
            SuspendingPointerInputModifierNodeImpl suspendingPointerInputModifierNodeImpl = this.$$delegate_0;
            suspendingPointerInputModifierNodeImpl.getClass();
            return Owner.CC.m360$default$toPxR2X_6o(j, suspendingPointerInputModifierNodeImpl);
        }

        @Override // androidx.compose.ui.unit.Density
        /* renamed from: toPx-0680j_4 */
        public final float mo63toPx0680j_4(float f) {
            return this.$$delegate_0.getDensity() * f;
        }

        @Override // androidx.compose.ui.unit.Density
        /* renamed from: toSize-XkaWNTQ */
        public final long mo64toSizeXkaWNTQ(long j) {
            SuspendingPointerInputModifierNodeImpl suspendingPointerInputModifierNodeImpl = this.$$delegate_0;
            suspendingPointerInputModifierNodeImpl.getClass();
            return Owner.CC.m361$default$toSizeXkaWNTQ(j, suspendingPointerInputModifierNodeImpl);
        }

        @Override // androidx.compose.ui.unit.Density
        /* renamed from: toSp-kPz2Gy4 */
        public final long mo65toSpkPz2Gy4(float f) {
            return this.$$delegate_0.mo65toSpkPz2Gy4(f);
        }

        @Override // androidx.compose.ui.unit.Density
        /* renamed from: toDp-u2uoSUM */
        public final float mo61toDpu2uoSUM(int i) {
            return this.$$delegate_0.mo61toDpu2uoSUM(i);
        }
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toDp-u2uoSUM */
    public final float mo60toDpu2uoSUM(float f) {
        return f / getDensity();
    }
}
