package kotlin.reflect.jvm.internal.impl.name;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class SpecialNames {
    public static final Name DEFAULT_NAME_FOR_COMPANION_OBJECT;
    public static final Name IMPLICIT_SET_PARAMETER;
    public static final Name INIT;
    public static final Name LOCAL;
    public static final Name NO_NAME_PROVIDED = Name.special("<no name provided>");
    public static final Name SAFE_IDENTIFIER_FOR_NO_NAME;
    public static final Name THIS;

    static {
        Name.special("<root package>");
        DEFAULT_NAME_FOR_COMPANION_OBJECT = Name.identifier("Companion");
        SAFE_IDENTIFIER_FOR_NO_NAME = Name.identifier("no_name_in_PSI_3d19d79d_1ba9_4cd0_b7f5_b46aa3cd5d40");
        Name.special("<anonymous>");
        Name.special("<unary>");
        Name.special("<unary-result>");
        THIS = Name.special("<this>");
        INIT = Name.special("<init>");
        Name.special("<iterator>");
        Name.special("<destruct>");
        LOCAL = Name.special("<local>");
        Name.special("<unused var>");
        IMPLICIT_SET_PARAMETER = Name.special("<set-?>");
        Name.special("<array>");
        Name.special("<receiver>");
        Name.special("<get-entries>");
    }
}
