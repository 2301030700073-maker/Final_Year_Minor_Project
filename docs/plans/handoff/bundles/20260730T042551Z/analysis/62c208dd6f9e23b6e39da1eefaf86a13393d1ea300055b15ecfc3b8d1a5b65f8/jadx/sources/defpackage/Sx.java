package defpackage;

import com.facebook.internal.security.CertificateUtil;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.FileInputStream;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;

/* loaded from: classes.dex */
public final class Sx {

    /* renamed from: do, reason: not valid java name */
    public static final byte[] f3564do = {112, 114, 111, 0};

    /* renamed from: if, reason: not valid java name */
    public static final byte[] f3565if = {112, 114, 109, 0};

    /* renamed from: break, reason: not valid java name */
    public static boolean m2199break(ByteArrayOutputStream byteArrayOutputStream, byte[] bArr, C3223ke[] c3223keArr) {
        ArrayList arrayList;
        int length;
        byte[] bArr2 = Tx.f3760do;
        if (!Arrays.equals(bArr, bArr2)) {
            byte[] bArr3 = Tx.f3763if;
            if (Arrays.equals(bArr, bArr3)) {
                byte[] m2204do = m2204do(c3223keArr, bArr3);
                C0315Kc.m1170interface(byteArrayOutputStream, c3223keArr.length, 1);
                C0315Kc.m1170interface(byteArrayOutputStream, m2204do.length, 4);
                byte[] m1169import = C0315Kc.m1169import(m2204do);
                C0315Kc.m1170interface(byteArrayOutputStream, m1169import.length, 4);
                byteArrayOutputStream.write(m1169import);
                return true;
            }
            byte[] bArr4 = Tx.f3764new;
            if (Arrays.equals(bArr, bArr4)) {
                C0315Kc.m1170interface(byteArrayOutputStream, c3223keArr.length, 1);
                for (C3223ke c3223ke : c3223keArr) {
                    int size = c3223ke.f14014do.size() * 4;
                    String m2209if = m2209if(c3223ke.f14013do, c3223ke.f14019if, bArr4);
                    C0315Kc.m1174protected(byteArrayOutputStream, m2209if.getBytes(StandardCharsets.UTF_8).length);
                    C0315Kc.m1174protected(byteArrayOutputStream, c3223ke.f14015do.length);
                    C0315Kc.m1170interface(byteArrayOutputStream, size, 4);
                    C0315Kc.m1170interface(byteArrayOutputStream, c3223ke.f14012do, 4);
                    byteArrayOutputStream.write(m2209if.getBytes(StandardCharsets.UTF_8));
                    Iterator<Integer> it = c3223ke.f14014do.keySet().iterator();
                    while (it.hasNext()) {
                        C0315Kc.m1174protected(byteArrayOutputStream, it.next().intValue());
                        C0315Kc.m1174protected(byteArrayOutputStream, 0);
                    }
                    for (int i : c3223ke.f14015do) {
                        C0315Kc.m1174protected(byteArrayOutputStream, i);
                    }
                }
                return true;
            }
            byte[] bArr5 = Tx.f3762for;
            if (Arrays.equals(bArr, bArr5)) {
                byte[] m2204do2 = m2204do(c3223keArr, bArr5);
                C0315Kc.m1170interface(byteArrayOutputStream, c3223keArr.length, 1);
                C0315Kc.m1170interface(byteArrayOutputStream, m2204do2.length, 4);
                byte[] m1169import2 = C0315Kc.m1169import(m2204do2);
                C0315Kc.m1170interface(byteArrayOutputStream, m1169import2.length, 4);
                byteArrayOutputStream.write(m1169import2);
                return true;
            }
            byte[] bArr6 = Tx.f3765try;
            if (!Arrays.equals(bArr, bArr6)) {
                return false;
            }
            C0315Kc.m1174protected(byteArrayOutputStream, c3223keArr.length);
            for (C3223ke c3223ke2 : c3223keArr) {
                String m2209if2 = m2209if(c3223ke2.f14013do, c3223ke2.f14019if, bArr6);
                C0315Kc.m1174protected(byteArrayOutputStream, m2209if2.getBytes(StandardCharsets.UTF_8).length);
                TreeMap<Integer, Integer> treeMap = c3223ke2.f14014do;
                C0315Kc.m1174protected(byteArrayOutputStream, treeMap.size());
                C0315Kc.m1174protected(byteArrayOutputStream, c3223ke2.f14015do.length);
                C0315Kc.m1170interface(byteArrayOutputStream, c3223ke2.f14012do, 4);
                byteArrayOutputStream.write(m2209if2.getBytes(StandardCharsets.UTF_8));
                Iterator<Integer> it2 = treeMap.keySet().iterator();
                while (it2.hasNext()) {
                    C0315Kc.m1174protected(byteArrayOutputStream, it2.next().intValue());
                }
                for (int i2 : c3223ke2.f14015do) {
                    C0315Kc.m1174protected(byteArrayOutputStream, i2);
                }
            }
            return true;
        }
        ArrayList arrayList2 = new ArrayList(3);
        ArrayList arrayList3 = new ArrayList(3);
        ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
        try {
            C0315Kc.m1174protected(byteArrayOutputStream2, c3223keArr.length);
            int i3 = 2;
            int i4 = 2;
            for (C3223ke c3223ke3 : c3223keArr) {
                C0315Kc.m1170interface(byteArrayOutputStream2, c3223ke3.f14012do, 4);
                C0315Kc.m1170interface(byteArrayOutputStream2, c3223ke3.f14018if, 4);
                C0315Kc.m1170interface(byteArrayOutputStream2, c3223ke3.f14016for, 4);
                String m2209if3 = m2209if(c3223ke3.f14013do, c3223ke3.f14019if, bArr2);
                int length2 = m2209if3.getBytes(StandardCharsets.UTF_8).length;
                C0315Kc.m1174protected(byteArrayOutputStream2, length2);
                i4 = i4 + 4 + 4 + 4 + 2 + (length2 * 1);
                byteArrayOutputStream2.write(m2209if3.getBytes(StandardCharsets.UTF_8));
            }
            byte[] byteArray = byteArrayOutputStream2.toByteArray();
            if (i4 != byteArray.length) {
                throw new IllegalStateException("Expected size " + i4 + ", does not match actual size " + byteArray.length);
            }
            C3269lN c3269lN = new C3269lN(1, byteArray, false);
            byteArrayOutputStream2.close();
            arrayList2.add(c3269lN);
            ByteArrayOutputStream byteArrayOutputStream3 = new ByteArrayOutputStream();
            int i5 = 0;
            for (int i6 = 0; i6 < c3223keArr.length; i6++) {
                try {
                    C3223ke c3223ke4 = c3223keArr[i6];
                    C0315Kc.m1174protected(byteArrayOutputStream3, i6);
                    C0315Kc.m1174protected(byteArrayOutputStream3, c3223ke4.f14011do);
                    i5 = i5 + 2 + 2 + (c3223ke4.f14011do * 2);
                    m2201catch(byteArrayOutputStream3, c3223ke4);
                } finally {
                }
            }
            byte[] byteArray2 = byteArrayOutputStream3.toByteArray();
            if (i5 != byteArray2.length) {
                throw new IllegalStateException("Expected size " + i5 + ", does not match actual size " + byteArray2.length);
            }
            C3269lN c3269lN2 = new C3269lN(3, byteArray2, true);
            byteArrayOutputStream3.close();
            arrayList2.add(c3269lN2);
            byteArrayOutputStream2 = new ByteArrayOutputStream();
            int i7 = 0;
            int i8 = 0;
            while (i7 < c3223keArr.length) {
                try {
                    C3223ke c3223ke5 = c3223keArr[i7];
                    Iterator<Map.Entry<Integer, Integer>> it3 = c3223ke5.f14014do.entrySet().iterator();
                    int i9 = 0;
                    while (it3.hasNext()) {
                        i9 |= it3.next().getValue().intValue();
                    }
                    ByteArrayOutputStream byteArrayOutputStream4 = new ByteArrayOutputStream();
                    try {
                        m2203const(byteArrayOutputStream4, c3223ke5);
                        byte[] byteArray3 = byteArrayOutputStream4.toByteArray();
                        byteArrayOutputStream4.close();
                        byteArrayOutputStream4 = new ByteArrayOutputStream();
                        try {
                            m2206final(byteArrayOutputStream4, c3223ke5);
                            byte[] byteArray4 = byteArrayOutputStream4.toByteArray();
                            byteArrayOutputStream4.close();
                            C0315Kc.m1174protected(byteArrayOutputStream2, i7);
                            int length3 = byteArray3.length + i3 + byteArray4.length;
                            int i10 = i8 + 2 + 4;
                            ArrayList arrayList4 = arrayList3;
                            C0315Kc.m1170interface(byteArrayOutputStream2, length3, 4);
                            C0315Kc.m1174protected(byteArrayOutputStream2, i9);
                            byteArrayOutputStream2.write(byteArray3);
                            byteArrayOutputStream2.write(byteArray4);
                            i8 = i10 + length3;
                            i7++;
                            arrayList3 = arrayList4;
                            i3 = 2;
                        } finally {
                        }
                    } finally {
                    }
                } finally {
                }
            }
            ArrayList arrayList5 = arrayList3;
            byte[] byteArray5 = byteArrayOutputStream2.toByteArray();
            if (i8 != byteArray5.length) {
                throw new IllegalStateException("Expected size " + i8 + ", does not match actual size " + byteArray5.length);
            }
            C3269lN c3269lN3 = new C3269lN(4, byteArray5, true);
            byteArrayOutputStream2.close();
            arrayList2.add(c3269lN3);
            long j = 4;
            long size2 = j + j + 4 + (arrayList2.size() * 16);
            C0315Kc.m1170interface(byteArrayOutputStream, arrayList2.size(), 4);
            int i11 = 0;
            while (i11 < arrayList2.size()) {
                C3269lN c3269lN4 = (C3269lN) arrayList2.get(i11);
                C0315Kc.m1170interface(byteArrayOutputStream, Cpublic.m7825if(c3269lN4.f14149do), 4);
                C0315Kc.m1170interface(byteArrayOutputStream, size2, 4);
                boolean z = c3269lN4.f14150do;
                byte[] bArr7 = c3269lN4.f14151do;
                if (z) {
                    long length4 = bArr7.length;
                    byte[] m1169import3 = C0315Kc.m1169import(bArr7);
                    arrayList = arrayList5;
                    arrayList.add(m1169import3);
                    C0315Kc.m1170interface(byteArrayOutputStream, m1169import3.length, 4);
                    C0315Kc.m1170interface(byteArrayOutputStream, length4, 4);
                    length = m1169import3.length;
                } else {
                    arrayList = arrayList5;
                    arrayList.add(bArr7);
                    C0315Kc.m1170interface(byteArrayOutputStream, bArr7.length, 4);
                    C0315Kc.m1170interface(byteArrayOutputStream, 0L, 4);
                    length = bArr7.length;
                }
                size2 += length;
                i11++;
                arrayList5 = arrayList;
            }
            ArrayList arrayList6 = arrayList5;
            for (int i12 = 0; i12 < arrayList6.size(); i12++) {
                byteArrayOutputStream.write((byte[]) arrayList6.get(i12));
            }
            return true;
        } finally {
            try {
                byteArrayOutputStream2.close();
                throw th;
            } catch (Throwable th) {
                th.addSuppressed(th);
            }
        }
    }

    /* renamed from: case, reason: not valid java name */
    public static C3223ke[] m2200case(ByteArrayInputStream byteArrayInputStream, int i, C3223ke[] c3223keArr) {
        if (byteArrayInputStream.available() == 0) {
            return new C3223ke[0];
        }
        if (i != c3223keArr.length) {
            throw new IllegalStateException("Mismatched number of dex files found in metadata");
        }
        String[] strArr = new String[i];
        int[] iArr = new int[i];
        for (int i2 = 0; i2 < i; i2++) {
            int m1173private = C0315Kc.m1173private(byteArrayInputStream);
            iArr[i2] = C0315Kc.m1173private(byteArrayInputStream);
            strArr[i2] = new String(C0315Kc.m1163extends(byteArrayInputStream, m1173private), StandardCharsets.UTF_8);
        }
        for (int i3 = 0; i3 < i; i3++) {
            C3223ke c3223ke = c3223keArr[i3];
            if (!c3223ke.f14019if.equals(strArr[i3])) {
                throw new IllegalStateException("Order of dexfiles in metadata did not match baseline");
            }
            int i4 = iArr[i3];
            c3223ke.f14011do = i4;
            c3223ke.f14015do = m2210new(byteArrayInputStream, i4);
        }
        return c3223keArr;
    }

    /* renamed from: catch, reason: not valid java name */
    public static void m2201catch(ByteArrayOutputStream byteArrayOutputStream, C3223ke c3223ke) {
        int i = 0;
        for (int i2 : c3223ke.f14015do) {
            Integer valueOf = Integer.valueOf(i2);
            C0315Kc.m1174protected(byteArrayOutputStream, valueOf.intValue() - i);
            i = valueOf.intValue();
        }
    }

    /* renamed from: class, reason: not valid java name */
    public static void m2202class(ByteArrayOutputStream byteArrayOutputStream, C3223ke c3223ke, String str) {
        C0315Kc.m1174protected(byteArrayOutputStream, str.getBytes(StandardCharsets.UTF_8).length);
        C0315Kc.m1174protected(byteArrayOutputStream, c3223ke.f14011do);
        C0315Kc.m1170interface(byteArrayOutputStream, c3223ke.f14017if, 4);
        C0315Kc.m1170interface(byteArrayOutputStream, c3223ke.f14012do, 4);
        C0315Kc.m1170interface(byteArrayOutputStream, c3223ke.f14016for, 4);
        byteArrayOutputStream.write(str.getBytes(StandardCharsets.UTF_8));
    }

    /* renamed from: const, reason: not valid java name */
    public static void m2203const(ByteArrayOutputStream byteArrayOutputStream, C3223ke c3223ke) {
        byte[] bArr = new byte[((((c3223ke.f14016for * 2) + 8) - 1) & (-8)) / 8];
        for (Map.Entry<Integer, Integer> entry : c3223ke.f14014do.entrySet()) {
            int intValue = entry.getKey().intValue();
            int intValue2 = entry.getValue().intValue();
            int i = intValue2 & 2;
            int i2 = c3223ke.f14016for;
            if (i != 0) {
                int m2207for = m2207for(2, intValue, i2);
                int i3 = m2207for / 8;
                bArr[i3] = (byte) ((1 << (m2207for % 8)) | bArr[i3]);
            }
            if ((intValue2 & 4) != 0) {
                int m2207for2 = m2207for(4, intValue, i2);
                int i4 = m2207for2 / 8;
                bArr[i4] = (byte) ((1 << (m2207for2 % 8)) | bArr[i4]);
            }
        }
        byteArrayOutputStream.write(bArr);
    }

    /* renamed from: do, reason: not valid java name */
    public static byte[] m2204do(C3223ke[] c3223keArr, byte[] bArr) {
        int i = 0;
        int i2 = 0;
        for (C3223ke c3223ke : c3223keArr) {
            i2 += (((((c3223ke.f14016for * 2) + 8) - 1) & (-8)) / 8) + (c3223ke.f14011do * 2) + m2209if(c3223ke.f14013do, c3223ke.f14019if, bArr).getBytes(StandardCharsets.UTF_8).length + 16 + c3223ke.f14017if;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(i2);
        if (Arrays.equals(bArr, Tx.f3762for)) {
            int length = c3223keArr.length;
            while (i < length) {
                C3223ke c3223ke2 = c3223keArr[i];
                m2202class(byteArrayOutputStream, c3223ke2, m2209if(c3223ke2.f14013do, c3223ke2.f14019if, bArr));
                m2206final(byteArrayOutputStream, c3223ke2);
                m2201catch(byteArrayOutputStream, c3223ke2);
                m2203const(byteArrayOutputStream, c3223ke2);
                i++;
            }
        } else {
            for (C3223ke c3223ke3 : c3223keArr) {
                m2202class(byteArrayOutputStream, c3223ke3, m2209if(c3223ke3.f14013do, c3223ke3.f14019if, bArr));
            }
            int length2 = c3223keArr.length;
            while (i < length2) {
                C3223ke c3223ke4 = c3223keArr[i];
                m2206final(byteArrayOutputStream, c3223ke4);
                m2201catch(byteArrayOutputStream, c3223ke4);
                m2203const(byteArrayOutputStream, c3223ke4);
                i++;
            }
        }
        if (byteArrayOutputStream.size() == i2) {
            return byteArrayOutputStream.toByteArray();
        }
        throw new IllegalStateException("The bytes saved do not match expectation. actual=" + byteArrayOutputStream.size() + " expected=" + i2);
    }

    /* renamed from: else, reason: not valid java name */
    public static C3223ke[] m2205else(ByteArrayInputStream byteArrayInputStream, byte[] bArr, int i, C3223ke[] c3223keArr) {
        C3223ke c3223ke;
        if (byteArrayInputStream.available() == 0) {
            return new C3223ke[0];
        }
        if (i != c3223keArr.length) {
            throw new IllegalStateException("Mismatched number of dex files found in metadata");
        }
        for (int i2 = 0; i2 < i; i2++) {
            C0315Kc.m1173private(byteArrayInputStream);
            String str = new String(C0315Kc.m1163extends(byteArrayInputStream, C0315Kc.m1173private(byteArrayInputStream)), StandardCharsets.UTF_8);
            long m1172package = C0315Kc.m1172package(byteArrayInputStream, 4);
            int m1173private = C0315Kc.m1173private(byteArrayInputStream);
            if (c3223keArr.length > 0) {
                int indexOf = str.indexOf("!");
                if (indexOf < 0) {
                    indexOf = str.indexOf(CertificateUtil.DELIMITER);
                }
                String substring = indexOf > 0 ? str.substring(indexOf + 1) : str;
                for (int i3 = 0; i3 < c3223keArr.length; i3++) {
                    if (c3223keArr[i3].f14019if.equals(substring)) {
                        c3223ke = c3223keArr[i3];
                        break;
                    }
                }
            }
            c3223ke = null;
            if (c3223ke == null) {
                throw new IllegalStateException("Missing profile key: ".concat(str));
            }
            c3223ke.f14018if = m1172package;
            int[] m2210new = m2210new(byteArrayInputStream, m1173private);
            if (Arrays.equals(bArr, Tx.f3765try)) {
                c3223ke.f14011do = m1173private;
                c3223ke.f14015do = m2210new;
            }
        }
        return c3223keArr;
    }

    /* renamed from: final, reason: not valid java name */
    public static void m2206final(ByteArrayOutputStream byteArrayOutputStream, C3223ke c3223ke) {
        int i = 0;
        for (Map.Entry<Integer, Integer> entry : c3223ke.f14014do.entrySet()) {
            int intValue = entry.getKey().intValue();
            if ((entry.getValue().intValue() & 1) != 0) {
                C0315Kc.m1174protected(byteArrayOutputStream, intValue - i);
                C0315Kc.m1174protected(byteArrayOutputStream, 0);
                i = intValue;
            }
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static int m2207for(int i, int i2, int i3) {
        if (i == 1) {
            throw new IllegalStateException("HOT methods are not stored in the bitmap");
        }
        if (i == 2) {
            return i2;
        }
        if (i == 4) {
            return i2 + i3;
        }
        throw new IllegalStateException(V1.m2494case("Unexpected flag: ", i));
    }

    /* renamed from: goto, reason: not valid java name */
    public static C3223ke[] m2208goto(FileInputStream fileInputStream, byte[] bArr, String str) {
        if (!Arrays.equals(bArr, Tx.f3763if)) {
            throw new IllegalStateException("Unsupported version");
        }
        int m1172package = (int) C0315Kc.m1172package(fileInputStream, 1);
        byte[] m1165finally = C0315Kc.m1165finally(fileInputStream, (int) C0315Kc.m1172package(fileInputStream, 4), (int) C0315Kc.m1172package(fileInputStream, 4));
        if (fileInputStream.read() > 0) {
            throw new IllegalStateException("Content found after the end of file");
        }
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(m1165finally);
        try {
            C3223ke[] m2211this = m2211this(byteArrayInputStream, str, m1172package);
            byteArrayInputStream.close();
            return m2211this;
        } catch (Throwable th) {
            try {
                byteArrayInputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static String m2209if(String str, String str2, byte[] bArr) {
        byte[] bArr2 = Tx.f3765try;
        boolean equals = Arrays.equals(bArr, bArr2);
        byte[] bArr3 = Tx.f3764new;
        Object obj = (equals || Arrays.equals(bArr, bArr3)) ? CertificateUtil.DELIMITER : "!";
        if (str.length() <= 0) {
            if ("!".equals(obj)) {
                return str2.replace(CertificateUtil.DELIMITER, "!");
            }
            if (CertificateUtil.DELIMITER.equals(obj)) {
                str2 = str2.replace("!", CertificateUtil.DELIMITER);
            }
            return str2;
        }
        if (str2.equals("classes.dex")) {
            return str;
        }
        if (str2.contains("!") || str2.contains(CertificateUtil.DELIMITER)) {
            if ("!".equals(obj)) {
                return str2.replace(CertificateUtil.DELIMITER, "!");
            }
            if (CertificateUtil.DELIMITER.equals(obj)) {
                str2 = str2.replace("!", CertificateUtil.DELIMITER);
            }
            return str2;
        }
        if (str2.endsWith(".apk")) {
            return str2;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        return Creturn.m7984try(sb, (Arrays.equals(bArr, bArr2) || Arrays.equals(bArr, bArr3)) ? CertificateUtil.DELIMITER : "!", str2);
    }

    /* renamed from: new, reason: not valid java name */
    public static int[] m2210new(ByteArrayInputStream byteArrayInputStream, int i) {
        int[] iArr = new int[i];
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            i2 += C0315Kc.m1173private(byteArrayInputStream);
            iArr[i3] = i2;
        }
        return iArr;
    }

    /* renamed from: this, reason: not valid java name */
    public static C3223ke[] m2211this(ByteArrayInputStream byteArrayInputStream, String str, int i) {
        TreeMap<Integer, Integer> treeMap;
        if (byteArrayInputStream.available() == 0) {
            return new C3223ke[0];
        }
        C3223ke[] c3223keArr = new C3223ke[i];
        for (int i2 = 0; i2 < i; i2++) {
            int m1173private = C0315Kc.m1173private(byteArrayInputStream);
            int m1173private2 = C0315Kc.m1173private(byteArrayInputStream);
            c3223keArr[i2] = new C3223ke(str, new String(C0315Kc.m1163extends(byteArrayInputStream, m1173private), StandardCharsets.UTF_8), C0315Kc.m1172package(byteArrayInputStream, 4), m1173private2, (int) C0315Kc.m1172package(byteArrayInputStream, 4), (int) C0315Kc.m1172package(byteArrayInputStream, 4), new int[m1173private2], new TreeMap());
        }
        for (int i3 = 0; i3 < i; i3++) {
            C3223ke c3223ke = c3223keArr[i3];
            int available = byteArrayInputStream.available() - c3223ke.f14017if;
            int i4 = 0;
            while (true) {
                int available2 = byteArrayInputStream.available();
                treeMap = c3223ke.f14014do;
                if (available2 <= available) {
                    break;
                }
                i4 += C0315Kc.m1173private(byteArrayInputStream);
                treeMap.put(Integer.valueOf(i4), 1);
                for (int m1173private3 = C0315Kc.m1173private(byteArrayInputStream); m1173private3 > 0; m1173private3--) {
                    C0315Kc.m1173private(byteArrayInputStream);
                    int m1172package = (int) C0315Kc.m1172package(byteArrayInputStream, 1);
                    if (m1172package != 6 && m1172package != 7) {
                        while (m1172package > 0) {
                            C0315Kc.m1172package(byteArrayInputStream, 1);
                            for (int m1172package2 = (int) C0315Kc.m1172package(byteArrayInputStream, 1); m1172package2 > 0; m1172package2--) {
                                C0315Kc.m1173private(byteArrayInputStream);
                            }
                            m1172package--;
                        }
                    }
                }
            }
            if (byteArrayInputStream.available() != available) {
                throw new IllegalStateException("Read too much data during profile line parse");
            }
            c3223ke.f14015do = m2210new(byteArrayInputStream, c3223ke.f14011do);
            int i5 = c3223ke.f14016for;
            BitSet valueOf = BitSet.valueOf(C0315Kc.m1163extends(byteArrayInputStream, ((((i5 * 2) + 8) - 1) & (-8)) / 8));
            for (int i6 = 0; i6 < i5; i6++) {
                int i7 = valueOf.get(m2207for(2, i6, i5)) ? 2 : 0;
                if (valueOf.get(m2207for(4, i6, i5))) {
                    i7 |= 4;
                }
                if (i7 != 0) {
                    Integer num = treeMap.get(Integer.valueOf(i6));
                    if (num == null) {
                        num = 0;
                    }
                    treeMap.put(Integer.valueOf(i6), Integer.valueOf(i7 | num.intValue()));
                }
            }
        }
        return c3223keArr;
    }

    /* renamed from: try, reason: not valid java name */
    public static C3223ke[] m2212try(FileInputStream fileInputStream, byte[] bArr, byte[] bArr2, C3223ke[] c3223keArr) {
        byte[] bArr3 = Tx.f3759case;
        if (!Arrays.equals(bArr, bArr3)) {
            if (!Arrays.equals(bArr, Tx.f3761else)) {
                throw new IllegalStateException("Unsupported meta version");
            }
            int m1173private = C0315Kc.m1173private(fileInputStream);
            byte[] m1165finally = C0315Kc.m1165finally(fileInputStream, (int) C0315Kc.m1172package(fileInputStream, 4), (int) C0315Kc.m1172package(fileInputStream, 4));
            if (fileInputStream.read() > 0) {
                throw new IllegalStateException("Content found after the end of file");
            }
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(m1165finally);
            try {
                C3223ke[] m2205else = m2205else(byteArrayInputStream, bArr2, m1173private, c3223keArr);
                byteArrayInputStream.close();
                return m2205else;
            } catch (Throwable th) {
                try {
                    byteArrayInputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        if (Arrays.equals(Tx.f3760do, bArr2)) {
            throw new IllegalStateException("Requires new Baseline Profile Metadata. Please rebuild the APK with Android Gradle Plugin 7.2 Canary 7 or higher");
        }
        if (!Arrays.equals(bArr, bArr3)) {
            throw new IllegalStateException("Unsupported meta version");
        }
        int m1172package = (int) C0315Kc.m1172package(fileInputStream, 1);
        byte[] m1165finally2 = C0315Kc.m1165finally(fileInputStream, (int) C0315Kc.m1172package(fileInputStream, 4), (int) C0315Kc.m1172package(fileInputStream, 4));
        if (fileInputStream.read() > 0) {
            throw new IllegalStateException("Content found after the end of file");
        }
        ByteArrayInputStream byteArrayInputStream2 = new ByteArrayInputStream(m1165finally2);
        try {
            C3223ke[] m2200case = m2200case(byteArrayInputStream2, m1172package, c3223keArr);
            byteArrayInputStream2.close();
            return m2200case;
        } catch (Throwable th3) {
            try {
                byteArrayInputStream2.close();
            } catch (Throwable th4) {
                th3.addSuppressed(th4);
            }
            throw th3;
        }
    }
}
