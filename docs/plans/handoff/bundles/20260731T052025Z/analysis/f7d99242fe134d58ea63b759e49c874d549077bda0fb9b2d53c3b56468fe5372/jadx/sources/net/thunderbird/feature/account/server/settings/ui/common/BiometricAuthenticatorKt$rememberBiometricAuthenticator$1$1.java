package net.thunderbird.feature.account.server.settings.ui.common;

import androidx.navigation.compose.NavHostKt$NavHost$25$1;
import net.thunderbird.core.outcome.Outcome;
import net.thunderbird.feature.account.server.settings.ui.common.AuthenticationError;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class BiometricAuthenticatorKt$rememberBiometricAuthenticator$1$1 implements Authenticator {
    public static final BiometricAuthenticatorKt$rememberBiometricAuthenticator$1$1 INSTANCE = new BiometricAuthenticatorKt$rememberBiometricAuthenticator$1$1();

    @Override // net.thunderbird.feature.account.server.settings.ui.common.Authenticator
    public final Object authenticate(NavHostKt$NavHost$25$1 navHostKt$NavHost$25$1) {
        return new Outcome.Failure(AuthenticationError.UnableToStart.INSTANCE, null);
    }
}
