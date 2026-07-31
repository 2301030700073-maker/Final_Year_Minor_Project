package androidx.datastore.preferences.protobuf;

import androidx.glance.appwidget.protobuf.UnsafeUtil;
import java.lang.reflect.Field;
import java.nio.Buffer;
import java.security.PrivilegedExceptionAction;
import java.util.logging.Logger;
import sun.misc.Unsafe;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class UnsafeUtil {
    public static final long BYTE_ARRAY_BASE_OFFSET;
    public static final boolean HAS_UNSAFE_ARRAY_OPERATIONS;
    public static final boolean HAS_UNSAFE_BYTEBUFFER_OPERATIONS;
    public static final boolean IS_BIG_ENDIAN;
    public static final UnsafeUtil.MemoryAccessor MEMORY_ACCESSOR;
    public static final Class MEMORY_CLASS;
    public static final Unsafe UNSAFE;
    public static final Logger logger = Logger.getLogger(UnsafeUtil.class.getName());

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: androidx.datastore.preferences.protobuf.UnsafeUtil$1, reason: invalid class name */
    public final class AnonymousClass1 implements PrivilegedExceptionAction {
        @Override // java.security.PrivilegedExceptionAction
        public final Object run() {
            for (Field field : Unsafe.class.getDeclaredFields()) {
                field.setAccessible(true);
                Object obj = field.get(null);
                if (Unsafe.class.isInstance(obj)) {
                    return (Unsafe) Unsafe.class.cast(obj);
                }
            }
            return null;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Android32MemoryAccessor extends UnsafeUtil.MemoryAccessor {
        public final /* synthetic */ int $r8$classId;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ Android32MemoryAccessor(Unsafe unsafe, int i) {
            super(unsafe);
            this.$r8$classId = i;
        }

        @Override // androidx.glance.appwidget.protobuf.UnsafeUtil.MemoryAccessor
        public final boolean getBoolean(long j, Object obj) {
            switch (this.$r8$classId) {
                case 0:
                    if (UnsafeUtil.IS_BIG_ENDIAN) {
                        if (UnsafeUtil.getByteBigEndian(j, obj) == 0) {
                        }
                    } else if (UnsafeUtil.getByteLittleEndian(j, obj) == 0) {
                    }
                    break;
                default:
                    if (UnsafeUtil.IS_BIG_ENDIAN) {
                        if (UnsafeUtil.getByteBigEndian(j, obj) == 0) {
                        }
                    } else if (UnsafeUtil.getByteLittleEndian(j, obj) == 0) {
                    }
                    break;
            }
            return false;
        }

        @Override // androidx.glance.appwidget.protobuf.UnsafeUtil.MemoryAccessor
        public final byte getByte(long j, Object obj) {
            switch (this.$r8$classId) {
                case 0:
                    if (!UnsafeUtil.IS_BIG_ENDIAN) {
                        break;
                    } else {
                        break;
                    }
                default:
                    if (!UnsafeUtil.IS_BIG_ENDIAN) {
                        break;
                    } else {
                        break;
                    }
            }
            return UnsafeUtil.getByteLittleEndian(j, obj);
        }

        @Override // androidx.glance.appwidget.protobuf.UnsafeUtil.MemoryAccessor
        public final double getDouble(long j, Object obj) {
            switch (this.$r8$classId) {
            }
            return Double.longBitsToDouble(this.unsafe.getLong(obj, j));
        }

        @Override // androidx.glance.appwidget.protobuf.UnsafeUtil.MemoryAccessor
        public final float getFloat(long j, Object obj) {
            switch (this.$r8$classId) {
            }
            return Float.intBitsToFloat(this.unsafe.getInt(obj, j));
        }

        @Override // androidx.glance.appwidget.protobuf.UnsafeUtil.MemoryAccessor
        public final void putBoolean(Object obj, long j, boolean z) {
            switch (this.$r8$classId) {
                case 0:
                    if (!UnsafeUtil.IS_BIG_ENDIAN) {
                        UnsafeUtil.putByteLittleEndian(obj, j, z ? (byte) 1 : (byte) 0);
                        break;
                    } else {
                        UnsafeUtil.putByteBigEndian(obj, j, z ? (byte) 1 : (byte) 0);
                        break;
                    }
                default:
                    if (!UnsafeUtil.IS_BIG_ENDIAN) {
                        UnsafeUtil.putByteLittleEndian(obj, j, z ? (byte) 1 : (byte) 0);
                        break;
                    } else {
                        UnsafeUtil.putByteBigEndian(obj, j, z ? (byte) 1 : (byte) 0);
                        break;
                    }
            }
        }

        @Override // androidx.glance.appwidget.protobuf.UnsafeUtil.MemoryAccessor
        public final void putByte(Object obj, long j, byte b) {
            switch (this.$r8$classId) {
                case 0:
                    if (!UnsafeUtil.IS_BIG_ENDIAN) {
                        UnsafeUtil.putByteLittleEndian(obj, j, b);
                        break;
                    } else {
                        UnsafeUtil.putByteBigEndian(obj, j, b);
                        break;
                    }
                default:
                    if (!UnsafeUtil.IS_BIG_ENDIAN) {
                        UnsafeUtil.putByteLittleEndian(obj, j, b);
                        break;
                    } else {
                        UnsafeUtil.putByteBigEndian(obj, j, b);
                        break;
                    }
            }
        }

        @Override // androidx.glance.appwidget.protobuf.UnsafeUtil.MemoryAccessor
        public final void putDouble(Object obj, long j, double d) {
            switch (this.$r8$classId) {
                case 0:
                    this.unsafe.putLong(obj, j, Double.doubleToLongBits(d));
                    break;
                default:
                    this.unsafe.putLong(obj, j, Double.doubleToLongBits(d));
                    break;
            }
        }

        @Override // androidx.glance.appwidget.protobuf.UnsafeUtil.MemoryAccessor
        public final void putFloat(Object obj, long j, float f) {
            switch (this.$r8$classId) {
                case 0:
                    this.unsafe.putInt(obj, j, Float.floatToIntBits(f));
                    break;
                default:
                    this.unsafe.putInt(obj, j, Float.floatToIntBits(f));
                    break;
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class JvmMemoryAccessor extends UnsafeUtil.MemoryAccessor {
        @Override // androidx.glance.appwidget.protobuf.UnsafeUtil.MemoryAccessor
        public final boolean getBoolean(long j, Object obj) {
            return this.unsafe.getBoolean(obj, j);
        }

        @Override // androidx.glance.appwidget.protobuf.UnsafeUtil.MemoryAccessor
        public final byte getByte(long j, Object obj) {
            return this.unsafe.getByte(obj, j);
        }

        @Override // androidx.glance.appwidget.protobuf.UnsafeUtil.MemoryAccessor
        public final double getDouble(long j, Object obj) {
            return this.unsafe.getDouble(obj, j);
        }

        @Override // androidx.glance.appwidget.protobuf.UnsafeUtil.MemoryAccessor
        public final float getFloat(long j, Object obj) {
            return this.unsafe.getFloat(obj, j);
        }

        @Override // androidx.glance.appwidget.protobuf.UnsafeUtil.MemoryAccessor
        public final void putBoolean(Object obj, long j, boolean z) {
            this.unsafe.putBoolean(obj, j, z);
        }

        @Override // androidx.glance.appwidget.protobuf.UnsafeUtil.MemoryAccessor
        public final void putByte(Object obj, long j, byte b) {
            this.unsafe.putByte(obj, j, b);
        }

        @Override // androidx.glance.appwidget.protobuf.UnsafeUtil.MemoryAccessor
        public final void putDouble(Object obj, long j, double d) {
            this.unsafe.putDouble(obj, j, d);
        }

        @Override // androidx.glance.appwidget.protobuf.UnsafeUtil.MemoryAccessor
        public final void putFloat(Object obj, long j, float f) {
            this.unsafe.putFloat(obj, j, f);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0114  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0260  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0272  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0275  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x011a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    static {
        /*
            Method dump skipped, instructions count: 634
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.preferences.protobuf.UnsafeUtil.<clinit>():void");
    }

    public static int arrayBaseOffset(Class cls) {
        if (HAS_UNSAFE_ARRAY_OPERATIONS) {
            return MEMORY_ACCESSOR.unsafe.arrayBaseOffset(cls);
        }
        return -1;
    }

    public static void arrayIndexScale(Class cls) {
        if (HAS_UNSAFE_ARRAY_OPERATIONS) {
            MEMORY_ACCESSOR.unsafe.arrayIndexScale(cls);
        }
    }

    public static Field bufferAddressField() {
        Field field;
        Field field2;
        if (Android.isOnAndroidDevice()) {
            try {
                field2 = Buffer.class.getDeclaredField("effectiveDirectAddress");
            } catch (Throwable unused) {
                field2 = null;
            }
            if (field2 != null) {
                return field2;
            }
        }
        try {
            field = Buffer.class.getDeclaredField("address");
        } catch (Throwable unused2) {
            field = null;
        }
        if (field == null || field.getType() != Long.TYPE) {
            return null;
        }
        return field;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean determineAndroidSupportByAddressSize(Class cls) {
        if (!Android.isOnAndroidDevice()) {
            return false;
        }
        try {
            Class cls2 = MEMORY_CLASS;
            Class cls3 = Boolean.TYPE;
            cls2.getMethod("peekLong", cls, cls3);
            cls2.getMethod("pokeLong", cls, Long.TYPE, cls3);
            Class cls4 = Integer.TYPE;
            cls2.getMethod("pokeInt", cls, cls4, cls3);
            cls2.getMethod("peekInt", cls, cls3);
            cls2.getMethod("pokeByte", cls, Byte.TYPE);
            cls2.getMethod("peekByte", cls);
            cls2.getMethod("pokeByteArray", cls, byte[].class, cls4, cls4);
            cls2.getMethod("peekByteArray", cls, byte[].class, cls4, cls4);
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static byte getByte(byte[] bArr, long j) {
        return MEMORY_ACCESSOR.getByte(BYTE_ARRAY_BASE_OFFSET + j, bArr);
    }

    public static byte getByteBigEndian(long j, Object obj) {
        return (byte) ((getInt((-4) & j, obj) >>> ((int) (((~j) & 3) << 3))) & 255);
    }

    public static byte getByteLittleEndian(long j, Object obj) {
        return (byte) ((getInt((-4) & j, obj) >>> ((int) ((j & 3) << 3))) & 255);
    }

    public static int getInt(long j, Object obj) {
        return MEMORY_ACCESSOR.unsafe.getInt(obj, j);
    }

    public static long getLong(long j, Object obj) {
        return MEMORY_ACCESSOR.unsafe.getLong(obj, j);
    }

    public static Object getObject(long j, Object obj) {
        return MEMORY_ACCESSOR.unsafe.getObject(obj, j);
    }

    public static void putByte(byte[] bArr, long j, byte b) {
        MEMORY_ACCESSOR.putByte(bArr, BYTE_ARRAY_BASE_OFFSET + j, b);
    }

    public static void putByteBigEndian(Object obj, long j, byte b) {
        long j2 = (-4) & j;
        int i = getInt(j2, obj);
        int i2 = ((~((int) j)) & 3) << 3;
        putInt(((255 & b) << i2) | (i & (~(255 << i2))), j2, obj);
    }

    public static void putByteLittleEndian(Object obj, long j, byte b) {
        long j2 = (-4) & j;
        int i = (((int) j) & 3) << 3;
        putInt(((255 & b) << i) | (getInt(j2, obj) & (~(255 << i))), j2, obj);
    }

    public static void putInt(int i, long j, Object obj) {
        MEMORY_ACCESSOR.unsafe.putInt(obj, j, i);
    }

    public static void putLong(Object obj, long j, long j2) {
        MEMORY_ACCESSOR.unsafe.putLong(obj, j, j2);
    }

    public static void putObject(Object obj, long j, Object obj2) {
        MEMORY_ACCESSOR.unsafe.putObject(obj, j, obj2);
    }
}
