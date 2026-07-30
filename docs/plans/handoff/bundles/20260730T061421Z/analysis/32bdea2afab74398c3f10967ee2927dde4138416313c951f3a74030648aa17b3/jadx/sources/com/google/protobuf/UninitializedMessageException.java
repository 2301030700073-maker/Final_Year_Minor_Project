package com.google.protobuf;

import java.util.List;

/* loaded from: classes.dex */
public class UninitializedMessageException extends RuntimeException {
    public static final long serialVersionUID = -7466929953374883507L;
    public final List missingFields;

    public UninitializedMessageException() {
        super("Message was missing required fields.  (Lite runtime could not determine which fields were missing).");
        this.missingFields = null;
    }
}
