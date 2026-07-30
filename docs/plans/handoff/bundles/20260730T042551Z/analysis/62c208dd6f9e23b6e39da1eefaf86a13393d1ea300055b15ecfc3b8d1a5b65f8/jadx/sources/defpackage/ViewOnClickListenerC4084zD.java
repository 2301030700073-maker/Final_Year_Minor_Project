package defpackage;

import android.view.View;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;

/* renamed from: zD, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class ViewOnClickListenerC4084zD implements View.OnClickListener {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ AD f16881do;

    public ViewOnClickListenerC4084zD(AD ad) {
        this.f16881do = ad;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        AD ad = this.f16881do;
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            ad.getClass();
            if (!CrashShieldHandler.isObjectCrashing(ad)) {
                try {
                    View.OnClickListener onClickListener = ((AbstractC2882hh) ad).f13345do;
                    if (onClickListener != null) {
                        onClickListener.onClick(view);
                    }
                } catch (Throwable th) {
                    CrashShieldHandler.handleThrowable(th, ad);
                }
            }
            DD mo56this = ad.mo56this();
            ad.getClass();
            mo56this.show(null);
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, this);
        }
    }
}
