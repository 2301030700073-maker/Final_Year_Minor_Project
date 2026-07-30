package com.facebook.ads.redexgen.core;

import com.facebook.ads.AdListener;

/* renamed from: com.facebook.ads.redexgen.X.ki, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2365ki extends BL {
    public static String[] A02 = {"aYZ348mE1NYrFcMBoebQMkiZFG78oX5w", "qZgy2fVZKkcRQxGeLIPji8yDZzfZsU0K", "FW", "4WpWxoGmbDHaVYPSEbV5W", "JuvmjYnKk99PR9XqbJ5bpADbGT7vNhdJ", "90qKQYWe37jbHMTFJzGbdEUnuOp61wed", "dYksIGNGyyMeZtC5mrM4so", "pL5NnltKvH9DFuMzl1s9TskXUqu4u7R4"};
    public final /* synthetic */ C2361ke A00;
    public final /* synthetic */ C1091Ag A01;

    public C2365ki(C2361ke c2361ke, C1091Ag c1091Ag) {
        this.A00 = c2361ke;
        this.A01 = c1091Ag;
    }

    @Override // com.facebook.ads.redexgen.core.BL
    public final void A01() {
        C09876d c09876d;
        C09876d c09876d2;
        C09876d c09876d3;
        c09876d = this.A00.A01;
        if (c09876d.A06() != null) {
            c09876d2 = this.A00.A01;
            AdListener A06 = c09876d2.A06();
            c09876d3 = this.A00.A01;
            if (A02[2].length() != 2) {
                throw new RuntimeException();
            }
            String[] strArr = A02;
            strArr[3] = "zGBwvDJj20KV94Zd2N0fZ";
            strArr[6] = "5j2wCmqr0QfuHbPw5sx74i";
            A06.onError(c09876d3.A07(), C8.A00(this.A01));
        }
    }
}
