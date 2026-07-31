package androidx.camera.core;

import android.content.Context;
import android.view.OrientationEventListener;
import java.util.LinkedHashMap;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class RotationProvider {
    public final LinkedHashMap listeners;
    public final Object lock;
    public final AnonymousClass1 orientationListener;
    public volatile int rotation;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public abstract class ListenerWrapper {
        public abstract void onRotationChanged(int i);
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [androidx.camera.core.RotationProvider$1] */
    public RotationProvider(Context context) {
        context.getClass();
        this.lock = new Object();
        this.listeners = new LinkedHashMap();
        this.rotation = -1;
        this.orientationListener = new OrientationEventListener(context) { // from class: androidx.camera.core.RotationProvider.1
            /* JADX WARN: Code restructure failed: missing block: B:37:0x0024, code lost:
            
                if (r4 < 315) goto L46;
             */
            @Override // android.view.OrientationEventListener
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final void onOrientationChanged(int r4) {
                /*
                    r3 = this;
                    r0 = -1
                    if (r4 != r0) goto L5
                    goto L87
                L5:
                    androidx.camera.core.RotationProvider r1 = r2
                    int r2 = r1.rotation
                    if (r2 != r0) goto L27
                    r0 = 45
                    if (r4 < 0) goto L12
                    if (r4 >= r0) goto L12
                    goto L36
                L12:
                    r1 = 135(0x87, float:1.89E-43)
                    if (r0 > r4) goto L19
                    if (r4 >= r1) goto L19
                    goto L40
                L19:
                    r0 = 225(0xe1, float:3.15E-43)
                    if (r1 > r4) goto L20
                    if (r4 >= r0) goto L20
                    goto L4a
                L20:
                    if (r0 > r4) goto L36
                    r0 = 315(0x13b, float:4.41E-43)
                    if (r4 >= r0) goto L36
                    goto L54
                L27:
                    if (r4 < 0) goto L2e
                    r0 = 40
                    if (r4 >= r0) goto L2e
                    goto L36
                L2e:
                    r0 = 320(0x140, float:4.48E-43)
                    if (r0 > r4) goto L38
                    r0 = 360(0x168, float:5.04E-43)
                    if (r4 >= r0) goto L38
                L36:
                    r4 = 0
                    goto L58
                L38:
                    r0 = 50
                    if (r0 > r4) goto L42
                    r0 = 130(0x82, float:1.82E-43)
                    if (r4 >= r0) goto L42
                L40:
                    r4 = 3
                    goto L58
                L42:
                    r0 = 140(0x8c, float:1.96E-43)
                    if (r0 > r4) goto L4c
                    r0 = 220(0xdc, float:3.08E-43)
                    if (r4 >= r0) goto L4c
                L4a:
                    r4 = 2
                    goto L58
                L4c:
                    r0 = 230(0xe6, float:3.22E-43)
                    if (r0 > r4) goto L56
                    r0 = 310(0x136, float:4.34E-43)
                    if (r4 >= r0) goto L56
                L54:
                    r4 = 1
                    goto L58
                L56:
                    int r4 = r1.rotation
                L58:
                    androidx.camera.core.RotationProvider r3 = r2
                    int r0 = r3.rotation
                    if (r0 == r4) goto L87
                    r3.rotation = r4
                    java.lang.Object r0 = r3.lock
                    monitor-enter(r0)
                    java.util.LinkedHashMap r3 = r3.listeners     // Catch: java.lang.Throwable -> L84
                    java.util.Collection r3 = r3.values()     // Catch: java.lang.Throwable -> L84
                    java.lang.Iterable r3 = (java.lang.Iterable) r3     // Catch: java.lang.Throwable -> L84
                    java.util.List r3 = kotlin.collections.CollectionsKt.toList(r3)     // Catch: java.lang.Throwable -> L84
                    monitor-exit(r0)
                    java.util.Iterator r3 = r3.iterator()
                L74:
                    boolean r0 = r3.hasNext()
                    if (r0 == 0) goto L87
                    java.lang.Object r0 = r3.next()
                    androidx.camera.core.RotationProvider$ListenerWrapper r0 = (androidx.camera.core.RotationProvider.ListenerWrapper) r0
                    r0.onRotationChanged(r4)
                    goto L74
                L84:
                    r3 = move-exception
                    monitor-exit(r0)
                    throw r3
                L87:
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: androidx.camera.core.RotationProvider.AnonymousClass1.onOrientationChanged(int):void");
            }
        };
    }
}
