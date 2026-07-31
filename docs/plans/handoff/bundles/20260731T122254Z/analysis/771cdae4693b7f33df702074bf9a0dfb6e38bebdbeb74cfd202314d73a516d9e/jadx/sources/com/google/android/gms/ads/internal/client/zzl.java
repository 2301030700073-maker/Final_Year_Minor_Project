package com.google.android.gms.ads.internal.client;

import com.google.android.gms.ads.internal.client.zzu;
import java.util.Random;

/* loaded from: classes.dex */
public class zzl extends zzu.zza {
    private long zzsA;
    private Object zzqt = new Object();
    private final Random zzsz = new Random();

    public zzl() {
        zzcG();
    }

    @Override // com.google.android.gms.ads.internal.client.zzu
    public long getValue() {
        return this.zzsA;
    }

    public void zzcG() {
        synchronized (this.zzqt) {
            int i = 3;
            long j = 0;
            while (true) {
                i--;
                if (i <= 0) {
                    break;
                }
                try {
                    long nextInt = this.zzsz.nextInt() + 2147483648L;
                    if (nextInt != this.zzsA && nextInt != 0) {
                        j = nextInt;
                        break;
                    }
                    j = nextInt;
                } catch (Throwable th) {
                    throw th;
                }
            }
            this.zzsA = j;
        }
    }
}
