package androidx.activity;

import android.graphics.Color;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class EdgeToEdge {
    public static EdgeToEdgeBase Impl;
    public static final int DefaultLightScrim = Color.argb(230, 255, 255, 255);
    public static final int DefaultDarkScrim = Color.argb(128, 27, 27, 27);

    /* JADX WARN: Code restructure failed: missing block: B:29:0x00a7, code lost:
    
        r2.run();
        r10 = r10.getWindow();
        r10.getClass();
        r3.adjustLayoutInDisplayCutoutMode(r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00b4, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void enable$default(androidx.activity.ComponentActivity r10) {
        /*
            androidx.compose.foundation.BorderKt$$ExternalSyntheticLambda1 r0 = new androidx.compose.foundation.BorderKt$$ExternalSyntheticLambda1
            r1 = 1
            r0.<init>(r1)
            androidx.activity.SystemBarStyle r4 = new androidx.activity.SystemBarStyle
            r9 = 0
            r4.<init>(r9, r9, r0)
            androidx.compose.foundation.BorderKt$$ExternalSyntheticLambda1 r0 = new androidx.compose.foundation.BorderKt$$ExternalSyntheticLambda1
            r0.<init>(r1)
            androidx.activity.SystemBarStyle r5 = new androidx.activity.SystemBarStyle
            int r2 = androidx.activity.EdgeToEdge.DefaultLightScrim
            int r3 = androidx.activity.EdgeToEdge.DefaultDarkScrim
            r5.<init>(r2, r3, r0)
            r10.getClass()
            android.view.Window r0 = r10.getWindow()
            android.view.View r7 = r0.getDecorView()
            r7.getClass()
            androidx.activity.EdgeToEdgeBase r0 = androidx.activity.EdgeToEdge.Impl
            if (r0 != 0) goto L67
            int r0 = android.os.Build.VERSION.SDK_INT
            r2 = 35
            if (r0 < r2) goto L38
            androidx.activity.EdgeToEdgeApi35 r0 = new androidx.activity.EdgeToEdgeApi35
            r0.<init>()
            goto L65
        L38:
            r2 = 30
            if (r0 < r2) goto L42
            androidx.activity.EdgeToEdgeApi30 r0 = new androidx.activity.EdgeToEdgeApi30
            r0.<init>()
            goto L65
        L42:
            r2 = 29
            if (r0 < r2) goto L4c
            androidx.activity.EdgeToEdgeApi29 r0 = new androidx.activity.EdgeToEdgeApi29
            r0.<init>()
            goto L65
        L4c:
            r2 = 28
            if (r0 < r2) goto L56
            androidx.activity.EdgeToEdgeApi28 r0 = new androidx.activity.EdgeToEdgeApi28
            r0.<init>()
            goto L65
        L56:
            r2 = 26
            if (r0 < r2) goto L60
            androidx.activity.EdgeToEdgeApi26 r0 = new androidx.activity.EdgeToEdgeApi26
            r0.<init>()
            goto L65
        L60:
            androidx.activity.EdgeToEdgeApi23 r0 = new androidx.activity.EdgeToEdgeApi23
            r0.<init>()
        L65:
            androidx.activity.EdgeToEdge.Impl = r0
        L67:
            r3 = r0
            androidx.work.OperationKt$$ExternalSyntheticLambda1 r2 = new androidx.work.OperationKt$$ExternalSyntheticLambda1
            r8 = 1
            r6 = r10
            r2.<init>(r3, r4, r5, r6, r7, r8)
            android.view.ViewGroup r7 = (android.view.ViewGroup) r7
        L71:
            int r10 = r7.getChildCount()
            if (r9 >= r10) goto L90
            int r10 = r9 + 1
            android.view.View r0 = r7.getChildAt(r9)
            if (r0 == 0) goto L8a
            java.lang.Object r0 = r0.getTag()
            boolean r0 = r0 instanceof androidx.activity.EdgeToEdgeBase
            if (r0 == 0) goto L88
            goto La7
        L88:
            r9 = r10
            goto L71
        L8a:
            java.lang.IndexOutOfBoundsException r10 = new java.lang.IndexOutOfBoundsException
            r10.<init>()
            throw r10
        L90:
            android.content.Context r10 = r7.getContext()
            androidx.activity.EdgeToEdge$enableEdgeToEdge$1$2 r0 = new androidx.activity.EdgeToEdge$enableEdgeToEdge$1$2
            r0.<init>(r10)
            r0.setTag(r3)
            r10 = 8
            r0.setVisibility(r10)
            r0.setWillNotDraw(r1)
            r7.addView(r0)
        La7:
            r2.run()
            android.view.Window r10 = r6.getWindow()
            r10.getClass()
            r3.adjustLayoutInDisplayCutoutMode(r10)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.activity.EdgeToEdge.enable$default(androidx.activity.ComponentActivity):void");
    }
}
