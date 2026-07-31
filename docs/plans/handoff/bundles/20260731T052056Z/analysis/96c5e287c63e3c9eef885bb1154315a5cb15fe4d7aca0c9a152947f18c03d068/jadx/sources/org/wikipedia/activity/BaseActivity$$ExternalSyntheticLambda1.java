package org.wikipedia.activity;

import android.content.DialogInterface;
import com.caverock.androidsvg.SVGAndroidRenderer;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class BaseActivity$$ExternalSyntheticLambda1 implements DialogInterface.OnClickListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ SVGAndroidRenderer f$0;

    public /* synthetic */ BaseActivity$$ExternalSyntheticLambda1(SVGAndroidRenderer sVGAndroidRenderer, int i) {
        this.$r8$classId = i;
        this.f$0 = sVGAndroidRenderer;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        switch (this.$r8$classId) {
            case 0:
                SVGAndroidRenderer.submitInteraction$default(this.f$0, "click", null, null, "cancel", null, null, 246);
                break;
            case 1:
                SVGAndroidRenderer.submitInteraction$default(this.f$0, "click", "logout_warning", null, "cancel_button", null, null, 244);
                break;
            default:
                SVGAndroidRenderer.submitInteraction$default(this.f$0, "click", null, null, "cancel_button", null, null, 246);
                break;
        }
    }
}
