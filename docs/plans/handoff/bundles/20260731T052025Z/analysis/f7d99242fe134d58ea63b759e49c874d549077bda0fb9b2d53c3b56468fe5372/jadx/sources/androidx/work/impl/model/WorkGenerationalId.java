package androidx.work.impl.model;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class WorkGenerationalId {
    public final int generation;
    public final String workSpecId;

    public WorkGenerationalId(String str, int i) {
        str.getClass();
        this.workSpecId = str;
        this.generation = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof WorkGenerationalId)) {
            return false;
        }
        WorkGenerationalId workGenerationalId = (WorkGenerationalId) obj;
        return Intrinsics.areEqual(this.workSpecId, workGenerationalId.workSpecId) && this.generation == workGenerationalId.generation;
    }

    public final int hashCode() {
        return (this.workSpecId.hashCode() * 31) + this.generation;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("WorkGenerationalId(workSpecId=");
        sb.append(this.workSpecId);
        sb.append(", generation=");
        return CameraDevices$CC.m(sb, this.generation, ')');
    }
}
