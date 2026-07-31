package net.thunderbird.feature.account.server.settings.ui.common;

import android.os.Build;
import android.text.TextUtils;
import androidx.appcompat.app.AppCompatActivity;
import androidx.biometric.BiometricPrompt;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.cardview.widget.CardView;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.compose.ui.unit.IntRectKt;
import androidx.navigation.compose.NavHostKt$NavHost$25$1;
import androidx.tracing.TraceApi29Impl;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import java.util.concurrent.Executor;
import kotlin.Unit;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.NotCompleted;
import net.thunderbird.core.logging.legacy.Log;
import net.thunderbird.core.outcome.Outcome;
import net.thunderbird.feature.account.server.settings.ui.common.AuthenticationError;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class BiometricAuthenticator implements Authenticator {
    public final AppCompatActivity activity;
    public final String subtitle;
    public final String title;

    public BiometricAuthenticator(AppCompatActivity appCompatActivity, String str, String str2) {
        this.activity = appCompatActivity;
        this.title = str;
        this.subtitle = str2;
    }

    /* JADX WARN: Type inference failed for: r9v2, types: [net.thunderbird.feature.account.server.settings.ui.common.BiometricAuthenticator$authenticate$2$authenticationCallback$1] */
    @Override // net.thunderbird.feature.account.server.settings.ui.common.Authenticator
    public final Object authenticate(NavHostKt$NavHost$25$1 navHostKt$NavHost$25$1) {
        final CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(1, AtomicFU.intercepted(navHostKt$NavHost$25$1));
        cancellableContinuationImpl.initCancellability();
        ?? r9 = new IntRectKt() { // from class: net.thunderbird.feature.account.server.settings.ui.common.BiometricAuthenticator$authenticate$2$authenticationCallback$1
            @Override // androidx.compose.ui.unit.IntRectKt
            public final void onAuthenticationError(int i, CharSequence charSequence) {
                charSequence.getClass();
                Object obj = (i == 11 || i == 12 || i == 14) ? AuthenticationError.NotAvailable.INSTANCE : AuthenticationError.Failed.INSTANCE;
                CancellableContinuationImpl cancellableContinuationImpl2 = CancellableContinuationImpl.this;
                if (cancellableContinuationImpl2.getState$kotlinx_coroutines_core() instanceof NotCompleted) {
                    cancellableContinuationImpl2.resumeWith(new Outcome.Failure(obj, null));
                }
            }

            @Override // androidx.compose.ui.unit.IntRectKt
            public final void onAuthenticationSucceeded(BiometricPrompt.AuthenticationResult authenticationResult) {
                authenticationResult.getClass();
                CancellableContinuationImpl cancellableContinuationImpl2 = CancellableContinuationImpl.this;
                if (cancellableContinuationImpl2.getState$kotlinx_coroutines_core() instanceof NotCompleted) {
                    cancellableContinuationImpl2.resumeWith(new Outcome.Success(Unit.INSTANCE));
                }
            }
        };
        String str = this.title;
        if (TextUtils.isEmpty(str)) {
            UriKt$$ExternalSyntheticBUOutline0.m("Title must be set and non-empty.");
            return null;
        }
        if (!IntOffsetKt.isSupportedCombination(33023)) {
            UriKt$$ExternalSyntheticBUOutline0.m(CameraDevices$CC.m(new StringBuilder("Authenticator combination is unsupported on API "), Build.VERSION.SDK_INT, ": BIOMETRIC_WEAK | DEVICE_CREDENTIAL"));
            return null;
        }
        boolean isDeviceCredentialAllowed = IntOffsetKt.isDeviceCredentialAllowed(33023);
        if (TextUtils.isEmpty(null) && !isDeviceCredentialAllowed) {
            UriKt$$ExternalSyntheticBUOutline0.m("Negative text must be set and non-empty.");
            return null;
        }
        if (!TextUtils.isEmpty(null) && isDeviceCredentialAllowed) {
            UriKt$$ExternalSyntheticBUOutline0.m("Negative text must not be set if device credential authentication is allowed.");
            return null;
        }
        CardView.AnonymousClass1 anonymousClass1 = new CardView.AnonymousClass1(4, str, this.subtitle, false);
        AppCompatActivity appCompatActivity = this.activity;
        Executor mainExecutor = TraceApi29Impl.getMainExecutor(appCompatActivity);
        mainExecutor.getClass();
        try {
            new BiometricPrompt(appCompatActivity, mainExecutor, (BiometricAuthenticator$authenticate$2$authenticationCallback$1) r9).authenticate(anonymousClass1);
        } catch (Exception e) {
            Log.e("BiometricAuthenticator", "Failed to start biometric authentication", e);
            if (cancellableContinuationImpl.getState$kotlinx_coroutines_core() instanceof NotCompleted) {
                cancellableContinuationImpl.resumeWith(new Outcome.Failure(AuthenticationError.UnableToStart.INSTANCE, null));
            }
        }
        cancellableContinuationImpl.invokeOnCancellation(BiometricAuthenticator$authenticate$2$1.INSTANCE);
        return cancellableContinuationImpl.getResult();
    }
}
