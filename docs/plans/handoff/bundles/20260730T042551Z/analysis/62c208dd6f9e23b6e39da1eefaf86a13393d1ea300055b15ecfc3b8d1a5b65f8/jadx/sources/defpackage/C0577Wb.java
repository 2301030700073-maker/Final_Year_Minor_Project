package defpackage;

import android.util.JsonReader;
import com.facebook.appevents.integrity.IntegrityManager;
import com.facebook.internal.FacebookRequestErrorClassification;
import defpackage.C3838v3;
import defpackage.E3;
import defpackage.L3;
import defpackage.M3;
import defpackage.N3;
import j$.util.DesugarCollections;
import java.io.IOException;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.List;

/* renamed from: Wb, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0577Wb {

    /* renamed from: do, reason: not valid java name */
    public static final C3293lp f4389do;

    /* renamed from: Wb$do, reason: invalid class name */
    public interface Cdo<T> {
        /* renamed from: else */
        T mo2065else(JsonReader jsonReader);
    }

    static {
        C3352mp c3352mp = new C3352mp();
        S2.f3287do.m2105do(c3352mp);
        c3352mp.f14399do = true;
        f4389do = new C3293lp(c3352mp);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0048, code lost:
    
        if (r0.equals("reason") == false) goto L27;
     */
    /* renamed from: case, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static defpackage.I3 m2735case(android.util.JsonReader r9) {
        /*
            r9.beginObject()
            r0 = 0
            r1 = 0
            r2 = 0
            r4 = r0
            r5 = r4
            r6 = r5
            r7 = r6
            r8 = 0
        Lb:
            boolean r0 = r9.hasNext()
            r2 = 1
            if (r0 == 0) goto L95
            java.lang.String r0 = r9.nextName()
            r0.getClass()
            int r3 = r0.hashCode()
            switch(r3) {
                case -1266514778: goto L4b;
                case -934964668: goto L42;
                case 3575610: goto L37;
                case 91997906: goto L2c;
                case 581754413: goto L21;
                default: goto L20;
            }
        L20:
            goto L56
        L21:
            java.lang.String r2 = "overflowCount"
            boolean r0 = r0.equals(r2)
            if (r0 != 0) goto L2a
            goto L56
        L2a:
            r2 = 4
            goto L57
        L2c:
            java.lang.String r2 = "causedBy"
            boolean r0 = r0.equals(r2)
            if (r0 != 0) goto L35
            goto L56
        L35:
            r2 = 3
            goto L57
        L37:
            java.lang.String r2 = "type"
            boolean r0 = r0.equals(r2)
            if (r0 != 0) goto L40
            goto L56
        L40:
            r2 = 2
            goto L57
        L42:
            java.lang.String r3 = "reason"
            boolean r0 = r0.equals(r3)
            if (r0 != 0) goto L57
            goto L56
        L4b:
            java.lang.String r2 = "frames"
            boolean r0 = r0.equals(r2)
            if (r0 != 0) goto L54
            goto L56
        L54:
            r2 = 0
            goto L57
        L56:
            r2 = -1
        L57:
            switch(r2) {
                case 0: goto L7f;
                case 1: goto L7a;
                case 2: goto L6b;
                case 3: goto L66;
                case 4: goto L5e;
                default: goto L5a;
            }
        L5a:
            r9.skipValue()
            goto Lb
        L5e:
            int r8 = r9.nextInt()
            r0 = r1 | 1
            byte r1 = (byte) r0
            goto Lb
        L66:
            I3 r7 = m2735case(r9)
            goto Lb
        L6b:
            java.lang.String r4 = r9.nextString()
            if (r4 == 0) goto L72
            goto Lb
        L72:
            java.lang.NullPointerException r9 = new java.lang.NullPointerException
            java.lang.String r0 = "Null type"
            r9.<init>(r0)
            throw r9
        L7a:
            java.lang.String r5 = r9.nextString()
            goto Lb
        L7f:
            nI r0 = new nI
            r2 = 5
            r0.<init>(r2)
            java.util.List r6 = m2741new(r9, r0)
            if (r6 == 0) goto L8d
            goto Lb
        L8d:
            java.lang.NullPointerException r9 = new java.lang.NullPointerException
            java.lang.String r0 = "Null frames"
            r9.<init>(r0)
            throw r9
        L95:
            r9.endObject()
            if (r1 != r2) goto La6
            if (r4 == 0) goto La6
            if (r6 != 0) goto L9f
            goto La6
        L9f:
            I3 r9 = new I3
            r3 = r9
            r3.<init>(r4, r5, r6, r7, r8)
            return r9
        La6:
            java.lang.StringBuilder r9 = new java.lang.StringBuilder
            r9.<init>()
            if (r4 != 0) goto Lb2
            java.lang.String r0 = " type"
            r9.append(r0)
        Lb2:
            if (r6 != 0) goto Lb9
            java.lang.String r0 = " frames"
            r9.append(r0)
        Lb9:
            r0 = r2 & r1
            if (r0 != 0) goto Lc2
            java.lang.String r0 = " overflowCount"
            r9.append(r0)
        Lc2:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r1 = "Missing required properties:"
            java.lang.String r9 = defpackage.V1.m2502goto(r1, r9)
            r0.<init>(r9)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C0577Wb.m2735case(android.util.JsonReader):I3");
    }

    /* renamed from: do, reason: not valid java name */
    public static L3 m2736do(JsonReader jsonReader) {
        L3.Cdo cdo = new L3.Cdo();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.getClass();
            switch (nextName) {
                case "offset":
                    cdo.f1920if = jsonReader.nextLong();
                    cdo.f1916do = (byte) (cdo.f1916do | 2);
                    break;
                case "symbol":
                    String nextString = jsonReader.nextString();
                    if (nextString == null) {
                        throw new NullPointerException("Null symbol");
                    }
                    cdo.f1919do = nextString;
                    break;
                case "pc":
                    cdo.f1918do = jsonReader.nextLong();
                    cdo.f1916do = (byte) (cdo.f1916do | 1);
                    break;
                case "file":
                    cdo.f1921if = jsonReader.nextString();
                    break;
                case "importance":
                    cdo.f1917do = jsonReader.nextInt();
                    cdo.f1916do = (byte) (cdo.f1916do | 4);
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return cdo.m1263do();
    }

    /* renamed from: else, reason: not valid java name */
    public static M3 m2737else(JsonReader jsonReader) {
        M3.Cdo cdo = new M3.Cdo();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.getClass();
            switch (nextName) {
                case "pid":
                    cdo.f2090do = jsonReader.nextInt();
                    cdo.f2089do = (byte) (cdo.f2089do | 1);
                    break;
                case "processName":
                    String nextString = jsonReader.nextString();
                    if (nextString == null) {
                        throw new NullPointerException("Null processName");
                    }
                    cdo.f2091do = nextString;
                    break;
                case "defaultProcess":
                    cdo.f2092do = jsonReader.nextBoolean();
                    cdo.f2089do = (byte) (cdo.f2089do | 4);
                    break;
                case "importance":
                    cdo.f2093if = jsonReader.nextInt();
                    cdo.f2089do = (byte) (cdo.f2089do | 2);
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return cdo.m1390do();
    }

    /* renamed from: for, reason: not valid java name */
    public static C3838v3 m2738for(JsonReader jsonReader) {
        C3838v3.Cdo cdo = new C3838v3.Cdo();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.getClass();
            switch (nextName) {
                case "buildIdMappingForArch":
                    cdo.f15998do = m2741new(jsonReader, new C3580qh(4));
                    break;
                case "pid":
                    cdo.f15995do = jsonReader.nextInt();
                    cdo.f15994do = (byte) (cdo.f15994do | 1);
                    break;
                case "pss":
                    cdo.f15996do = jsonReader.nextLong();
                    cdo.f15994do = (byte) (cdo.f15994do | 8);
                    break;
                case "rss":
                    cdo.f16002if = jsonReader.nextLong();
                    cdo.f15994do = (byte) (cdo.f15994do | 16);
                    break;
                case "timestamp":
                    cdo.f16000for = jsonReader.nextLong();
                    cdo.f15994do = (byte) (cdo.f15994do | 32);
                    break;
                case "processName":
                    String nextString = jsonReader.nextString();
                    if (nextString == null) {
                        throw new NullPointerException("Null processName");
                    }
                    cdo.f15997do = nextString;
                    break;
                case "reasonCode":
                    cdo.f16001if = jsonReader.nextInt();
                    cdo.f15994do = (byte) (cdo.f15994do | 2);
                    break;
                case "traceFile":
                    cdo.f16003if = jsonReader.nextString();
                    break;
                case "importance":
                    cdo.f15999for = jsonReader.nextInt();
                    cdo.f15994do = (byte) (cdo.f15994do | 4);
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return cdo.m8424do();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x021d, code lost:
    
        if (r3.equals("installationUuid") == false) goto L170;
     */
    /* renamed from: goto, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static defpackage.C3720t3 m2739goto(android.util.JsonReader r23) {
        /*
            Method dump skipped, instructions count: 1732
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C0577Wb.m2739goto(android.util.JsonReader):t3");
    }

    /* renamed from: if, reason: not valid java name */
    public static C3956x3 m2740if(JsonReader jsonReader) {
        jsonReader.beginObject();
        String str = null;
        String str2 = null;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.getClass();
            if (nextName.equals("key")) {
                str = jsonReader.nextString();
                if (str == null) {
                    throw new NullPointerException("Null key");
                }
            } else if (nextName.equals("value")) {
                str2 = jsonReader.nextString();
                if (str2 == null) {
                    throw new NullPointerException("Null value");
                }
            } else {
                jsonReader.skipValue();
            }
        }
        jsonReader.endObject();
        if (str != null && str2 != null) {
            return new C3956x3(str, str2);
        }
        StringBuilder sb = new StringBuilder();
        if (str == null) {
            sb.append(" key");
        }
        if (str2 == null) {
            sb.append(" value");
        }
        throw new IllegalStateException(V1.m2502goto("Missing required properties:", sb));
    }

    /* renamed from: new, reason: not valid java name */
    public static <T> List<T> m2741new(JsonReader jsonReader, Cdo<T> cdo) {
        ArrayList arrayList = new ArrayList();
        jsonReader.beginArray();
        while (jsonReader.hasNext()) {
            arrayList.add(cdo.mo2065else(jsonReader));
        }
        jsonReader.endArray();
        return DesugarCollections.unmodifiableList(arrayList);
    }

    /* renamed from: this, reason: not valid java name */
    public static C3720t3 m2742this(String str) {
        try {
            JsonReader jsonReader = new JsonReader(new StringReader(str));
            try {
                C3720t3 m2739goto = m2739goto(jsonReader);
                jsonReader.close();
                return m2739goto;
            } finally {
            }
        } catch (IllegalStateException e) {
            throw new IOException(e);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: try, reason: not valid java name */
    public static E3 m2743try(JsonReader jsonReader) {
        char c;
        E3.Cdo cdo;
        char c2;
        char c3;
        E3.Cdo cdo2;
        int i;
        E3.Cdo cdo3;
        char c4;
        E3.Cdo cdo4 = new E3.Cdo();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.getClass();
            int i2 = 3;
            int i3 = 4;
            int i4 = 2;
            int i5 = 1;
            switch (nextName.hashCode()) {
                case -1335157162:
                    if (nextName.equals("device")) {
                        c = 0;
                        break;
                    }
                    c = 65535;
                    break;
                case -259312414:
                    if (nextName.equals("rollouts")) {
                        c = 1;
                        break;
                    }
                    c = 65535;
                    break;
                case 96801:
                    if (nextName.equals("app")) {
                        c = 2;
                        break;
                    }
                    c = 65535;
                    break;
                case 107332:
                    if (nextName.equals("log")) {
                        c = 3;
                        break;
                    }
                    c = 65535;
                    break;
                case 3575610:
                    if (nextName.equals("type")) {
                        c = 4;
                        break;
                    }
                    c = 65535;
                    break;
                case 55126294:
                    if (nextName.equals("timestamp")) {
                        c = 5;
                        break;
                    }
                    c = 65535;
                    break;
                default:
                    c = 65535;
                    break;
            }
            if (c == 0) {
                cdo = cdo4;
                N3.Cdo cdo5 = new N3.Cdo();
                jsonReader.beginObject();
                while (jsonReader.hasNext()) {
                    String nextName2 = jsonReader.nextName();
                    nextName2.getClass();
                    switch (nextName2.hashCode()) {
                        case -1708606089:
                            if (nextName2.equals("batteryLevel")) {
                                c2 = 0;
                                break;
                            }
                            c2 = 65535;
                            break;
                        case -1455558134:
                            if (nextName2.equals("batteryVelocity")) {
                                c2 = 1;
                                break;
                            }
                            c2 = 65535;
                            break;
                        case -1439500848:
                            if (nextName2.equals("orientation")) {
                                c2 = 2;
                                break;
                            }
                            c2 = 65535;
                            break;
                        case 279795450:
                            if (nextName2.equals("diskUsed")) {
                                c2 = 3;
                                break;
                            }
                            c2 = 65535;
                            break;
                        case 976541947:
                            if (nextName2.equals("ramUsed")) {
                                c2 = 4;
                                break;
                            }
                            c2 = 65535;
                            break;
                        case 1516795582:
                            if (nextName2.equals("proximityOn")) {
                                c2 = 5;
                                break;
                            }
                            c2 = 65535;
                            break;
                        default:
                            c2 = 65535;
                            break;
                    }
                    if (c2 == 0) {
                        cdo5.f2295do = Double.valueOf(jsonReader.nextDouble());
                    } else if (c2 == 1) {
                        cdo5.f2293do = jsonReader.nextInt();
                        cdo5.f2292do = (byte) (cdo5.f2292do | 1);
                    } else if (c2 == 2) {
                        cdo5.f2297if = jsonReader.nextInt();
                        cdo5.f2292do = (byte) (cdo5.f2292do | 4);
                    } else if (c2 == 3) {
                        cdo5.f2298if = jsonReader.nextLong();
                        cdo5.f2292do = (byte) (cdo5.f2292do | 16);
                    } else if (c2 == 4) {
                        cdo5.f2294do = jsonReader.nextLong();
                        cdo5.f2292do = (byte) (cdo5.f2292do | 8);
                    } else if (c2 != 5) {
                        jsonReader.skipValue();
                    } else {
                        cdo5.f2296do = jsonReader.nextBoolean();
                        cdo5.f2292do = (byte) (cdo5.f2292do | 2);
                    }
                }
                jsonReader.endObject();
                cdo.f726do = cdo5.m1492do();
            } else if (c == 1) {
                cdo = cdo4;
                jsonReader.beginObject();
                List list = null;
                while (jsonReader.hasNext()) {
                    String nextName3 = jsonReader.nextName();
                    nextName3.getClass();
                    if (nextName3.equals("assignments")) {
                        list = m2741new(jsonReader, new C3441oI(4));
                        if (list == null) {
                            throw new NullPointerException("Null rolloutAssignments");
                        }
                    } else {
                        jsonReader.skipValue();
                    }
                }
                jsonReader.endObject();
                if (list == null) {
                    throw new IllegalStateException("Missing required properties: rolloutAssignments");
                }
                cdo.f724do = new R3(list);
            } else if (c == 2) {
                jsonReader.beginObject();
                byte b = 0;
                Boolean bool = null;
                M3 m3 = null;
                List list2 = null;
                int i6 = 0;
                G3 g3 = null;
                List list3 = null;
                List list4 = null;
                while (jsonReader.hasNext()) {
                    String nextName4 = jsonReader.nextName();
                    nextName4.getClass();
                    switch (nextName4.hashCode()) {
                        case -1405314732:
                            if (nextName4.equals("appProcessDetails")) {
                                c3 = 0;
                                break;
                            }
                            c3 = 65535;
                            break;
                        case -1332194002:
                            if (nextName4.equals("background")) {
                                c3 = 1;
                                break;
                            }
                            c3 = 65535;
                            break;
                        case -1090974952:
                            if (nextName4.equals("execution")) {
                                c3 = 2;
                                break;
                            }
                            c3 = 65535;
                            break;
                        case -80231855:
                            if (nextName4.equals("internalKeys")) {
                                c3 = 3;
                                break;
                            }
                            c3 = 65535;
                            break;
                        case 555169704:
                            if (nextName4.equals("customAttributes")) {
                                c3 = 4;
                                break;
                            }
                            c3 = 65535;
                            break;
                        case 928737948:
                            if (nextName4.equals("uiOrientation")) {
                                c3 = 5;
                                break;
                            }
                            c3 = 65535;
                            break;
                        case 1847730860:
                            if (nextName4.equals("currentProcessDetails")) {
                                c3 = 6;
                                break;
                            }
                            c3 = 65535;
                            break;
                        default:
                            c3 = 65535;
                            break;
                    }
                    switch (c3) {
                        case 0:
                            cdo2 = cdo4;
                            ArrayList arrayList = new ArrayList();
                            jsonReader.beginArray();
                            while (jsonReader.hasNext()) {
                                arrayList.add(m2737else(jsonReader));
                            }
                            jsonReader.endArray();
                            list2 = DesugarCollections.unmodifiableList(arrayList);
                            i2 = 3;
                            i3 = 4;
                            i4 = 2;
                            cdo4 = cdo2;
                            i5 = 1;
                        case 1:
                            cdo2 = cdo4;
                            bool = Boolean.valueOf(jsonReader.nextBoolean());
                            i2 = 3;
                            i3 = 4;
                            i4 = 2;
                            cdo4 = cdo2;
                            i5 = 1;
                        case 2:
                            jsonReader.beginObject();
                            List list5 = null;
                            I3 i32 = null;
                            C3838v3 c3838v3 = null;
                            J3 j3 = null;
                            List list6 = null;
                            while (jsonReader.hasNext()) {
                                String nextName5 = jsonReader.nextName();
                                nextName5.getClass();
                                switch (nextName5.hashCode()) {
                                    case -1375141843:
                                        if (nextName5.equals("appExitInfo")) {
                                            i = 0;
                                            break;
                                        }
                                        i = -1;
                                        break;
                                    case -1337936983:
                                        if (nextName5.equals("threads")) {
                                            i = 1;
                                            break;
                                        }
                                        i = -1;
                                        break;
                                    case -902467928:
                                        if (nextName5.equals("signal")) {
                                            i = 2;
                                            break;
                                        }
                                        i = -1;
                                        break;
                                    case 937615455:
                                        if (nextName5.equals("binaries")) {
                                            i = 3;
                                            break;
                                        }
                                        i = -1;
                                        break;
                                    case 1481625679:
                                        if (nextName5.equals("exception")) {
                                            i = 4;
                                            break;
                                        }
                                        i = -1;
                                        break;
                                    default:
                                        i = -1;
                                        break;
                                }
                                if (i == 0) {
                                    cdo3 = cdo4;
                                    c3838v3 = m2738for(jsonReader);
                                } else if (i == i5) {
                                    cdo3 = cdo4;
                                    list5 = m2741new(jsonReader, new Cpackage(7));
                                } else if (i == i4) {
                                    jsonReader.beginObject();
                                    long j = 0;
                                    String str = null;
                                    byte b2 = 0;
                                    String str2 = null;
                                    while (jsonReader.hasNext()) {
                                        String nextName6 = jsonReader.nextName();
                                        nextName6.getClass();
                                        int hashCode = nextName6.hashCode();
                                        E3.Cdo cdo6 = cdo4;
                                        if (hashCode == -1147692044) {
                                            if (nextName6.equals(IntegrityManager.INTEGRITY_TYPE_ADDRESS)) {
                                                c4 = 0;
                                            }
                                            c4 = 65535;
                                        } else if (hashCode != 3059181) {
                                            if (hashCode == 3373707 && nextName6.equals(FacebookRequestErrorClassification.KEY_NAME)) {
                                                c4 = 2;
                                            }
                                            c4 = 65535;
                                        } else {
                                            if (nextName6.equals("code")) {
                                                c4 = 1;
                                            }
                                            c4 = 65535;
                                        }
                                        if (c4 == 0) {
                                            j = jsonReader.nextLong();
                                            b2 = (byte) (b2 | 1);
                                        } else if (c4 == 1) {
                                            String nextString = jsonReader.nextString();
                                            if (nextString == null) {
                                                throw new NullPointerException("Null code");
                                            }
                                            str = nextString;
                                        } else if (c4 != 2) {
                                            jsonReader.skipValue();
                                        } else {
                                            String nextString2 = jsonReader.nextString();
                                            if (nextString2 == null) {
                                                throw new NullPointerException("Null name");
                                            }
                                            str2 = nextString2;
                                        }
                                        cdo4 = cdo6;
                                    }
                                    cdo3 = cdo4;
                                    jsonReader.endObject();
                                    if (b2 != 1 || str2 == null || str == null) {
                                        StringBuilder sb = new StringBuilder();
                                        if (str2 == null) {
                                            sb.append(" name");
                                        }
                                        if (str == null) {
                                            sb.append(" code");
                                        }
                                        if ((1 & b2) == 0) {
                                            sb.append(" address");
                                        }
                                        throw new IllegalStateException(V1.m2502goto("Missing required properties:", sb));
                                    }
                                    j3 = new J3(str2, str, j);
                                } else if (i == i2) {
                                    list6 = m2741new(jsonReader, new C2850h7(i2));
                                    if (list6 == null) {
                                        throw new NullPointerException("Null binaries");
                                    }
                                } else if (i != i3) {
                                    jsonReader.skipValue();
                                } else {
                                    i32 = m2735case(jsonReader);
                                }
                                i2 = 3;
                                i3 = 4;
                                i4 = 2;
                                cdo4 = cdo3;
                                i5 = 1;
                            }
                            cdo2 = cdo4;
                            jsonReader.endObject();
                            if (j3 == null || list6 == null) {
                                StringBuilder sb2 = new StringBuilder();
                                if (j3 == null) {
                                    sb2.append(" signal");
                                }
                                if (list6 == null) {
                                    sb2.append(" binaries");
                                }
                                throw new IllegalStateException(V1.m2502goto("Missing required properties:", sb2));
                            }
                            g3 = new G3(list5, i32, c3838v3, j3, list6);
                            i2 = 3;
                            i3 = 4;
                            i4 = 2;
                            cdo4 = cdo2;
                            i5 = 1;
                            break;
                        case 3:
                            ArrayList arrayList2 = new ArrayList();
                            jsonReader.beginArray();
                            while (jsonReader.hasNext()) {
                                arrayList2.add(m2740if(jsonReader));
                            }
                            jsonReader.endArray();
                            list4 = DesugarCollections.unmodifiableList(arrayList2);
                        case 4:
                            ArrayList arrayList3 = new ArrayList();
                            jsonReader.beginArray();
                            while (jsonReader.hasNext()) {
                                arrayList3.add(m2740if(jsonReader));
                            }
                            jsonReader.endArray();
                            list3 = DesugarCollections.unmodifiableList(arrayList3);
                        case 5:
                            i6 = jsonReader.nextInt();
                            b = (byte) (b | 1);
                        case 6:
                            m3 = m2737else(jsonReader);
                        default:
                            cdo2 = cdo4;
                            jsonReader.skipValue();
                            i2 = 3;
                            i3 = 4;
                            i4 = 2;
                            cdo4 = cdo2;
                            i5 = 1;
                    }
                }
                E3.Cdo cdo7 = cdo4;
                jsonReader.endObject();
                if (b != 1 || g3 == null) {
                    StringBuilder sb3 = new StringBuilder();
                    if (g3 == null) {
                        sb3.append(" execution");
                    }
                    if ((1 & b) == 0) {
                        sb3.append(" uiOrientation");
                    }
                    throw new IllegalStateException(V1.m2502goto("Missing required properties:", sb3));
                }
                cdo = cdo7;
                cdo.f725do = new F3(g3, list3, list4, bool, m3, list2, i6);
            } else if (c == 3) {
                jsonReader.beginObject();
                String str3 = null;
                while (jsonReader.hasNext()) {
                    if (jsonReader.nextName().equals("content")) {
                        str3 = jsonReader.nextString();
                        if (str3 == null) {
                            throw new NullPointerException("Null content");
                        }
                    } else {
                        jsonReader.skipValue();
                    }
                }
                jsonReader.endObject();
                if (str3 == null) {
                    throw new IllegalStateException("Missing required properties: content");
                }
                cdo4.f727do = new O3(str3);
            } else if (c == 4) {
                String nextString3 = jsonReader.nextString();
                if (nextString3 == null) {
                    throw new NullPointerException("Null type");
                }
                cdo4.f728do = nextString3;
            } else if (c != 5) {
                jsonReader.skipValue();
            } else {
                cdo4.f723do = jsonReader.nextLong();
                cdo4.f722do = (byte) (cdo4.f722do | 1);
            }
            cdo4 = cdo;
        }
        jsonReader.endObject();
        return cdo4.m432do();
    }
}
