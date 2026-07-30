package com.google.protobuf;

import defpackage.AbstractC3429o6;
import defpackage.C0315Kc;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* renamed from: com.google.protobuf.switch, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cswitch {

    /* renamed from: do, reason: not valid java name */
    public static final char[] f12105do;

    static {
        char[] cArr = new char[80];
        f12105do = cArr;
        Arrays.fill(cArr, ' ');
    }

    /* renamed from: do, reason: not valid java name */
    public static void m6290do(int i, StringBuilder sb) {
        while (i > 0) {
            int i2 = 80;
            if (i <= 80) {
                i2 = i;
            }
            sb.append(f12105do, 0, i2);
            i -= i2;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:84:0x0198, code lost:
    
        if (((java.lang.Integer) r7).intValue() == 0) goto L99;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x01f4, code lost:
    
        r10 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x01aa, code lost:
    
        if (java.lang.Float.floatToRawIntBits(((java.lang.Float) r7).floatValue()) == 0) goto L99;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x01c0, code lost:
    
        if (java.lang.Double.doubleToRawLongBits(((java.lang.Double) r7).doubleValue()) == 0) goto L99;
     */
    /* renamed from: for, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m6291for(com.google.protobuf.Cstatic r20, java.lang.StringBuilder r21, int r22) {
        /*
            Method dump skipped, instructions count: 603
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.Cswitch.m6291for(com.google.protobuf.static, java.lang.StringBuilder, int):void");
    }

    /* renamed from: if, reason: not valid java name */
    public static void m6292if(StringBuilder sb, int i, String str, Object obj) {
        if (obj instanceof List) {
            Iterator it = ((List) obj).iterator();
            while (it.hasNext()) {
                m6292if(sb, i, str, it.next());
            }
            return;
        }
        if (obj instanceof Map) {
            Iterator it2 = ((Map) obj).entrySet().iterator();
            while (it2.hasNext()) {
                m6292if(sb, i, str, (Map.Entry) it2.next());
            }
            return;
        }
        sb.append('\n');
        m6290do(i, sb);
        if (!str.isEmpty()) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(Character.toLowerCase(str.charAt(0)));
            for (int i2 = 1; i2 < str.length(); i2++) {
                char charAt = str.charAt(i2);
                if (Character.isUpperCase(charAt)) {
                    sb2.append("_");
                }
                sb2.append(Character.toLowerCase(charAt));
            }
            str = sb2.toString();
        }
        sb.append(str);
        if (obj instanceof String) {
            sb.append(": \"");
            AbstractC3429o6.Ctry ctry = AbstractC3429o6.f14685do;
            sb.append(C0315Kc.m1171native(new AbstractC3429o6.Ctry(((String) obj).getBytes(Ccatch.f12045do))));
            sb.append('\"');
            return;
        }
        if (obj instanceof AbstractC3429o6) {
            sb.append(": \"");
            sb.append(C0315Kc.m1171native((AbstractC3429o6) obj));
            sb.append('\"');
            return;
        }
        if (obj instanceof Cthis) {
            sb.append(" {");
            m6291for((Cthis) obj, sb, i + 2);
            sb.append("\n");
            m6290do(i, sb);
            sb.append("}");
            return;
        }
        if (!(obj instanceof Map.Entry)) {
            sb.append(": ");
            sb.append(obj);
            return;
        }
        sb.append(" {");
        Map.Entry entry = (Map.Entry) obj;
        int i3 = i + 2;
        m6292if(sb, i3, "key", entry.getKey());
        m6292if(sb, i3, "value", entry.getValue());
        sb.append("\n");
        m6290do(i, sb);
        sb.append("}");
    }
}
