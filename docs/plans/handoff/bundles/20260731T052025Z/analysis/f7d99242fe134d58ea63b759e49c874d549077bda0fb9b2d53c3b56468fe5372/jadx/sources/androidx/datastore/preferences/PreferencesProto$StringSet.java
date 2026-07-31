package androidx.datastore.preferences;

import androidx.camera.core.ImageAnalysis$$ExternalSyntheticLambda3;
import androidx.datastore.preferences.protobuf.ByteString$LiteralByteString;
import androidx.datastore.preferences.protobuf.GeneratedMessageLite;
import androidx.datastore.preferences.protobuf.Internal;
import androidx.datastore.preferences.protobuf.LazyStringList;
import androidx.datastore.preferences.protobuf.Parser;
import androidx.datastore.preferences.protobuf.PrimitiveNonBoxingCollection;
import androidx.datastore.preferences.protobuf.ProtobufArrayList;
import androidx.datastore.preferences.protobuf.RawMessageInfo;
import androidx.room.util.DBUtil$$ExternalSyntheticBUOutline0;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;
import kotlin.text.Regex$$ExternalSyntheticBUOutline0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class PreferencesProto$StringSet extends GeneratedMessageLite {
    private static final PreferencesProto$StringSet DEFAULT_INSTANCE;
    private static volatile Parser PARSER = null;
    public static final int STRINGS_FIELD_NUMBER = 1;
    private Internal.ProtobufList strings_ = ProtobufArrayList.EMPTY_LIST;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Builder extends GeneratedMessageLite.Builder {
    }

    static {
        PreferencesProto$StringSet preferencesProto$StringSet = new PreferencesProto$StringSet();
        DEFAULT_INSTANCE = preferencesProto$StringSet;
        GeneratedMessageLite.registerDefaultInstance(PreferencesProto$StringSet.class, preferencesProto$StringSet);
    }

    public static void access$2700(PreferencesProto$StringSet preferencesProto$StringSet, Iterable iterable) {
        Internal.ProtobufList protobufList = preferencesProto$StringSet.strings_;
        if (!((ProtobufArrayList) protobufList).isMutable) {
            ProtobufArrayList protobufArrayList = (ProtobufArrayList) protobufList;
            int i = protobufArrayList.size;
            preferencesProto$StringSet.strings_ = protobufArrayList.mutableCopyWithCapacity(i == 0 ? 10 : i * 2);
        }
        RandomAccess randomAccess = preferencesProto$StringSet.strings_;
        Charset charset = Internal.UTF_8;
        if (iterable instanceof LazyStringList) {
            List underlyingElements = ((LazyStringList) iterable).getUnderlyingElements();
            if (randomAccess != null) {
                DBUtil$$ExternalSyntheticBUOutline0.m();
                return;
            }
            ((ProtobufArrayList) randomAccess).getClass();
            Iterator it = underlyingElements.iterator();
            if (it.hasNext()) {
                Object next = it.next();
                next.getClass();
                if (next instanceof ByteString$LiteralByteString) {
                    throw null;
                }
                if (!(next instanceof byte[])) {
                    throw null;
                }
                byte[] bArr = (byte[]) next;
                ByteString$LiteralByteString.copyFrom(bArr, 0, bArr.length);
                throw null;
            }
            return;
        }
        if (iterable instanceof PrimitiveNonBoxingCollection) {
            ((ProtobufArrayList) randomAccess).addAll((Collection) iterable);
            return;
        }
        if ((randomAccess instanceof ArrayList) && (iterable instanceof Collection)) {
            ((ArrayList) randomAccess).ensureCapacity(((Collection) iterable).size() + ((ProtobufArrayList) randomAccess).size);
        }
        ProtobufArrayList protobufArrayList2 = (ProtobufArrayList) randomAccess;
        int i2 = protobufArrayList2.size;
        for (Object obj : iterable) {
            if (obj == null) {
                String str = "Element at index " + (protobufArrayList2.size - i2) + " is null.";
                for (int i3 = protobufArrayList2.size - 1; i3 >= i2; i3--) {
                    protobufArrayList2.remove(i3);
                }
                Regex$$ExternalSyntheticBUOutline0.m(str);
                return;
            }
            protobufArrayList2.add(obj);
        }
    }

    public static PreferencesProto$StringSet getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static Builder newBuilder() {
        return (Builder) ((GeneratedMessageLite.Builder) DEFAULT_INSTANCE.dynamicMethod(5));
    }

    @Override // androidx.datastore.preferences.protobuf.GeneratedMessageLite
    public final Object dynamicMethod(int i) {
        Parser parser;
        switch (ImageAnalysis$$ExternalSyntheticLambda3.ordinal(i)) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new RawMessageInfo(DEFAULT_INSTANCE, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001a", new Object[]{"strings_"});
            case 3:
                return new PreferencesProto$StringSet();
            case 4:
                return new Builder(DEFAULT_INSTANCE);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                Parser parser2 = PARSER;
                if (parser2 != null) {
                    return parser2;
                }
                synchronized (PreferencesProto$StringSet.class) {
                    try {
                        parser = PARSER;
                        if (parser == null) {
                            parser = new GeneratedMessageLite.DefaultInstanceBasedParser();
                            PARSER = parser;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                return parser;
            default:
                throw new UnsupportedOperationException();
        }
    }

    public final Internal.ProtobufList getStringsList() {
        return this.strings_;
    }
}
