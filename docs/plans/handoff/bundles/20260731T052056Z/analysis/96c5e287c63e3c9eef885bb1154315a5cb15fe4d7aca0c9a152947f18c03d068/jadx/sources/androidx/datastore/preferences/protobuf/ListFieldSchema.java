package androidx.datastore.preferences.protobuf;

import androidx.datastore.preferences.protobuf.Internal;
import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class ListFieldSchema {
    public static final ListFieldSchemaFull FULL_INSTANCE = new ListFieldSchemaFull();
    public static final ListFieldSchemaLite LITE_INSTANCE = new ListFieldSchemaLite();

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class ListFieldSchemaLite extends ListFieldSchema {
        @Override // androidx.datastore.preferences.protobuf.ListFieldSchema
        public final void makeImmutableListAt(long j, Object obj) {
            ((AbstractProtobufList) ((Internal.ProtobufList) UnsafeUtil.getObject(j, obj))).isMutable = false;
        }

        @Override // androidx.datastore.preferences.protobuf.ListFieldSchema
        public final void mergeListsAt(GeneratedMessageLite generatedMessageLite, Object obj, long j) {
            Internal.ProtobufList protobufList = (Internal.ProtobufList) UnsafeUtil.getObject(j, generatedMessageLite);
            Internal.ProtobufList protobufList2 = (Internal.ProtobufList) UnsafeUtil.getObject(j, obj);
            int size = protobufList.size();
            int size2 = protobufList2.size();
            if (size > 0 && size2 > 0) {
                if (!((AbstractProtobufList) protobufList).isMutable) {
                    protobufList = protobufList.mutableCopyWithCapacity(size2 + size);
                }
                protobufList.addAll(protobufList2);
            }
            if (size > 0) {
                protobufList2 = protobufList;
            }
            UnsafeUtil.putObject(generatedMessageLite, j, protobufList2);
        }

        @Override // androidx.datastore.preferences.protobuf.ListFieldSchema
        public final List mutableListAt(long j, Object obj) {
            Internal.ProtobufList protobufList = (Internal.ProtobufList) UnsafeUtil.getObject(j, obj);
            if (((AbstractProtobufList) protobufList).isMutable) {
                return protobufList;
            }
            int size = protobufList.size();
            Internal.ProtobufList mutableCopyWithCapacity = protobufList.mutableCopyWithCapacity(size == 0 ? 10 : size * 2);
            UnsafeUtil.putObject(obj, j, mutableCopyWithCapacity);
            return mutableCopyWithCapacity;
        }
    }

    public abstract void makeImmutableListAt(long j, Object obj);

    public abstract void mergeListsAt(GeneratedMessageLite generatedMessageLite, Object obj, long j);

    public abstract List mutableListAt(long j, Object obj);

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class ListFieldSchemaFull extends ListFieldSchema {
        public static final Class UNMODIFIABLE_LIST_CLASS = DesugarCollections.unmodifiableList(Collections.EMPTY_LIST).getClass();

        public static List mutableListAt(int i, long j, Object obj) {
            List list = (List) UnsafeUtil.getObject(j, obj);
            if (list.isEmpty()) {
                List lazyStringArrayList = list instanceof LazyStringList ? new LazyStringArrayList(i) : new ArrayList(i);
                UnsafeUtil.putObject(obj, j, lazyStringArrayList);
                return lazyStringArrayList;
            }
            if (UNMODIFIABLE_LIST_CLASS.isAssignableFrom(list.getClass())) {
                ArrayList arrayList = new ArrayList(list.size() + i);
                arrayList.addAll(list);
                UnsafeUtil.putObject(obj, j, arrayList);
                return arrayList;
            }
            if (!(list instanceof UnmodifiableLazyStringList)) {
                return list;
            }
            LazyStringArrayList lazyStringArrayList2 = new LazyStringArrayList(list.size() + i);
            lazyStringArrayList2.addAll((UnmodifiableLazyStringList) list);
            UnsafeUtil.putObject(obj, j, lazyStringArrayList2);
            return lazyStringArrayList2;
        }

        @Override // androidx.datastore.preferences.protobuf.ListFieldSchema
        public final void makeImmutableListAt(long j, Object obj) {
            Object unmodifiableList;
            List list = (List) UnsafeUtil.getObject(j, obj);
            if (list instanceof LazyStringList) {
                unmodifiableList = ((LazyStringList) list).getUnmodifiableView();
            } else if (UNMODIFIABLE_LIST_CLASS.isAssignableFrom(list.getClass())) {
                return;
            } else {
                unmodifiableList = DesugarCollections.unmodifiableList(list);
            }
            UnsafeUtil.putObject(obj, j, unmodifiableList);
        }

        @Override // androidx.datastore.preferences.protobuf.ListFieldSchema
        public final void mergeListsAt(GeneratedMessageLite generatedMessageLite, Object obj, long j) {
            List list = (List) UnsafeUtil.getObject(j, obj);
            List mutableListAt = mutableListAt(list.size(), j, generatedMessageLite);
            int size = mutableListAt.size();
            int size2 = list.size();
            if (size > 0 && size2 > 0) {
                mutableListAt.addAll(list);
            }
            if (size > 0) {
                list = mutableListAt;
            }
            UnsafeUtil.putObject(generatedMessageLite, j, list);
        }

        @Override // androidx.datastore.preferences.protobuf.ListFieldSchema
        public final List mutableListAt(long j, Object obj) {
            return mutableListAt(10, j, obj);
        }
    }
}
