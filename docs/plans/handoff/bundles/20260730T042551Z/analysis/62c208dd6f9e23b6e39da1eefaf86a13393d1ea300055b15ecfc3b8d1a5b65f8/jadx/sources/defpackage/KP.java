package defpackage;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import com.google.android.gms.ads.internal.util.zzs;
import com.google.android.gms.ads.internal.zzv;

/* loaded from: classes.dex */
public final class KP implements Runnable {

    /* renamed from: break, reason: not valid java name */
    public final /* synthetic */ String f1806break;

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Context f1807do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ boolean f1808do;

    /* renamed from: if, reason: not valid java name */
    public final /* synthetic */ boolean f1809if;

    public KP(Context context, String str, boolean z, boolean z2) {
        this.f1807do = context;
        this.f1806break = str;
        this.f1808do = z;
        this.f1809if = z2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzv.zzq();
        Context context = this.f1807do;
        AlertDialog.Builder zzL = zzs.zzL(context);
        zzL.setMessage(this.f1806break);
        if (this.f1808do) {
            zzL.setTitle("Error");
        } else {
            zzL.setTitle("Info");
        }
        if (this.f1809if) {
            zzL.setNeutralButton("Dismiss", (DialogInterface.OnClickListener) null);
        } else {
            zzL.setPositiveButton("Learn More", new JP(context));
            zzL.setNegativeButton("Dismiss", (DialogInterface.OnClickListener) null);
        }
        zzL.create().show();
    }
}
