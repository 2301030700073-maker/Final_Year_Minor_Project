package org.koin.core.instance;

import coil3.ComponentRegistry;
import java.util.Arrays;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.text.StringsKt;
import org.jsoup.Jsoup;
import org.koin.core.definition.BeanDefinition;
import org.koin.core.error.ClosedScopeException;
import org.koin.core.logger.Level;
import org.koin.core.logger.Logger;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.scope.Scope;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class InstanceFactory {
    public final BeanDefinition beanDefinition;

    public InstanceFactory(BeanDefinition beanDefinition) {
        this.beanDefinition = beanDefinition;
    }

    public Object create(ComponentRegistry.Builder builder) {
        Iterable iterable;
        Logger logger = (Logger) builder.interceptors;
        StringBuilder sb = new StringBuilder("| (+) '");
        BeanDefinition beanDefinition = this.beanDefinition;
        sb.append(beanDefinition);
        sb.append('\'');
        String sb2 = sb.toString();
        logger.getClass();
        logger.log(Level.DEBUG, sb2);
        try {
            ParametersHolder parametersHolder = (ParametersHolder) builder.lazyFetcherFactories;
            if (parametersHolder == null) {
                parametersHolder = new ParametersHolder(3, null);
            }
            return beanDefinition.definition.invoke((Scope) builder.mappers, parametersHolder);
        } catch (Exception e) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append(e);
            sb3.append("\n\t");
            StackTraceElement[] stackTrace = e.getStackTrace();
            stackTrace.getClass();
            int i = 0;
            while (i < stackTrace.length) {
                String className = stackTrace[i].getClassName();
                className.getClass();
                if (StringsKt.contains$default(className, "sun.reflect")) {
                    break;
                }
                i++;
            }
            if (i == 0) {
                iterable = EmptyList.INSTANCE;
            } else if (i != 1) {
                iterable = Arrays.asList(ArraysKt.copyOfRange(stackTrace, 0, i));
                iterable.getClass();
            } else {
                iterable = Jsoup.listOf(stackTrace[0]);
            }
            sb3.append(CollectionsKt.joinToString$default(iterable, "\n\t", null, null, null, 62));
            logger.log(Level.ERROR, "* Instance creation error : could not create instance for '" + beanDefinition + "': " + sb3.toString());
            throw new ClosedScopeException("Could not create instance for '" + beanDefinition + '\'', e);
        }
    }

    public abstract void dropAll();

    public abstract Object get(ComponentRegistry.Builder builder);
}
