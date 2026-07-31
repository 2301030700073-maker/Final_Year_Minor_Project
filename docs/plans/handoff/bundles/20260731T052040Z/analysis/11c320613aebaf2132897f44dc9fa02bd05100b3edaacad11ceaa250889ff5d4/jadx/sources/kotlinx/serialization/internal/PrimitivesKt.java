package kotlinx.serialization.internal;

import androidx.compose.ui.Modifier;
import java.util.Iterator;
import kotlin.UByte;
import kotlin.UByteArray;
import kotlin.UInt;
import kotlin.UIntArray;
import kotlin.ULong;
import kotlin.ULongArray;
import kotlin.UShort;
import kotlin.UShortArray;
import kotlin.Unit;
import kotlin.collections.builders.MapBuilder;
import kotlin.collections.builders.MapBuilderValues;
import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.Reflection;
import kotlin.text.StringsKt__IndentKt;
import kotlin.time.Duration;
import kotlin.time.Instant;
import kotlin.uuid.Uuid;
import kotlinx.serialization.KSerializer;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import okio.ByteString;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class PrimitivesKt {
    public static final MapBuilder BUILTIN_SERIALIZERS;

    static {
        MapBuilder mapBuilder = new MapBuilder();
        mapBuilder.put(Reflection.getOrCreateKotlinClass(String.class), StringSerializer.INSTANCE);
        mapBuilder.put(Reflection.getOrCreateKotlinClass(Character.TYPE), CharSerializer.INSTANCE);
        mapBuilder.put(Reflection.getOrCreateKotlinClass(char[].class), CharArraySerializer.INSTANCE);
        mapBuilder.put(Reflection.getOrCreateKotlinClass(Double.TYPE), DoubleSerializer.INSTANCE);
        mapBuilder.put(Reflection.getOrCreateKotlinClass(double[].class), DoubleArraySerializer.INSTANCE);
        mapBuilder.put(Reflection.getOrCreateKotlinClass(Float.TYPE), FloatSerializer.INSTANCE);
        mapBuilder.put(Reflection.getOrCreateKotlinClass(float[].class), FloatArraySerializer.INSTANCE);
        mapBuilder.put(Reflection.getOrCreateKotlinClass(Long.TYPE), LongSerializer.INSTANCE);
        mapBuilder.put(Reflection.getOrCreateKotlinClass(long[].class), LongArraySerializer.INSTANCE);
        mapBuilder.put(Reflection.getOrCreateKotlinClass(ULong.class), ULongSerializer.INSTANCE);
        mapBuilder.put(Reflection.getOrCreateKotlinClass(Integer.TYPE), IntSerializer.INSTANCE);
        mapBuilder.put(Reflection.getOrCreateKotlinClass(int[].class), IntArraySerializer.INSTANCE);
        mapBuilder.put(Reflection.getOrCreateKotlinClass(UInt.class), UIntSerializer.INSTANCE);
        mapBuilder.put(Reflection.getOrCreateKotlinClass(Short.TYPE), ShortSerializer.INSTANCE);
        mapBuilder.put(Reflection.getOrCreateKotlinClass(short[].class), ShortArraySerializer.INSTANCE);
        mapBuilder.put(Reflection.getOrCreateKotlinClass(UShort.class), UShortSerializer.INSTANCE);
        mapBuilder.put(Reflection.getOrCreateKotlinClass(Byte.TYPE), ByteSerializer.INSTANCE);
        mapBuilder.put(Reflection.getOrCreateKotlinClass(byte[].class), ByteArraySerializer.INSTANCE);
        mapBuilder.put(Reflection.getOrCreateKotlinClass(UByte.class), UByteSerializer.INSTANCE);
        mapBuilder.put(Reflection.getOrCreateKotlinClass(Boolean.TYPE), BooleanSerializer.INSTANCE);
        mapBuilder.put(Reflection.getOrCreateKotlinClass(boolean[].class), BooleanArraySerializer.INSTANCE);
        mapBuilder.put(Reflection.getOrCreateKotlinClass(Unit.class), UnitSerializer.INSTANCE);
        mapBuilder.put(Reflection.getOrCreateKotlinClass(Void.class), NothingSerializer.INSTANCE);
        try {
            ClassReference orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Duration.class);
            ByteString.Companion companion = Duration.Companion;
            mapBuilder.put(orCreateKotlinClass, DurationSerializer.INSTANCE);
        } catch (ClassNotFoundException | NoClassDefFoundError unused) {
        }
        try {
            mapBuilder.put(Reflection.getOrCreateKotlinClass(ULongArray.class), ULongArraySerializer.INSTANCE);
        } catch (ClassNotFoundException | NoClassDefFoundError unused2) {
        }
        try {
            mapBuilder.put(Reflection.getOrCreateKotlinClass(UIntArray.class), UIntArraySerializer.INSTANCE);
        } catch (ClassNotFoundException | NoClassDefFoundError unused3) {
        }
        try {
            mapBuilder.put(Reflection.getOrCreateKotlinClass(UShortArray.class), UShortArraySerializer.INSTANCE);
        } catch (ClassNotFoundException | NoClassDefFoundError unused4) {
        }
        try {
            mapBuilder.put(Reflection.getOrCreateKotlinClass(UByteArray.class), UByteArraySerializer.INSTANCE);
        } catch (ClassNotFoundException | NoClassDefFoundError unused5) {
        }
        try {
            mapBuilder.put(Reflection.getOrCreateKotlinClass(Uuid.class), UuidSerializer.INSTANCE);
        } catch (ClassNotFoundException | NoClassDefFoundError unused6) {
        }
        try {
            ClassReference orCreateKotlinClass2 = Reflection.getOrCreateKotlinClass(Instant.class);
            Instant instant = Instant.MIN;
            mapBuilder.put(orCreateKotlinClass2, InstantSerializer.INSTANCE);
        } catch (ClassNotFoundException | NoClassDefFoundError unused7) {
        }
        BUILTIN_SERIALIZERS = mapBuilder.build();
    }

    public static final void checkNameIsNotAPrimitive(String str) {
        Iterator it = ((MapBuilderValues) BUILTIN_SERIALIZERS.values()).iterator();
        while (it.hasNext()) {
            KSerializer kSerializer = (KSerializer) it.next();
            if (str.equals(kSerializer.getDescriptor().getSerialName())) {
                StringBuilder m180m = Modifier.CC.m180m("\n                The name of serial descriptor should uniquely identify associated serializer.\n                For serial name ", str, " there already exists ");
                m180m.append(Reflection.getOrCreateKotlinClass(kSerializer.getClass()).getSimpleName());
                m180m.append(".\n                Please refer to SerialDescriptor documentation for additional information.\n            ");
                _UtilJvmKt$$ExternalSyntheticLambda1.m$1(StringsKt__IndentKt.trimIndent(m180m.toString()));
                return;
            }
        }
    }
}
