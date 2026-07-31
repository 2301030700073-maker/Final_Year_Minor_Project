package com.fsck.k9.job;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.WorkerFactory;
import androidx.work.WorkerParameters;
import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.Reflection;
import kotlin.text.StringsKt__StringsJVMKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.AsyncTimeout;
import okio.Options;
import org.koin.core.Koin;
import org.koin.core.context.GlobalContext;
import org.koin.core.error.NoDefinitionFoundException;
import org.koin.core.logger.Level;
import org.koin.core.scope.Scope;
import org.koin.ext.KClassExtKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class K9WorkerFactory extends WorkerFactory {
    @Override // androidx.work.WorkerFactory
    public final ListenableWorker createWorker(Context context, String str, WorkerParameters workerParameters) {
        context.getClass();
        str.getClass();
        workerParameters.getClass();
        Object obj = null;
        if (!StringsKt__StringsJVMKt.startsWith(str, "com.fsck.k9", false)) {
            return null;
        }
        ClassReference orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Class.forName(str));
        Koin koin = GlobalContext._koin;
        if (koin == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("KoinApplication has not been started");
            return null;
        }
        Scope scope = koin.scopeRegistry.rootScope;
        AsyncTimeout.Companion companion = scope._koin.logger;
        try {
            obj = scope.resolve(orCreateKotlinClass, Options.Companion.parametersOf(workerParameters), null);
        } catch (NoDefinitionFoundException unused) {
            KClassExtKt.getFullName(orCreateKotlinClass);
            scope.toString();
            companion.getClass();
            Level.NONE.compareTo(Level.DEBUG);
        }
        return (ListenableWorker) obj;
    }
}
