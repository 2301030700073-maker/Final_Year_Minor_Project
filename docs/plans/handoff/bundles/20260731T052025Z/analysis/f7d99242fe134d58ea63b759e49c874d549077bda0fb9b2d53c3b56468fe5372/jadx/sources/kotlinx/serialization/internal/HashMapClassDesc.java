package kotlinx.serialization.internal;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import java.util.List;
import kotlin.collections.EmptyList;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.StructureKind$MAP;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class HashMapClassDesc implements SerialDescriptor {
    public final SerialDescriptor keyDescriptor;
    public final String serialName;
    public final SerialDescriptor valueDescriptor;

    public HashMapClassDesc(String str, SerialDescriptor serialDescriptor, SerialDescriptor serialDescriptor2) {
        this.serialName = str;
        this.keyDescriptor = serialDescriptor;
        this.valueDescriptor = serialDescriptor2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof HashMapClassDesc)) {
            return false;
        }
        HashMapClassDesc hashMapClassDesc = (HashMapClassDesc) obj;
        return this.serialName.equals(hashMapClassDesc.serialName) && this.keyDescriptor.equals(hashMapClassDesc.keyDescriptor) && this.valueDescriptor.equals(hashMapClassDesc.valueDescriptor);
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public final /* bridge */ List getAnnotations() {
        return EmptyList.INSTANCE;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public final List getElementAnnotations(int i) {
        if (i >= 0) {
            return EmptyList.INSTANCE;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$2((Object) CameraDevices$CC.m(CameraDevices$CC.m30m(i, "Illegal index ", ", "), this.serialName, " expects only non-negative indices"));
        return null;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public final SerialDescriptor getElementDescriptor(int i) {
        if (i < 0) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2((Object) CameraDevices$CC.m(CameraDevices$CC.m30m(i, "Illegal index ", ", "), this.serialName, " expects only non-negative indices"));
            return null;
        }
        int i2 = i % 2;
        if (i2 == 0) {
            return this.keyDescriptor;
        }
        if (i2 == 1) {
            return this.valueDescriptor;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Unreached");
        return null;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public final int getElementIndex(String str) {
        str.getClass();
        Integer intOrNull = StringsKt__StringsJVMKt.toIntOrNull(str);
        if (intOrNull != null) {
            return intOrNull.intValue();
        }
        UriKt$$ExternalSyntheticBUOutline0.m(str.concat(" is not a valid map index"));
        return 0;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public final String getElementName(int i) {
        return String.valueOf(i);
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public final int getElementsCount() {
        return 2;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public final RangesKt getKind() {
        return StructureKind$MAP.INSTANCE;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public final String getSerialName() {
        return this.serialName;
    }

    public final int hashCode() {
        return this.valueDescriptor.hashCode() + ((this.keyDescriptor.hashCode() + (this.serialName.hashCode() * 31)) * 31);
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public final boolean isElementOptional(int i) {
        if (i >= 0) {
            return false;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$2((Object) CameraDevices$CC.m(CameraDevices$CC.m30m(i, "Illegal index ", ", "), this.serialName, " expects only non-negative indices"));
        return false;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public final /* bridge */ boolean isInline() {
        return false;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public final /* bridge */ boolean isNullable() {
        return false;
    }

    public final String toString() {
        return this.serialName + '(' + this.keyDescriptor + ", " + this.valueDescriptor + ')';
    }
}
