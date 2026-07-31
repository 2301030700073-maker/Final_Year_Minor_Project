package org.ocpsoft.prettytime.impl;

import org.ocpsoft.prettytime.TimeUnit;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class ResourcesTimeUnit implements TimeUnit {
    public static long ID;
    public final long id;
    public long maxQuantity = 0;
    public long millisPerUnit = 1;

    public ResourcesTimeUnit() {
        long j = ID;
        ID = 1 + j;
        this.id = j;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ResourcesTimeUnit resourcesTimeUnit = (ResourcesTimeUnit) obj;
        return this.maxQuantity == resourcesTimeUnit.maxQuantity && this.millisPerUnit == resourcesTimeUnit.millisPerUnit;
    }

    public abstract String getResourceKeyPrefix();

    public final int hashCode() {
        long j = this.id;
        return 31 + ((int) (j ^ (j >>> 32)));
    }

    public final String toString() {
        return getResourceKeyPrefix();
    }
}
