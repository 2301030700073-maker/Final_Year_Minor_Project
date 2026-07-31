package com.fasterxml.jackson.databind.cfg;

import java.io.Serializable;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import kotlin.ExceptionsKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ContextAttributes$Impl extends ExceptionsKt implements Serializable {
    public static final ContextAttributes$Impl EMPTY;
    public static final Object NULL_SURROGATE;
    public transient HashMap _nonShared;

    static {
        Map map = Collections.EMPTY_MAP;
        Map map2 = Collections.EMPTY_MAP;
        ContextAttributes$Impl contextAttributes$Impl = new ContextAttributes$Impl();
        contextAttributes$Impl._nonShared = null;
        EMPTY = contextAttributes$Impl;
        NULL_SURROGATE = new Object();
    }
}
