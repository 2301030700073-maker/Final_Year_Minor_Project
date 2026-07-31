package com.fasterxml.jackson.core;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public enum StreamWriteCapability {
    CAN_WRITE_BINARY_NATIVELY,
    CAN_WRITE_FORMATTED_NUMBERS;

    private final boolean _defaultState = false;
    private final int _mask = 1 << ordinal();

    StreamWriteCapability() {
    }

    public final boolean enabledByDefault() {
        return this._defaultState;
    }

    public final int getMask() {
        return this._mask;
    }
}
