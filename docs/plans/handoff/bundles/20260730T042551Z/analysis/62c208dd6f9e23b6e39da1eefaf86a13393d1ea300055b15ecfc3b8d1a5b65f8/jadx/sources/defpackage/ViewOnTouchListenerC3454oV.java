package defpackage;

import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.ads.internal.zzu;
import com.google.android.gms.internal.ads.zzava;

/* renamed from: oV, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class ViewOnTouchListenerC3454oV implements View.OnTouchListener {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ zzu f14800do;

    public ViewOnTouchListenerC3454oV(zzu zzuVar) {
        this.f14800do = zzuVar;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        zzava zzavaVar = this.f14800do.f9883do;
        if (zzavaVar == null) {
            return false;
        }
        zzavaVar.zzd(motionEvent);
        return false;
    }
}
