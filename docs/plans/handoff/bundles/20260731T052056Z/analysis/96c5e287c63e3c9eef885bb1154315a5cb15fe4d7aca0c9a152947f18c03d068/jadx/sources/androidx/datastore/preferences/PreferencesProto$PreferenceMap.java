package androidx.datastore.preferences;

import androidx.compose.ui.text.input.GapBuffer;
import androidx.datastore.preferences.protobuf.CodedInputStream$StreamDecoder;
import androidx.datastore.preferences.protobuf.ExtensionRegistryLite;
import androidx.datastore.preferences.protobuf.GeneratedMessageLite;
import androidx.datastore.preferences.protobuf.InvalidProtocolBufferException;
import androidx.datastore.preferences.protobuf.MapEntryLite;
import androidx.datastore.preferences.protobuf.MapFieldLite;
import androidx.datastore.preferences.protobuf.Parser;
import androidx.datastore.preferences.protobuf.Protobuf;
import androidx.datastore.preferences.protobuf.RawMessageInfo;
import androidx.datastore.preferences.protobuf.Schema;
import androidx.datastore.preferences.protobuf.WireFormat$FieldType;
import coil3.network.HttpException;
import j$.util.DesugarCollections;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.Map;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class PreferencesProto$PreferenceMap extends GeneratedMessageLite {
    private static final PreferencesProto$PreferenceMap DEFAULT_INSTANCE;
    private static volatile Parser PARSER = null;
    public static final int PREFERENCES_FIELD_NUMBER = 1;
    private MapFieldLite preferences_ = MapFieldLite.EMPTY_MAP_FIELD;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Builder extends GeneratedMessageLite.Builder {
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract class PreferencesDefaultEntryHolder {
        public static final MapEntryLite defaultEntry = new MapEntryLite(WireFormat$FieldType.STRING, WireFormat$FieldType.MESSAGE, PreferencesProto$Value.getDefaultInstance());
    }

    static {
        PreferencesProto$PreferenceMap preferencesProto$PreferenceMap = new PreferencesProto$PreferenceMap();
        DEFAULT_INSTANCE = preferencesProto$PreferenceMap;
        GeneratedMessageLite.registerDefaultInstance(PreferencesProto$PreferenceMap.class, preferencesProto$PreferenceMap);
    }

    public static Builder newBuilder() {
        return (Builder) ((GeneratedMessageLite.Builder) DEFAULT_INSTANCE.dynamicMethod(GeneratedMessageLite.MethodToInvoke.NEW_BUILDER));
    }

    public static PreferencesProto$PreferenceMap parseFrom(FileInputStream fileInputStream) {
        PreferencesProto$PreferenceMap preferencesProto$PreferenceMap = DEFAULT_INSTANCE;
        CodedInputStream$StreamDecoder codedInputStream$StreamDecoder = new CodedInputStream$StreamDecoder(fileInputStream);
        ExtensionRegistryLite emptyRegistry = ExtensionRegistryLite.getEmptyRegistry();
        GeneratedMessageLite generatedMessageLite = (GeneratedMessageLite) preferencesProto$PreferenceMap.dynamicMethod(GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE);
        try {
            Protobuf protobuf = Protobuf.INSTANCE;
            protobuf.getClass();
            Schema schemaFor = protobuf.schemaFor(generatedMessageLite.getClass());
            GapBuffer gapBuffer = codedInputStream$StreamDecoder.wrapper;
            if (gapBuffer == null) {
                gapBuffer = new GapBuffer(codedInputStream$StreamDecoder);
            }
            schemaFor.mergeFrom(generatedMessageLite, gapBuffer, emptyRegistry);
            schemaFor.makeImmutable(generatedMessageLite);
            if (generatedMessageLite.isInitialized()) {
                return (PreferencesProto$PreferenceMap) generatedMessageLite;
            }
            throw new InvalidProtocolBufferException(new HttpException(false).getMessage());
        } catch (IOException e) {
            if (e.getCause() instanceof InvalidProtocolBufferException) {
                throw ((InvalidProtocolBufferException) e.getCause());
            }
            throw new InvalidProtocolBufferException(e.getMessage());
        } catch (RuntimeException e2) {
            if (e2.getCause() instanceof InvalidProtocolBufferException) {
                throw ((InvalidProtocolBufferException) e2.getCause());
            }
            throw e2;
        }
    }

    @Override // androidx.datastore.preferences.protobuf.GeneratedMessageLite
    public final Object dynamicMethod(GeneratedMessageLite.MethodToInvoke methodToInvoke) {
        Parser parser;
        switch (PreferencesProto$1.$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke[methodToInvoke.ordinal()]) {
            case 1:
                return new PreferencesProto$PreferenceMap();
            case 2:
                return new Builder(DEFAULT_INSTANCE);
            case 3:
                return new RawMessageInfo(DEFAULT_INSTANCE, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u00012", new Object[]{"preferences_", PreferencesDefaultEntryHolder.defaultEntry});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                Parser parser2 = PARSER;
                if (parser2 != null) {
                    return parser2;
                }
                synchronized (PreferencesProto$PreferenceMap.class) {
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

    public final Map getPreferencesMap() {
        return DesugarCollections.unmodifiableMap(this.preferences_);
    }

    public final MapFieldLite internalGetMutablePreferences() {
        MapFieldLite mapFieldLite = this.preferences_;
        if (mapFieldLite.isMutable) {
            return mapFieldLite;
        }
        MapFieldLite mutableCopy = mapFieldLite.mutableCopy();
        this.preferences_ = mutableCopy;
        return mutableCopy;
    }
}
