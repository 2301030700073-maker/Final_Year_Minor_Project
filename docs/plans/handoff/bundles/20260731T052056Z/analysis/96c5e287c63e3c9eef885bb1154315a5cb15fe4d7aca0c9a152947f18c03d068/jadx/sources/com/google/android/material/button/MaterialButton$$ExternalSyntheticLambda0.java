package com.google.android.material.button;

import android.graphics.drawable.Drawable;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class MaterialButton$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ MaterialButton f$0;
    public final /* synthetic */ Drawable f$1;

    public /* synthetic */ MaterialButton$$ExternalSyntheticLambda0(MaterialButton materialButton, Drawable drawable, int i) {
        this.$r8$classId = i;
        this.f$0 = materialButton;
        this.f$1 = drawable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.$r8$classId;
        Drawable drawable = this.f$1;
        MaterialButton materialButton = this.f$0;
        switch (i) {
            case 0:
                int[] iArr = MaterialButton.CHECKABLE_STATE_SET;
                materialButton.setIcon(drawable);
                break;
            default:
                int[] iArr2 = MaterialButton.CHECKABLE_STATE_SET;
                materialButton.setIcon(drawable);
                break;
        }
    }
}
