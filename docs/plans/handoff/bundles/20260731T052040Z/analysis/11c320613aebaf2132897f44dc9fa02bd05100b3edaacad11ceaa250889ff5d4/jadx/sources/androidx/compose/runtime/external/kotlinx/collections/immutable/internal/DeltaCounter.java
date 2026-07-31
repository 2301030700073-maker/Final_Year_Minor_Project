package androidx.compose.runtime.external.kotlinx.collections.immutable.internal;

import androidx.compose.ui.Modifier;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class DeltaCounter {
    public int count;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof DeltaCounter) && this.count == ((DeltaCounter) obj).count;
    }

    public final int hashCode() {
        return this.count;
    }

    public final String toString() {
        return Modifier.CC.m(new StringBuilder("DeltaCounter(count="), this.count, ')');
    }
}
