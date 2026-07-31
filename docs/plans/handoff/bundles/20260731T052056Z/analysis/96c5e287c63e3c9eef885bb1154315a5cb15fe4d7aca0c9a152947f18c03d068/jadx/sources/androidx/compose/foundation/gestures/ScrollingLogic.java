package androidx.compose.foundation.gestures;

import android.view.ViewTreeObserver;
import androidx.compose.foundation.AndroidEdgeEffectOverscrollEffect;
import androidx.compose.foundation.MutatePriority;
import androidx.compose.material3.AppBarKt$$ExternalSyntheticLambda11;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.nestedscroll.NestedScrollDispatcher;
import androidx.compose.ui.input.nestedscroll.NestedScrollNode;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.platform.AndroidComposeView;
import androidx.compose.ui.unit.Velocity;
import androidx.paging.SingleRunner$runInIsolation$2;
import androidx.recyclerview.widget.RecyclerView;
import java.lang.reflect.Method;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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
    public final AppBarKt$$ExternalSyntheticLambda11 performScrollForOverscroll = new AppBarKt$$ExternalSyntheticLambda11(6, this);

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
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /* renamed from: doFlingAnimation-QWom1Mo, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m99doFlingAnimationQWom1Mo(long r12, kotlin.coroutines.jvm.internal.ContinuationImpl r14) {
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
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 0
            r4 = 1
            if (r2 == 0) goto L36
            if (r2 != r4) goto L2f
            kotlin.jvm.internal.Ref$LongRef r12 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r14)     // Catch: java.lang.Throwable -> L2b
            r6 = r11
            goto L58
        L2b:
            r0 = move-exception
            r12 = r0
            r6 = r11
            goto L68
        L2f:
            java.lang.String r11 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r11)
            r11 = 0
            return r11
        L36:
            kotlin.ResultKt.throwOnFailure(r14)
            kotlin.jvm.internal.Ref$LongRef r7 = new kotlin.jvm.internal.Ref$LongRef
            r7.<init>()
            r7.element = r12
            r11.isFlinging = r4
            androidx.compose.foundation.MutatePriority r14 = androidx.compose.foundation.MutatePriority.Default     // Catch: java.lang.Throwable -> L65
            org.wikipedia.diff.ArticleEditDetailsViewModel$getRevisionDetails$2 r5 = new org.wikipedia.diff.ArticleEditDetailsViewModel$getRevisionDetails$2     // Catch: java.lang.Throwable -> L65
            r10 = 0
            r6 = r11
            r8 = r12
            r5.<init>(r6, r7, r8, r10)     // Catch: java.lang.Throwable -> L62
            r0.L$0 = r7     // Catch: java.lang.Throwable -> L62
            r0.label = r4     // Catch: java.lang.Throwable -> L62
            java.lang.Object r11 = r6.scroll(r14, r5, r0)     // Catch: java.lang.Throwable -> L62
            if (r11 != r1) goto L57
            return r1
        L57:
            r12 = r7
        L58:
            r6.isFlinging = r3
            long r11 = r12.element
            androidx.compose.ui.unit.Velocity r13 = new androidx.compose.ui.unit.Velocity
            r13.<init>(r11)
            return r13
        L62:
            r0 = move-exception
        L63:
            r12 = r0
            goto L68
        L65:
            r0 = move-exception
            r6 = r11
            goto L63
        L68:
            r6.isFlinging = r3
            throw r12
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.ScrollingLogic.m99doFlingAnimationQWom1Mo(long, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* renamed from: onScrollStopped-BMRW4eQ, reason: not valid java name */
    public final Object m100onScrollStoppedBMRW4eQ(long j, boolean z, SuspendLambda suspendLambda) {
        Unit unit = Unit.INSTANCE;
        if (!z || !(this.flingBehavior instanceof DefaultFlingBehavior)) {
            long m730copyOhffZ5M$default = Velocity.m730copyOhffZ5M$default(j, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, this.orientation == Orientation.Horizontal ? 1 : 2);
            ScrollingLogic$onScrollStopped$performFling$1 scrollingLogic$onScrollStopped$performFling$1 = new ScrollingLogic$onScrollStopped$performFling$1(this, null);
            AndroidEdgeEffectOverscrollEffect androidEdgeEffectOverscrollEffect = this.overscrollEffect;
            if (androidEdgeEffectOverscrollEffect == null || !(this.scrollableState.getCanScrollForward() || this.scrollableState.getCanScrollBackward())) {
                ScrollingLogic$onScrollStopped$performFling$1 scrollingLogic$onScrollStopped$performFling$12 = new ScrollingLogic$onScrollStopped$performFling$1(this, suspendLambda);
                scrollingLogic$onScrollStopped$performFling$12.J$0 = m730copyOhffZ5M$default;
                Object invokeSuspend = scrollingLogic$onScrollStopped$performFling$12.invokeSuspend(unit);
                if (invokeSuspend == CoroutineSingletons.COROUTINE_SUSPENDED) {
                    return invokeSuspend;
                }
            } else {
                Object m37applyToFlingBMRW4eQ = androidEdgeEffectOverscrollEffect.m37applyToFlingBMRW4eQ(m730copyOhffZ5M$default, scrollingLogic$onScrollStopped$performFling$1, suspendLambda);
                if (m37applyToFlingBMRW4eQ == CoroutineSingletons.COROUTINE_SUSPENDED) {
                    return m37applyToFlingBMRW4eQ;
                }
            }
        }
        return unit;
    }

    /* renamed from: performScroll-3eAAhYA, reason: not valid java name */
    public final long m101performScroll3eAAhYA(ScrollScope scrollScope, long j, int i) {
        NestedScrollNode nestedScrollNode = this.nestedScrollDispatcher.nestedScrollNode;
        NestedScrollNode parentNestedScrollNode$ui = nestedScrollNode != null ? nestedScrollNode.getParentNestedScrollNode$ui() : null;
        long mo5onPreScrollOzD1aCk = parentNestedScrollNode$ui != null ? parentNestedScrollNode$ui.mo5onPreScrollOzD1aCk(j, i) : 0L;
        long m385minusMKHz9U = Offset.m385minusMKHz9U(j, mo5onPreScrollOzD1aCk);
        long m102reverseIfNeededMKHz9U = m102reverseIfNeededMKHz9U(m104toOffsettuRUvjQ(scrollScope.scrollBy(m103toFloatk4lQ0M(m102reverseIfNeededMKHz9U(this.orientation == Orientation.Horizontal ? Offset.m382copydBAh8RU$default(m385minusMKHz9U, RecyclerView.DECELERATION_RATE, 1) : Offset.m382copydBAh8RU$default(m385minusMKHz9U, RecyclerView.DECELERATION_RATE, 2))))));
        ScrollableNode scrollableNode = this.onScrollChangedDispatcher;
        if (scrollableNode.isAttached) {
            ViewTreeObserver viewTreeObserver = ((AndroidComposeView) HitTestResultKt.requireOwner(scrollableNode)).getViewTreeObserver();
            try {
                Method method = AndroidComposeView.dispatchOnScrollChangedMethod;
                if (method == null) {
                    method = viewTreeObserver.getClass().getDeclaredMethod("dispatchOnScrollChanged", null);
                    method.setAccessible(true);
                    AndroidComposeView.dispatchOnScrollChangedMethod = method;
                }
                method.invoke(viewTreeObserver, null);
            } catch (Exception unused) {
            }
        }
        long m385minusMKHz9U2 = Offset.m385minusMKHz9U(m385minusMKHz9U, m102reverseIfNeededMKHz9U);
        NestedScrollNode nestedScrollNode2 = this.nestedScrollDispatcher.nestedScrollNode;
        NestedScrollNode parentNestedScrollNode$ui2 = nestedScrollNode2 != null ? nestedScrollNode2.getParentNestedScrollNode$ui() : null;
        return Offset.m386plusMKHz9U(Offset.m386plusMKHz9U(mo5onPreScrollOzD1aCk, m102reverseIfNeededMKHz9U), parentNestedScrollNode$ui2 != null ? parentNestedScrollNode$ui2.mo3onPostScrollDzOQY0M(i, m102reverseIfNeededMKHz9U, m385minusMKHz9U2) : 0L);
    }

    public final float reverseIfNeeded(float f) {
        return this.reverseDirection ? f * (-1.0f) : f;
    }

    /* renamed from: reverseIfNeeded-MK-Hz9U, reason: not valid java name */
    public final long m102reverseIfNeededMKHz9U(long j) {
        return this.reverseDirection ? Offset.m387timestuRUvjQ(-1.0f, j) : j;
    }

    public final Object scroll(MutatePriority mutatePriority, Function2 function2, ContinuationImpl continuationImpl) {
        Object scroll = this.scrollableState.scroll(mutatePriority, new SingleRunner$runInIsolation$2(this, function2, null, 8), continuationImpl);
        return scroll == CoroutineSingletons.COROUTINE_SUSPENDED ? scroll : Unit.INSTANCE;
    }

    /* renamed from: toFloat-k-4lQ0M, reason: not valid java name */
    public final float m103toFloatk4lQ0M(long j) {
        return Float.intBitsToFloat(this.orientation == Orientation.Horizontal ? (int) (j >> 32) : (int) (j & 4294967295L));
    }

    /* renamed from: toOffset-tuRUvjQ, reason: not valid java name */
    public final long m104toOffsettuRUvjQ(float f) {
        if (f == RecyclerView.DECELERATION_RATE) {
            return 0L;
        }
        if (this.orientation == Orientation.Horizontal) {
            return (Float.floatToRawIntBits(f) << 32) | (Float.floatToRawIntBits(RecyclerView.DECELERATION_RATE) & 4294967295L);
        }
        return (Float.floatToRawIntBits(f) & 4294967295L) | (Float.floatToRawIntBits(RecyclerView.DECELERATION_RATE) << 32);
    }

    /* renamed from: toSingleAxisDeltaFromAngle-k-4lQ0M, reason: not valid java name */
    public final float m105toSingleAxisDeltaFromAnglek4lQ0M(long j) {
        int i = (int) (4294967295L & j);
        int i2 = (int) (j >> 32);
        double atan2 = (float) Math.atan2(Math.abs(Float.intBitsToFloat(i)), Math.abs(Float.intBitsToFloat(i2)));
        Orientation orientation = this.orientation;
        return atan2 >= 0.7853981633974483d ? orientation == Orientation.Vertical ? Float.intBitsToFloat(i) : RecyclerView.DECELERATION_RATE : orientation == Orientation.Horizontal ? Float.intBitsToFloat(i2) : RecyclerView.DECELERATION_RATE;
    }
}
