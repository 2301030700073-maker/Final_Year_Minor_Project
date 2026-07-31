package com.fasterxml.jackson.databind.jdk14;

import coil3.size.ViewSizeResolver$CC;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import java.lang.reflect.Method;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class JDK14Util$RecordAccessor {
    public static final JDK14Util$RecordAccessor INSTANCE;
    public static final RuntimeException PROBLEM;
    public final Method RECORD_COMPONENT_GET_NAME;
    public final Method RECORD_GET_RECORD_COMPONENTS;

    static {
        JDK14Util$RecordAccessor jDK14Util$RecordAccessor = null;
        try {
            e = null;
            jDK14Util$RecordAccessor = new JDK14Util$RecordAccessor();
        } catch (RuntimeException e) {
            e = e;
        }
        INSTANCE = jDK14Util$RecordAccessor;
        PROBLEM = e;
    }

    public JDK14Util$RecordAccessor() {
        try {
            this.RECORD_GET_RECORD_COMPONENTS = Class.class.getMethod("getRecordComponents", null);
            Class<?> cls = Class.forName("java.lang.reflect.RecordComponent");
            this.RECORD_COMPONENT_GET_NAME = cls.getMethod("getName", null);
            cls.getMethod("getType", null);
        } catch (Exception e) {
            ContextsKt$$ExternalSyntheticBUOutline0.m(ViewSizeResolver$CC.m("Failed to access Methods needed to support `java.lang.Record`: (", e.getClass().getName(), ") ", e.getMessage()), (Throwable) e);
            throw null;
        }
    }
}
