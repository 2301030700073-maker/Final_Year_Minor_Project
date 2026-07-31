package app.k9mail.feature.account.server.certificate.domain.usecase;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class HashAlgorithm {
    public static final /* synthetic */ HashAlgorithm[] $VALUES;
    public static final HashAlgorithm SHA_1;
    public static final HashAlgorithm SHA_256;
    public static final HashAlgorithm SHA_512;

    static {
        HashAlgorithm hashAlgorithm = new HashAlgorithm("SHA_1", 0);
        SHA_1 = hashAlgorithm;
        HashAlgorithm hashAlgorithm2 = new HashAlgorithm("SHA_256", 1);
        SHA_256 = hashAlgorithm2;
        HashAlgorithm hashAlgorithm3 = new HashAlgorithm("SHA_512", 2);
        SHA_512 = hashAlgorithm3;
        $VALUES = new HashAlgorithm[]{hashAlgorithm, hashAlgorithm2, hashAlgorithm3};
    }

    public static HashAlgorithm valueOf(String str) {
        return (HashAlgorithm) Enum.valueOf(HashAlgorithm.class, str);
    }

    public static HashAlgorithm[] values() {
        return (HashAlgorithm[]) $VALUES.clone();
    }
}
