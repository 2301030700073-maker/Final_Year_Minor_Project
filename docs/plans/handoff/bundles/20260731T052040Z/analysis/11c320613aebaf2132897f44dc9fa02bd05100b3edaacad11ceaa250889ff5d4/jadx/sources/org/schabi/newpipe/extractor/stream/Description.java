package org.schabi.newpipe.extractor.stream;

import j$.util.Objects;
import java.io.Serializable;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class Description implements Serializable {
    public static final Description EMPTY_DESCRIPTION = new Description("", 3);
    private final String content;
    private final int type;

    public Description(String str, int i) {
        this.type = i;
        this.content = (String) Objects.requireNonNullElse(str, "");
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && Description.class == obj.getClass()) {
            Description description = (Description) obj;
            if (this.type == description.type && Objects.equals(this.content, description.content)) {
                return true;
            }
        }
        return false;
    }

    public final String getContent() {
        return this.content;
    }

    public final int getType() {
        return this.type;
    }

    public final int hashCode() {
        return Objects.hash(this.content, Integer.valueOf(this.type));
    }
}
