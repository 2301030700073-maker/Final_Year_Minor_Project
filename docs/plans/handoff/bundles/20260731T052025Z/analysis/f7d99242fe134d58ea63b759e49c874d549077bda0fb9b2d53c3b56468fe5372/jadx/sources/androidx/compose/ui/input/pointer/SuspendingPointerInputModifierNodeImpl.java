package androidx.compose.ui.input.pointer;

import androidx.compose.material3.ThumbNode$onAttach$1;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.node.NodeChainKt$fillVector$1;
import androidx.compose.ui.node.PointerInputModifierNode;
import androidx.compose.ui.node.TouchBoundsExpansion;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.unit.Density;
import java.util.ArrayList;
import java.util.List;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.SafeContinuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.BaseContinuationImpl;
import kotlin.jvm.functions.Function2;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.StandaloneCoroutine;
import org.jsoup.SerializationException;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SuspendingPointerInputModifierNodeImpl extends Modifier.Node implements PointerInputScope, Density, PointerInputModifierNode {
    public PointerInputEventHandler _pointerInputEventHandler;
    public long boundsSize;
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
        this.boundsSize = 0L;
    }

    public final Object awaitPointerEventScope(Function2 function2, Continuation continuation) {
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(1, AtomicFU.intercepted(continuation));
        cancellableContinuationImpl.initCancellability();
        PointerEventHandlerCoroutine pointerEventHandlerCoroutine = new PointerEventHandlerCoroutine(cancellableContinuationImpl);
        synchronized (this.pointerHandlersLock) {
            this.pointerHandlers.add(pointerEventHandlerCoroutine);
            new SafeContinuation(AtomicFU.intercepted(AtomicFU.createCoroutineUnintercepted(pointerEventHandlerCoroutine, pointerEventHandlerCoroutine, function2)), CoroutineSingletons.COROUTINE_SUSPENDED).resumeWith(Unit.INSTANCE);
        }
        cancellableContinuationImpl.invokeOnCancellation(new NodeChainKt$fillVector$1(12, pointerEventHandlerCoroutine));
        return cancellableContinuationImpl.getResult();
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
    public final long mo115getTouchBoundsExpansionRZrCHBk() {
        return TouchBoundsExpansion.None;
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
    public final void mo120onPointerEventH0pRuoY(PointerEvent pointerEvent, PointerEventPass pointerEventPass, long j) {
        this.boundsSize = j;
        if (pointerEventPass == PointerEventPass.Initial) {
            this.currentEvent = pointerEvent;
        }
        Continuation continuation = null;
        if (this.pointerInputJob == null) {
            this.pointerInputJob = JobKt.launch$default(getCoroutineScope(), null, CoroutineStart.UNDISPATCHED, new ThumbNode$onAttach$1(this, continuation, 27), 1);
        }
        dispatchPointerEvent(pointerEvent, pointerEventPass);
        List list = pointerEvent.changes;
        int size = list.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                pointerEvent = null;
                break;
            } else if (!PointerId.changedToUpIgnoreConsumed((PointerInputChange) list.get(i))) {
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
    /* renamed from: roundToPx-0680j_4 */
    public final /* synthetic */ int mo171roundToPx0680j_4(float f) {
        return Modifier.CC.m388$default$roundToPx0680j_4(this, f);
    }

    @Override // androidx.compose.ui.node.PointerInputModifierNode
    public final /* synthetic */ boolean sharePointerInputWithSiblings() {
        return false;
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toDp-GaN1DYA */
    public final /* synthetic */ float mo172toDpGaN1DYA(long j) {
        return Modifier.CC.m389$default$toDpGaN1DYA(j, this);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toDp-u2uoSUM */
    public final float mo174toDpu2uoSUM(int i) {
        return i / getDensity();
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toDpSize-k-rfVVM */
    public final /* synthetic */ long mo175toDpSizekrfVVM(long j) {
        return Modifier.CC.m390$default$toDpSizekrfVVM(j, this);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toPx--R2X_6o */
    public final /* synthetic */ float mo176toPxR2X_6o(long j) {
        return Modifier.CC.m391$default$toPxR2X_6o(j, this);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toPx-0680j_4 */
    public final float mo177toPx0680j_4(float f) {
        return getDensity() * f;
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toSize-XkaWNTQ */
    public final /* synthetic */ long mo178toSizeXkaWNTQ(long j) {
        return Modifier.CC.m392$default$toSizeXkaWNTQ(j, this);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toSp-0xMU5do */
    public final /* synthetic */ long mo179toSp0xMU5do(float f) {
        return Modifier.CC.m393$default$toSp0xMU5do(this, f);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toSp-kPz2Gy4 */
    public final long mo180toSpkPz2Gy4(float f) {
        return mo179toSp0xMU5do(mo173toDpu2uoSUM(f));
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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
            CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(1, AtomicFU.intercepted(baseContinuationImpl));
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

        /* renamed from: getExtendedTouchPadding-NH-jbRc, reason: not valid java name */
        public final long m569getExtendedTouchPaddingNHjbRc() {
            SuspendingPointerInputModifierNodeImpl suspendingPointerInputModifierNodeImpl = SuspendingPointerInputModifierNodeImpl.this;
            long m392$default$toSizeXkaWNTQ = Modifier.CC.m392$default$toSizeXkaWNTQ(HitTestResultKt.requireLayoutNode(suspendingPointerInputModifierNodeImpl).viewConfiguration.mo607getMinimumTouchTargetSizeMYxV2XQ(), suspendingPointerInputModifierNodeImpl);
            long j = suspendingPointerInputModifierNodeImpl.boundsSize;
            float max = Math.max(0.0f, Float.intBitsToFloat((int) (m392$default$toSizeXkaWNTQ >> 32)) - ((int) (j >> 32))) / 2.0f;
            float max2 = Math.max(0.0f, Float.intBitsToFloat((int) (m392$default$toSizeXkaWNTQ & 4294967295L)) - ((int) (j & 4294967295L))) / 2.0f;
            return (Float.floatToRawIntBits(max) << 32) | (Float.floatToRawIntBits(max2) & 4294967295L);
        }

        @Override // androidx.compose.ui.unit.Density
        public final float getFontScale() {
            return this.$$delegate_0.getFontScale();
        }

        public final ViewConfiguration getViewConfiguration() {
            return HitTestResultKt.requireLayoutNode(SuspendingPointerInputModifierNodeImpl.this).viewConfiguration;
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
        /* renamed from: roundToPx-0680j_4 */
        public final int mo171roundToPx0680j_4(float f) {
            return Modifier.CC.m388$default$roundToPx0680j_4(this.$$delegate_0, f);
        }

        @Override // androidx.compose.ui.unit.Density
        /* renamed from: toDp-GaN1DYA */
        public final float mo172toDpGaN1DYA(long j) {
            return Modifier.CC.m389$default$toDpGaN1DYA(j, this.$$delegate_0);
        }

        @Override // androidx.compose.ui.unit.Density
        /* renamed from: toDp-u2uoSUM */
        public final float mo173toDpu2uoSUM(float f) {
            return f / this.$$delegate_0.getDensity();
        }

        @Override // androidx.compose.ui.unit.Density
        /* renamed from: toDpSize-k-rfVVM */
        public final long mo175toDpSizekrfVVM(long j) {
            return Modifier.CC.m390$default$toDpSizekrfVVM(j, this.$$delegate_0);
        }

        @Override // androidx.compose.ui.unit.Density
        /* renamed from: toPx--R2X_6o */
        public final float mo176toPxR2X_6o(long j) {
            return Modifier.CC.m391$default$toPxR2X_6o(j, this.$$delegate_0);
        }

        @Override // androidx.compose.ui.unit.Density
        /* renamed from: toPx-0680j_4 */
        public final float mo177toPx0680j_4(float f) {
            return this.$$delegate_0.getDensity() * f;
        }

        @Override // androidx.compose.ui.unit.Density
        /* renamed from: toSize-XkaWNTQ */
        public final long mo178toSizeXkaWNTQ(long j) {
            return Modifier.CC.m392$default$toSizeXkaWNTQ(j, this.$$delegate_0);
        }

        @Override // androidx.compose.ui.unit.Density
        /* renamed from: toSp-0xMU5do */
        public final long mo179toSp0xMU5do(float f) {
            return Modifier.CC.m393$default$toSp0xMU5do(this.$$delegate_0, f);
        }

        @Override // androidx.compose.ui.unit.Density
        /* renamed from: toSp-kPz2Gy4 */
        public final long mo180toSpkPz2Gy4(float f) {
            return this.$$delegate_0.mo180toSpkPz2Gy4(f);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:18:0x0031  */
        /* JADX WARN: Removed duplicated region for block: B:9:0x001f  */
        /* JADX WARN: Type inference failed for: r12v0, types: [kotlin.jvm.functions.Function2] */
        /* JADX WARN: Type inference failed for: r9v0, types: [androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r9v1, types: [kotlinx.coroutines.Job] */
        /* JADX WARN: Type inference failed for: r9v4, types: [kotlinx.coroutines.Job] */
        /* JADX WARN: Type inference failed for: r9v8 */
        /* JADX WARN: Type inference failed for: r9v9 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object withTimeout(long r10, kotlin.jvm.functions.Function2 r12, kotlin.coroutines.jvm.internal.BaseContinuationImpl r13) {
            /*
                r9 = this;
                boolean r0 = r13 instanceof androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeout$1
                if (r0 == 0) goto L13
                r0 = r13
                androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeout$1 r0 = (androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeout$1) r0
                int r1 = r0.label
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = r1 & r2
                if (r3 == 0) goto L13
                int r1 = r1 - r2
                r0.label = r1
                goto L18
            L13:
                androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeout$1 r0 = new androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeout$1
                r0.<init>(r9, r13)
            L18:
                java.lang.Object r13 = r0.result
                int r1 = r0.label
                r2 = 1
                if (r1 == 0) goto L31
                if (r1 != r2) goto L2a
                kotlinx.coroutines.StandaloneCoroutine r9 = r0.L$0
                kotlin.ResultKt.throwOnFailure(r13)     // Catch: java.lang.Throwable -> L27
                goto L6c
            L27:
                r0 = move-exception
                r10 = r0
                goto L72
            L2a:
                java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
                okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r9)
                r9 = 0
                return r9
            L31:
                kotlin.ResultKt.throwOnFailure(r13)
                r3 = 0
                int r13 = (r10 > r3 ? 1 : (r10 == r3 ? 0 : -1))
                if (r13 > 0) goto L4b
                kotlinx.coroutines.CancellableContinuationImpl r13 = r9.pointerAwaiter
                if (r13 == 0) goto L4b
                androidx.compose.ui.input.pointer.PointerEventTimeoutCancellationException r1 = new androidx.compose.ui.input.pointer.PointerEventTimeoutCancellationException
                r1.<init>(r10)
                kotlin.Result$Failure r3 = new kotlin.Result$Failure
                r3.<init>(r1)
                r13.resumeWith(r3)
            L4b:
                androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl r13 = androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl.this
                kotlinx.coroutines.CoroutineScope r13 = r13.getCoroutineScope()
                androidx.compose.ui.viewinterop.AndroidViewHolder$onNestedPreFling$1 r3 = new androidx.compose.ui.viewinterop.AndroidViewHolder$onNestedPreFling$1
                r8 = 3
                r7 = 0
                r6 = r9
                r4 = r10
                r3.<init>(r4, r6, r7, r8)
                r9 = 3
                kotlinx.coroutines.StandaloneCoroutine r9 = kotlinx.coroutines.JobKt.launch$default(r13, r7, r7, r3, r9)
                r0.L$0 = r9     // Catch: java.lang.Throwable -> L27
                r0.label = r2     // Catch: java.lang.Throwable -> L27
                java.lang.Object r13 = r12.invoke(r6, r0)     // Catch: java.lang.Throwable -> L27
                kotlin.coroutines.intrinsics.CoroutineSingletons r10 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                if (r13 != r10) goto L6c
                return r10
            L6c:
                androidx.compose.ui.input.pointer.CancelTimeoutCancellationException r10 = androidx.compose.ui.input.pointer.CancelTimeoutCancellationException.INSTANCE
                r9.cancel(r10)
                return r13
            L72:
                androidx.compose.ui.input.pointer.CancelTimeoutCancellationException r11 = androidx.compose.ui.input.pointer.CancelTimeoutCancellationException.INSTANCE
                r9.cancel(r11)
                throw r10
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl.PointerEventHandlerCoroutine.withTimeout(long, kotlin.jvm.functions.Function2, kotlin.coroutines.jvm.internal.BaseContinuationImpl):java.lang.Object");
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x002c  */
        /* JADX WARN: Removed duplicated region for block: B:9:0x0020  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object withTimeoutOrNull(long r5, kotlin.jvm.functions.Function2 r7, kotlin.coroutines.jvm.internal.ContinuationImpl r8) {
            /*
                r4 = this;
                boolean r0 = r8 instanceof androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeoutOrNull$1
                if (r0 == 0) goto L13
                r0 = r8
                androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeoutOrNull$1 r0 = (androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeoutOrNull$1) r0
                int r1 = r0.label
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = r1 & r2
                if (r3 == 0) goto L13
                int r1 = r1 - r2
                r0.label = r1
                goto L18
            L13:
                androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeoutOrNull$1 r0 = new androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeoutOrNull$1
                r0.<init>(r4, r8)
            L18:
                java.lang.Object r8 = r0.result
                int r1 = r0.label
                r2 = 0
                r3 = 1
                if (r1 == 0) goto L2c
                if (r1 != r3) goto L26
                kotlin.ResultKt.throwOnFailure(r8)     // Catch: androidx.compose.ui.input.pointer.PointerEventTimeoutCancellationException -> L3b
                return r8
            L26:
                java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
                okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r4)
                return r2
            L2c:
                kotlin.ResultKt.throwOnFailure(r8)
                r0.label = r3     // Catch: androidx.compose.ui.input.pointer.PointerEventTimeoutCancellationException -> L3b
                java.lang.Object r4 = r4.withTimeout(r5, r7, r0)     // Catch: androidx.compose.ui.input.pointer.PointerEventTimeoutCancellationException -> L3b
                kotlin.coroutines.intrinsics.CoroutineSingletons r5 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                if (r4 != r5) goto L3a
                return r5
            L3a:
                return r4
            L3b:
                return r2
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl.PointerEventHandlerCoroutine.withTimeoutOrNull(long, kotlin.jvm.functions.Function2, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
        }

        @Override // androidx.compose.ui.unit.Density
        /* renamed from: toDp-u2uoSUM */
        public final float mo174toDpu2uoSUM(int i) {
            return this.$$delegate_0.mo174toDpu2uoSUM(i);
        }
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toDp-u2uoSUM */
    public final float mo173toDpu2uoSUM(float f) {
        return f / getDensity();
    }

    @Override // androidx.compose.ui.node.PointerInputModifierNode
    public final /* synthetic */ void interceptOutOfBoundsChildEvents() {
    }
}
