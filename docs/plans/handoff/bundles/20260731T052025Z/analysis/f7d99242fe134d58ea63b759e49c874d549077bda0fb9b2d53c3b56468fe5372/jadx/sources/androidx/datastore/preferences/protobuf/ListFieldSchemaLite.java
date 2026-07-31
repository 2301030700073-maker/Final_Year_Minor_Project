package androidx.datastore.preferences.protobuf;

import androidx.datastore.preferences.protobuf.Internal;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ListFieldSchemaLite {
    public static Internal.ProtobufList mutableListAt(long j, Object obj) {
        Internal.ProtobufList protobufList = (Internal.ProtobufList) UnsafeUtil.MEMORY_ACCESSOR.getObject(j, obj);
        if (((ProtobufArrayList) protobufList).isMutable) {
            return protobufList;
        }
        ProtobufArrayList protobufArrayList = (ProtobufArrayList) protobufList;
        int i = protobufArrayList.size;
        ProtobufArrayList mutableCopyWithCapacity = protobufArrayList.mutableCopyWithCapacity(i == 0 ? 10 : i * 2);
        UnsafeUtil.putObject(obj, j, mutableCopyWithCapacity);
        return mutableCopyWithCapacity;
    }
}
