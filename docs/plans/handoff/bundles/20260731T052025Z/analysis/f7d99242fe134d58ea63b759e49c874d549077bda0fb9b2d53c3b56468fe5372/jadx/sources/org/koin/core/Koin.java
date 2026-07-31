package org.koin.core;

import androidx.compose.ui.unit.IntOffsetKt;
import androidx.sqlite.SQLite;
import com.bumptech.glide.load.engine.Jobs;
import com.fsck.k9.mailstore.LocalStore;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import kotlin.collections.ArrayDeque;
import kotlin.collections.ReversedList;
import kotlin.collections.ReversedList$listIterator$1;
import kotlin.collections.ReversedListReadOnly;
import kotlin.jvm.internal.Reflection;
import kotlin.time.Duration;
import kotlin.time.DurationUnit;
import kotlin.time.MonotonicTimeSource;
import kotlin.time.TimeSource$Monotonic$ValueTimeMark;
import okio.AsyncTimeout;
import org.jsoup.internal.SoftPool;
import org.koin.core.definition.BeanDefinition;
import org.koin.core.error.InstanceCreationException;
import org.koin.core.instance.InstanceFactory;
import org.koin.core.instance.SingleInstanceFactory;
import org.koin.core.logger.Level;
import org.koin.core.module.Module;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.registry.ScopeRegistry;
import org.slf4j.event.EventRecodingLogger;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Koin {
    public final EventRecodingLogger instanceRegistry;
    public final Jobs optionRegistry;
    public final AsyncTimeout.Companion logger = new AsyncTimeout.Companion(23);
    public final SoftPool resolver = new SoftPool(this);
    public final ScopeRegistry scopeRegistry = new ScopeRegistry(this);

    public Koin() {
        EventRecodingLogger eventRecodingLogger = new EventRecodingLogger();
        eventRecodingLogger.name = this;
        eventRecodingLogger.logger = new ConcurrentHashMap();
        eventRecodingLogger.eventQueue = new ConcurrentHashMap();
        this.instanceRegistry = eventRecodingLogger;
        new ConcurrentHashMap();
        new HashMap();
        this.optionRegistry = new Jobs(4);
    }

    public final void createEagerInstances() {
        this.logger.getClass();
        Level level = Level.NONE;
        Level level2 = Level.DEBUG;
        level.compareTo(level2);
        long read = MonotonicTimeSource.read();
        EventRecodingLogger eventRecodingLogger = this.instanceRegistry;
        ConcurrentHashMap concurrentHashMap = (ConcurrentHashMap) eventRecodingLogger.eventQueue;
        SingleInstanceFactory[] singleInstanceFactoryArr = (SingleInstanceFactory[]) concurrentHashMap.values().toArray(new SingleInstanceFactory[0]);
        ArrayList arrayListOf = IntOffsetKt.arrayListOf(Arrays.copyOf(singleInstanceFactoryArr, singleInstanceFactoryArr.length));
        concurrentHashMap.clear();
        Koin koin = (Koin) eventRecodingLogger.name;
        LocalStore.AnonymousClass7 anonymousClass7 = new LocalStore.AnonymousClass7(koin.logger, koin.scopeRegistry.rootScope, Reflection.getOrCreateKotlinClass(SQLite.class), (Qualifier) null, (ParametersHolder) null);
        Iterator it = arrayListOf.iterator();
        while (it.hasNext()) {
            ((SingleInstanceFactory) it.next()).get(anonymousClass7);
        }
        long m1005elapsedNowUwyO8pc = TimeSource$Monotonic$ValueTimeMark.m1005elapsedNowUwyO8pc(read);
        Duration.Companion companion = Duration.Companion;
        Duration.m1001toLongimpl(m1005elapsedNowUwyO8pc, DurationUnit.MICROSECONDS);
        level.compareTo(level2);
    }

    public final void loadModules(List list, boolean z) {
        Object obj;
        LinkedHashSet<Module> linkedHashSet = new LinkedHashSet();
        ArrayDeque arrayDeque = new ArrayDeque(new ReversedListReadOnly(list));
        while (!arrayDeque.isEmpty()) {
            Module module = (Module) arrayDeque.removeLast();
            if (linkedHashSet.add(module)) {
                ArrayList arrayList = module.includedModules;
                arrayList.getClass();
                Iterator it = new ReversedList(arrayList).iterator();
                while (true) {
                    ListIterator listIterator = (ListIterator) ((ReversedList$listIterator$1) it).delegateIterator;
                    if (listIterator.hasPrevious()) {
                        Module module2 = (Module) listIterator.previous();
                        if (!linkedHashSet.contains(module2)) {
                            arrayDeque.addLast(module2);
                        }
                    }
                }
            }
        }
        EventRecodingLogger eventRecodingLogger = this.instanceRegistry;
        ConcurrentHashMap concurrentHashMap = (ConcurrentHashMap) eventRecodingLogger.eventQueue;
        for (Module module3 : linkedHashSet) {
            for (Map.Entry entry : module3.mappings.entrySet()) {
                String str = (String) entry.getKey();
                InstanceFactory instanceFactory = (InstanceFactory) entry.getValue();
                BeanDefinition beanDefinition = instanceFactory.beanDefinition;
                AsyncTimeout.Companion companion = ((Koin) eventRecodingLogger.name).logger;
                str.getClass();
                BeanDefinition beanDefinition2 = instanceFactory.beanDefinition;
                ConcurrentHashMap concurrentHashMap2 = (ConcurrentHashMap) eventRecodingLogger.logger;
                InstanceFactory instanceFactory2 = (InstanceFactory) concurrentHashMap2.get(str);
                Level level = Level.NONE;
                if (instanceFactory2 != null) {
                    if (!z) {
                        throw new InstanceCreationException("Already existing definition for " + beanDefinition2 + " at " + str);
                    }
                    beanDefinition2.toString();
                    companion.getClass();
                    level.compareTo(Level.WARNING);
                    Iterator it2 = concurrentHashMap.values().iterator();
                    while (true) {
                        if (it2.hasNext()) {
                            obj = it2.next();
                            if (((SingleInstanceFactory) obj).beanDefinition.equals(beanDefinition2)) {
                                break;
                            }
                        } else {
                            obj = null;
                            break;
                        }
                    }
                    if (((SingleInstanceFactory) obj) != null) {
                        concurrentHashMap.remove(Integer.valueOf(beanDefinition2.hashCode()));
                    }
                }
                beanDefinition2.toString();
                companion.getClass();
                level.compareTo(Level.DEBUG);
                concurrentHashMap2.put(str, instanceFactory);
            }
            for (SingleInstanceFactory singleInstanceFactory : module3.eagerInstances) {
                concurrentHashMap.put(Integer.valueOf(singleInstanceFactory.beanDefinition.hashCode()), singleInstanceFactory);
            }
        }
        ScopeRegistry scopeRegistry = this.scopeRegistry;
        scopeRegistry.getClass();
        Iterator it3 = linkedHashSet.iterator();
        while (it3.hasNext()) {
            scopeRegistry._scopeDefinitions.addAll(((Module) it3.next()).scopes);
        }
    }
}
