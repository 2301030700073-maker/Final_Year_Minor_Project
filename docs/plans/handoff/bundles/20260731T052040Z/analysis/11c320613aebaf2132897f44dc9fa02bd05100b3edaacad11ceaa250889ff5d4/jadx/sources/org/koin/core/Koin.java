package org.koin.core;

import android.view.View;
import androidx.core.widget.NestedScrollView;
import androidx.viewbinding.ViewBinding;
import coil3.ComponentRegistry;
import io.noties.markwon.RenderPropsImpl;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
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
import kotlin.text.CharsKt;
import kotlin.time.Duration;
import kotlin.time.DurationUnit;
import kotlin.time.MonotonicTimeSource;
import kotlin.time.TimeSource$Monotonic$ValueTimeMark;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import okio.ByteString;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Printer;
import org.koin.core.definition.BeanDefinition;
import org.koin.core.error.ClosedScopeException;
import org.koin.core.instance.InstanceFactory;
import org.koin.core.instance.SingleInstanceFactory;
import org.koin.core.logger.Level;
import org.koin.core.logger.Logger;
import org.koin.core.module.Module;
import org.koin.core.registry.PropertyRegistry;
import org.koin.core.registry.ScopeRegistry;
import org.koin.core.scope.Scope;
import org.koin.core.scope.Scope$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class Koin implements ViewBinding {
    public Object extensionManager;
    public Object instanceRegistry;
    public Object logger;
    public Object optionRegistry;
    public Object propertyRegistry;
    public Object resolver;
    public Object scopeRegistry;

    public void close() {
        ScopeRegistry scopeRegistry = (ScopeRegistry) this.scopeRegistry;
        int i = 0;
        for (Object obj : scopeRegistry._scopes.values().toArray(new Scope[0])) {
            Scope scope = (Scope) obj;
            scope.getClass();
            Scope$$ExternalSyntheticLambda0 scope$$ExternalSyntheticLambda0 = new Scope$$ExternalSyntheticLambda0(scope, i);
            synchronized (scope) {
                scope$$ExternalSyntheticLambda0.invoke();
            }
        }
        scopeRegistry._scopes.clear();
        scopeRegistry._scopeDefinitions.clear();
        ConcurrentHashMap concurrentHashMap = (ConcurrentHashMap) ((Printer) this.instanceRegistry).accum;
        InstanceFactory[] instanceFactoryArr = (InstanceFactory[]) concurrentHashMap.values().toArray(new InstanceFactory[0]);
        int length = instanceFactoryArr.length;
        while (i < length) {
            instanceFactoryArr[i].dropAll();
            i++;
        }
        concurrentHashMap.clear();
        ((PropertyRegistry) this.propertyRegistry)._values.clear();
        Collection values = ((RenderPropsImpl) this.extensionManager).values.values();
        values.getClass();
        Iterator it = values.iterator();
        if (it.hasNext()) {
            it.next().getClass();
            _UtilJvmKt$$ExternalSyntheticLambda1.m$2();
        }
    }

    public void createEagerInstances() {
        Logger logger = (Logger) this.logger;
        logger.getClass();
        Level level = Level.DEBUG;
        logger.log(level, "Create eager instances ...");
        long read = MonotonicTimeSource.read();
        Printer printer = (Printer) this.instanceRegistry;
        ConcurrentHashMap concurrentHashMap = (ConcurrentHashMap) printer.settings;
        SingleInstanceFactory[] singleInstanceFactoryArr = (SingleInstanceFactory[]) concurrentHashMap.values().toArray(new SingleInstanceFactory[0]);
        ArrayList arrayListOf = Jsoup.arrayListOf(Arrays.copyOf(singleInstanceFactoryArr, singleInstanceFactoryArr.length));
        concurrentHashMap.clear();
        Koin koin = (Koin) printer.root;
        ComponentRegistry.Builder builder = new ComponentRegistry.Builder((Logger) koin.logger, ((ScopeRegistry) koin.scopeRegistry).rootScope, Reflection.getOrCreateKotlinClass(CharsKt.class), null);
        Iterator it = arrayListOf.iterator();
        while (it.hasNext()) {
            ((SingleInstanceFactory) it.next()).get(builder);
        }
        long m685elapsedNowUwyO8pc = TimeSource$Monotonic$ValueTimeMark.m685elapsedNowUwyO8pc(read);
        Logger logger2 = (Logger) this.logger;
        StringBuilder sb = new StringBuilder("Created eager instances in ");
        ByteString.Companion companion = Duration.Companion;
        sb.append(Duration.m683toLongimpl(m685elapsedNowUwyO8pc, DurationUnit.MICROSECONDS) / 1000.0d);
        sb.append(" ms");
        String sb2 = sb.toString();
        logger2.getClass();
        logger2.log(level, sb2);
    }

    @Override // androidx.viewbinding.ViewBinding
    public View getRoot() {
        return (NestedScrollView) this.logger;
    }

    public void loadModules(List list, boolean z) {
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
        Printer printer = (Printer) this.instanceRegistry;
        ConcurrentHashMap concurrentHashMap = (ConcurrentHashMap) printer.settings;
        for (Module module3 : linkedHashSet) {
            for (Map.Entry entry : module3.mappings.entrySet()) {
                String str = (String) entry.getKey();
                InstanceFactory instanceFactory = (InstanceFactory) entry.getValue();
                BeanDefinition beanDefinition = instanceFactory.beanDefinition;
                Koin koin = (Koin) printer.root;
                str.getClass();
                BeanDefinition beanDefinition2 = instanceFactory.beanDefinition;
                ConcurrentHashMap concurrentHashMap2 = (ConcurrentHashMap) printer.accum;
                if (((InstanceFactory) concurrentHashMap2.get(str)) != null) {
                    if (!z) {
                        throw new ClosedScopeException("Already existing definition for " + beanDefinition2 + " at " + str);
                    }
                    Logger logger = (Logger) koin.logger;
                    logger.getClass();
                    logger.log(Level.WARNING, "(+) override index '" + str + "' -> '" + beanDefinition2 + '\'');
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
                Logger logger2 = (Logger) koin.logger;
                logger2.getClass();
                logger2.log(Level.DEBUG, "(+) index '" + str + "' -> '" + beanDefinition2 + '\'');
                concurrentHashMap2.put(str, instanceFactory);
            }
            for (SingleInstanceFactory singleInstanceFactory : module3.eagerInstances) {
                concurrentHashMap.put(Integer.valueOf(singleInstanceFactory.beanDefinition.hashCode()), singleInstanceFactory);
            }
        }
        ScopeRegistry scopeRegistry = (ScopeRegistry) this.scopeRegistry;
        scopeRegistry.getClass();
        Iterator it3 = linkedHashSet.iterator();
        while (it3.hasNext()) {
            scopeRegistry._scopeDefinitions.addAll(((Module) it3.next()).scopes);
        }
    }
}
