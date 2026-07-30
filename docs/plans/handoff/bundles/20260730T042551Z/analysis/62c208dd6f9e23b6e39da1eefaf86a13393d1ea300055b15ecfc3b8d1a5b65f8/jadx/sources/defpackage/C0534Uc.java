package defpackage;

/* renamed from: Uc, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0534Uc {

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Az f3938do;

    /* renamed from: do, reason: not valid java name */
    public static final C0577Wb f3934do = new C0577Wb();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final String f3935do = m2457do("hts/cahyiseot-agolai.o/1frlglgc/aclg", "tp:/rsltcrprsp.ogepscmv/ieo/eaybtho");

    /* renamed from: if, reason: not valid java name */
    public static final String f3937if = m2457do("AzSBpY4F0rHiHFdinTvM", "IayrSTFL9eJ69YeSUO2");

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final C3697sh f3936do = new C3697sh(5);

    public C0534Uc(Az az) {
        this.f3938do = az;
    }

    /* renamed from: do, reason: not valid java name */
    public static String m2457do(String str, String str2) {
        int length = str.length() - str2.length();
        if (length < 0 || length > 1) {
            throw new IllegalArgumentException("Invalid input received");
        }
        StringBuilder sb = new StringBuilder(str2.length() + str.length());
        for (int i = 0; i < str.length(); i++) {
            sb.append(str.charAt(i));
            if (str2.length() > i) {
                sb.append(str2.charAt(i));
            }
        }
        return sb.toString();
    }
}
