package com.google.android.gms.internal.play_billing;

import com.facebook.appevents.codeless.internal.Constants;
import com.google.android.gms.common.ConnectionResult;

/* loaded from: classes3.dex */
final class zzka implements zzhm {
    static final zzhm zza = new zzka();

    private zzka() {
    }

    @Override // com.google.android.gms.internal.play_billing.zzhm
    public final boolean zza(int i) {
        switch (i) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
                return true;
            default:
                switch (i) {
                    case 22:
                    case ConnectionResult.API_DISABLED /* 23 */:
                    case ConnectionResult.API_DISABLED_FOR_CONNECTION /* 24 */:
                    case Constants.MAX_TREE_DEPTH /* 25 */:
                    case 26:
                    case 27:
                    case 28:
                    case 29:
                    case 30:
                        return true;
                    default:
                        return false;
                }
        }
    }
}
