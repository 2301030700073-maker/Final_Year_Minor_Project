package kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization;

import androidx.room.Room;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Set;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.collections.EmptySet;
import kotlin.collections.IndexedValue;
import kotlin.collections.IndexingIterable;
import kotlin.collections.IndexingIterator;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.NameResolver;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf;
import kotlin.reflect.jvm.internal.impl.protobuf.ByteString;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class JvmNameResolver implements NameResolver {
    public static final List PREDEFINED_STRINGS;
    public final Set localNameIndices;
    public final ArrayList records;
    public final String[] strings;

    static {
        String joinToString$default = CollectionsKt.joinToString$default(Room.listOf((Object[]) new Character[]{'k', 'o', 't', 'l', 'i', 'n'}), "", null, null, null, 62);
        List listOf = Room.listOf((Object[]) new String[]{joinToString$default.concat("/Any"), joinToString$default.concat("/Nothing"), joinToString$default.concat("/Unit"), joinToString$default.concat("/Throwable"), joinToString$default.concat("/Number"), joinToString$default.concat("/Byte"), joinToString$default.concat("/Double"), joinToString$default.concat("/Float"), joinToString$default.concat("/Int"), joinToString$default.concat("/Long"), joinToString$default.concat("/Short"), joinToString$default.concat("/Boolean"), joinToString$default.concat("/Char"), joinToString$default.concat("/CharSequence"), joinToString$default.concat("/String"), joinToString$default.concat("/Comparable"), joinToString$default.concat("/Enum"), joinToString$default.concat("/Array"), joinToString$default.concat("/ByteArray"), joinToString$default.concat("/DoubleArray"), joinToString$default.concat("/FloatArray"), joinToString$default.concat("/IntArray"), joinToString$default.concat("/LongArray"), joinToString$default.concat("/ShortArray"), joinToString$default.concat("/BooleanArray"), joinToString$default.concat("/CharArray"), joinToString$default.concat("/Cloneable"), joinToString$default.concat("/Annotation"), joinToString$default.concat("/collections/Iterable"), joinToString$default.concat("/collections/MutableIterable"), joinToString$default.concat("/collections/Collection"), joinToString$default.concat("/collections/MutableCollection"), joinToString$default.concat("/collections/List"), joinToString$default.concat("/collections/MutableList"), joinToString$default.concat("/collections/Set"), joinToString$default.concat("/collections/MutableSet"), joinToString$default.concat("/collections/Map"), joinToString$default.concat("/collections/MutableMap"), joinToString$default.concat("/collections/Map.Entry"), joinToString$default.concat("/collections/MutableMap.MutableEntry"), joinToString$default.concat("/collections/Iterator"), joinToString$default.concat("/collections/MutableIterator"), joinToString$default.concat("/collections/ListIterator"), joinToString$default.concat("/collections/MutableListIterator")});
        PREDEFINED_STRINGS = listOf;
        IndexingIterable withIndex = CollectionsKt.withIndex(listOf);
        int mapCapacity = MapsKt__MapsKt.mapCapacity(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(withIndex, 10));
        if (mapCapacity < 16) {
            mapCapacity = 16;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(mapCapacity);
        Iterator it = withIndex.iterator();
        while (true) {
            IndexingIterator indexingIterator = (IndexingIterator) it;
            if (!indexingIterator.iterator.hasNext()) {
                return;
            }
            IndexedValue indexedValue = (IndexedValue) indexingIterator.next();
            linkedHashMap.put((String) indexedValue.value, Integer.valueOf(indexedValue.index));
        }
    }

    public JvmNameResolver(JvmProtoBuf.StringTableTypes stringTableTypes, String[] strArr) {
        strArr.getClass();
        List list = stringTableTypes.localName_;
        Set set = list.isEmpty() ? EmptySet.INSTANCE : CollectionsKt.toSet(list);
        List<JvmProtoBuf.StringTableTypes.Record> list2 = stringTableTypes.record_;
        list2.getClass();
        ArrayList arrayList = new ArrayList();
        arrayList.ensureCapacity(list2.size());
        for (JvmProtoBuf.StringTableTypes.Record record : list2) {
            int i = record.range_;
            for (int i2 = 0; i2 < i; i2++) {
                arrayList.add(record);
            }
        }
        arrayList.trimToSize();
        this.strings = strArr;
        this.localNameIndices = set;
        this.records = arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.metadata.deserialization.NameResolver
    public final String getQualifiedClassName(int i) {
        return getString(i);
    }

    @Override // kotlin.reflect.jvm.internal.impl.metadata.deserialization.NameResolver
    public final String getString(int i) {
        String str;
        JvmProtoBuf.StringTableTypes.Record record = (JvmProtoBuf.StringTableTypes.Record) this.records.get(i);
        int i2 = record.bitField0_;
        if ((i2 & 4) == 4) {
            Object obj = record.string_;
            if (obj instanceof String) {
                str = (String) obj;
            } else {
                ByteString byteString = (ByteString) obj;
                String stringUtf8 = byteString.toStringUtf8();
                if (byteString.isValidUtf8()) {
                    record.string_ = stringUtf8;
                }
                str = stringUtf8;
            }
        } else {
            if ((i2 & 2) == 2) {
                List list = PREDEFINED_STRINGS;
                int size = list.size();
                int i3 = record.predefinedIndex_;
                if (i3 >= 0 && i3 < size) {
                    str = (String) list.get(i3);
                }
            }
            str = this.strings[i];
        }
        if (record.substringIndex_.size() >= 2) {
            List list2 = record.substringIndex_;
            list2.getClass();
            Integer num = (Integer) list2.get(0);
            Integer num2 = (Integer) list2.get(1);
            num.getClass();
            if (num.intValue() >= 0) {
                int intValue = num.intValue();
                num2.getClass();
                if (intValue <= num2.intValue() && num2.intValue() <= str.length()) {
                    str = str.substring(num.intValue(), num2.intValue());
                }
            }
        }
        if (record.replaceChar_.size() >= 2) {
            List list3 = record.replaceChar_;
            list3.getClass();
            Integer num3 = (Integer) list3.get(0);
            Integer num4 = (Integer) list3.get(1);
            str.getClass();
            str = str.replace((char) num3.intValue(), (char) num4.intValue());
            str.getClass();
        }
        JvmProtoBuf.StringTableTypes.Record.Operation operation = record.operation_;
        if (operation == null) {
            operation = JvmProtoBuf.StringTableTypes.Record.Operation.NONE;
        }
        int i4 = JvmNameResolverBase$WhenMappings.$EnumSwitchMapping$0[operation.ordinal()];
        if (i4 == 2) {
            str.getClass();
            str = str.replace('$', '.');
            str.getClass();
        } else if (i4 == 3) {
            if (str.length() >= 2) {
                str = str.substring(1, str.length() - 1);
            }
            str = str.replace('$', '.');
            str.getClass();
        }
        str.getClass();
        return str;
    }

    @Override // kotlin.reflect.jvm.internal.impl.metadata.deserialization.NameResolver
    public final boolean isLocalClassName(int i) {
        return this.localNameIndices.contains(Integer.valueOf(i));
    }
}
