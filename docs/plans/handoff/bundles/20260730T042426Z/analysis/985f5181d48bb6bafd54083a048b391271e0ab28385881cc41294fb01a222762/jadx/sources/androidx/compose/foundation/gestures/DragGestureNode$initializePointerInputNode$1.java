package androidx.compose.foundation.gestures;

import androidx.compose.foundation.gestures.DragEvent;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.input.pointer.util.VelocityTracker;
import androidx.compose.ui.input.pointer.util.VelocityTrackerKt;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNodeKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.unit.VelocityKt;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.channels.Channel;
import kotlinx.coroutines.channels.ChannelKt;
import kotlinx.coroutines.channels.ChannelResult;

/* compiled from: Draggable.kt */
/* loaded from: classes.dex */
final class DragGestureNode$initializePointerInputNode$1 extends SuspendLambda implements Function2 {
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ DragGestureNode this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DragGestureNode$initializePointerInputNode$1(DragGestureNode dragGestureNode, Continuation continuation) {
        super(2, continuation);
        this.this$0 = dragGestureNode;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        DragGestureNode$initializePointerInputNode$1 dragGestureNode$initializePointerInputNode$1 = new DragGestureNode$initializePointerInputNode$1(this.this$0, continuation);
        dragGestureNode$initializePointerInputNode$1.L$0 = obj;
        return dragGestureNode$initializePointerInputNode$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
        return ((DragGestureNode$initializePointerInputNode$1) create(pointerInputScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            PointerInputScope pointerInputScope = (PointerInputScope) this.L$0;
            final VelocityTracker velocityTracker = new VelocityTracker();
            final DragGestureNode dragGestureNode = this.this$0;
            Function3 function3 = new Function3() { // from class: androidx.compose.foundation.gestures.DragGestureNode$initializePointerInputNode$1$onDragStart$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(3);
                }

                @Override // kotlin.jvm.functions.Function3
                public /* bridge */ /* synthetic */ Object invoke(Object obj2, Object obj3, Object obj4) {
                    m193invoke0AR0LA0((PointerInputChange) obj2, (PointerInputChange) obj3, ((Offset) obj4).m1176unboximpl());
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke-0AR0LA0, reason: not valid java name */
                public final void m193invoke0AR0LA0(PointerInputChange pointerInputChange, PointerInputChange pointerInputChange2, long j) {
                    boolean z;
                    Channel channel;
                    Channel channel2;
                    if (((Boolean) DragGestureNode.this.getCanDrag().invoke(pointerInputChange)).booleanValue()) {
                        z = DragGestureNode.this.isListeningForEvents;
                        if (!z) {
                            channel2 = DragGestureNode.this.channel;
                            if (channel2 == null) {
                                DragGestureNode.this.channel = ChannelKt.Channel$default(Integer.MAX_VALUE, null, null, 6, null);
                            }
                            DragGestureNode.this.startListeningForEvents();
                        }
                        VelocityTrackerKt.addPointerInputChange(velocityTracker, pointerInputChange);
                        long m1171minusMKHz9U = Offset.m1171minusMKHz9U(pointerInputChange2.m1690getPositionF1C5BW0(), j);
                        channel = DragGestureNode.this.channel;
                        if (channel != null) {
                            ChannelResult.m2834boximpl(channel.mo2833trySendJP2dKIU(new DragEvent.DragStarted(m1171minusMKHz9U, null)));
                        }
                    }
                }
            };
            final DragGestureNode dragGestureNode2 = this.this$0;
            Function1 function1 = new Function1() { // from class: androidx.compose.foundation.gestures.DragGestureNode$initializePointerInputNode$1$onDragEnd$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Object invoke(Object obj2) {
                    invoke((PointerInputChange) obj2);
                    return Unit.INSTANCE;
                }

                public final void invoke(PointerInputChange pointerInputChange) {
                    Channel channel;
                    long m199toValidVelocityTH1AsA0;
                    VelocityTrackerKt.addPointerInputChange(VelocityTracker.this, pointerInputChange);
                    float maximumFlingVelocity = ((ViewConfiguration) CompositionLocalConsumerModifierNodeKt.currentValueOf(dragGestureNode2, CompositionLocalsKt.getLocalViewConfiguration())).getMaximumFlingVelocity();
                    long m1729calculateVelocityAH228Gc = VelocityTracker.this.m1729calculateVelocityAH228Gc(VelocityKt.Velocity(maximumFlingVelocity, maximumFlingVelocity));
                    VelocityTracker.this.resetTracking();
                    channel = dragGestureNode2.channel;
                    if (channel != null) {
                        m199toValidVelocityTH1AsA0 = DraggableKt.m199toValidVelocityTH1AsA0(m1729calculateVelocityAH228Gc);
                        ChannelResult.m2834boximpl(channel.mo2833trySendJP2dKIU(new DragEvent.DragStopped(m199toValidVelocityTH1AsA0, null)));
                    }
                }
            };
            final DragGestureNode dragGestureNode3 = this.this$0;
            Function0 function0 = new Function0() { // from class: androidx.compose.foundation.gestures.DragGestureNode$initializePointerInputNode$1$onDragCancel$1
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Object invoke() {
                    m192invoke();
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: collision with other method in class */
                public final void m192invoke() {
                    Channel channel;
                    channel = DragGestureNode.this.channel;
                    if (channel != null) {
                        ChannelResult.m2834boximpl(channel.mo2833trySendJP2dKIU(DragEvent.DragCancelled.INSTANCE));
                    }
                }
            };
            final DragGestureNode dragGestureNode4 = this.this$0;
            Function0 function02 = new Function0() { // from class: androidx.compose.foundation.gestures.DragGestureNode$initializePointerInputNode$1$shouldAwaitTouchSlop$1
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public final Boolean invoke() {
                    return Boolean.valueOf(!DragGestureNode.this.startDragImmediately());
                }
            };
            final DragGestureNode dragGestureNode5 = this.this$0;
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.this$0, pointerInputScope, function3, function1, function0, function02, new Function2() { // from class: androidx.compose.foundation.gestures.DragGestureNode$initializePointerInputNode$1$onDrag$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Object invoke(Object obj2, Object obj3) {
                    m191invokeUv8p0NA((PointerInputChange) obj2, ((Offset) obj3).m1176unboximpl());
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke-Uv8p0NA, reason: not valid java name */
                public final void m191invokeUv8p0NA(PointerInputChange pointerInputChange, long j) {
                    Channel channel;
                    VelocityTrackerKt.addPointerInputChange(VelocityTracker.this, pointerInputChange);
                    channel = dragGestureNode5.channel;
                    if (channel != null) {
                        ChannelResult.m2834boximpl(channel.mo2833trySendJP2dKIU(new DragEvent.DragDelta(j, null)));
                    }
                }
            }, null);
            this.label = 1;
            if (CoroutineScopeKt.coroutineScope(anonymousClass1, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
        }
        return Unit.INSTANCE;
    }

    /* compiled from: Draggable.kt */
    /* renamed from: androidx.compose.foundation.gestures.DragGestureNode$initializePointerInputNode$1$1, reason: invalid class name */
    static final class AnonymousClass1 extends SuspendLambda implements Function2 {
        final /* synthetic */ PointerInputScope $$this$SuspendingPointerInputModifierNode;
        final /* synthetic */ Function2 $onDrag;
        final /* synthetic */ Function0 $onDragCancel;
        final /* synthetic */ Function1 $onDragEnd;
        final /* synthetic */ Function3 $onDragStart;
        final /* synthetic */ Function0 $shouldAwaitTouchSlop;
        private /* synthetic */ Object L$0;
        int label;
        final /* synthetic */ DragGestureNode this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(DragGestureNode dragGestureNode, PointerInputScope pointerInputScope, Function3 function3, Function1 function1, Function0 function0, Function0 function02, Function2 function2, Continuation continuation) {
            super(2, continuation);
            this.this$0 = dragGestureNode;
            this.$$this$SuspendingPointerInputModifierNode = pointerInputScope;
            this.$onDragStart = function3;
            this.$onDragEnd = function1;
            this.$onDragCancel = function0;
            this.$shouldAwaitTouchSlop = function02;
            this.$onDrag = function2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.this$0, this.$$this$SuspendingPointerInputModifierNode, this.$onDragStart, this.$onDragEnd, this.$onDragCancel, this.$shouldAwaitTouchSlop, this.$onDrag, continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:14:0x004e  */
        /* JADX WARN: Removed duplicated region for block: B:17:0x0060  */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r13) {
            /*
                r12 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r1 = r12.label
                r2 = 1
                if (r1 == 0) goto L1d
                if (r1 != r2) goto L15
                java.lang.Object r0 = r12.L$0
                kotlinx.coroutines.CoroutineScope r0 = (kotlinx.coroutines.CoroutineScope) r0
                kotlin.ResultKt.throwOnFailure(r13)     // Catch: java.util.concurrent.CancellationException -> L13
                goto L5d
            L13:
                r13 = move-exception
                goto L46
            L15:
                java.lang.IllegalStateException r13 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r13.<init>(r0)
                throw r13
            L1d:
                kotlin.ResultKt.throwOnFailure(r13)
                java.lang.Object r13 = r12.L$0
                kotlinx.coroutines.CoroutineScope r13 = (kotlinx.coroutines.CoroutineScope) r13
                androidx.compose.foundation.gestures.DragGestureNode r1 = r12.this$0     // Catch: java.util.concurrent.CancellationException -> L42
                androidx.compose.foundation.gestures.Orientation r8 = androidx.compose.foundation.gestures.DragGestureNode.access$getOrientationLock$p(r1)     // Catch: java.util.concurrent.CancellationException -> L42
                androidx.compose.ui.input.pointer.PointerInputScope r3 = r12.$$this$SuspendingPointerInputModifierNode     // Catch: java.util.concurrent.CancellationException -> L42
                kotlin.jvm.functions.Function3 r4 = r12.$onDragStart     // Catch: java.util.concurrent.CancellationException -> L42
                kotlin.jvm.functions.Function1 r5 = r12.$onDragEnd     // Catch: java.util.concurrent.CancellationException -> L42
                kotlin.jvm.functions.Function0 r6 = r12.$onDragCancel     // Catch: java.util.concurrent.CancellationException -> L42
                kotlin.jvm.functions.Function0 r7 = r12.$shouldAwaitTouchSlop     // Catch: java.util.concurrent.CancellationException -> L42
                kotlin.jvm.functions.Function2 r9 = r12.$onDrag     // Catch: java.util.concurrent.CancellationException -> L42
                r12.L$0 = r13     // Catch: java.util.concurrent.CancellationException -> L42
                r12.label = r2     // Catch: java.util.concurrent.CancellationException -> L42
                r10 = r12
                java.lang.Object r13 = androidx.compose.foundation.gestures.DragGestureDetectorKt.detectDragGestures(r3, r4, r5, r6, r7, r8, r9, r10)     // Catch: java.util.concurrent.CancellationException -> L42
                if (r13 != r0) goto L5d
                return r0
            L42:
                r0 = move-exception
                r11 = r0
                r0 = r13
                r13 = r11
            L46:
                androidx.compose.foundation.gestures.DragGestureNode r1 = r12.this$0
                kotlinx.coroutines.channels.Channel r1 = androidx.compose.foundation.gestures.DragGestureNode.access$getChannel$p(r1)
                if (r1 == 0) goto L57
                androidx.compose.foundation.gestures.DragEvent$DragCancelled r2 = androidx.compose.foundation.gestures.DragEvent.DragCancelled.INSTANCE
                java.lang.Object r1 = r1.mo2833trySendJP2dKIU(r2)
                kotlinx.coroutines.channels.ChannelResult.m2834boximpl(r1)
            L57:
                boolean r0 = kotlinx.coroutines.CoroutineScopeKt.isActive(r0)
                if (r0 == 0) goto L60
            L5d:
                kotlin.Unit r13 = kotlin.Unit.INSTANCE
                return r13
            L60:
                throw r13
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.DragGestureNode$initializePointerInputNode$1.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }
}
