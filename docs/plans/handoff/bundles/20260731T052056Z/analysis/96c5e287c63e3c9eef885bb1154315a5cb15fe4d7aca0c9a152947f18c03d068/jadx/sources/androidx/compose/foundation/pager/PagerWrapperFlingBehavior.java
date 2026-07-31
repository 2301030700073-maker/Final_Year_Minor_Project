package androidx.compose.foundation.pager;

import androidx.compose.foundation.gestures.FlingBehavior;
import androidx.compose.foundation.gestures.snapping.SnapFlingBehavior;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class PagerWrapperFlingBehavior implements FlingBehavior {
    public final SnapFlingBehavior originalFlingBehavior;
    public final PagerState pagerState;

    public PagerWrapperFlingBehavior(SnapFlingBehavior snapFlingBehavior, PagerState pagerState) {
        this.originalFlingBehavior = snapFlingBehavior;
        this.pagerState = pagerState;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
    @Override // androidx.compose.foundation.gestures.FlingBehavior
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object performFling(androidx.compose.foundation.gestures.ScrollingLogic$doFlingAnimation$2$reverseScope$1 r7, float r8, kotlin.coroutines.Continuation r9) {
        /*
            r6 = this;
            boolean r0 = r9 instanceof androidx.compose.foundation.pager.PagerWrapperFlingBehavior$performFling$1
            if (r0 == 0) goto L13
            r0 = r9
            androidx.compose.foundation.pager.PagerWrapperFlingBehavior$performFling$1 r0 = (androidx.compose.foundation.pager.PagerWrapperFlingBehavior$performFling$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L1a
        L13:
            androidx.compose.foundation.pager.PagerWrapperFlingBehavior$performFling$1 r0 = new androidx.compose.foundation.pager.PagerWrapperFlingBehavior$performFling$1
            kotlin.coroutines.jvm.internal.ContinuationImpl r9 = (kotlin.coroutines.jvm.internal.ContinuationImpl) r9
            r0.<init>(r6, r9)
        L1a:
            java.lang.Object r9 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 0
            r4 = 1
            if (r2 == 0) goto L30
            if (r2 != r4) goto L2a
            kotlin.ResultKt.throwOnFailure(r9)
            goto L45
        L2a:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r6)
            return r3
        L30:
            kotlin.ResultKt.throwOnFailure(r9)
            androidx.compose.material3.AppBarKt$$ExternalSyntheticLambda11 r9 = new androidx.compose.material3.AppBarKt$$ExternalSyntheticLambda11
            r2 = 18
            r9.<init>(r2, r6, r7)
            r0.label = r4
            androidx.compose.foundation.gestures.snapping.SnapFlingBehavior r2 = r6.originalFlingBehavior
            java.lang.Object r9 = r2.performFling(r7, r8, r9, r0)
            if (r9 != r1) goto L45
            return r1
        L45:
            java.lang.Number r9 = (java.lang.Number) r9
            float r7 = r9.floatValue()
            androidx.compose.foundation.pager.PagerState r6 = r6.pagerState
            float r8 = r6.getCurrentPageOffsetFraction()
            r9 = 0
            int r8 = (r8 > r9 ? 1 : (r8 == r9 ? 0 : -1))
            if (r8 != 0) goto L57
            goto L8d
        L57:
            float r8 = r6.getCurrentPageOffsetFraction()
            float r8 = java.lang.Math.abs(r8)
            double r0 = (double) r8
            r4 = 4562254508917369340(0x3f50624dd2f1a9fc, double:0.001)
            int r8 = (r0 > r4 ? 1 : (r0 == r4 ? 0 : -1))
            if (r8 >= 0) goto L8d
            int r8 = r6.getCurrentPage()
            androidx.compose.foundation.gestures.DefaultScrollableState r0 = r6.scrollableState
            boolean r0 = r0.isScrollInProgress()
            r1 = 0
            if (r0 == 0) goto L89
            androidx.compose.runtime.ParcelableSnapshotMutableState r0 = r6.pagerLayoutInfoState
            java.lang.Object r0 = r0.getValue()
            androidx.compose.foundation.pager.PagerMeasureResult r0 = (androidx.compose.foundation.pager.PagerMeasureResult) r0
            kotlinx.coroutines.CoroutineScope r0 = r0.coroutineScope
            androidx.compose.foundation.pager.PagerState$requestScrollToPage$1 r2 = new androidx.compose.foundation.pager.PagerState$requestScrollToPage$1
            r2.<init>(r6, r3, r1)
            r4 = 3
            kotlinx.coroutines.AwaitKt.launch$default(r0, r3, r3, r2, r4)
        L89:
            r6.snapToItem$foundation(r9, r8, r1)
            goto L96
        L8d:
            float r6 = r6.getCurrentPageOffsetFraction()
            java.lang.Float r8 = new java.lang.Float
            r8.<init>(r6)
        L96:
            java.lang.Float r6 = new java.lang.Float
            r6.<init>(r7)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.pager.PagerWrapperFlingBehavior.performFling(androidx.compose.foundation.gestures.ScrollingLogic$doFlingAnimation$2$reverseScope$1, float, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
