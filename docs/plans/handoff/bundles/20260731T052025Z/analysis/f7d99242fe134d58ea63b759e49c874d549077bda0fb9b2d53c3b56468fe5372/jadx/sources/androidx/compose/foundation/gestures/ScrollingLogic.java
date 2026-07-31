package androidx.compose.foundation.gestures;

import android.view.ViewTreeObserver;
import androidx.camera.camera2.impl.TorchControl$$ExternalSyntheticLambda1;
import androidx.compose.foundation.AndroidEdgeEffectOverscrollEffect;
import androidx.compose.foundation.MutatePriority;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.nestedscroll.NestedScrollDispatcher;
import androidx.compose.ui.input.nestedscroll.NestedScrollNode;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.platform.AndroidComposeView;
import androidx.compose.ui.unit.Velocity;
import java.lang.reflect.Method;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ScrollingLogic {
    public DefaultFlingBehavior flingBehavior;
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
    public final TorchControl$$ExternalSyntheticLambda1 performScrollForOverscroll = new TorchControl$$ExternalSyntheticLambda1(11, this);

    public ScrollingLogic(ScrollableState scrollableState, AndroidEdgeEffectOverscrollEffect androidEdgeEffectOverscrollEffect, DefaultFlingBehavior defaultFlingBehavior, Orientation orientation, boolean z, NestedScrollDispatcher nestedScrollDispatcher, ScrollableNode scrollableNode, ScrollableNode$$ExternalSyntheticLambda0 scrollableNode$$ExternalSyntheticLambda0) {
        this.scrollableState = scrollableState;
        this.overscrollEffect = androidEdgeEffectOverscrollEffect;
        this.flingBehavior = defaultFlingBehavior;
        this.orientation = orientation;
        this.reverseDirection = z;
        this.nestedScrollDispatcher = nestedScrollDispatcher;
        this.onScrollChangedDispatcher = scrollableNode;
        this.isScrollableNodeAttached = scrollableNode$$ExternalSyntheticLambda0;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0020  */
    /* renamed from: doFlingAnimation-QWom1Mo, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m189doFlingAnimationQWom1Mo(long r11, kotlin.coroutines.jvm.internal.ContinuationImpl r13) {
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
            if (r1 == 0) goto L34
            if (r1 != r3) goto L2d
            kotlin.jvm.internal.Ref$LongRef r11 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r13)     // Catch: java.lang.Throwable -> L29
            r5 = r10
            goto L58
        L29:
            r0 = move-exception
            r11 = r0
            r5 = r10
            goto L68
        L2d:
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r10)
            r10 = 0
            return r10
        L34:
            kotlin.ResultKt.throwOnFailure(r13)
            kotlin.jvm.internal.Ref$LongRef r6 = new kotlin.jvm.internal.Ref$LongRef
            r6.<init>()
            r6.element = r11
            r10.isFlinging = r3
            androidx.compose.foundation.MutatePriority r13 = androidx.compose.foundation.MutatePriority.Default     // Catch: java.lang.Throwable -> L65
            androidx.compose.foundation.gestures.ScrollingLogic$doFlingAnimation$2 r4 = new androidx.compose.foundation.gestures.ScrollingLogic$doFlingAnimation$2     // Catch: java.lang.Throwable -> L65
            r9 = 0
            r5 = r10
            r7 = r11
            r4.<init>(r5, r6, r7, r9)     // Catch: java.lang.Throwable -> L62
            r0.L$0 = r6     // Catch: java.lang.Throwable -> L62
            r0.label = r3     // Catch: java.lang.Throwable -> L62
            java.lang.Object r10 = r5.scroll(r13, r4, r0)     // Catch: java.lang.Throwable -> L62
            kotlin.coroutines.intrinsics.CoroutineSingletons r11 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r10 != r11) goto L57
            return r11
        L57:
            r11 = r6
        L58:
            r5.isFlinging = r2
            long r10 = r11.element
            androidx.compose.ui.unit.Velocity r12 = new androidx.compose.ui.unit.Velocity
            r12.<init>(r10)
            return r12
        L62:
            r0 = move-exception
        L63:
            r11 = r0
            goto L68
        L65:
            r0 = move-exception
            r5 = r10
            goto L63
        L68:
            r5.isFlinging = r2
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.ScrollingLogic.m189doFlingAnimationQWom1Mo(long, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* renamed from: onScrollStopped-BMRW4eQ, reason: not valid java name */
    public final Object m190onScrollStoppedBMRW4eQ(long j, boolean z, SuspendLambda suspendLambda) {
        Unit unit = Unit.INSTANCE;
        if (!z || !(this.flingBehavior instanceof DefaultFlingBehavior)) {
            long m778copyOhffZ5M$default = Velocity.m778copyOhffZ5M$default(j, 0.0f, 0.0f, this.orientation == Orientation.Horizontal ? 1 : 2);
            ScrollingLogic$onScrollStopped$performFling$1 scrollingLogic$onScrollStopped$performFling$1 = new ScrollingLogic$onScrollStopped$performFling$1(this, null);
            AndroidEdgeEffectOverscrollEffect androidEdgeEffectOverscrollEffect = this.overscrollEffect;
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            if (androidEdgeEffectOverscrollEffect == null || !(this.scrollableState.getCanScrollForward() || this.scrollableState.getCanScrollBackward())) {
                ScrollingLogic$onScrollStopped$performFling$1 scrollingLogic$onScrollStopped$performFling$12 = new ScrollingLogic$onScrollStopped$performFling$1(this, suspendLambda);
                scrollingLogic$onScrollStopped$performFling$12.J$0 = m778copyOhffZ5M$default;
                Object invokeSuspend = scrollingLogic$onScrollStopped$performFling$12.invokeSuspend(unit);
                if (invokeSuspend == coroutineSingletons) {
                    return invokeSuspend;
                }
            } else {
                Object m123applyToFlingBMRW4eQ = androidEdgeEffectOverscrollEffect.m123applyToFlingBMRW4eQ(m778copyOhffZ5M$default, scrollingLogic$onScrollStopped$performFling$1, suspendLambda);
                if (m123applyToFlingBMRW4eQ == coroutineSingletons) {
                    return m123applyToFlingBMRW4eQ;
                }
            }
        }
        return unit;
    }

    /* renamed from: performScroll-3eAAhYA, reason: not valid java name */
    public final long m191performScroll3eAAhYA(ScrollScope scrollScope, long j, int i) {
        NestedScrollNode nestedScrollNode = this.nestedScrollDispatcher.nestedScrollNode;
        NestedScrollNode parentNestedScrollNode$ui = nestedScrollNode != null ? nestedScrollNode.getParentNestedScrollNode$ui() : null;
        long mo188onPreScrollOzD1aCk = parentNestedScrollNode$ui != null ? parentNestedScrollNode$ui.mo188onPreScrollOzD1aCk(i, j) : 0L;
        long m440minusMKHz9U = Offset.m440minusMKHz9U(j, mo188onPreScrollOzD1aCk);
        long m192reverseIfNeededMKHz9U = m192reverseIfNeededMKHz9U(m194toOffsettuRUvjQ(scrollScope.scrollBy(m193toFloatk4lQ0M(m192reverseIfNeededMKHz9U(this.orientation == Orientation.Horizontal ? Offset.m435copydBAh8RU$default(0.0f, 1, m440minusMKHz9U) : Offset.m435copydBAh8RU$default(0.0f, 2, m440minusMKHz9U))))));
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
        long m440minusMKHz9U2 = Offset.m440minusMKHz9U(m440minusMKHz9U, m192reverseIfNeededMKHz9U);
        NestedScrollNode nestedScrollNode2 = this.nestedScrollDispatcher.nestedScrollNode;
        NestedScrollNode parentNestedScrollNode$ui2 = nestedScrollNode2 != null ? nestedScrollNode2.getParentNestedScrollNode$ui() : null;
        return Offset.m441plusMKHz9U(Offset.m441plusMKHz9U(mo188onPreScrollOzD1aCk, m192reverseIfNeededMKHz9U), parentNestedScrollNode$ui2 != null ? parentNestedScrollNode$ui2.mo186onPostScrollDzOQY0M(i, m192reverseIfNeededMKHz9U, m440minusMKHz9U2) : 0L);
    }

    public final float reverseIfNeeded(float f) {
        return this.reverseDirection ? f * (-1.0f) : f;
    }

    /* renamed from: reverseIfNeeded-MK-Hz9U, reason: not valid java name */
    public final long m192reverseIfNeededMKHz9U(long j) {
        return this.reverseDirection ? Offset.m442timestuRUvjQ(-1.0f, j) : j;
    }

    public final Object scroll(MutatePriority mutatePriority, Function2 function2, ContinuationImpl continuationImpl) {
        Object scroll = this.scrollableState.scroll(mutatePriority, new DraggableNode$drag$2(this, function2, (Continuation) null, 17), continuationImpl);
        return scroll == CoroutineSingletons.COROUTINE_SUSPENDED ? scroll : Unit.INSTANCE;
    }

    /* renamed from: toFloat-k-4lQ0M, reason: not valid java name */
    public final float m193toFloatk4lQ0M(long j) {
        return Float.intBitsToFloat(this.orientation == Orientation.Horizontal ? (int) (j >> 32) : (int) (j & 4294967295L));
    }

    /* renamed from: toOffset-tuRUvjQ, reason: not valid java name */
    public final long m194toOffsettuRUvjQ(float f) {
        if (f == 0.0f) {
            return 0L;
        }
        if (this.orientation == Orientation.Horizontal) {
            return (Float.floatToRawIntBits(f) << 32) | (Float.floatToRawIntBits(0.0f) & 4294967295L);
        }
        return (Float.floatToRawIntBits(f) & 4294967295L) | (Float.floatToRawIntBits(0.0f) << 32);
    }

    /* renamed from: toSingleAxisDeltaFromAngle-k-4lQ0M, reason: not valid java name */
    public final float m195toSingleAxisDeltaFromAnglek4lQ0M(long j) {
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
