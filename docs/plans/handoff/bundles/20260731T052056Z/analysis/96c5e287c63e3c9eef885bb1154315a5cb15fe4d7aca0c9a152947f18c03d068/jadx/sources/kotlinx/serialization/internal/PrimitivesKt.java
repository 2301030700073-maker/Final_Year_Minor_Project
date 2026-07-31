package kotlinx.serialization.internal;

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
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import kotlin.reflect.KClass;
import kotlin.time.Duration;
import kotlin.time.Instant;
import kotlin.uuid.Uuid;
import okio.Path;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class PrimitivesKt {
    public static final MapBuilder BUILTIN_SERIALIZERS;

    static {
        MapBuilder mapBuilder = new MapBuilder();
        ReflectionFactory reflectionFactory = Reflection.factory;
        mapBuilder.put(reflectionFactory.getOrCreateKotlinClass(String.class), StringSerializer.INSTANCE);
        mapBuilder.put(reflectionFactory.getOrCreateKotlinClass(Character.TYPE), CharSerializer.INSTANCE);
        mapBuilder.put(reflectionFactory.getOrCreateKotlinClass(char[].class), CharArraySerializer.INSTANCE);
        mapBuilder.put(reflectionFactory.getOrCreateKotlinClass(Double.TYPE), DoubleSerializer.INSTANCE);
        mapBuilder.put(reflectionFactory.getOrCreateKotlinClass(double[].class), DoubleArraySerializer.INSTANCE);
        mapBuilder.put(reflectionFactory.getOrCreateKotlinClass(Float.TYPE), FloatSerializer.INSTANCE);
        mapBuilder.put(reflectionFactory.getOrCreateKotlinClass(float[].class), FloatArraySerializer.INSTANCE);
        mapBuilder.put(reflectionFactory.getOrCreateKotlinClass(Long.TYPE), LongSerializer.INSTANCE);
        mapBuilder.put(reflectionFactory.getOrCreateKotlinClass(long[].class), LongArraySerializer.INSTANCE);
        mapBuilder.put(reflectionFactory.getOrCreateKotlinClass(ULong.class), ULongSerializer.INSTANCE);
        mapBuilder.put(reflectionFactory.getOrCreateKotlinClass(Integer.TYPE), IntSerializer.INSTANCE);
        mapBuilder.put(reflectionFactory.getOrCreateKotlinClass(int[].class), IntArraySerializer.INSTANCE);
        mapBuilder.put(reflectionFactory.getOrCreateKotlinClass(UInt.class), UIntSerializer.INSTANCE);
        mapBuilder.put(reflectionFactory.getOrCreateKotlinClass(Short.TYPE), ShortSerializer.INSTANCE);
        mapBuilder.put(reflectionFactory.getOrCreateKotlinClass(short[].class), ShortArraySerializer.INSTANCE);
        mapBuilder.put(reflectionFactory.getOrCreateKotlinClass(UShort.class), UShortSerializer.INSTANCE);
        mapBuilder.put(reflectionFactory.getOrCreateKotlinClass(Byte.TYPE), ByteSerializer.INSTANCE);
        mapBuilder.put(reflectionFactory.getOrCreateKotlinClass(byte[].class), ByteArraySerializer.INSTANCE);
        mapBuilder.put(reflectionFactory.getOrCreateKotlinClass(UByte.class), UByteSerializer.INSTANCE);
        mapBuilder.put(reflectionFactory.getOrCreateKotlinClass(Boolean.TYPE), BooleanSerializer.INSTANCE);
        mapBuilder.put(reflectionFactory.getOrCreateKotlinClass(boolean[].class), BooleanArraySerializer.INSTANCE);
        mapBuilder.put(reflectionFactory.getOrCreateKotlinClass(Unit.class), UnitSerializer.INSTANCE);
        mapBuilder.put(reflectionFactory.getOrCreateKotlinClass(Void.class), NothingSerializer.INSTANCE);
        try {
            KClass orCreateKotlinClass = reflectionFactory.getOrCreateKotlinClass(Duration.class);
            Path.Companion companion = Duration.Companion;
            mapBuilder.put(orCreateKotlinClass, DurationSerializer.INSTANCE);
        } catch (ClassNotFoundException | NoClassDefFoundError unused) {
        }
        try {
            mapBuilder.put(Reflection.factory.getOrCreateKotlinClass(ULongArray.class), ULongArraySerializer.INSTANCE);
        } catch (ClassNotFoundException | NoClassDefFoundError unused2) {
        }
        try {
            mapBuilder.put(Reflection.factory.getOrCreateKotlinClass(UIntArray.class), UIntArraySerializer.INSTANCE);
        } catch (ClassNotFoundException | NoClassDefFoundError unused3) {
        }
        try {
            mapBuilder.put(Reflection.factory.getOrCreateKotlinClass(UShortArray.class), UShortArraySerializer.INSTANCE);
        } catch (ClassNotFoundException | NoClassDefFoundError unused4) {
        }
        try {
            mapBuilder.put(Reflection.factory.getOrCreateKotlinClass(UByteArray.class), UByteArraySerializer.INSTANCE);
        } catch (ClassNotFoundException | NoClassDefFoundError unused5) {
        }
        try {
            mapBuilder.put(Reflection.factory.getOrCreateKotlinClass(Uuid.class), UuidSerializer.INSTANCE);
        } catch (ClassNotFoundException | NoClassDefFoundError unused6) {
        }
        try {
            KClass orCreateKotlinClass2 = Reflection.factory.getOrCreateKotlinClass(Instant.class);
            Instant instant = Instant.MIN;
            mapBuilder.put(orCreateKotlinClass2, InstantSerializer.INSTANCE);
        } catch (ClassNotFoundException | NoClassDefFoundError unused7) {
        }
        BUILTIN_SERIALIZERS = mapBuilder.build();
    }
}
