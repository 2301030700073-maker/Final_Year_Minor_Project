package com.google.android.gms.ads.internal.overlay;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import com.google.android.gms.ads.internal.client.zzbe;
import com.google.android.gms.internal.ads.zzbcl;

/* loaded from: classes.dex */
public final class zzu extends FrameLayout implements View.OnClickListener {

    /* renamed from: do, reason: not valid java name */
    public final ImageButton f9722do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final zzag f9723do;

    /* JADX WARN: Code restructure failed: missing block: B:30:0x0062, code lost:
    
        r0 = null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zzu(android.content.Context r6, com.google.android.gms.ads.internal.overlay.zzt r7, com.google.android.gms.ads.internal.overlay.zzag r8) {
        /*
            Method dump skipped, instructions count: 288
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.overlay.zzu.<init>(android.content.Context, com.google.android.gms.ads.internal.overlay.zzt, com.google.android.gms.ads.internal.overlay.zzag):void");
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        zzag zzagVar = this.f9723do;
        if (zzagVar != null) {
            zzagVar.zzj();
        }
    }

    public final void zzb(boolean z) {
        ImageButton imageButton = this.f9722do;
        if (!z) {
            imageButton.setVisibility(0);
            return;
        }
        imageButton.setVisibility(8);
        if (((Long) zzbe.zzc().zza(zzbcl.zzbl)).longValue() > 0) {
            imageButton.animate().cancel();
            imageButton.clearAnimation();
        }
    }
}
