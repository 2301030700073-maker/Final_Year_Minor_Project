package com.facebook.ads.redexgen.core;

/* renamed from: com.facebook.ads.redexgen.X.co, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1884co {
    public static String[] A02 = {"fovKo2ewLf2GSK9jeear2gS7CowNwxa", "KlGOIL0Oaip6PstgZpnBK85QcCEbYE5x", "a3eX", "FFMxCeQQyGyq4O1GggLVF7QLgDcKRoDY", "cXL4SXe3GsCuoCx0Vnr", "CP9ZXNuNfwc2kIiOsVMHIXJu8wbF", "jroPQLP8oYSHq8f", "LdJsqk09jUSo22s"};
    public final long A00;
    public final long A01;

    public C1884co(long j, long j2) {
        this.A01 = j;
        this.A00 = j2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C1884co)) {
            return false;
        }
        String[] strArr = A02;
        if (strArr[6].length() != strArr[7].length()) {
            throw new RuntimeException();
        }
        A02[3] = "9viJvoP4kT6AyuEGwZSXX7SsGy7u7XxA";
        C1884co c1884co = (C1884co) obj;
        return this.A01 == c1884co.A01 && this.A00 == c1884co.A00;
    }

    public final int hashCode() {
        return (((int) this.A01) * 31) + ((int) this.A00);
    }
}
