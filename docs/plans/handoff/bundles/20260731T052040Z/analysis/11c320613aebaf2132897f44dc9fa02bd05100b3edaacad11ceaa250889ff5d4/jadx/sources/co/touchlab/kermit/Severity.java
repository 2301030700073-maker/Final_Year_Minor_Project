package co.touchlab.kermit;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class Severity {
    public static final /* synthetic */ Severity[] $VALUES;
    public static final Severity Error;
    public static final Severity Info;
    public static final Severity Verbose;

    static {
        Severity severity = new Severity("Verbose", 0);
        Verbose = severity;
        Severity severity2 = new Severity("Debug", 1);
        Severity severity3 = new Severity("Info", 2);
        Info = severity3;
        Severity severity4 = new Severity("Warn", 3);
        Severity severity5 = new Severity("Error", 4);
        Error = severity5;
        $VALUES = new Severity[]{severity, severity2, severity3, severity4, severity5, new Severity("Assert", 5)};
    }

    public static Severity valueOf(String str) {
        return (Severity) Enum.valueOf(Severity.class, str);
    }

    public static Severity[] values() {
        return (Severity[]) $VALUES.clone();
    }
}
