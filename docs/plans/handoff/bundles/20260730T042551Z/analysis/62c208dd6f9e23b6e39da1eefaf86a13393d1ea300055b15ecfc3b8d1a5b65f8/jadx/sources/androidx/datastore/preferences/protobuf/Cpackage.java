package androidx.datastore.preferences.protobuf;

import defpackage.AbstractC3370n6;
import defpackage.O2;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* renamed from: androidx.datastore.preferences.protobuf.package, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cpackage {
    /* renamed from: do, reason: not valid java name */
    public static final String m3949do(String str) {
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

    /* JADX WARN: Code restructure failed: missing block: B:68:0x01ad, code lost:
    
        if (((java.lang.Integer) r11).intValue() == 0) goto L83;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x0202, code lost:
    
        r7 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x01be, code lost:
    
        if (((java.lang.Float) r11).floatValue() == 0.0f) goto L83;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x01d0, code lost:
    
        if (((java.lang.Double) r11).doubleValue() == 0.0d) goto L83;
     */
    /* renamed from: for, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m3950for(androidx.datastore.preferences.protobuf.Cfinally r18, java.lang.StringBuilder r19, int r20) {
        /*
            Method dump skipped, instructions count: 620
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.preferences.protobuf.Cpackage.m3950for(androidx.datastore.preferences.protobuf.finally, java.lang.StringBuilder, int):void");
    }

    /* renamed from: if, reason: not valid java name */
    public static final void m3951if(StringBuilder sb, int i, String str, Object obj) {
        if (obj instanceof List) {
            Iterator it = ((List) obj).iterator();
            while (it.hasNext()) {
                m3951if(sb, i, str, it.next());
            }
            return;
        }
        if (obj instanceof Map) {
            Iterator it2 = ((Map) obj).entrySet().iterator();
            while (it2.hasNext()) {
                m3951if(sb, i, str, (Map.Entry) it2.next());
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
            AbstractC3370n6.Ctry ctry = AbstractC3370n6.f14461do;
            sb.append(O2.m1593try(new AbstractC3370n6.Ctry(((String) obj).getBytes(Cthrow.f6655do))));
            sb.append('\"');
            return;
        }
        if (obj instanceof AbstractC3370n6) {
            sb.append(": \"");
            sb.append(O2.m1593try((AbstractC3370n6) obj));
            sb.append('\"');
            return;
        }
        if (obj instanceof Cfinal) {
            sb.append(" {");
            m3950for((Cfinal) obj, sb, i + 2);
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
        m3951if(sb, i4, "key", entry.getKey());
        m3951if(sb, i4, "value", entry.getValue());
        sb.append("\n");
        while (i2 < i) {
            sb.append(' ');
            i2++;
        }
        sb.append("}");
    }
}
