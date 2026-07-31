package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import androidx.compose.animation.core.Animation;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.JvmMetadataVersion;
import kotlin.reflect.jvm.internal.impl.name.ClassId;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class IncompatibleVersionErrorData {
    public final Object actualVersion;
    public final ClassId classId;
    public final Object compilerVersion;
    public final JvmMetadataVersion expectedVersion;
    public final String filePath;
    public final Object languageVersion;

    public IncompatibleVersionErrorData(Object obj, Object obj2, JvmMetadataVersion jvmMetadataVersion, JvmMetadataVersion jvmMetadataVersion2, String str, ClassId classId) {
        this.actualVersion = obj;
        this.compilerVersion = obj2;
        this.languageVersion = jvmMetadataVersion;
        this.expectedVersion = jvmMetadataVersion2;
        this.filePath = str;
        this.classId = classId;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof IncompatibleVersionErrorData)) {
            return false;
        }
        IncompatibleVersionErrorData incompatibleVersionErrorData = (IncompatibleVersionErrorData) obj;
        return this.actualVersion.equals(incompatibleVersionErrorData.actualVersion) && Intrinsics.areEqual(this.compilerVersion, incompatibleVersionErrorData.compilerVersion) && Intrinsics.areEqual(this.languageVersion, incompatibleVersionErrorData.languageVersion) && this.expectedVersion.equals(incompatibleVersionErrorData.expectedVersion) && this.filePath.equals(incompatibleVersionErrorData.filePath) && this.classId.equals(incompatibleVersionErrorData.classId);
    }

    public final int hashCode() {
        int hashCode = this.actualVersion.hashCode() * 31;
        Object obj = this.compilerVersion;
        int hashCode2 = (hashCode + (obj == null ? 0 : obj.hashCode())) * 31;
        Object obj2 = this.languageVersion;
        return this.classId.hashCode() + Animation.CC.m((this.expectedVersion.hashCode() + ((hashCode2 + (obj2 != null ? obj2.hashCode() : 0)) * 31)) * 31, 31, this.filePath);
    }

    public final String toString() {
        return "IncompatibleVersionErrorData(actualVersion=" + this.actualVersion + ", compilerVersion=" + this.compilerVersion + ", languageVersion=" + this.languageVersion + ", expectedVersion=" + this.expectedVersion + ", filePath=" + this.filePath + ", classId=" + this.classId + ')';
    }
}
