package defpackage;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'EF6' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:395)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:324)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* renamed from: Ph, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class EnumC0429Ph {

    /* renamed from: do, reason: not valid java name */
    public static final EnumC0429Ph f2810do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final EnumC0429Ph[] f2811do;

    /* renamed from: if, reason: not valid java name */
    public static final EnumC0429Ph f2812if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public static final /* synthetic */ EnumC0429Ph[] f2813if;

    /* renamed from: for, reason: not valid java name */
    public final int f2814for;

    /* JADX INFO: Fake field, exist only in values array */
    EnumC0429Ph EF6;

    static {
        EnumC0568Vo enumC0568Vo = EnumC0568Vo.DOUBLE;
        EnumC0429Ph enumC0429Ph = new EnumC0429Ph("DOUBLE", 0, 0, 1, enumC0568Vo);
        EnumC0568Vo enumC0568Vo2 = EnumC0568Vo.FLOAT;
        EnumC0429Ph enumC0429Ph2 = new EnumC0429Ph("FLOAT", 1, 1, 1, enumC0568Vo2);
        EnumC0568Vo enumC0568Vo3 = EnumC0568Vo.LONG;
        EnumC0429Ph enumC0429Ph3 = new EnumC0429Ph("INT64", 2, 2, 1, enumC0568Vo3);
        EnumC0429Ph enumC0429Ph4 = new EnumC0429Ph("UINT64", 3, 3, 1, enumC0568Vo3);
        EnumC0568Vo enumC0568Vo4 = EnumC0568Vo.INT;
        EnumC0429Ph enumC0429Ph5 = new EnumC0429Ph("INT32", 4, 4, 1, enumC0568Vo4);
        EnumC0429Ph enumC0429Ph6 = new EnumC0429Ph("FIXED64", 5, 5, 1, enumC0568Vo3);
        EnumC0429Ph enumC0429Ph7 = new EnumC0429Ph("FIXED32", 6, 6, 1, enumC0568Vo4);
        EnumC0568Vo enumC0568Vo5 = EnumC0568Vo.BOOLEAN;
        EnumC0429Ph enumC0429Ph8 = new EnumC0429Ph("BOOL", 7, 7, 1, enumC0568Vo5);
        EnumC0568Vo enumC0568Vo6 = EnumC0568Vo.STRING;
        EnumC0429Ph enumC0429Ph9 = new EnumC0429Ph("STRING", 8, 8, 1, enumC0568Vo6);
        EnumC0568Vo enumC0568Vo7 = EnumC0568Vo.MESSAGE;
        EnumC0429Ph enumC0429Ph10 = new EnumC0429Ph("MESSAGE", 9, 9, 1, enumC0568Vo7);
        EnumC0568Vo enumC0568Vo8 = EnumC0568Vo.BYTE_STRING;
        EnumC0429Ph enumC0429Ph11 = new EnumC0429Ph("BYTES", 10, 10, 1, enumC0568Vo8);
        EnumC0429Ph enumC0429Ph12 = new EnumC0429Ph("UINT32", 11, 11, 1, enumC0568Vo4);
        EnumC0568Vo enumC0568Vo9 = EnumC0568Vo.ENUM;
        EnumC0429Ph enumC0429Ph13 = new EnumC0429Ph("ENUM", 12, 12, 1, enumC0568Vo9);
        EnumC0429Ph enumC0429Ph14 = new EnumC0429Ph("SFIXED32", 13, 13, 1, enumC0568Vo4);
        EnumC0429Ph enumC0429Ph15 = new EnumC0429Ph("SFIXED64", 14, 14, 1, enumC0568Vo3);
        EnumC0429Ph enumC0429Ph16 = new EnumC0429Ph("SINT32", 15, 15, 1, enumC0568Vo4);
        EnumC0429Ph enumC0429Ph17 = new EnumC0429Ph("SINT64", 16, 16, 1, enumC0568Vo3);
        EnumC0429Ph enumC0429Ph18 = new EnumC0429Ph("GROUP", 17, 17, 1, enumC0568Vo7);
        EnumC0429Ph enumC0429Ph19 = new EnumC0429Ph("DOUBLE_LIST", 18, 18, 2, enumC0568Vo);
        EnumC0429Ph enumC0429Ph20 = new EnumC0429Ph("FLOAT_LIST", 19, 19, 2, enumC0568Vo2);
        EnumC0429Ph enumC0429Ph21 = new EnumC0429Ph("INT64_LIST", 20, 20, 2, enumC0568Vo3);
        EnumC0429Ph enumC0429Ph22 = new EnumC0429Ph("UINT64_LIST", 21, 21, 2, enumC0568Vo3);
        EnumC0429Ph enumC0429Ph23 = new EnumC0429Ph("INT32_LIST", 22, 22, 2, enumC0568Vo4);
        EnumC0429Ph enumC0429Ph24 = new EnumC0429Ph("FIXED64_LIST", 23, 23, 2, enumC0568Vo3);
        EnumC0429Ph enumC0429Ph25 = new EnumC0429Ph("FIXED32_LIST", 24, 24, 2, enumC0568Vo4);
        EnumC0429Ph enumC0429Ph26 = new EnumC0429Ph("BOOL_LIST", 25, 25, 2, enumC0568Vo5);
        EnumC0429Ph enumC0429Ph27 = new EnumC0429Ph("STRING_LIST", 26, 26, 2, enumC0568Vo6);
        EnumC0429Ph enumC0429Ph28 = new EnumC0429Ph("MESSAGE_LIST", 27, 27, 2, enumC0568Vo7);
        EnumC0429Ph enumC0429Ph29 = new EnumC0429Ph("BYTES_LIST", 28, 28, 2, enumC0568Vo8);
        EnumC0429Ph enumC0429Ph30 = new EnumC0429Ph("UINT32_LIST", 29, 29, 2, enumC0568Vo4);
        EnumC0429Ph enumC0429Ph31 = new EnumC0429Ph("ENUM_LIST", 30, 30, 2, enumC0568Vo9);
        EnumC0429Ph enumC0429Ph32 = new EnumC0429Ph("SFIXED32_LIST", 31, 31, 2, enumC0568Vo4);
        EnumC0429Ph enumC0429Ph33 = new EnumC0429Ph("SFIXED64_LIST", 32, 32, 2, enumC0568Vo3);
        EnumC0429Ph enumC0429Ph34 = new EnumC0429Ph("SINT32_LIST", 33, 33, 2, enumC0568Vo4);
        EnumC0429Ph enumC0429Ph35 = new EnumC0429Ph("SINT64_LIST", 34, 34, 2, enumC0568Vo3);
        EnumC0429Ph enumC0429Ph36 = new EnumC0429Ph("DOUBLE_LIST_PACKED", 35, 35, 3, enumC0568Vo);
        f2810do = enumC0429Ph36;
        EnumC0429Ph enumC0429Ph37 = new EnumC0429Ph("FLOAT_LIST_PACKED", 36, 36, 3, enumC0568Vo2);
        EnumC0429Ph enumC0429Ph38 = new EnumC0429Ph("INT64_LIST_PACKED", 37, 37, 3, enumC0568Vo3);
        EnumC0429Ph enumC0429Ph39 = new EnumC0429Ph("UINT64_LIST_PACKED", 38, 38, 3, enumC0568Vo3);
        EnumC0429Ph enumC0429Ph40 = new EnumC0429Ph("INT32_LIST_PACKED", 39, 39, 3, enumC0568Vo4);
        EnumC0429Ph enumC0429Ph41 = new EnumC0429Ph("FIXED64_LIST_PACKED", 40, 40, 3, enumC0568Vo3);
        EnumC0429Ph enumC0429Ph42 = new EnumC0429Ph("FIXED32_LIST_PACKED", 41, 41, 3, enumC0568Vo4);
        EnumC0429Ph enumC0429Ph43 = new EnumC0429Ph("BOOL_LIST_PACKED", 42, 42, 3, enumC0568Vo5);
        EnumC0429Ph enumC0429Ph44 = new EnumC0429Ph("UINT32_LIST_PACKED", 43, 43, 3, enumC0568Vo4);
        EnumC0429Ph enumC0429Ph45 = new EnumC0429Ph("ENUM_LIST_PACKED", 44, 44, 3, enumC0568Vo9);
        EnumC0429Ph enumC0429Ph46 = new EnumC0429Ph("SFIXED32_LIST_PACKED", 45, 45, 3, enumC0568Vo4);
        EnumC0429Ph enumC0429Ph47 = new EnumC0429Ph("SFIXED64_LIST_PACKED", 46, 46, 3, enumC0568Vo3);
        EnumC0429Ph enumC0429Ph48 = new EnumC0429Ph("SINT32_LIST_PACKED", 47, 47, 3, enumC0568Vo4);
        EnumC0429Ph enumC0429Ph49 = new EnumC0429Ph("SINT64_LIST_PACKED", 48, 48, 3, enumC0568Vo3);
        f2812if = enumC0429Ph49;
        f2813if = new EnumC0429Ph[]{enumC0429Ph, enumC0429Ph2, enumC0429Ph3, enumC0429Ph4, enumC0429Ph5, enumC0429Ph6, enumC0429Ph7, enumC0429Ph8, enumC0429Ph9, enumC0429Ph10, enumC0429Ph11, enumC0429Ph12, enumC0429Ph13, enumC0429Ph14, enumC0429Ph15, enumC0429Ph16, enumC0429Ph17, enumC0429Ph18, enumC0429Ph19, enumC0429Ph20, enumC0429Ph21, enumC0429Ph22, enumC0429Ph23, enumC0429Ph24, enumC0429Ph25, enumC0429Ph26, enumC0429Ph27, enumC0429Ph28, enumC0429Ph29, enumC0429Ph30, enumC0429Ph31, enumC0429Ph32, enumC0429Ph33, enumC0429Ph34, enumC0429Ph35, enumC0429Ph36, enumC0429Ph37, enumC0429Ph38, enumC0429Ph39, enumC0429Ph40, enumC0429Ph41, enumC0429Ph42, enumC0429Ph43, enumC0429Ph44, enumC0429Ph45, enumC0429Ph46, enumC0429Ph47, enumC0429Ph48, enumC0429Ph49, new EnumC0429Ph("GROUP_LIST", 49, 49, 2, enumC0568Vo7), new EnumC0429Ph("MAP", 50, 50, 4, EnumC0568Vo.VOID)};
        EnumC0429Ph[] values = values();
        f2811do = new EnumC0429Ph[values.length];
        for (EnumC0429Ph enumC0429Ph50 : values) {
            f2811do[enumC0429Ph50.f2814for] = enumC0429Ph50;
        }
    }

    public EnumC0429Ph(String str, int i, int i2, int i3, EnumC0568Vo enumC0568Vo) {
        this.f2814for = i2;
        if (i3 == 0) {
            throw null;
        }
        int i4 = i3 - 1;
        if (i4 == 1) {
            enumC0568Vo.getClass();
        } else if (i4 == 3) {
            enumC0568Vo.getClass();
        }
        if (i3 == 1) {
            enumC0568Vo.ordinal();
        }
    }

    public static EnumC0429Ph valueOf(String str) {
        return (EnumC0429Ph) Enum.valueOf(EnumC0429Ph.class, str);
    }

    public static EnumC0429Ph[] values() {
        return (EnumC0429Ph[]) f2813if.clone();
    }

    /* renamed from: do, reason: not valid java name */
    public final int m1794do() {
        return this.f2814for;
    }
}
