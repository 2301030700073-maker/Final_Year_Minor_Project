package com.google.android.gms.internal.ads;

import com.facebook.ads.AdError;

/* loaded from: classes.dex */
final class zzhax implements zzgxx {
    static final zzgxx zza = new zzhax();

    private zzhax() {
    }

    @Override // com.google.android.gms.internal.ads.zzgxx
    public final boolean zza(int i) {
        if (i != 0 && i != 1 && i != 2 && i != 1999) {
            switch (i) {
                case 1000:
                case AdError.NO_FILL_ERROR_CODE /* 1001 */:
                case AdError.LOAD_TOO_FREQUENTLY_ERROR_CODE /* 1002 */:
                case 1003:
                case 1004:
                case 1005:
                case 1006:
                case 1007:
                case 1008:
                case 1009:
                case 1010:
                    break;
                default:
                    return false;
            }
        }
        return true;
    }
}
