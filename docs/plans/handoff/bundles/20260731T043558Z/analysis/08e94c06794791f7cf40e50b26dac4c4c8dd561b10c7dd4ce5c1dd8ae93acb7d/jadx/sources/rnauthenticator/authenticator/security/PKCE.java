package rnauthenticator.authenticator.security;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;

/* compiled from: PKCE.kt */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0010\u0018\u00002\u00020\u0001:\u0001\u0015B\u0011\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0006\u0010\u0011\u001a\u00020\u0012J\b\u0010\u0013\u001a\u00020\tH\u0002J\b\u0010\u0014\u001a\u00020\tH\u0002R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u001a\u0010\b\u001a\u00020\tX\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u001a\u0010\u000e\u001a\u00020\tX\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u000b\"\u0004\b\u0010\u0010\r¨\u0006\u0016"}, d2 = {"Lrnauthenticator/authenticator/security/PKCE;", "", "challengeMethod", "Lrnauthenticator/authenticator/security/PKCE$ChallengeMethod;", "<init>", "(Lrnauthenticator/authenticator/security/PKCE$ChallengeMethod;)V", "getChallengeMethod", "()Lrnauthenticator/authenticator/security/PKCE$ChallengeMethod;", "codeVerifier", "", "getCodeVerifier", "()Ljava/lang/String;", "setCodeVerifier", "(Ljava/lang/String;)V", "codeChallenge", "getCodeChallenge", "setCodeChallenge", "generateKeys", "", "generateCodeVerifier", "generateCodeChallenge", "ChallengeMethod", "propertyguru_react-native-authenticator_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes3.dex */
public class PKCE {
    private final ChallengeMethod challengeMethod;
    public String codeChallenge;
    public String codeVerifier;

    /* compiled from: PKCE.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ChallengeMethod.values().length];
            try {
                iArr[ChallengeMethod.SHA256.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public PKCE() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: PKCE.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\b¨\u0006\t"}, d2 = {"Lrnauthenticator/authenticator/security/PKCE$ChallengeMethod;", "", "value", "", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "getValue", "()Ljava/lang/String;", "SHA256", "propertyguru_react-native-authenticator_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class ChallengeMethod {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ ChallengeMethod[] $VALUES;
        public static final ChallengeMethod SHA256 = new ChallengeMethod("SHA256", 0, "S256");
        private final String value;

        private static final /* synthetic */ ChallengeMethod[] $values() {
            return new ChallengeMethod[]{SHA256};
        }

        public static EnumEntries<ChallengeMethod> getEntries() {
            return $ENTRIES;
        }

        private ChallengeMethod(String str, int i, String str2) {
            this.value = str2;
        }

        public final String getValue() {
            return this.value;
        }

        static {
            ChallengeMethod[] $values = $values();
            $VALUES = $values;
            $ENTRIES = EnumEntriesKt.enumEntries($values);
        }

        public static ChallengeMethod valueOf(String str) {
            return (ChallengeMethod) Enum.valueOf(ChallengeMethod.class, str);
        }

        public static ChallengeMethod[] values() {
            return (ChallengeMethod[]) $VALUES.clone();
        }
    }

    public PKCE(ChallengeMethod challengeMethod) {
        Intrinsics.checkNotNullParameter(challengeMethod, "challengeMethod");
        this.challengeMethod = challengeMethod;
    }

    public /* synthetic */ PKCE(ChallengeMethod challengeMethod, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? ChallengeMethod.SHA256 : challengeMethod);
    }

    public final ChallengeMethod getChallengeMethod() {
        return this.challengeMethod;
    }

    public final String getCodeVerifier() {
        String str = this.codeVerifier;
        if (str != null) {
            return str;
        }
        Intrinsics.throwUninitializedPropertyAccessException("codeVerifier");
        return null;
    }

    public final void setCodeVerifier(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.codeVerifier = str;
    }

    public final String getCodeChallenge() {
        String str = this.codeChallenge;
        if (str != null) {
            return str;
        }
        Intrinsics.throwUninitializedPropertyAccessException("codeChallenge");
        return null;
    }

    public final void setCodeChallenge(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.codeChallenge = str;
    }

    public final void generateKeys() {
        setCodeVerifier(generateCodeVerifier());
        setCodeChallenge(generateCodeChallenge());
    }

    private final String generateCodeVerifier() {
        String format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.ENGLISH).format(new Date());
        Intrinsics.checkNotNull(format);
        byte[] bytes = format.getBytes(Charsets.UTF_8);
        Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
        return EncryptionKt.toHex(EncryptionKt.toSHA256(bytes));
    }

    private final String generateCodeChallenge() {
        try {
            byte[] bytes = getCodeVerifier().getBytes(Charsets.UTF_8);
            Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
            if (WhenMappings.$EnumSwitchMapping$0[this.challengeMethod.ordinal()] != 1) {
                throw new NoWhenBranchMatchedException();
            }
            byte[] bytes2 = EncryptionKt.toHex(EncryptionKt.toSHA256(bytes)).getBytes(Charsets.UTF_8);
            Intrinsics.checkNotNullExpressionValue(bytes2, "getBytes(...)");
            return EncryptionKt.toBase64(bytes2, 2);
        } catch (Exception e) {
            throw new IllegalStateException("Unable to generate code challenge", e);
        }
    }
}
