package androidx.datastore.preferences;

import androidx.datastore.preferences.protobuf.AbstractProtobufList;
import androidx.datastore.preferences.protobuf.ByteString$LiteralByteString;
import androidx.datastore.preferences.protobuf.GeneratedMessageLite;
import androidx.datastore.preferences.protobuf.Internal;
import androidx.datastore.preferences.protobuf.LazyStringList;
import androidx.datastore.preferences.protobuf.Parser;
import androidx.datastore.preferences.protobuf.PrimitiveNonBoxingCollection;
import androidx.datastore.preferences.protobuf.ProtobufArrayList;
import androidx.datastore.preferences.protobuf.RawMessageInfo;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class PreferencesProto$StringSet extends GeneratedMessageLite {
    private static final PreferencesProto$StringSet DEFAULT_INSTANCE;
    private static volatile Parser PARSER = null;
    public static final int STRINGS_FIELD_NUMBER = 1;
    private Internal.ProtobufList strings_ = ProtobufArrayList.EMPTY_LIST;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Builder extends GeneratedMessageLite.Builder {
    }

    static {
        PreferencesProto$StringSet preferencesProto$StringSet = new PreferencesProto$StringSet();
        DEFAULT_INSTANCE = preferencesProto$StringSet;
        GeneratedMessageLite.registerDefaultInstance(PreferencesProto$StringSet.class, preferencesProto$StringSet);
    }

    public static PreferencesProto$StringSet getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static Builder newBuilder() {
        return (Builder) ((GeneratedMessageLite.Builder) DEFAULT_INSTANCE.dynamicMethod(GeneratedMessageLite.MethodToInvoke.NEW_BUILDER));
    }

    public final void addAllStrings(Iterable iterable) {
        Internal.ProtobufList protobufList = this.strings_;
        if (!((AbstractProtobufList) protobufList).isMutable) {
            int size = protobufList.size();
            protobufList = protobufList.mutableCopyWithCapacity(size == 0 ? 10 : size * 2);
            this.strings_ = protobufList;
        }
        Charset charset = Internal.UTF_8;
        if (iterable instanceof LazyStringList) {
            List underlyingElements = ((LazyStringList) iterable).getUnderlyingElements();
            LazyStringList lazyStringList = (LazyStringList) protobufList;
            int size2 = protobufList.size();
            for (Object obj : underlyingElements) {
                if (obj == null) {
                    String str = "Element at index " + (lazyStringList.size() - size2) + " is null.";
                    for (int size3 = lazyStringList.size() - 1; size3 >= size2; size3--) {
                        lazyStringList.remove(size3);
                    }
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$3(str);
                    return;
                }
                if (obj instanceof ByteString$LiteralByteString) {
                    lazyStringList.add((ByteString$LiteralByteString) obj);
                } else {
                    lazyStringList.add((LazyStringList) obj);
                }
            }
            return;
        }
        if (iterable instanceof PrimitiveNonBoxingCollection) {
            protobufList.addAll((Collection) iterable);
            return;
        }
        if ((protobufList instanceof ArrayList) && (iterable instanceof Collection)) {
            ((ArrayList) protobufList).ensureCapacity(((Collection) iterable).size() + protobufList.size());
        }
        int size4 = protobufList.size();
        for (Object obj2 : iterable) {
            if (obj2 == null) {
                String str2 = "Element at index " + (protobufList.size() - size4) + " is null.";
                for (int size5 = protobufList.size() - 1; size5 >= size4; size5--) {
                    protobufList.remove(size5);
                }
                _UtilJvmKt$$ExternalSyntheticLambda0.m$3(str2);
                return;
            }
            protobufList.add(obj2);
        }
    }

    @Override // androidx.datastore.preferences.protobuf.GeneratedMessageLite
    public final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke) {
        Parser parser;
        switch (PreferencesProto$1.$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke[methodToInvoke.ordinal()]) {
            case 1:
                return new PreferencesProto$StringSet();
            case 2:
                return new Builder(DEFAULT_INSTANCE);
            case 3:
                return new RawMessageInfo(DEFAULT_INSTANCE, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001a", new Object[]{"strings_"});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
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
            case 6:
                return (byte) 1;
            case 7:
                return null;
            default:
                throw new UnsupportedOperationException();
        }
    }

    public final Internal.ProtobufList getStringsList() {
        return this.strings_;
    }
}
