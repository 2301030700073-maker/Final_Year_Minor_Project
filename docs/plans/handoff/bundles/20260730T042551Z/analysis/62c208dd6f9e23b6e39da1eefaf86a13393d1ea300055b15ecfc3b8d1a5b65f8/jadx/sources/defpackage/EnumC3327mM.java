package defpackage;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'EF2' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:395)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:324)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* renamed from: mM, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class EnumC3327mM {

    /* renamed from: do, reason: not valid java name */
    public static final Cdo f14331do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final Cfor f14332do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final Cif f14333do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final /* synthetic */ EnumC3327mM[] f14334do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final EnumC3504pM f14335do;

    /* renamed from: for, reason: not valid java name */
    public final int f14336for;

    /* JADX INFO: Fake field, exist only in values array */
    EnumC3327mM EF0;

    /* JADX INFO: Fake field, exist only in values array */
    EnumC3327mM EF1;

    /* JADX INFO: Fake field, exist only in values array */
    EnumC3327mM EF2;

    /* renamed from: mM$do, reason: invalid class name */
    public enum Cdo extends EnumC3327mM {
        public Cdo() {
            super("STRING", 8, EnumC3504pM.STRING, 2);
        }
    }

    /* renamed from: mM$for, reason: invalid class name */
    public enum Cfor extends EnumC3327mM {
        public Cfor(EnumC3504pM enumC3504pM) {
            super("MESSAGE", 10, enumC3504pM, 2);
        }
    }

    /* renamed from: mM$if, reason: invalid class name */
    public enum Cif extends EnumC3327mM {
        public Cif(EnumC3504pM enumC3504pM) {
            super("GROUP", 9, enumC3504pM, 3);
        }
    }

    static {
        EnumC3327mM enumC3327mM = new EnumC3327mM("DOUBLE", 0, EnumC3504pM.DOUBLE, 1);
        EnumC3327mM enumC3327mM2 = new EnumC3327mM("FLOAT", 1, EnumC3504pM.FLOAT, 5);
        EnumC3504pM enumC3504pM = EnumC3504pM.LONG;
        EnumC3327mM enumC3327mM3 = new EnumC3327mM("INT64", 2, enumC3504pM, 0);
        EnumC3327mM enumC3327mM4 = new EnumC3327mM("UINT64", 3, enumC3504pM, 0);
        EnumC3504pM enumC3504pM2 = EnumC3504pM.INT;
        EnumC3327mM enumC3327mM5 = new EnumC3327mM("INT32", 4, enumC3504pM2, 0);
        EnumC3327mM enumC3327mM6 = new EnumC3327mM("FIXED64", 5, enumC3504pM, 1);
        EnumC3327mM enumC3327mM7 = new EnumC3327mM("FIXED32", 6, enumC3504pM2, 5);
        EnumC3327mM enumC3327mM8 = new EnumC3327mM("BOOL", 7, EnumC3504pM.BOOLEAN, 0);
        Cdo cdo = new Cdo();
        f14331do = cdo;
        EnumC3504pM enumC3504pM3 = EnumC3504pM.MESSAGE;
        Cif cif = new Cif(enumC3504pM3);
        f14333do = cif;
        Cfor cfor = new Cfor(enumC3504pM3);
        f14332do = cfor;
        f14334do = new EnumC3327mM[]{enumC3327mM, enumC3327mM2, enumC3327mM3, enumC3327mM4, enumC3327mM5, enumC3327mM6, enumC3327mM7, enumC3327mM8, cdo, cif, cfor, new EnumC3327mM(EnumC3504pM.BYTE_STRING) { // from class: mM.new
        }, new EnumC3327mM("UINT32", 12, enumC3504pM2, 0), new EnumC3327mM("ENUM", 13, EnumC3504pM.ENUM, 0), new EnumC3327mM("SFIXED32", 14, enumC3504pM2, 5), new EnumC3327mM("SFIXED64", 15, enumC3504pM, 1), new EnumC3327mM("SINT32", 16, enumC3504pM2, 0), new EnumC3327mM("SINT64", 17, enumC3504pM, 0)};
    }

    public /* synthetic */ EnumC3327mM() {
        throw null;
    }

    public EnumC3327mM(String str, int i, EnumC3504pM enumC3504pM, int i2) {
        this.f14335do = enumC3504pM;
        this.f14336for = i2;
    }

    public static EnumC3327mM valueOf(String str) {
        return (EnumC3327mM) Enum.valueOf(EnumC3327mM.class, str);
    }

    public static EnumC3327mM[] values() {
        return (EnumC3327mM[]) f14334do.clone();
    }
}
