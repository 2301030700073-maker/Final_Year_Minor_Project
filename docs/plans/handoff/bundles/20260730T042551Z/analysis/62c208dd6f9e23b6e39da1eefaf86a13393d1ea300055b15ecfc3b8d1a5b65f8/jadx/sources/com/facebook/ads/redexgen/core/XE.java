package com.facebook.ads.redexgen.core;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.util.SparseArray;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import java.util.Arrays;

/* loaded from: assets/audience_network.dex */
public final class XE {
    public static byte[] A07;
    public static String[] A08 = {"qaVNF3cuOQ2TShKUfBd8wTxxX16un2aj", "DHz1HpLj16CbV8kgqNXleZgBYWEDfTGB", "zh4dgPP", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "i7EfpclWWzBPOSlmcpUZDTE93tNbJx57", "chfqfdzSYKizTJc1RlSxkoLzX6vYJPdw", "EpROsiYjRE43AFJBJj57TgI", "PC28fV4Mm0GGwYfYo2Zbp0GEbNYdPasF"};
    public static final byte[] A09;
    public static final byte[] A0A;
    public static final byte[] A0B;
    public Bitmap A00;
    public final Canvas A01;
    public final Paint A02 = new Paint();
    public final Paint A03;
    public final X6 A04;
    public final X7 A05;
    public final XD A06;

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static X6 A04(C2069fp c2069fp, int i) {
        int A04;
        int A042;
        int A043;
        int A044;
        int i2 = 8;
        int A045 = c2069fp.A04(8);
        c2069fp.A09(8);
        int i3 = i - 2;
        int[] A0F = A0F();
        int[] A0G = A0G();
        int[] A0H = A0H();
        while (i3 > 0) {
            int A046 = c2069fp.A04(i2);
            int A047 = c2069fp.A04(i2);
            int i4 = i3 - 2;
            int[] iArr = (A047 & 128) != 0 ? A0F : (A047 & 64) != 0 ? A0G : A0H;
            if ((A047 & 1) != 0) {
                A04 = c2069fp.A04(i2);
                A042 = c2069fp.A04(i2);
                if (A08[0].charAt(28) == '0') {
                    throw new RuntimeException();
                }
                String[] strArr = A08;
                strArr[5] = "HMcwXsRxCBdugXDYoLFekeNu97sTcfdg";
                strArr[1] = "h3BrkjhHflgBsgKJ8ktatJXtnWvKSPBP";
                A043 = c2069fp.A04(i2);
                A044 = c2069fp.A04(i2);
                i3 = i4 - 4;
            } else {
                A04 = c2069fp.A04(6) << 2;
                A042 = c2069fp.A04(4) << 4;
                if (A08[3].length() != 0) {
                    throw new RuntimeException();
                }
                A08[3] = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                A043 = c2069fp.A04(4) << 4;
                A044 = c2069fp.A04(2) << 6;
                i3 = i4 - 2;
            }
            if (A04 == 0) {
                A042 = 0;
                A043 = 0;
                A044 = 255;
            }
            iArr[A046] = A00((byte) (255 - (A044 & 255)), AbstractC2094gE.A07((int) (A04 + ((A042 - 128) * 1.402d)), 0, 255), AbstractC2094gE.A07((int) ((A04 - ((A043 - 128) * 0.34414d)) - ((A042 - 128) * 0.71414d)), 0, 255), AbstractC2094gE.A07((int) (A04 + ((A043 - 128) * 1.772d)), 0, 255));
            i2 = 8;
        }
        return new X6(A045, A0F, A0G, A0H);
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static X7 A05(C2069fp c2069fp) {
        int i;
        int i2;
        int i3;
        int i4;
        c2069fp.A09(4);
        boolean A0H = c2069fp.A0H();
        c2069fp.A09(3);
        int A04 = c2069fp.A04(16);
        int A042 = c2069fp.A04(16);
        if (A0H) {
            i = c2069fp.A04(16);
            i4 = c2069fp.A04(16);
            i2 = c2069fp.A04(16);
            i3 = c2069fp.A04(16);
        } else {
            i = 0;
            i2 = 0;
            i3 = A042;
            i4 = A04;
        }
        return new X7(A04, A042, i, i4, i2, i3);
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static XB A08(C2069fp c2069fp, int i) {
        int i2 = 8;
        int A04 = c2069fp.A04(8);
        c2069fp.A09(4);
        boolean A0H = c2069fp.A0H();
        c2069fp.A09(3);
        int A042 = c2069fp.A04(16);
        int A043 = c2069fp.A04(16);
        int A044 = c2069fp.A04(3);
        int A045 = c2069fp.A04(3);
        c2069fp.A09(2);
        int A046 = c2069fp.A04(8);
        int A047 = c2069fp.A04(8);
        int A048 = c2069fp.A04(4);
        int A049 = c2069fp.A04(2);
        c2069fp.A09(2);
        int i3 = i - 10;
        SparseArray sparseArray = new SparseArray();
        while (i3 > 0) {
            int A0410 = c2069fp.A04(16);
            int A0411 = c2069fp.A04(2);
            int A0412 = c2069fp.A04(2);
            int A0413 = c2069fp.A04(12);
            c2069fp.A09(4);
            int A0414 = c2069fp.A04(12);
            i3 -= 6;
            int i4 = 0;
            int i5 = 0;
            if (A0411 == 1 || A0411 == 2) {
                i4 = c2069fp.A04(i2);
                i5 = c2069fp.A04(i2);
                i3 -= 2;
                if (A08[0].charAt(28) == '0') {
                    throw new RuntimeException();
                }
                A08[3] = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            }
            sparseArray.put(A0410, new XC(A0411, A0412, A0413, A0414, i4, i5));
            i2 = 8;
        }
        return new XB(A04, A0H, A042, A043, A044, A045, A046, A047, A048, A049, sparseArray);
    }

    public static String A09(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A07, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = copyOfRange.length;
            if (A08[3].length() != 0) {
                throw new RuntimeException();
            }
            A08[3] = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            if (i4 >= length) {
                return new String(copyOfRange);
            }
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 9);
            i4++;
        }
    }

    public static void A0A() {
        A07 = new byte[]{22, 51, 38, 51, 114, 52, 59, 55, 62, 54, 114, 62, 55, 60, 53, 38, 58, 114, 55, 42, 49, 55, 55, 54, 33, 114, 62, 59, 63, 59, 38, 48, 2, 22, 36, 21, 6, 7, 17, 6};
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0070, code lost:
    
        if (r4 != null) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x007c, code lost:
    
        if ((r6.A05 + 1) != r21.A00.getWidth()) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0088, code lost:
    
        if ((r6.A00 + 1) == r21.A00.getHeight()) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x016c, code lost:
    
        if (r15 != false) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x016e, code lost:
    
        r10 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0193, code lost:
    
        r10 = r21.A02;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0190, code lost:
    
        if (r15 != false) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x008a, code lost:
    
        r21.A00 = android.graphics.Bitmap.createBitmap(r6.A05 + 1, r6.A00 + 1, android.graphics.Bitmap.Config.ARGB_8888);
        r21.A01.setBitmap(r21.A00);
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x023c, code lost:
    
        if (r4 != null) goto L21;
     */
    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    /* JADX WARN: Removed duplicated region for block: B:38:0x012e  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0244 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<com.facebook.ads.redexgen.core.C1476Qh> A0I(byte[] r22, int r23) {
        /*
            Method dump skipped, instructions count: 597
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.core.XE.A0I(byte[], int):java.util.List");
    }

    static {
        A0A();
        A09 = new byte[]{0, 7, 8, 15};
        A0A = new byte[]{0, 119, -120, -1};
        A0B = new byte[]{0, 17, 34, 51, 68, 85, 102, 119, -120, -103, -86, -69, -52, -35, -18, -1};
    }

    public XE(int i, int i2) {
        this.A02.setStyle(Paint.Style.FILL_AND_STROKE);
        this.A02.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC));
        this.A02.setPathEffect(null);
        this.A03 = new Paint();
        this.A03.setStyle(Paint.Style.FILL);
        this.A03.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OVER));
        this.A03.setPathEffect(null);
        this.A01 = new Canvas();
        this.A05 = new X7(719, 575, 0, 719, 0, 575);
        this.A04 = new X6(0, A0F(), A0G(), A0H());
        this.A06 = new XD(i, i2);
    }

    public static int A00(int i, int i2, int i3, int i4) {
        return (i << 24) | (i2 << 16) | (i3 << 8) | i4;
    }

    public static int A01(C2069fp c2069fp, int[] iArr, byte[] bArr, int i, int i2, Paint paint, Canvas canvas) {
        boolean z = false;
        do {
            int runLength = 0;
            if (A08[3].length() != 0) {
                throw new RuntimeException();
            }
            String[] strArr = A08;
            strArr[2] = "nWzirQr";
            strArr[6] = "Cla0GqFoswjTn2ioQMTrmjR";
            int A04 = c2069fp.A04(2);
            if (A04 != 0) {
                runLength = 1;
            } else if (c2069fp.A0H()) {
                runLength = c2069fp.A04(3) + 3;
                A04 = c2069fp.A04(2);
            } else if (c2069fp.A0H()) {
                runLength = 1;
                A04 = 0;
            } else {
                switch (c2069fp.A04(2)) {
                    case 0:
                        z = true;
                        A04 = 0;
                        break;
                    case 1:
                        runLength = 2;
                        A04 = 0;
                        break;
                    case 2:
                        runLength = c2069fp.A04(4) + 12;
                        A04 = c2069fp.A04(2);
                        break;
                    case 3:
                        runLength = c2069fp.A04(8) + 29;
                        A04 = c2069fp.A04(2);
                        break;
                    default:
                        A04 = 0;
                        break;
                }
            }
            if (runLength != 0 && paint != null) {
                if (bArr != null) {
                    A04 = bArr[A04];
                }
                paint.setColor(iArr[A04]);
                canvas.drawRect(i, i2, i + runLength, i2 + 1, paint);
            }
            i += runLength;
        } while (!z);
        return i;
    }

    public static int A02(C2069fp c2069fp, int[] iArr, byte[] bArr, int i, int i2, Paint paint, Canvas canvas) {
        boolean z = false;
        do {
            int i3 = 0;
            int A04 = c2069fp.A04(4);
            if (A04 != 0) {
                i3 = 1;
            } else if (!c2069fp.A0H()) {
                int A042 = c2069fp.A04(3);
                if (A042 != 0) {
                    i3 = A042 + 2;
                    A04 = 0;
                } else {
                    z = true;
                    A04 = 0;
                }
            } else if (!c2069fp.A0H()) {
                i3 = c2069fp.A04(2) + 4;
                A04 = c2069fp.A04(4);
            } else {
                switch (c2069fp.A04(2)) {
                    case 0:
                        i3 = 1;
                        A04 = 0;
                        break;
                    case 1:
                        i3 = 2;
                        A04 = 0;
                        break;
                    case 2:
                        i3 = c2069fp.A04(4) + 9;
                        A04 = c2069fp.A04(4);
                        break;
                    case 3:
                        i3 = c2069fp.A04(8) + 25;
                        A04 = c2069fp.A04(4);
                        break;
                    default:
                        A04 = 0;
                        break;
                }
            }
            if (i3 != 0 && paint != null) {
                if (bArr != null) {
                    A04 = bArr[A04];
                }
                paint.setColor(iArr[A04]);
                canvas.drawRect(i, i2, i + i3, i2 + 1, paint);
            }
            i += i3;
        } while (!z);
        return i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0063, code lost:
    
        if (r5 != 0) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0065, code lost:
    
        r4 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0071, code lost:
    
        r8 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x007f, code lost:
    
        if (com.facebook.ads.redexgen.core.XE.A08[0].charAt(28) == '0') goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0081, code lost:
    
        com.facebook.ads.redexgen.core.XE.A08[0] = "JR2PXvDBNiT4Go9AEf7iO44JeiKvjv0y";
        r5 = 0;
        r4 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x008b, code lost:
    
        r2 = com.facebook.ads.redexgen.core.XE.A08;
        r2[2] = "8kbkRhN";
        r2[6] = "0VH0XTauscYbLoQ5guVPnmN";
        r5 = 0;
        r4 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x006e, code lost:
    
        if (r5 != 0) goto L22;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int A03(com.facebook.ads.redexgen.core.C2069fp r15, int[] r16, byte[] r17, int r18, int r19, android.graphics.Paint r20, android.graphics.Canvas r21) {
        /*
            Method dump skipped, instructions count: 210
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.core.XE.A03(com.facebook.ads.redexgen.X.fp, int[], byte[], int, int, android.graphics.Paint, android.graphics.Canvas):int");
    }

    public static X8 A06(C2069fp c2069fp) {
        int A04 = c2069fp.A04(16);
        c2069fp.A09(4);
        int objectId = c2069fp.A04(2);
        boolean A0H = c2069fp.A0H();
        c2069fp.A09(1);
        byte[] bArr = AbstractC2094gE.A07;
        byte[] bArr2 = AbstractC2094gE.A07;
        if (objectId == 1) {
            int numberOfCodes = c2069fp.A04(8);
            c2069fp.A09(numberOfCodes * 16);
        } else if (objectId == 0) {
            int objectCodingMethod = c2069fp.A04(16);
            int objectId2 = c2069fp.A04(16);
            if (objectCodingMethod > 0) {
                bArr = new byte[objectCodingMethod];
                c2069fp.A0G(bArr, 0, objectCodingMethod);
            }
            if (objectId2 > 0) {
                bArr2 = new byte[objectId2];
                c2069fp.A0G(bArr2, 0, objectId2);
            } else {
                bArr2 = bArr;
            }
        }
        return new X8(A04, A0H, bArr, bArr2);
    }

    public static X9 A07(C2069fp c2069fp, int i) {
        int A04 = c2069fp.A04(8);
        int A042 = c2069fp.A04(4);
        int A043 = c2069fp.A04(2);
        c2069fp.A09(2);
        int i2 = i - 2;
        SparseArray sparseArray = new SparseArray();
        while (i2 > 0) {
            int remainingLength = c2069fp.A04(8);
            c2069fp.A09(8);
            int version = c2069fp.A04(16);
            int timeoutSecs = c2069fp.A04(16);
            i2 -= 6;
            sparseArray.put(remainingLength, new XA(version, timeoutSecs));
        }
        return new X9(A04, A042, A043, sparseArray);
    }

    public static void A0B(X8 x8, X6 x6, int i, int i2, int i3, Paint paint, Canvas canvas) {
        int[] iArr;
        if (i == 3) {
            iArr = x6.A03;
        } else if (i == 2) {
            iArr = x6.A02;
        } else {
            iArr = x6.A01;
        }
        A0D(x8.A03, iArr, i, i2, i3, paint, canvas);
        A0D(x8.A02, iArr, i, i2, i3 + 1, paint, canvas);
        String[] strArr = A08;
        if (strArr[5].charAt(31) == strArr[1].charAt(31)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A08;
        strArr2[2] = "24tCzYY";
        strArr2[6] = "UgY6TZfrXiaaMkQCR3ibsXD";
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0094, code lost:
    
        if (r4 == r5) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0096, code lost:
    
        r2 = A06(r6);
        r1 = r7.A07;
        r0 = r2.A00;
        r1.put(r0, r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x00a5, code lost:
    
        r0 = r7.A02;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x00a7, code lost:
    
        if (r4 != r0) goto L7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x00a9, code lost:
    
        r2 = A06(r6);
        r1 = r7.A05;
        r0 = r2.A00;
        r1.put(r0, r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x00a2, code lost:
    
        if (r4 == r5) goto L18;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void A0C(com.facebook.ads.redexgen.core.C2069fp r6, com.facebook.ads.redexgen.core.XD r7) {
        /*
            Method dump skipped, instructions count: 320
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.core.XE.A0C(com.facebook.ads.redexgen.X.fp, com.facebook.ads.redexgen.X.XD):void");
    }

    public static void A0D(byte[] bArr, int[] iArr, int i, int i2, int i3, Paint paint, Canvas canvas) {
        byte[] bArr2;
        byte[] bArr3;
        int i4 = i3;
        C2069fp c2069fp = new C2069fp(bArr);
        byte[] clutMapTable2To8 = null;
        byte[] clutMapTable2To4 = null;
        byte[] bArr4 = null;
        int line = i2;
        while (c2069fp.A01() != 0) {
            switch (c2069fp.A04(8)) {
                case 16:
                    if (i == 3) {
                        bArr2 = clutMapTable2To4 == null ? A0A : clutMapTable2To4;
                    } else if (i == 2) {
                        bArr2 = clutMapTable2To8 == null ? A09 : clutMapTable2To8;
                    } else {
                        bArr2 = null;
                    }
                    line = A01(c2069fp, iArr, bArr2, line, i4, paint, canvas);
                    c2069fp.A06();
                    break;
                case 17:
                    if (i == 3) {
                        bArr3 = bArr4 == null ? A0B : bArr4;
                    } else {
                        bArr3 = null;
                    }
                    line = A02(c2069fp, iArr, bArr3, line, i4, paint, canvas);
                    c2069fp.A06();
                    break;
                case 18:
                    line = A03(c2069fp, iArr, null, line, i4, paint, canvas);
                    break;
                case 32:
                    clutMapTable2To8 = A0E(4, 4, c2069fp);
                    break;
                case 33:
                    clutMapTable2To4 = A0E(4, 8, c2069fp);
                    break;
                case 34:
                    bArr4 = A0E(16, 8, c2069fp);
                    break;
                case 240:
                    i4 += 2;
                    line = i2;
                    break;
            }
        }
    }

    public static byte[] A0E(int i, int i2, C2069fp c2069fp) {
        byte[] bArr = new byte[i];
        for (int i3 = 0; i3 < i; i3++) {
            bArr[i3] = (byte) c2069fp.A04(i2);
        }
        return bArr;
    }

    public static int[] A0F() {
        return new int[]{0, -1, -16777216, -8421505};
    }

    public static int[] A0G() {
        int[] iArr = new int[16];
        iArr[0] = 0;
        for (int i = 1; i < iArr.length; i++) {
            if (i < 8) {
                int i2 = (i & 1) != 0 ? 255 : 0;
                int i3 = i & 2;
                if (A08[0].charAt(28) == '0') {
                    throw new RuntimeException();
                }
                String[] strArr = A08;
                strArr[5] = "kx4t5eQeHdC4Yc4pFTaPy19HDG208J4y";
                strArr[1] = "eKg8tV5nreQ9eRXYxGxdaqFNP9wqRVRp";
                iArr[i] = A00(255, i2, i3 != 0 ? 255 : 0, (i & 4) != 0 ? 255 : 0);
            } else {
                int i4 = i & 1;
                int i5 = ModuleDescriptor.MODULE_VERSION;
                int i6 = i4 != 0 ? ModuleDescriptor.MODULE_VERSION : 0;
                int i7 = (i & 2) != 0 ? ModuleDescriptor.MODULE_VERSION : 0;
                if ((i & 4) == 0) {
                    i5 = 0;
                }
                iArr[i] = A00(255, i6, i7, i5);
            }
        }
        return iArr;
    }

    /* JADX WARN: Code restructure failed: missing block: B:132:0x0029, code lost:
    
        continue;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int[] A0H() {
        /*
            Method dump skipped, instructions count: 402
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.core.XE.A0H():int[]");
    }

    public final void A0J() {
        this.A06.A00();
    }
}
