package com.fsck.k9.ui.settings;

import kotlin.jvm.internal.Intrinsics;
import kotlinx.collections.immutable.ImmutableList;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AboutContract$State {
    public final ImmutableList libraries;
    public final String version;

    public AboutContract$State(String str, ImmutableList immutableList) {
        immutableList.getClass();
        this.version = str;
        this.libraries = immutableList;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AboutContract$State)) {
            return false;
        }
        AboutContract$State aboutContract$State = (AboutContract$State) obj;
        return this.version.equals(aboutContract$State.version) && Intrinsics.areEqual(this.libraries, aboutContract$State.libraries);
    }

    public final int hashCode() {
        return this.libraries.hashCode() + (this.version.hashCode() * 31);
    }

    public final String toString() {
        return "State(version=" + this.version + ", libraries=" + this.libraries + ")";
    }
}
