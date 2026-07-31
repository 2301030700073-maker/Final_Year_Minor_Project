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
import androidx.recyclerview.widget.RecyclerView;
import coil3.network.HttpException;
import java.util.ArrayList;
import java.util.List;
import kotlin.ExceptionsKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.SafeContinuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.BaseContinuationImpl;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.StandaloneCoroutine;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[PointerEventPass.values().length];
            try {
                iArr[PointerEventPass.Initial.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[PointerEventPass.Final.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[PointerEventPass.Main.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

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
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(1, ExceptionsKt.intercepted(continuation));
        cancellableContinuationImpl.initCancellability();
        PointerEventHandlerCoroutine pointerEventHandlerCoroutine = new PointerEventHandlerCoroutine(cancellableContinuationImpl);
        synchronized (this.pointerHandlersLock) {
            this.pointerHandlers.add(pointerEventHandlerCoroutine);
            new SafeContinuation(ExceptionsKt.intercepted(ExceptionsKt.createCoroutineUnintercepted(pointerEventHandlerCoroutine, pointerEventHandlerCoroutine, function2)), CoroutineSingletons.COROUTINE_SUSPENDED).resumeWith(Unit.INSTANCE);
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
            int i = WhenMappings.$EnumSwitchMapping$0[pointerEventPass.ordinal()];
            if (i == 1 || i == 2) {
                MutableVector mutableVector2 = this.dispatchingPointerHandlers;
                Object[] objArr = mutableVector2.content;
                int i2 = mutableVector2.size;
                for (int i3 = 0; i3 < i2; i3++) {
                    PointerEventHandlerCoroutine pointerEventHandlerCoroutine = (PointerEventHandlerCoroutine) objArr[i3];
                    if (pointerEventPass == pointerEventHandlerCoroutine.awaitPass && (cancellableContinuationImpl = pointerEventHandlerCoroutine.pointerAwaiter) != null) {
                        pointerEventHandlerCoroutine.pointerAwaiter = null;
                        cancellableContinuationImpl.resumeWith(pointerEvent);
                    }
                }
            } else {
                if (i != 3) {
                    throw new HttpException();
                }
                MutableVector mutableVector3 = this.dispatchingPointerHandlers;
                int i4 = mutableVector3.size - 1;
                Object[] objArr2 = mutableVector3.content;
                if (i4 < objArr2.length) {
                    while (i4 >= 0) {
                        PointerEventHandlerCoroutine pointerEventHandlerCoroutine2 = (PointerEventHandlerCoroutine) objArr2[i4];
                        if (pointerEventPass == pointerEventHandlerCoroutine2.awaitPass && (cancellableContinuationImpl2 = pointerEventHandlerCoroutine2.pointerAwaiter) != null) {
                            pointerEventHandlerCoroutine2.pointerAwaiter = null;
                            cancellableContinuationImpl2.resumeWith(pointerEvent);
                        }
                        i4--;
                    }
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
    public final long mo29getTouchBoundsExpansionRZrCHBk() {
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
    public final void mo34onPointerEventH0pRuoY(PointerEvent pointerEvent, PointerEventPass pointerEventPass, long j) {
        this.boundsSize = j;
        if (pointerEventPass == PointerEventPass.Initial) {
            this.currentEvent = pointerEvent;
        }
        Continuation continuation = null;
        if (this.pointerInputJob == null) {
            this.pointerInputJob = AwaitKt.launch$default(getCoroutineScope(), null, CoroutineStart.UNDISPATCHED, new ThumbNode$onAttach$1(14, this, continuation), 1);
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
            standaloneCoroutine.cancelInternal(new PointerInputResetException(0, "Pointer input was reset"));
            this.pointerInputJob = null;
        }
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: roundToPx--R2X_6o */
    public final int mo80roundToPxR2X_6o(long j) {
        return Math.round(mo86toPxR2X_6o(j));
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: roundToPx-0680j_4 */
    public final /* synthetic */ int mo81roundToPx0680j_4(float f) {
        return Modifier.CC.m334$default$roundToPx0680j_4(this, f);
    }

    @Override // androidx.compose.ui.node.PointerInputModifierNode
    public final boolean sharePointerInputWithSiblings() {
        return false;
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toDp-GaN1DYA */
    public final /* synthetic */ float mo82toDpGaN1DYA(long j) {
        return Modifier.CC.m335$default$toDpGaN1DYA(j, this);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toDp-u2uoSUM */
    public final float mo84toDpu2uoSUM(int i) {
        return i / getDensity();
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toDpSize-k-rfVVM */
    public final /* synthetic */ long mo85toDpSizekrfVVM(long j) {
        return Modifier.CC.m336$default$toDpSizekrfVVM(j, this);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toPx--R2X_6o */
    public final /* synthetic */ float mo86toPxR2X_6o(long j) {
        return Modifier.CC.m337$default$toPxR2X_6o(j, this);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toPx-0680j_4 */
    public final float mo87toPx0680j_4(float f) {
        return getDensity() * f;
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toSize-XkaWNTQ */
    public final /* synthetic */ long mo88toSizeXkaWNTQ(long j) {
        return Modifier.CC.m338$default$toSizeXkaWNTQ(j, this);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toSp-kPz2Gy4 */
    public final long mo89toSpkPz2Gy4(float f) {
        return Modifier.CC.m339$default$toSp0xMU5do(this, mo83toDpu2uoSUM(f));
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class PointerEventHandlerCoroutine implements Density, Continuation {
        public final /* synthetic */ SuspendingPointerInputModifierNodeImpl $$delegate_0;
        public PointerEventPass awaitPass = PointerEventPass.Main;
        public final CancellableContinuationImpl completion;
        public CancellableContinuationImpl pointerAwaiter;

        public PointerEventHandlerCoroutine(CancellableContinuationImpl cancellableContinuationImpl) {
            this.$$delegate_0 = SuspendingPointerInputModifierNodeImpl.this;
            this.completion = cancellableContinuationImpl;
        }

        public final Object awaitPointerEvent(PointerEventPass pointerEventPass, BaseContinuationImpl baseContinuationImpl) {
            CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(1, ExceptionsKt.intercepted(baseContinuationImpl));
            cancellableContinuationImpl.initCancellability();
            this.awaitPass = pointerEventPass;
            this.pointerAwaiter = cancellableContinuationImpl;
            return cancellableContinuationImpl.getResult();
        }

        @Override // kotlin.coroutines.Continuation
        public final CoroutineContext getContext() {
            return EmptyCoroutineContext.INSTANCE;
        }

        @Override // androidx.compose.ui.unit.Density
        public final float getDensity() {
            return this.$$delegate_0.getDensity();
        }

        /* renamed from: getExtendedTouchPadding-NH-jbRc, reason: not valid java name */
        public final long m510getExtendedTouchPaddingNHjbRc() {
            SuspendingPointerInputModifierNodeImpl suspendingPointerInputModifierNodeImpl = SuspendingPointerInputModifierNodeImpl.this;
            long m338$default$toSizeXkaWNTQ = Modifier.CC.m338$default$toSizeXkaWNTQ(HitTestResultKt.requireLayoutNode(suspendingPointerInputModifierNodeImpl).viewConfiguration.mo550getMinimumTouchTargetSizeMYxV2XQ(), suspendingPointerInputModifierNodeImpl);
            long j = suspendingPointerInputModifierNodeImpl.boundsSize;
            float max = Math.max(RecyclerView.DECELERATION_RATE, Float.intBitsToFloat((int) (m338$default$toSizeXkaWNTQ >> 32)) - ((int) (j >> 32))) / 2.0f;
            float max2 = Math.max(RecyclerView.DECELERATION_RATE, Float.intBitsToFloat((int) (m338$default$toSizeXkaWNTQ & 4294967295L)) - ((int) (j & 4294967295L))) / 2.0f;
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
        /* renamed from: roundToPx--R2X_6o */
        public final int mo80roundToPxR2X_6o(long j) {
            return this.$$delegate_0.mo80roundToPxR2X_6o(j);
        }

        @Override // androidx.compose.ui.unit.Density
        /* renamed from: roundToPx-0680j_4 */
        public final int mo81roundToPx0680j_4(float f) {
            return Modifier.CC.m334$default$roundToPx0680j_4(this.$$delegate_0, f);
        }

        @Override // androidx.compose.ui.unit.Density
        /* renamed from: toDp-GaN1DYA */
        public final float mo82toDpGaN1DYA(long j) {
            return Modifier.CC.m335$default$toDpGaN1DYA(j, this.$$delegate_0);
        }

        @Override // androidx.compose.ui.unit.Density
        /* renamed from: toDp-u2uoSUM */
        public final float mo83toDpu2uoSUM(float f) {
            return f / this.$$delegate_0.getDensity();
        }

        @Override // androidx.compose.ui.unit.Density
        /* renamed from: toDpSize-k-rfVVM */
        public final long mo85toDpSizekrfVVM(long j) {
            return Modifier.CC.m336$default$toDpSizekrfVVM(j, this.$$delegate_0);
        }

        @Override // androidx.compose.ui.unit.Density
        /* renamed from: toPx--R2X_6o */
        public final float mo86toPxR2X_6o(long j) {
            return Modifier.CC.m337$default$toPxR2X_6o(j, this.$$delegate_0);
        }

        @Override // androidx.compose.ui.unit.Density
        /* renamed from: toPx-0680j_4 */
        public final float mo87toPx0680j_4(float f) {
            return this.$$delegate_0.getDensity() * f;
        }

        @Override // androidx.compose.ui.unit.Density
        /* renamed from: toSize-XkaWNTQ */
        public final long mo88toSizeXkaWNTQ(long j) {
            return Modifier.CC.m338$default$toSizeXkaWNTQ(j, this.$$delegate_0);
        }

        @Override // androidx.compose.ui.unit.Density
        /* renamed from: toSp-kPz2Gy4 */
        public final long mo89toSpkPz2Gy4(float f) {
            return this.$$delegate_0.mo89toSpkPz2Gy4(f);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:18:0x0033  */
        /* JADX WARN: Removed duplicated region for block: B:9:0x0021  */
        /* JADX WARN: Type inference failed for: r10v0, types: [androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r10v1, types: [kotlinx.coroutines.Job] */
        /* JADX WARN: Type inference failed for: r10v4, types: [kotlinx.coroutines.Job] */
        /* JADX WARN: Type inference failed for: r10v8 */
        /* JADX WARN: Type inference failed for: r10v9 */
        /* JADX WARN: Type inference failed for: r13v0, types: [kotlin.jvm.functions.Function2] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object withTimeout(long r11, kotlin.jvm.functions.Function2 r13, kotlin.coroutines.jvm.internal.BaseContinuationImpl r14) {
            /*
                r10 = this;
                boolean r0 = r14 instanceof androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeout$1
                if (r0 == 0) goto L13
                r0 = r14
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
                r0.<init>(r10, r14)
            L18:
                java.lang.Object r14 = r0.result
                kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                int r2 = r0.label
                r3 = 1
                if (r2 == 0) goto L33
                if (r2 != r3) goto L2c
                kotlinx.coroutines.StandaloneCoroutine r10 = r0.L$0
                kotlin.ResultKt.throwOnFailure(r14)     // Catch: java.lang.Throwable -> L29
                goto L6c
            L29:
                r0 = move-exception
                r11 = r0
                goto L72
            L2c:
                java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
                okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r10)
                r10 = 0
                return r10
            L33:
                kotlin.ResultKt.throwOnFailure(r14)
                r4 = 0
                int r14 = (r11 > r4 ? 1 : (r11 == r4 ? 0 : -1))
                if (r14 > 0) goto L4d
                kotlinx.coroutines.CancellableContinuationImpl r14 = r10.pointerAwaiter
                if (r14 == 0) goto L4d
                androidx.compose.ui.input.pointer.PointerEventTimeoutCancellationException r2 = new androidx.compose.ui.input.pointer.PointerEventTimeoutCancellationException
                r2.<init>(r11)
                kotlin.Result$Failure r4 = new kotlin.Result$Failure
                r4.<init>(r2)
                r14.resumeWith(r4)
            L4d:
                androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl r14 = androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl.this
                kotlinx.coroutines.CoroutineScope r14 = r14.getCoroutineScope()
                org.wikipedia.talk.TalkTopicViewModel$undo$2 r4 = new org.wikipedia.talk.TalkTopicViewModel$undo$2
                r9 = 2
                r8 = 0
                r7 = r10
                r5 = r11
                r4.<init>(r5, r7, r8, r9)
                r10 = 3
                kotlinx.coroutines.StandaloneCoroutine r10 = kotlinx.coroutines.AwaitKt.launch$default(r14, r8, r8, r4, r10)
                r0.L$0 = r10     // Catch: java.lang.Throwable -> L29
                r0.label = r3     // Catch: java.lang.Throwable -> L29
                java.lang.Object r14 = r13.invoke(r7, r0)     // Catch: java.lang.Throwable -> L29
                if (r14 != r1) goto L6c
                return r1
            L6c:
                androidx.compose.ui.input.pointer.CancelTimeoutCancellationException r11 = androidx.compose.ui.input.pointer.CancelTimeoutCancellationException.INSTANCE
                r10.cancel(r11)
                return r14
            L72:
                androidx.compose.ui.input.pointer.CancelTimeoutCancellationException r12 = androidx.compose.ui.input.pointer.CancelTimeoutCancellationException.INSTANCE
                r10.cancel(r12)
                throw r11
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl.PointerEventHandlerCoroutine.withTimeout(long, kotlin.jvm.functions.Function2, kotlin.coroutines.jvm.internal.BaseContinuationImpl):java.lang.Object");
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x002e  */
        /* JADX WARN: Removed duplicated region for block: B:9:0x0022  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object withTimeoutOrNull(long r6, kotlin.jvm.functions.Function2 r8, kotlin.coroutines.jvm.internal.BaseContinuationImpl r9) {
            /*
                r5 = this;
                boolean r0 = r9 instanceof androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeoutOrNull$1
                if (r0 == 0) goto L13
                r0 = r9
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
                r0.<init>(r5, r9)
            L18:
                java.lang.Object r9 = r0.result
                kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                int r2 = r0.label
                r3 = 0
                r4 = 1
                if (r2 == 0) goto L2e
                if (r2 != r4) goto L28
                kotlin.ResultKt.throwOnFailure(r9)     // Catch: androidx.compose.ui.input.pointer.PointerEventTimeoutCancellationException -> L3b
                return r9
            L28:
                java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
                okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r5)
                return r3
            L2e:
                kotlin.ResultKt.throwOnFailure(r9)
                r0.label = r4     // Catch: androidx.compose.ui.input.pointer.PointerEventTimeoutCancellationException -> L3b
                java.lang.Object r5 = r5.withTimeout(r6, r8, r0)     // Catch: androidx.compose.ui.input.pointer.PointerEventTimeoutCancellationException -> L3b
                if (r5 != r1) goto L3a
                return r1
            L3a:
                return r5
            L3b:
                return r3
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl.PointerEventHandlerCoroutine.withTimeoutOrNull(long, kotlin.jvm.functions.Function2, kotlin.coroutines.jvm.internal.BaseContinuationImpl):java.lang.Object");
        }

        @Override // androidx.compose.ui.unit.Density
        /* renamed from: toDp-u2uoSUM */
        public final float mo84toDpu2uoSUM(int i) {
            return this.$$delegate_0.mo84toDpu2uoSUM(i);
        }
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toDp-u2uoSUM */
    public final float mo83toDpu2uoSUM(float f) {
        return f / getDensity();
    }

    @Override // androidx.compose.ui.node.PointerInputModifierNode
    public final void interceptOutOfBoundsChildEvents() {
    }
}
