package com.google.android.gms.internal.ads;

import defpackage.Cif;
import defpackage.V1;
import java.io.IOException;

/* loaded from: classes.dex */
public class zzbc extends IOException {
    public final boolean zza;
    public final int zzb;

    public zzbc(String str, Throwable th, boolean z, int i) {
        super(str, th);
        this.zza = z;
        this.zzb = i;
    }

    public static zzbc zza(String str, Throwable th) {
        return new zzbc(str, th, true, 1);
    }

    public static zzbc zzb(String str, Throwable th) {
        return new zzbc(str, th, true, 0);
    }

    public static zzbc zzc(String str) {
        return new zzbc(str, null, false, 1);
    }

    @Override // java.lang.Throwable
    public final String getMessage() {
        StringBuilder m6916goto = Cif.m6916goto(super.getMessage(), " {contentIsMalformed=");
        m6916goto.append(this.zza);
        m6916goto.append(", dataType=");
        return V1.m2506this(m6916goto, this.zzb, "}");
    }
}
