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
/* renamed from: Oh, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class EnumC0407Oh {

    /* renamed from: do, reason: not valid java name */
    public static final EnumC0407Oh f2661do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final EnumC0407Oh[] f2662do;

    /* renamed from: if, reason: not valid java name */
    public static final EnumC0407Oh f2663if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public static final /* synthetic */ EnumC0407Oh[] f2664if;

    /* renamed from: for, reason: not valid java name */
    public final int f2665for;

    /* JADX INFO: Fake field, exist only in values array */
    EnumC0407Oh EF6;

    static {
        EnumC0546Uo enumC0546Uo = EnumC0546Uo.DOUBLE;
        EnumC0407Oh enumC0407Oh = new EnumC0407Oh("DOUBLE", 0, 0, 1, enumC0546Uo);
        EnumC0546Uo enumC0546Uo2 = EnumC0546Uo.FLOAT;
        EnumC0407Oh enumC0407Oh2 = new EnumC0407Oh("FLOAT", 1, 1, 1, enumC0546Uo2);
        EnumC0546Uo enumC0546Uo3 = EnumC0546Uo.LONG;
        EnumC0407Oh enumC0407Oh3 = new EnumC0407Oh("INT64", 2, 2, 1, enumC0546Uo3);
        EnumC0407Oh enumC0407Oh4 = new EnumC0407Oh("UINT64", 3, 3, 1, enumC0546Uo3);
        EnumC0546Uo enumC0546Uo4 = EnumC0546Uo.INT;
        EnumC0407Oh enumC0407Oh5 = new EnumC0407Oh("INT32", 4, 4, 1, enumC0546Uo4);
        EnumC0407Oh enumC0407Oh6 = new EnumC0407Oh("FIXED64", 5, 5, 1, enumC0546Uo3);
        EnumC0407Oh enumC0407Oh7 = new EnumC0407Oh("FIXED32", 6, 6, 1, enumC0546Uo4);
        EnumC0546Uo enumC0546Uo5 = EnumC0546Uo.BOOLEAN;
        EnumC0407Oh enumC0407Oh8 = new EnumC0407Oh("BOOL", 7, 7, 1, enumC0546Uo5);
        EnumC0546Uo enumC0546Uo6 = EnumC0546Uo.STRING;
        EnumC0407Oh enumC0407Oh9 = new EnumC0407Oh("STRING", 8, 8, 1, enumC0546Uo6);
        EnumC0546Uo enumC0546Uo7 = EnumC0546Uo.MESSAGE;
        EnumC0407Oh enumC0407Oh10 = new EnumC0407Oh("MESSAGE", 9, 9, 1, enumC0546Uo7);
        EnumC0546Uo enumC0546Uo8 = EnumC0546Uo.BYTE_STRING;
        EnumC0407Oh enumC0407Oh11 = new EnumC0407Oh("BYTES", 10, 10, 1, enumC0546Uo8);
        EnumC0407Oh enumC0407Oh12 = new EnumC0407Oh("UINT32", 11, 11, 1, enumC0546Uo4);
        EnumC0546Uo enumC0546Uo9 = EnumC0546Uo.ENUM;
        EnumC0407Oh enumC0407Oh13 = new EnumC0407Oh("ENUM", 12, 12, 1, enumC0546Uo9);
        EnumC0407Oh enumC0407Oh14 = new EnumC0407Oh("SFIXED32", 13, 13, 1, enumC0546Uo4);
        EnumC0407Oh enumC0407Oh15 = new EnumC0407Oh("SFIXED64", 14, 14, 1, enumC0546Uo3);
        EnumC0407Oh enumC0407Oh16 = new EnumC0407Oh("SINT32", 15, 15, 1, enumC0546Uo4);
        EnumC0407Oh enumC0407Oh17 = new EnumC0407Oh("SINT64", 16, 16, 1, enumC0546Uo3);
        EnumC0407Oh enumC0407Oh18 = new EnumC0407Oh("GROUP", 17, 17, 1, enumC0546Uo7);
        EnumC0407Oh enumC0407Oh19 = new EnumC0407Oh("DOUBLE_LIST", 18, 18, 2, enumC0546Uo);
        EnumC0407Oh enumC0407Oh20 = new EnumC0407Oh("FLOAT_LIST", 19, 19, 2, enumC0546Uo2);
        EnumC0407Oh enumC0407Oh21 = new EnumC0407Oh("INT64_LIST", 20, 20, 2, enumC0546Uo3);
        EnumC0407Oh enumC0407Oh22 = new EnumC0407Oh("UINT64_LIST", 21, 21, 2, enumC0546Uo3);
        EnumC0407Oh enumC0407Oh23 = new EnumC0407Oh("INT32_LIST", 22, 22, 2, enumC0546Uo4);
        EnumC0407Oh enumC0407Oh24 = new EnumC0407Oh("FIXED64_LIST", 23, 23, 2, enumC0546Uo3);
        EnumC0407Oh enumC0407Oh25 = new EnumC0407Oh("FIXED32_LIST", 24, 24, 2, enumC0546Uo4);
        EnumC0407Oh enumC0407Oh26 = new EnumC0407Oh("BOOL_LIST", 25, 25, 2, enumC0546Uo5);
        EnumC0407Oh enumC0407Oh27 = new EnumC0407Oh("STRING_LIST", 26, 26, 2, enumC0546Uo6);
        EnumC0407Oh enumC0407Oh28 = new EnumC0407Oh("MESSAGE_LIST", 27, 27, 2, enumC0546Uo7);
        EnumC0407Oh enumC0407Oh29 = new EnumC0407Oh("BYTES_LIST", 28, 28, 2, enumC0546Uo8);
        EnumC0407Oh enumC0407Oh30 = new EnumC0407Oh("UINT32_LIST", 29, 29, 2, enumC0546Uo4);
        EnumC0407Oh enumC0407Oh31 = new EnumC0407Oh("ENUM_LIST", 30, 30, 2, enumC0546Uo9);
        EnumC0407Oh enumC0407Oh32 = new EnumC0407Oh("SFIXED32_LIST", 31, 31, 2, enumC0546Uo4);
        EnumC0407Oh enumC0407Oh33 = new EnumC0407Oh("SFIXED64_LIST", 32, 32, 2, enumC0546Uo3);
        EnumC0407Oh enumC0407Oh34 = new EnumC0407Oh("SINT32_LIST", 33, 33, 2, enumC0546Uo4);
        EnumC0407Oh enumC0407Oh35 = new EnumC0407Oh("SINT64_LIST", 34, 34, 2, enumC0546Uo3);
        EnumC0407Oh enumC0407Oh36 = new EnumC0407Oh("DOUBLE_LIST_PACKED", 35, 35, 3, enumC0546Uo);
        f2661do = enumC0407Oh36;
        EnumC0407Oh enumC0407Oh37 = new EnumC0407Oh("FLOAT_LIST_PACKED", 36, 36, 3, enumC0546Uo2);
        EnumC0407Oh enumC0407Oh38 = new EnumC0407Oh("INT64_LIST_PACKED", 37, 37, 3, enumC0546Uo3);
        EnumC0407Oh enumC0407Oh39 = new EnumC0407Oh("UINT64_LIST_PACKED", 38, 38, 3, enumC0546Uo3);
        EnumC0407Oh enumC0407Oh40 = new EnumC0407Oh("INT32_LIST_PACKED", 39, 39, 3, enumC0546Uo4);
        EnumC0407Oh enumC0407Oh41 = new EnumC0407Oh("FIXED64_LIST_PACKED", 40, 40, 3, enumC0546Uo3);
        EnumC0407Oh enumC0407Oh42 = new EnumC0407Oh("FIXED32_LIST_PACKED", 41, 41, 3, enumC0546Uo4);
        EnumC0407Oh enumC0407Oh43 = new EnumC0407Oh("BOOL_LIST_PACKED", 42, 42, 3, enumC0546Uo5);
        EnumC0407Oh enumC0407Oh44 = new EnumC0407Oh("UINT32_LIST_PACKED", 43, 43, 3, enumC0546Uo4);
        EnumC0407Oh enumC0407Oh45 = new EnumC0407Oh("ENUM_LIST_PACKED", 44, 44, 3, enumC0546Uo9);
        EnumC0407Oh enumC0407Oh46 = new EnumC0407Oh("SFIXED32_LIST_PACKED", 45, 45, 3, enumC0546Uo4);
        EnumC0407Oh enumC0407Oh47 = new EnumC0407Oh("SFIXED64_LIST_PACKED", 46, 46, 3, enumC0546Uo3);
        EnumC0407Oh enumC0407Oh48 = new EnumC0407Oh("SINT32_LIST_PACKED", 47, 47, 3, enumC0546Uo4);
        EnumC0407Oh enumC0407Oh49 = new EnumC0407Oh("SINT64_LIST_PACKED", 48, 48, 3, enumC0546Uo3);
        f2663if = enumC0407Oh49;
        f2664if = new EnumC0407Oh[]{enumC0407Oh, enumC0407Oh2, enumC0407Oh3, enumC0407Oh4, enumC0407Oh5, enumC0407Oh6, enumC0407Oh7, enumC0407Oh8, enumC0407Oh9, enumC0407Oh10, enumC0407Oh11, enumC0407Oh12, enumC0407Oh13, enumC0407Oh14, enumC0407Oh15, enumC0407Oh16, enumC0407Oh17, enumC0407Oh18, enumC0407Oh19, enumC0407Oh20, enumC0407Oh21, enumC0407Oh22, enumC0407Oh23, enumC0407Oh24, enumC0407Oh25, enumC0407Oh26, enumC0407Oh27, enumC0407Oh28, enumC0407Oh29, enumC0407Oh30, enumC0407Oh31, enumC0407Oh32, enumC0407Oh33, enumC0407Oh34, enumC0407Oh35, enumC0407Oh36, enumC0407Oh37, enumC0407Oh38, enumC0407Oh39, enumC0407Oh40, enumC0407Oh41, enumC0407Oh42, enumC0407Oh43, enumC0407Oh44, enumC0407Oh45, enumC0407Oh46, enumC0407Oh47, enumC0407Oh48, enumC0407Oh49, new EnumC0407Oh("GROUP_LIST", 49, 49, 2, enumC0546Uo7), new EnumC0407Oh("MAP", 50, 50, 4, EnumC0546Uo.VOID)};
        EnumC0407Oh[] values = values();
        f2662do = new EnumC0407Oh[values.length];
        for (EnumC0407Oh enumC0407Oh50 : values) {
            f2662do[enumC0407Oh50.f2665for] = enumC0407Oh50;
        }
    }

    public EnumC0407Oh(String str, int i, int i2, int i3, EnumC0546Uo enumC0546Uo) {
        this.f2665for = i2;
        if (i3 == 0) {
            throw null;
        }
        int i4 = i3 - 1;
        if (i4 == 1) {
            enumC0546Uo.getClass();
        } else if (i4 == 3) {
            enumC0546Uo.getClass();
        }
        if (i3 == 1) {
            enumC0546Uo.ordinal();
        }
    }

    public static EnumC0407Oh valueOf(String str) {
        return (EnumC0407Oh) Enum.valueOf(EnumC0407Oh.class, str);
    }

    public static EnumC0407Oh[] values() {
        return (EnumC0407Oh[]) f2664if.clone();
    }

    /* renamed from: do, reason: not valid java name */
    public final int m1674do() {
        return this.f2665for;
    }
}
