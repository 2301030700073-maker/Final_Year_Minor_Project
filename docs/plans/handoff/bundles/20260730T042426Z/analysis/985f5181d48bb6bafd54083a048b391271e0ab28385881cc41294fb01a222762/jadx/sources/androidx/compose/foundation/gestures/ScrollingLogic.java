package androidx.compose.foundation.gestures;

import androidx.compose.foundation.MutatePriority;
import androidx.compose.foundation.OverscrollEffect;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.input.nestedscroll.NestedScrollDispatcher;
import androidx.compose.ui.input.nestedscroll.NestedScrollSource;
import androidx.compose.ui.unit.Velocity;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Scrollable.kt */
/* loaded from: classes.dex */
public final class ScrollingLogic {
    private FlingBehavior flingBehavior;
    private int latestScrollSource = NestedScrollSource.Companion.m1651getUserInputWNlRxjI();
    private NestedScrollDispatcher nestedScrollDispatcher;
    private final ScrollingLogic$nestedScrollScope$1 nestedScrollScope;
    private Orientation orientation;
    private ScrollScope outerStateScope;
    private OverscrollEffect overscrollEffect;
    private final Function1 performScrollForOverscroll;
    private boolean reverseDirection;
    private ScrollableState scrollableState;

    /* JADX WARN: Type inference failed for: r1v4, types: [androidx.compose.foundation.gestures.ScrollingLogic$nestedScrollScope$1] */
    public ScrollingLogic(ScrollableState scrollableState, OverscrollEffect overscrollEffect, FlingBehavior flingBehavior, Orientation orientation, boolean z, NestedScrollDispatcher nestedScrollDispatcher) {
        ScrollScope scrollScope;
        this.scrollableState = scrollableState;
        this.overscrollEffect = overscrollEffect;
        this.flingBehavior = flingBehavior;
        this.orientation = orientation;
        this.reverseDirection = z;
        this.nestedScrollDispatcher = nestedScrollDispatcher;
        scrollScope = ScrollableKt.NoOpScrollScope;
        this.outerStateScope = scrollScope;
        this.nestedScrollScope = new NestedScrollScope() { // from class: androidx.compose.foundation.gestures.ScrollingLogic$nestedScrollScope$1
            @Override // androidx.compose.foundation.gestures.NestedScrollScope
            /* renamed from: scrollBy-OzD1aCk */
            public long mo205scrollByOzD1aCk(long j, int i) {
                ScrollScope scrollScope2;
                long m229performScroll3eAAhYA;
                scrollScope2 = ScrollingLogic.this.outerStateScope;
                m229performScroll3eAAhYA = ScrollingLogic.this.m229performScroll3eAAhYA(scrollScope2, j, i);
                return m229performScroll3eAAhYA;
            }

            @Override // androidx.compose.foundation.gestures.NestedScrollScope
            /* renamed from: scrollByWithOverscroll-OzD1aCk */
            public long mo206scrollByWithOverscrollOzD1aCk(long j, int i) {
                OverscrollEffect overscrollEffect2;
                ScrollScope scrollScope2;
                long m229performScroll3eAAhYA;
                boolean shouldDispatchOverscroll;
                int i2;
                Function1 function1;
                ScrollingLogic.this.latestScrollSource = i;
                overscrollEffect2 = ScrollingLogic.this.overscrollEffect;
                if (overscrollEffect2 != null) {
                    shouldDispatchOverscroll = ScrollingLogic.this.getShouldDispatchOverscroll();
                    if (shouldDispatchOverscroll) {
                        i2 = ScrollingLogic.this.latestScrollSource;
                        function1 = ScrollingLogic.this.performScrollForOverscroll;
                        return overscrollEffect2.mo96applyToScrollRhakbz0(j, i2, function1);
                    }
                }
                scrollScope2 = ScrollingLogic.this.outerStateScope;
                m229performScroll3eAAhYA = ScrollingLogic.this.m229performScroll3eAAhYA(scrollScope2, j, i);
                return m229performScroll3eAAhYA;
            }
        };
        this.performScrollForOverscroll = new Function1() { // from class: androidx.compose.foundation.gestures.ScrollingLogic$performScrollForOverscroll$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                return Offset.m1158boximpl(m241invokeMKHz9U(((Offset) obj).m1176unboximpl()));
            }

            /* renamed from: invoke-MK-Hz9U, reason: not valid java name */
            public final long m241invokeMKHz9U(long j) {
                ScrollScope scrollScope2;
                int i;
                long m229performScroll3eAAhYA;
                scrollScope2 = ScrollingLogic.this.outerStateScope;
                ScrollingLogic scrollingLogic = ScrollingLogic.this;
                i = scrollingLogic.latestScrollSource;
                m229performScroll3eAAhYA = scrollingLogic.m229performScroll3eAAhYA(scrollScope2, j, i);
                return m229performScroll3eAAhYA;
            }
        };
    }

    /* renamed from: toOffset-tuRUvjQ, reason: not valid java name */
    public final long m239toOffsettuRUvjQ(float f) {
        if (f == 0.0f) {
            return Offset.Companion.m1179getZeroF1C5BW0();
        }
        return this.orientation == Orientation.Horizontal ? OffsetKt.Offset(f, 0.0f) : OffsetKt.Offset(0.0f, f);
    }

    /* renamed from: singleAxisOffset-MK-Hz9U, reason: not valid java name */
    public final long m237singleAxisOffsetMKHz9U(long j) {
        return this.orientation == Orientation.Horizontal ? Offset.m1161copydBAh8RU$default(j, 0.0f, 0.0f, 1, null) : Offset.m1161copydBAh8RU$default(j, 0.0f, 0.0f, 2, null);
    }

    /* renamed from: toFloat-k-4lQ0M, reason: not valid java name */
    public final float m238toFloatk4lQ0M(long j) {
        return this.orientation == Orientation.Horizontal ? Offset.m1167getXimpl(j) : Offset.m1168getYimpl(j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: toFloat-TH1AsA0, reason: not valid java name */
    public final float m231toFloatTH1AsA0(long j) {
        return this.orientation == Orientation.Horizontal ? Velocity.m2524getXimpl(j) : Velocity.m2525getYimpl(j);
    }

    /* renamed from: singleAxisVelocity-AH228Gc, reason: not valid java name */
    private final long m230singleAxisVelocityAH228Gc(long j) {
        return this.orientation == Orientation.Horizontal ? Velocity.m2521copyOhffZ5M$default(j, 0.0f, 0.0f, 1, null) : Velocity.m2521copyOhffZ5M$default(j, 0.0f, 0.0f, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: update-QWom1Mo, reason: not valid java name */
    public final long m232updateQWom1Mo(long j, float f) {
        return this.orientation == Orientation.Horizontal ? Velocity.m2521copyOhffZ5M$default(j, f, 0.0f, 2, null) : Velocity.m2521copyOhffZ5M$default(j, 0.0f, f, 1, null);
    }

    public final float reverseIfNeeded(float f) {
        return this.reverseDirection ? f * (-1) : f;
    }

    /* renamed from: reverseIfNeeded-MK-Hz9U, reason: not valid java name */
    public final long m236reverseIfNeededMKHz9U(long j) {
        return this.reverseDirection ? Offset.m1173timestuRUvjQ(j, -1.0f) : j;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: performScroll-3eAAhYA, reason: not valid java name */
    public final long m229performScroll3eAAhYA(ScrollScope scrollScope, long j, int i) {
        long m1647dispatchPreScrollOzD1aCk = this.nestedScrollDispatcher.m1647dispatchPreScrollOzD1aCk(j, i);
        long m1171minusMKHz9U = Offset.m1171minusMKHz9U(j, m1647dispatchPreScrollOzD1aCk);
        long m236reverseIfNeededMKHz9U = m236reverseIfNeededMKHz9U(m239toOffsettuRUvjQ(scrollScope.scrollBy(m238toFloatk4lQ0M(m236reverseIfNeededMKHz9U(m237singleAxisOffsetMKHz9U(m1171minusMKHz9U))))));
        return Offset.m1172plusMKHz9U(Offset.m1172plusMKHz9U(m1647dispatchPreScrollOzD1aCk, m236reverseIfNeededMKHz9U), this.nestedScrollDispatcher.m1645dispatchPostScrollDzOQY0M(m236reverseIfNeededMKHz9U, Offset.m1171minusMKHz9U(m1171minusMKHz9U, m236reverseIfNeededMKHz9U), i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean getShouldDispatchOverscroll() {
        return this.scrollableState.getCanScrollForward() || this.scrollableState.getCanScrollBackward();
    }

    /* renamed from: performRawScroll-MK-Hz9U, reason: not valid java name */
    public final long m235performRawScrollMKHz9U(long j) {
        if (this.scrollableState.isScrollInProgress()) {
            return Offset.Companion.m1179getZeroF1C5BW0();
        }
        return m239toOffsettuRUvjQ(reverseIfNeeded(this.scrollableState.dispatchRawDelta(reverseIfNeeded(m238toFloatk4lQ0M(j)))));
    }

    /* renamed from: onDragStopped-sF-c-tU, reason: not valid java name */
    public final Object m234onDragStoppedsFctU(long j, Continuation continuation) {
        long m230singleAxisVelocityAH228Gc = m230singleAxisVelocityAH228Gc(j);
        ScrollingLogic$onDragStopped$performFling$1 scrollingLogic$onDragStopped$performFling$1 = new ScrollingLogic$onDragStopped$performFling$1(this, null);
        OverscrollEffect overscrollEffect = this.overscrollEffect;
        if (overscrollEffect != null && getShouldDispatchOverscroll()) {
            Object mo95applyToFlingBMRW4eQ = overscrollEffect.mo95applyToFlingBMRW4eQ(m230singleAxisVelocityAH228Gc, scrollingLogic$onDragStopped$performFling$1, continuation);
            return mo95applyToFlingBMRW4eQ == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? mo95applyToFlingBMRW4eQ : Unit.INSTANCE;
        }
        Object invoke = scrollingLogic$onDragStopped$performFling$1.invoke(Velocity.m2518boximpl(m230singleAxisVelocityAH228Gc), continuation);
        return invoke == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? invoke : Unit.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    /* renamed from: doFlingAnimation-QWom1Mo, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m233doFlingAnimationQWom1Mo(long r12, kotlin.coroutines.Continuation r14) {
        /*
            r11 = this;
            boolean r0 = r14 instanceof androidx.compose.foundation.gestures.ScrollingLogic$doFlingAnimation$1
            if (r0 == 0) goto L13
            r0 = r14
            androidx.compose.foundation.gestures.ScrollingLogic$doFlingAnimation$1 r0 = (androidx.compose.foundation.gestures.ScrollingLogic$doFlingAnimation$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.compose.foundation.gestures.ScrollingLogic$doFlingAnimation$1 r0 = new androidx.compose.foundation.gestures.ScrollingLogic$doFlingAnimation$1
            r0.<init>(r11, r14)
        L18:
            java.lang.Object r14 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L35
            if (r2 != r3) goto L2d
            java.lang.Object r12 = r0.L$0
            kotlin.jvm.internal.Ref$LongRef r12 = (kotlin.jvm.internal.Ref$LongRef) r12
            kotlin.ResultKt.throwOnFailure(r14)
            goto L57
        L2d:
            java.lang.IllegalStateException r12 = new java.lang.IllegalStateException
            java.lang.String r13 = "call to 'resume' before 'invoke' with coroutine"
            r12.<init>(r13)
            throw r12
        L35:
            kotlin.ResultKt.throwOnFailure(r14)
            kotlin.jvm.internal.Ref$LongRef r14 = new kotlin.jvm.internal.Ref$LongRef
            r14.<init>()
            r14.element = r12
            androidx.compose.foundation.MutatePriority r2 = androidx.compose.foundation.MutatePriority.Default
            androidx.compose.foundation.gestures.ScrollingLogic$doFlingAnimation$2 r10 = new androidx.compose.foundation.gestures.ScrollingLogic$doFlingAnimation$2
            r9 = 0
            r4 = r10
            r5 = r11
            r6 = r14
            r7 = r12
            r4.<init>(r5, r6, r7, r9)
            r0.L$0 = r14
            r0.label = r3
            java.lang.Object r12 = r11.scroll(r2, r10, r0)
            if (r12 != r1) goto L56
            return r1
        L56:
            r12 = r14
        L57:
            long r12 = r12.element
            androidx.compose.ui.unit.Velocity r12 = androidx.compose.ui.unit.Velocity.m2518boximpl(r12)
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.ScrollingLogic.m233doFlingAnimationQWom1Mo(long, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final boolean shouldScrollImmediately() {
        if (!this.scrollableState.isScrollInProgress()) {
            OverscrollEffect overscrollEffect = this.overscrollEffect;
            if (!(overscrollEffect != null ? overscrollEffect.isInProgress() : false)) {
                return false;
            }
        }
        return true;
    }

    public final Object scroll(MutatePriority mutatePriority, Function2 function2, Continuation continuation) {
        Object scroll = this.scrollableState.scroll(mutatePriority, new ScrollingLogic$scroll$2(this, function2, null), continuation);
        return scroll == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? scroll : Unit.INSTANCE;
    }

    public final boolean update(ScrollableState scrollableState, Orientation orientation, OverscrollEffect overscrollEffect, boolean z, FlingBehavior flingBehavior, NestedScrollDispatcher nestedScrollDispatcher) {
        boolean z2;
        boolean z3 = true;
        if (Intrinsics.areEqual(this.scrollableState, scrollableState)) {
            z2 = false;
        } else {
            this.scrollableState = scrollableState;
            z2 = true;
        }
        this.overscrollEffect = overscrollEffect;
        if (this.orientation != orientation) {
            this.orientation = orientation;
            z2 = true;
        }
        if (this.reverseDirection != z) {
            this.reverseDirection = z;
        } else {
            z3 = z2;
        }
        this.flingBehavior = flingBehavior;
        this.nestedScrollDispatcher = nestedScrollDispatcher;
        return z3;
    }

    public final boolean isVertical() {
        return this.orientation == Orientation.Vertical;
    }
}
