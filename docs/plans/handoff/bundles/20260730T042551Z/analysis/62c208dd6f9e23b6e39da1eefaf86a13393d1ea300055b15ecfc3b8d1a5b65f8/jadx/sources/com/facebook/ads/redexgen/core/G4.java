package com.facebook.ads.redexgen.core;

import android.view.View;
import com.google.android.gms.ads.RequestConfiguration;
import java.util.Arrays;

/* loaded from: assets/audience_network.dex */
public class G4 implements View.OnClickListener {
    public static byte[] A01;
    public static String[] A02 = {"QT04eFLa9mjEfMLd", "wn7Oy4ZvyPX", "JdVOIkh1rweljXiNlmOrPPxbj76ouIw4", "8", "HoYvJWyWnzW9xQrMEDuDE8k", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "4NNWhWDRRxnZXe7GAIP6Nv2mv9IaX8G8", "Hy00I9bleYebYRTE8UzaGRkCp9A9i8E3"};
    public final /* synthetic */ C2090gA A00;

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 108);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{26, 30, 18, 24, 22};
    }

    static {
        A01();
    }

    public G4(C2090gA c2090gA) {
        this.A00 = c2090gA;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (BQ.A02(this)) {
            return;
        }
        try {
            this.A00.getCtaButton().A0A(A00(0, 5, 69));
        } catch (Throwable th) {
            BQ.A00(th, this);
            String[] strArr = A02;
            if (strArr[1].length() == strArr[4].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A02;
            strArr2[2] = "gqn3ITnmd8SVLq3knr5xxRJ0pveQ6sYL";
            strArr2[7] = "MdUyII5PUBg9MBmNc1g4VKtuuD0LDq6P";
        }
    }
}
