package androidx.compose.foundation.relocation;

import androidx.compose.ui.layout.LayoutCoordinates;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.JobKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class BringIntoViewResponderNode$bringIntoView$2 extends SuspendLambda implements Function2 {
    final /* synthetic */ Function0 $boundsProvider;
    final /* synthetic */ LayoutCoordinates $childCoordinates;
    final /* synthetic */ Function0 $parentRect;
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ BringIntoViewResponderNode this$0;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    /* renamed from: androidx.compose.foundation.relocation.BringIntoViewResponderNode$bringIntoView$2$1, reason: invalid class name */
    public final class AnonymousClass1 extends SuspendLambda implements Function2 {
        final /* synthetic */ Function0 $boundsProvider;
        final /* synthetic */ LayoutCoordinates $childCoordinates;
        int label;
        final /* synthetic */ BringIntoViewResponderNode this$0;

        /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
        /* renamed from: androidx.compose.foundation.relocation.BringIntoViewResponderNode$bringIntoView$2$1$1, reason: invalid class name and collision with other inner class name */
        public final /* synthetic */ class C00021 extends FunctionReferenceImpl implements Function0 {
            final /* synthetic */ Function0 $boundsProvider;
            final /* synthetic */ LayoutCoordinates $childCoordinates;
            final /* synthetic */ BringIntoViewResponderNode this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C00021(BringIntoViewResponderNode bringIntoViewResponderNode, LayoutCoordinates layoutCoordinates, Function0 function0) {
                super(0, Intrinsics.Kotlin.class, "localRect", "bringIntoView$localRect(Landroidx/compose/foundation/relocation/BringIntoViewResponderNode;Landroidx/compose/ui/layout/LayoutCoordinates;Lkotlin/jvm/functions/Function0;)Landroidx/compose/ui/geometry/Rect;", 0);
                this.this$0 = bringIntoViewResponderNode;
                this.$childCoordinates = layoutCoordinates;
                this.$boundsProvider = function0;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return BringIntoViewResponderNode.bringIntoView$localRect(this.this$0, this.$childCoordinates, this.$boundsProvider);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(BringIntoViewResponderNode bringIntoViewResponderNode, LayoutCoordinates layoutCoordinates, Function0 function0, Continuation continuation) {
            super(2, continuation);
            this.this$0 = bringIntoViewResponderNode;
            this.$childCoordinates = layoutCoordinates;
            this.$boundsProvider = function0;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new AnonymousClass1(this.this$0, this.$childCoordinates, this.$boundsProvider, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code restructure failed: missing block: B:17:0x00ce, code lost:
        
            if (r12 == r13) goto L41;
         */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r13) {
            /*
                r12 = this;
                int r0 = r12.label
                kotlin.Unit r1 = kotlin.Unit.INSTANCE
                r2 = 1
                if (r0 == 0) goto L14
                if (r0 != r2) goto Ld
                kotlin.ResultKt.throwOnFailure(r13)
                return r1
            Ld:
                java.lang.String r12 = "call to 'resume' before 'invoke' with coroutine"
                okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1.m$2(r12)
                r12 = 0
                return r12
            L14:
                kotlin.ResultKt.throwOnFailure(r13)
                androidx.compose.foundation.relocation.BringIntoViewResponderNode r13 = r12.this$0
                androidx.compose.foundation.gestures.ContentInViewNode r3 = r13.responder
                androidx.compose.foundation.relocation.BringIntoViewResponderNode$bringIntoView$2$1$1 r0 = new androidx.compose.foundation.relocation.BringIntoViewResponderNode$bringIntoView$2$1$1
                androidx.compose.ui.layout.LayoutCoordinates r4 = r12.$childCoordinates
                kotlin.jvm.functions.Function0 r5 = r12.$boundsProvider
                r0.<init>(r13, r4, r5)
                r12.label = r2
                r3.getClass()
                java.lang.Object r13 = r0.invoke()
                r4 = r13
                androidx.compose.ui.geometry.Rect r4 = (androidx.compose.ui.geometry.Rect) r4
                kotlin.coroutines.intrinsics.CoroutineSingletons r13 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                if (r4 == 0) goto Ld1
                r7 = 0
                r9 = 3
                r5 = 0
                boolean r4 = androidx.compose.foundation.gestures.ContentInViewNode.m37isMaxVisibleEQwtKw$default(r3, r4, r5, r7, r9)
                if (r4 != 0) goto Ld1
                kotlinx.coroutines.CancellableContinuationImpl r4 = new kotlinx.coroutines.CancellableContinuationImpl
                kotlin.coroutines.Continuation r12 = kotlin.text.UStringsKt.intercepted(r12)
                r4.<init>(r2, r12)
                r4.initCancellability()
                androidx.compose.foundation.gestures.ContentInViewNode$Request r12 = new androidx.compose.foundation.gestures.ContentInViewNode$Request
                r12.<init>(r0, r4)
                androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsInfo r5 = r3.bringIntoViewRequests
                androidx.compose.runtime.collection.MutableVector r6 = r5.beyondBoundsItems
                java.lang.Object r0 = r0.invoke()
                androidx.compose.ui.geometry.Rect r0 = (androidx.compose.ui.geometry.Rect) r0
                if (r0 != 0) goto L60
                r4.resumeWith(r1)
                goto Lca
            L60:
                androidx.compose.runtime.Recomposer$$ExternalSyntheticLambda4 r7 = new androidx.compose.runtime.Recomposer$$ExternalSyntheticLambda4
                r8 = 11
                r7.<init>(r5, r12, r8)
                r4.invokeOnCancellation(r7)
                int r5 = r6.size
                r7 = 0
                kotlin.ranges.IntRange r5 = kotlin.ranges.RangesKt.until(r7, r5)
                int r8 = r5.first
                int r5 = r5.last
                if (r8 > r5) goto Lbe
            L77:
                java.lang.Object[] r9 = r6.content
                r9 = r9[r5]
                androidx.compose.foundation.gestures.ContentInViewNode$Request r9 = (androidx.compose.foundation.gestures.ContentInViewNode.Request) r9
                androidx.compose.foundation.relocation.BringIntoViewResponderNode$bringIntoView$2$1$1 r9 = r9.currentBounds
                java.lang.Object r9 = r9.invoke()
                androidx.compose.ui.geometry.Rect r9 = (androidx.compose.ui.geometry.Rect) r9
                if (r9 != 0) goto L88
                goto Lb9
            L88:
                androidx.compose.ui.geometry.Rect r10 = r0.intersect(r9)
                boolean r11 = r10.equals(r0)
                if (r11 == 0) goto L97
                int r5 = r5 + r2
                r6.add(r5, r12)
                goto Lc1
            L97:
                boolean r9 = r10.equals(r9)
                if (r9 != 0) goto Lb9
                java.util.concurrent.CancellationException r9 = new java.util.concurrent.CancellationException
                java.lang.String r10 = "bringIntoView call interrupted by a newer, non-overlapping call"
                r9.<init>(r10)
                int r10 = r6.size
                int r10 = r10 - r2
                if (r10 > r5) goto Lb9
            La9:
                java.lang.Object[] r11 = r6.content
                r11 = r11[r5]
                androidx.compose.foundation.gestures.ContentInViewNode$Request r11 = (androidx.compose.foundation.gestures.ContentInViewNode.Request) r11
                kotlinx.coroutines.CancellableContinuationImpl r11 = r11.continuation
                r11.cancel(r9)
                if (r10 == r5) goto Lb9
                int r10 = r10 + 1
                goto La9
            Lb9:
                if (r5 == r8) goto Lbe
                int r5 = r5 + (-1)
                goto L77
            Lbe:
                r6.add(r7, r12)
            Lc1:
                boolean r12 = r3.isAnimationRunning
                if (r12 != 0) goto Lca
                r5 = 0
                r3.m39launchAnimationgyyYBs(r5)
            Lca:
                java.lang.Object r12 = r4.getResult()
                if (r12 != r13) goto Ld1
                goto Ld2
            Ld1:
                r12 = r1
            Ld2:
                if (r12 != r13) goto Ld5
                return r13
            Ld5:
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.relocation.BringIntoViewResponderNode$bringIntoView$2.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    /* renamed from: androidx.compose.foundation.relocation.BringIntoViewResponderNode$bringIntoView$2$2, reason: invalid class name */
    public final class AnonymousClass2 extends SuspendLambda implements Function2 {
        final /* synthetic */ Function0 $parentRect;
        int label;
        final /* synthetic */ BringIntoViewResponderNode this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(BringIntoViewResponderNode bringIntoViewResponderNode, Function0 function0, Continuation continuation) {
            super(2, continuation);
            this.this$0 = bringIntoViewResponderNode;
            this.$parentRect = function0;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new AnonymousClass2(this.this$0, this.$parentRect, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                BringIntoViewResponderNode bringIntoViewResponderNode = this.this$0;
                Function0 function0 = this.$parentRect;
                this.label = 1;
                Object bringIntoView = MathKt.bringIntoView(bringIntoViewResponderNode, function0, this);
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                if (bringIntoView == coroutineSingletons) {
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

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BringIntoViewResponderNode$bringIntoView$2(BringIntoViewResponderNode bringIntoViewResponderNode, LayoutCoordinates layoutCoordinates, Function0 function0, Function0 function02, Continuation continuation) {
        super(2, continuation);
        this.this$0 = bringIntoViewResponderNode;
        this.$childCoordinates = layoutCoordinates;
        this.$boundsProvider = function0;
        this.$parentRect = function02;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        BringIntoViewResponderNode$bringIntoView$2 bringIntoViewResponderNode$bringIntoView$2 = new BringIntoViewResponderNode$bringIntoView$2(this.this$0, this.$childCoordinates, this.$boundsProvider, this.$parentRect, continuation);
        bringIntoViewResponderNode$bringIntoView$2.L$0 = obj;
        return bringIntoViewResponderNode$bringIntoView$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((BringIntoViewResponderNode$bringIntoView$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        if (this.label != 0) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$2("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.throwOnFailure(obj);
        CoroutineScope coroutineScope = (CoroutineScope) this.L$0;
        JobKt.launch$default(coroutineScope, null, null, new AnonymousClass1(this.this$0, this.$childCoordinates, this.$boundsProvider, null), 3);
        return JobKt.launch$default(coroutineScope, null, null, new AnonymousClass2(this.this$0, this.$parentRect, null), 3);
    }
}
