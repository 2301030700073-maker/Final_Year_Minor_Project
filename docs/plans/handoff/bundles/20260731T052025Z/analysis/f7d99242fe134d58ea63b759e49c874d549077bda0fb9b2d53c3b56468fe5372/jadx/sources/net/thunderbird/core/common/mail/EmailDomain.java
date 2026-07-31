package net.thunderbird.core.common.mail;

import java.util.Locale;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class EmailDomain {
    public final String normalized;
    public final String value;

    public EmailDomain(String str) {
        this.value = str;
        String lowerCase = str.toLowerCase(Locale.ROOT);
        lowerCase.getClass();
        this.normalized = lowerCase;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || EmailDomain.class != obj.getClass()) {
            return false;
        }
        return Intrinsics.areEqual(this.normalized, ((EmailDomain) obj).normalized);
    }

    public final int hashCode() {
        return this.normalized.hashCode();
    }

    public final String toString() {
        return this.value;
    }
}
