package defpackage;

import android.content.Context;
import android.content.DialogInterface;
import android.net.Uri;
import com.google.android.gms.ads.internal.util.zzs;
import com.google.android.gms.ads.internal.zzv;

/* loaded from: classes.dex */
public final class JP implements DialogInterface.OnClickListener {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Context f1630do;

    public JP(Context context) {
        this.f1630do = context;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        zzv.zzq();
        zzs.zzU(this.f1630do, Uri.parse("https://support.google.com/dfp_premium/answer/7160685#push"));
    }
}
