package coil3.size;

import android.view.ViewTreeObserver;
import j$.util.concurrent.ConcurrentHashMap;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.storage.EmptySimpleLock;
import kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager;
import kotlin.reflect.jvm.internal.impl.storage.SimpleLock;
import kotlin.reflect.jvm.internal.impl.utils.DFS;
import kotlin.reflect.jvm.internal.impl.utils.WrappedValues$ThrowableWrapper;
import kotlinx.serialization.json.internal.Composer;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public class ViewSizeResolver$size$3$1 implements Function1 {
    public final Object $preDrawListener;
    public final /* synthetic */ int $r8$classId;
    public final Object $viewTreeObserver;
    public final Object this$0;

    public static /* synthetic */ void $$$reportNull$$$0(int i) {
        String str = (i == 3 || i == 4) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i == 3 || i == 4) ? 2 : 3];
        if (i == 1) {
            objArr[0] = "map";
        } else if (i == 2) {
            objArr[0] = "compute";
        } else if (i == 3 || i == 4) {
            objArr[0] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunction";
        } else {
            objArr[0] = "storageManager";
        }
        if (i == 3) {
            objArr[1] = "recursionDetected";
        } else if (i != 4) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$MapBasedMemoizedFunction";
        } else {
            objArr[1] = "raceCondition";
        }
        if (i != 3 && i != 4) {
            objArr[2] = "<init>";
        }
        String format = String.format(str, objArr);
        if (i != 3 && i != 4) {
            throw new IllegalArgumentException(format);
        }
        throw new IllegalStateException(format);
    }

    public /* synthetic */ ViewSizeResolver$size$3$1(Object obj, Object obj2, Object obj3, int i) {
        this.$r8$classId = i;
        this.this$0 = obj;
        this.$viewTreeObserver = obj2;
        this.$preDrawListener = obj3;
    }

    @Override // kotlin.jvm.functions.Function1
    public Object invoke(Object obj) {
        int i = this.$r8$classId;
        Object obj2 = this.$preDrawListener;
        Object obj3 = this.$viewTreeObserver;
        Object obj4 = this.this$0;
        switch (i) {
            case 0:
                RealViewSizeResolver realViewSizeResolver = (RealViewSizeResolver) obj4;
                ViewTreeObserver viewTreeObserver = (ViewTreeObserver) obj3;
                ViewSizeResolver$size$3$preDrawListener$1 viewSizeResolver$size$3$preDrawListener$1 = (ViewSizeResolver$size$3$preDrawListener$1) obj2;
                if (viewTreeObserver.isAlive()) {
                    viewTreeObserver.removeOnPreDrawListener(viewSizeResolver$size$3$preDrawListener$1);
                } else {
                    realViewSizeResolver.view.getViewTreeObserver().removeOnPreDrawListener(viewSizeResolver$size$3$preDrawListener$1);
                }
                return Unit.INSTANCE;
            default:
                LockBasedStorageManager lockBasedStorageManager = (LockBasedStorageManager) obj4;
                EmptySimpleLock emptySimpleLock = lockBasedStorageManager.exceptionHandlingStrategy;
                SimpleLock simpleLock = lockBasedStorageManager.lock;
                ConcurrentHashMap concurrentHashMap = (ConcurrentHashMap) obj3;
                Object obj5 = concurrentHashMap.get(obj);
                Object obj6 = DFS.NULL_VALUE;
                AssertionError assertionError = null;
                if (obj5 != null && obj5 != LockBasedStorageManager.NotValue.COMPUTING) {
                    DFS.unescapeThrowable(obj5);
                    if (obj5 == obj6) {
                        return null;
                    }
                    return obj5;
                }
                simpleLock.lock();
                try {
                    Object obj7 = concurrentHashMap.get(obj);
                    LockBasedStorageManager.NotValue notValue = LockBasedStorageManager.NotValue.COMPUTING;
                    if (obj7 == notValue) {
                        obj7 = LockBasedStorageManager.NotValue.RECURSION_WAS_DETECTED;
                        Composer recursionDetectedDefault = lockBasedStorageManager.recursionDetectedDefault("", obj);
                        if (recursionDetectedDefault == null) {
                            $$$reportNull$$$0(3);
                            throw null;
                        }
                        if (!recursionDetectedDefault.writingFirst) {
                            obj7 = recursionDetectedDefault.writer;
                            return obj7;
                        }
                    }
                    if (obj7 == LockBasedStorageManager.NotValue.RECURSION_WAS_DETECTED) {
                        Composer recursionDetectedDefault2 = lockBasedStorageManager.recursionDetectedDefault("", obj);
                        if (recursionDetectedDefault2 == null) {
                            $$$reportNull$$$0(3);
                            throw null;
                        }
                        if (!recursionDetectedDefault2.writingFirst) {
                            obj7 = recursionDetectedDefault2.writer;
                            return obj7;
                        }
                    }
                    if (obj7 != null) {
                        DFS.unescapeThrowable(obj7);
                        if (obj7 == obj6) {
                            obj7 = null;
                        }
                    } else {
                        try {
                            concurrentHashMap.put(obj, notValue);
                            obj7 = ((Function1) obj2).invoke(obj);
                            if (obj7 != null) {
                                obj6 = obj7;
                            }
                            Object put = concurrentHashMap.put(obj, obj6);
                            if (put != notValue) {
                                assertionError = raceCondition(obj, put);
                                throw assertionError;
                            }
                        } catch (Throwable th) {
                            if (DFS.isProcessCanceledException(th)) {
                                concurrentHashMap.remove(obj);
                                throw th;
                            }
                            if (th == assertionError) {
                                emptySimpleLock.getClass();
                                throw th;
                            }
                            Object put2 = concurrentHashMap.put(obj, new WrappedValues$ThrowableWrapper(th));
                            if (put2 != LockBasedStorageManager.NotValue.COMPUTING) {
                                throw raceCondition(obj, put2);
                            }
                            emptySimpleLock.getClass();
                            throw th;
                        }
                    }
                    return obj7;
                } finally {
                    simpleLock.unlock();
                }
        }
    }

    public AssertionError raceCondition(Object obj, Object obj2) {
        AssertionError assertionError = new AssertionError("Race condition detected on input " + obj + ". Old value is " + obj2 + " under " + ((LockBasedStorageManager) this.this$0));
        LockBasedStorageManager.sanitizeStackTrace(assertionError);
        return assertionError;
    }
}
