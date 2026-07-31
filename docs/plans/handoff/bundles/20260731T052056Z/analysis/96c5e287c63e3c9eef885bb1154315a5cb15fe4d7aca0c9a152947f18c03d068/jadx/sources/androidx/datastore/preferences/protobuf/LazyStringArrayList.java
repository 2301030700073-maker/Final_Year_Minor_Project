package androidx.datastore.preferences.protobuf;

import androidx.datastore.preferences.protobuf.Internal;
import j$.util.DesugarCollections;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.RandomAccess;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LazyStringArrayList extends AbstractProtobufList implements LazyStringList, RandomAccess {
    public final ArrayList list;

    static {
        new LazyStringArrayList(10).isMutable = false;
    }

    public LazyStringArrayList(int i) {
        this(new ArrayList(i));
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i, Object obj) {
        ensureIsMutable();
        this.list.add(i, (String) obj);
        ((AbstractList) this).modCount++;
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractProtobufList, java.util.AbstractList, java.util.List
    public final boolean addAll(int i, Collection collection) {
        ensureIsMutable();
        if (collection instanceof LazyStringList) {
            collection = ((LazyStringList) collection).getUnderlyingElements();
        }
        boolean addAll = this.list.addAll(i, collection);
        ((AbstractList) this).modCount++;
        return addAll;
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractProtobufList, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        ensureIsMutable();
        this.list.clear();
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i) {
        ArrayList arrayList = this.list;
        Object obj = arrayList.get(i);
        if (obj instanceof String) {
            return (String) obj;
        }
        if (!(obj instanceof ByteString$LiteralByteString)) {
            byte[] bArr = (byte[]) obj;
            String str = new String(bArr, Internal.UTF_8);
            if (Utf8.processor.partialIsValidUtf8(bArr, 0, bArr.length) == 0) {
                arrayList.set(i, str);
            }
            return str;
        }
        ByteString$LiteralByteString byteString$LiteralByteString = (ByteString$LiteralByteString) obj;
        String str2 = byteString$LiteralByteString.size() == 0 ? "" : new String(byteString$LiteralByteString.bytes, byteString$LiteralByteString.getOffsetIntoBytes(), byteString$LiteralByteString.size(), Internal.UTF_8);
        int offsetIntoBytes = byteString$LiteralByteString.getOffsetIntoBytes();
        if (Utf8.processor.partialIsValidUtf8(byteString$LiteralByteString.bytes, offsetIntoBytes, byteString$LiteralByteString.size() + offsetIntoBytes) == 0) {
            arrayList.set(i, str2);
        }
        return str2;
    }

    @Override // androidx.datastore.preferences.protobuf.LazyStringList
    public final Object getRaw(int i) {
        return this.list.get(i);
    }

    @Override // androidx.datastore.preferences.protobuf.LazyStringList
    public final List getUnderlyingElements() {
        return DesugarCollections.unmodifiableList(this.list);
    }

    @Override // androidx.datastore.preferences.protobuf.LazyStringList
    public final LazyStringList getUnmodifiableView() {
        return this.isMutable ? new UnmodifiableLazyStringList(this) : this;
    }

    @Override // androidx.datastore.preferences.protobuf.Internal.ProtobufList
    public final Internal.ProtobufList mutableCopyWithCapacity(int i) {
        ArrayList arrayList = this.list;
        if (i < arrayList.size()) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m();
            return null;
        }
        ArrayList arrayList2 = new ArrayList(i);
        arrayList2.addAll(arrayList);
        return new LazyStringArrayList(arrayList2);
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object remove(int i) {
        ensureIsMutable();
        Object remove = this.list.remove(i);
        ((AbstractList) this).modCount++;
        if (remove instanceof String) {
            return (String) remove;
        }
        if (!(remove instanceof ByteString$LiteralByteString)) {
            return new String((byte[]) remove, Internal.UTF_8);
        }
        ByteString$LiteralByteString byteString$LiteralByteString = (ByteString$LiteralByteString) remove;
        return byteString$LiteralByteString.size() == 0 ? "" : new String(byteString$LiteralByteString.bytes, byteString$LiteralByteString.getOffsetIntoBytes(), byteString$LiteralByteString.size(), Internal.UTF_8);
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i, Object obj) {
        ensureIsMutable();
        Object obj2 = this.list.set(i, (String) obj);
        if (obj2 instanceof String) {
            return (String) obj2;
        }
        if (!(obj2 instanceof ByteString$LiteralByteString)) {
            return new String((byte[]) obj2, Internal.UTF_8);
        }
        ByteString$LiteralByteString byteString$LiteralByteString = (ByteString$LiteralByteString) obj2;
        return byteString$LiteralByteString.size() == 0 ? "" : new String(byteString$LiteralByteString.bytes, byteString$LiteralByteString.getOffsetIntoBytes(), byteString$LiteralByteString.size(), Internal.UTF_8);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.list.size();
    }

    public LazyStringArrayList(ArrayList arrayList) {
        this.list = arrayList;
    }

    @Override // androidx.datastore.preferences.protobuf.LazyStringList
    public final void add(ByteString$LiteralByteString byteString$LiteralByteString) {
        ensureIsMutable();
        this.list.add(byteString$LiteralByteString);
        ((AbstractList) this).modCount++;
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractProtobufList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        return addAll(this.list.size(), collection);
    }
}
