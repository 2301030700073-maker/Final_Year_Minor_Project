package org.jetbrains.compose.resources;

import androidx.compose.ui.Modifier;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class RegionQualifier implements Qualifier {
    public final String region;

    public RegionQualifier(String str) {
        str.getClass();
        this.region = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || RegionQualifier.class != obj.getClass()) {
            return false;
        }
        return Intrinsics.areEqual(this.region, ((RegionQualifier) obj).region);
    }

    public final int hashCode() {
        return this.region.hashCode();
    }

    public final String toString() {
        return Modifier.CC.m("RegionQualifier(region='", this.region, "')");
    }
}
