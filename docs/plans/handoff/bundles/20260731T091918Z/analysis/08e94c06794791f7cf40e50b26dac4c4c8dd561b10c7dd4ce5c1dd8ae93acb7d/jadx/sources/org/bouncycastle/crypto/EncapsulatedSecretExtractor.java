package org.bouncycastle.crypto;

/* loaded from: classes6.dex */
public interface EncapsulatedSecretExtractor {
    byte[] extractSecret(byte[] bArr);

    int getEncapsulationLength();
}
