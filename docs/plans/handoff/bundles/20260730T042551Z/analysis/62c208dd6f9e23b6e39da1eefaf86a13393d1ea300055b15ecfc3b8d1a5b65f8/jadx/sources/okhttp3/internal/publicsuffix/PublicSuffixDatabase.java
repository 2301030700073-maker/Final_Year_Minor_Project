package okhttp3.internal.publicsuffix;

import defpackage.C0114Av;
import defpackage.C0433Pl;
import defpackage.C3675sH;
import defpackage.C4065yv;
import defpackage.SJ;
import defpackage.Uy;
import java.io.InputStream;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.logging.Logger;

/* loaded from: classes3.dex */
public final class PublicSuffixDatabase {

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public byte[] f14848do;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public byte[] f14849if;

    /* renamed from: for, reason: not valid java name */
    public static final byte[] f14844for = {42};

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final String[] f14843do = new String[0];

    /* renamed from: if, reason: not valid java name */
    public static final String[] f14845if = {"*"};

    /* renamed from: do, reason: not valid java name */
    public static final PublicSuffixDatabase f14842do = new PublicSuffixDatabase();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AtomicBoolean f14847do = new AtomicBoolean(false);

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final CountDownLatch f14846do = new CountDownLatch(1);

    /* renamed from: do, reason: not valid java name */
    public static String m7721do(byte[] bArr, byte[][] bArr2, int i) {
        int i2;
        boolean z;
        int i3;
        int i4;
        int length = bArr.length;
        int i5 = 0;
        while (i5 < length) {
            int i6 = (i5 + length) / 2;
            while (i6 > -1 && bArr[i6] != 10) {
                i6--;
            }
            int i7 = i6 + 1;
            int i8 = 1;
            while (true) {
                i2 = i7 + i8;
                if (bArr[i2] == 10) {
                    break;
                }
                i8++;
            }
            int i9 = i2 - i7;
            int i10 = i;
            boolean z2 = false;
            int i11 = 0;
            int i12 = 0;
            while (true) {
                if (z2) {
                    i3 = 46;
                    z = false;
                } else {
                    z = z2;
                    i3 = bArr2[i10][i11] & 255;
                }
                i4 = i3 - (bArr[i7 + i12] & 255);
                if (i4 == 0) {
                    i12++;
                    i11++;
                    if (i12 == i9) {
                        break;
                    }
                    if (bArr2[i10].length != i11) {
                        z2 = z;
                    } else {
                        if (i10 == bArr2.length - 1) {
                            break;
                        }
                        i10++;
                        z2 = true;
                        i11 = -1;
                    }
                } else {
                    break;
                }
            }
            if (i4 >= 0) {
                if (i4 <= 0) {
                    int i13 = i9 - i12;
                    int length2 = bArr2[i10].length - i11;
                    while (true) {
                        i10++;
                        if (i10 >= bArr2.length) {
                            break;
                        }
                        length2 += bArr2[i10].length;
                    }
                    if (length2 >= i13) {
                        if (length2 <= i13) {
                            return new String(bArr, i7, i9, SJ.f3491do);
                        }
                    }
                }
                i5 = i2 + 1;
            }
            length = i7 - 1;
        }
        return null;
    }

    /* renamed from: if, reason: not valid java name */
    public final void m7722if() {
        InputStream resourceAsStream = PublicSuffixDatabase.class.getResourceAsStream("publicsuffixes.gz");
        if (resourceAsStream == null) {
            return;
        }
        C3675sH c3675sH = new C3675sH();
        Logger logger = C0114Av.f168do;
        Uy uy = new Uy(new C0433Pl(new C4065yv(resourceAsStream, c3675sH)));
        try {
            byte[] bArr = new byte[uy.readInt()];
            uy.m2488if(bArr);
            byte[] bArr2 = new byte[uy.readInt()];
            uy.m2488if(bArr2);
            synchronized (this) {
                this.f14848do = bArr;
                this.f14849if = bArr2;
            }
            this.f14846do.countDown();
        } finally {
            SJ.m2149try(uy);
        }
    }
}
