package defpackage;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'do' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:395)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:324)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* renamed from: nM, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public class EnumC3386nM {

    /* renamed from: do, reason: not valid java name */
    public static final Cdo f14511do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final Cif f14512do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final EnumC3386nM f14513do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final /* synthetic */ EnumC3386nM[] f14514do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final EnumC3445oM f14515do;

    /* renamed from: for, reason: not valid java name */
    public final int f14516for;

    /* JADX INFO: Fake field, exist only in values array */
    EnumC3386nM EF0;

    /* JADX INFO: Fake field, exist only in values array */
    EnumC3386nM EF1;

    /* renamed from: nM$do, reason: invalid class name */
    public enum Cdo extends EnumC3386nM {
        public Cdo() {
            super("STRING", 8, EnumC3445oM.STRING, 2);
        }
    }

    /* renamed from: nM$if, reason: invalid class name */
    public enum Cif extends EnumC3386nM {
        public Cif(EnumC3445oM enumC3445oM) {
            super("GROUP", 9, enumC3445oM, 3);
        }
    }

    static {
        EnumC3386nM enumC3386nM = new EnumC3386nM("DOUBLE", 0, EnumC3445oM.DOUBLE, 1);
        EnumC3386nM enumC3386nM2 = new EnumC3386nM("FLOAT", 1, EnumC3445oM.FLOAT, 5);
        EnumC3445oM enumC3445oM = EnumC3445oM.LONG;
        EnumC3386nM enumC3386nM3 = new EnumC3386nM("INT64", 2, enumC3445oM, 0);
        f14513do = enumC3386nM3;
        EnumC3386nM enumC3386nM4 = new EnumC3386nM("UINT64", 3, enumC3445oM, 0);
        EnumC3445oM enumC3445oM2 = EnumC3445oM.INT;
        EnumC3386nM enumC3386nM5 = new EnumC3386nM("INT32", 4, enumC3445oM2, 0);
        EnumC3386nM enumC3386nM6 = new EnumC3386nM("FIXED64", 5, enumC3445oM, 1);
        EnumC3386nM enumC3386nM7 = new EnumC3386nM("FIXED32", 6, enumC3445oM2, 5);
        EnumC3386nM enumC3386nM8 = new EnumC3386nM("BOOL", 7, EnumC3445oM.BOOLEAN, 0);
        Cdo cdo = new Cdo();
        f14511do = cdo;
        EnumC3445oM enumC3445oM3 = EnumC3445oM.MESSAGE;
        Cif cif = new Cif(enumC3445oM3);
        f14512do = cif;
        f14514do = new EnumC3386nM[]{enumC3386nM, enumC3386nM2, enumC3386nM3, enumC3386nM4, enumC3386nM5, enumC3386nM6, enumC3386nM7, enumC3386nM8, cdo, cif, new EnumC3386nM(enumC3445oM3) { // from class: nM.for
        }, new EnumC3386nM(EnumC3445oM.BYTE_STRING) { // from class: nM.new
        }, new EnumC3386nM("UINT32", 12, enumC3445oM2, 0), new EnumC3386nM("ENUM", 13, EnumC3445oM.ENUM, 0), new EnumC3386nM("SFIXED32", 14, enumC3445oM2, 5), new EnumC3386nM("SFIXED64", 15, enumC3445oM, 1), new EnumC3386nM("SINT32", 16, enumC3445oM2, 0), new EnumC3386nM("SINT64", 17, enumC3445oM, 0)};
    }

    public /* synthetic */ EnumC3386nM() {
        throw null;
    }

    public EnumC3386nM(String str, int i, EnumC3445oM enumC3445oM, int i2) {
        this.f14515do = enumC3445oM;
        this.f14516for = i2;
    }

    public static EnumC3386nM valueOf(String str) {
        return (EnumC3386nM) Enum.valueOf(EnumC3386nM.class, str);
    }

    public static EnumC3386nM[] values() {
        return (EnumC3386nM[]) f14514do.clone();
    }
}
