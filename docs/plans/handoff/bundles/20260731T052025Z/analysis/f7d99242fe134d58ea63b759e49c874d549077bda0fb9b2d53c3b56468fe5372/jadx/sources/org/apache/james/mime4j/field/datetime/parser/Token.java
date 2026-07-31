package org.apache.james.mime4j.field.datetime.parser;

import java.io.Serializable;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Token implements Serializable {
    public int beginColumn;
    public int beginLine;
    public String image;
    public int kind;
    public Token next;

    public final String toString() {
        return this.image;
    }
}
