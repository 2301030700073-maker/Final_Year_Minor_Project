package com.google.protobuf;

import java.io.IOException;

/* renamed from: com.google.protobuf.class, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cclass extends IOException {

    /* renamed from: for, reason: not valid java name */
    public static final /* synthetic */ int f12047for = 0;

    /* renamed from: com.google.protobuf.class$do, reason: invalid class name */
    public static class Cdo extends Cclass {
        public Cdo() {
            super("Protocol message tag had invalid wire type.");
        }
    }

    public Cclass(String str) {
        super(str);
    }

    /* renamed from: do, reason: not valid java name */
    public static Cclass m6190do() {
        return new Cclass("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }
}
