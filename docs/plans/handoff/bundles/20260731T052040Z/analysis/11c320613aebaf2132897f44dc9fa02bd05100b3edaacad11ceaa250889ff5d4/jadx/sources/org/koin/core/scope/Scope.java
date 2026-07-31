package org.koin.core.scope;

import androidx.compose.ui.Modifier;
import coil3.ComponentRegistry;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import kotlin.collections.ArrayDeque;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.Duration;
import kotlin.time.DurationUnit;
import kotlin.time.MonotonicTimeSource;
import kotlin.time.TimeSource$Monotonic$ValueTimeMark;
import okio.ByteString;
import org.jsoup.nodes.Printer;
import org.koin.core.Koin;
import org.koin.core.definition.BeanDefinition;
import org.koin.core.error.ClosedScopeException;
import org.koin.core.instance.InstanceFactory;
import org.koin.core.logger.Level;
import org.koin.core.logger.Logger;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.qualifier.TypeQualifier;
import org.koin.ext.KClassExtKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class Scope {
    public final LinkedHashSet _callbacks;
    public volatile boolean _closed;
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
        this._callbacks = new LinkedHashSet();
    }

    public final void clearParameterStack$koin_core(ArrayDeque arrayDeque) {
        if (!arrayDeque.isEmpty()) {
            arrayDeque.removeFirst();
        }
        if (arrayDeque.isEmpty()) {
            getParameterStack$koin_core().remove();
        }
    }

    public final ArrayList getAll(ClassReference classReference) {
        Koin koin = this._koin;
        ComponentRegistry.Builder builder = new ComponentRegistry.Builder((Logger) koin.logger, this, classReference, null);
        TypeQualifier typeQualifier = this.scopeArchetype;
        builder.lazyDecoderFactories = typeQualifier;
        Printer printer = (Printer) koin.instanceRegistry;
        printer.getClass();
        Collection values = ((ConcurrentHashMap) printer.accum).values();
        ArrayList arrayList = new ArrayList();
        for (Object obj : values) {
            BeanDefinition beanDefinition = ((InstanceFactory) obj).beanDefinition;
            Qualifier qualifier = beanDefinition.scopeQualifier;
            if (Intrinsics.areEqual(qualifier, this.scopeQualifier) || Intrinsics.areEqual(qualifier, typeQualifier)) {
                if (beanDefinition.primaryType.equals(classReference) || beanDefinition._secondaryTypes.contains(classReference)) {
                    arrayList.add(obj);
                }
            }
        }
        List list = CollectionsKt.toList(new LinkedHashSet(arrayList));
        ArrayList arrayList2 = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Object obj2 = ((InstanceFactory) it.next()).get(builder);
            if (obj2 == null) {
                obj2 = null;
            }
            if (obj2 != null) {
                arrayList2.add(obj2);
            }
        }
        ArrayList arrayList3 = new ArrayList();
        Iterator it2 = this.linkedScopes.iterator();
        while (it2.hasNext()) {
            CollectionsKt__MutableCollectionsKt.addAll(((Scope) it2.next()).getAll(classReference), arrayList3);
        }
        return CollectionsKt.plus((Collection) arrayList2, (List) arrayList3);
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

    public final Object resolve(ClassReference classReference, ParametersHolder parametersHolder) {
        Koin koin = this._koin;
        Level level = (Level) ((Logger) koin.logger).level;
        Level level2 = Level.DEBUG;
        if (level.compareTo(level2) > 0) {
            return resolveInstance(classReference, parametersHolder);
        }
        String m = this.isRoot ? "" : Modifier.CC.m(new StringBuilder(" - scope:'"), this.id, '\'');
        ((Logger) koin.logger).display(level2, "|- '" + KClassExtKt.getFullName(classReference) + "'" + m + "...");
        long read = MonotonicTimeSource.read();
        Object resolveInstance = resolveInstance(classReference, parametersHolder);
        long m685elapsedNowUwyO8pc = TimeSource$Monotonic$ValueTimeMark.m685elapsedNowUwyO8pc(read);
        Logger logger = (Logger) koin.logger;
        StringBuilder sb = new StringBuilder("|- '");
        sb.append(KClassExtKt.getFullName(classReference));
        sb.append("' in ");
        ByteString.Companion companion = Duration.Companion;
        sb.append(Duration.m683toLongimpl(m685elapsedNowUwyO8pc, DurationUnit.MICROSECONDS) / 1000.0d);
        sb.append(" ms");
        logger.display(level2, sb.toString());
        return resolveInstance;
    }

    /* JADX WARN: Removed duplicated region for block: B:122:0x02b8 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:98:0x019e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object resolveFromContext(coil3.ComponentRegistry.Builder r10) {
        /*
            Method dump skipped, instructions count: 697
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.koin.core.scope.Scope.resolveFromContext(coil3.ComponentRegistry$Builder):java.lang.Object");
    }

    public final Object resolveInstance(ClassReference classReference, ParametersHolder parametersHolder) {
        Level level = Level.DEBUG;
        if (this._closed) {
            throw new ClosedScopeException(Modifier.CC.m(new StringBuilder("Scope '"), this.id, "' is closed"));
        }
        ComponentRegistry.Builder builder = new ComponentRegistry.Builder((Logger) this._koin.logger, this, classReference, parametersHolder);
        Koin koin = this._koin;
        if (parametersHolder == null) {
            return resolveFromContext(builder);
        }
        Logger logger = (Logger) koin.logger;
        if (((Level) logger.level).compareTo(level) <= 0) {
            logger.display(level, "| >> parameters " + parametersHolder);
        }
        ArrayDeque onParameterOnStack$koin_core = onParameterOnStack$koin_core(parametersHolder);
        try {
            return resolveFromContext(builder);
        } finally {
            Logger logger2 = (Logger) koin.logger;
            logger2.getClass();
            logger2.log(level, "| << parameters");
            clearParameterStack$koin_core(onParameterOnStack$koin_core);
        }
    }

    public final String toString() {
        return Modifier.CC.m(new StringBuilder("['"), this.id, "']");
    }
}
