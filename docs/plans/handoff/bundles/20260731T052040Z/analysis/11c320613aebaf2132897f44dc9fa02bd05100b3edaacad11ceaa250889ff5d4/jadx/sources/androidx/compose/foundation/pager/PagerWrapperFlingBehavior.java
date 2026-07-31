package androidx.compose.foundation.pager;

import androidx.compose.foundation.gestures.FlingBehavior;
import androidx.compose.foundation.gestures.snapping.SnapFlingBehavior;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class PagerWrapperFlingBehavior implements FlingBehavior {
    public final SnapFlingBehavior originalFlingBehavior;
    public final DefaultPagerState pagerState;

    public PagerWrapperFlingBehavior(SnapFlingBehavior snapFlingBehavior, DefaultPagerState defaultPagerState) {
        this.originalFlingBehavior = snapFlingBehavior;
        this.pagerState = defaultPagerState;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    @Override // androidx.compose.foundation.gestures.FlingBehavior
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object performFling(androidx.compose.foundation.gestures.ScrollingLogic$doFlingAnimation$2$reverseScope$1 r6, float r7, kotlin.coroutines.Continuation r8) {
        /*
            r5 = this;
            boolean r0 = r8 instanceof androidx.compose.foundation.pager.PagerWrapperFlingBehavior$performFling$1
            if (r0 == 0) goto L13
            r0 = r8
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
            kotlin.coroutines.jvm.internal.ContinuationImpl r8 = (kotlin.coroutines.jvm.internal.ContinuationImpl) r8
            r0.<init>(r5, r8)
        L1a:
            java.lang.Object r8 = r0.result
            int r1 = r0.label
            r2 = 0
            r3 = 1
            if (r1 == 0) goto L2e
            if (r1 != r3) goto L28
            kotlin.ResultKt.throwOnFailure(r8)
            goto L43
        L28:
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1.m$2(r5)
            return r2
        L2e:
            kotlin.ResultKt.throwOnFailure(r8)
            coil3.disk.DiskLruCache$$ExternalSyntheticLambda0 r8 = new coil3.disk.DiskLruCache$$ExternalSyntheticLambda0
            r8.<init>(r5, r6)
            r0.label = r3
            androidx.compose.foundation.gestures.snapping.SnapFlingBehavior r1 = r5.originalFlingBehavior
            java.lang.Object r8 = r1.performFling(r6, r7, r8, r0)
            kotlin.coroutines.intrinsics.CoroutineSingletons r6 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r8 != r6) goto L43
            return r6
        L43:
            java.lang.Number r8 = (java.lang.Number) r8
            float r6 = r8.floatValue()
            androidx.compose.foundation.pager.DefaultPagerState r5 = r5.pagerState
            float r7 = r5.getCurrentPageOffsetFraction()
            r8 = 0
            int r7 = (r7 > r8 ? 1 : (r7 == r8 ? 0 : -1))
            if (r7 != 0) goto L55
            goto L8b
        L55:
            float r7 = r5.getCurrentPageOffsetFraction()
            float r7 = java.lang.Math.abs(r7)
            double r0 = (double) r7
            r3 = 4562254508917369340(0x3f50624dd2f1a9fc, double:0.001)
            int r7 = (r0 > r3 ? 1 : (r0 == r3 ? 0 : -1))
            if (r7 >= 0) goto L8b
            int r7 = r5.getCurrentPage()
            androidx.compose.foundation.gestures.DefaultScrollableState r0 = r5.scrollableState
            boolean r0 = r0.isScrollInProgress()
            if (r0 == 0) goto L86
            androidx.compose.runtime.ParcelableSnapshotMutableState r0 = r5.pagerLayoutInfoState
            java.lang.Object r0 = r0.getValue()
            androidx.compose.foundation.pager.PagerMeasureResult r0 = (androidx.compose.foundation.pager.PagerMeasureResult) r0
            kotlinx.coroutines.CoroutineScope r0 = r0.coroutineScope
            androidx.compose.foundation.pager.PagerState$requestScrollToPage$1 r1 = new androidx.compose.foundation.pager.PagerState$requestScrollToPage$1
            r1.<init>(r5, r2)
            r3 = 3
            kotlinx.coroutines.JobKt.launch$default(r0, r2, r2, r1, r3)
        L86:
            r0 = 0
            r5.snapToItem$foundation(r8, r7, r0)
            goto L94
        L8b:
            float r5 = r5.getCurrentPageOffsetFraction()
            java.lang.Float r7 = new java.lang.Float
            r7.<init>(r5)
        L94:
            java.lang.Float r5 = new java.lang.Float
            r5.<init>(r6)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.pager.PagerWrapperFlingBehavior.performFling(androidx.compose.foundation.gestures.ScrollingLogic$doFlingAnimation$2$reverseScope$1, float, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
