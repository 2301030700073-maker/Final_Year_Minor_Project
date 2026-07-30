package com.google.android.gms.common.server.response;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseArray;
import c.b.a.c.b.a;
import c.b.a.c.d.k.a.g;
import c.b.a.c.d.m.c;
import com.google.android.gms.internal.zzbkx;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public class zzl extends FastSafeParcelableJsonResponse {
    public static final Parcelable.Creator CREATOR = new g();

    /* renamed from: a, reason: collision with root package name */
    public final int f3435a;

    /* renamed from: b, reason: collision with root package name */
    public final Parcel f3436b;

    /* renamed from: c, reason: collision with root package name */
    public final int f3437c;

    /* renamed from: d, reason: collision with root package name */
    public final FieldMappingDictionary f3438d;
    public final String e;
    public int f;
    public int g;

    public zzl(int i, Parcel parcel, FieldMappingDictionary fieldMappingDictionary) {
        this.f3435a = i;
        a.R(parcel);
        this.f3436b = parcel;
        this.f3437c = 2;
        this.f3438d = fieldMappingDictionary;
        if (fieldMappingDictionary == null) {
            this.e = null;
        } else {
            this.e = fieldMappingDictionary.f3428c;
        }
        this.f = 2;
    }

    public static void h(StringBuilder sb, int i, Object obj) {
        switch (i) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
                sb.append(obj);
                return;
            case 7:
                sb.append("\"");
                sb.append(c.a(obj.toString()));
                sb.append("\"");
                return;
            case 8:
                sb.append("\"");
                sb.append(a.V((byte[]) obj));
                sb.append("\"");
                return;
            case 9:
                sb.append("\"");
                sb.append(a.z0((byte[]) obj));
                sb.append("\"");
                return;
            case 10:
                a.l0(sb, (HashMap) obj);
                return;
            case 11:
                throw new IllegalArgumentException("Method does not accept concrete type.");
            default:
                StringBuilder sb2 = new StringBuilder(26);
                sb2.append("Unknown type = ");
                sb2.append(i);
                throw new IllegalArgumentException(sb2.toString());
        }
    }

    private final void i(StringBuilder sb, FastJsonResponse$Field fastJsonResponse$Field, Object obj) {
        if (!fastJsonResponse$Field.f3424c) {
            h(sb, fastJsonResponse$Field.f3423b, obj);
            return;
        }
        ArrayList arrayList = (ArrayList) obj;
        sb.append("[");
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            if (i != 0) {
                sb.append(",");
            }
            h(sb, fastJsonResponse$Field.f3423b, arrayList.get(i));
        }
        sb.append("]");
    }

    @Override // c.b.a.c.d.k.a.b
    public Map a() {
        FieldMappingDictionary fieldMappingDictionary = this.f3438d;
        if (fieldMappingDictionary == null) {
            return null;
        }
        return fieldMappingDictionary.h(this.e);
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x0005, code lost:
    
        if (r0 != 1) goto L9;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.os.Parcel g() {
        /*
            r2 = this;
            int r0 = r2.f
            if (r0 == 0) goto L8
            r1 = 1
            if (r0 == r1) goto L10
            goto L1a
        L8:
            android.os.Parcel r0 = r2.f3436b
            int r0 = c.b.a.c.b.a.q0(r0)
            r2.g = r0
        L10:
            android.os.Parcel r0 = r2.f3436b
            int r1 = r2.g
            c.b.a.c.b.a.H0(r0, r1)
            r0 = 2
            r2.f = r0
        L1a:
            android.os.Parcel r2 = r2.f3436b
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.server.response.zzl.g():android.os.Parcel");
    }

    public final void j(StringBuilder sb, Map map, Parcel parcel) {
        SparseArray sparseArray = new SparseArray();
        for (Map.Entry entry : map.entrySet()) {
            sparseArray.put(((FastJsonResponse$Field) entry.getValue()).g, entry);
        }
        sb.append('{');
        int K = a.K(parcel);
        boolean z = false;
        while (parcel.dataPosition() < K) {
            int readInt = parcel.readInt();
            Map.Entry entry2 = (Map.Entry) sparseArray.get(65535 & readInt);
            if (entry2 != null) {
                if (z) {
                    sb.append(",");
                }
                String str = (String) entry2.getKey();
                FastJsonResponse$Field fastJsonResponse$Field = (FastJsonResponse$Field) entry2.getValue();
                sb.append("\"");
                sb.append(str);
                sb.append("\":");
                if (fastJsonResponse$Field.k != null) {
                    switch (fastJsonResponse$Field.f3425d) {
                        case 0:
                            i(sb, fastJsonResponse$Field, c(fastJsonResponse$Field, Integer.valueOf(a.K0(parcel, readInt))));
                            break;
                        case 1:
                            i(sb, fastJsonResponse$Field, c(fastJsonResponse$Field, a.M0(parcel, readInt)));
                            break;
                        case 2:
                            i(sb, fastJsonResponse$Field, c(fastJsonResponse$Field, Long.valueOf(a.L0(parcel, readInt))));
                            break;
                        case 3:
                            i(sb, fastJsonResponse$Field, c(fastJsonResponse$Field, Float.valueOf(a.N0(parcel, readInt))));
                            break;
                        case 4:
                            i(sb, fastJsonResponse$Field, c(fastJsonResponse$Field, Double.valueOf(a.O0(parcel, readInt))));
                            break;
                        case 5:
                            i(sb, fastJsonResponse$Field, c(fastJsonResponse$Field, a.P0(parcel, readInt)));
                            break;
                        case 6:
                            i(sb, fastJsonResponse$Field, c(fastJsonResponse$Field, Boolean.valueOf(a.J0(parcel, readInt))));
                            break;
                        case 7:
                            i(sb, fastJsonResponse$Field, c(fastJsonResponse$Field, a.Q0(parcel, readInt)));
                            break;
                        case 8:
                        case 9:
                            i(sb, fastJsonResponse$Field, c(fastJsonResponse$Field, a.T0(parcel, readInt)));
                            break;
                        case 10:
                            Bundle S0 = a.S0(parcel, readInt);
                            HashMap hashMap = new HashMap();
                            for (String str2 : S0.keySet()) {
                                hashMap.put(str2, S0.getString(str2));
                            }
                            i(sb, fastJsonResponse$Field, c(fastJsonResponse$Field, hashMap));
                            break;
                        case 11:
                            throw new IllegalArgumentException("Method does not accept concrete type.");
                        default:
                            int i = fastJsonResponse$Field.f3425d;
                            StringBuilder sb2 = new StringBuilder(36);
                            sb2.append("Unknown field out type = ");
                            sb2.append(i);
                            throw new IllegalArgumentException(sb2.toString());
                    }
                } else if (fastJsonResponse$Field.e) {
                    sb.append("[");
                    BigInteger[] bigIntegerArr = null;
                    Parcel[] parcelArr = null;
                    boolean[] zArr = null;
                    BigDecimal[] bigDecimalArr = null;
                    double[] dArr = null;
                    float[] fArr = null;
                    long[] jArr = null;
                    switch (fastJsonResponse$Field.f3425d) {
                        case 0:
                            int[] V0 = a.V0(parcel, readInt);
                            int length = V0.length;
                            for (int i2 = 0; i2 < length; i2++) {
                                if (i2 != 0) {
                                    sb.append(",");
                                }
                                sb.append(Integer.toString(V0[i2]));
                            }
                            break;
                        case 1:
                            int L = a.L(parcel, readInt);
                            int dataPosition = parcel.dataPosition();
                            if (L != 0) {
                                int readInt2 = parcel.readInt();
                                bigIntegerArr = new BigInteger[readInt2];
                                for (int i3 = 0; i3 < readInt2; i3++) {
                                    bigIntegerArr[i3] = new BigInteger(parcel.createByteArray());
                                }
                                parcel.setDataPosition(dataPosition + L);
                            }
                            a.m0(sb, bigIntegerArr);
                            break;
                        case 2:
                            int L2 = a.L(parcel, readInt);
                            int dataPosition2 = parcel.dataPosition();
                            if (L2 != 0) {
                                jArr = parcel.createLongArray();
                                parcel.setDataPosition(dataPosition2 + L2);
                            }
                            int length2 = jArr.length;
                            for (int i4 = 0; i4 < length2; i4++) {
                                if (i4 != 0) {
                                    sb.append(",");
                                }
                                sb.append(Long.toString(jArr[i4]));
                            }
                            break;
                        case 3:
                            int L3 = a.L(parcel, readInt);
                            int dataPosition3 = parcel.dataPosition();
                            if (L3 != 0) {
                                fArr = parcel.createFloatArray();
                                parcel.setDataPosition(dataPosition3 + L3);
                            }
                            int length3 = fArr.length;
                            for (int i5 = 0; i5 < length3; i5++) {
                                if (i5 != 0) {
                                    sb.append(",");
                                }
                                sb.append(Float.toString(fArr[i5]));
                            }
                            break;
                        case 4:
                            int L4 = a.L(parcel, readInt);
                            int dataPosition4 = parcel.dataPosition();
                            if (L4 != 0) {
                                dArr = parcel.createDoubleArray();
                                parcel.setDataPosition(dataPosition4 + L4);
                            }
                            int length4 = dArr.length;
                            for (int i6 = 0; i6 < length4; i6++) {
                                if (i6 != 0) {
                                    sb.append(",");
                                }
                                sb.append(Double.toString(dArr[i6]));
                            }
                            break;
                        case 5:
                            int L5 = a.L(parcel, readInt);
                            int dataPosition5 = parcel.dataPosition();
                            if (L5 != 0) {
                                int readInt3 = parcel.readInt();
                                bigDecimalArr = new BigDecimal[readInt3];
                                for (int i7 = 0; i7 < readInt3; i7++) {
                                    bigDecimalArr[i7] = new BigDecimal(new BigInteger(parcel.createByteArray()), parcel.readInt());
                                }
                                parcel.setDataPosition(dataPosition5 + L5);
                            }
                            a.m0(sb, bigDecimalArr);
                            break;
                        case 6:
                            int L6 = a.L(parcel, readInt);
                            int dataPosition6 = parcel.dataPosition();
                            if (L6 != 0) {
                                zArr = parcel.createBooleanArray();
                                parcel.setDataPosition(dataPosition6 + L6);
                            }
                            int length5 = zArr.length;
                            for (int i8 = 0; i8 < length5; i8++) {
                                if (i8 != 0) {
                                    sb.append(",");
                                }
                                sb.append(Boolean.toString(zArr[i8]));
                            }
                            break;
                        case 7:
                            String[] u0 = a.u0(parcel, readInt);
                            int length6 = u0.length;
                            for (int i9 = 0; i9 < length6; i9++) {
                                if (i9 != 0) {
                                    sb.append(",");
                                }
                                sb.append("\"");
                                sb.append(u0[i9]);
                                sb.append("\"");
                            }
                            break;
                        case 8:
                        case 9:
                        case 10:
                            throw new UnsupportedOperationException("List of type BASE64, BASE64_URL_SAFE, or STRING_MAP is not supported");
                        case 11:
                            int L7 = a.L(parcel, readInt);
                            int dataPosition7 = parcel.dataPosition();
                            if (L7 != 0) {
                                int readInt4 = parcel.readInt();
                                Parcel[] parcelArr2 = new Parcel[readInt4];
                                for (int i10 = 0; i10 < readInt4; i10++) {
                                    int readInt5 = parcel.readInt();
                                    if (readInt5 != 0) {
                                        int dataPosition8 = parcel.dataPosition();
                                        Parcel obtain = Parcel.obtain();
                                        obtain.appendFrom(parcel, dataPosition8, readInt5);
                                        parcelArr2[i10] = obtain;
                                        parcel.setDataPosition(dataPosition8 + readInt5);
                                    } else {
                                        parcelArr2[i10] = null;
                                    }
                                }
                                parcel.setDataPosition(dataPosition7 + L7);
                                parcelArr = parcelArr2;
                            }
                            int length7 = parcelArr.length;
                            for (int i11 = 0; i11 < length7; i11++) {
                                if (i11 > 0) {
                                    sb.append(",");
                                }
                                parcelArr[i11].setDataPosition(0);
                                a.R(fastJsonResponse$Field.i);
                                a.R(fastJsonResponse$Field.j);
                                j(sb, fastJsonResponse$Field.j.h(fastJsonResponse$Field.i), parcelArr[i11]);
                            }
                            break;
                        default:
                            throw new IllegalStateException("Unknown field type out.");
                    }
                    sb.append("]");
                } else {
                    switch (fastJsonResponse$Field.f3425d) {
                        case 0:
                            sb.append(a.K0(parcel, readInt));
                            break;
                        case 1:
                            sb.append(a.M0(parcel, readInt));
                            break;
                        case 2:
                            sb.append(a.L0(parcel, readInt));
                            break;
                        case 3:
                            sb.append(a.N0(parcel, readInt));
                            break;
                        case 4:
                            sb.append(a.O0(parcel, readInt));
                            break;
                        case 5:
                            sb.append(a.P0(parcel, readInt));
                            break;
                        case 6:
                            sb.append(a.J0(parcel, readInt));
                            break;
                        case 7:
                            String Q0 = a.Q0(parcel, readInt);
                            sb.append("\"");
                            sb.append(c.a(Q0));
                            sb.append("\"");
                            break;
                        case 8:
                            byte[] T0 = a.T0(parcel, readInt);
                            sb.append("\"");
                            sb.append(a.V(T0));
                            sb.append("\"");
                            break;
                        case 9:
                            byte[] T02 = a.T0(parcel, readInt);
                            sb.append("\"");
                            sb.append(a.z0(T02));
                            sb.append("\"");
                            break;
                        case 10:
                            Bundle S02 = a.S0(parcel, readInt);
                            Set<String> keySet = S02.keySet();
                            keySet.size();
                            sb.append("{");
                            boolean z2 = true;
                            for (String str3 : keySet) {
                                if (!z2) {
                                    sb.append(",");
                                }
                                sb.append("\"");
                                sb.append(str3);
                                sb.append("\"");
                                sb.append(":");
                                sb.append("\"");
                                sb.append(c.a(S02.getString(str3)));
                                sb.append("\"");
                                z2 = false;
                            }
                            sb.append("}");
                            break;
                        case 11:
                            Parcel v0 = a.v0(parcel, readInt);
                            v0.setDataPosition(0);
                            a.R(fastJsonResponse$Field.i);
                            a.R(fastJsonResponse$Field.j);
                            j(sb, fastJsonResponse$Field.j.h(fastJsonResponse$Field.i), v0);
                            break;
                        default:
                            throw new IllegalStateException("Unknown field type out");
                    }
                    z = true;
                }
                z = true;
            }
        }
        if (parcel.dataPosition() == K) {
            sb.append('}');
            return;
        }
        StringBuilder sb3 = new StringBuilder(37);
        sb3.append("Overread allowed size end=");
        sb3.append(K);
        throw new zzbkx(sb3.toString(), parcel);
    }

    @Override // c.b.a.c.d.k.a.b
    public String toString() {
        a.S(this.f3438d, "Cannot convert to JSON on client side.");
        Parcel g = g();
        g.setDataPosition(0);
        StringBuilder sb = new StringBuilder(100);
        j(sb, this.f3438d.h(this.e), g);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        FieldMappingDictionary fieldMappingDictionary;
        int q0 = a.q0(parcel);
        a.s0(parcel, 1, this.f3435a);
        Parcel g = g();
        if (g != null) {
            int x0 = a.x0(parcel, 2);
            parcel.appendFrom(g, 0, g.dataSize());
            a.H0(parcel, x0);
        }
        int i2 = this.f3437c;
        if (i2 == 0) {
            fieldMappingDictionary = null;
        } else if (i2 == 1) {
            fieldMappingDictionary = this.f3438d;
        } else {
            if (i2 != 2) {
                int i3 = this.f3437c;
                StringBuilder sb = new StringBuilder(34);
                sb.append("Invalid creation type: ");
                sb.append(i3);
                throw new IllegalStateException(sb.toString());
            }
            fieldMappingDictionary = this.f3438d;
        }
        a.b0(parcel, 3, fieldMappingDictionary, i, false);
        a.H0(parcel, q0);
    }
}
