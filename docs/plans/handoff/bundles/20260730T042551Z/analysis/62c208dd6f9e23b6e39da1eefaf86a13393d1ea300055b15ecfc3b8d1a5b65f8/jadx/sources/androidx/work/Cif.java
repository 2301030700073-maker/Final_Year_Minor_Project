package androidx.work;

import defpackage.AbstractC0614Xq;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

/* renamed from: androidx.work.if, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cif {

    /* renamed from: do, reason: not valid java name */
    public static final Cif f8144do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final HashMap f8145do;

    /* renamed from: androidx.work.if$do, reason: invalid class name */
    public static final class Cdo {

        /* renamed from: do, reason: not valid java name */
        public final HashMap f8146do = new HashMap();

        /* renamed from: do, reason: not valid java name */
        public final void m4724do(HashMap hashMap) {
            for (Map.Entry entry : hashMap.entrySet()) {
                String str = (String) entry.getKey();
                Object value = entry.getValue();
                HashMap hashMap2 = this.f8146do;
                if (value == null) {
                    hashMap2.put(str, null);
                } else {
                    Class<?> cls = value.getClass();
                    if (cls == Boolean.class || cls == Byte.class || cls == Integer.class || cls == Long.class || cls == Float.class || cls == Double.class || cls == String.class || cls == Boolean[].class || cls == Byte[].class || cls == Integer[].class || cls == Long[].class || cls == Float[].class || cls == Double[].class || cls == String[].class) {
                        hashMap2.put(str, value);
                    } else {
                        int i = 0;
                        if (cls == boolean[].class) {
                            boolean[] zArr = (boolean[]) value;
                            Cif cif = Cif.f8144do;
                            Boolean[] boolArr = new Boolean[zArr.length];
                            while (i < zArr.length) {
                                boolArr[i] = Boolean.valueOf(zArr[i]);
                                i++;
                            }
                            hashMap2.put(str, boolArr);
                        } else if (cls == byte[].class) {
                            byte[] bArr = (byte[]) value;
                            Cif cif2 = Cif.f8144do;
                            Byte[] bArr2 = new Byte[bArr.length];
                            while (i < bArr.length) {
                                bArr2[i] = Byte.valueOf(bArr[i]);
                                i++;
                            }
                            hashMap2.put(str, bArr2);
                        } else if (cls == int[].class) {
                            int[] iArr = (int[]) value;
                            Cif cif3 = Cif.f8144do;
                            Integer[] numArr = new Integer[iArr.length];
                            while (i < iArr.length) {
                                numArr[i] = Integer.valueOf(iArr[i]);
                                i++;
                            }
                            hashMap2.put(str, numArr);
                        } else if (cls == long[].class) {
                            long[] jArr = (long[]) value;
                            Cif cif4 = Cif.f8144do;
                            Long[] lArr = new Long[jArr.length];
                            while (i < jArr.length) {
                                lArr[i] = Long.valueOf(jArr[i]);
                                i++;
                            }
                            hashMap2.put(str, lArr);
                        } else if (cls == float[].class) {
                            float[] fArr = (float[]) value;
                            Cif cif5 = Cif.f8144do;
                            Float[] fArr2 = new Float[fArr.length];
                            while (i < fArr.length) {
                                fArr2[i] = Float.valueOf(fArr[i]);
                                i++;
                            }
                            hashMap2.put(str, fArr2);
                        } else {
                            if (cls != double[].class) {
                                throw new IllegalArgumentException(String.format("Key %s has invalid type %s", str, cls));
                            }
                            double[] dArr = (double[]) value;
                            Cif cif6 = Cif.f8144do;
                            Double[] dArr2 = new Double[dArr.length];
                            while (i < dArr.length) {
                                dArr2[i] = Double.valueOf(dArr[i]);
                                i++;
                            }
                            hashMap2.put(str, dArr2);
                        }
                    }
                }
            }
        }
    }

    static {
        AbstractC0614Xq.m2870try("Data");
        Cif cif = new Cif(new HashMap());
        m4722for(cif);
        f8144do = cif;
    }

    public Cif() {
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't find top splitter block for handler:B:18:0x0044
        	at jadx.core.utils.BlockUtils.getTopSplitterForHandler(BlockUtils.java:1179)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.collectHandlerRegions(ExcHandlersRegionMaker.java:53)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.process(ExcHandlersRegionMaker.java:38)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:27)
        */
    /* renamed from: do, reason: not valid java name */
    public static androidx.work.Cif m4721do(byte[] r5) {
        /*
            int r0 = r5.length
            r1 = 10240(0x2800, float:1.4349E-41)
            if (r0 > r1) goto L4d
            java.util.HashMap r0 = new java.util.HashMap
            r0.<init>()
            java.io.ByteArrayInputStream r1 = new java.io.ByteArrayInputStream
            r1.<init>(r5)
            r5 = 0
            java.io.ObjectInputStream r2 = new java.io.ObjectInputStream     // Catch: java.lang.Throwable -> L34 java.lang.Throwable -> L3e
            r2.<init>(r1)     // Catch: java.lang.Throwable -> L34 java.lang.Throwable -> L3e
            int r5 = r2.readInt()     // Catch: java.lang.Throwable -> L2d java.lang.Throwable -> L31
        L19:
            if (r5 <= 0) goto L29
            java.lang.String r3 = r2.readUTF()     // Catch: java.lang.Throwable -> L2d java.lang.Throwable -> L31
            java.lang.Object r4 = r2.readObject()     // Catch: java.lang.Throwable -> L2d java.lang.Throwable -> L31
            r0.put(r3, r4)     // Catch: java.lang.Throwable -> L2d java.lang.Throwable -> L31
            int r5 = r5 + (-1)
            goto L19
        L29:
            r2.close()     // Catch: java.io.IOException -> L44
            goto L44
        L2d:
            r5 = move-exception
            r0 = r5
            r5 = r2
            goto L35
        L31:
            r5 = r2
            goto L3f
        L34:
            r0 = move-exception
        L35:
            if (r5 == 0) goto L3a
            r5.close()     // Catch: java.io.IOException -> L3a
        L3a:
            r1.close()     // Catch: java.io.IOException -> L3d
        L3d:
            throw r0
        L3e:
        L3f:
            if (r5 == 0) goto L44
            r5.close()     // Catch: java.io.IOException -> L44
        L44:
            r1.close()     // Catch: java.io.IOException -> L47
        L47:
            androidx.work.if r5 = new androidx.work.if
            r5.<init>(r0)
            return r5
        L4d:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r0 = "Data cannot occupy more than 10240 bytes when serialized"
            r5.<init>(r0)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.Cif.m4721do(byte[]):androidx.work.if");
    }

    /* renamed from: for, reason: not valid java name */
    public static byte[] m4722for(Cif cif) {
        ObjectOutputStream objectOutputStream;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        ObjectOutputStream objectOutputStream2 = null;
        try {
            try {
                objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
            } catch (Throwable th) {
                th = th;
                objectOutputStream = null;
            }
        } catch (IOException unused) {
        }
        try {
            objectOutputStream.writeInt(cif.f8145do.size());
            for (Map.Entry entry : cif.f8145do.entrySet()) {
                objectOutputStream.writeUTF((String) entry.getKey());
                objectOutputStream.writeObject(entry.getValue());
            }
            try {
                objectOutputStream.close();
            } catch (IOException unused2) {
            }
            try {
                byteArrayOutputStream.close();
            } catch (IOException unused3) {
            }
            if (byteArrayOutputStream.size() <= 10240) {
                return byteArrayOutputStream.toByteArray();
            }
            throw new IllegalStateException("Data cannot occupy more than 10240 bytes when serialized");
        } catch (IOException unused4) {
            objectOutputStream2 = objectOutputStream;
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            if (objectOutputStream2 != null) {
                try {
                    objectOutputStream2.close();
                } catch (IOException unused5) {
                }
            }
            try {
                byteArrayOutputStream.close();
            } catch (IOException unused6) {
            }
            return byteArray;
        } catch (Throwable th2) {
            th = th2;
            if (objectOutputStream != null) {
                try {
                    objectOutputStream.close();
                } catch (IOException unused7) {
                }
            }
            try {
                byteArrayOutputStream.close();
                throw th;
            } catch (IOException unused8) {
                throw th;
            }
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || Cif.class != obj.getClass()) {
            return false;
        }
        Cif cif = (Cif) obj;
        HashMap hashMap = this.f8145do;
        Set<String> keySet = hashMap.keySet();
        if (!keySet.equals(cif.f8145do.keySet())) {
            return false;
        }
        for (String str : keySet) {
            Object obj2 = hashMap.get(str);
            Object obj3 = cif.f8145do.get(str);
            if (!((obj2 == null || obj3 == null) ? obj2 == obj3 : ((obj2 instanceof Object[]) && (obj3 instanceof Object[])) ? Arrays.deepEquals((Object[]) obj2, (Object[]) obj3) : obj2.equals(obj3))) {
                return false;
            }
        }
        return true;
    }

    public final int hashCode() {
        return this.f8145do.hashCode() * 31;
    }

    /* renamed from: if, reason: not valid java name */
    public final String m4723if(String str) {
        Object obj = this.f8145do.get(str);
        if (obj instanceof String) {
            return (String) obj;
        }
        return null;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Data {");
        HashMap hashMap = this.f8145do;
        if (!hashMap.isEmpty()) {
            for (String str : hashMap.keySet()) {
                sb.append(str);
                sb.append(" : ");
                Object obj = hashMap.get(str);
                if (obj instanceof Object[]) {
                    sb.append(Arrays.toString((Object[]) obj));
                } else {
                    sb.append(obj);
                }
                sb.append(", ");
            }
        }
        sb.append("}");
        return sb.toString();
    }

    public Cif(Cif cif) {
        this.f8145do = new HashMap(cif.f8145do);
    }

    public Cif(HashMap hashMap) {
        this.f8145do = new HashMap(hashMap);
    }
}
