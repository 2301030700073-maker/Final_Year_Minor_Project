package androidx.compose.foundation.gestures;

import android.view.ViewTreeObserver;
import androidx.compose.foundation.AndroidEdgeEffectOverscrollEffect;
import androidx.compose.foundation.MutatePriority;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.nestedscroll.NestedScrollDispatcher;
import androidx.compose.ui.input.nestedscroll.NestedScrollNode;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.platform.AndroidComposeView;
import androidx.compose.ui.unit.Velocity;
import coil3.disk.DiskLruCache$$ExternalSyntheticLambda0;
import java.lang.reflect.Method;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ScrollingLogic {
    public FlingBehavior flingBehavior;
    public boolean isFlinging;
    public final ScrollableNode$$ExternalSyntheticLambda0 isScrollableNodeAttached;
    public NestedScrollDispatcher nestedScrollDispatcher;
    public final ScrollableNode onScrollChangedDispatcher;
    public Orientation orientation;
    public AndroidEdgeEffectOverscrollEffect overscrollEffect;
    public boolean reverseDirection;
    public ScrollableState scrollableState;
    public int latestScrollSource = 1;
    public ScrollScope outerStateScope = ScrollableKt.NoOpScrollScope;
    public final ScrollingLogic$nestedScrollScope$1 nestedScrollScope = new ScrollingLogic$nestedScrollScope$1(this);
    public final DiskLruCache$$ExternalSyntheticLambda0 performScrollForOverscroll = new DiskLruCache$$ExternalSyntheticLambda0(this, 2);

    public ScrollingLogic(ScrollableState scrollableState, AndroidEdgeEffectOverscrollEffect androidEdgeEffectOverscrollEffect, FlingBehavior flingBehavior, Orientation orientation, boolean z, NestedScrollDispatcher nestedScrollDispatcher, ScrollableNode scrollableNode, ScrollableNode$$ExternalSyntheticLambda0 scrollableNode$$ExternalSyntheticLambda0) {
        this.scrollableState = scrollableState;
        this.overscrollEffect = androidEdgeEffectOverscrollEffect;
        this.flingBehavior = flingBehavior;
        this.orientation = orientation;
        this.reverseDirection = z;
        this.nestedScrollDispatcher = nestedScrollDispatcher;
        this.onScrollChangedDispatcher = scrollableNode;
        this.isScrollableNodeAttached = scrollableNode$$ExternalSyntheticLambda0;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0020  */
    /* renamed from: doFlingAnimation-QWom1Mo, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m70doFlingAnimationQWom1Mo(long r11, kotlin.coroutines.jvm.internal.ContinuationImpl r13) {
        /*
            r10 = this;
            boolean r0 = r13 instanceof androidx.compose.foundation.gestures.ScrollingLogic$doFlingAnimation$1
            if (r0 == 0) goto L13
            r0 = r13
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
            r0.<init>(r10, r13)
        L18:
            java.lang.Object r13 = r0.result
            int r1 = r0.label
            r2 = 0
            r3 = 1
            if (r1 == 0) goto L36
            if (r1 != r3) goto L2f
            java.lang.Object r11 = r0.L$0
            kotlin.jvm.internal.Ref$LongRef r11 = (kotlin.jvm.internal.Ref$LongRef) r11
            kotlin.ResultKt.throwOnFailure(r13)     // Catch: java.lang.Throwable -> L2b
            r5 = r10
            goto L5a
        L2b:
            r0 = move-exception
            r11 = r0
            r5 = r10
            goto L6a
        L2f:
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1.m$2(r10)
            r10 = 0
            return r10
        L36:
            kotlin.ResultKt.throwOnFailure(r13)
            kotlin.jvm.internal.Ref$LongRef r6 = new kotlin.jvm.internal.Ref$LongRef
            r6.<init>()
            r6.element = r11
            r10.isFlinging = r3
            androidx.compose.foundation.MutatePriority r13 = androidx.compose.foundation.MutatePriority.Default     // Catch: java.lang.Throwable -> L67
            androidx.compose.foundation.gestures.ScrollingLogic$doFlingAnimation$2 r4 = new androidx.compose.foundation.gestures.ScrollingLogic$doFlingAnimation$2     // Catch: java.lang.Throwable -> L67
            r9 = 0
            r5 = r10
            r7 = r11
            r4.<init>(r5, r6, r7, r9)     // Catch: java.lang.Throwable -> L64
            r0.L$0 = r6     // Catch: java.lang.Throwable -> L64
            r0.label = r3     // Catch: java.lang.Throwable -> L64
            java.lang.Object r10 = r5.scroll(r13, r4, r0)     // Catch: java.lang.Throwable -> L64
            kotlin.coroutines.intrinsics.CoroutineSingletons r11 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r10 != r11) goto L59
            return r11
        L59:
            r11 = r6
        L5a:
            r5.isFlinging = r2
            long r10 = r11.element
            androidx.compose.ui.unit.Velocity r12 = new androidx.compose.ui.unit.Velocity
            r12.<init>(r10)
            return r12
        L64:
            r0 = move-exception
        L65:
            r11 = r0
            goto L6a
        L67:
            r0 = move-exception
            r5 = r10
            goto L65
        L6a:
            r5.isFlinging = r2
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.ScrollingLogic.m70doFlingAnimationQWom1Mo(long, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* renamed from: onScrollStopped-BMRW4eQ, reason: not valid java name */
    public final Object m71onScrollStoppedBMRW4eQ(long j, boolean z, SuspendLambda suspendLambda) {
        Unit unit = Unit.INSTANCE;
        if (!z || !(this.flingBehavior instanceof DefaultFlingBehavior)) {
            long m457copyOhffZ5M$default = Velocity.m457copyOhffZ5M$default(j, 0.0f, 0.0f, this.orientation == Orientation.Horizontal ? 1 : 2);
            ScrollingLogic$onScrollStopped$performFling$1 scrollingLogic$onScrollStopped$performFling$1 = new ScrollingLogic$onScrollStopped$performFling$1(this, null);
            AndroidEdgeEffectOverscrollEffect androidEdgeEffectOverscrollEffect = this.overscrollEffect;
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            if (androidEdgeEffectOverscrollEffect == null || !(this.scrollableState.getCanScrollForward() || this.scrollableState.getCanScrollBackward())) {
                ScrollingLogic$onScrollStopped$performFling$1 scrollingLogic$onScrollStopped$performFling$12 = new ScrollingLogic$onScrollStopped$performFling$1(scrollingLogic$onScrollStopped$performFling$1.this$0, suspendLambda);
                scrollingLogic$onScrollStopped$performFling$12.J$0 = m457copyOhffZ5M$default;
                Object invokeSuspend = scrollingLogic$onScrollStopped$performFling$12.invokeSuspend(unit);
                if (invokeSuspend == coroutineSingletons) {
                    return invokeSuspend;
                }
            } else {
                Object m19applyToFlingBMRW4eQ = androidEdgeEffectOverscrollEffect.m19applyToFlingBMRW4eQ(m457copyOhffZ5M$default, scrollingLogic$onScrollStopped$performFling$1, suspendLambda);
                if (m19applyToFlingBMRW4eQ == coroutineSingletons) {
                    return m19applyToFlingBMRW4eQ;
                }
            }
        }
        return unit;
    }

    /* renamed from: performScroll-3eAAhYA, reason: not valid java name */
    public final long m72performScroll3eAAhYA(ScrollScope scrollScope, long j, int i) {
        NestedScrollNode nestedScrollNode = this.nestedScrollDispatcher.nestedScrollNode;
        NestedScrollNode parentNestedScrollNode$ui = nestedScrollNode != null ? nestedScrollNode.getParentNestedScrollNode$ui() : null;
        long mo69onPreScrollOzD1aCk = parentNestedScrollNode$ui != null ? parentNestedScrollNode$ui.mo69onPreScrollOzD1aCk(i, j) : 0L;
        long m199minusMKHz9U = Offset.m199minusMKHz9U(j, mo69onPreScrollOzD1aCk);
        long m73reverseIfNeededMKHz9U = m73reverseIfNeededMKHz9U(m75toOffsettuRUvjQ(scrollScope.scrollBy(m74toFloatk4lQ0M(m73reverseIfNeededMKHz9U(this.orientation == Orientation.Horizontal ? Offset.m195copydBAh8RU$default(1, m199minusMKHz9U) : Offset.m195copydBAh8RU$default(2, m199minusMKHz9U))))));
        ScrollableNode scrollableNode = this.onScrollChangedDispatcher;
        if (scrollableNode.isAttached) {
            ViewTreeObserver viewTreeObserver = ((AndroidComposeView) HitTestResultKt.requireOwner(scrollableNode)).getViewTreeObserver();
            try {
                if (AndroidComposeView.dispatchOnScrollChangedMethod == null) {
                    Method declaredMethod = viewTreeObserver.getClass().getDeclaredMethod("dispatchOnScrollChanged", null);
                    declaredMethod.setAccessible(true);
                    AndroidComposeView.dispatchOnScrollChangedMethod = declaredMethod;
                }
                Method method = AndroidComposeView.dispatchOnScrollChangedMethod;
                if (method != null) {
                    method.invoke(viewTreeObserver, null);
                }
            } catch (Exception unused) {
            }
        }
        long m199minusMKHz9U2 = Offset.m199minusMKHz9U(m199minusMKHz9U, m73reverseIfNeededMKHz9U);
        NestedScrollNode nestedScrollNode2 = this.nestedScrollDispatcher.nestedScrollNode;
        NestedScrollNode parentNestedScrollNode$ui2 = nestedScrollNode2 != null ? nestedScrollNode2.getParentNestedScrollNode$ui() : null;
        return Offset.m200plusMKHz9U(Offset.m200plusMKHz9U(mo69onPreScrollOzD1aCk, m73reverseIfNeededMKHz9U), parentNestedScrollNode$ui2 != null ? parentNestedScrollNode$ui2.mo67onPostScrollDzOQY0M(i, m73reverseIfNeededMKHz9U, m199minusMKHz9U2) : 0L);
    }

    public final float reverseIfNeeded(float f) {
        return this.reverseDirection ? f * (-1.0f) : f;
    }

    /* renamed from: reverseIfNeeded-MK-Hz9U, reason: not valid java name */
    public final long m73reverseIfNeededMKHz9U(long j) {
        return this.reverseDirection ? Offset.m201timestuRUvjQ(j, -1.0f) : j;
    }

    public final Object scroll(MutatePriority mutatePriority, Function2 function2, ContinuationImpl continuationImpl) {
        Object scroll = this.scrollableState.scroll(mutatePriority, new ScrollingLogic$scroll$2(this, null, function2), continuationImpl);
        return scroll == CoroutineSingletons.COROUTINE_SUSPENDED ? scroll : Unit.INSTANCE;
    }

    /* renamed from: toFloat-k-4lQ0M, reason: not valid java name */
    public final float m74toFloatk4lQ0M(long j) {
        return Float.intBitsToFloat(this.orientation == Orientation.Horizontal ? (int) (j >> 32) : (int) (j & 4294967295L));
    }

    /* renamed from: toOffset-tuRUvjQ, reason: not valid java name */
    public final long m75toOffsettuRUvjQ(float f) {
        if (f == 0.0f) {
            return 0L;
        }
        if (this.orientation == Orientation.Horizontal) {
            return (Float.floatToRawIntBits(f) << 32) | (Float.floatToRawIntBits(0.0f) & 4294967295L);
        }
        return (Float.floatToRawIntBits(f) & 4294967295L) | (Float.floatToRawIntBits(0.0f) << 32);
    }

    /* renamed from: toSingleAxisDeltaFromAngle-k-4lQ0M, reason: not valid java name */
    public final float m76toSingleAxisDeltaFromAnglek4lQ0M(long j) {
        int i = (int) (4294967295L & j);
        int i2 = (int) (j >> 32);
        double atan2 = (float) Math.atan2(Math.abs(Float.intBitsToFloat(i)), Math.abs(Float.intBitsToFloat(i2)));
        Orientation orientation = this.orientation;
        if (atan2 >= 0.7853981633974483d) {
            if (orientation == Orientation.Vertical) {
                return Float.intBitsToFloat(i);
            }
            return 0.0f;
        }
        if (orientation == Orientation.Horizontal) {
            return Float.intBitsToFloat(i2);
        }
        return 0.0f;
    }
}
