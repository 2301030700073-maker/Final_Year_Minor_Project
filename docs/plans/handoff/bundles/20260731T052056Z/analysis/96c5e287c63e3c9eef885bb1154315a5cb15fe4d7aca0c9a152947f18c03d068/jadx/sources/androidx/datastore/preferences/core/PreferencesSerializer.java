package androidx.datastore.preferences.core;

import androidx.datastore.core.CorruptionException;
import androidx.datastore.core.Serializer;
import androidx.datastore.core.SingleProcessDataStore;
import androidx.datastore.preferences.PreferencesProto$PreferenceMap;
import androidx.datastore.preferences.PreferencesProto$StringSet;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.datastore.preferences.protobuf.CodedOutputStream$OutputStreamEncoder;
import androidx.datastore.preferences.protobuf.GeneratedMessageLite;
import androidx.datastore.preferences.protobuf.Internal;
import androidx.datastore.preferences.protobuf.InvalidProtocolBufferException;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import j$.util.DesugarCollections;
import java.io.FileInputStream;
import java.util.Arrays;
import java.util.Map;
import java.util.Set;
import java.util.logging.Logger;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class PreferencesSerializer implements Serializer {
    public static final PreferencesSerializer INSTANCE = new PreferencesSerializer();

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[PreferencesProto$Value.ValueCase.values().length];
            iArr[PreferencesProto$Value.ValueCase.BOOLEAN.ordinal()] = 1;
            iArr[PreferencesProto$Value.ValueCase.FLOAT.ordinal()] = 2;
            iArr[PreferencesProto$Value.ValueCase.DOUBLE.ordinal()] = 3;
            iArr[PreferencesProto$Value.ValueCase.INTEGER.ordinal()] = 4;
            iArr[PreferencesProto$Value.ValueCase.LONG.ordinal()] = 5;
            iArr[PreferencesProto$Value.ValueCase.STRING.ordinal()] = 6;
            iArr[PreferencesProto$Value.ValueCase.STRING_SET.ordinal()] = 7;
            iArr[PreferencesProto$Value.ValueCase.VALUE_NOT_SET.ordinal()] = 8;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    @Override // androidx.datastore.core.Serializer
    public final Object getDefaultValue() {
        return new MutablePreferences(true);
    }

    @Override // androidx.datastore.core.Serializer
    public final Object readFrom(FileInputStream fileInputStream) {
        try {
            PreferencesProto$PreferenceMap parseFrom = PreferencesProto$PreferenceMap.parseFrom(fileInputStream);
            MutablePreferences mutablePreferences = new MutablePreferences(false);
            Preferences$Pair[] preferences$PairArr = (Preferences$Pair[]) Arrays.copyOf(new Preferences$Pair[0], 0);
            if (mutablePreferences.frozen.get()) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Do mutate preferences once returned to DataStore.");
                return null;
            }
            if (preferences$PairArr.length > 0) {
                Preferences$Pair preferences$Pair = preferences$PairArr[0];
                throw null;
            }
            Map preferencesMap = parseFrom.getPreferencesMap();
            preferencesMap.getClass();
            for (Map.Entry entry : preferencesMap.entrySet()) {
                String str = (String) entry.getKey();
                PreferencesProto$Value preferencesProto$Value = (PreferencesProto$Value) entry.getValue();
                str.getClass();
                preferencesProto$Value.getClass();
                PreferencesProto$Value.ValueCase valueCase = preferencesProto$Value.getValueCase();
                switch (valueCase == null ? -1 : WhenMappings.$EnumSwitchMapping$0[valueCase.ordinal()]) {
                    case -1:
                        throw new CorruptionException("Value case is null.", null);
                    case 0:
                    default:
                        ContextsKt$$ExternalSyntheticBUOutline0.m();
                        return null;
                    case 1:
                        mutablePreferences.setUnchecked$datastore_preferences_core(new Preferences$Key(str), Boolean.valueOf(preferencesProto$Value.getBoolean()));
                        break;
                    case 2:
                        mutablePreferences.setUnchecked$datastore_preferences_core(new Preferences$Key(str), Float.valueOf(preferencesProto$Value.getFloat()));
                        break;
                    case 3:
                        mutablePreferences.setUnchecked$datastore_preferences_core(new Preferences$Key(str), Double.valueOf(preferencesProto$Value.getDouble()));
                        break;
                    case 4:
                        mutablePreferences.setUnchecked$datastore_preferences_core(new Preferences$Key(str), Integer.valueOf(preferencesProto$Value.getInteger()));
                        break;
                    case 5:
                        mutablePreferences.setUnchecked$datastore_preferences_core(new Preferences$Key(str), Long.valueOf(preferencesProto$Value.getLong()));
                        break;
                    case 6:
                        Preferences$Key preferences$Key = new Preferences$Key(str);
                        String string = preferencesProto$Value.getString();
                        string.getClass();
                        mutablePreferences.setUnchecked$datastore_preferences_core(preferences$Key, string);
                        break;
                    case 7:
                        Preferences$Key preferences$Key2 = new Preferences$Key(str);
                        Internal.ProtobufList stringsList = preferencesProto$Value.getStringSet().getStringsList();
                        stringsList.getClass();
                        mutablePreferences.setUnchecked$datastore_preferences_core(preferences$Key2, CollectionsKt.toSet(stringsList));
                        break;
                    case 8:
                        throw new CorruptionException("Value not set.", null);
                }
            }
            return mutablePreferences.toPreferences();
        } catch (InvalidProtocolBufferException e) {
            throw new CorruptionException("Unable to parse preferences proto.", e);
        }
    }

    @Override // androidx.datastore.core.Serializer
    public final void writeTo(Object obj, SingleProcessDataStore.UncloseableOutputStream uncloseableOutputStream) {
        GeneratedMessageLite build;
        Map unmodifiableMap = DesugarCollections.unmodifiableMap(((MutablePreferences) obj).preferencesMap);
        unmodifiableMap.getClass();
        PreferencesProto$PreferenceMap.Builder newBuilder = PreferencesProto$PreferenceMap.newBuilder();
        for (Map.Entry entry : unmodifiableMap.entrySet()) {
            Preferences$Key preferences$Key = (Preferences$Key) entry.getKey();
            Object value = entry.getValue();
            String str = preferences$Key.name;
            if (value instanceof Boolean) {
                PreferencesProto$Value.Builder newBuilder2 = PreferencesProto$Value.newBuilder();
                boolean booleanValue = ((Boolean) value).booleanValue();
                newBuilder2.copyOnWrite();
                ((PreferencesProto$Value) newBuilder2.instance).setBoolean(booleanValue);
                build = newBuilder2.build();
            } else if (value instanceof Float) {
                PreferencesProto$Value.Builder newBuilder3 = PreferencesProto$Value.newBuilder();
                float floatValue = ((Number) value).floatValue();
                newBuilder3.copyOnWrite();
                ((PreferencesProto$Value) newBuilder3.instance).setFloat(floatValue);
                build = newBuilder3.build();
            } else if (value instanceof Double) {
                PreferencesProto$Value.Builder newBuilder4 = PreferencesProto$Value.newBuilder();
                double doubleValue = ((Number) value).doubleValue();
                newBuilder4.copyOnWrite();
                ((PreferencesProto$Value) newBuilder4.instance).setDouble(doubleValue);
                build = newBuilder4.build();
            } else if (value instanceof Integer) {
                PreferencesProto$Value.Builder newBuilder5 = PreferencesProto$Value.newBuilder();
                int intValue = ((Number) value).intValue();
                newBuilder5.copyOnWrite();
                ((PreferencesProto$Value) newBuilder5.instance).setInteger(intValue);
                build = newBuilder5.build();
            } else if (value instanceof Long) {
                PreferencesProto$Value.Builder newBuilder6 = PreferencesProto$Value.newBuilder();
                long longValue = ((Number) value).longValue();
                newBuilder6.copyOnWrite();
                ((PreferencesProto$Value) newBuilder6.instance).setLong(longValue);
                build = newBuilder6.build();
            } else if (value instanceof String) {
                PreferencesProto$Value.Builder newBuilder7 = PreferencesProto$Value.newBuilder();
                newBuilder7.copyOnWrite();
                ((PreferencesProto$Value) newBuilder7.instance).setString((String) value);
                build = newBuilder7.build();
            } else {
                if (!(value instanceof Set)) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1(Intrinsics.stringPlus("PreferencesSerializer does not support type: ", value.getClass().getName()));
                    return;
                }
                PreferencesProto$Value.Builder newBuilder8 = PreferencesProto$Value.newBuilder();
                PreferencesProto$StringSet.Builder newBuilder9 = PreferencesProto$StringSet.newBuilder();
                newBuilder9.copyOnWrite();
                ((PreferencesProto$StringSet) newBuilder9.instance).addAllStrings((Set) value);
                newBuilder8.copyOnWrite();
                ((PreferencesProto$Value) newBuilder8.instance).setStringSet(newBuilder9);
                build = newBuilder8.build();
            }
            newBuilder.getClass();
            newBuilder.copyOnWrite();
            ((PreferencesProto$PreferenceMap) newBuilder.instance).internalGetMutablePreferences().put(str, (PreferencesProto$Value) build);
        }
        PreferencesProto$PreferenceMap preferencesProto$PreferenceMap = (PreferencesProto$PreferenceMap) newBuilder.build();
        int serializedSize = preferencesProto$PreferenceMap.getSerializedSize();
        Logger logger = CodedOutputStream$OutputStreamEncoder.logger;
        if (serializedSize > 4096) {
            serializedSize = 4096;
        }
        CodedOutputStream$OutputStreamEncoder codedOutputStream$OutputStreamEncoder = new CodedOutputStream$OutputStreamEncoder(uncloseableOutputStream, serializedSize);
        preferencesProto$PreferenceMap.writeTo(codedOutputStream$OutputStreamEncoder);
        if (codedOutputStream$OutputStreamEncoder.position > 0) {
            codedOutputStream$OutputStreamEncoder.doFlush();
        }
    }
}
