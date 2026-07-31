package androidx.compose.foundation.pager;

import androidx.compose.foundation.AndroidEdgeEffectOverscrollEffect;
import androidx.compose.foundation.AndroidEdgeEffectOverscrollEffect$pointerInputNode$1$1;
import androidx.compose.foundation.gestures.ScrollableKt;
import androidx.compose.ui.input.pointer.PointerInputEventHandler;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.JobKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class LazyLayoutPagerKt$dragDirectionDetector$1 implements PointerInputEventHandler {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object $state;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    /* renamed from: androidx.compose.foundation.pager.LazyLayoutPagerKt$dragDirectionDetector$1$1, reason: invalid class name */
    public final class AnonymousClass1 extends SuspendLambda implements Function2 {
        final /* synthetic */ PagerState $state;
        final /* synthetic */ PointerInputScope $this_pointerInput;
        int label;

        /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
        /* renamed from: androidx.compose.foundation.pager.LazyLayoutPagerKt$dragDirectionDetector$1$1$1, reason: invalid class name and collision with other inner class name */
        public final class C00011 extends RestrictedSuspendLambda implements Function2 {
            final /* synthetic */ PagerState $state;
            private /* synthetic */ Object L$0;
            Object L$1;
            Object L$2;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C00011(PagerState pagerState, Continuation continuation) {
                super(2, continuation);
                this.$state = pagerState;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                C00011 c00011 = new C00011(this.$state, continuation);
                c00011.L$0 = obj;
                return c00011;
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return ((C00011) create((SuspendingPointerInputModifierNodeImpl.PointerEventHandlerCoroutine) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
            }

            /* JADX WARN: Code restructure failed: missing block: B:28:0x003e, code lost:
            
                if (r13 == r6) goto L17;
             */
            /* JADX WARN: Removed duplicated region for block: B:14:0x0054  */
            /* JADX WARN: Removed duplicated region for block: B:19:0x0090  */
            /* JADX WARN: Removed duplicated region for block: B:21:0x0084 A[SYNTHETIC] */
            /* JADX WARN: Removed duplicated region for block: B:8:0x0072  */
            /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0063 -> B:6:0x0067). Please report as a decompilation issue!!! */
            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final java.lang.Object invokeSuspend(java.lang.Object r13) {
                /*
                    r12 = this;
                    int r0 = r12.label
                    r1 = 0
                    androidx.compose.ui.input.pointer.PointerEventPass r2 = androidx.compose.ui.input.pointer.PointerEventPass.Initial
                    r3 = 2
                    r4 = 0
                    r5 = 1
                    kotlin.coroutines.intrinsics.CoroutineSingletons r6 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                    if (r0 == 0) goto L2e
                    if (r0 == r5) goto L26
                    if (r0 != r3) goto L20
                    java.lang.Object r0 = r12.L$2
                    androidx.compose.ui.input.pointer.PointerInputChange r0 = (androidx.compose.ui.input.pointer.PointerInputChange) r0
                    java.lang.Object r1 = r12.L$1
                    androidx.compose.ui.input.pointer.PointerInputChange r1 = (androidx.compose.ui.input.pointer.PointerInputChange) r1
                    java.lang.Object r5 = r12.L$0
                    androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine r5 = (androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl.PointerEventHandlerCoroutine) r5
                    kotlin.ResultKt.throwOnFailure(r13)
                    goto L67
                L20:
                    java.lang.String r12 = "call to 'resume' before 'invoke' with coroutine"
                    okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1.m$2(r12)
                    return r1
                L26:
                    java.lang.Object r0 = r12.L$0
                    androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine r0 = (androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl.PointerEventHandlerCoroutine) r0
                    kotlin.ResultKt.throwOnFailure(r13)
                    goto L41
                L2e:
                    kotlin.ResultKt.throwOnFailure(r13)
                    java.lang.Object r13 = r12.L$0
                    r0 = r13
                    androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine r0 = (androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl.PointerEventHandlerCoroutine) r0
                    r12.L$0 = r0
                    r12.label = r5
                    java.lang.Object r13 = androidx.compose.foundation.gestures.TapGestureDetectorKt.awaitFirstDown(r0, r4, r2, r12)
                    if (r13 != r6) goto L41
                    goto L62
                L41:
                    androidx.compose.ui.input.pointer.PointerInputChange r13 = (androidx.compose.ui.input.pointer.PointerInputChange) r13
                    androidx.compose.foundation.pager.PagerState r5 = r12.$state
                    androidx.compose.runtime.ParcelableSnapshotMutableState r5 = r5.upDownDifference$delegate
                    androidx.compose.ui.geometry.Offset r7 = new androidx.compose.ui.geometry.Offset
                    r8 = 0
                    r7.<init>(r8)
                    r5.setValue(r7)
                    r5 = r0
                L52:
                    if (r1 != 0) goto L90
                    r12.L$0 = r5
                    r12.L$1 = r13
                    r12.L$2 = r1
                    r12.label = r3
                    java.lang.Object r0 = r5.awaitPointerEvent(r2, r12)
                    if (r0 != r6) goto L63
                L62:
                    return r6
                L63:
                    r11 = r1
                    r1 = r13
                    r13 = r0
                    r0 = r11
                L67:
                    androidx.compose.ui.input.pointer.PointerEvent r13 = (androidx.compose.ui.input.pointer.PointerEvent) r13
                    java.util.List r7 = r13.changes
                    int r8 = r7.size()
                    r9 = r4
                L70:
                    if (r9 >= r8) goto L84
                    java.lang.Object r10 = r7.get(r9)
                    androidx.compose.ui.input.pointer.PointerInputChange r10 = (androidx.compose.ui.input.pointer.PointerInputChange) r10
                    boolean r10 = net.newpipe.app.AppKt.changedToUp(r10)
                    if (r10 != 0) goto L81
                    r13 = r1
                    r1 = r0
                    goto L52
                L81:
                    int r9 = r9 + 1
                    goto L70
                L84:
                    java.util.List r13 = r13.changes
                    java.lang.Object r13 = r13.get(r4)
                    androidx.compose.ui.input.pointer.PointerInputChange r13 = (androidx.compose.ui.input.pointer.PointerInputChange) r13
                    r11 = r1
                    r1 = r13
                    r13 = r11
                    goto L52
                L90:
                    androidx.compose.foundation.pager.PagerState r12 = r12.$state
                    long r0 = r1.position
                    long r2 = r13.position
                    long r0 = androidx.compose.ui.geometry.Offset.m199minusMKHz9U(r0, r2)
                    androidx.compose.runtime.ParcelableSnapshotMutableState r12 = r12.upDownDifference$delegate
                    androidx.compose.ui.geometry.Offset r13 = new androidx.compose.ui.geometry.Offset
                    r13.<init>(r0)
                    r12.setValue(r13)
                    kotlin.Unit r12 = kotlin.Unit.INSTANCE
                    return r12
                */
                throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.pager.LazyLayoutPagerKt$dragDirectionDetector$1.AnonymousClass1.C00011.invokeSuspend(java.lang.Object):java.lang.Object");
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(PointerInputScope pointerInputScope, PagerState pagerState, Continuation continuation) {
            super(2, continuation);
            this.$this_pointerInput = pointerInputScope;
            this.$state = pagerState;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new AnonymousClass1(this.$this_pointerInput, this.$state, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                PointerInputScope pointerInputScope = this.$this_pointerInput;
                C00011 c00011 = new C00011(this.$state, null);
                this.label = 1;
                Object awaitEachGesture = ScrollableKt.awaitEachGesture(pointerInputScope, c00011, this);
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                if (awaitEachGesture == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i != 1) {
                    _UtilJvmKt$$ExternalSyntheticLambda1.m$2("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    public /* synthetic */ LazyLayoutPagerKt$dragDirectionDetector$1(Object obj, int i) {
        this.$r8$classId = i;
        this.$state = obj;
    }

    @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
    public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        Object obj = this.$state;
        switch (i) {
            case 0:
                Object coroutineScope = JobKt.coroutineScope(new AnonymousClass1(pointerInputScope, (DefaultPagerState) obj, null), continuation);
                return coroutineScope == coroutineSingletons ? coroutineScope : unit;
            default:
                Object awaitEachGesture = ScrollableKt.awaitEachGesture(pointerInputScope, new AndroidEdgeEffectOverscrollEffect$pointerInputNode$1$1((AndroidEdgeEffectOverscrollEffect) obj, null), continuation);
                return awaitEachGesture == coroutineSingletons ? awaitEachGesture : unit;
        }
    }
}
