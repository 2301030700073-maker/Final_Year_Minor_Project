package defpackage;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import com.google.android.gms.ads.RequestConfiguration;
import com.joeykrim.rootcheckp.MainActivity;

/* renamed from: mK, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class ViewOnClickListenerC3325mK implements View.OnClickListener {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Activity f14328do;

    public ViewOnClickListenerC3325mK(Activity activity) {
        this.f14328do = activity;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        MainActivity.f12319else = false;
        C3948ww.f16491do = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        C3948ww.f16497if = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        C3948ww.f16495for = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        C3948ww.f16499new = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        C3948ww.f16501try = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        C3948ww.f16492do = false;
        if (C3772tx.f15824if) {
            if (C0583Wh.f4395do != null) {
                try {
                    Bundle bundle = new Bundle();
                    bundle.putString("item_name", "AdvancedBusyboxCheck");
                    C0583Wh.f4395do.m6073do("button_pressed", bundle);
                } catch (Exception unused) {
                }
            }
            C4012y0.m8692for("AdvancedBusyboxCheck");
        }
        new ON(this.f14328do).execute(new Void[0]);
        MainActivity.f12319else = true;
    }
}
