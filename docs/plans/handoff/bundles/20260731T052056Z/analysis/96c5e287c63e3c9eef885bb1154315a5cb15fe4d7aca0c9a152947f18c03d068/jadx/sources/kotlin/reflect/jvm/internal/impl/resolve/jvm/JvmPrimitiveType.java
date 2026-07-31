package kotlin.reflect.jvm.internal.impl.resolve.jvm;

import java.util.EnumMap;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import kotlin.reflect.jvm.internal.impl.builtins.PrimitiveType;
import kotlin.reflect.jvm.internal.impl.name.FqName;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public enum JvmPrimitiveType {
    BOOLEAN(PrimitiveType.BOOLEAN, "boolean", "Z", "java.lang.Boolean"),
    CHAR(PrimitiveType.CHAR, "char", "C", "java.lang.Character"),
    BYTE(PrimitiveType.BYTE, "byte", "B", "java.lang.Byte"),
    SHORT(PrimitiveType.SHORT, "short", "S", "java.lang.Short"),
    INT(PrimitiveType.INT, "int", "I", "java.lang.Integer"),
    FLOAT(PrimitiveType.FLOAT, "float", "F", "java.lang.Float"),
    LONG(PrimitiveType.LONG, "long", "J", "java.lang.Long"),
    DOUBLE(PrimitiveType.DOUBLE, "double", "D", "java.lang.Double");

    private final String desc;
    private final String name;
    private final PrimitiveType primitiveType;
    private final FqName wrapperFqName;
    private static final Set<FqName> WRAPPERS_CLASS_NAMES = new HashSet();
    private static final Map<String, JvmPrimitiveType> TYPE_BY_NAME = new HashMap();
    private static final Map<PrimitiveType, JvmPrimitiveType> TYPE_BY_PRIMITIVE_TYPE = new EnumMap(PrimitiveType.class);
    private static final Map<String, JvmPrimitiveType> TYPE_BY_DESC = new HashMap();

    /* JADX WARN: Removed duplicated region for block: B:12:0x0020  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0047 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x007f A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x002b  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x003b  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x003e  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0015  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ void $$$reportNull$$$0(int r7) {
        /*
            r0 = 4
            r1 = 2
            if (r7 == r1) goto Lc
            if (r7 == r0) goto Lc
            switch(r7) {
                case 10: goto Lc;
                case 11: goto Lc;
                case 12: goto Lc;
                case 13: goto Lc;
                default: goto L9;
            }
        L9:
            java.lang.String r2 = "Argument for @NotNull parameter '%s' of %s.%s must not be null"
            goto Le
        Lc:
            java.lang.String r2 = "@NotNull method %s.%s must not return null"
        Le:
            if (r7 == r1) goto L17
            if (r7 == r0) goto L17
            switch(r7) {
                case 10: goto L17;
                case 11: goto L17;
                case 12: goto L17;
                case 13: goto L17;
                default: goto L15;
            }
        L15:
            r3 = 3
            goto L18
        L17:
            r3 = r1
        L18:
            java.lang.Object[] r3 = new java.lang.Object[r3]
            java.lang.String r4 = "kotlin/reflect/jvm/internal/impl/resolve/jvm/JvmPrimitiveType"
            r5 = 0
            switch(r7) {
                case 1: goto L3e;
                case 2: goto L3b;
                case 3: goto L35;
                case 4: goto L3b;
                case 5: goto L30;
                case 6: goto L2b;
                case 7: goto L3e;
                case 8: goto L30;
                case 9: goto L25;
                case 10: goto L3b;
                case 11: goto L3b;
                case 12: goto L3b;
                case 13: goto L3b;
                default: goto L20;
            }
        L20:
            java.lang.String r6 = "className"
            r3[r5] = r6
            goto L42
        L25:
            java.lang.String r6 = "wrapperClassName"
            r3[r5] = r6
            goto L42
        L2b:
            java.lang.String r6 = "primitiveType"
            r3[r5] = r6
            goto L42
        L30:
            java.lang.String r6 = "desc"
            r3[r5] = r6
            goto L42
        L35:
            java.lang.String r6 = "type"
            r3[r5] = r6
            goto L42
        L3b:
            r3[r5] = r4
            goto L42
        L3e:
            java.lang.String r6 = "name"
            r3[r5] = r6
        L42:
            java.lang.String r5 = "get"
            r6 = 1
            if (r7 == r1) goto L63
            if (r7 == r0) goto L63
            switch(r7) {
                case 10: goto L5e;
                case 11: goto L59;
                case 12: goto L54;
                case 13: goto L4f;
                default: goto L4c;
            }
        L4c:
            r3[r6] = r4
            goto L65
        L4f:
            java.lang.String r4 = "getWrapperFqName"
            r3[r6] = r4
            goto L65
        L54:
            java.lang.String r4 = "getDesc"
            r3[r6] = r4
            goto L65
        L59:
            java.lang.String r4 = "getJavaKeywordName"
            r3[r6] = r4
            goto L65
        L5e:
            java.lang.String r4 = "getPrimitiveType"
            r3[r6] = r4
            goto L65
        L63:
            r3[r6] = r5
        L65:
            switch(r7) {
                case 1: goto L77;
                case 2: goto L79;
                case 3: goto L77;
                case 4: goto L79;
                case 5: goto L72;
                case 6: goto L6d;
                case 7: goto L6d;
                case 8: goto L6d;
                case 9: goto L6d;
                case 10: goto L79;
                case 11: goto L79;
                case 12: goto L79;
                case 13: goto L79;
                default: goto L68;
            }
        L68:
            java.lang.String r4 = "isWrapperClassName"
            r3[r1] = r4
            goto L79
        L6d:
            java.lang.String r4 = "<init>"
            r3[r1] = r4
            goto L79
        L72:
            java.lang.String r4 = "getByDesc"
            r3[r1] = r4
            goto L79
        L77:
            r3[r1] = r5
        L79:
            java.lang.String r2 = java.lang.String.format(r2, r3)
            if (r7 == r1) goto L8a
            if (r7 == r0) goto L8a
            switch(r7) {
                case 10: goto L8a;
                case 11: goto L8a;
                case 12: goto L8a;
                case 13: goto L8a;
                default: goto L84;
            }
        L84:
            java.lang.IllegalArgumentException r7 = new java.lang.IllegalArgumentException
            r7.<init>(r2)
            goto L8f
        L8a:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            r7.<init>(r2)
        L8f:
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.resolve.jvm.JvmPrimitiveType.$$$reportNull$$$0(int):void");
    }

    static {
        for (JvmPrimitiveType jvmPrimitiveType : values()) {
            WRAPPERS_CLASS_NAMES.add(jvmPrimitiveType.getWrapperFqName());
            TYPE_BY_NAME.put(jvmPrimitiveType.getJavaKeywordName(), jvmPrimitiveType);
            TYPE_BY_PRIMITIVE_TYPE.put(jvmPrimitiveType.getPrimitiveType(), jvmPrimitiveType);
            TYPE_BY_DESC.put(jvmPrimitiveType.getDesc(), jvmPrimitiveType);
        }
    }

    JvmPrimitiveType(PrimitiveType primitiveType, String str, String str2, String str3) {
        if (primitiveType == null) {
            $$$reportNull$$$0(6);
            throw null;
        }
        this.primitiveType = primitiveType;
        this.name = str;
        this.desc = str2;
        this.wrapperFqName = new FqName(str3);
    }

    public static JvmPrimitiveType get(String str) {
        JvmPrimitiveType jvmPrimitiveType = TYPE_BY_NAME.get(str);
        if (jvmPrimitiveType != null) {
            return jvmPrimitiveType;
        }
        throw new AssertionError("Non-primitive type name passed: ".concat(str));
    }

    public final String getDesc() {
        String str = this.desc;
        if (str != null) {
            return str;
        }
        $$$reportNull$$$0(12);
        throw null;
    }

    public final String getJavaKeywordName() {
        String str = this.name;
        if (str != null) {
            return str;
        }
        $$$reportNull$$$0(11);
        throw null;
    }

    public final PrimitiveType getPrimitiveType() {
        PrimitiveType primitiveType = this.primitiveType;
        if (primitiveType != null) {
            return primitiveType;
        }
        $$$reportNull$$$0(10);
        throw null;
    }

    public final FqName getWrapperFqName() {
        FqName fqName = this.wrapperFqName;
        if (fqName != null) {
            return fqName;
        }
        $$$reportNull$$$0(13);
        throw null;
    }

    public static JvmPrimitiveType get(PrimitiveType primitiveType) {
        JvmPrimitiveType jvmPrimitiveType = TYPE_BY_PRIMITIVE_TYPE.get(primitiveType);
        if (jvmPrimitiveType != null) {
            return jvmPrimitiveType;
        }
        $$$reportNull$$$0(4);
        throw null;
    }
}
