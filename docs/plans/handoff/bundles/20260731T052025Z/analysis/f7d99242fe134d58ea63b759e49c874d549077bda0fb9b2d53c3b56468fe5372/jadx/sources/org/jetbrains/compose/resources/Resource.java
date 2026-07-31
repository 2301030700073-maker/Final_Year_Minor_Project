package org.jetbrains.compose.resources;

import java.util.Set;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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
