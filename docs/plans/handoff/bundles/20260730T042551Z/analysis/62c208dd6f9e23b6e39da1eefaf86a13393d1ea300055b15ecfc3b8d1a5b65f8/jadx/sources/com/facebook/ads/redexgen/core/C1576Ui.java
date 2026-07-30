package com.facebook.ads.redexgen.core;

import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import java.util.Arrays;

/* renamed from: com.facebook.ads.redexgen.X.Ui, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1576Ui {
    public static byte[] A02;
    public static String[] A03 = {"DcZnPoy59v7sj6PT8aConXR6jEPAL960", "Pv8IBEx58pJkNNVPq5bnbeRuMFJtpa1x", "3Zs54Ju7SHVe", "H", "RKR9j3xEV0ivPjQ8DuOkvj9eC5GtakEP", "8QNaCEG2mWsibXa4TFiVJYyhNMyXSiHE", "uazceyLmjty8LR90DaJQZdEYzqeKFyaJ", "Ew5eYlEYbVVB"};
    public final C1577Uk A00;
    public final C1577Uk A01;

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ ModuleDescriptor.MODULE_VERSION);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A02 = new byte[]{70, 74, 28, 56};
    }

    static {
        A01();
    }

    public C1576Ui(C1577Uk c1577Uk) {
        this(c1577Uk, c1577Uk);
    }

    public C1576Ui(C1577Uk c1577Uk, C1577Uk c1577Uk2) {
        this.A00 = (C1577Uk) AbstractC2011es.A01(c1577Uk);
        this.A01 = (C1577Uk) AbstractC2011es.A01(c1577Uk2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        String[] strArr = A03;
        if (strArr[1].charAt(6) != strArr[4].charAt(6)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A03;
        strArr2[7] = "TGB2jMu9Hb97";
        strArr2[3] = "v";
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        C1576Ui c1576Ui = (C1576Ui) obj;
        return this.A00.equals(c1576Ui.A00) && this.A01.equals(c1576Ui.A01);
    }

    public final int hashCode() {
        return (this.A00.hashCode() * 31) + this.A01.hashCode();
    }

    public final String toString() {
        return A00(2, 1, 56) + this.A00 + (this.A00.equals(this.A01) ? A00(0, 0, 31) : A00(0, 2, 21) + this.A01) + A00(3, 1, 26);
    }
}
