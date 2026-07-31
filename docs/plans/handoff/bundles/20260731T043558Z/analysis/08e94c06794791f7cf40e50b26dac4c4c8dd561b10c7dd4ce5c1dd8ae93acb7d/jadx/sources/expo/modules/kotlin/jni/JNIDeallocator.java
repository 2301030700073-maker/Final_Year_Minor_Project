package expo.modules.kotlin.jni;

import java.lang.ref.PhantomReference;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: JNIDeallocator.kt */
@Metadata(d1 = {"\u0000E\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\b\u0002*\u0001\u000f\b\u0007\u0018\u00002\u00060\u0001j\u0002`\u0002B\u0011\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004¢\u0006\u0004\b\u0005\u0010\u0006J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\tH\u0007J\u0011\u0010\u0014\u001a\u0004\u0018\u00010\u0012H\u0000¢\u0006\u0004\b\u0015\u0010\u0016J\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\t0\u0018J\b\u0010\u0019\u001a\u00020\u0012H\u0016R\u0014\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bX\u0082\u0004¢\u0006\u0002\n\u0000R&\u0010\n\u001a\u001a\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\f\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\r0\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0010¨\u0006\u001a"}, d2 = {"Lexpo/modules/kotlin/jni/JNIDeallocator;", "Ljava/lang/AutoCloseable;", "Lkotlin/AutoCloseable;", "shouldCreateDestructorThread", "", "<init>", "(Z)V", "referenceQueue", "Ljava/lang/ref/ReferenceQueue;", "Lexpo/modules/kotlin/jni/Destructible;", "destructorMap", "", "Ljava/lang/ref/PhantomReference;", "Ljava/lang/ref/WeakReference;", "destructorThread", "expo/modules/kotlin/jni/JNIDeallocator$destructorThread$1", "Lexpo/modules/kotlin/jni/JNIDeallocator$destructorThread$1;", "addReference", "", "destructible", "deallocate", "deallocate$expo_modules_core_release", "()Lkotlin/Unit;", "inspectMemory", "", "close", "expo-modules-core_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes5.dex */
public final class JNIDeallocator implements AutoCloseable {
    private final Map<PhantomReference<Destructible>, WeakReference<Destructible>> destructorMap;
    private final JNIDeallocator$destructorThread$1 destructorThread;
    private final ReferenceQueue<Destructible> referenceQueue;

    public JNIDeallocator() {
        this(false, 1, null);
    }

    /* JADX WARN: Type inference failed for: r2v3, types: [expo.modules.kotlin.jni.JNIDeallocator$destructorThread$1] */
    public JNIDeallocator(boolean z) {
        JNIDeallocator$destructorThread$1 jNIDeallocator$destructorThread$1;
        this.referenceQueue = new ReferenceQueue<>();
        this.destructorMap = new LinkedHashMap();
        if (z) {
            ?? r2 = new Thread() { // from class: expo.modules.kotlin.jni.JNIDeallocator$destructorThread$1
                {
                    super("Expo JNI deallocator");
                }

                @Override // java.lang.Thread, java.lang.Runnable
                public void run() {
                    ReferenceQueue referenceQueue;
                    Map map;
                    while (!isInterrupted()) {
                        try {
                            referenceQueue = JNIDeallocator.this.referenceQueue;
                            Reference remove = referenceQueue.remove();
                            JNIDeallocator jNIDeallocator = JNIDeallocator.this;
                            synchronized (jNIDeallocator) {
                                map = jNIDeallocator.destructorMap;
                            }
                        } catch (InterruptedException unused) {
                            return;
                        }
                    }
                }
            };
            r2.start();
            jNIDeallocator$destructorThread$1 = r2;
        } else {
            jNIDeallocator$destructorThread$1 = null;
        }
        this.destructorThread = jNIDeallocator$destructorThread$1;
    }

    public /* synthetic */ JNIDeallocator(boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? true : z);
    }

    public final void addReference(Destructible destructible) {
        Intrinsics.checkNotNullParameter(destructible, "destructible");
        synchronized (this) {
            WeakReference<Destructible> weakReference = new WeakReference<>(destructible);
            this.destructorMap.put(new PhantomReference<>(destructible, this.referenceQueue), weakReference);
            Unit unit = Unit.INSTANCE;
        }
    }

    public final Unit deallocate$expo_modules_core_release() {
        Unit unit;
        synchronized (this) {
            Iterator<T> it = this.destructorMap.values().iterator();
            while (it.hasNext()) {
                Destructible destructible = (Destructible) ((WeakReference) it.next()).get();
                if (destructible != null) {
                    destructible.deallocate();
                }
            }
            this.destructorMap.clear();
            JNIDeallocator$destructorThread$1 jNIDeallocator$destructorThread$1 = this.destructorThread;
            if (jNIDeallocator$destructorThread$1 != null) {
                jNIDeallocator$destructorThread$1.interrupt();
                unit = Unit.INSTANCE;
            } else {
                unit = null;
            }
        }
        return unit;
    }

    public final List<Destructible> inspectMemory() {
        ArrayList arrayList;
        synchronized (this) {
            Collection<WeakReference<Destructible>> values = this.destructorMap.values();
            ArrayList arrayList2 = new ArrayList();
            Iterator<T> it = values.iterator();
            while (it.hasNext()) {
                Destructible destructible = (Destructible) ((WeakReference) it.next()).get();
                if (destructible != null) {
                    arrayList2.add(destructible);
                }
            }
            arrayList = arrayList2;
        }
        return arrayList;
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        deallocate$expo_modules_core_release();
    }
}
