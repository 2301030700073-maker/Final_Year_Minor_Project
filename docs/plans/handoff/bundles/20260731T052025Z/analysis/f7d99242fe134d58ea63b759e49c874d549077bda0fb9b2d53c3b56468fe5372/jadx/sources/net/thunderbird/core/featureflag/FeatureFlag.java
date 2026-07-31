package net.thunderbird.core.featureflag;

import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FeatureFlag {
    public final boolean enabled;
    public final String key;

    public FeatureFlag(String str, boolean z) {
        str.getClass();
        this.key = str;
        this.enabled = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FeatureFlag)) {
            return false;
        }
        FeatureFlag featureFlag = (FeatureFlag) obj;
        return Intrinsics.areEqual(this.key, featureFlag.key) && this.enabled == featureFlag.enabled;
    }

    public final int hashCode() {
        return (this.key.hashCode() * 31) + (this.enabled ? 1231 : 1237);
    }

    public final String toString() {
        return "FeatureFlag(key=" + FeatureFlagKey.m1029toStringimpl(this.key) + ", enabled=" + this.enabled + ")";
    }
}
