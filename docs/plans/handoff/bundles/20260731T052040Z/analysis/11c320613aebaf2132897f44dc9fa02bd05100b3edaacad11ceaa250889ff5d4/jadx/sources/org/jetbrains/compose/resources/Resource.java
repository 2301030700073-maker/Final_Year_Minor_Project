package org.jetbrains.compose.resources;

import java.util.Set;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class Resource {
    public final String id;
    public final Set items;

    public Resource(String str, Set set) {
        this.id = str;
        this.items = set;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return this.id.equals(((Resource) obj).id);
    }

    public final int hashCode() {
        return this.id.hashCode();
    }
}
