package org.slf4j.helpers;

import java.io.Serializable;
import javax.net.ssl.SSLException;
import org.slf4j.Logger;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class NOPLogger implements Logger, Serializable {
    public static final NOPLogger NOP_LOGGER = new NOPLogger();

    @Override // org.slf4j.Logger
    public final String getName() {
        return "NOP";
    }

    @Override // org.slf4j.Logger
    public final boolean isDebugEnabled() {
        return false;
    }

    public final String toString() {
        return NOPLogger.class.getName().concat("(NOP)");
    }

    @Override // org.slf4j.Logger
    public final void debug(String str, SSLException sSLException) {
    }
}
