package com.fasterxml.jackson.core.io;

import androidx.fragment.app.LogWriter;
import j$.util.Objects;
import java.io.File;
import java.io.Serializable;
import java.net.URI;
import java.net.URL;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ContentReference implements Serializable {
    public final transient Object _rawContent;

    public ContentReference(LogWriter logWriter) {
        this._rawContent = logWriter;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof ContentReference)) {
            return false;
        }
        Object obj2 = ((ContentReference) obj)._rawContent;
        Object obj3 = this._rawContent;
        if (obj3 == null) {
            return obj2 == null;
        }
        if (obj2 == null) {
            return false;
        }
        return ((obj3 instanceof File) || (obj3 instanceof URL) || (obj3 instanceof URI)) ? obj3.equals(obj2) : obj3 == obj2;
    }

    public final int hashCode() {
        return Objects.hashCode(this._rawContent);
    }
}
