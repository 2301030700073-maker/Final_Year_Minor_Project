package kotlin.reflect.jvm.internal.impl.storage;

import androidx.compose.animation.core.Animation;
import androidx.room.Room;
import coil3.size.ViewSizeResolver$size$3$1;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.types.AbstractTypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorUtils;
import kotlin.reflect.jvm.internal.impl.utils.DFS;
import kotlin.reflect.jvm.internal.impl.utils.WrappedValues$ThrowableWrapper;
import kotlin.text.StringsKt;
import kotlinx.serialization.json.internal.Composer;
import leakcanary.AndroidLeakFixes$Companion$onDecorViewReady$1;
import leakcanary.AndroidLeakFixes$TEXT_LINE_POOL$apply$1$2;
import okhttp3.ConnectionPool;
import okhttp3.FormBody;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public class LockBasedStorageManager {
    public static final AnonymousClass1 NO_LOCKS;
    public static final String PACKAGE_NAME;
    public final String debugText;
    public final EmptySimpleLock exceptionHandlingStrategy;
    public final SimpleLock lock;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager$1, reason: invalid class name */
    public final class AnonymousClass1 extends LockBasedStorageManager {
        @Override // kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager
        public final Composer recursionDetectedDefault(String str, Object obj) {
            return new Composer(null, true, 6);
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager$4, reason: invalid class name */
    public final class AnonymousClass4 extends LockBasedNotNullLazyValue {
        @Override // kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager.LockBasedLazyValue
        public final Composer recursionDetected(boolean z) {
            return new Composer(EmptyList.INSTANCE, false, 6);
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager$5, reason: invalid class name */
    public final class AnonymousClass5 extends LockBasedLazyValue implements NotNullLazyValue {
        public final /* synthetic */ AndroidLeakFixes$TEXT_LINE_POOL$apply$1$2 val$postCompute;
        public volatile FormBody.Builder valuePostCompute;

        public static /* synthetic */ void $$$reportNull$$$0(int i) {
            String str = i != 2 ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
            Object[] objArr = new Object[i != 2 ? 2 : 3];
            if (i != 2) {
                objArr[0] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$5";
            } else {
                objArr[0] = "value";
            }
            if (i != 2) {
                objArr[1] = "recursionDetected";
            } else {
                objArr[1] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$5";
            }
            if (i == 2) {
                objArr[2] = "doPostCompute";
            }
            String format = String.format(str, objArr);
            if (i == 2) {
                throw new IllegalArgumentException(format);
            }
        }

        public static /* synthetic */ void $$$reportNull$$$0$kotlin$reflect$jvm$internal$impl$storage$LockBasedStorageManager$LockBasedNotNullLazyValueWithPostCompute(int i) {
            String str = i != 2 ? "Argument for @NotNull parameter '%s' of %s.%s must not be null" : "@NotNull method %s.%s must not return null";
            Object[] objArr = new Object[i != 2 ? 3 : 2];
            if (i == 1) {
                objArr[0] = "computable";
            } else if (i != 2) {
                objArr[0] = "storageManager";
            } else {
                objArr[0] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedNotNullLazyValueWithPostCompute";
            }
            if (i != 2) {
                objArr[1] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedNotNullLazyValueWithPostCompute";
            } else {
                objArr[1] = "invoke";
            }
            if (i != 2) {
                objArr[2] = "<init>";
            }
            String format = String.format(str, objArr);
            if (i == 2) {
                throw new IllegalStateException(format);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass5(LockBasedStorageManager lockBasedStorageManager, AndroidLeakFixes$Companion$onDecorViewReady$1 androidLeakFixes$Companion$onDecorViewReady$1, AndroidLeakFixes$TEXT_LINE_POOL$apply$1$2 androidLeakFixes$TEXT_LINE_POOL$apply$1$2) {
            super(lockBasedStorageManager, androidLeakFixes$Companion$onDecorViewReady$1);
            this.val$postCompute = androidLeakFixes$TEXT_LINE_POOL$apply$1$2;
            if (lockBasedStorageManager == null) {
                $$$reportNull$$$0$kotlin$reflect$jvm$internal$impl$storage$LockBasedStorageManager$LockBasedNotNullLazyValueWithPostCompute(0);
                throw null;
            }
            this.valuePostCompute = null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager.LockBasedLazyValue, kotlin.jvm.functions.Function0
        public final Object invoke() {
            Object invoke;
            FormBody.Builder builder = this.valuePostCompute;
            if (builder == null || ((Thread) builder.values) != Thread.currentThread()) {
                invoke = super.invoke();
            } else if (((Thread) builder.values) == Thread.currentThread()) {
                invoke = builder.names;
            } else {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1("No value in this thread (hasValue should be checked before)");
                invoke = null;
            }
            if (invoke != null) {
                return invoke;
            }
            $$$reportNull$$$0$kotlin$reflect$jvm$internal$impl$storage$LockBasedStorageManager$LockBasedNotNullLazyValueWithPostCompute(2);
            throw null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager.LockBasedLazyValue
        public final void postCompute(Object obj) {
            this.valuePostCompute = new FormBody.Builder(obj);
            try {
                if (obj != null) {
                    this.val$postCompute.invoke(obj);
                } else {
                    $$$reportNull$$$0(2);
                    throw null;
                }
            } finally {
                this.valuePostCompute = null;
            }
        }

        @Override // kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager.LockBasedLazyValue
        public final Composer recursionDetected(boolean z) {
            return new Composer(new AbstractTypeConstructor.Supertypes(Room.listOf(ErrorUtils.errorTypeForLoopInSupertypes)), false, 6);
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class KeyWithComputation {
        public final Function0 computation;
        public final Object key;

        public KeyWithComputation(Object obj, Function0 function0) {
            this.key = obj;
            this.computation = function0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && KeyWithComputation.class == obj.getClass() && this.key.equals(((KeyWithComputation) obj).key);
        }

        public final int hashCode() {
            return this.key.hashCode();
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public class LockBasedNotNullLazyValue extends LockBasedLazyValue implements NotNullLazyValue {
        @Override // kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager.LockBasedLazyValue, kotlin.jvm.functions.Function0
        public final Object invoke() {
            Object invoke = super.invoke();
            if (invoke != null) {
                return invoke;
            }
            throw new IllegalStateException(String.format("@NotNull method %s.%s must not return null", "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedNotNullLazyValue", "invoke"));
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class MapBasedMemoizedFunctionToNotNull extends ViewSizeResolver$size$3$1 {
        public final /* synthetic */ int $r8$classId;

        public static /* synthetic */ void $$$reportNull$$$0(int i) {
            String str = i != 3 ? "Argument for @NotNull parameter '%s' of %s.%s must not be null" : "@NotNull method %s.%s must not return null";
            Object[] objArr = new Object[i != 3 ? 3 : 2];
            if (i == 1) {
                objArr[0] = "map";
            } else if (i == 2) {
                objArr[0] = "computation";
            } else if (i != 3) {
                objArr[0] = "storageManager";
            } else {
                objArr[0] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$CacheWithNotNullValuesBasedOnMemoizedFunction";
            }
            if (i != 3) {
                objArr[1] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$CacheWithNotNullValuesBasedOnMemoizedFunction";
            } else {
                objArr[1] = "computeIfAbsent";
            }
            if (i == 2) {
                objArr[2] = "computeIfAbsent";
            } else if (i != 3) {
                objArr[2] = "<init>";
            }
            String format = String.format(str, objArr);
            if (i == 3) {
                throw new IllegalStateException(format);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ MapBasedMemoizedFunctionToNotNull(LockBasedStorageManager lockBasedStorageManager, ConcurrentHashMap concurrentHashMap, Function1 function1, int i) {
            super(lockBasedStorageManager, concurrentHashMap, function1, 1);
            this.$r8$classId = i;
        }

        @Override // coil3.size.ViewSizeResolver$size$3$1, kotlin.jvm.functions.Function1
        public Object invoke(Object obj) {
            switch (this.$r8$classId) {
                case 0:
                    Object invoke = super.invoke(obj);
                    if (invoke != null) {
                        return invoke;
                    }
                    throw new IllegalStateException(String.format("@NotNull method %s.%s must not return null", "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunctionToNotNull", "invoke"));
                default:
                    return super.invoke(obj);
            }
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class NotValue {
        private static final /* synthetic */ NotValue[] $VALUES;
        public static final NotValue COMPUTING;
        public static final NotValue NOT_COMPUTED;
        public static final NotValue RECURSION_WAS_DETECTED;

        static {
            NotValue notValue = new NotValue("NOT_COMPUTED", 0);
            NOT_COMPUTED = notValue;
            NotValue notValue2 = new NotValue("COMPUTING", 1);
            COMPUTING = notValue2;
            NotValue notValue3 = new NotValue("RECURSION_WAS_DETECTED", 2);
            RECURSION_WAS_DETECTED = notValue3;
            $VALUES = new NotValue[]{notValue, notValue2, notValue3};
        }

        public static NotValue valueOf(String str) {
            return (NotValue) Enum.valueOf(NotValue.class, str);
        }

        public static NotValue[] values() {
            return (NotValue[]) $VALUES.clone();
        }
    }

    static {
        String canonicalName = LockBasedStorageManager.class.getCanonicalName();
        canonicalName.getClass();
        int lastIndexOf$default = StringsKt.lastIndexOf$default(6, canonicalName, ".");
        PACKAGE_NAME = lastIndexOf$default == -1 ? "" : canonicalName.substring(0, lastIndexOf$default);
        NO_LOCKS = new AnonymousClass1("NO_LOCKS", EmptySimpleLock.INSTANCE);
    }

    public LockBasedStorageManager(String str) {
        this(str, new ConnectionPool(11, new ReentrantLock()));
    }

    public static void sanitizeStackTrace(AssertionError assertionError) {
        StackTraceElement[] stackTrace = assertionError.getStackTrace();
        int length = stackTrace.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                i = -1;
                break;
            } else if (!stackTrace[i].getClassName().startsWith(PACKAGE_NAME)) {
                break;
            } else {
                i++;
            }
        }
        List subList = Arrays.asList(stackTrace).subList(i, length);
        assertionError.setStackTrace((StackTraceElement[]) subList.toArray(new StackTraceElement[subList.size()]));
    }

    public final LockBasedNotNullLazyValue createLazyValue(Function0 function0) {
        return new LockBasedNotNullLazyValue(this, function0);
    }

    public final MapBasedMemoizedFunctionToNotNull createMemoizedFunction(Function1 function1) {
        return new MapBasedMemoizedFunctionToNotNull(this, new ConcurrentHashMap(3, 1.0f, 2), function1, 0);
    }

    public final ViewSizeResolver$size$3$1 createMemoizedFunctionWithNullableValues(Function1 function1) {
        return new ViewSizeResolver$size$3$1(this, new ConcurrentHashMap(3, 1.0f, 2), function1, 1);
    }

    public Composer recursionDetectedDefault(String str, Object obj) {
        String str2;
        StringBuilder sb = new StringBuilder("Recursion detected ");
        sb.append(str);
        if (obj == null) {
            str2 = "";
        } else {
            str2 = "on input: " + obj;
        }
        sb.append(str2);
        sb.append(" under ");
        sb.append(this);
        AssertionError assertionError = new AssertionError(sb.toString());
        sanitizeStackTrace(assertionError);
        throw assertionError;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(getClass().getSimpleName());
        sb.append("@");
        sb.append(Integer.toHexString(hashCode()));
        sb.append(" (");
        return Animation.CC.m(sb, this.debugText, ")");
    }

    public LockBasedStorageManager(String str, SimpleLock simpleLock) {
        EmptySimpleLock emptySimpleLock = EmptySimpleLock.THROW;
        this.lock = simpleLock;
        this.exceptionHandlingStrategy = emptySimpleLock;
        this.debugText = str;
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public class LockBasedLazyValue implements Function0 {
        public final Function0 computable;
        public final LockBasedStorageManager storageManager;
        public volatile Object value;

        public static /* synthetic */ void $$$reportNull$$$0(int i) {
            String str = (i == 2 || i == 3) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
            Object[] objArr = new Object[(i == 2 || i == 3) ? 2 : 3];
            if (i == 1) {
                objArr[0] = "computable";
            } else if (i == 2 || i == 3) {
                objArr[0] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedLazyValue";
            } else {
                objArr[0] = "storageManager";
            }
            if (i == 2) {
                objArr[1] = "recursionDetected";
            } else if (i != 3) {
                objArr[1] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedLazyValue";
            } else {
                objArr[1] = "renderDebugInformation";
            }
            if (i != 2 && i != 3) {
                objArr[2] = "<init>";
            }
            String format = String.format(str, objArr);
            if (i != 2 && i != 3) {
                throw new IllegalArgumentException(format);
            }
            throw new IllegalStateException(format);
        }

        public LockBasedLazyValue(LockBasedStorageManager lockBasedStorageManager, Function0 function0) {
            if (lockBasedStorageManager == null) {
                $$$reportNull$$$0(0);
                throw null;
            }
            this.value = NotValue.NOT_COMPUTED;
            this.storageManager = lockBasedStorageManager;
            this.computable = function0;
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            Object obj = this.value;
            if (!(obj instanceof NotValue)) {
                DFS.unescapeThrowable(obj);
                return obj;
            }
            this.storageManager.lock.lock();
            try {
                Object obj2 = this.value;
                if (obj2 instanceof NotValue) {
                    NotValue notValue = NotValue.COMPUTING;
                    if (obj2 == notValue) {
                        this.value = NotValue.RECURSION_WAS_DETECTED;
                        Composer recursionDetected = recursionDetected(true);
                        if (!recursionDetected.writingFirst) {
                            obj2 = recursionDetected.writer;
                        }
                    }
                    if (obj2 == NotValue.RECURSION_WAS_DETECTED) {
                        Composer recursionDetected2 = recursionDetected(false);
                        if (!recursionDetected2.writingFirst) {
                            obj2 = recursionDetected2.writer;
                        }
                    }
                    this.value = notValue;
                    try {
                        obj2 = this.computable.invoke();
                        postCompute(obj2);
                        this.value = obj2;
                    } catch (Throwable th) {
                        if (DFS.isProcessCanceledException(th)) {
                            this.value = NotValue.NOT_COMPUTED;
                            throw th;
                        }
                        if (this.value == NotValue.COMPUTING) {
                            this.value = new WrappedValues$ThrowableWrapper(th);
                        }
                        this.storageManager.exceptionHandlingStrategy.getClass();
                        throw th;
                    }
                } else {
                    DFS.unescapeThrowable(obj2);
                }
                return obj2;
            } finally {
                this.storageManager.lock.unlock();
            }
        }

        public Composer recursionDetected(boolean z) {
            Composer recursionDetectedDefault = this.storageManager.recursionDetectedDefault("in a lazy value", null);
            if (recursionDetectedDefault != null) {
                return recursionDetectedDefault;
            }
            $$$reportNull$$$0(2);
            throw null;
        }

        public void postCompute(Object obj) {
        }
    }
}
