package com.fasterxml.jackson.databind;

import com.fasterxml.jackson.core.json.WriterBasedJsonGenerator;
import com.fasterxml.jackson.core.util.DefaultIndenter;
import java.io.Serializable;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class ObjectWriter implements Serializable {
    public boolean isInline() {
        return !(this instanceof DefaultIndenter);
    }

    public abstract void writeIndentation(WriterBasedJsonGenerator writerBasedJsonGenerator, int i);
}
