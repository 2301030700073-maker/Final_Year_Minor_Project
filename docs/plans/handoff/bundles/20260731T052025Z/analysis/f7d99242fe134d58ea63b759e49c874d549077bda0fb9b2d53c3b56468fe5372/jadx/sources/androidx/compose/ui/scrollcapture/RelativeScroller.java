package androidx.compose.ui.scrollcapture;

import androidx.compose.ui.text.android.TextLayout;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class RelativeScroller {
    public float scrollAmount;
    public final Object scrollBy;
    public int viewportSize;

    public RelativeScroller(TextLayout textLayout) {
        this.scrollBy = textLayout;
        this.viewportSize = -1;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0028  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0024  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public float get(int r6, boolean r7, boolean r8, boolean r9) {
        /*
            r5 = this;
            java.lang.Object r0 = r5.scrollBy
            androidx.compose.ui.text.android.TextLayout r0 = (androidx.compose.ui.text.android.TextLayout) r0
            r1 = 1
            r2 = 0
            if (r7 == 0) goto L1d
            android.text.Layout r3 = r0.layout
            int r3 = androidx.compose.ui.text.android.StaticLayoutFactory.getLineForOffset(r3, r6, r7)
            android.text.Layout r4 = r0.layout
            int r4 = r4.getLineStart(r3)
            int r3 = r0.getLineEnd(r3)
            if (r6 == r4) goto L1f
            if (r6 != r3) goto L1d
            goto L1f
        L1d:
            r3 = r2
            goto L20
        L1f:
            r3 = r1
        L20:
            int r4 = r6 * 4
            if (r9 == 0) goto L28
            if (r3 == 0) goto L2d
            r1 = r2
            goto L2d
        L28:
            if (r3 == 0) goto L2c
            r1 = 2
            goto L2d
        L2c:
            r1 = 3
        L2d:
            int r4 = r4 + r1
            int r1 = r5.viewportSize
            if (r1 != r4) goto L35
            float r5 = r5.scrollAmount
            return r5
        L35:
            if (r9 == 0) goto L3c
            float r6 = r0.getPrimaryHorizontal(r6, r7)
            goto L40
        L3c:
            float r6 = r0.getSecondaryHorizontal(r6, r7)
        L40:
            if (r8 == 0) goto L46
            r5.viewportSize = r4
            r5.scrollAmount = r6
        L46:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.scrollcapture.RelativeScroller.get(int, boolean, boolean, boolean):float");
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x002c  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x001f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object scrollBy(float r5, kotlin.coroutines.jvm.internal.ContinuationImpl r6) {
        /*
            r4 = this;
            boolean r0 = r6 instanceof androidx.compose.ui.scrollcapture.RelativeScroller$scrollBy$1
            if (r0 == 0) goto L13
            r0 = r6
            androidx.compose.ui.scrollcapture.RelativeScroller$scrollBy$1 r0 = (androidx.compose.ui.scrollcapture.RelativeScroller$scrollBy$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.compose.ui.scrollcapture.RelativeScroller$scrollBy$1 r0 = new androidx.compose.ui.scrollcapture.RelativeScroller$scrollBy$1
            r0.<init>(r4, r6)
        L18:
            java.lang.Object r6 = r0.result
            int r1 = r0.label
            r2 = 1
            if (r1 == 0) goto L2c
            if (r1 != r2) goto L25
            kotlin.ResultKt.throwOnFailure(r6)
            goto L43
        L25:
            java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r4)
            r4 = 0
            return r4
        L2c:
            kotlin.ResultKt.throwOnFailure(r6)
            java.lang.Object r6 = r4.scrollBy
            androidx.compose.ui.scrollcapture.ComposeScrollCaptureCallback$scrollTracker$1 r6 = (androidx.compose.ui.scrollcapture.ComposeScrollCaptureCallback$scrollTracker$1) r6
            java.lang.Float r1 = new java.lang.Float
            r1.<init>(r5)
            r0.label = r2
            java.lang.Object r6 = r6.invoke(r1, r0)
            kotlin.coroutines.intrinsics.CoroutineSingletons r5 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r6 != r5) goto L43
            return r5
        L43:
            java.lang.Number r6 = (java.lang.Number) r6
            float r5 = r6.floatValue()
            float r6 = r4.scrollAmount
            float r6 = r6 + r5
            r4.scrollAmount = r6
            kotlin.Unit r4 = kotlin.Unit.INSTANCE
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.scrollcapture.RelativeScroller.scrollBy(float, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public RelativeScroller(int i, ComposeScrollCaptureCallback$scrollTracker$1 composeScrollCaptureCallback$scrollTracker$1) {
        this.viewportSize = i;
        this.scrollBy = composeScrollCaptureCallback$scrollTracker$1;
    }
}
