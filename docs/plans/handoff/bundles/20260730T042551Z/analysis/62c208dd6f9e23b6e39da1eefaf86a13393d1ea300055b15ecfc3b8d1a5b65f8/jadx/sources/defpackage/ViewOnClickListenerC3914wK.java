package defpackage;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import com.google.android.gms.ads.RequestConfiguration;
import com.joeykrim.rootcheckp.MainActivity;

/* renamed from: wK, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class ViewOnClickListenerC3914wK implements View.OnClickListener {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Activity f16319do;

    public ViewOnClickListenerC3914wK(Activity activity) {
        this.f16319do = activity;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        MainActivity.f12316case = false;
        C3948ww.f16494final = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        C3948ww.f16486case = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        C3948ww.f16496goto = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        C3948ww.f16500this = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        C3948ww.f16485break = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        C3948ww.f16487catch = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        C3948ww.f16488class = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        C3948ww.f16489const = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        C3948ww.f16498if = false;
        MainActivity.f12317catch = false;
        AsyncTaskC3561qK.f15096if = 0;
        AsyncTaskC3561qK.f15095for = 0;
        if (C3772tx.f15824if) {
            if (C0583Wh.f4395do != null) {
                try {
                    Bundle bundle = new Bundle();
                    bundle.putString("item_name", "AdvancedRootCheck");
                    C0583Wh.f4395do.m6073do("button_pressed", bundle);
                } catch (Exception unused) {
                }
            }
            C4012y0.m8692for("AdvancedRootCheck");
        }
        Activity activity = this.f16319do;
        MainActivity.f12318do = (AsyncTaskC3561qK) new AsyncTaskC3561qK(activity).execute(new Void[0]);
        MainActivity.f12316case = true;
        try {
            Uw.m2485new(true, activity);
        } catch (Exception unused2) {
        }
    }
}
