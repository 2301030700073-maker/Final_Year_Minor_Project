package defpackage;

import android.app.Activity;
import android.view.MotionEvent;
import android.widget.RelativeLayout;
import com.google.android.gms.ads.internal.util.zzau;

/* renamed from: xS, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3981xS extends RelativeLayout {

    /* renamed from: do, reason: not valid java name */
    public final zzau f16557do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f16558do;

    public C3981xS(Activity activity, String str, String str2, String str3) {
        super(activity);
        zzau zzauVar = new zzau(activity, str);
        this.f16557do = zzauVar;
        zzauVar.zzo(str2);
        zzauVar.zzn(str3);
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (this.f16558do) {
            return false;
        }
        this.f16557do.zzm(motionEvent);
        return false;
    }
}
