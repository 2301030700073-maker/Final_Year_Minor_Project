package com.fasterxml.jackson.core;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class JsonGenerationException extends JsonProcessingException {
    public final transient JsonGenerator _processor;

    public JsonGenerationException(String str, JsonGenerator jsonGenerator) {
        super(str, null);
        this._processor = jsonGenerator;
    }

    @Override // com.fasterxml.jackson.core.JsonProcessingException
    public final Object getProcessor() {
        return this._processor;
    }
}
