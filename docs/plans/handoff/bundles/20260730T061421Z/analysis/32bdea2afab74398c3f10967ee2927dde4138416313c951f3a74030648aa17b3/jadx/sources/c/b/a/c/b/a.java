package c.b.a.c.b;

import android.annotation.TargetApi;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.StrictMode;
import android.text.TextUtils;
import android.util.Base64;
import c.b.a.c.d.j.q;
import c.b.a.c.f.F;
import c.b.b.A0;
import c.b.b.AbstractC0471p;
import c.b.b.C0446c0;
import c.b.b.C0449e;
import c.b.b.C0451f;
import c.b.b.C0474q0;
import c.b.b.C0480u;
import c.b.b.D;
import c.b.b.K;
import c.b.b.L;
import c.b.b.N0;
import c.b.b.O;
import c.b.b.P;
import c.b.b.Y0;
import c.b.b.a1.e;
import com.google.android.gms.internal.zzbkx;
import com.google.protobuf.ByteString;
import com.google.protobuf.InvalidProtocolBufferException;
import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public static Boolean f2850a;

    /* renamed from: b, reason: collision with root package name */
    public static Boolean f2851b;

    /* renamed from: c, reason: collision with root package name */
    public static Boolean f2852c;

    public static int A(int i, byte[] bArr, int i2, C0449e c0449e) {
        int i3 = i & 127;
        int i4 = i2 + 1;
        byte b2 = bArr[i2];
        if (b2 >= 0) {
            c0449e.f3179a = i3 | (b2 << 7);
            return i4;
        }
        int i5 = i3 | ((b2 & Byte.MAX_VALUE) << 7);
        int i6 = i4 + 1;
        byte b3 = bArr[i4];
        if (b3 >= 0) {
            c0449e.f3179a = i5 | (b3 << 14);
            return i6;
        }
        int i7 = i5 | ((b3 & Byte.MAX_VALUE) << 14);
        int i8 = i6 + 1;
        byte b4 = bArr[i6];
        if (b4 >= 0) {
            c0449e.f3179a = i7 | (b4 << 21);
            return i8;
        }
        int i9 = i7 | ((b4 & Byte.MAX_VALUE) << 21);
        int i10 = i8 + 1;
        byte b5 = bArr[i8];
        if (b5 >= 0) {
            c0449e.f3179a = i9 | (b5 << 28);
            return i10;
        }
        int i11 = i9 | ((b5 & Byte.MAX_VALUE) << 28);
        while (true) {
            int i12 = i10 + 1;
            if (bArr[i10] >= 0) {
                c0449e.f3179a = i11;
                return i12;
            }
            i10 = i12;
        }
    }

    public static void A0(Parcel parcel, int i) {
        parcel.setDataPosition(parcel.dataPosition() + L(parcel, i));
    }

    public static int B(byte[] bArr, int i, C0449e c0449e) {
        int i2 = i + 1;
        byte b2 = bArr[i];
        if (b2 < 0) {
            return A(b2, bArr, i2, c0449e);
        }
        c0449e.f3179a = b2;
        return i2;
    }

    public static void B0(Parcel parcel, int i, int i2) {
        if (i2 < 65535) {
            parcel.writeInt(i | (i2 << 16));
        } else {
            parcel.writeInt(i | (-65536));
            parcel.writeInt(i2);
        }
    }

    public static int C(int i, byte[] bArr, int i2, int i3, O o, C0449e c0449e) {
        L l = (L) o;
        int B = B(bArr, i2, c0449e);
        l.h(l.f3136c, c0449e.f3179a);
        while (B < i3) {
            int B2 = B(bArr, B, c0449e);
            if (i != c0449e.f3179a) {
                break;
            }
            B = B(bArr, B2, c0449e);
            l.h(l.f3136c, c0449e.f3179a);
        }
        return B;
    }

    public static void C0(boolean z) {
        if (!z) {
            throw new IllegalArgumentException();
        }
    }

    public static int D(byte[] bArr, int i, C0449e c0449e) {
        int i2 = i + 1;
        long j = bArr[i];
        if (j >= 0) {
            c0449e.f3180b = j;
            return i2;
        }
        int i3 = i2 + 1;
        byte b2 = bArr[i2];
        long j2 = (j & 127) | ((b2 & Byte.MAX_VALUE) << 7);
        int i4 = 7;
        while (b2 < 0) {
            int i5 = i3 + 1;
            i4 += 7;
            j2 |= (r10 & Byte.MAX_VALUE) << i4;
            b2 = bArr[i3];
            i3 = i5;
        }
        c0449e.f3180b = j2;
        return i3;
    }

    public static void D0(boolean z, Object obj) {
        if (!z) {
            throw new IllegalArgumentException(String.valueOf(obj));
        }
    }

    public static String E(ByteString byteString) {
        StringBuilder sb = new StringBuilder(byteString.size());
        for (int i = 0; i < byteString.size(); i++) {
            byte g = byteString.g(i);
            if (g == 34) {
                sb.append("\\\"");
            } else if (g == 39) {
                sb.append("\\'");
            } else if (g != 92) {
                switch (g) {
                    case 7:
                        sb.append("\\a");
                        break;
                    case 8:
                        sb.append("\\b");
                        break;
                    case 9:
                        sb.append("\\t");
                        break;
                    case 10:
                        sb.append("\\n");
                        break;
                    case 11:
                        sb.append("\\v");
                        break;
                    case 12:
                        sb.append("\\f");
                        break;
                    case 13:
                        sb.append("\\r");
                        break;
                    default:
                        if (g < 32 || g > 126) {
                            sb.append('\\');
                            sb.append((char) (((g >>> 6) & 3) + 48));
                            sb.append((char) (((g >>> 3) & 7) + 48));
                            sb.append((char) ((g & 7) + 48));
                            break;
                        } else {
                            sb.append((char) g);
                            break;
                        }
                        break;
                }
            } else {
                sb.append("\\\\");
            }
        }
        return sb.toString();
    }

    @TargetApi(24)
    public static boolean E0(Context context) {
        if (f2851b == null) {
            f2851b = Boolean.valueOf(context.getPackageManager().hasSystemFeature("cn.google"));
        }
        if (!f2851b.booleanValue()) {
            return false;
        }
        if (f2850a == null) {
            f2850a = Boolean.valueOf(context.getPackageManager().hasSystemFeature("android.hardware.type.watch"));
        }
        return f2850a.booleanValue();
    }

    public static boolean F(byte b2) {
        return b2 > -65;
    }

    public static Object[] F0(Parcel parcel, int i, Parcelable.Creator creator) {
        int L = L(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (L == 0) {
            return null;
        }
        Object[] createTypedArray = parcel.createTypedArray(creator);
        parcel.setDataPosition(dataPosition + L);
        return createTypedArray;
    }

    public static void G(String str, Object obj, StringBuffer stringBuffer, StringBuffer stringBuffer2) {
        if (obj == null) {
            return;
        }
        if (obj instanceof e) {
            int length = stringBuffer.length();
            if (str != null) {
                stringBuffer2.append(stringBuffer);
                stringBuffer2.append(f(str));
                stringBuffer2.append(" <\n");
                stringBuffer.append("  ");
            }
            Class<?> cls = obj.getClass();
            for (Field field : cls.getFields()) {
                int modifiers = field.getModifiers();
                String name = field.getName();
                if (!"cachedSize".equals(name) && (modifiers & 1) == 1 && (modifiers & 8) != 8 && !name.startsWith("_") && !name.endsWith("_")) {
                    Class<?> type = field.getType();
                    Object obj2 = field.get(obj);
                    if (!type.isArray()) {
                        G(name, obj2, stringBuffer, stringBuffer2);
                    } else if (type.getComponentType() == Byte.TYPE) {
                        G(name, obj2, stringBuffer, stringBuffer2);
                    } else {
                        int length2 = obj2 == null ? 0 : Array.getLength(obj2);
                        for (int i = 0; i < length2; i++) {
                            G(name, Array.get(obj2, i), stringBuffer, stringBuffer2);
                        }
                    }
                }
            }
            for (Method method : cls.getMethods()) {
                String name2 = method.getName();
                if (name2.startsWith("set")) {
                    String substring = name2.substring(3);
                    try {
                        if (((Boolean) cls.getMethod("has" + substring, new Class[0]).invoke(obj, new Object[0])).booleanValue()) {
                            G(substring, cls.getMethod("get" + substring, new Class[0]).invoke(obj, new Object[0]), stringBuffer, stringBuffer2);
                        }
                    } catch (NoSuchMethodException unused) {
                    }
                }
            }
            if (str != null) {
                stringBuffer.setLength(length);
                stringBuffer2.append(stringBuffer);
                stringBuffer2.append(">\n");
                return;
            }
            return;
        }
        if (obj instanceof Map) {
            String f = f(str);
            for (Map.Entry entry : ((Map) obj).entrySet()) {
                stringBuffer2.append(stringBuffer);
                stringBuffer2.append(f);
                stringBuffer2.append(" <\n");
                int length3 = stringBuffer.length();
                stringBuffer.append("  ");
                G("key", entry.getKey(), stringBuffer, stringBuffer2);
                G("value", entry.getValue(), stringBuffer, stringBuffer2);
                stringBuffer.setLength(length3);
                stringBuffer2.append(stringBuffer);
                stringBuffer2.append(">\n");
            }
            return;
        }
        String f2 = f(str);
        stringBuffer2.append(stringBuffer);
        stringBuffer2.append(f2);
        stringBuffer2.append(": ");
        if (obj instanceof String) {
            String str2 = (String) obj;
            if (!str2.startsWith("http") && str2.length() > 200) {
                str2 = str2.substring(0, 200) + "[...]";
            }
            int length4 = str2.length();
            StringBuilder sb = new StringBuilder(length4);
            for (int i2 = 0; i2 < length4; i2++) {
                char charAt = str2.charAt(i2);
                if (charAt < ' ' || charAt > '~' || charAt == '\"' || charAt == '\'') {
                    sb.append(String.format("\\u%04x", Integer.valueOf(charAt)));
                } else {
                    sb.append(charAt);
                }
            }
            String sb2 = sb.toString();
            stringBuffer2.append("\"");
            stringBuffer2.append(sb2);
            stringBuffer2.append("\"");
        } else if (obj instanceof byte[]) {
            stringBuffer2.append('\"');
            for (byte b2 : (byte[]) obj) {
                int i3 = b2 & 255;
                if (i3 == 92 || i3 == 34) {
                    stringBuffer2.append('\\');
                    stringBuffer2.append((char) i3);
                } else if (i3 < 32 || i3 >= 127) {
                    stringBuffer2.append(String.format("\\%03o", Integer.valueOf(i3)));
                } else {
                    stringBuffer2.append((char) i3);
                }
            }
            stringBuffer2.append('\"');
        } else {
            stringBuffer2.append(obj);
        }
        stringBuffer2.append("\n");
    }

    public static ArrayList G0(Parcel parcel, int i, Parcelable.Creator creator) {
        int L = L(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (L == 0) {
            return null;
        }
        ArrayList createTypedArrayList = parcel.createTypedArrayList(creator);
        parcel.setDataPosition(dataPosition + L);
        return createTypedArrayList;
    }

    public static final void H(StringBuilder sb, int i, String str, Object obj) {
        if (obj instanceof List) {
            Iterator it = ((List) obj).iterator();
            while (it.hasNext()) {
                H(sb, i, str, it.next());
            }
            return;
        }
        if (obj instanceof Map) {
            Iterator it2 = ((Map) obj).entrySet().iterator();
            while (it2.hasNext()) {
                H(sb, i, str, (Map.Entry) it2.next());
            }
            return;
        }
        sb.append('\n');
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            sb.append(' ');
        }
        sb.append(str);
        if (obj instanceof String) {
            sb.append(": \"");
            sb.append(E(ByteString.j((String) obj)));
            sb.append('\"');
            return;
        }
        if (obj instanceof ByteString) {
            sb.append(": \"");
            sb.append(E((ByteString) obj));
            sb.append('\"');
            return;
        }
        if (obj instanceof K) {
            sb.append(" {");
            I((K) obj, sb, i + 2);
            sb.append("\n");
            while (i2 < i) {
                sb.append(' ');
                i2++;
            }
            sb.append("}");
            return;
        }
        if (!(obj instanceof Map.Entry)) {
            sb.append(": ");
            sb.append(obj.toString());
            return;
        }
        sb.append(" {");
        Map.Entry entry = (Map.Entry) obj;
        int i4 = i + 2;
        H(sb, i4, "key", entry.getKey());
        H(sb, i4, "value", entry.getValue());
        sb.append("\n");
        while (i2 < i) {
            sb.append(' ');
            i2++;
        }
        sb.append("}");
    }

    public static void H0(Parcel parcel, int i) {
        int dataPosition = parcel.dataPosition();
        parcel.setDataPosition(i - 4);
        parcel.writeInt(dataPosition - i);
        parcel.setDataPosition(dataPosition);
    }

    /* JADX WARN: Code restructure failed: missing block: B:68:0x01cd, code lost:
    
        if (((java.lang.Integer) r11).intValue() == 0) goto L83;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x0222, code lost:
    
        r7 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x01de, code lost:
    
        if (((java.lang.Float) r11).floatValue() == com.android.quickstep.fallback.RecentsState.NO_OFFSET) goto L83;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x01f0, code lost:
    
        if (((java.lang.Double) r11).doubleValue() == 0.0d) goto L83;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void I(c.b.b.InterfaceC0470o0 r18, java.lang.StringBuilder r19, int r20) {
        /*
            Method dump skipped, instructions count: 652
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: c.b.a.c.b.a.I(c.b.b.o0, java.lang.StringBuilder, int):void");
    }

    public static void I0(Parcel parcel, int i, List list, boolean z) {
        if (list == null) {
            if (z) {
                B0(parcel, i, 0);
                return;
            }
            return;
        }
        int x0 = x0(parcel, i);
        int size = list.size();
        parcel.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            Parcelable parcelable = (Parcelable) list.get(i2);
            if (parcelable == null) {
                parcel.writeInt(0);
            } else {
                j0(parcel, parcelable, 0);
            }
        }
        H0(parcel, x0);
    }

    public static int J(int i, byte[] bArr, int i2, int i3, C0449e c0449e) {
        if ((i >>> 3) == 0) {
            throw InvalidProtocolBufferException.a();
        }
        int i4 = i & 7;
        if (i4 == 0) {
            return D(bArr, i2, c0449e);
        }
        if (i4 == 1) {
            return i2 + 8;
        }
        if (i4 == 2) {
            return B(bArr, i2, c0449e) + c0449e.f3179a;
        }
        if (i4 != 3) {
            if (i4 == 5) {
                return i2 + 4;
            }
            throw InvalidProtocolBufferException.a();
        }
        int i5 = (i & (-8)) | 4;
        int i6 = 0;
        while (i2 < i3) {
            i2 = B(bArr, i2, c0449e);
            i6 = c0449e.f3179a;
            if (i6 == i5) {
                break;
            }
            i2 = J(i6, bArr, i2, i3, c0449e);
        }
        if (i2 > i3 || i6 != i5) {
            throw InvalidProtocolBufferException.e();
        }
        return i2;
    }

    public static boolean J0(Parcel parcel, int i) {
        X(parcel, i, 4);
        return parcel.readInt() != 0;
    }

    public static int K(Parcel parcel) {
        int readInt = parcel.readInt();
        int L = L(parcel, readInt);
        int dataPosition = parcel.dataPosition();
        if ((65535 & readInt) != 20293) {
            String valueOf = String.valueOf(Integer.toHexString(readInt));
            throw new zzbkx(valueOf.length() != 0 ? "Expected object header. Got 0x".concat(valueOf) : new String("Expected object header. Got 0x"), parcel);
        }
        int i = L + dataPosition;
        if (i >= dataPosition && i <= parcel.dataSize()) {
            return i;
        }
        StringBuilder sb = new StringBuilder(54);
        sb.append("Size read is invalid start=");
        sb.append(dataPosition);
        sb.append(" end=");
        sb.append(i);
        throw new zzbkx(sb.toString(), parcel);
    }

    public static int K0(Parcel parcel, int i) {
        X(parcel, i, 4);
        return parcel.readInt();
    }

    public static int L(Parcel parcel, int i) {
        return (i & (-65536)) != -65536 ? (i >> 16) & 65535 : parcel.readInt();
    }

    public static long L0(Parcel parcel, int i) {
        X(parcel, i, 8);
        return parcel.readLong();
    }

    public static int M(byte[] bArr, int i) {
        return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
    }

    public static BigInteger M0(Parcel parcel, int i) {
        int L = L(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (L == 0) {
            return null;
        }
        byte[] createByteArray = parcel.createByteArray();
        parcel.setDataPosition(dataPosition + L);
        return new BigInteger(createByteArray);
    }

    public static long N(long j, long j2, long j3) {
        long j4 = (j ^ j2) * j3;
        long j5 = ((j4 ^ (j4 >>> 47)) ^ j2) * j3;
        return (j5 ^ (j5 >>> 47)) * j3;
    }

    public static float N0(Parcel parcel, int i) {
        X(parcel, i, 4);
        return parcel.readFloat();
    }

    public static long O(byte[] bArr) {
        int length = bArr.length;
        if (length < 0 || length > bArr.length) {
            StringBuilder sb = new StringBuilder(67);
            sb.append("Out of bound index with offput: 0 and length: ");
            sb.append(length);
            throw new IndexOutOfBoundsException(sb.toString());
        }
        int i = 37;
        char c2 = 0;
        if (length <= 32) {
            if (length > 16) {
                long j = (length << 1) - 7286425919675154353L;
                long y0 = y0(bArr, 0) * (-5435081209227447693L);
                long y02 = y0(bArr, 8);
                int i2 = length + 0;
                long y03 = y0(bArr, i2 - 8) * j;
                return N(Long.rotateRight(y03, 30) + Long.rotateRight(y0 + y02, 43) + (y0(bArr, i2 - 16) * (-7286425919675154353L)), Long.rotateRight(y02 - 7286425919675154353L, 18) + y0 + y03, j);
            }
            if (length >= 8) {
                long j2 = (length << 1) - 7286425919675154353L;
                long y04 = y0(bArr, 0) - 7286425919675154353L;
                long y05 = y0(bArr, (length + 0) - 8);
                return N((Long.rotateRight(y05, 37) * j2) + y04, (Long.rotateRight(y04, 25) + y05) * j2, j2);
            }
            if (length >= 4) {
                return N(length + ((M(bArr, 0) & 4294967295L) << 3), M(bArr, (length + 0) - 4) & 4294967295L, (length << 1) - 7286425919675154353L);
            }
            if (length <= 0) {
                return -7286425919675154353L;
            }
            long j3 = (((bArr[0] & 255) + ((bArr[(length >> 1) + 0] & 255) << 8)) * (-7286425919675154353L)) ^ ((length + ((bArr[(length - 1) + 0] & 255) << 2)) * (-4348849565147123417L));
            return (j3 ^ (j3 >>> 47)) * (-7286425919675154353L);
        }
        if (length <= 64) {
            long j4 = (length << 1) - 7286425919675154353L;
            long y06 = y0(bArr, 0) * (-7286425919675154353L);
            long y07 = y0(bArr, 8);
            int i3 = length + 0;
            long y08 = y0(bArr, i3 - 8) * j4;
            long rotateRight = Long.rotateRight(y08, 30) + Long.rotateRight(y06 + y07, 43) + (y0(bArr, i3 - 16) * (-7286425919675154353L));
            long N = N(rotateRight, Long.rotateRight((-7286425919675154353L) + y07, 18) + y06 + y08, j4);
            long y09 = y0(bArr, 16) * j4;
            long y010 = y0(bArr, 24);
            long y011 = (y0(bArr, i3 - 32) + rotateRight) * j4;
            return N(((y0(bArr, i3 - 24) + N) * j4) + Long.rotateRight(y011, 30) + Long.rotateRight(y09 + y010, 43), Long.rotateRight(y010 + y06, 18) + y09 + y011, j4);
        }
        long j5 = 2480279821605975764L;
        long j6 = 1390051526045402406L;
        long[] jArr = new long[2];
        long[] jArr2 = new long[2];
        long y012 = y0(bArr, 0) + 95310865018149119L;
        int i4 = length - 1;
        int i5 = ((i4 / 64) << 6) + 0;
        int i6 = i4 & 63;
        int i7 = (i5 + i6) - 63;
        int i8 = 0;
        while (true) {
            long rotateRight2 = Long.rotateRight(y0(bArr, i8 + 8) + y012 + j5 + jArr[c2], i) * (-5435081209227447693L);
            long rotateRight3 = Long.rotateRight(y0(bArr, i8 + 48) + j5 + jArr[1], 42) * (-5435081209227447693L);
            long j7 = rotateRight2 ^ jArr2[1];
            long y013 = y0(bArr, i8 + 40) + jArr[0] + rotateRight3;
            long rotateRight4 = Long.rotateRight(j6 + jArr2[0], 33) * (-5435081209227447693L);
            int i9 = i6;
            int i10 = i5;
            o0(bArr, i8, jArr[1] * (-5435081209227447693L), j7 + jArr2[0], jArr);
            o0(bArr, i8 + 32, rotateRight4 + jArr2[1], y0(bArr, i8 + 16) + y013, jArr2);
            int i11 = i8 + 64;
            if (i11 == i10) {
                long j8 = ((255 & j7) << 1) - 5435081209227447693L;
                jArr2[0] = jArr2[0] + i9;
                jArr[0] = jArr[0] + jArr2[0];
                jArr2[0] = jArr2[0] + jArr[0];
                long rotateRight5 = Long.rotateRight(y0(bArr, i7 + 8) + rotateRight4 + y013 + jArr[0], 37) * j8;
                long rotateRight6 = Long.rotateRight(y0(bArr, i7 + 48) + y013 + jArr[1], 42) * j8;
                long j9 = rotateRight5 ^ (jArr2[1] * 9);
                long y014 = y0(bArr, i7 + 40) + (jArr[0] * 9) + rotateRight6;
                long rotateRight7 = Long.rotateRight(j7 + jArr2[0], 33) * j8;
                o0(bArr, i7, jArr[1] * j8, j9 + jArr2[0], jArr);
                o0(bArr, i7 + 32, jArr2[1] + rotateRight7, y0(bArr, i7 + 16) + y014, jArr2);
                return N((((y014 >>> 47) ^ y014) * (-4348849565147123417L)) + N(jArr[0], jArr2[0], j8) + j9, N(jArr[1], jArr2[1], j8) + rotateRight7, j8);
            }
            i8 = i11;
            i5 = i10;
            i6 = i9;
            j6 = j7;
            y012 = rotateRight4;
            i = 37;
            c2 = 0;
            j5 = y013;
        }
    }

    public static double O0(Parcel parcel, int i) {
        X(parcel, i, 8);
        return parcel.readDouble();
    }

    public static Parcelable P(Parcel parcel, int i, Parcelable.Creator creator) {
        int L = L(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (L == 0) {
            return null;
        }
        Parcelable parcelable = (Parcelable) creator.createFromParcel(parcel);
        parcel.setDataPosition(dataPosition + L);
        return parcelable;
    }

    public static BigDecimal P0(Parcel parcel, int i) {
        int L = L(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (L == 0) {
            return null;
        }
        byte[] createByteArray = parcel.createByteArray();
        int readInt = parcel.readInt();
        parcel.setDataPosition(dataPosition + L);
        return new BigDecimal(new BigInteger(createByteArray), readInt);
    }

    public static q Q(Object obj) {
        return new q(obj, null);
    }

    public static String Q0(Parcel parcel, int i) {
        int L = L(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (L == 0) {
            return null;
        }
        String readString = parcel.readString();
        parcel.setDataPosition(dataPosition + L);
        return readString;
    }

    public static Object R(Object obj) {
        if (obj != null) {
            return obj;
        }
        throw new NullPointerException("null reference");
    }

    public static IBinder R0(Parcel parcel, int i) {
        int L = L(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (L == 0) {
            return null;
        }
        IBinder readStrongBinder = parcel.readStrongBinder();
        parcel.setDataPosition(dataPosition + L);
        return readStrongBinder;
    }

    public static Object S(Object obj, Object obj2) {
        if (obj != null) {
            return obj;
        }
        throw new NullPointerException(String.valueOf(obj2));
    }

    public static Bundle S0(Parcel parcel, int i) {
        int L = L(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (L == 0) {
            return null;
        }
        Bundle readBundle = parcel.readBundle();
        parcel.setDataPosition(dataPosition + L);
        return readBundle;
    }

    public static Object T(Callable callable) {
        StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
        try {
            StrictMode.setThreadPolicy(StrictMode.ThreadPolicy.LAX);
            return callable.call();
        } finally {
            StrictMode.setThreadPolicy(threadPolicy);
        }
    }

    public static byte[] T0(Parcel parcel, int i) {
        int L = L(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (L == 0) {
            return null;
        }
        byte[] createByteArray = parcel.createByteArray();
        parcel.setDataPosition(dataPosition + L);
        return createByteArray;
    }

    public static String U(String str) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("Given String is empty or null");
        }
        return str;
    }

    public static byte[][] U0(Parcel parcel, int i) {
        int L = L(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (L == 0) {
            return null;
        }
        int readInt = parcel.readInt();
        byte[][] bArr = new byte[readInt][];
        for (int i2 = 0; i2 < readInt; i2++) {
            bArr[i2] = parcel.createByteArray();
        }
        parcel.setDataPosition(dataPosition + L);
        return bArr;
    }

    public static String V(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        return Base64.encodeToString(bArr, 0);
    }

    public static int[] V0(Parcel parcel, int i) {
        int L = L(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (L == 0) {
            return null;
        }
        int[] createIntArray = parcel.createIntArray();
        parcel.setDataPosition(dataPosition + L);
        return createIntArray;
    }

    public static void W(Handler handler) {
        if (Looper.myLooper() != handler.getLooper()) {
            throw new IllegalStateException("Must be called on the handler thread");
        }
    }

    public static void X(Parcel parcel, int i, int i2) {
        int L = L(parcel, i);
        if (L == i2) {
            return;
        }
        String hexString = Integer.toHexString(L);
        StringBuilder sb = new StringBuilder(String.valueOf(hexString).length() + 46);
        sb.append("Expected size ");
        sb.append(i2);
        sb.append(" got ");
        sb.append(L);
        sb.append(" (0x");
        sb.append(hexString);
        sb.append(")");
        throw new zzbkx(sb.toString(), parcel);
    }

    public static void Y(Parcel parcel, int i, long j) {
        B0(parcel, i, 8);
        parcel.writeLong(j);
    }

    public static void Z(Parcel parcel, int i, Bundle bundle, boolean z) {
        if (bundle == null) {
            if (z) {
                B0(parcel, i, 0);
            }
        } else {
            int x0 = x0(parcel, i);
            parcel.writeBundle(bundle);
            H0(parcel, x0);
        }
    }

    public static void a(byte b2, byte b3, byte b4, byte b5, char[] cArr, int i) {
        if (!F(b3)) {
            if ((((b3 + 112) + (b2 << 28)) >> 30) == 0 && !F(b4) && !F(b5)) {
                int i2 = ((b2 & 7) << 18) | ((b3 & 63) << 12) | ((b4 & 63) << 6) | (b5 & 63);
                cArr[i] = (char) ((i2 >>> 10) + 55232);
                cArr[i + 1] = (char) ((i2 & 1023) + 56320);
                return;
            }
        }
        throw InvalidProtocolBufferException.b();
    }

    public static void a0(Parcel parcel, int i, IBinder iBinder) {
        if (iBinder == null) {
            return;
        }
        int x0 = x0(parcel, i);
        parcel.writeStrongBinder(iBinder);
        H0(parcel, x0);
    }

    public static boolean b(byte b2) {
        return b2 >= 0;
    }

    public static void b0(Parcel parcel, int i, Parcelable parcelable, int i2, boolean z) {
        if (parcelable == null) {
            if (z) {
                B0(parcel, i, 0);
            }
        } else {
            int x0 = x0(parcel, i);
            parcelable.writeToParcel(parcel, i2);
            H0(parcel, x0);
        }
    }

    public static void c(byte b2, byte b3, char[] cArr, int i) {
        if (b2 < -62 || F(b3)) {
            throw InvalidProtocolBufferException.b();
        }
        cArr[i] = (char) (((b2 & 31) << 6) | (b3 & 63));
    }

    public static void c0(Parcel parcel, int i, String str, boolean z) {
        if (str == null) {
            if (z) {
                B0(parcel, i, 0);
            }
        } else {
            int x0 = x0(parcel, i);
            parcel.writeString(str);
            H0(parcel, x0);
        }
    }

    public static void d(byte b2, byte b3, byte b4, char[] cArr, int i) {
        if (F(b3) || ((b2 == -32 && b3 < -96) || ((b2 == -19 && b3 >= -96) || F(b4)))) {
            throw InvalidProtocolBufferException.b();
        }
        cArr[i] = (char) (((b2 & 15) << 12) | ((b3 & 63) << 6) | (b4 & 63));
    }

    public static void d0(Parcel parcel, int i, boolean z) {
        B0(parcel, i, 4);
        parcel.writeInt(z ? 1 : 0);
    }

    public static final String e(String str) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (Character.isUpperCase(charAt)) {
                sb.append("_");
            }
            sb.append(Character.toLowerCase(charAt));
        }
        return sb.toString();
    }

    public static void e0(Parcel parcel, int i, byte[] bArr, boolean z) {
        if (bArr == null) {
            if (z) {
                B0(parcel, i, 0);
            }
        } else {
            int x0 = x0(parcel, i);
            parcel.writeByteArray(bArr);
            H0(parcel, x0);
        }
    }

    public static String f(String str) {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (i == 0) {
                stringBuffer.append(Character.toLowerCase(charAt));
            } else if (Character.isUpperCase(charAt)) {
                stringBuffer.append('_');
                stringBuffer.append(Character.toLowerCase(charAt));
            } else {
                stringBuffer.append(charAt);
            }
        }
        return stringBuffer.toString();
    }

    public static void f0(Parcel parcel, int i, int[] iArr, boolean z) {
        if (iArr == null) {
            if (z) {
                B0(parcel, i, 0);
            }
        } else {
            int x0 = x0(parcel, i);
            parcel.writeIntArray(iArr);
            H0(parcel, x0);
        }
    }

    public static int g(byte[] bArr, int i, C0449e c0449e) {
        int B = B(bArr, i, c0449e);
        int i2 = c0449e.f3179a;
        if (i2 < 0) {
            throw InvalidProtocolBufferException.d();
        }
        if (i2 > bArr.length - B) {
            throw InvalidProtocolBufferException.f();
        }
        if (i2 == 0) {
            c0449e.f3181c = ByteString.f3492a;
            return B;
        }
        c0449e.f3181c = ByteString.i(bArr, B, i2);
        return B + i2;
    }

    public static void g0(Parcel parcel, int i, Parcelable[] parcelableArr, int i2) {
        if (parcelableArr == null) {
            return;
        }
        int x0 = x0(parcel, i);
        parcel.writeInt(parcelableArr.length);
        for (Parcelable parcelable : parcelableArr) {
            if (parcelable == null) {
                parcel.writeInt(0);
            } else {
                j0(parcel, parcelable, i2);
            }
        }
        H0(parcel, x0);
    }

    public static double h(byte[] bArr, int i) {
        return Double.longBitsToDouble(j(bArr, i));
    }

    public static void h0(Parcel parcel, int i, String[] strArr, boolean z) {
        if (strArr == null) {
            if (z) {
                B0(parcel, i, 0);
            }
        } else {
            int x0 = x0(parcel, i);
            parcel.writeStringArray(strArr);
            H0(parcel, x0);
        }
    }

    public static int i(byte[] bArr, int i) {
        return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
    }

    public static void i0(Parcel parcel, int i, byte[][] bArr) {
        if (bArr == null) {
            return;
        }
        int x0 = x0(parcel, i);
        parcel.writeInt(bArr.length);
        for (byte[] bArr2 : bArr) {
            parcel.writeByteArray(bArr2);
        }
        H0(parcel, x0);
    }

    public static long j(byte[] bArr, int i) {
        return ((bArr[i + 7] & 255) << 56) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((bArr[i + 6] & 255) << 48);
    }

    public static void j0(Parcel parcel, Parcelable parcelable, int i) {
        int dataPosition = parcel.dataPosition();
        parcel.writeInt(1);
        int dataPosition2 = parcel.dataPosition();
        parcelable.writeToParcel(parcel, i);
        int dataPosition3 = parcel.dataPosition();
        parcel.setDataPosition(dataPosition);
        parcel.writeInt(dataPosition3 - dataPosition2);
        parcel.setDataPosition(dataPosition3);
    }

    public static float k(byte[] bArr, int i) {
        return Float.intBitsToFloat(i(bArr, i));
    }

    public static void k0(String str, Object obj, StringBuffer stringBuffer, StringBuffer stringBuffer2) {
        if (obj != null) {
            if (!(obj instanceof F)) {
                String r0 = r0(str);
                stringBuffer2.append(stringBuffer);
                stringBuffer2.append(r0);
                stringBuffer2.append(": ");
                if (obj instanceof String) {
                    String str2 = (String) obj;
                    if (!str2.startsWith("http") && str2.length() > 200) {
                        str2 = String.valueOf(str2.substring(0, 200)).concat("[...]");
                    }
                    int length = str2.length();
                    StringBuilder sb = new StringBuilder(length);
                    for (int i = 0; i < length; i++) {
                        char charAt = str2.charAt(i);
                        if (charAt < ' ' || charAt > '~' || charAt == '\"' || charAt == '\'') {
                            sb.append(String.format("\\u%04x", Integer.valueOf(charAt)));
                        } else {
                            sb.append(charAt);
                        }
                    }
                    String sb2 = sb.toString();
                    stringBuffer2.append("\"");
                    stringBuffer2.append(sb2);
                    stringBuffer2.append("\"");
                } else if (obj instanceof byte[]) {
                    stringBuffer2.append('\"');
                    for (byte b2 : (byte[]) obj) {
                        int i2 = b2 & 255;
                        if (i2 == 92 || i2 == 34) {
                            stringBuffer2.append('\\');
                            stringBuffer2.append((char) i2);
                        } else if (i2 < 32 || i2 >= 127) {
                            stringBuffer2.append(String.format("\\%03o", Integer.valueOf(i2)));
                        } else {
                            stringBuffer2.append((char) i2);
                        }
                    }
                    stringBuffer2.append('\"');
                } else {
                    stringBuffer2.append(obj);
                }
                stringBuffer2.append("\n");
                return;
            }
            int length2 = stringBuffer.length();
            if (str != null) {
                stringBuffer2.append(stringBuffer);
                stringBuffer2.append(r0(str));
                stringBuffer2.append(" <\n");
                stringBuffer.append("  ");
            }
            Class<?> cls = obj.getClass();
            for (Field field : cls.getFields()) {
                int modifiers = field.getModifiers();
                String name = field.getName();
                if (!"cachedSize".equals(name) && (modifiers & 1) == 1 && (modifiers & 8) != 8 && !name.startsWith("_") && !name.endsWith("_")) {
                    Class<?> type = field.getType();
                    Object obj2 = field.get(obj);
                    if (!type.isArray() || type.getComponentType() == Byte.TYPE) {
                        k0(name, obj2, stringBuffer, stringBuffer2);
                    } else {
                        int length3 = obj2 == null ? 0 : Array.getLength(obj2);
                        for (int i3 = 0; i3 < length3; i3++) {
                            k0(name, Array.get(obj2, i3), stringBuffer, stringBuffer2);
                        }
                    }
                }
            }
            for (Method method : cls.getMethods()) {
                String name2 = method.getName();
                if (name2.startsWith("set")) {
                    String substring = name2.substring(3);
                    try {
                        String valueOf = String.valueOf(substring);
                        if (((Boolean) cls.getMethod(valueOf.length() != 0 ? "has".concat(valueOf) : new String("has"), new Class[0]).invoke(obj, new Object[0])).booleanValue()) {
                            String valueOf2 = String.valueOf(substring);
                            k0(substring, cls.getMethod(valueOf2.length() != 0 ? "get".concat(valueOf2) : new String("get"), new Class[0]).invoke(obj, new Object[0]), stringBuffer, stringBuffer2);
                        }
                    } catch (NoSuchMethodException unused) {
                    }
                }
            }
            if (str != null) {
                stringBuffer.setLength(length2);
                stringBuffer2.append(stringBuffer);
                stringBuffer2.append(">\n");
            }
        }
    }

    public static int l(A0 a0, byte[] bArr, int i, int i2, int i3, C0449e c0449e) {
        C0474q0 c0474q0 = (C0474q0) a0;
        Object g = c0474q0.g();
        int E = c0474q0.E(g, bArr, i, i2, i3, c0449e);
        c0474q0.h(g);
        c0449e.f3181c = g;
        return E;
    }

    public static void l0(StringBuilder sb, HashMap hashMap) {
        sb.append("{");
        boolean z = true;
        for (String str : hashMap.keySet()) {
            if (z) {
                z = false;
            } else {
                sb.append(",");
            }
            String str2 = (String) hashMap.get(str);
            sb.append("\"");
            sb.append(str);
            sb.append("\":");
            if (str2 == null) {
                sb.append("null");
            } else {
                sb.append("\"");
                sb.append(str2);
                sb.append("\"");
            }
        }
        sb.append("}");
    }

    public static int m(A0 a0, byte[] bArr, int i, int i2, C0449e c0449e) {
        int i3 = i + 1;
        int i4 = bArr[i];
        if (i4 < 0) {
            i3 = A(i4, bArr, i3, c0449e);
            i4 = c0449e.f3179a;
        }
        int i5 = i3;
        if (i4 < 0 || i4 > i2 - i5) {
            throw InvalidProtocolBufferException.f();
        }
        Object g = a0.g();
        int i6 = i4 + i5;
        a0.e(g, bArr, i5, i6, c0449e);
        a0.h(g);
        c0449e.f3181c = g;
        return i6;
    }

    public static void m0(StringBuilder sb, Object[] objArr) {
        int length = objArr.length;
        for (int i = 0; i < length; i++) {
            if (i != 0) {
                sb.append(",");
            }
            sb.append(objArr[i].toString());
        }
    }

    public static int n(A0 a0, int i, byte[] bArr, int i2, int i3, O o, C0449e c0449e) {
        int m = m(a0, bArr, i2, i3, c0449e);
        o.add(c0449e.f3181c);
        while (m < i3) {
            int B = B(bArr, m, c0449e);
            if (i != c0449e.f3179a) {
                break;
            }
            m = m(a0, bArr, B, i3, c0449e);
            o.add(c0449e.f3181c);
        }
        return m;
    }

    public static void n0(boolean z, Object obj) {
        if (!z) {
            throw new IllegalStateException(String.valueOf(obj));
        }
    }

    public static int o(byte[] bArr, int i, O o, C0449e c0449e) {
        C0451f c0451f = (C0451f) o;
        int B = B(bArr, i, c0449e);
        int i2 = c0449e.f3179a + B;
        while (B < i2) {
            B = D(bArr, B, c0449e);
            c0451f.h(c0451f.f3186c, c0449e.f3180b != 0);
        }
        if (B == i2) {
            return B;
        }
        throw InvalidProtocolBufferException.f();
    }

    public static void o0(byte[] bArr, int i, long j, long j2, long[] jArr) {
        long y0 = y0(bArr, i);
        long y02 = y0(bArr, i + 8);
        long y03 = y0(bArr, i + 16);
        long y04 = y0(bArr, i + 24);
        long j3 = j + y0;
        long j4 = y02 + j3 + y03;
        long rotateRight = Long.rotateRight(j4, 44) + Long.rotateRight(j2 + j3 + y04, 21);
        jArr[0] = j4 + y04;
        jArr[1] = rotateRight + j3;
    }

    public static int p(byte[] bArr, int i, O o, C0449e c0449e) {
        C0480u c0480u = (C0480u) o;
        int B = B(bArr, i, c0449e);
        int i2 = c0449e.f3179a + B;
        while (B < i2) {
            c0480u.h(c0480u.f3215c, h(bArr, B));
            B += 8;
        }
        if (B == i2) {
            return B;
        }
        throw InvalidProtocolBufferException.f();
    }

    public static boolean p0(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    public static int q(byte[] bArr, int i, O o, C0449e c0449e) {
        L l = (L) o;
        int B = B(bArr, i, c0449e);
        int i2 = c0449e.f3179a + B;
        while (B < i2) {
            l.h(l.f3136c, i(bArr, B));
            B += 4;
        }
        if (B == i2) {
            return B;
        }
        throw InvalidProtocolBufferException.f();
    }

    public static int q0(Parcel parcel) {
        return x0(parcel, 20293);
    }

    public static int r(byte[] bArr, int i, O o, C0449e c0449e) {
        C0446c0 c0446c0 = (C0446c0) o;
        int B = B(bArr, i, c0449e);
        int i2 = c0449e.f3179a + B;
        while (B < i2) {
            c0446c0.h(c0446c0.f3176c, j(bArr, B));
            B += 8;
        }
        if (B == i2) {
            return B;
        }
        throw InvalidProtocolBufferException.f();
    }

    public static String r0(String str) {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (i == 0) {
                stringBuffer.append(Character.toLowerCase(charAt));
            } else if (Character.isUpperCase(charAt)) {
                stringBuffer.append('_');
                stringBuffer.append(Character.toLowerCase(charAt));
            } else {
                stringBuffer.append(charAt);
            }
        }
        return stringBuffer.toString();
    }

    public static int s(byte[] bArr, int i, O o, C0449e c0449e) {
        D d2 = (D) o;
        int B = B(bArr, i, c0449e);
        int i2 = c0449e.f3179a + B;
        while (B < i2) {
            d2.h(d2.f3116c, k(bArr, B));
            B += 4;
        }
        if (B == i2) {
            return B;
        }
        throw InvalidProtocolBufferException.f();
    }

    public static void s0(Parcel parcel, int i, int i2) {
        B0(parcel, i, 4);
        parcel.writeInt(i2);
    }

    public static int t(byte[] bArr, int i, O o, C0449e c0449e) {
        L l = (L) o;
        int B = B(bArr, i, c0449e);
        int i2 = c0449e.f3179a + B;
        while (B < i2) {
            B = B(bArr, B, c0449e);
            l.h(l.f3136c, AbstractC0471p.a(c0449e.f3179a));
        }
        if (B == i2) {
            return B;
        }
        throw InvalidProtocolBufferException.f();
    }

    public static boolean t0(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    public static int u(byte[] bArr, int i, O o, C0449e c0449e) {
        C0446c0 c0446c0 = (C0446c0) o;
        int B = B(bArr, i, c0449e);
        int i2 = c0449e.f3179a + B;
        while (B < i2) {
            B = D(bArr, B, c0449e);
            c0446c0.h(c0446c0.f3176c, AbstractC0471p.b(c0449e.f3180b));
        }
        if (B == i2) {
            return B;
        }
        throw InvalidProtocolBufferException.f();
    }

    public static String[] u0(Parcel parcel, int i) {
        int L = L(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (L == 0) {
            return null;
        }
        String[] createStringArray = parcel.createStringArray();
        parcel.setDataPosition(dataPosition + L);
        return createStringArray;
    }

    public static int v(byte[] bArr, int i, O o, C0449e c0449e) {
        L l = (L) o;
        int B = B(bArr, i, c0449e);
        int i2 = c0449e.f3179a + B;
        while (B < i2) {
            B = B(bArr, B, c0449e);
            l.h(l.f3136c, c0449e.f3179a);
        }
        if (B == i2) {
            return B;
        }
        throw InvalidProtocolBufferException.f();
    }

    public static Parcel v0(Parcel parcel, int i) {
        int L = L(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (L == 0) {
            return null;
        }
        Parcel obtain = Parcel.obtain();
        obtain.appendFrom(parcel, dataPosition, L);
        parcel.setDataPosition(dataPosition + L);
        return obtain;
    }

    public static int w(byte[] bArr, int i, O o, C0449e c0449e) {
        C0446c0 c0446c0 = (C0446c0) o;
        int B = B(bArr, i, c0449e);
        int i2 = c0449e.f3179a + B;
        while (B < i2) {
            B = D(bArr, B, c0449e);
            c0446c0.h(c0446c0.f3176c, c0449e.f3180b);
        }
        if (B == i2) {
            return B;
        }
        throw InvalidProtocolBufferException.f();
    }

    public static void w0(Parcel parcel, int i) {
        if (parcel.dataPosition() == i) {
            return;
        }
        StringBuilder sb = new StringBuilder(37);
        sb.append("Overread allowed size end=");
        sb.append(i);
        throw new zzbkx(sb.toString(), parcel);
    }

    public static int x(byte[] bArr, int i, C0449e c0449e) {
        int B = B(bArr, i, c0449e);
        int i2 = c0449e.f3179a;
        if (i2 < 0) {
            throw InvalidProtocolBufferException.d();
        }
        if (i2 == 0) {
            c0449e.f3181c = "";
            return B;
        }
        c0449e.f3181c = new String(bArr, B, i2, P.f3141a);
        return B + i2;
    }

    public static int x0(Parcel parcel, int i) {
        parcel.writeInt(i | (-65536));
        parcel.writeInt(0);
        return parcel.dataPosition();
    }

    public static int y(byte[] bArr, int i, C0449e c0449e) {
        int B = B(bArr, i, c0449e);
        int i2 = c0449e.f3179a;
        if (i2 < 0) {
            throw InvalidProtocolBufferException.d();
        }
        if (i2 == 0) {
            c0449e.f3181c = "";
            return B;
        }
        c0449e.f3181c = Y0.f3161a.a(bArr, B, i2);
        return B + i2;
    }

    public static long y0(byte[] bArr, int i) {
        ByteBuffer wrap = ByteBuffer.wrap(bArr, i, 8);
        wrap.order(ByteOrder.LITTLE_ENDIAN);
        return wrap.getLong();
    }

    public static int z(int i, byte[] bArr, int i2, int i3, N0 n0, C0449e c0449e) {
        if ((i >>> 3) == 0) {
            throw InvalidProtocolBufferException.a();
        }
        int i4 = i & 7;
        if (i4 == 0) {
            int D = D(bArr, i2, c0449e);
            n0.c(i, Long.valueOf(c0449e.f3180b));
            return D;
        }
        if (i4 == 1) {
            n0.c(i, Long.valueOf(j(bArr, i2)));
            return i2 + 8;
        }
        if (i4 == 2) {
            int B = B(bArr, i2, c0449e);
            int i5 = c0449e.f3179a;
            if (i5 < 0) {
                throw InvalidProtocolBufferException.d();
            }
            if (i5 > bArr.length - B) {
                throw InvalidProtocolBufferException.f();
            }
            if (i5 == 0) {
                n0.c(i, ByteString.f3492a);
            } else {
                n0.c(i, ByteString.i(bArr, B, i5));
            }
            return B + i5;
        }
        if (i4 != 3) {
            if (i4 != 5) {
                throw InvalidProtocolBufferException.a();
            }
            n0.c(i, Integer.valueOf(i(bArr, i2)));
            return i2 + 4;
        }
        N0 b2 = N0.b();
        int i6 = (i & (-8)) | 4;
        int i7 = 0;
        while (true) {
            if (i2 >= i3) {
                break;
            }
            int B2 = B(bArr, i2, c0449e);
            int i8 = c0449e.f3179a;
            if (i8 == i6) {
                i7 = i8;
                i2 = B2;
                break;
            }
            i7 = i8;
            i2 = z(i8, bArr, B2, i3, b2, c0449e);
        }
        if (i2 > i3 || i7 != i6) {
            throw InvalidProtocolBufferException.e();
        }
        n0.c(i, b2);
        return i2;
    }

    public static String z0(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        return Base64.encodeToString(bArr, 10);
    }
}
