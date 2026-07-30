package com.facebook.ads.redexgen.core;

import android.graphics.Bitmap;
import android.os.Bundle;
import android.text.Layout;
import android.text.Spanned;
import android.text.SpannedString;
import android.text.TextUtils;
import com.google.android.gms.ads.RequestConfiguration;

/* renamed from: com.facebook.ads.redexgen.X.Qh, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1476Qh implements InterfaceC1398Nb {
    public final float A00;
    public final float A01;
    public final float A02;
    public final float A03;
    public final float A04;
    public final float A05;
    public final int A06;
    public final int A07;
    public final int A08;
    public final int A09;
    public final int A0A;
    public final int A0B;
    public final Bitmap A0C;
    public final Layout.Alignment A0D;
    public final Layout.Alignment A0E;
    public final CharSequence A0F;
    public final boolean A0G;
    public static String[] A0H = {"X7OGZc3pb6oJZlPj8nhxVqWmS", "CG21vn2ycOhsHyRB8Ec7PtQllX393or7", "Xg47lYln7De7JM9e1Qsm8WouyvHcmzmf", "k79A4IA9hCPxD7YnC0nuYAhWMdnD", "M05svwDzdKHfpMBpmBiths0G4NFVSZNV", "WNPLVOJgtk3IIJAX9zOmUx1lzVvuJ8m1", "LgVEwL12Pos9huT7UJcssFcnz74M", "SsvYMpSyd2cjXdtidUW4n9yM7K7nlqz2"};
    public static final C1476Qh A0J = new C1868cY().A0G(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED).A0H();
    public static final String A0U = AbstractC2094gE.A0h(0);
    public static final String A0V = AbstractC2094gE.A0h(1);
    public static final String A0P = AbstractC2094gE.A0h(2);
    public static final String A0K = AbstractC2094gE.A0h(3);
    public static final String A0M = AbstractC2094gE.A0h(4);
    public static final String A0O = AbstractC2094gE.A0h(5);
    public static final String A0N = AbstractC2094gE.A0h(6);
    public static final String A0Q = AbstractC2094gE.A0h(7);
    public static final String A0R = AbstractC2094gE.A0h(8);
    public static final String A0X = AbstractC2094gE.A0h(9);
    public static final String A0W = AbstractC2094gE.A0h(10);
    public static final String A0T = AbstractC2094gE.A0h(11);
    public static final String A0L = AbstractC2094gE.A0h(12);
    public static final String A0Z = AbstractC2094gE.A0h(13);
    public static final String A0a = AbstractC2094gE.A0h(14);
    public static final String A0Y = AbstractC2094gE.A0h(15);
    public static final String A0S = AbstractC2094gE.A0h(16);
    public static final InterfaceC1397Na<C1476Qh> A0I = new InterfaceC1397Na() { // from class: com.facebook.ads.redexgen.X.Qj
        @Override // com.facebook.ads.redexgen.core.InterfaceC1397Na
        public final InterfaceC1398Nb A6V(Bundle bundle) {
            C1476Qh A00;
            A00 = C1476Qh.A00(bundle);
            return A00;
        }
    };

    public C1476Qh(CharSequence charSequence, Layout.Alignment alignment, Layout.Alignment alignment2, Bitmap bitmap, float f, int i, int i2, float f2, int i3, int i4, float f3, float f4, float f5, boolean z, int i5, int i6, float f6) {
        if (charSequence == null) {
            AbstractC2011es.A01(bitmap);
        } else {
            AbstractC2011es.A07(bitmap == null);
        }
        if (charSequence instanceof Spanned) {
            this.A0F = SpannedString.valueOf(charSequence);
        } else if (charSequence != null) {
            this.A0F = charSequence.toString();
        } else {
            this.A0F = null;
        }
        this.A0E = alignment;
        this.A0D = alignment2;
        this.A0C = bitmap;
        this.A01 = f;
        this.A07 = i;
        this.A06 = i2;
        this.A02 = f2;
        this.A08 = i3;
        this.A04 = f4;
        this.A00 = f5;
        this.A0G = z;
        this.A0B = i5;
        this.A09 = i4;
        this.A05 = f3;
        this.A0A = i6;
        this.A03 = f6;
    }

    public static final C1476Qh A00(Bundle bundle) {
        C1868cY c1868cY = new C1868cY();
        CharSequence charSequence = bundle.getCharSequence(A0U);
        if (charSequence != null) {
            c1868cY.A0G(charSequence);
        }
        Layout.Alignment alignment = (Layout.Alignment) bundle.getSerializable(A0V);
        if (alignment != null) {
            c1868cY.A0F(alignment);
        }
        Layout.Alignment alignment2 = (Layout.Alignment) bundle.getSerializable(A0P);
        if (alignment2 != null) {
            c1868cY.A0E(alignment2);
        }
        Bitmap bitmap = (Bitmap) bundle.getParcelable(A0K);
        if (bitmap != null) {
            c1868cY.A0D(bitmap);
        }
        if (bundle.containsKey(A0M) && bundle.containsKey(A0O)) {
            c1868cY.A07(bundle.getFloat(A0M), bundle.getInt(A0O));
        }
        if (bundle.containsKey(A0N)) {
            c1868cY.A09(bundle.getInt(A0N));
        }
        if (bundle.containsKey(A0Q)) {
            c1868cY.A04(bundle.getFloat(A0Q));
        }
        if (bundle.containsKey(A0R)) {
            c1868cY.A0A(bundle.getInt(A0R));
        }
        if (bundle.containsKey(A0W) && bundle.containsKey(A0X)) {
            c1868cY.A08(bundle.getFloat(A0W), bundle.getInt(A0X));
        }
        if (bundle.containsKey(A0T)) {
            c1868cY.A06(bundle.getFloat(A0T));
        }
        boolean containsKey = bundle.containsKey(A0L);
        if (A0H[1].charAt(11) == 'w') {
            throw new RuntimeException();
        }
        String[] strArr = A0H;
        strArr[5] = "8g4NC67KOuH4JjazyKNzLoPpVu9Yvg5h";
        strArr[7] = "NciJvHe4JsjLjcRh53hpCeauHFN7Fx6s";
        if (containsKey) {
            c1868cY.A03(bundle.getFloat(A0L));
        }
        if (bundle.containsKey(A0Z)) {
            c1868cY.A0C(bundle.getInt(A0Z));
        }
        if (!bundle.getBoolean(A0a, false)) {
            c1868cY.A02();
        }
        if (bundle.containsKey(A0Y)) {
            c1868cY.A0B(bundle.getInt(A0Y));
        }
        if (bundle.containsKey(A0S)) {
            c1868cY.A05(bundle.getFloat(A0S));
        }
        C1476Qh A0H2 = c1868cY.A0H();
        String[] strArr2 = A0H;
        if (strArr2[3].length() != strArr2[6].length()) {
            String[] strArr3 = A0H;
            strArr3[5] = "iFzOiQN4WNp6uTEvwqKIawPHqFuQG2r7";
            strArr3[7] = "Mj2Pqz2der90hE0yKzXorbLtsVZt6uPQ";
            return A0H2;
        }
        String[] strArr4 = A0H;
        strArr4[3] = "HbZYQunlkLAkOS7qKxYKapXeZtQu";
        strArr4[6] = "lqDfmjBFsKExcRkuXM0v0QxVAKug";
        return A0H2;
    }

    public final C1868cY A02() {
        return new C1868cY(this);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        C1476Qh c1476Qh = (C1476Qh) obj;
        if (TextUtils.equals(this.A0F, c1476Qh.A0F) && this.A0E == c1476Qh.A0E && this.A0D == c1476Qh.A0D && (this.A0C != null ? !(c1476Qh.A0C == null || !this.A0C.sameAs(c1476Qh.A0C)) : c1476Qh.A0C == null) && this.A01 == c1476Qh.A01 && this.A07 == c1476Qh.A07 && this.A06 == c1476Qh.A06 && this.A02 == c1476Qh.A02 && this.A08 == c1476Qh.A08 && this.A04 == c1476Qh.A04 && this.A00 == c1476Qh.A00) {
            boolean z = this.A0G;
            boolean z2 = c1476Qh.A0G;
            String[] strArr = A0H;
            if (strArr[5].charAt(5) == strArr[7].charAt(5)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0H;
            strArr2[4] = "MkONXW3pK85XIeK1QgKlM8YJXKXZ4AkU";
            strArr2[2] = "yQGUJBbnVBZoZa5qwXV9Wub8EsO8Vlj5";
            if (z == z2 && this.A0B == c1476Qh.A0B && this.A09 == c1476Qh.A09 && this.A05 == c1476Qh.A05 && this.A0A == c1476Qh.A0A && this.A03 == c1476Qh.A03) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return AbstractC1436Or.A00(this.A0F, this.A0E, this.A0D, this.A0C, Float.valueOf(this.A01), Integer.valueOf(this.A07), Integer.valueOf(this.A06), Float.valueOf(this.A02), Integer.valueOf(this.A08), Float.valueOf(this.A04), Float.valueOf(this.A00), Boolean.valueOf(this.A0G), Integer.valueOf(this.A0B), Integer.valueOf(this.A09), Float.valueOf(this.A05), Integer.valueOf(this.A0A), Float.valueOf(this.A03));
    }
}
