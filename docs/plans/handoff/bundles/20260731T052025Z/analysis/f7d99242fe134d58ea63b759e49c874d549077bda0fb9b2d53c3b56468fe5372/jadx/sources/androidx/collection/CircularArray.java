package androidx.collection;

import android.view.View;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.foundation.text.selection.Selection;
import androidx.compose.runtime.composer.gapbuffer.changelist.Operations;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsAnimationCompat;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.datastore.preferences.protobuf.ByteString$LiteralByteString;
import androidx.datastore.preferences.protobuf.ExtensionRegistryLite;
import androidx.datastore.preferences.protobuf.GeneratedMessageLite;
import androidx.datastore.preferences.protobuf.Internal;
import androidx.datastore.preferences.protobuf.InvalidProtocolBufferException;
import androidx.datastore.preferences.protobuf.Protobuf;
import androidx.datastore.preferences.protobuf.ProtobufArrayList;
import androidx.datastore.preferences.protobuf.Schema;
import androidx.datastore.preferences.protobuf.WireFormat$FieldType;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.coroutines.ConnectionWithLock;
import androidx.room.util.DBUtil$$ExternalSyntheticBUOutline0;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.fsck.k9.mail.internet.MimeHeaderParserException;
import com.fsck.k9.sasl.OAuthBearer;
import com.squareup.moshi.LinkedHashTreeMap;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.WeakHashMap;
import kotlin.collections.ArraysKt___ArraysKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CircularArray {
    public final /* synthetic */ int $r8$classId;
    public int capacityBitmask;
    public Object elements;
    public int head;
    public int tail;

    public CircularArray(String str, int i) {
        this.$r8$classId = 6;
        str.getClass();
        this.elements = str;
        this.head = str.length();
        this.capacityBitmask = i;
    }

    public void add(LinkedHashTreeMap.Node node) {
        node.right = null;
        node.parent = null;
        node.left = null;
        node.height = 1;
        int i = this.head;
        if (i > 0) {
            int i2 = this.capacityBitmask;
            if ((i2 & 1) == 0) {
                this.capacityBitmask = i2 + 1;
                this.head = i - 1;
                this.tail++;
            }
        }
        node.parent = (LinkedHashTreeMap.Node) this.elements;
        this.elements = node;
        int i3 = this.capacityBitmask;
        int i4 = i3 + 1;
        this.capacityBitmask = i4;
        int i5 = this.head;
        if (i5 > 0 && (i4 & 1) == 0) {
            this.capacityBitmask = i3 + 2;
            this.head = i5 - 1;
            this.tail++;
        }
        int i6 = 4;
        while (true) {
            int i7 = i6 - 1;
            if ((this.capacityBitmask & i7) != i7) {
                return;
            }
            int i8 = this.tail;
            if (i8 == 0) {
                LinkedHashTreeMap.Node node2 = (LinkedHashTreeMap.Node) this.elements;
                LinkedHashTreeMap.Node node3 = node2.parent;
                LinkedHashTreeMap.Node node4 = node3.parent;
                node3.parent = node4.parent;
                this.elements = node3;
                node3.left = node4;
                node3.right = node2;
                node3.height = node2.height + 1;
                node4.parent = node3;
                node2.parent = node3;
            } else if (i8 == 1) {
                LinkedHashTreeMap.Node node5 = (LinkedHashTreeMap.Node) this.elements;
                LinkedHashTreeMap.Node node6 = node5.parent;
                this.elements = node6;
                node6.right = node5;
                node6.height = node5.height + 1;
                node5.parent = node6;
                this.tail = 0;
            } else if (i8 == 2) {
                this.tail = 0;
            }
            i6 *= 2;
        }
    }

    public void addLast(ConnectionWithLock connectionWithLock) {
        Object[] objArr = (Object[]) this.elements;
        int i = this.tail;
        objArr[i] = connectionWithLock;
        int i2 = this.capacityBitmask & (i + 1);
        this.tail = i2;
        int i3 = this.head;
        if (i2 == i3) {
            int length = objArr.length;
            int i4 = length - i3;
            int i5 = length << 1;
            if (i5 < 0) {
                DBUtil$$ExternalSyntheticBUOutline0.m("Max array capacity exceeded");
                return;
            }
            Object[] objArr2 = new Object[i5];
            ArraysKt___ArraysKt.copyInto(objArr, objArr2, 0, i3, length);
            ArraysKt___ArraysKt.copyInto((Object[]) this.elements, objArr2, i4, 0, this.head);
            this.elements = objArr2;
            this.head = 0;
            this.tail = length;
            this.capacityBitmask = i5 - 1;
        }
    }

    public void addPosition(int i, int i2) {
        if (i < 0) {
            UriKt$$ExternalSyntheticBUOutline0.m("Layout positions must be non-negative");
            return;
        }
        if (i2 < 0) {
            UriKt$$ExternalSyntheticBUOutline0.m("Pixel distance must be non-negative");
            return;
        }
        int i3 = this.capacityBitmask;
        int i4 = i3 * 2;
        int[] iArr = (int[]) this.elements;
        if (iArr == null) {
            int[] iArr2 = new int[4];
            this.elements = iArr2;
            Arrays.fill(iArr2, -1);
        } else if (i4 >= iArr.length) {
            int[] iArr3 = new int[i3 * 4];
            this.elements = iArr3;
            System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
        }
        int[] iArr4 = (int[]) this.elements;
        iArr4[i4] = i;
        iArr4[i4 + 1] = i2;
        this.capacityBitmask++;
    }

    public Selection.AnchorInfo anchorForOffset(int i) {
        return new Selection.AnchorInfo(OAuthBearer.getTextDirectionForOffset((TextLayoutResult) this.elements, i), i, 1L);
    }

    public void applyOffsets() {
        View view = (View) this.elements;
        int top = this.capacityBitmask - (view.getTop() - this.head);
        WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
        view.offsetTopAndBottom(top);
        view.offsetLeftAndRight(0 - (view.getLeft() - this.tail));
    }

    public void collectPrefetchPositionsFromView(RecyclerView recyclerView, boolean z) {
        this.capacityBitmask = 0;
        int[] iArr = (int[]) this.elements;
        if (iArr != null) {
            Arrays.fill(iArr, -1);
        }
        RecyclerView.LayoutManager layoutManager = recyclerView.mLayout;
        if (recyclerView.mAdapter == null || layoutManager == null || !layoutManager.mItemPrefetchEnabled) {
            return;
        }
        if (z) {
            if (!recyclerView.mAdapterHelper.hasPendingUpdates()) {
                layoutManager.collectInitialPrefetchPositions(recyclerView.mAdapter.getItemCount(), this);
            }
        } else if (!recyclerView.hasPendingAdapterUpdates()) {
            layoutManager.collectAdjacentPrefetchPositions(this.head, this.tail, recyclerView.mState, this);
        }
        int i = this.capacityBitmask;
        if (i > layoutManager.mPrefetchMaxCountObserved) {
            layoutManager.mPrefetchMaxCountObserved = i;
            layoutManager.mPrefetchMaxObservedInInitialPrefetch = z;
            recyclerView.mRecycler.updateViewCacheSize();
        }
    }

    public boolean endReached() {
        return this.tail >= this.head;
    }

    public void expect(char c, String str) {
        if (endReached() || peek() != c) {
            throw new MimeHeaderParserException("Expected ".concat(str), this.tail);
        }
        skip();
    }

    public int gapLength() {
        return this.capacityBitmask - this.tail;
    }

    public int getFieldNumber() {
        int i = this.capacityBitmask;
        if (i != 0) {
            this.head = i;
            this.capacityBitmask = 0;
        } else {
            this.head = ((WindowInsetsAnimationCompat.Callback) this.elements).readTag();
        }
        int i2 = this.head;
        if (i2 == 0 || i2 == this.tail) {
            return Integer.MAX_VALUE;
        }
        return i2 >>> 3;
    }

    public int getInt(int i) {
        return ((Operations) this.elements).intArgs[this.tail + i];
    }

    /* renamed from: getObject-PtL-UHM, reason: not valid java name */
    public Object m104getObjectPtLUHM(int i) {
        return ((Operations) this.elements).objectArgs[this.capacityBitmask + i];
    }

    public void mergeGroupFieldInternal(Object obj, Schema schema, ExtensionRegistryLite extensionRegistryLite) {
        int i = this.tail;
        this.tail = ((this.head >>> 3) << 3) | 4;
        try {
            schema.mergeFrom(obj, this, extensionRegistryLite);
            if (this.head == this.tail) {
            } else {
                throw new InvalidProtocolBufferException("Failed to parse the message.");
            }
        } finally {
            this.tail = i;
        }
    }

    public void mergeMessageFieldInternal(Object obj, Schema schema, ExtensionRegistryLite extensionRegistryLite) {
        WindowInsetsAnimationCompat.Callback callback = (WindowInsetsAnimationCompat.Callback) this.elements;
        int readUInt32 = callback.readUInt32();
        if (callback.mDispatchMode >= 100) {
            throw new InvalidProtocolBufferException("Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit.");
        }
        int pushLimit = callback.pushLimit(readUInt32);
        callback.mDispatchMode++;
        schema.mergeFrom(obj, this, extensionRegistryLite);
        callback.checkLastTagWas(0);
        callback.mDispatchMode--;
        callback.popLimit(pushLimit);
    }

    public char peek() {
        int i = this.tail;
        String str = (String) this.elements;
        int length = str.length();
        int i2 = this.tail;
        if (i < length) {
            return str.charAt(i2);
        }
        throw new MimeHeaderParserException("End of input reached unexpectedly", i2);
    }

    public void readBoolList(Internal.ProtobufList protobufList) {
        int readTag;
        WindowInsetsAnimationCompat.Callback callback = (WindowInsetsAnimationCompat.Callback) this.elements;
        int i = this.head & 7;
        if (i == 0) {
            do {
                ((ProtobufArrayList) protobufList).add(Boolean.valueOf(callback.readBool()));
                if (callback.isAtEnd()) {
                    return;
                } else {
                    readTag = callback.readTag();
                }
            } while (readTag == this.head);
            this.capacityBitmask = readTag;
            return;
        }
        if (i != 2) {
            throw InvalidProtocolBufferException.invalidWireType();
        }
        int totalBytesRead = callback.getTotalBytesRead() + callback.readUInt32();
        do {
            ((ProtobufArrayList) protobufList).add(Boolean.valueOf(callback.readBool()));
        } while (callback.getTotalBytesRead() < totalBytesRead);
        requirePosition(totalBytesRead);
    }

    public ByteString$LiteralByteString readBytes() {
        requireWireType(2);
        return ((WindowInsetsAnimationCompat.Callback) this.elements).readBytes();
    }

    public void readBytesList(Internal.ProtobufList protobufList) {
        int readTag;
        WindowInsetsAnimationCompat.Callback callback = (WindowInsetsAnimationCompat.Callback) this.elements;
        if ((this.head & 7) != 2) {
            throw InvalidProtocolBufferException.invalidWireType();
        }
        do {
            ((ProtobufArrayList) protobufList).add(readBytes());
            if (callback.isAtEnd()) {
                return;
            } else {
                readTag = callback.readTag();
            }
        } while (readTag == this.head);
        this.capacityBitmask = readTag;
    }

    public void readDoubleList(Internal.ProtobufList protobufList) {
        int readTag;
        WindowInsetsAnimationCompat.Callback callback = (WindowInsetsAnimationCompat.Callback) this.elements;
        int i = this.head & 7;
        if (i == 1) {
            do {
                ((ProtobufArrayList) protobufList).add(Double.valueOf(callback.readDouble()));
                if (callback.isAtEnd()) {
                    return;
                } else {
                    readTag = callback.readTag();
                }
            } while (readTag == this.head);
            this.capacityBitmask = readTag;
            return;
        }
        if (i != 2) {
            throw InvalidProtocolBufferException.invalidWireType();
        }
        int readUInt32 = callback.readUInt32();
        if ((readUInt32 & 7) != 0) {
            throw new InvalidProtocolBufferException("Failed to parse the message.");
        }
        int totalBytesRead = callback.getTotalBytesRead() + readUInt32;
        do {
            ((ProtobufArrayList) protobufList).add(Double.valueOf(callback.readDouble()));
        } while (callback.getTotalBytesRead() < totalBytesRead);
    }

    public void readEnumList(Internal.ProtobufList protobufList) {
        int readTag;
        WindowInsetsAnimationCompat.Callback callback = (WindowInsetsAnimationCompat.Callback) this.elements;
        int i = this.head & 7;
        if (i == 0) {
            do {
                ((ProtobufArrayList) protobufList).add(Integer.valueOf(callback.readEnum()));
                if (callback.isAtEnd()) {
                    return;
                } else {
                    readTag = callback.readTag();
                }
            } while (readTag == this.head);
            this.capacityBitmask = readTag;
            return;
        }
        if (i != 2) {
            throw InvalidProtocolBufferException.invalidWireType();
        }
        int totalBytesRead = callback.getTotalBytesRead() + callback.readUInt32();
        do {
            ((ProtobufArrayList) protobufList).add(Integer.valueOf(callback.readEnum()));
        } while (callback.getTotalBytesRead() < totalBytesRead);
        requirePosition(totalBytesRead);
    }

    public Object readField(WireFormat$FieldType wireFormat$FieldType, Class cls, ExtensionRegistryLite extensionRegistryLite) {
        WindowInsetsAnimationCompat.Callback callback = (WindowInsetsAnimationCompat.Callback) this.elements;
        switch (wireFormat$FieldType.ordinal()) {
            case 0:
                requireWireType(1);
                return Double.valueOf(callback.readDouble());
            case 1:
                requireWireType(5);
                return Float.valueOf(callback.readFloat());
            case 2:
                requireWireType(0);
                return Long.valueOf(callback.readInt64());
            case 3:
                requireWireType(0);
                return Long.valueOf(callback.readUInt64());
            case 4:
                requireWireType(0);
                return Integer.valueOf(callback.readInt32());
            case 5:
                requireWireType(1);
                return Long.valueOf(callback.readFixed64());
            case 6:
                requireWireType(5);
                return Integer.valueOf(callback.readFixed32());
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                requireWireType(0);
                return Boolean.valueOf(callback.readBool());
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                requireWireType(2);
                return callback.readStringRequireUtf8();
            case 9:
            default:
                UriKt$$ExternalSyntheticBUOutline0.m("unsupported field type.");
                return null;
            case 10:
                requireWireType(2);
                Schema schemaFor = Protobuf.INSTANCE.schemaFor(cls);
                GeneratedMessageLite newInstance = schemaFor.newInstance();
                mergeMessageFieldInternal(newInstance, schemaFor, extensionRegistryLite);
                schemaFor.makeImmutable(newInstance);
                return newInstance;
            case 11:
                return readBytes();
            case BasicTextKt.ShiftMeta /* 12 */:
                requireWireType(0);
                return Integer.valueOf(callback.readUInt32());
            case 13:
                requireWireType(0);
                return Integer.valueOf(callback.readEnum());
            case 14:
                requireWireType(5);
                return Integer.valueOf(callback.readSFixed32());
            case OffsetKt.Horizontal /* 15 */:
                requireWireType(1);
                return Long.valueOf(callback.readSFixed64());
            case 16:
                requireWireType(0);
                return Integer.valueOf(callback.readSInt32());
            case 17:
                requireWireType(0);
                return Long.valueOf(callback.readSInt64());
        }
    }

    public void readFixed32List(Internal.ProtobufList protobufList) {
        int readTag;
        WindowInsetsAnimationCompat.Callback callback = (WindowInsetsAnimationCompat.Callback) this.elements;
        int i = this.head & 7;
        if (i == 2) {
            int readUInt32 = callback.readUInt32();
            if ((readUInt32 & 3) != 0) {
                throw new InvalidProtocolBufferException("Failed to parse the message.");
            }
            int totalBytesRead = callback.getTotalBytesRead() + readUInt32;
            do {
                ((ProtobufArrayList) protobufList).add(Integer.valueOf(callback.readFixed32()));
            } while (callback.getTotalBytesRead() < totalBytesRead);
            return;
        }
        if (i != 5) {
            throw InvalidProtocolBufferException.invalidWireType();
        }
        do {
            ((ProtobufArrayList) protobufList).add(Integer.valueOf(callback.readFixed32()));
            if (callback.isAtEnd()) {
                return;
            } else {
                readTag = callback.readTag();
            }
        } while (readTag == this.head);
        this.capacityBitmask = readTag;
    }

    public void readFixed64List(Internal.ProtobufList protobufList) {
        int readTag;
        WindowInsetsAnimationCompat.Callback callback = (WindowInsetsAnimationCompat.Callback) this.elements;
        int i = this.head & 7;
        if (i == 1) {
            do {
                ((ProtobufArrayList) protobufList).add(Long.valueOf(callback.readFixed64()));
                if (callback.isAtEnd()) {
                    return;
                } else {
                    readTag = callback.readTag();
                }
            } while (readTag == this.head);
            this.capacityBitmask = readTag;
            return;
        }
        if (i != 2) {
            throw InvalidProtocolBufferException.invalidWireType();
        }
        int readUInt32 = callback.readUInt32();
        if ((readUInt32 & 7) != 0) {
            throw new InvalidProtocolBufferException("Failed to parse the message.");
        }
        int totalBytesRead = callback.getTotalBytesRead() + readUInt32;
        do {
            ((ProtobufArrayList) protobufList).add(Long.valueOf(callback.readFixed64()));
        } while (callback.getTotalBytesRead() < totalBytesRead);
    }

    public void readFloatList(Internal.ProtobufList protobufList) {
        int readTag;
        WindowInsetsAnimationCompat.Callback callback = (WindowInsetsAnimationCompat.Callback) this.elements;
        int i = this.head & 7;
        if (i == 2) {
            int readUInt32 = callback.readUInt32();
            if ((readUInt32 & 3) != 0) {
                throw new InvalidProtocolBufferException("Failed to parse the message.");
            }
            int totalBytesRead = callback.getTotalBytesRead() + readUInt32;
            do {
                ((ProtobufArrayList) protobufList).add(Float.valueOf(callback.readFloat()));
            } while (callback.getTotalBytesRead() < totalBytesRead);
            return;
        }
        if (i != 5) {
            throw InvalidProtocolBufferException.invalidWireType();
        }
        do {
            ((ProtobufArrayList) protobufList).add(Float.valueOf(callback.readFloat()));
            if (callback.isAtEnd()) {
                return;
            } else {
                readTag = callback.readTag();
            }
        } while (readTag == this.head);
        this.capacityBitmask = readTag;
    }

    public void readInt32List(Internal.ProtobufList protobufList) {
        int readTag;
        WindowInsetsAnimationCompat.Callback callback = (WindowInsetsAnimationCompat.Callback) this.elements;
        int i = this.head & 7;
        if (i == 0) {
            do {
                ((ProtobufArrayList) protobufList).add(Integer.valueOf(callback.readInt32()));
                if (callback.isAtEnd()) {
                    return;
                } else {
                    readTag = callback.readTag();
                }
            } while (readTag == this.head);
            this.capacityBitmask = readTag;
            return;
        }
        if (i != 2) {
            throw InvalidProtocolBufferException.invalidWireType();
        }
        int totalBytesRead = callback.getTotalBytesRead() + callback.readUInt32();
        do {
            ((ProtobufArrayList) protobufList).add(Integer.valueOf(callback.readInt32()));
        } while (callback.getTotalBytesRead() < totalBytesRead);
        requirePosition(totalBytesRead);
    }

    public void readInt64List(Internal.ProtobufList protobufList) {
        int readTag;
        WindowInsetsAnimationCompat.Callback callback = (WindowInsetsAnimationCompat.Callback) this.elements;
        int i = this.head & 7;
        if (i == 0) {
            do {
                ((ProtobufArrayList) protobufList).add(Long.valueOf(callback.readInt64()));
                if (callback.isAtEnd()) {
                    return;
                } else {
                    readTag = callback.readTag();
                }
            } while (readTag == this.head);
            this.capacityBitmask = readTag;
            return;
        }
        if (i != 2) {
            throw InvalidProtocolBufferException.invalidWireType();
        }
        int totalBytesRead = callback.getTotalBytesRead() + callback.readUInt32();
        do {
            ((ProtobufArrayList) protobufList).add(Long.valueOf(callback.readInt64()));
        } while (callback.getTotalBytesRead() < totalBytesRead);
        requirePosition(totalBytesRead);
    }

    public void readSFixed32List(Internal.ProtobufList protobufList) {
        int readTag;
        WindowInsetsAnimationCompat.Callback callback = (WindowInsetsAnimationCompat.Callback) this.elements;
        int i = this.head & 7;
        if (i == 2) {
            int readUInt32 = callback.readUInt32();
            if ((readUInt32 & 3) != 0) {
                throw new InvalidProtocolBufferException("Failed to parse the message.");
            }
            int totalBytesRead = callback.getTotalBytesRead() + readUInt32;
            do {
                ((ProtobufArrayList) protobufList).add(Integer.valueOf(callback.readSFixed32()));
            } while (callback.getTotalBytesRead() < totalBytesRead);
            return;
        }
        if (i != 5) {
            throw InvalidProtocolBufferException.invalidWireType();
        }
        do {
            ((ProtobufArrayList) protobufList).add(Integer.valueOf(callback.readSFixed32()));
            if (callback.isAtEnd()) {
                return;
            } else {
                readTag = callback.readTag();
            }
        } while (readTag == this.head);
        this.capacityBitmask = readTag;
    }

    public void readSFixed64List(Internal.ProtobufList protobufList) {
        int readTag;
        WindowInsetsAnimationCompat.Callback callback = (WindowInsetsAnimationCompat.Callback) this.elements;
        int i = this.head & 7;
        if (i == 1) {
            do {
                ((ProtobufArrayList) protobufList).add(Long.valueOf(callback.readSFixed64()));
                if (callback.isAtEnd()) {
                    return;
                } else {
                    readTag = callback.readTag();
                }
            } while (readTag == this.head);
            this.capacityBitmask = readTag;
            return;
        }
        if (i != 2) {
            throw InvalidProtocolBufferException.invalidWireType();
        }
        int readUInt32 = callback.readUInt32();
        if ((readUInt32 & 7) != 0) {
            throw new InvalidProtocolBufferException("Failed to parse the message.");
        }
        int totalBytesRead = callback.getTotalBytesRead() + readUInt32;
        do {
            ((ProtobufArrayList) protobufList).add(Long.valueOf(callback.readSFixed64()));
        } while (callback.getTotalBytesRead() < totalBytesRead);
    }

    public void readSInt32List(Internal.ProtobufList protobufList) {
        int readTag;
        WindowInsetsAnimationCompat.Callback callback = (WindowInsetsAnimationCompat.Callback) this.elements;
        int i = this.head & 7;
        if (i == 0) {
            do {
                ((ProtobufArrayList) protobufList).add(Integer.valueOf(callback.readSInt32()));
                if (callback.isAtEnd()) {
                    return;
                } else {
                    readTag = callback.readTag();
                }
            } while (readTag == this.head);
            this.capacityBitmask = readTag;
            return;
        }
        if (i != 2) {
            throw InvalidProtocolBufferException.invalidWireType();
        }
        int totalBytesRead = callback.getTotalBytesRead() + callback.readUInt32();
        do {
            ((ProtobufArrayList) protobufList).add(Integer.valueOf(callback.readSInt32()));
        } while (callback.getTotalBytesRead() < totalBytesRead);
        requirePosition(totalBytesRead);
    }

    public void readSInt64List(Internal.ProtobufList protobufList) {
        int readTag;
        WindowInsetsAnimationCompat.Callback callback = (WindowInsetsAnimationCompat.Callback) this.elements;
        int i = this.head & 7;
        if (i == 0) {
            do {
                ((ProtobufArrayList) protobufList).add(Long.valueOf(callback.readSInt64()));
                if (callback.isAtEnd()) {
                    return;
                } else {
                    readTag = callback.readTag();
                }
            } while (readTag == this.head);
            this.capacityBitmask = readTag;
            return;
        }
        if (i != 2) {
            throw InvalidProtocolBufferException.invalidWireType();
        }
        int totalBytesRead = callback.getTotalBytesRead() + callback.readUInt32();
        do {
            ((ProtobufArrayList) protobufList).add(Long.valueOf(callback.readSInt64()));
        } while (callback.getTotalBytesRead() < totalBytesRead);
        requirePosition(totalBytesRead);
    }

    public void readStringListInternal(Internal.ProtobufList protobufList, boolean z) {
        String readString;
        int readTag;
        WindowInsetsAnimationCompat.Callback callback = (WindowInsetsAnimationCompat.Callback) this.elements;
        if ((this.head & 7) != 2) {
            throw InvalidProtocolBufferException.invalidWireType();
        }
        do {
            if (z) {
                requireWireType(2);
                readString = callback.readStringRequireUtf8();
            } else {
                requireWireType(2);
                readString = callback.readString();
            }
            ((ProtobufArrayList) protobufList).add(readString);
            if (callback.isAtEnd()) {
                return;
            } else {
                readTag = callback.readTag();
            }
        } while (readTag == this.head);
        this.capacityBitmask = readTag;
    }

    public void readUInt32List(Internal.ProtobufList protobufList) {
        int readTag;
        WindowInsetsAnimationCompat.Callback callback = (WindowInsetsAnimationCompat.Callback) this.elements;
        int i = this.head & 7;
        if (i == 0) {
            do {
                ((ProtobufArrayList) protobufList).add(Integer.valueOf(callback.readUInt32()));
                if (callback.isAtEnd()) {
                    return;
                } else {
                    readTag = callback.readTag();
                }
            } while (readTag == this.head);
            this.capacityBitmask = readTag;
            return;
        }
        if (i != 2) {
            throw InvalidProtocolBufferException.invalidWireType();
        }
        int totalBytesRead = callback.getTotalBytesRead() + callback.readUInt32();
        do {
            ((ProtobufArrayList) protobufList).add(Integer.valueOf(callback.readUInt32()));
        } while (callback.getTotalBytesRead() < totalBytesRead);
        requirePosition(totalBytesRead);
    }

    public void readUInt64List(Internal.ProtobufList protobufList) {
        int readTag;
        WindowInsetsAnimationCompat.Callback callback = (WindowInsetsAnimationCompat.Callback) this.elements;
        int i = this.head & 7;
        if (i == 0) {
            do {
                ((ProtobufArrayList) protobufList).add(Long.valueOf(callback.readUInt64()));
                if (callback.isAtEnd()) {
                    return;
                } else {
                    readTag = callback.readTag();
                }
            } while (readTag == this.head);
            this.capacityBitmask = readTag;
            return;
        }
        if (i != 2) {
            throw InvalidProtocolBufferException.invalidWireType();
        }
        int totalBytesRead = callback.getTotalBytesRead() + callback.readUInt32();
        do {
            ((ProtobufArrayList) protobufList).add(Long.valueOf(callback.readUInt64()));
        } while (callback.getTotalBytesRead() < totalBytesRead);
        requirePosition(totalBytesRead);
    }

    public void requirePosition(int i) {
        if (((WindowInsetsAnimationCompat.Callback) this.elements).getTotalBytesRead() != i) {
            throw InvalidProtocolBufferException.truncatedMessage();
        }
    }

    public void requireWireType(int i) {
        if ((this.head & 7) != i) {
            throw InvalidProtocolBufferException.invalidWireType();
        }
    }

    public void skip() {
        this.tail++;
        this.capacityBitmask++;
    }

    public boolean skipField() {
        int i;
        WindowInsetsAnimationCompat.Callback callback = (WindowInsetsAnimationCompat.Callback) this.elements;
        if (callback.isAtEnd() || (i = this.head) == this.tail) {
            return false;
        }
        return callback.skipField(i);
    }

    public String toString() {
        switch (this.$r8$classId) {
            case 1:
                StringBuilder sb = new StringBuilder("SelectionInfo(id=1, range=(");
                int i = this.head;
                sb.append(i);
                sb.append('-');
                TextLayoutResult textLayoutResult = (TextLayoutResult) this.elements;
                sb.append(OAuthBearer.getTextDirectionForOffset(textLayoutResult, i));
                sb.append(',');
                int i2 = this.tail;
                sb.append(i2);
                sb.append('-');
                sb.append(OAuthBearer.getTextDirectionForOffset(textLayoutResult, i2));
                sb.append("), prevOffset=");
                return CameraDevices$CC.m(sb, this.capacityBitmask, ')');
            case 2:
            default:
                return super.toString();
            case 3:
                return "";
        }
    }

    public /* synthetic */ CircularArray(int i, Object obj) {
        this.$r8$classId = i;
        this.elements = obj;
    }

    public /* synthetic */ CircularArray(int i) {
        this.$r8$classId = i;
    }

    public CircularArray(WindowInsetsAnimationCompat.Callback callback) {
        this.$r8$classId = 4;
        this.capacityBitmask = 0;
        Charset charset = Internal.UTF_8;
        this.elements = callback;
        callback.mDispachedInsets = this;
    }

    public CircularArray(int i, int i2, int i3, TextLayoutResult textLayoutResult) {
        this.$r8$classId = 1;
        this.head = i;
        this.tail = i2;
        this.capacityBitmask = i3;
        this.elements = textLayoutResult;
    }
}
