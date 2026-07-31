package androidx.biometric;

import android.hardware.biometrics.BiometricPrompt;
import java.security.Signature;
import javax.crypto.Cipher;
import javax.crypto.Mac;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class CryptoObjectUtils$Api28Impl {
    public static BiometricPrompt.CryptoObject create(Cipher cipher) {
        return new BiometricPrompt.CryptoObject(cipher);
    }

    public static Cipher getCipher(BiometricPrompt.CryptoObject cryptoObject) {
        return cryptoObject.getCipher();
    }

    public static Mac getMac(BiometricPrompt.CryptoObject cryptoObject) {
        return cryptoObject.getMac();
    }

    public static Signature getSignature(BiometricPrompt.CryptoObject cryptoObject) {
        return cryptoObject.getSignature();
    }

    public static BiometricPrompt.CryptoObject create(Signature signature) {
        return new BiometricPrompt.CryptoObject(signature);
    }

    public static BiometricPrompt.CryptoObject create(Mac mac) {
        return new BiometricPrompt.CryptoObject(mac);
    }
}
