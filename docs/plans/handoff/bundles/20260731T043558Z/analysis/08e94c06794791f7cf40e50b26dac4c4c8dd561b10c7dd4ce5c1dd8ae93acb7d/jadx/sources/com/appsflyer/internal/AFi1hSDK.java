package com.appsflyer.internal;

import java.util.Map;

/* loaded from: classes2.dex */
public class AFi1hSDK {
    private static final byte[] $$a = null;
    private static final int $$b = 0;
    private static int $10 = 0;
    private static int $11 = 1;
    private static int $12 = 0;
    private static int $13 = 1;
    public static final Map AFLogger;
    private static long afDebugLog;
    private static int afErrorLog;
    private static byte afErrorLogForExcManagerOnly;
    private static long afInfoLog;
    public static final Map d;
    private static Object e;
    private static int force;
    private static Object i;
    private static byte[] unregisterClient;
    private static long v;
    private static byte[] w;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v1, types: [int] */
    /* JADX WARN: Type inference failed for: r8v3, types: [int] */
    /* JADX WARN: Type inference failed for: r8v4 */
    /* JADX WARN: Type inference failed for: r8v5, types: [int] */
    /* JADX WARN: Type inference failed for: r8v8, types: [int] */
    /* JADX WARN: Type inference failed for: r8v9, types: [int] */
    private static String $$c(short s, byte b, short s2) {
        byte b2;
        int i2;
        int i3;
        int i4;
        byte[] bArr;
        byte[] bArr2;
        int i5;
        int i6 = 2 % 2;
        int i7 = $13 + 123;
        $12 = i7 % 128;
        if (i7 % 2 != 0) {
            int i8 = 83 >>> b;
            b2 = s + 38;
            i4 = 1355 % s2;
            bArr = $$a;
            bArr2 = new byte[i8];
            i2 = i8 + 19;
            i5 = b2;
            if (bArr != null) {
                i3 = 0;
            }
            byte[] bArr3 = bArr2;
            int i9 = i4;
            i4++;
            b2 = (i9 + i5) - 3;
            int i10 = $13 + 15;
            $12 = i10 % 128;
            int i11 = i10 % 2;
            bArr2 = bArr3;
            i3 = 0;
        } else {
            b2 = s + 33;
            int i12 = 1152 - s2;
            byte[] bArr4 = $$a;
            byte[] bArr5 = new byte[49 - b];
            i2 = 48 - b;
            if (bArr4 == null) {
                i4 = i12;
                bArr = bArr4;
                bArr2 = bArr5;
                i5 = b2;
                byte[] bArr32 = bArr2;
                int i92 = i4;
                i4++;
                b2 = (i92 + i5) - 3;
                int i102 = $13 + 15;
                $12 = i102 % 128;
                int i112 = i102 % 2;
                bArr2 = bArr32;
                i3 = 0;
            } else {
                i3 = 0;
                i4 = i12;
                bArr = bArr4;
                bArr2 = bArr5;
            }
        }
        while (true) {
            bArr2[i3] = b2;
            if (i3 == i2) {
                return new String(bArr2, 0);
            }
            int i13 = i3 + 1;
            byte b3 = bArr[i4];
            byte[] bArr6 = bArr2;
            i4++;
            b2 = (b2 + b3) - 3;
            int i14 = $13 + 15;
            $12 = i14 % 128;
            int i15 = i14 % 2;
            bArr2 = bArr6;
            i3 = i13;
        }
    }

    static void init$0() {
        int i2;
        int i3 = 2 % 2;
        int i4 = $11;
        int i5 = (i4 ^ 7) + ((i4 & 7) << 1);
        $10 = i5 % 128;
        if (i5 % 2 != 0) {
            byte[] bArr = new byte[1166];
            System.arraycopy("@ÛÛ¡\u0010ù\u0011\u0000ýþÍ<\u000eò\u0012û\u0004ý\u0013¾\u0018/\u0000\u0006\u0006øþ\u000f\u0001Å5\u0012\u0003\u0006ö\t\u0010ï\u0010À=\b\tô\u0010ÿö\u000eÆ\u0015\b&Ë6òô\n\u000b\u0003\u000f\u0001Ä6\u0012\u0003\u0006ö\t\u0010ï\u0010\u0010ù\u0011\u0000ýþÍ6\u0012\u0003Á\u0016%\u0014ø\u0010ö\u000e\bÞ\u0017\röÿ\u0006\u0015\u0000\u0003ö\f\tÐ2\u0003ÿ\u0000ý\u0001\u0016ø\t\u0002\u0010ù\u0011\u0000ýþÍ6\u0012\u0003Á\u00162\u0003Ú(\u0006ö\u0002\u000e\n\u0001\u0012Ø(þ\u000eøû\u000eØ2\u0003ÿ\u0000ý\u0001\u0016ø\t\u0002\u0001\u0012Õ&\u0006ü\u0011Ô(\f\u0001\u0012Ò/ø\u0004á!\u0005\b\u0000â(\f\u0001\u0012Ò!\u0005\b\u0000â(\f8\u0000\u0016ðÑ8\u0000\u0016ðÑú\u0018îÐ>\tÂ\u001b&\u0006üú\u0018îÐ>\tÂIü\u0006÷\b\fú\u0018îÐAø\u0010üÊ()ý\u0004ô\u000b\u0001\u0012ß%\u0000\u0004ø\u0010\u0005\b\u000fø\u0004ý\u0007\u0001\u0005\b\u0000\u0010ù\u0011\u0000ýþÍD\u0007¾\u00176÷\u0006ûÃ5ò\u0010\u0004ù\t\u0002ô\n\u0017í\b\t\u0001\u0010ì\u001eú\u000eôî\tí\u000bú\u0018îÐ>\tÂ\u001e\tù6î\u0005\u000e\u0007ø\t\u0002\u0015\u0000\u0003ö\f\tã\u0018\u0007ûë\u001f\u0006\u0003\u0000\rú\u0018îÐ>\tÂ\u001b&\u0006üí)\u0002ÿ\b\u0002â$\u0001öÿ\u000f\f\u0006\u0007õî\u0006ð\u000b5\u0015\u0003õ\u0012\u0002¿7\u000f\u0001Å5\u0012\u0003\u0006ö\t\u0010ï\u0010À=\b\tô\u0010ÿö\u000eÆ5\u0004\u0004\u0003Ó\u00022\u0003Ö\u00070Ï\u000bý\b.Í\u0001\u0012á\u0016\u0011ÿ\t\u0000ô\u0005ú\u0018îÐCú\u0012½*\u0000ý\u0001\u0012ß\u0014\u0016÷ú\u0018îÐ>\tÂ\u00176ô\u0003\u0002\u0010ö\u0002è(\u0005\b\u0002â$\u0001öÿ\u000fú\u0018îÐ>\tÂ\u001e(\u0005\b\u0002â$\u0001öÿ\u000fú\u0018îÐ>\tÂ\u0019 \u0016ðë(\u0005\b\u0002â$\u0001öÿ\u000föÿ\u0006å2ú\u0003\u0010ú\u0018îÐ>\tÂ\u0017:þôß4\u0003ò\u001bÓ(\u0005\b\u0002â$\u0001öÿ\u000f\u0014\u0003ò\u001bí\u000f\u0004\f\u000f\u0001Ä6\u0012\u0003\u0006ö\t\u0010ï\u0010¿>\b\tô\u0010ÿö\u000eÅ\u0016\b(ÉBæô\n\u000f\u0001Ä6\u0012\u0003\u0006ö\t\u0010ï\u0010¿>\b\tô\u0010ÿö\u000eÅ\u0016\b&Ë6òô\n\u000b\u0003\u0001\u0012Ü\u001b\u0002\bû\u0016ø\t\u0002ã\u001a\u0012\u0006û\u0006üû\u0001\nöÿ\u0006õ\u0012á\u0016ÿ\u0006î\"\u0001\u0010î\u0007ï\u000bþú\u000eô\u0001\u0012Õ\u0001ú\u0018îÐ>\tÂ\u001b&\u0006üâ$\u0011ó\u0012ú\n\u0007þ\u0006\tøø\u0000\u000e\rö\u0005ÆH\tý\u0004ô\u000bÄ\u0019$\u0016Ñ&\u0006ü\u0006õ\u0006ã$\u0016\u0001\u0012Ð$\u0014ÿ\u0000\f\u0002ôî\u0014\u0016÷\u0004\nü\u0012ô\u0001\u0012Ò,ø\u0015\u0003Ü&õ\u0006\u0004\u0010ú\u0018îÐJ\u0002ø\u0006ÅOò\nÁ/\u0012\nÜ(\u0005\b\u0002â$\u0001öÿ\u000f\u0001\u0012Ý\u001a\u0016ÿÔ,\t\u0001\nú\u0018îÐJ\u0002ø\u0006ÅOò\nÁ/\u0012\nØ,\t\u0001\n\u0001\u0012â\u0019\u0014îú\u0018îÐ>\tÂ\u0017:þôß4\u0003ò\u001bÙ)\u0002ÿ\b\u0002â$\u0001öÿ\u000fþÖ:þôß4\u0003ò\u001bú\u0018îÐ>\tÂ\u0018,\u0006\u0007õÿ\u0004\rü\u0000\u000e\rö\u0005ÆH\tý\u0004ô\u000bÄ\u001e(â\u001b\u000b\u0005\u0006\nÎ$\u0016Î,ø\u0015\u0003Ü&õ\u0006\u0004\u0010ú\u0018îÐCþ\tÂ\u0017:þôà6ô\u0003\u0002\u0010ú\u0018îÐAø\u0010üÊ\u0018,ø\u0015\u0003Ü&õ\u0006\u0004\u0010þò\u0012\u0000\u000e\rö\u0005ÆH\tý\u0004ô\u000bÄ\u0017\"\u0015õâ$\u0016Î,ø\u0015\u0003Ü&õ\u0006\u0004\u0010ô\u0016÷ç \r\u0004ö\u0016ø\u0010òê ü\u0013ò\u0014\nÎ(\fö\u0001\u0014þ\u0006úÿ\u0011ö\u0016ø\u0010òê ü\u0013ò\u0014\nÚ\u0014\u0016÷à*ü\u000bû\f\t\u0002\u0001\u0012Ò/\u0001\u0006\u0002\u0002ú\f\tã(úøî\u000bë\u000b\u0006õ\u0006â,ø\u0015\u0003\u000f\u0001Å5\u0012\u0003\u0006ö\t\u0010ï\u0010À=\b\tô\u0010ÿö\u000eÆ\u0015\b&Ë:îô\nÜH5\u0015\u0003õ\u0012\u0002¿7\u000f\u0001Å5\u0012\u0003\u0006ö\t\u0010ï\u0010À=\b\tô\u0010ÿö\u000eÆ\b2Ó\u0003\u00072þ\u0004Ô\u0004\b\u0001\u00031Ñ\u00070Ìî\nì\u000bI\u0004´Iþ\u000e\u0003ù\u0002\u0005\u000b\u000b°Oü\u0004\u0011¸\u0001\u0012á\u0016\u0014ò\f\nó\bþ&ñ\u0016\u0014ò\f\nóâ \u0016ð".getBytes("ISO-8859-1"), 0, bArr, 0, 1166);
            $$a = bArr;
            i2 = 72;
        } else {
            byte[] bArr2 = new byte[1166];
            System.arraycopy("@ÛÛ¡\u0010ù\u0011\u0000ýþÍ<\u000eò\u0012û\u0004ý\u0013¾\u0018/\u0000\u0006\u0006øþ\u000f\u0001Å5\u0012\u0003\u0006ö\t\u0010ï\u0010À=\b\tô\u0010ÿö\u000eÆ\u0015\b&Ë6òô\n\u000b\u0003\u000f\u0001Ä6\u0012\u0003\u0006ö\t\u0010ï\u0010\u0010ù\u0011\u0000ýþÍ6\u0012\u0003Á\u0016%\u0014ø\u0010ö\u000e\bÞ\u0017\röÿ\u0006\u0015\u0000\u0003ö\f\tÐ2\u0003ÿ\u0000ý\u0001\u0016ø\t\u0002\u0010ù\u0011\u0000ýþÍ6\u0012\u0003Á\u00162\u0003Ú(\u0006ö\u0002\u000e\n\u0001\u0012Ø(þ\u000eøû\u000eØ2\u0003ÿ\u0000ý\u0001\u0016ø\t\u0002\u0001\u0012Õ&\u0006ü\u0011Ô(\f\u0001\u0012Ò/ø\u0004á!\u0005\b\u0000â(\f\u0001\u0012Ò!\u0005\b\u0000â(\f8\u0000\u0016ðÑ8\u0000\u0016ðÑú\u0018îÐ>\tÂ\u001b&\u0006üú\u0018îÐ>\tÂIü\u0006÷\b\fú\u0018îÐAø\u0010üÊ()ý\u0004ô\u000b\u0001\u0012ß%\u0000\u0004ø\u0010\u0005\b\u000fø\u0004ý\u0007\u0001\u0005\b\u0000\u0010ù\u0011\u0000ýþÍD\u0007¾\u00176÷\u0006ûÃ5ò\u0010\u0004ù\t\u0002ô\n\u0017í\b\t\u0001\u0010ì\u001eú\u000eôî\tí\u000bú\u0018îÐ>\tÂ\u001e\tù6î\u0005\u000e\u0007ø\t\u0002\u0015\u0000\u0003ö\f\tã\u0018\u0007ûë\u001f\u0006\u0003\u0000\rú\u0018îÐ>\tÂ\u001b&\u0006üí)\u0002ÿ\b\u0002â$\u0001öÿ\u000f\f\u0006\u0007õî\u0006ð\u000b5\u0015\u0003õ\u0012\u0002¿7\u000f\u0001Å5\u0012\u0003\u0006ö\t\u0010ï\u0010À=\b\tô\u0010ÿö\u000eÆ5\u0004\u0004\u0003Ó\u00022\u0003Ö\u00070Ï\u000bý\b.Í\u0001\u0012á\u0016\u0011ÿ\t\u0000ô\u0005ú\u0018îÐCú\u0012½*\u0000ý\u0001\u0012ß\u0014\u0016÷ú\u0018îÐ>\tÂ\u00176ô\u0003\u0002\u0010ö\u0002è(\u0005\b\u0002â$\u0001öÿ\u000fú\u0018îÐ>\tÂ\u001e(\u0005\b\u0002â$\u0001öÿ\u000fú\u0018îÐ>\tÂ\u0019 \u0016ðë(\u0005\b\u0002â$\u0001öÿ\u000föÿ\u0006å2ú\u0003\u0010ú\u0018îÐ>\tÂ\u0017:þôß4\u0003ò\u001bÓ(\u0005\b\u0002â$\u0001öÿ\u000f\u0014\u0003ò\u001bí\u000f\u0004\f\u000f\u0001Ä6\u0012\u0003\u0006ö\t\u0010ï\u0010¿>\b\tô\u0010ÿö\u000eÅ\u0016\b(ÉBæô\n\u000f\u0001Ä6\u0012\u0003\u0006ö\t\u0010ï\u0010¿>\b\tô\u0010ÿö\u000eÅ\u0016\b&Ë6òô\n\u000b\u0003\u0001\u0012Ü\u001b\u0002\bû\u0016ø\t\u0002ã\u001a\u0012\u0006û\u0006üû\u0001\nöÿ\u0006õ\u0012á\u0016ÿ\u0006î\"\u0001\u0010î\u0007ï\u000bþú\u000eô\u0001\u0012Õ\u0001ú\u0018îÐ>\tÂ\u001b&\u0006üâ$\u0011ó\u0012ú\n\u0007þ\u0006\tøø\u0000\u000e\rö\u0005ÆH\tý\u0004ô\u000bÄ\u0019$\u0016Ñ&\u0006ü\u0006õ\u0006ã$\u0016\u0001\u0012Ð$\u0014ÿ\u0000\f\u0002ôî\u0014\u0016÷\u0004\nü\u0012ô\u0001\u0012Ò,ø\u0015\u0003Ü&õ\u0006\u0004\u0010ú\u0018îÐJ\u0002ø\u0006ÅOò\nÁ/\u0012\nÜ(\u0005\b\u0002â$\u0001öÿ\u000f\u0001\u0012Ý\u001a\u0016ÿÔ,\t\u0001\nú\u0018îÐJ\u0002ø\u0006ÅOò\nÁ/\u0012\nØ,\t\u0001\n\u0001\u0012â\u0019\u0014îú\u0018îÐ>\tÂ\u0017:þôß4\u0003ò\u001bÙ)\u0002ÿ\b\u0002â$\u0001öÿ\u000fþÖ:þôß4\u0003ò\u001bú\u0018îÐ>\tÂ\u0018,\u0006\u0007õÿ\u0004\rü\u0000\u000e\rö\u0005ÆH\tý\u0004ô\u000bÄ\u001e(â\u001b\u000b\u0005\u0006\nÎ$\u0016Î,ø\u0015\u0003Ü&õ\u0006\u0004\u0010ú\u0018îÐCþ\tÂ\u0017:þôà6ô\u0003\u0002\u0010ú\u0018îÐAø\u0010üÊ\u0018,ø\u0015\u0003Ü&õ\u0006\u0004\u0010þò\u0012\u0000\u000e\rö\u0005ÆH\tý\u0004ô\u000bÄ\u0017\"\u0015õâ$\u0016Î,ø\u0015\u0003Ü&õ\u0006\u0004\u0010ô\u0016÷ç \r\u0004ö\u0016ø\u0010òê ü\u0013ò\u0014\nÎ(\fö\u0001\u0014þ\u0006úÿ\u0011ö\u0016ø\u0010òê ü\u0013ò\u0014\nÚ\u0014\u0016÷à*ü\u000bû\f\t\u0002\u0001\u0012Ò/\u0001\u0006\u0002\u0002ú\f\tã(úøî\u000bë\u000b\u0006õ\u0006â,ø\u0015\u0003\u000f\u0001Å5\u0012\u0003\u0006ö\t\u0010ï\u0010À=\b\tô\u0010ÿö\u000eÆ\u0015\b&Ë:îô\nÜH5\u0015\u0003õ\u0012\u0002¿7\u000f\u0001Å5\u0012\u0003\u0006ö\t\u0010ï\u0010À=\b\tô\u0010ÿö\u000eÆ\b2Ó\u0003\u00072þ\u0004Ô\u0004\b\u0001\u00031Ñ\u00070Ìî\nì\u000bI\u0004´Iþ\u000e\u0003ù\u0002\u0005\u000b\u000b°Oü\u0004\u0011¸\u0001\u0012á\u0016\u0014ò\f\nó\bþ&ñ\u0016\u0014ò\f\nóâ \u0016ð".getBytes("ISO-8859-1"), 0, bArr2, 0, 1166);
            $$a = bArr2;
            i2 = 66;
        }
        $$b = i2;
        int i6 = $10 + 37;
        $11 = i6 % 128;
        int i7 = i6 % 2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0197, code lost:
    
        if (r4 != null) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:371:0x1c6d, code lost:
    
        r11 = r52;
        r2 = r45.getDeclaredConstructor(java.lang.Object.class, java.lang.Boolean.TYPE);
        r2.setAccessible(true);
     */
    /* JADX WARN: Code restructure failed: missing block: B:372:0x1c87, code lost:
    
        if (r28 != false) goto L587;
     */
    /* JADX WARN: Code restructure failed: missing block: B:373:0x1c89, code lost:
    
        r4 = com.appsflyer.internal.AFi1hSDK.$11 + 87;
        com.appsflyer.internal.AFi1hSDK.$10 = r4 % 128;
        r4 = r4 % 2;
        r4 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:374:0x1c96, code lost:
    
        com.appsflyer.internal.AFi1hSDK.i = r2.newInstance(r3, java.lang.Boolean.valueOf(r4));
     */
    /* JADX WARN: Code restructure failed: missing block: B:376:0x1ca4, code lost:
    
        r44.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:377:0x1ca7, code lost:
    
        r4 = 7;
        r8 = true;
        r33 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:380:0x1cb4, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:381:0x1cb5, code lost:
    
        r2 = r0;
        r11 = r11;
        r50 = r50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:382:0x1c95, code lost:
    
        r4 = false;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:114:0x1ffd A[Catch: Exception -> 0x20db, TRY_ENTER, TryCatch #7 {Exception -> 0x20db, blocks: (B:10:0x014c, B:12:0x015c, B:36:0x03d7, B:43:0x0497, B:50:0x04ef, B:52:0x04f5, B:53:0x04f6, B:54:0x04f7, B:56:0x054c, B:66:0x059b, B:69:0x05a4, B:74:0x05b8, B:81:0x05d4, B:114:0x1ffd, B:118:0x2001, B:121:0x2096, B:116:0x200f, B:123:0x2017, B:131:0x206b, B:133:0x2071, B:134:0x2072, B:949:0x20b1, B:952:0x20b8, B:969:0x03dd, B:977:0x20bf, B:979:0x20c5, B:980:0x20c6, B:983:0x20c8, B:985:0x20cf, B:986:0x20d0, B:989:0x0376, B:995:0x20d2, B:997:0x20d9, B:998:0x20da, B:126:0x2036, B:127:0x2068, B:973:0x046b, B:971:0x03f2, B:992:0x03a2, B:46:0x04ac), top: B:9:0x014c, inners: #38, #80, #86, #90, #104 }] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x021f  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x02b2  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0370  */
    /* JADX WARN: Removed duplicated region for block: B:314:0x1afb A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x03c8  */
    /* JADX WARN: Removed duplicated region for block: B:370:0x1c6d A[EDGE_INSN: B:370:0x1c6d->B:371:0x1c6d BREAK  A[LOOP:2: B:178:0x0c29->B:331:0x1c20], EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0495 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x057c  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0590  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x05a1  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x05aa  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x05c0  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x05d4 A[Catch: Exception -> 0x20db, TRY_ENTER, TRY_LEAVE, TryCatch #7 {Exception -> 0x20db, blocks: (B:10:0x014c, B:12:0x015c, B:36:0x03d7, B:43:0x0497, B:50:0x04ef, B:52:0x04f5, B:53:0x04f6, B:54:0x04f7, B:56:0x054c, B:66:0x059b, B:69:0x05a4, B:74:0x05b8, B:81:0x05d4, B:114:0x1ffd, B:118:0x2001, B:121:0x2096, B:116:0x200f, B:123:0x2017, B:131:0x206b, B:133:0x2071, B:134:0x2072, B:949:0x20b1, B:952:0x20b8, B:969:0x03dd, B:977:0x20bf, B:979:0x20c5, B:980:0x20c6, B:983:0x20c8, B:985:0x20cf, B:986:0x20d0, B:989:0x0376, B:995:0x20d2, B:997:0x20d9, B:998:0x20da, B:126:0x2036, B:127:0x2068, B:973:0x046b, B:971:0x03f2, B:992:0x03a2, B:46:0x04ac), top: B:9:0x014c, inners: #38, #80, #86, #90, #104 }] */
    /* JADX WARN: Removed duplicated region for block: B:932:0x0a57 A[Catch: all -> 0x0a59, TryCatch #29 {all -> 0x0a59, blocks: (B:880:0x09ad, B:889:0x0a0b, B:891:0x0a11, B:892:0x0a12, B:900:0x0a14, B:902:0x0a1d, B:903:0x0a1e, B:930:0x0a47, B:932:0x0a57, B:933:0x0a58, B:871:0x098b, B:873:0x0991, B:874:0x0992, B:894:0x0994, B:896:0x099b, B:897:0x099c, B:865:0x0954, B:883:0x09d9, B:884:0x0a08, B:859:0x08b5), top: B:864:0x0954, inners: #42, #53, #110, #111 }] */
    /* JADX WARN: Removed duplicated region for block: B:933:0x0a58 A[Catch: all -> 0x0a59, TRY_LEAVE, TryCatch #29 {all -> 0x0a59, blocks: (B:880:0x09ad, B:889:0x0a0b, B:891:0x0a11, B:892:0x0a12, B:900:0x0a14, B:902:0x0a1d, B:903:0x0a1e, B:930:0x0a47, B:932:0x0a57, B:933:0x0a58, B:871:0x098b, B:873:0x0991, B:874:0x0992, B:894:0x0994, B:896:0x099b, B:897:0x099c, B:865:0x0954, B:883:0x09d9, B:884:0x0a08, B:859:0x08b5), top: B:864:0x0954, inners: #42, #53, #110, #111 }] */
    /* JADX WARN: Removed duplicated region for block: B:948:0x20b1 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:962:0x05b6  */
    /* JADX WARN: Removed duplicated region for block: B:963:0x05a3  */
    /* JADX WARN: Removed duplicated region for block: B:966:0x057e  */
    /* JADX WARN: Removed duplicated region for block: B:969:0x03dd A[Catch: Exception -> 0x20db, TRY_ENTER, TRY_LEAVE, TryCatch #7 {Exception -> 0x20db, blocks: (B:10:0x014c, B:12:0x015c, B:36:0x03d7, B:43:0x0497, B:50:0x04ef, B:52:0x04f5, B:53:0x04f6, B:54:0x04f7, B:56:0x054c, B:66:0x059b, B:69:0x05a4, B:74:0x05b8, B:81:0x05d4, B:114:0x1ffd, B:118:0x2001, B:121:0x2096, B:116:0x200f, B:123:0x2017, B:131:0x206b, B:133:0x2071, B:134:0x2072, B:949:0x20b1, B:952:0x20b8, B:969:0x03dd, B:977:0x20bf, B:979:0x20c5, B:980:0x20c6, B:983:0x20c8, B:985:0x20cf, B:986:0x20d0, B:989:0x0376, B:995:0x20d2, B:997:0x20d9, B:998:0x20da, B:126:0x2036, B:127:0x2068, B:973:0x046b, B:971:0x03f2, B:992:0x03a2, B:46:0x04ac), top: B:9:0x014c, inners: #38, #80, #86, #90, #104 }] */
    /* JADX WARN: Removed duplicated region for block: B:987:0x0372  */
    /* JADX WARN: Removed duplicated region for block: B:999:0x02ea A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r10v102 */
    /* JADX WARN: Type inference failed for: r10v104 */
    /* JADX WARN: Type inference failed for: r10v108 */
    /* JADX WARN: Type inference failed for: r10v115 */
    /* JADX WARN: Type inference failed for: r10v265 */
    /* JADX WARN: Type inference failed for: r10v273 */
    /* JADX WARN: Type inference failed for: r10v274 */
    /* JADX WARN: Type inference failed for: r10v3, types: [byte, short] */
    /* JADX WARN: Type inference failed for: r10v38 */
    /* JADX WARN: Type inference failed for: r10v39 */
    /* JADX WARN: Type inference failed for: r10v40 */
    /* JADX WARN: Type inference failed for: r10v41 */
    /* JADX WARN: Type inference failed for: r10v43 */
    /* JADX WARN: Type inference failed for: r10v50 */
    /* JADX WARN: Type inference failed for: r10v54 */
    /* JADX WARN: Type inference failed for: r10v69, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r10v74, types: [java.lang.Class] */
    /* JADX WARN: Type inference failed for: r10v75, types: [java.lang.reflect.Constructor] */
    /* JADX WARN: Type inference failed for: r10v85 */
    /* JADX WARN: Type inference failed for: r10v86 */
    /* JADX WARN: Type inference failed for: r11v104 */
    /* JADX WARN: Type inference failed for: r11v111 */
    /* JADX WARN: Type inference failed for: r11v139 */
    /* JADX WARN: Type inference failed for: r11v149, types: [java.lang.Class] */
    /* JADX WARN: Type inference failed for: r11v161 */
    /* JADX WARN: Type inference failed for: r11v162 */
    /* JADX WARN: Type inference failed for: r11v167 */
    /* JADX WARN: Type inference failed for: r11v169 */
    /* JADX WARN: Type inference failed for: r11v172 */
    /* JADX WARN: Type inference failed for: r11v182 */
    /* JADX WARN: Type inference failed for: r11v185 */
    /* JADX WARN: Type inference failed for: r11v190 */
    /* JADX WARN: Type inference failed for: r11v191 */
    /* JADX WARN: Type inference failed for: r11v193 */
    /* JADX WARN: Type inference failed for: r11v194 */
    /* JADX WARN: Type inference failed for: r11v201, types: [short] */
    /* JADX WARN: Type inference failed for: r11v207, types: [java.lang.reflect.Constructor] */
    /* JADX WARN: Type inference failed for: r11v212, types: [java.lang.Class] */
    /* JADX WARN: Type inference failed for: r11v218, types: [short] */
    /* JADX WARN: Type inference failed for: r11v294 */
    /* JADX WARN: Type inference failed for: r11v295 */
    /* JADX WARN: Type inference failed for: r11v296 */
    /* JADX WARN: Type inference failed for: r11v304 */
    /* JADX WARN: Type inference failed for: r11v324 */
    /* JADX WARN: Type inference failed for: r11v331 */
    /* JADX WARN: Type inference failed for: r11v332 */
    /* JADX WARN: Type inference failed for: r11v333 */
    /* JADX WARN: Type inference failed for: r11v334 */
    /* JADX WARN: Type inference failed for: r11v336 */
    /* JADX WARN: Type inference failed for: r11v337 */
    /* JADX WARN: Type inference failed for: r11v51 */
    /* JADX WARN: Type inference failed for: r11v52 */
    /* JADX WARN: Type inference failed for: r11v54 */
    /* JADX WARN: Type inference failed for: r11v71, types: [java.lang.Class[]] */
    /* JADX WARN: Type inference failed for: r11v88 */
    /* JADX WARN: Type inference failed for: r11v90, types: [int] */
    /* JADX WARN: Type inference failed for: r11v93 */
    /* JADX WARN: Type inference failed for: r11v94 */
    /* JADX WARN: Type inference failed for: r11v95 */
    /* JADX WARN: Type inference failed for: r11v96 */
    /* JADX WARN: Type inference failed for: r12v140 */
    /* JADX WARN: Type inference failed for: r12v141 */
    /* JADX WARN: Type inference failed for: r12v31 */
    /* JADX WARN: Type inference failed for: r12v32 */
    /* JADX WARN: Type inference failed for: r12v33, types: [short] */
    /* JADX WARN: Type inference failed for: r12v86 */
    /* JADX WARN: Type inference failed for: r14v95, types: [java.lang.Class[]] */
    /* JADX WARN: Type inference failed for: r3v169 */
    /* JADX WARN: Type inference failed for: r3v85 */
    /* JADX WARN: Type inference failed for: r3v86 */
    /* JADX WARN: Type inference failed for: r49v1, types: [short] */
    /* JADX WARN: Type inference failed for: r7v313 */
    /* JADX WARN: Type inference failed for: r7v314, types: [int] */
    /* JADX WARN: Type inference failed for: r7v442 */
    /* JADX WARN: Type inference failed for: r7v57, types: [java.lang.Class] */
    /* JADX WARN: Type inference failed for: r8v211 */
    /* JADX WARN: Type inference failed for: r8v54 */
    /* JADX WARN: Type inference failed for: r8v55, types: [short] */
    /* JADX WARN: Type inference failed for: r8v94 */
    /* JADX WARN: Type inference failed for: r9v393 */
    /* JADX WARN: Type inference failed for: r9v42 */
    /* JADX WARN: Type inference failed for: r9v43 */
    /* JADX WARN: Type inference failed for: r9v47 */
    /* JADX WARN: Type inference failed for: r9v55 */
    /* JADX WARN: Type inference failed for: r9v56 */
    /* JADX WARN: Type inference failed for: r9v66, types: [java.lang.Class<java.lang.String>] */
    /* JADX WARN: Type inference failed for: r9v70, types: [int] */
    /* JADX WARN: Type inference failed for: r9v71 */
    /* JADX WARN: Type inference failed for: r9v75, types: [java.lang.Class] */
    /* JADX WARN: Type inference failed for: r9v77, types: [short] */
    /* JADX WARN: Type inference failed for: r9v87 */
    static {
        /*
            Method dump skipped, instructions count: 8470
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFi1hSDK.<clinit>():void");
    }

    public static int getCurrencyIso4217Code(int i2) {
        Object obj;
        int i3 = 2 % 2;
        int i4 = $11;
        int i5 = i4 + 73;
        $10 = i5 % 128;
        if (i5 % 2 != 0) {
            obj = i;
            int i6 = 67 / 0;
        } else {
            obj = i;
        }
        int i7 = i4 + 95;
        $10 = i7 % 128;
        int i8 = i7 % 2;
        try {
            Object[] objArr = {Integer.valueOf(i2)};
            int i9 = $$b;
            byte[] bArr = $$a;
            int intValue = ((Integer) Class.forName($$c((byte) i9, bArr[4], (short) (i9 | 512)), true, (ClassLoader) e).getMethod($$c(bArr[487], bArr[637], bArr[7]), Integer.TYPE).invoke(obj, objArr)).intValue();
            int i10 = $10 + 25;
            $11 = i10 % 128;
            if (i10 % 2 != 0) {
                return intValue;
            }
            throw null;
        } catch (Throwable th) {
            Throwable cause = th.getCause();
            if (cause != null) {
                throw cause;
            }
            throw th;
        }
    }

    public static int getCurrencyIso4217Code(Object obj) {
        int i2 = 2 % 2;
        System.currentTimeMillis();
        System.currentTimeMillis();
        Object obj2 = i;
        int i3 = $10 + 65;
        $11 = i3 % 128;
        int i4 = i3 % 2;
        try {
            int i5 = $$b;
            byte[] bArr = $$a;
            int intValue = ((Integer) Class.forName($$c((byte) i5, bArr[4], (short) (i5 | 512)), true, (ClassLoader) e).getMethod($$c(bArr[487], bArr[637], bArr[7]), Object.class).invoke(obj2, obj)).intValue();
            int i6 = $10 + 55;
            $11 = i6 % 128;
            if (i6 % 2 != 0) {
                return intValue;
            }
            Object obj3 = null;
            obj3.hashCode();
            throw null;
        } catch (Throwable th) {
            Throwable cause = th.getCause();
            if (cause != null) {
                throw cause;
            }
            throw th;
        }
    }

    public static Object getCurrencyIso4217Code(char c, int i2, int i3) {
        int i4 = 2 % 2;
        int i5 = $10 + 107;
        int i6 = i5 % 128;
        $11 = i6;
        int i7 = i5 % 2;
        Object obj = i;
        int i8 = (i6 & 71) + (i6 | 71);
        int i9 = i8 % 128;
        $10 = i9;
        int i10 = i8 % 2;
        int i11 = i9 + 71;
        $11 = i11 % 128;
        int i12 = i11 % 2;
        try {
            Object[] objArr = {Character.valueOf(c), Integer.valueOf(i2), Integer.valueOf(i3)};
            int i13 = $$b;
            Object invoke = Class.forName($$c((byte) i13, r5[4], (short) (i13 | 512)), true, (ClassLoader) e).getMethod($$c((byte) (i13 + 4), (byte) (-$$a[815]), r5[35]), Character.TYPE, Integer.TYPE, Integer.TYPE).invoke(obj, objArr);
            int i14 = $11 + 119;
            $10 = i14 % 128;
            if (i14 % 2 == 0) {
                return invoke;
            }
            throw null;
        } catch (Throwable th) {
            Throwable cause = th.getCause();
            if (cause != null) {
                throw cause;
            }
            throw th;
        }
    }

    private AFi1hSDK() {
    }

    private static void getMediationNetwork(int i2, int i3) {
        int i4 = 2 % 2;
        int i5 = $10 + 121;
        $11 = i5 % 128;
        int i6 = i5 % 2;
    }
}
