package org.minidns.dnssec;

import java.io.IOException;
import java.security.spec.InvalidKeySpecException;
import kotlin.io.FileSystemException;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DnssecValidationFailedException$DataMalformedException extends FileSystemException {
    public DnssecValidationFailedException$DataMalformedException(IOException iOException) {
        super("Malformed data", iOException);
    }

    public DnssecValidationFailedException$DataMalformedException(InvalidKeySpecException invalidKeySpecException) {
        super("Invalid key spec", invalidKeySpecException);
    }
}
