package defpackage;

import android.view.View;
import com.google.android.material.sidesheet.SideSheetBehavior;
import defpackage.Oz;

/* loaded from: classes.dex */
public final /* synthetic */ class Qz implements Runnable {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Object f3090do;

    /* renamed from: for, reason: not valid java name */
    public final /* synthetic */ int f3091for;

    /* renamed from: new, reason: not valid java name */
    public final /* synthetic */ int f3092new;

    public /* synthetic */ Qz(int i, int i2, Object obj) {
        this.f3091for = i2;
        this.f3090do = obj;
        this.f3092new = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.f3091for;
        int i2 = this.f3092new;
        Object obj = this.f3090do;
        switch (i) {
            case 0:
                ((Oz.Ctry) obj).mo1731for(i2);
                break;
            default:
                SideSheetBehavior sideSheetBehavior = (SideSheetBehavior) obj;
                View view = (View) sideSheetBehavior.f11347do.get();
                if (view != null) {
                    sideSheetBehavior.m5879extends(view, false, i2);
                    break;
                }
                break;
        }
    }
}
