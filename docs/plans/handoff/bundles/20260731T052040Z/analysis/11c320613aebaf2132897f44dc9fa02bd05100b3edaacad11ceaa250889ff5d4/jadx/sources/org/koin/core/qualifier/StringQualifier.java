package org.koin.core.qualifier;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class StringQualifier implements Qualifier {
    public final boolean equals(Object obj) {
        return this == obj || (obj instanceof StringQualifier);
    }

    @Override // org.koin.core.qualifier.Qualifier
    public final String getValue() {
        return "_root_";
    }

    public final int hashCode() {
        return -1466499394;
    }

    public final String toString() {
        return "_root_";
    }
}
