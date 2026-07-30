package com.facebook.ads.redexgen.core;

import android.os.Bundle;
import com.google.android.gms.ads.RequestConfiguration;

/* loaded from: assets/audience_network.dex */
public final class ZE implements InterfaceC1398Nb {
    public final ZI A00;

    @Deprecated
    public final E1 A01;
    public final ZG A02;
    public final PP A03;

    @Deprecated
    public final ZF A04;
    public final ZC A05;
    public final String A06;
    public static String[] A07 = {"75xJFduIMxyPuYUkVz483sJBnAcsAGMt", "TRlLUM7UN7d6ZMpgKgKtaSof78G6koYS", "QzsC9zybTqk1FRWX4xvOCDJWDQUStUU5", "7", "vby9mdVdCOnOHbl0WKbwu7GFn2k2d8Kf", "RTPWPqup43k0H5h14hfzvYa9TxJMYAZX", "Oumckoc1zDinSUsB0wRSQGt6gXPsEBlZ", "aaUdNUfilNdKQDVoR1mlcUyZ7NAG5upS"};
    public static final ZE A09 = new PH().A05();
    public static final InterfaceC1397Na<ZE> A08 = new InterfaceC1397Na() { // from class: com.facebook.ads.redexgen.X.ZK
        @Override // com.facebook.ads.redexgen.core.InterfaceC1397Na
        public final InterfaceC1398Nb A6V(Bundle bundle) {
            ZE A00;
            A00 = ZE.A00(bundle);
            return A00;
        }
    };

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException: Index 10 out of bounds for length 10
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.startVar(DebugInfoParser.java:203)
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:125)
    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:122)
    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:636)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:38)
     */
    public static ZE A00(Bundle bundle) {
        String str = (String) AbstractC2011es.A01(bundle.getString(A02(0), RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED));
        Bundle bundle2 = bundle.getBundle(A02(1));
        ZG A6V = bundle2 == null ? ZG.A07 : ZG.A06.A6V(bundle2);
        Bundle bundle3 = bundle.getBundle(A02(2));
        ZC A6V2 = bundle3 == null ? ZC.A0Z : ZC.A0Y.A6V(bundle3);
        String A02 = A02(3);
        String[] strArr = A07;
        if (strArr[0].charAt(15) == strArr[5].charAt(15)) {
            throw new RuntimeException();
        }
        A07[4] = "7tcWmieQ6urbX1gsYJsT08orlnHIuPr9";
        Bundle bundle4 = bundle.getBundle(A02);
        return new ZE(str, bundle4 == null ? E1.A00 : ZI.A06.A6V(bundle4), null, A6V, A6V2);
    }

    public ZE(String str, E1 e1, ZF zf, ZG zg, ZC zc) {
        this.A06 = str;
        this.A03 = zf;
        this.A04 = zf;
        this.A02 = zg;
        this.A05 = zc;
        this.A00 = e1;
        this.A01 = e1;
    }

    public static String A02(int i) {
        return Integer.toString(i, 36);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ZE)) {
            return false;
        }
        ZE ze = (ZE) obj;
        if (AbstractC2094gE.A1E(this.A06, ze.A06) && this.A00.equals(ze.A00) && AbstractC2094gE.A1E(this.A03, ze.A03) && AbstractC2094gE.A1E(this.A02, ze.A02) && AbstractC2094gE.A1E(this.A05, ze.A05)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int result = this.A06.hashCode();
        int i = result * 31;
        int result2 = this.A03 != null ? this.A03.hashCode() : 0;
        int result3 = (((i + result2) * 31) + this.A02.hashCode()) * 31;
        int result4 = this.A00.hashCode();
        return ((result3 + result4) * 31) + this.A05.hashCode();
    }
}
