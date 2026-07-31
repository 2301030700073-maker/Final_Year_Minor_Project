package com.fasterxml.jackson.core;

import java.io.IOException;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class JsonProcessingException extends IOException {
    @Override // java.lang.Throwable
    public String getMessage() {
        String message = super.getMessage();
        return message == null ? "N/A" : message;
    }

    public final String getOriginalMessage() {
        return super.getMessage();
    }

    public abstract Object getProcessor();

    @Override // java.lang.Throwable
    public String toString() {
        return getClass().getName() + ": " + getMessage();
    }
}
