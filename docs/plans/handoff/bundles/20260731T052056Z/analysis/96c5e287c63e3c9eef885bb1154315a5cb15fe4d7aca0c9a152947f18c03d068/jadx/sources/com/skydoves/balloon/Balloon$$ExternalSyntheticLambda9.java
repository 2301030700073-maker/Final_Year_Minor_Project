package com.skydoves.balloon;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class Balloon$$ExternalSyntheticLambda9 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Balloon f$0;

    public /* synthetic */ Balloon$$ExternalSyntheticLambda9(Balloon balloon, int i) {
        this.$r8$classId = i;
        this.f$0 = balloon;
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x0076  */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            r6 = this;
            int r0 = r6.$r8$classId
            r1 = 1
            com.skydoves.balloon.Balloon r6 = r6.f$0
            switch(r0) {
                case 0: goto L80;
                default: goto L8;
            }
        L8:
            com.skydoves.balloon.Balloon$Builder r0 = r6.builder
            com.skydoves.balloon.BalloonHighlightAnimation r2 = r0.balloonHighlightAnimation
            int[] r3 = com.skydoves.balloon.Balloon.WhenMappings.$EnumSwitchMapping$4
            int r2 = r2.ordinal()
            r2 = r3[r2]
            r3 = 4
            r4 = 3
            r5 = 2
            if (r2 == r1) goto L49
            if (r2 == r5) goto L23
            if (r2 == r4) goto L1f
            r0 = 0
            goto L74
        L1f:
            r0 = 2130771982(0x7f01000e, float:1.714707E38)
            goto L6e
        L23:
            com.skydoves.balloon.ArrowOrientation r0 = r0.arrowOrientation
            int[] r2 = com.skydoves.balloon.Balloon.WhenMappings.$EnumSwitchMapping$0
            int r0 = r0.ordinal()
            r0 = r2[r0]
            if (r0 == r1) goto L45
            if (r0 == r5) goto L41
            if (r0 == r4) goto L3d
            if (r0 != r3) goto L39
            r0 = 2130771994(0x7f01001a, float:1.7147094E38)
            goto L6e
        L39:
            coil3.util.ContextsKt$$ExternalSyntheticBUOutline0.m()
            goto L7f
        L3d:
            r0 = 2130771995(0x7f01001b, float:1.7147096E38)
            goto L6e
        L41:
            r0 = 2130771993(0x7f010019, float:1.7147092E38)
            goto L6e
        L45:
            r0 = 2130771996(0x7f01001c, float:1.7147098E38)
            goto L6e
        L49:
            com.skydoves.balloon.ArrowOrientation r0 = r0.arrowOrientation
            int[] r2 = com.skydoves.balloon.Balloon.WhenMappings.$EnumSwitchMapping$0
            int r0 = r0.ordinal()
            r0 = r2[r0]
            if (r0 == r1) goto L6b
            if (r0 == r5) goto L67
            if (r0 == r4) goto L63
            if (r0 != r3) goto L5f
            r0 = 2130771987(0x7f010013, float:1.714708E38)
            goto L6e
        L5f:
            coil3.util.ContextsKt$$ExternalSyntheticBUOutline0.m()
            goto L7f
        L63:
            r0 = 2130771988(0x7f010014, float:1.7147082E38)
            goto L6e
        L67:
            r0 = 2130771985(0x7f010011, float:1.7147076E38)
            goto L6e
        L6b:
            r0 = 2130771989(0x7f010015, float:1.7147084E38)
        L6e:
            android.content.Context r1 = r6.context
            android.view.animation.Animation r0 = android.view.animation.AnimationUtils.loadAnimation(r1, r0)
        L74:
            if (r0 == 0) goto L7f
            com.google.gson.GsonBuilder r6 = r6.binding
            java.lang.Object r6 = r6.longSerializationPolicy
            android.widget.FrameLayout r6 = (android.widget.FrameLayout) r6
            r6.startAnimation(r0)
        L7f:
            return
        L80:
            android.os.Handler r0 = new android.os.Handler
            android.os.Looper r2 = android.os.Looper.getMainLooper()
            r0.<init>(r2)
            com.skydoves.balloon.Balloon$$ExternalSyntheticLambda9 r2 = new com.skydoves.balloon.Balloon$$ExternalSyntheticLambda9
            r2.<init>(r6, r1)
            r3 = 0
            r0.postDelayed(r2, r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.skydoves.balloon.Balloon$$ExternalSyntheticLambda9.run():void");
    }
}
