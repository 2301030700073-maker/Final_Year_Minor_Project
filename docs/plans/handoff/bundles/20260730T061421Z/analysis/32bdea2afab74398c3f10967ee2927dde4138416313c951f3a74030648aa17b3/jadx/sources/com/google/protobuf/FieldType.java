package com.google.protobuf;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'a' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByField(EnumVisitor.java:372)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByWrappedInsn(EnumVisitor.java:337)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:322)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* loaded from: classes.dex */
public final class FieldType {
    public static final FieldType A;
    public static final FieldType B;
    public static final FieldType C;
    public static final FieldType D;
    public static final FieldType E;
    public static final FieldType F;
    public static final FieldType G;
    public static final FieldType H;
    public static final FieldType I;
    public static final FieldType J;
    public static final FieldType K;
    public static final FieldType L;
    public static final FieldType M;
    public static final FieldType N;
    public static final FieldType O;
    public static final FieldType P;
    public static final FieldType Q;
    public static final FieldType R;
    public static final FieldType S;
    public static final FieldType T;
    public static final FieldType U;
    public static final FieldType V;
    public static final FieldType W;
    public static final FieldType X;
    public static final FieldType Y;
    public static final FieldType[] Z;

    /* renamed from: a, reason: collision with root package name */
    public static final FieldType f3494a;
    public static final /* synthetic */ FieldType[] a0;

    /* renamed from: b, reason: collision with root package name */
    public static final FieldType f3495b;

    /* renamed from: c, reason: collision with root package name */
    public static final FieldType f3496c;

    /* renamed from: d, reason: collision with root package name */
    public static final FieldType f3497d;
    public static final FieldType e;
    public static final FieldType f;
    public static final FieldType g;
    public static final FieldType h;
    public static final FieldType i;
    public static final FieldType j;
    public static final FieldType k;
    public static final FieldType l;
    public static final FieldType m;
    public static final FieldType n;
    public static final FieldType o;
    public static final FieldType p;
    public static final FieldType q;
    public static final FieldType r;
    public static final FieldType s;
    public static final FieldType t;
    public static final FieldType u;
    public static final FieldType v;
    public static final FieldType w;
    public static final FieldType x;
    public static final FieldType y;
    public static final FieldType z;
    public final Collection collection;
    public final Class elementType;
    public final int id;
    public final JavaType javaType;
    public final boolean primitiveScalar;

    public enum Collection {
        SCALAR(false),
        VECTOR(true),
        PACKED_VECTOR(true),
        MAP(false);

        public final boolean isList;

        Collection(boolean z) {
            this.isList = z;
        }
    }

    static {
        Collection collection = Collection.PACKED_VECTOR;
        Collection collection2 = Collection.VECTOR;
        Collection collection3 = Collection.SCALAR;
        f3494a = new FieldType("DOUBLE", 0, 0, collection3, JavaType.DOUBLE);
        f3495b = new FieldType("FLOAT", 1, 1, collection3, JavaType.FLOAT);
        f3496c = new FieldType("INT64", 2, 2, collection3, JavaType.LONG);
        f3497d = new FieldType("UINT64", 3, 3, collection3, JavaType.LONG);
        e = new FieldType("INT32", 4, 4, collection3, JavaType.INT);
        f = new FieldType("FIXED64", 5, 5, collection3, JavaType.LONG);
        g = new FieldType("FIXED32", 6, 6, collection3, JavaType.INT);
        h = new FieldType("BOOL", 7, 7, collection3, JavaType.BOOLEAN);
        i = new FieldType("STRING", 8, 8, collection3, JavaType.STRING);
        j = new FieldType("MESSAGE", 9, 9, collection3, JavaType.MESSAGE);
        k = new FieldType("BYTES", 10, 10, collection3, JavaType.BYTE_STRING);
        l = new FieldType("UINT32", 11, 11, collection3, JavaType.INT);
        m = new FieldType("ENUM", 12, 12, collection3, JavaType.ENUM);
        n = new FieldType("SFIXED32", 13, 13, collection3, JavaType.INT);
        o = new FieldType("SFIXED64", 14, 14, collection3, JavaType.LONG);
        p = new FieldType("SINT32", 15, 15, collection3, JavaType.INT);
        q = new FieldType("SINT64", 16, 16, collection3, JavaType.LONG);
        r = new FieldType("GROUP", 17, 17, collection3, JavaType.MESSAGE);
        s = new FieldType("DOUBLE_LIST", 18, 18, collection2, JavaType.DOUBLE);
        t = new FieldType("FLOAT_LIST", 19, 19, collection2, JavaType.FLOAT);
        u = new FieldType("INT64_LIST", 20, 20, collection2, JavaType.LONG);
        v = new FieldType("UINT64_LIST", 21, 21, collection2, JavaType.LONG);
        w = new FieldType("INT32_LIST", 22, 22, collection2, JavaType.INT);
        x = new FieldType("FIXED64_LIST", 23, 23, collection2, JavaType.LONG);
        y = new FieldType("FIXED32_LIST", 24, 24, collection2, JavaType.INT);
        z = new FieldType("BOOL_LIST", 25, 25, collection2, JavaType.BOOLEAN);
        A = new FieldType("STRING_LIST", 26, 26, collection2, JavaType.STRING);
        B = new FieldType("MESSAGE_LIST", 27, 27, collection2, JavaType.MESSAGE);
        C = new FieldType("BYTES_LIST", 28, 28, collection2, JavaType.BYTE_STRING);
        D = new FieldType("UINT32_LIST", 29, 29, collection2, JavaType.INT);
        E = new FieldType("ENUM_LIST", 30, 30, collection2, JavaType.ENUM);
        F = new FieldType("SFIXED32_LIST", 31, 31, collection2, JavaType.INT);
        G = new FieldType("SFIXED64_LIST", 32, 32, collection2, JavaType.LONG);
        H = new FieldType("SINT32_LIST", 33, 33, collection2, JavaType.INT);
        I = new FieldType("SINT64_LIST", 34, 34, collection2, JavaType.LONG);
        J = new FieldType("DOUBLE_LIST_PACKED", 35, 35, collection, JavaType.DOUBLE);
        K = new FieldType("FLOAT_LIST_PACKED", 36, 36, collection, JavaType.FLOAT);
        L = new FieldType("INT64_LIST_PACKED", 37, 37, collection, JavaType.LONG);
        M = new FieldType("UINT64_LIST_PACKED", 38, 38, collection, JavaType.LONG);
        N = new FieldType("INT32_LIST_PACKED", 39, 39, collection, JavaType.INT);
        O = new FieldType("FIXED64_LIST_PACKED", 40, 40, collection, JavaType.LONG);
        P = new FieldType("FIXED32_LIST_PACKED", 41, 41, collection, JavaType.INT);
        Q = new FieldType("BOOL_LIST_PACKED", 42, 42, collection, JavaType.BOOLEAN);
        R = new FieldType("UINT32_LIST_PACKED", 43, 43, collection, JavaType.INT);
        S = new FieldType("ENUM_LIST_PACKED", 44, 44, collection, JavaType.ENUM);
        T = new FieldType("SFIXED32_LIST_PACKED", 45, 45, collection, JavaType.INT);
        U = new FieldType("SFIXED64_LIST_PACKED", 46, 46, collection, JavaType.LONG);
        V = new FieldType("SINT32_LIST_PACKED", 47, 47, collection, JavaType.INT);
        W = new FieldType("SINT64_LIST_PACKED", 48, 48, collection, JavaType.LONG);
        X = new FieldType("GROUP_LIST", 49, 49, collection2, JavaType.MESSAGE);
        FieldType fieldType = new FieldType("MAP", 50, 50, Collection.MAP, JavaType.VOID);
        Y = fieldType;
        a0 = new FieldType[]{f3494a, f3495b, f3496c, f3497d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u, v, w, x, y, z, A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W, X, fieldType};
        FieldType[] values = values();
        Z = new FieldType[values.length];
        for (FieldType fieldType2 : values) {
            Z[fieldType2.id] = fieldType2;
        }
    }

    public FieldType(String str, int i2, int i3, Collection collection, JavaType javaType) {
        int ordinal;
        this.id = i3;
        this.collection = collection;
        this.javaType = javaType;
        int ordinal2 = collection.ordinal();
        if (ordinal2 == 1) {
            this.elementType = javaType.boxedType;
        } else if (ordinal2 != 3) {
            this.elementType = null;
        } else {
            this.elementType = javaType.boxedType;
        }
        this.primitiveScalar = (collection != Collection.SCALAR || (ordinal = javaType.ordinal()) == 6 || ordinal == 7 || ordinal == 9) ? false : true;
    }

    public static FieldType valueOf(String str) {
        return (FieldType) Enum.valueOf(FieldType.class, str);
    }

    public static FieldType[] values() {
        return (FieldType[]) a0.clone();
    }
}
