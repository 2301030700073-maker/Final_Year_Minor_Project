package com.fasterxml.jackson.databind;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public interface BeanProperty {
    public static final JsonFormat.Value EMPTY_FORMAT = new JsonFormat.Value();

    static {
        JsonInclude.Value value = JsonInclude.Value.EMPTY;
    }

    JsonFormat.Value findPropertyFormat(MapperConfig mapperConfig, Class cls);

    JsonInclude.Value findPropertyInclusion(MapperConfig mapperConfig, Class cls);

    AnnotatedMember getMember();
}
