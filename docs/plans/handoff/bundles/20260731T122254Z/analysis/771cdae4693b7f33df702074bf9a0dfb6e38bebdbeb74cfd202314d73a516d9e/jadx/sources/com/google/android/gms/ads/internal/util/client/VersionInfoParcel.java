package com.google.android.gms.ads.internal.util.client;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.zzgd;

@zzgd
/* loaded from: classes.dex */
public final class VersionInfoParcel implements SafeParcelable {
    public static final zzc CREATOR = new zzc();
    public final int versionCode;
    public String zzGG;
    public int zzGH;
    public int zzGI;
    public boolean zzGJ;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public VersionInfoParcel(int r9, int r10, boolean r11) {
        /*
            r8 = this;
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "afma-sdk-a-v"
            r0.append(r1)
            r0.append(r9)
            java.lang.String r1 = "."
            r0.append(r1)
            r0.append(r10)
            java.lang.String r1 = "."
            r0.append(r1)
            if (r11 == 0) goto L1f
            java.lang.String r1 = "0"
            goto L21
        L1f:
            java.lang.String r1 = "1"
        L21:
            r0.append(r1)
            java.lang.String r4 = r0.toString()
            r3 = 1
            r2 = r8
            r5 = r9
            r6 = r10
            r7 = r11
            r2.<init>(r3, r4, r5, r6, r7)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.util.client.VersionInfoParcel.<init>(int, int, boolean):void");
    }

    VersionInfoParcel(int i, String str, int i2, int i3, boolean z) {
        this.versionCode = i;
        this.zzGG = str;
        this.zzGH = i2;
        this.zzGI = i3;
        this.zzGJ = z;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzc.zza(this, parcel, i);
    }
}
