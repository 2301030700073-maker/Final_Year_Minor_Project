package com.amazonaws.util.json;

import com.amazonaws.util.json.GsonFactory;
import java.io.Reader;
import java.io.Writer;

/* loaded from: classes.dex */
public class JsonUtils {

    /* renamed from: do, reason: not valid java name */
    public static volatile AwsJsonFactory f9096do = new GsonFactory();

    /* renamed from: do, reason: not valid java name */
    public static AwsJsonReader m5215do(Reader reader) {
        if (f9096do == null) {
            throw new IllegalStateException("Json engine is unavailable.");
        }
        ((GsonFactory) f9096do).getClass();
        return new GsonFactory.GsonReader(reader);
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x006b, code lost:
    
        r1.mo5206new();
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0036, code lost:
    
        r0 = null;
     */
    /* renamed from: for, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.Map m5216for(java.io.BufferedReader r6) {
        /*
            com.amazonaws.util.json.AwsJsonReader r6 = m5215do(r6)
            r0 = r6
            com.amazonaws.util.json.GsonFactory$GsonReader r0 = (com.amazonaws.util.json.GsonFactory.GsonReader) r0     // Catch: java.io.IOException -> L1a
            pp r0 = r0.f9094do     // Catch: java.io.IOException -> L1a java.io.EOFException -> L35
            int r0 = r0.m7804class()     // Catch: java.io.IOException -> L1a java.io.EOFException -> L35
            int r0 = defpackage.C4122zt.m8819catch(r0)     // Catch: java.io.IOException -> L1a java.io.EOFException -> L35
            switch(r0) {
                case 0: goto L32;
                case 1: goto L2f;
                case 2: goto L2c;
                case 3: goto L29;
                case 4: goto L26;
                case 5: goto L23;
                case 6: goto L20;
                case 7: goto L1d;
                case 8: goto L17;
                case 9: goto L35;
                default: goto L14;
            }     // Catch: java.io.IOException -> L1a java.io.EOFException -> L35
        L14:
            com.amazonaws.util.json.AwsJsonToken r0 = com.amazonaws.util.json.AwsJsonToken.UNKNOWN     // Catch: java.io.IOException -> L1a java.io.EOFException -> L35
            goto L36
        L17:
            com.amazonaws.util.json.AwsJsonToken r0 = com.amazonaws.util.json.AwsJsonToken.VALUE_NULL     // Catch: java.io.IOException -> L1a java.io.EOFException -> L35
            goto L36
        L1a:
            r6 = move-exception
            goto L82
        L1d:
            com.amazonaws.util.json.AwsJsonToken r0 = com.amazonaws.util.json.AwsJsonToken.VALUE_BOOLEAN     // Catch: java.io.IOException -> L1a java.io.EOFException -> L35
            goto L36
        L20:
            com.amazonaws.util.json.AwsJsonToken r0 = com.amazonaws.util.json.AwsJsonToken.VALUE_NUMBER     // Catch: java.io.IOException -> L1a java.io.EOFException -> L35
            goto L36
        L23:
            com.amazonaws.util.json.AwsJsonToken r0 = com.amazonaws.util.json.AwsJsonToken.VALUE_STRING     // Catch: java.io.IOException -> L1a java.io.EOFException -> L35
            goto L36
        L26:
            com.amazonaws.util.json.AwsJsonToken r0 = com.amazonaws.util.json.AwsJsonToken.FIELD_NAME     // Catch: java.io.IOException -> L1a java.io.EOFException -> L35
            goto L36
        L29:
            com.amazonaws.util.json.AwsJsonToken r0 = com.amazonaws.util.json.AwsJsonToken.END_OBJECT     // Catch: java.io.IOException -> L1a java.io.EOFException -> L35
            goto L36
        L2c:
            com.amazonaws.util.json.AwsJsonToken r0 = com.amazonaws.util.json.AwsJsonToken.BEGIN_OBJECT     // Catch: java.io.IOException -> L1a java.io.EOFException -> L35
            goto L36
        L2f:
            com.amazonaws.util.json.AwsJsonToken r0 = com.amazonaws.util.json.AwsJsonToken.END_ARRAY     // Catch: java.io.IOException -> L1a java.io.EOFException -> L35
            goto L36
        L32:
            com.amazonaws.util.json.AwsJsonToken r0 = com.amazonaws.util.json.AwsJsonToken.BEGIN_ARRAY     // Catch: java.io.IOException -> L1a java.io.EOFException -> L35
            goto L36
        L35:
            r0 = 0
        L36:
            if (r0 != 0) goto L3b
            java.util.Map r6 = java.util.Collections.EMPTY_MAP     // Catch: java.io.IOException -> L1a
            return r6
        L3b:
            java.util.HashMap r0 = new java.util.HashMap     // Catch: java.io.IOException -> L1a
            r0.<init>()     // Catch: java.io.IOException -> L1a
            r1 = r6
            com.amazonaws.util.json.GsonFactory$GsonReader r1 = (com.amazonaws.util.json.GsonFactory.GsonReader) r1     // Catch: java.io.IOException -> L1a
            r1.mo5207try()     // Catch: java.io.IOException -> L1a
        L46:
            boolean r2 = r1.hasNext()     // Catch: java.io.IOException -> L1a
            if (r2 == 0) goto L77
            java.lang.String r2 = r1.mo5203do()     // Catch: java.io.IOException -> L1a
            r3 = r6
            com.amazonaws.util.json.GsonFactory$GsonReader r3 = (com.amazonaws.util.json.GsonFactory.GsonReader) r3     // Catch: java.io.IOException -> L1a
            pp r3 = r3.f9094do     // Catch: java.io.IOException -> L1a
            int r3 = r3.m7804class()     // Catch: java.io.IOException -> L1a
            r4 = 1
            boolean r5 = defpackage.C4122zt.m8822do(r4, r3)     // Catch: java.io.IOException -> L1a
            if (r5 != 0) goto L69
            r5 = 3
            boolean r3 = defpackage.C4122zt.m8822do(r5, r3)     // Catch: java.io.IOException -> L1a
            if (r3 == 0) goto L68
            goto L69
        L68:
            r4 = 0
        L69:
            if (r4 == 0) goto L6f
            r1.mo5206new()     // Catch: java.io.IOException -> L1a
            goto L46
        L6f:
            java.lang.String r3 = r1.mo5204for()     // Catch: java.io.IOException -> L1a
            r0.put(r2, r3)     // Catch: java.io.IOException -> L1a
            goto L46
        L77:
            r1.mo5205if()     // Catch: java.io.IOException -> L1a
            r1.close()     // Catch: java.io.IOException -> L1a
            java.util.Map r6 = j$.util.DesugarCollections.unmodifiableMap(r0)     // Catch: java.io.IOException -> L1a
            return r6
        L82:
            com.amazonaws.AmazonClientException r0 = new com.amazonaws.AmazonClientException
            java.lang.String r1 = "Unable to parse JSON String."
            r0.<init>(r1, r6)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amazonaws.util.json.JsonUtils.m5216for(java.io.BufferedReader):java.util.Map");
    }

    /* renamed from: if, reason: not valid java name */
    public static AwsJsonWriter m5217if(Writer writer) {
        if (f9096do == null) {
            throw new IllegalStateException("Json engine is unavailable.");
        }
        ((GsonFactory) f9096do).getClass();
        return new GsonFactory.GsonWriter(writer);
    }
}
