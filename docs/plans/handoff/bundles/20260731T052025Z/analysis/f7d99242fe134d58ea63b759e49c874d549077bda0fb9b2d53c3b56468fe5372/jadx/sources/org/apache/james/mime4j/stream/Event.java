package org.apache.james.mime4j.stream;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Event {
    public final String code;
    public static final Event MIME_BODY_PREMATURE_END = new Event("Body part ended prematurely. Boundary detected in header or EOF reached.");
    public static final Event HEADERS_PREMATURE_END = new Event("Unexpected end of headers detected. Higher level boundary detected or EOF reached.");
    public static final Event INVALID_HEADER = new Event("Invalid header encountered");
    public static final Event OBSOLETE_HEADER = new Event("Obsolete header encountered");

    public Event(String str) {
        this.code = str;
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (obj instanceof Event) {
            return this.code.equals(((Event) obj).code);
        }
        return false;
    }

    public final int hashCode() {
        return this.code.hashCode();
    }

    public final String toString() {
        return this.code;
    }
}
