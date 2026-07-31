package com.fsck.k9.crypto;

import java.io.Serializable;
import kotlin.jvm.internal.Intrinsics;
import okio.PriorityQueue;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class EncryptionResult {
    public final String encryptionType;
    public final PriorityQueue previewResult;

    public EncryptionResult() {
        PriorityQueue priorityQueue = new PriorityQueue(3, (Serializable) null, 8);
        this.encryptionType = "openpgp";
        this.previewResult = priorityQueue;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof EncryptionResult)) {
            return false;
        }
        EncryptionResult encryptionResult = (EncryptionResult) obj;
        return Intrinsics.areEqual(this.encryptionType, encryptionResult.encryptionType) && Intrinsics.areEqual(this.previewResult, encryptionResult.previewResult);
    }

    public final int hashCode() {
        return (this.previewResult.hashCode() + (this.encryptionType.hashCode() * 961)) * 961;
    }

    public final String toString() {
        return "EncryptionResult(encryptionType=" + this.encryptionType + ", attachmentCount=0, previewResult=" + this.previewResult + ", textForSearchIndex=null, extraContentValues=null)";
    }
}
