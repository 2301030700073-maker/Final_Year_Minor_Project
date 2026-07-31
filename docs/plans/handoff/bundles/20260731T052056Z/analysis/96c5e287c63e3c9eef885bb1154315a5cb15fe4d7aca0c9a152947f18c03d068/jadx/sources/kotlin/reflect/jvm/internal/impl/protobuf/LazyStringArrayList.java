package kotlin.reflect.jvm.internal.impl.protobuf;

import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import j$.util.DesugarCollections;
import java.io.UnsupportedEncodingException;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.RandomAccess;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LazyStringArrayList extends AbstractList implements RandomAccess, LazyStringList {
    public static final UnmodifiableLazyStringList EMPTY = new UnmodifiableLazyStringList(new LazyStringArrayList());
    public final ArrayList list;

    public LazyStringArrayList(LazyStringList lazyStringList) {
        this.list = new ArrayList(lazyStringList.size());
        addAll(lazyStringList);
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i, Object obj) {
        this.list.add(i, (String) obj);
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final boolean addAll(int i, Collection collection) {
        if (collection instanceof LazyStringList) {
            collection = ((LazyStringList) collection).getUnderlyingElements();
        }
        boolean addAll = this.list.addAll(i, collection);
        ((AbstractList) this).modCount++;
        return addAll;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
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
        if (obj instanceof ByteString) {
            ByteString byteString = (ByteString) obj;
            String stringUtf8 = byteString.toStringUtf8();
            if (byteString.isValidUtf8()) {
                arrayList.set(i, stringUtf8);
            }
            return stringUtf8;
        }
        byte[] bArr = (byte[]) obj;
        byte[] bArr2 = Internal.EMPTY_BYTE_ARRAY;
        try {
            String str = new String(bArr, "UTF-8");
            if (Utf8.partialIsValidUtf8(bArr, 0, bArr.length) == 0) {
                arrayList.set(i, str);
            }
            return str;
        } catch (UnsupportedEncodingException e) {
            ContextsKt$$ExternalSyntheticBUOutline0.m("UTF-8 not supported?", (Throwable) e);
            return null;
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.LazyStringList
    public final ByteString getByteString(int i) {
        ByteString literalByteString;
        ArrayList arrayList = this.list;
        Object obj = arrayList.get(i);
        if (obj instanceof ByteString) {
            literalByteString = (ByteString) obj;
        } else if (obj instanceof String) {
            try {
                literalByteString = new LiteralByteString(((String) obj).getBytes("UTF-8"));
            } catch (UnsupportedEncodingException e) {
                ContextsKt$$ExternalSyntheticBUOutline0.m("UTF-8 not supported?", (Throwable) e);
                return null;
            }
        } else {
            byte[] bArr = (byte[]) obj;
            int length = bArr.length;
            byte[] bArr2 = new byte[length];
            System.arraycopy(bArr, 0, bArr2, 0, length);
            literalByteString = new LiteralByteString(bArr2);
        }
        if (literalByteString != obj) {
            arrayList.set(i, literalByteString);
        }
        return literalByteString;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.LazyStringList
    public final List getUnderlyingElements() {
        return DesugarCollections.unmodifiableList(this.list);
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.LazyStringList
    public final UnmodifiableLazyStringList getUnmodifiableView() {
        return new UnmodifiableLazyStringList(this);
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object remove(int i) {
        Object remove = this.list.remove(i);
        ((AbstractList) this).modCount++;
        if (remove instanceof String) {
            return (String) remove;
        }
        if (remove instanceof ByteString) {
            return ((ByteString) remove).toStringUtf8();
        }
        byte[] bArr = (byte[]) remove;
        byte[] bArr2 = Internal.EMPTY_BYTE_ARRAY;
        try {
            return new String(bArr, "UTF-8");
        } catch (UnsupportedEncodingException e) {
            ContextsKt$$ExternalSyntheticBUOutline0.m("UTF-8 not supported?", (Throwable) e);
            return null;
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i, Object obj) {
        Object obj2 = this.list.set(i, (String) obj);
        if (obj2 instanceof String) {
            return (String) obj2;
        }
        if (obj2 instanceof ByteString) {
            return ((ByteString) obj2).toStringUtf8();
        }
        byte[] bArr = (byte[]) obj2;
        byte[] bArr2 = Internal.EMPTY_BYTE_ARRAY;
        try {
            return new String(bArr, "UTF-8");
        } catch (UnsupportedEncodingException e) {
            ContextsKt$$ExternalSyntheticBUOutline0.m("UTF-8 not supported?", (Throwable) e);
            return null;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.list.size();
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.LazyStringList
    public final void add(LiteralByteString literalByteString) {
        this.list.add(literalByteString);
        ((AbstractList) this).modCount++;
    }

    public LazyStringArrayList() {
        this.list = new ArrayList();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        return addAll(this.list.size(), collection);
    }
}
