package androidx.savedstate.compose;

import androidx.compose.runtime.ProvidableCompositionLocal;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class LocalSavedStateRegistryOwnerKt {
    public static final ProvidableCompositionLocal LocalSavedStateRegistryOwner;

    /* JADX WARN: Code restructure failed: missing block: B:20:0x002f, code lost:
    
        r2 = r2.invoke(null, null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0035, code lost:
    
        if ((r2 instanceof androidx.compose.runtime.ProvidableCompositionLocal) == false) goto L7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0037, code lost:
    
        r2 = (androidx.compose.runtime.ProvidableCompositionLocal) r2;
     */
    static {
        /*
            r0 = 0
            r1 = 0
            java.lang.Class<androidx.savedstate.SavedStateRegistryOwner> r2 = androidx.savedstate.SavedStateRegistryOwner.class
            java.lang.ClassLoader r2 = r2.getClassLoader()     // Catch: java.lang.Throwable -> L2d
            r2.getClass()     // Catch: java.lang.Throwable -> L2d
            java.lang.String r3 = "androidx.compose.ui.platform.AndroidCompositionLocals_androidKt"
            java.lang.String r4 = "getLocalSavedStateRegistryOwner"
            java.lang.Class r2 = r2.loadClass(r3)     // Catch: java.lang.Throwable -> L2d
            java.lang.reflect.Method r2 = r2.getMethod(r4, r1)     // Catch: java.lang.Throwable -> L2d
            java.lang.annotation.Annotation[] r3 = r2.getAnnotations()     // Catch: java.lang.Throwable -> L2d
            r3.getClass()     // Catch: java.lang.Throwable -> L2d
            int r4 = r3.length     // Catch: java.lang.Throwable -> L2d
            r5 = r0
        L20:
            if (r5 >= r4) goto L2f
            r6 = r3[r5]     // Catch: java.lang.Throwable -> L2d
            boolean r6 = r6 instanceof kotlin.Deprecated     // Catch: java.lang.Throwable -> L2d
            if (r6 == 0) goto L2a
        L28:
            r2 = r1
            goto L40
        L2a:
            int r5 = r5 + 1
            goto L20
        L2d:
            r2 = move-exception
            goto L3a
        L2f:
            java.lang.Object r2 = r2.invoke(r1, r1)     // Catch: java.lang.Throwable -> L2d
            boolean r3 = r2 instanceof androidx.compose.runtime.ProvidableCompositionLocal     // Catch: java.lang.Throwable -> L2d
            if (r3 == 0) goto L28
            androidx.compose.runtime.ProvidableCompositionLocal r2 = (androidx.compose.runtime.ProvidableCompositionLocal) r2     // Catch: java.lang.Throwable -> L2d
            goto L40
        L3a:
            kotlin.Result$Failure r3 = new kotlin.Result$Failure
            r3.<init>(r2)
            r2 = r3
        L40:
            boolean r3 = r2 instanceof kotlin.Result.Failure
            if (r3 == 0) goto L46
            goto L47
        L46:
            r1 = r2
        L47:
            androidx.compose.runtime.ProvidableCompositionLocal r1 = (androidx.compose.runtime.ProvidableCompositionLocal) r1
            if (r1 != 0) goto L58
            androidx.work.Worker$$ExternalSyntheticLambda1 r1 = new androidx.work.Worker$$ExternalSyntheticLambda1
            r2 = 24
            r1.<init>(r2)
            androidx.compose.runtime.StaticProvidableCompositionLocal r2 = new androidx.compose.runtime.StaticProvidableCompositionLocal
            r2.<init>(r0, r1)
            r1 = r2
        L58:
            androidx.savedstate.compose.LocalSavedStateRegistryOwnerKt.LocalSavedStateRegistryOwner = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.savedstate.compose.LocalSavedStateRegistryOwnerKt.<clinit>():void");
    }
}
