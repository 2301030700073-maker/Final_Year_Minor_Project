package com.appsflyer.internal;

import kotlin.jvm.internal.Intrinsics;

/* loaded from: classes2.dex */
public final class AFf1aSDK {
    public final long getCurrencyIso4217Code;
    public final boolean getMediationNetwork;
    public final String getMonetizationNetwork;

    public AFf1aSDK(String str, long j, boolean z) {
        Intrinsics.checkNotNullParameter(str, "");
        this.getMonetizationNetwork = str;
        this.getCurrencyIso4217Code = j;
        this.getMediationNetwork = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AFf1aSDK)) {
            return false;
        }
        AFf1aSDK aFf1aSDK = (AFf1aSDK) obj;
        return Intrinsics.areEqual(this.getMonetizationNetwork, aFf1aSDK.getMonetizationNetwork) && this.getCurrencyIso4217Code == aFf1aSDK.getCurrencyIso4217Code && this.getMediationNetwork == aFf1aSDK.getMediationNetwork;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final int hashCode() {
        int hashCode = ((this.getMonetizationNetwork.hashCode() * 31) + Long.hashCode(this.getCurrencyIso4217Code)) * 31;
        boolean z = this.getMediationNetwork;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        return hashCode + i;
    }

    public final String toString() {
        return "AFUninstallToken(token=" + this.getMonetizationNetwork + ", receivedTime=" + this.getCurrencyIso4217Code + ", isQueued=" + this.getMediationNetwork + ")";
    }
}
