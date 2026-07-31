package androidx.savedstate.compose;

import androidx.compose.runtime.ProvidableCompositionLocal;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class LocalSavedStateRegistryOwnerKt {
    public static final ProvidableCompositionLocal LocalSavedStateRegistryOwner;

    /* JADX WARN: Code restructure failed: missing block: B:20:0x002e, code lost:
    
        r1 = r1.invoke(null, null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0034, code lost:
    
        if ((r1 instanceof androidx.compose.runtime.ProvidableCompositionLocal) == false) goto L7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0036, code lost:
    
        r1 = (androidx.compose.runtime.ProvidableCompositionLocal) r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0027, code lost:
    
        r1 = null;
     */
    static {
        /*
            r0 = 0
            java.lang.Class<androidx.savedstate.SavedStateRegistryOwner> r1 = androidx.savedstate.SavedStateRegistryOwner.class
            java.lang.ClassLoader r1 = r1.getClassLoader()     // Catch: java.lang.Throwable -> L2c
            r1.getClass()     // Catch: java.lang.Throwable -> L2c
            java.lang.String r2 = "androidx.compose.ui.platform.AndroidCompositionLocals_androidKt"
            java.lang.String r3 = "getLocalSavedStateRegistryOwner"
            java.lang.Class r1 = r1.loadClass(r2)     // Catch: java.lang.Throwable -> L2c
            java.lang.reflect.Method r1 = r1.getMethod(r3, r0)     // Catch: java.lang.Throwable -> L2c
            java.lang.annotation.Annotation[] r2 = r1.getAnnotations()     // Catch: java.lang.Throwable -> L2c
            r2.getClass()     // Catch: java.lang.Throwable -> L2c
            int r3 = r2.length     // Catch: java.lang.Throwable -> L2c
            r4 = 0
        L1f:
            if (r4 >= r3) goto L2e
            r5 = r2[r4]     // Catch: java.lang.Throwable -> L2c
            boolean r5 = r5 instanceof kotlin.Deprecated     // Catch: java.lang.Throwable -> L2c
            if (r5 == 0) goto L29
        L27:
            r1 = r0
            goto L3f
        L29:
            int r4 = r4 + 1
            goto L1f
        L2c:
            r1 = move-exception
            goto L39
        L2e:
            java.lang.Object r1 = r1.invoke(r0, r0)     // Catch: java.lang.Throwable -> L2c
            boolean r2 = r1 instanceof androidx.compose.runtime.ProvidableCompositionLocal     // Catch: java.lang.Throwable -> L2c
            if (r2 == 0) goto L27
            androidx.compose.runtime.ProvidableCompositionLocal r1 = (androidx.compose.runtime.ProvidableCompositionLocal) r1     // Catch: java.lang.Throwable -> L2c
            goto L3f
        L39:
            kotlin.Result$Failure r2 = new kotlin.Result$Failure
            r2.<init>(r1)
            r1 = r2
        L3f:
            boolean r2 = r1 instanceof kotlin.Result.Failure
            if (r2 == 0) goto L45
            goto L46
        L45:
            r0 = r1
        L46:
            androidx.compose.runtime.ProvidableCompositionLocal r0 = (androidx.compose.runtime.ProvidableCompositionLocal) r0
            if (r0 != 0) goto L57
            androidx.compose.material3.TextKt$$ExternalSyntheticLambda4 r0 = new androidx.compose.material3.TextKt$$ExternalSyntheticLambda4
            r1 = 29
            r0.<init>(r1)
            androidx.compose.runtime.StaticProvidableCompositionLocal r1 = new androidx.compose.runtime.StaticProvidableCompositionLocal
            r1.<init>(r0)
            r0 = r1
        L57:
            androidx.savedstate.compose.LocalSavedStateRegistryOwnerKt.LocalSavedStateRegistryOwner = r0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.savedstate.compose.LocalSavedStateRegistryOwnerKt.<clinit>():void");
    }
}
