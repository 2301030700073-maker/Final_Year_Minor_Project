package com.appsflyer.internal;

import kotlin.jvm.internal.Intrinsics;

/* loaded from: classes2.dex */
public final class AFe1wSDK {
    final String AFAdRevenueData;
    final String getRevenue;

    public AFe1wSDK(String str, String str2) {
        Intrinsics.checkNotNullParameter(str, "");
        Intrinsics.checkNotNullParameter(str2, "");
        this.AFAdRevenueData = str;
        this.getRevenue = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AFe1wSDK)) {
            return false;
        }
        AFe1wSDK aFe1wSDK = (AFe1wSDK) obj;
        return Intrinsics.areEqual(this.AFAdRevenueData, aFe1wSDK.AFAdRevenueData) && Intrinsics.areEqual(this.getRevenue, aFe1wSDK.getRevenue);
    }

    public final int hashCode() {
        return (this.AFAdRevenueData.hashCode() * 31) + this.getRevenue.hashCode();
    }

    public final String toString() {
        return "HostConfig(prefix=" + this.AFAdRevenueData + ", host=" + this.getRevenue + ")";
    }
}
