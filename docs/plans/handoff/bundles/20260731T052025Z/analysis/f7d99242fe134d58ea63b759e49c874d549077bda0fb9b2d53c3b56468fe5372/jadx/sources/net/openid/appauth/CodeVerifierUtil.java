package net.openid.appauth;

import java.util.regex.Pattern;
import okio.Okio;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class CodeVerifierUtil {
    public static final Pattern REGEX_CODE_VERIFIER = Pattern.compile("^[0-9a-zA-Z\\-\\.\\_\\~]{43,128}$");

    public static void checkCodeVerifier(String str) {
        Okio.checkArgument("codeVerifier length is shorter than allowed by the PKCE specification", 43 <= str.length());
        Okio.checkArgument("codeVerifier length is longer than allowed by the PKCE specification", str.length() <= 128);
        Okio.checkArgument("codeVerifier string contains illegal characters", REGEX_CODE_VERIFIER.matcher(str).matches());
    }
}
