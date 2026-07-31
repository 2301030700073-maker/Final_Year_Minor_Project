package org.jsoup.parser;

import j$.util.Objects;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class Tag implements Cloneable {
    public final String namespace;
    public final String normalName;
    public int options = 0;
    public String tagName;

    public Tag(String str, String str2, String str3) {
        this.tagName = str;
        this.normalName = str2;
        this.namespace = str3;
    }

    public final Tag clone() {
        try {
            return (Tag) super.clone();
        } catch (CloneNotSupportedException e) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m((Throwable) e);
            return null;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Tag)) {
            return false;
        }
        Tag tag = (Tag) obj;
        return Objects.equals(this.tagName, tag.tagName) && Objects.equals(this.namespace, tag.namespace) && Objects.equals(this.normalName, tag.normalName) && this.options == tag.options;
    }

    public final int hashCode() {
        return Objects.hash(this.tagName, this.namespace);
    }

    public final boolean is(int i) {
        return (this.options & i) != 0;
    }

    public final boolean isEmpty() {
        return (this.options & 2) != 0;
    }

    public final boolean isSelfClosing() {
        int i = this.options;
        return ((i & 16) == 0 && (i & 2) == 0) ? false : true;
    }

    public final void set(int i) {
        this.options = i | this.options | 1;
    }

    public final TokeniserState textState() {
        if (is(128)) {
            return TokeniserState.Rcdata;
        }
        if (is(256)) {
            return TokeniserState.Rawtext;
        }
        return null;
    }

    public final String toString() {
        return this.tagName;
    }
}
