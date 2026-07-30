package defpackage;

import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedList;

/* renamed from: gm, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C2828gm {

    /* renamed from: do, reason: not valid java name */
    public static final String[] f13206do = {"UPPER", "LOWER", "DIGIT", "MIXED", "PUNCT"};

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final int[][] f13207do = {new int[]{0, 327708, 327710, 327709, 656318}, new int[]{590318, 0, 327710, 327709, 656318}, new int[]{262158, 590300, 0, 590301, 932798}, new int[]{327709, 327708, 656318, 0, 327710}, new int[]{327711, 656380, 656382, 656381, 0}};

    /* renamed from: for, reason: not valid java name */
    public static final int[][] f13208for;

    /* renamed from: if, reason: not valid java name */
    public static final int[][] f13209if;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final byte[] f13210do;

    static {
        int[][] iArr = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, 5, 256);
        f13209if = iArr;
        iArr[0][32] = 1;
        for (int i = 65; i <= 90; i++) {
            f13209if[0][i] = (i - 65) + 2;
        }
        f13209if[1][32] = 1;
        for (int i2 = 97; i2 <= 122; i2++) {
            f13209if[1][i2] = (i2 - 97) + 2;
        }
        f13209if[2][32] = 1;
        for (int i3 = 48; i3 <= 57; i3++) {
            f13209if[2][i3] = (i3 - 48) + 2;
        }
        int[] iArr2 = f13209if[2];
        iArr2[44] = 12;
        iArr2[46] = 13;
        int[] iArr3 = {0, 32, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 27, 28, 29, 30, 31, 64, 92, 94, 95, 96, 124, 126, ModuleDescriptor.MODULE_VERSION};
        for (int i4 = 0; i4 < 28; i4++) {
            f13209if[3][iArr3[i4]] = i4;
        }
        int[] iArr4 = {0, 13, 0, 0, 0, 0, 33, 39, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 58, 59, 60, 61, 62, 63, 91, 93, 123, 125};
        for (int i5 = 0; i5 < 31; i5++) {
            int i6 = iArr4[i5];
            if (i6 > 0) {
                f13209if[4][i6] = i5;
            }
        }
        int[][] iArr5 = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, 6, 6);
        f13208for = iArr5;
        for (int[] iArr6 : iArr5) {
            Arrays.fill(iArr6, -1);
        }
        int[][] iArr7 = f13208for;
        iArr7[0][4] = 0;
        int[] iArr8 = iArr7[1];
        iArr8[4] = 0;
        iArr8[0] = 28;
        iArr7[3][4] = 0;
        int[] iArr9 = iArr7[2];
        iArr9[4] = 0;
        iArr9[0] = 15;
    }

    public C2828gm(byte[] bArr) {
        this.f13210do = bArr;
    }

    /* renamed from: do, reason: not valid java name */
    public static LinkedList m6748do(LinkedList linkedList) {
        boolean z;
        LinkedList linkedList2 = new LinkedList();
        Iterator it = linkedList.iterator();
        while (it.hasNext()) {
            C0740bF c0740bF = (C0740bF) it.next();
            Iterator it2 = linkedList2.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    z = true;
                    break;
                }
                C0740bF c0740bF2 = (C0740bF) it2.next();
                if (c0740bF2.m4816for(c0740bF)) {
                    z = false;
                    break;
                }
                if (c0740bF.m4816for(c0740bF2)) {
                    it2.remove();
                }
            }
            if (z) {
                linkedList2.add(c0740bF);
            }
        }
        return linkedList2;
    }
}
