package androidx.glance.appwidget.protobuf;

import androidx.glance.appwidget.protobuf.Internal;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ListFieldSchemaLite {
    public static Internal.ProtobufList mutableListAt(long j, Object obj) {
        Internal.ProtobufList protobufList = (Internal.ProtobufList) UnsafeUtil.getObject(j, obj);
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
