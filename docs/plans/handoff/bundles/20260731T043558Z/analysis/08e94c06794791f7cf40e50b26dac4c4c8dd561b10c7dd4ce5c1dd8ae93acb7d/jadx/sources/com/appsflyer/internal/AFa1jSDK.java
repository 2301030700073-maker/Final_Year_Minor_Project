package com.appsflyer.internal;

import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import java.util.Map;

/* loaded from: classes2.dex */
public class AFa1jSDK {
    private static final byte[] $$a = null;
    private static final int $$b = 0;
    private static int $10 = 0;
    private static int $11 = 1;
    private static int $12 = 0;
    private static int $13 = 1;
    public static final Map AFInAppEventType;
    private static long afDebugLog;
    private static int afErrorLog;
    private static byte[] afErrorLogForExcManagerOnly;
    private static int afInfoLog;
    private static int afRDLog;
    private static int afWarnLog;
    private static byte[] d;
    private static byte[] e;
    private static long force;
    private static Object i;
    public static final Map unregisterClient;
    private static long v;
    private static Object w;

    /* JADX WARN: Code restructure failed: missing block: B:15:0x002a, code lost:
    
        r4 = r3;
        r3 = r1;
        r1 = r10;
        r10 = r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0030, code lost:
    
        r8 = (r8 + r9) - 3;
        r9 = com.appsflyer.internal.AFa1jSDK.$12 + 47;
        com.appsflyer.internal.AFa1jSDK.$13 = r9 % 128;
        r9 = r9 % 2;
        r9 = r10;
        r10 = r1;
        r1 = r3;
        r3 = r4;
        r4 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0028, code lost:
    
        if (r1 == null) goto L10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:4:0x0019, code lost:
    
        if (r1 == null) goto L10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x001c, code lost:
    
        r4 = 0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.String $$c(short r8, short r9, int r10) {
        /*
            r0 = 2
            int r1 = r0 % r0
            int r1 = com.appsflyer.internal.AFa1jSDK.$13
            int r1 = r1 + 57
            int r2 = r1 % 128
            com.appsflyer.internal.AFa1jSDK.$12 = r2
            int r1 = r1 % r0
            r2 = 0
            if (r1 == 0) goto L1e
            int r8 = 13 - r8
            int r10 = r10 + 4
            int r9 = r9 + 68
            byte[] r1 = com.appsflyer.internal.AFa1jSDK.$$a
            byte[] r3 = new byte[r9]
            if (r1 != 0) goto L1c
            goto L2a
        L1c:
            r4 = r2
            goto L30
        L1e:
            int r8 = 119 - r8
            int r10 = r10 + 4
            int r9 = r9 + 1
            byte[] r1 = com.appsflyer.internal.AFa1jSDK.$$a
            byte[] r3 = new byte[r9]
            if (r1 != 0) goto L1c
        L2a:
            r5 = r2
            r4 = r3
            r3 = r1
            r1 = r10
            r10 = r9
            goto L47
        L30:
            int r5 = r4 + 1
            byte r6 = (byte) r8
            r3[r4] = r6
            int r10 = r10 + 1
            if (r5 != r9) goto L3f
            java.lang.String r8 = new java.lang.String
            r8.<init>(r3, r2)
            return r8
        L3f:
            r4 = r1[r10]
            r7 = r10
            r10 = r9
            r9 = r4
            r4 = r3
            r3 = r1
            r1 = r7
        L47:
            int r8 = r8 + r9
            int r8 = r8 + (-3)
            int r9 = com.appsflyer.internal.AFa1jSDK.$12
            int r9 = r9 + 47
            int r6 = r9 % 128
            com.appsflyer.internal.AFa1jSDK.$13 = r6
            int r9 = r9 % r0
            r9 = r10
            r10 = r1
            r1 = r3
            r3 = r4
            r4 = r5
            goto L30
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFa1jSDK.$$c(short, short, int):java.lang.String");
    }

    static void init$0() {
        int i2 = 2 % 2;
        int i3 = $10 + 85;
        $11 = i3 % 128;
        int i4 = i3 % 2;
        byte[] bArr = new byte[1171];
        System.arraycopy("\bâ\u001cã\u0010ù\u0011\u0000ýþÍ<\u000eò\u0012û\u0004ý\u0013¾\u0018/\u0000\u0006\u0006ö\u0002\u000f\u0001Å5\u0012\u0003\u0006ö\t\u0010ï\u0010À=\b\tô\u0010ÿö\u000eÆ\u0015\b\u001eÓ5óô\n\u000b\u0003\u000f\u0001Ä6\u0012\u0003\u0006ö\t\u0010ï\u0010\u0010ù\u0011\u0000ýþÍ6\u0012\u0003Á\u0016%\u0014ø\u0010ö\u000e\bÞ\u0017\röÿ\u0006\u0015\u0000\u0003ö\f\tÐ2\u0003ÿ\u0000ý\u0001\u0016ø\t\u0002\u0010ù\u0011\u0000ýþÍ6\u0012\u0003Á\u00162\u0003Ú(\u0006ö\u0002\u000e\n\u0001\u0012Ø(þ\u000eøû\u000eØ2\u0003ÿ\u0000ý\u0001\u0016ø\t\u0002\u0001\u0012Õ&\u0006ü\u0011Ô(\f\u0001\u0012Ò/ø\u0004á!\u0005\b\u0000â(\f\u0001\u0012Ò!\u0005\b\u0000â(\f8\u0000\u0016ðÑ8\u0000\u0016ðÑú\u0018îÐ>\tÂ\u001b&\u0006üú\u0018îÐ>\tÂIü\u0006÷\b\fú\u0018îÐAø\u0010üÊ()ý\u0004ô\u000b\u0001\u0012ß%\u0000\u0004ø\u0010\u0005\b\u000fø\u0004ý\u0007\u0001\u0005\b\u0000\u0010ù\u0011\u0000ýþÍD\u0007¾\u00176÷\u0006ûÃ5ò\u0010\u0004ù\t\u0002ô\n\u0017í\b\t\u0001\u0010ì\u001eú\u000eôî\tí\u000bú\u0018îÐ>\tÂ\u001e\tù6î\u0005\u000e\u0007ø\t\u0002\u0015\u0000\u0003ö\f\tã\u0018\u0007ûë\u001f\u0006\u0003\u0000\rú\u0018îÐ>\tÂ\u001b&\u0006üí)\u0002ÿ\b\u0002â$\u0001öÿ\u000f\f\u0006\u0007õî\u0006ð\u000b5\u0015\u0003õ\u0012\u0002¿7\u000f\u0001Å5\u0012\u0003\u0006ö\t\u0010ï\u0010À=\b\tô\u0010ÿö\u000eÆ\u00057\u0004Ñ5Î\u00025Ú+\u0006\u0005\u0001\u0000\u0006Ø+Ï\u0001\u0012á\u0016\u0011ÿ\t\u0000ô\u0005ú\u0018îÐCú\u0012½*\u0000ý\u0001\u0012ß\u0014\u0016÷ú\u0018îÐ>\tÂ\u00176ô\u0003\u0002\u0010ö\u0002è(\u0005\b\u0002â$\u0001öÿ\u000fú\u0018îÐ>\tÂ\u001e(\u0005\b\u0002â$\u0001öÿ\u000fú\u0018îÐ>\tÂ\u0019 \u0016ðë(\u0005\b\u0002â$\u0001öÿ\u000föÿ\u0006å2ú\u0003\u0010ú\u0018îÐ>\tÂ\u0017:þôß4\u0003ò\u001bÓ(\u0005\b\u0002â$\u0001öÿ\u000f\u000f\u0001Ä6\u0012\u0003\u0006ö\t\u0010ï\u0010¿>\b\tô\u0010ÿö\u000eÅ\u0016\b(É?éô\n\u000f\u0001Ä6\u0012\u0003\u0006ö\t\u0010ï\u0010¿>\b\tô\u0010ÿö\u000eÅ\u0016\b\u001eÓ5óô\n\u000b\u0003\u0001\u0012Ü\u001b\u0002\bû\u0016ø\t\u0002ã\u001a\u0012\u0006û\u0006üû\u0001\nöÿ\u0006õ\u0012á\u0016ÿ\u0006î\"\u0001\u0010î\u0007ï\u000bþú\u000eô\u0001\u0012Õ\u0001ú\u0018îÐ>\tÂ\u001b&\u0006üâ$\u0011ó\u0012ú\n\u0007þ\u0006\tøø\u0000\u000e\rö\u0005ÆH\tý\u0004ô\u000bÄ\u0019$\u0016Ñ&\u0006ü\u0006õ\u0006ã$\u0016\u0001\u0012Ð$\u0014ÿ\u0000\f\u0002ôî\u0014\u0016÷\u0004\nü\u0012ô\u0001\u0012Ò,ø\u0015\u0003Ü&õ\u0006\u0004\u0010ú\u0018îÐJ\u0002ø\u0006ÅOò\nÁ/\u0012\nÜ(\u0005\b\u0002â$\u0001öÿ\u000f\u0001\u0012Ý\u001a\u0016ÿÔ,\t\u0001\nú\u0018îÐJ\u0002ø\u0006ÅOò\nÁ/\u0012\nØ,\t\u0001\n\u0001\u0012â\u0019\u0014îú\u0018îÐ>\tÂ\u0017:þôß4\u0003ò\u001bÙ)\u0002ÿ\b\u0002â$\u0001öÿ\u000fþÖ:þôß4\u0003ò\u001bú\u0018îÐ>\tÂ\u0018,\u0006\u0007õÿ\u0004\rü\u0000\u000e\rö\u0005ÆH\tý\u0004ô\u000bÄ\u001e(â\u001b\u000b\u0005\u0006\nÎ$\u0016Î,ø\u0015\u0003Ü&õ\u0006\u0004\u0010ú\u0018îÐCþ\tÂ\u0017:þôà6ô\u0003\u0002\u0010ú\u0018îÐAø\u0010üÊ\u0018,ø\u0015\u0003Ü&õ\u0006\u0004\u0010þò\u0012\u0000\u000e\rö\u0005ÆH\tý\u0004ô\u000bÄ\u0017\"\u0015õâ$\u0016Î,ø\u0015\u0003Ü&õ\u0006\u0004\u0010ô\u0016÷ç \r\u0004ö\u0016ø\u0010òê ü\u0013ò\u0014\nÎ(\fö\u0001\u0014þ\u0006úÿ\u0011ö\u0016ø\u0010òê ü\u0013ò\u0014\nÚ\u0014\u0016÷à*ü\u000bû\f\t\u0002\u0001\u0012Ò/\u0001\u0006\u0002\u0002ú\f\tã(úøî\u000bë\u000b\u0006õ\u0006â,ø\u0015\u0003\u000f\u0001Å5\u0012\u0003\u0006ö\t\u0010ï\u0010À=\b\tô\u0010ÿö\u000eÆ\u0015\b\u001eÓ<ìô\nÜH5\u0015\u0003õ\u0012\u0002¿7\u000f\u0001Å5\u0012\u0003\u0006ö\t\u0010ï\u0010À=\b\tô\u0010ÿö\u000eÆ\f\u00001\u0002\u0005\u0001Øý7Ð\u0005\u00007×-Ô1Îî\nì\u000bI\u0004´Iþ\u000e\u0003ù\u0002\u0005\u000b\u000b°Oü\u0004\u0011¸\u0001\u0012Ò5\u0000\u0003ö\fø\u0019Ó-ÿÈ\u0001\u0002\t\u000f/ø\u0004\bþ&ñ\u0016\u0014ò\f\nóâ \u0016ð".getBytes("ISO-8859-1"), 0, bArr, 0, 1171);
        $$a = bArr;
        $$b = 34;
        int i5 = $10 + 115;
        $11 = i5 % 128;
        if (i5 % 2 == 0) {
            throw null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x01b8, code lost:
    
        if (r5 != null) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:211:0x1dc5, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0282, code lost:
    
        if ((r14 % 2) == 0) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:391:0x1b18, code lost:
    
        r8 = r47;
        r1 = r43.getDeclaredConstructor(java.lang.Object.class, java.lang.Boolean.TYPE);
        r1.setAccessible(true);
        com.appsflyer.internal.AFa1jSDK.w = r1.newInstance(r2, java.lang.Boolean.valueOf(!r24));
     */
    /* JADX WARN: Code restructure failed: missing block: B:392:0x1b44, code lost:
    
        r1 = com.appsflyer.internal.AFa1jSDK.$11;
        r2 = (r1 ^ 85) + ((r1 & 85) << 1);
        com.appsflyer.internal.AFa1jSDK.$10 = r2 % 128;
        r2 = r2 % 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:394:0x1b53, code lost:
    
        r8.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:395:0x1b56, code lost:
    
        r2 = 2 % 2;
        r2 = 2;
        r6 = false;
        r8 = true;
        r27 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x04fe, code lost:
    
        if (((java.lang.Boolean) java.lang.Class.forName($$c(r4[92], r4[57], r14)).getMethod($$c(r4[84], r4[251(0xfb, float:3.52E-43)], (short) 280), null).invoke(r15, null)).booleanValue() != false) goto L132;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:1006:0x0285  */
    /* JADX WARN: Removed duplicated region for block: B:1021:0x0216 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:1025:0x01f0 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:123:0x1df0 A[Catch: Exception -> 0x1ece, TRY_ENTER, TryCatch #25 {Exception -> 0x1ece, blocks: (B:10:0x015c, B:12:0x016f, B:39:0x0388, B:45:0x03f0, B:47:0x03f6, B:48:0x03f7, B:49:0x039e, B:50:0x03f8, B:53:0x0446, B:63:0x048a, B:66:0x0493, B:71:0x04a3, B:77:0x04b1, B:123:0x1df0, B:127:0x1df4, B:82:0x1e97, B:125:0x1e02, B:129:0x1e11, B:137:0x1e6a, B:139:0x1e70, B:140:0x1e71, B:987:0x02fd, B:996:0x1eb1, B:998:0x1eb8, B:999:0x1eb9, B:1002:0x1ebb, B:1004:0x1ec2, B:1005:0x1ec3, B:1008:0x0295, B:1014:0x1ec5, B:1016:0x1ecc, B:1017:0x1ecd, B:132:0x1e2e, B:133:0x1e67, B:993:0x0352, B:990:0x0316, B:1011:0x02c2, B:41:0x03b6), top: B:9:0x015c, inners: #12, #50, #54, #59, #84 }] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x023e  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0275  */
    /* JADX WARN: Removed duplicated region for block: B:318:0x1988 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x02e9  */
    /* JADX WARN: Removed duplicated region for block: B:390:0x1b18 A[EDGE_INSN: B:390:0x1b18->B:391:0x1b18 BREAK  A[LOOP:2: B:191:0x0b91->B:344:0x1ac1], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0388 A[Catch: Exception -> 0x1ece, TRY_ENTER, TryCatch #25 {Exception -> 0x1ece, blocks: (B:10:0x015c, B:12:0x016f, B:39:0x0388, B:45:0x03f0, B:47:0x03f6, B:48:0x03f7, B:49:0x039e, B:50:0x03f8, B:53:0x0446, B:63:0x048a, B:66:0x0493, B:71:0x04a3, B:77:0x04b1, B:123:0x1df0, B:127:0x1df4, B:82:0x1e97, B:125:0x1e02, B:129:0x1e11, B:137:0x1e6a, B:139:0x1e70, B:140:0x1e71, B:987:0x02fd, B:996:0x1eb1, B:998:0x1eb8, B:999:0x1eb9, B:1002:0x1ebb, B:1004:0x1ec2, B:1005:0x1ec3, B:1008:0x0295, B:1014:0x1ec5, B:1016:0x1ecc, B:1017:0x1ecd, B:132:0x1e2e, B:133:0x1e67, B:993:0x0352, B:990:0x0316, B:1011:0x02c2, B:41:0x03b6), top: B:9:0x015c, inners: #12, #50, #54, #59, #84 }] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x039e A[Catch: Exception -> 0x1ece, TRY_LEAVE, TryCatch #25 {Exception -> 0x1ece, blocks: (B:10:0x015c, B:12:0x016f, B:39:0x0388, B:45:0x03f0, B:47:0x03f6, B:48:0x03f7, B:49:0x039e, B:50:0x03f8, B:53:0x0446, B:63:0x048a, B:66:0x0493, B:71:0x04a3, B:77:0x04b1, B:123:0x1df0, B:127:0x1df4, B:82:0x1e97, B:125:0x1e02, B:129:0x1e11, B:137:0x1e6a, B:139:0x1e70, B:140:0x1e71, B:987:0x02fd, B:996:0x1eb1, B:998:0x1eb8, B:999:0x1eb9, B:1002:0x1ebb, B:1004:0x1ec2, B:1005:0x1ec3, B:1008:0x0295, B:1014:0x1ec5, B:1016:0x1ecc, B:1017:0x1ecd, B:132:0x1e2e, B:133:0x1e67, B:993:0x0352, B:990:0x0316, B:1011:0x02c2, B:41:0x03b6), top: B:9:0x015c, inners: #12, #50, #54, #59, #84 }] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x047b  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0490  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0499  */
    /* JADX WARN: Removed duplicated region for block: B:709:0x1cf6 A[Catch: all -> 0x1d73, TryCatch #20 {all -> 0x1d73, blocks: (B:344:0x1ac1, B:348:0x1adb, B:350:0x1ae2, B:351:0x1ae3, B:358:0x1aed, B:360:0x1af4, B:361:0x1af5, B:367:0x1af7, B:369:0x1b02, B:370:0x1b03, B:373:0x1b05, B:375:0x1b10, B:376:0x1b11, B:391:0x1b18, B:598:0x1b8f, B:607:0x1c50, B:609:0x1c56, B:610:0x1c57, B:624:0x1b7c, B:626:0x1b82, B:627:0x1b83, B:638:0x1c59, B:640:0x1c67, B:641:0x1c68, B:673:0x1c94, B:675:0x1ca1, B:676:0x1ca2, B:682:0x1ca4, B:684:0x1cb6, B:685:0x1cb7, B:707:0x1ceb, B:709:0x1cf6, B:710:0x1cf7, B:757:0x1d00, B:759:0x1d11, B:760:0x1d12, B:764:0x1d21, B:766:0x1d2c, B:767:0x1d2d, B:774:0x1d40, B:776:0x1d49, B:777:0x1d4a, B:783:0x1d4c, B:785:0x1d5d, B:786:0x1d5e, B:789:0x1d60, B:791:0x1d71, B:792:0x1d72, B:174:0x0af0, B:601:0x1c17, B:602:0x1c4d, B:577:0x16e4, B:172:0x0aaf, B:529:0x14b9, B:331:0x1a27, B:217:0x0c70, B:329:0x19e7), top: B:343:0x1ac1, inners: #6, #8, #9, #10, #43, #89, #92, #99 }] */
    /* JADX WARN: Removed duplicated region for block: B:710:0x1cf7 A[Catch: all -> 0x1d73, TryCatch #20 {all -> 0x1d73, blocks: (B:344:0x1ac1, B:348:0x1adb, B:350:0x1ae2, B:351:0x1ae3, B:358:0x1aed, B:360:0x1af4, B:361:0x1af5, B:367:0x1af7, B:369:0x1b02, B:370:0x1b03, B:373:0x1b05, B:375:0x1b10, B:376:0x1b11, B:391:0x1b18, B:598:0x1b8f, B:607:0x1c50, B:609:0x1c56, B:610:0x1c57, B:624:0x1b7c, B:626:0x1b82, B:627:0x1b83, B:638:0x1c59, B:640:0x1c67, B:641:0x1c68, B:673:0x1c94, B:675:0x1ca1, B:676:0x1ca2, B:682:0x1ca4, B:684:0x1cb6, B:685:0x1cb7, B:707:0x1ceb, B:709:0x1cf6, B:710:0x1cf7, B:757:0x1d00, B:759:0x1d11, B:760:0x1d12, B:764:0x1d21, B:766:0x1d2c, B:767:0x1d2d, B:774:0x1d40, B:776:0x1d49, B:777:0x1d4a, B:783:0x1d4c, B:785:0x1d5d, B:786:0x1d5e, B:789:0x1d60, B:791:0x1d71, B:792:0x1d72, B:174:0x0af0, B:601:0x1c17, B:602:0x1c4d, B:577:0x16e4, B:172:0x0aaf, B:529:0x14b9, B:331:0x1a27, B:217:0x0c70, B:329:0x19e7), top: B:343:0x1ac1, inners: #6, #8, #9, #10, #43, #89, #92, #99 }] */
    /* JADX WARN: Removed duplicated region for block: B:75:0x04ad  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x1e72  */
    /* JADX WARN: Removed duplicated region for block: B:812:0x1dc3 A[Catch: all -> 0x1dc5, TryCatch #60 {all -> 0x1dc5, blocks: (B:210:0x1d8a, B:209:0x1d87, B:394:0x1b53, B:800:0x1d94, B:802:0x1da1, B:803:0x1da2, B:810:0x1dbc, B:812:0x1dc3, B:813:0x1dc4, B:203:0x1d81), top: B:393:0x1b53, inners: #26 }] */
    /* JADX WARN: Removed duplicated region for block: B:813:0x1dc4 A[Catch: all -> 0x1dc5, TRY_LEAVE, TryCatch #60 {all -> 0x1dc5, blocks: (B:210:0x1d8a, B:209:0x1d87, B:394:0x1b53, B:800:0x1d94, B:802:0x1da1, B:803:0x1da2, B:810:0x1dbc, B:812:0x1dc3, B:813:0x1dc4, B:203:0x1d81), top: B:393:0x1b53, inners: #26 }] */
    /* JADX WARN: Removed duplicated region for block: B:83:0x04b5 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:980:0x04a1  */
    /* JADX WARN: Removed duplicated region for block: B:981:0x0492  */
    /* JADX WARN: Removed duplicated region for block: B:984:0x047d  */
    /* JADX WARN: Removed duplicated region for block: B:987:0x02fd A[Catch: Exception -> 0x1ece, TRY_ENTER, TRY_LEAVE, TryCatch #25 {Exception -> 0x1ece, blocks: (B:10:0x015c, B:12:0x016f, B:39:0x0388, B:45:0x03f0, B:47:0x03f6, B:48:0x03f7, B:49:0x039e, B:50:0x03f8, B:53:0x0446, B:63:0x048a, B:66:0x0493, B:71:0x04a3, B:77:0x04b1, B:123:0x1df0, B:127:0x1df4, B:82:0x1e97, B:125:0x1e02, B:129:0x1e11, B:137:0x1e6a, B:139:0x1e70, B:140:0x1e71, B:987:0x02fd, B:996:0x1eb1, B:998:0x1eb8, B:999:0x1eb9, B:1002:0x1ebb, B:1004:0x1ec2, B:1005:0x1ec3, B:1008:0x0295, B:1014:0x1ec5, B:1016:0x1ecc, B:1017:0x1ecd, B:132:0x1e2e, B:133:0x1e67, B:993:0x0352, B:990:0x0316, B:1011:0x02c2, B:41:0x03b6), top: B:9:0x015c, inners: #12, #50, #54, #59, #84 }] */
    /* JADX WARN: Type inference failed for: r10v102, types: [java.lang.Class[]] */
    /* JADX WARN: Type inference failed for: r10v154, types: [java.lang.Class] */
    /* JADX WARN: Type inference failed for: r11v105, types: [java.lang.Class] */
    /* JADX WARN: Type inference failed for: r11v109, types: [java.lang.Class] */
    /* JADX WARN: Type inference failed for: r12v71, types: [java.lang.Class[]] */
    /* JADX WARN: Type inference failed for: r1v134, types: [java.lang.Class] */
    /* JADX WARN: Type inference failed for: r1v239, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v133, types: [java.lang.Class] */
    /* JADX WARN: Type inference failed for: r3v139, types: [java.lang.Class] */
    /* JADX WARN: Type inference failed for: r4v180, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r4v79, types: [java.lang.Class] */
    /* JADX WARN: Type inference failed for: r4v88, types: [java.lang.Class] */
    /* JADX WARN: Type inference failed for: r6v116, types: [java.lang.Class] */
    /* JADX WARN: Type inference failed for: r6v83, types: [java.lang.Class] */
    /* JADX WARN: Type inference failed for: r6v98, types: [java.lang.Class[]] */
    /* JADX WARN: Type inference failed for: r7v181, types: [java.lang.Class] */
    /* JADX WARN: Type inference failed for: r8v112, types: [int] */
    /* JADX WARN: Type inference failed for: r8v123, types: [java.lang.Class] */
    /* JADX WARN: Type inference failed for: r8v163 */
    /* JADX WARN: Type inference failed for: r8v168 */
    /* JADX WARN: Type inference failed for: r8v178, types: [java.lang.Class] */
    /* JADX WARN: Type inference failed for: r8v187, types: [java.lang.Class] */
    /* JADX WARN: Type inference failed for: r8v190 */
    /* JADX WARN: Type inference failed for: r8v194, types: [int, short] */
    /* JADX WARN: Type inference failed for: r8v198 */
    /* JADX WARN: Type inference failed for: r8v209 */
    /* JADX WARN: Type inference failed for: r8v215 */
    /* JADX WARN: Type inference failed for: r8v226 */
    /* JADX WARN: Type inference failed for: r8v239, types: [java.util.zip.ZipFile] */
    /* JADX WARN: Type inference failed for: r8v291 */
    /* JADX WARN: Type inference failed for: r8v292 */
    /* JADX WARN: Type inference failed for: r8v293 */
    /* JADX WARN: Type inference failed for: r8v76, types: [int, short] */
    /* JADX WARN: Type inference failed for: r8v80 */
    /* JADX WARN: Type inference failed for: r8v81 */
    /* JADX WARN: Type inference failed for: r8v83 */
    /* JADX WARN: Type inference failed for: r8v89, types: [java.lang.Class[]] */
    /* JADX WARN: Type inference failed for: r8v93, types: [int, short] */
    /* JADX WARN: Type inference failed for: r9v210, types: [int, short] */
    /* JADX WARN: Unreachable blocks removed: 2, instructions: 2 */
    static {
        /*
            Method dump skipped, instructions count: 7920
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.AFa1jSDK.<clinit>():void");
    }

    public static int getMediationNetwork(int i2) {
        int i3 = 2 % 2;
        int i4 = $11;
        int i5 = (i4 & 117) + (i4 | 117);
        int i6 = i5 % 128;
        $10 = i6;
        Object obj = null;
        if (i5 % 2 != 0) {
            obj.hashCode();
            throw null;
        }
        Object obj2 = w;
        int i7 = i6 + 101;
        $11 = i7 % 128;
        int i8 = i7 % 2;
        try {
            Object[] objArr = {Integer.valueOf(i2)};
            byte[] bArr = $$a;
            byte b = bArr[84];
            byte b2 = bArr[488];
            Class<?> cls = Class.forName($$c(b, b2, (short) ((b2 ^ Ascii.DC2) | (b2 & Ascii.DC2))), true, (ClassLoader) i);
            byte b3 = bArr[4];
            byte b4 = bArr[14];
            int intValue = ((Integer) cls.getMethod($$c(b3, b4, (short) (b4 | SignedBytes.MAX_POWER_OF_TWO)), Integer.TYPE).invoke(obj2, objArr)).intValue();
            int i9 = $10 + 77;
            $11 = i9 % 128;
            if (i9 % 2 != 0) {
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

    public static int getMonetizationNetwork(Object obj) {
        int i2 = 2 % 2;
        int i3 = $11;
        int i4 = (i3 & 7) + (i3 | 7);
        int i5 = i4 % 128;
        $10 = i5;
        if (i4 % 2 != 0) {
            throw null;
        }
        Object obj2 = w;
        int i6 = (i5 & 71) + (i5 | 71);
        $11 = i6 % 128;
        int i7 = i6 % 2;
        try {
            byte[] bArr = $$a;
            byte b = bArr[84];
            byte b2 = bArr[488];
            int intValue = ((Integer) Class.forName($$c(b, b2, (short) (b2 | Ascii.DC2)), true, (ClassLoader) i).getMethod($$c(bArr[62], bArr[12], (short) 1152), Object.class).invoke(obj2, obj)).intValue();
            int currentTimeMillis = (int) System.currentTimeMillis();
            int i8 = ~currentTimeMillis;
            int i9 = ~((i8 & (-1521606923)) | ((-1521606923) ^ i8));
            int i10 = ~currentTimeMillis;
            int i11 = 1550969792 + (((i9 & (-864216280)) | ((-864216280) ^ i9)) * (-933)) + (((~((i10 & (-864216280)) | ((-864216280) ^ i10))) | 553780437) * 933);
            int i12 = ((i11 | 693843616) << 1) - (693843616 ^ i11);
            int currentTimeMillis2 = (int) System.currentTimeMillis();
            int i13 = (~(((-214422119) & currentTimeMillis2) | ((-214422119) ^ currentTimeMillis2))) | 134664224;
            int i14 = ~currentTimeMillis2;
            int i15 = (i14 ^ 689370536) | (i14 & 689370536);
            int i16 = ~(i15 | 214422118);
            int i17 = 1698234858 + (((i13 & i16) | (i13 ^ i16)) * 886);
            int i18 = ~((i14 & 214422118) | (i14 ^ 214422118));
            int i19 = ((i18 & 689370536) | (689370536 ^ i18)) * (-1772);
            int i20 = ((i17 | i19) << 1) - (i19 ^ i17);
            int i21 = -(-((~i15) * 886));
            if (i12 > (i20 & i21) + (i21 | i20)) {
                int i22 = 0 / 0;
            }
            return intValue;
        } catch (Throwable th) {
            Throwable cause = th.getCause();
            if (cause != null) {
                throw cause;
            }
            throw th;
        }
    }

    public static Object AFAdRevenueData(int i2, char c, int i3) {
        int i4 = 2 % 2;
        int i5 = $10;
        int i6 = (i5 & 115) + (i5 | 115);
        int i7 = i6 % 128;
        $11 = i7;
        if (i6 % 2 == 0) {
            throw null;
        }
        Object obj = w;
        int i8 = ((i7 | 113) << 1) - (i7 ^ 113);
        $10 = i8 % 128;
        int i9 = i8 % 2;
        try {
            Object[] objArr = {Integer.valueOf(i2), Character.valueOf(c), Integer.valueOf(i3)};
            byte[] bArr = $$a;
            byte b = bArr[84];
            byte b2 = bArr[488];
            Class<?> cls = Class.forName($$c(b, b2, (short) ((b2 ^ Ascii.DC2) | (b2 & Ascii.DC2))), true, (ClassLoader) i);
            byte b3 = bArr[4];
            byte b4 = bArr[49];
            int i10 = $$b;
            Object invoke = cls.getMethod($$c(b3, b4, (short) ((i10 & 1097) | (i10 ^ 1097))), Integer.TYPE, Character.TYPE, Integer.TYPE).invoke(obj, objArr);
            int i11 = $11;
            int i12 = ((i11 | 81) << 1) - (i11 ^ 81);
            $10 = i12 % 128;
            int i13 = i12 % 2;
            return invoke;
        } catch (Throwable th) {
            Throwable cause = th.getCause();
            if (cause != null) {
                throw cause;
            }
            throw th;
        }
    }

    private AFa1jSDK() {
    }

    private static void getMonetizationNetwork(int i2, int i3) {
        int i4 = 2 % 2;
        int i5 = $10;
        int i6 = (i5 & 55) + (i5 | 55);
        $11 = i6 % 128;
        if (i6 % 2 == 0) {
            throw null;
        }
    }
}
