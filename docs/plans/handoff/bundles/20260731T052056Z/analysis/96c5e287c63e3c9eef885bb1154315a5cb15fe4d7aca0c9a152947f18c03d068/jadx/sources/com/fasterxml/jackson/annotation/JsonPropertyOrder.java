package com.fasterxml.jackson.annotation;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes.dex */
public @interface JsonPropertyOrder {
    boolean alphabetic() default false;

    String[] value() default {};
}
