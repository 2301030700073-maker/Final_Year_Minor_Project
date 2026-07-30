package androidx.datastore.preferences.protobuf;

import java.io.IOException;

/* renamed from: androidx.datastore.preferences.protobuf.while, reason: invalid class name */
/* loaded from: classes.dex */
public class Cwhile extends IOException {

    /* renamed from: for, reason: not valid java name */
    public static final /* synthetic */ int f6695for = 0;

    /* renamed from: androidx.datastore.preferences.protobuf.while$do, reason: invalid class name */
    public static class Cdo extends Cwhile {
        public Cdo() {
            super("Protocol message tag had invalid wire type.");
        }
    }

    public Cwhile(String str) {
        super(str);
    }

    /* renamed from: case, reason: not valid java name */
    public static Cwhile m4053case() {
        return new Cwhile("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    /* renamed from: do, reason: not valid java name */
    public static Cwhile m4054do() {
        return new Cwhile("Protocol message had invalid UTF-8.");
    }

    /* renamed from: for, reason: not valid java name */
    public static Cwhile m4055for() {
        return new Cwhile("CodedInputStream encountered a malformed varint.");
    }

    /* renamed from: if, reason: not valid java name */
    public static Cdo m4056if() {
        return new Cdo();
    }

    /* renamed from: new, reason: not valid java name */
    public static Cwhile m4057new() {
        return new Cwhile("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
    }

    /* renamed from: try, reason: not valid java name */
    public static Cwhile m4058try() {
        return new Cwhile("Failed to parse the message.");
    }
}
