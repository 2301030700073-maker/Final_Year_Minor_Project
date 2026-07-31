package org.koin.core.scope;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import com.fsck.k9.mailstore.LocalStore;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import kotlin.collections.ArrayDeque;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.ClassReference;
import kotlin.time.Duration;
import kotlin.time.DurationUnit;
import kotlin.time.MonotonicTimeSource;
import kotlin.time.TimeSource$Monotonic$ValueTimeMark;
import okio.AsyncTimeout;
import org.koin.core.Koin;
import org.koin.core.logger.Level;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.qualifier.TypeQualifier;
import org.koin.ext.KClassExtKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Scope {
    public final Koin _koin;
    public volatile ThreadLocal _parameterStack;
    public final String id;
    public final boolean isRoot;
    public final ArrayList linkedScopes;
    public final TypeQualifier scopeArchetype;
    public final Qualifier scopeQualifier;

    public Scope(Qualifier qualifier, String str, TypeQualifier typeQualifier, Koin koin, int i) {
        boolean z = (i & 4) == 0;
        typeQualifier = (i & 8) != 0 ? null : typeQualifier;
        qualifier.getClass();
        this.scopeQualifier = qualifier;
        this.id = str;
        this.isRoot = z;
        this.scopeArchetype = typeQualifier;
        this._koin = koin;
        this.linkedScopes = new ArrayList();
        new LinkedHashSet();
    }

    public final void clearParameterStack$koin_core(ArrayDeque arrayDeque) {
        if (!arrayDeque.isEmpty()) {
            arrayDeque.removeFirst();
        }
        if (arrayDeque.isEmpty()) {
            getParameterStack$koin_core().remove();
        }
    }

    public final Object get(ClassReference classReference, Qualifier qualifier, Function0 function0) {
        return resolve(classReference, function0 != null ? (ParametersHolder) function0.invoke() : null, qualifier);
    }

    public final ThreadLocal getParameterStack$koin_core() {
        ThreadLocal threadLocal;
        ThreadLocal threadLocal2 = this._parameterStack;
        if (threadLocal2 != null) {
            return threadLocal2;
        }
        synchronized (this) {
            threadLocal = this._parameterStack;
            if (threadLocal == null) {
                threadLocal = new ThreadLocal();
                this._parameterStack = threadLocal;
            }
        }
        return threadLocal;
    }

    public final ArrayDeque onParameterOnStack$koin_core(ParametersHolder parametersHolder) {
        parametersHolder.getClass();
        ArrayDeque arrayDeque = (ArrayDeque) getParameterStack$koin_core().get();
        if (arrayDeque == null) {
            arrayDeque = new ArrayDeque();
            getParameterStack$koin_core().set(arrayDeque);
        }
        arrayDeque.addFirst(parametersHolder);
        return arrayDeque;
    }

    public final Object resolve(ClassReference classReference, ParametersHolder parametersHolder, Qualifier qualifier) {
        AsyncTimeout.Companion companion = this._koin.logger;
        companion.getClass();
        if (Level.NONE.compareTo(Level.DEBUG) > 0) {
            return resolveInstance(classReference, parametersHolder, qualifier);
        }
        if (qualifier != null) {
            qualifier.toString();
        }
        KClassExtKt.getFullName(classReference);
        companion.getClass();
        long read = MonotonicTimeSource.read();
        Object resolveInstance = resolveInstance(classReference, parametersHolder, qualifier);
        long m1005elapsedNowUwyO8pc = TimeSource$Monotonic$ValueTimeMark.m1005elapsedNowUwyO8pc(read);
        KClassExtKt.getFullName(classReference);
        Duration.Companion companion2 = Duration.Companion;
        Duration.m1001toLongimpl(m1005elapsedNowUwyO8pc, DurationUnit.MICROSECONDS);
        companion.getClass();
        return resolveInstance;
    }

    /* JADX WARN: Removed duplicated region for block: B:115:0x02b1 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0193  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object resolveFromContext(com.fsck.k9.mailstore.LocalStore.AnonymousClass7 r11) {
        /*
            Method dump skipped, instructions count: 690
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.koin.core.scope.Scope.resolveFromContext(com.fsck.k9.mailstore.LocalStore$7):java.lang.Object");
    }

    public final Object resolveInstance(ClassReference classReference, ParametersHolder parametersHolder, Qualifier qualifier) {
        Koin koin = this._koin;
        LocalStore.AnonymousClass7 anonymousClass7 = new LocalStore.AnonymousClass7(koin.logger, this, classReference, qualifier, parametersHolder);
        if (parametersHolder == null) {
            return resolveFromContext(anonymousClass7);
        }
        AsyncTimeout.Companion companion = koin.logger;
        companion.getClass();
        Level level = Level.NONE;
        Level level2 = Level.DEBUG;
        if (level.compareTo(level2) <= 0) {
            parametersHolder.toString();
        }
        ArrayDeque onParameterOnStack$koin_core = onParameterOnStack$koin_core(parametersHolder);
        try {
            return resolveFromContext(anonymousClass7);
        } finally {
            companion.getClass();
            level.compareTo(level2);
            clearParameterStack$koin_core(onParameterOnStack$koin_core);
        }
    }

    public final String toString() {
        return CameraDevices$CC.m(new StringBuilder("['"), this.id, "']");
    }
}
