package com.android.launcher3.util;

import android.content.ComponentName;
import android.os.UserHandle;
import java.util.Arrays;

/* loaded from: classes.dex */
public class ComponentKey {
    public final ComponentName componentName;
    public final int mHashCode;
    public final UserHandle user;

    public ComponentKey(ComponentName componentName, UserHandle userHandle) {
        if (componentName == null || userHandle == null) {
            throw null;
        }
        this.componentName = componentName;
        this.user = userHandle;
        this.mHashCode = Arrays.hashCode(new Object[]{componentName, userHandle});
    }

    public boolean equals(Object obj) {
        ComponentKey componentKey = (ComponentKey) obj;
        return componentKey.componentName.equals(this.componentName) && componentKey.user.equals(this.user);
    }

    public int hashCode() {
        return this.mHashCode;
    }

    public String toString() {
        return this.componentName.flattenToString() + "#" + this.user.hashCode();
    }
}
