package com.skydoves.balloon;

import android.view.View;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class Balloon$$ExternalSyntheticLambda8 implements View.OnClickListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Balloon f$1;

    public /* synthetic */ Balloon$$ExternalSyntheticLambda8(Balloon balloon, int i) {
        this.$r8$classId = i;
        this.f$1 = balloon;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i = this.$r8$classId;
        Balloon balloon = this.f$1;
        switch (i) {
            case 0:
                balloon.dismiss();
                break;
            default:
                balloon.dismiss();
                break;
        }
    }
}
