package org.koin.core.instance;

import androidx.compose.ui.unit.IntOffsetKt;
import com.fsck.k9.mailstore.LocalStore;
import java.util.Arrays;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.text.StringsKt;
import okio.AsyncTimeout;
import org.koin.core.definition.BeanDefinition;
import org.koin.core.error.InstanceCreationException;
import org.koin.core.logger.Level;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.scope.Scope;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class InstanceFactory {
    public final BeanDefinition beanDefinition;

    public InstanceFactory(BeanDefinition beanDefinition) {
        this.beanDefinition = beanDefinition;
    }

    public Object create(LocalStore.AnonymousClass7 anonymousClass7) {
        Iterable iterable;
        AsyncTimeout.Companion companion = (AsyncTimeout.Companion) anonymousClass7.val$queryString;
        BeanDefinition beanDefinition = this.beanDefinition;
        beanDefinition.toString();
        companion.getClass();
        Level level = Level.NONE;
        level.compareTo(Level.DEBUG);
        try {
            ParametersHolder parametersHolder = (ParametersHolder) anonymousClass7.this$0;
            if (parametersHolder == null) {
                parametersHolder = new ParametersHolder(3, null);
            }
            return beanDefinition.definition.invoke((Scope) anonymousClass7.val$placeHolders, parametersHolder);
        } catch (Exception e) {
            StringBuilder sb = new StringBuilder();
            sb.append(e);
            sb.append("\n\t");
            StackTraceElement[] stackTrace = e.getStackTrace();
            stackTrace.getClass();
            int i = 0;
            while (i < stackTrace.length) {
                String className = stackTrace[i].getClassName();
                className.getClass();
                if (StringsKt.contains(className, "sun.reflect", false)) {
                    break;
                }
                i++;
            }
            if (i == 0) {
                iterable = EmptyList.INSTANCE;
            } else if (i != 1) {
                iterable = Arrays.asList(ArraysKt___ArraysKt.copyOfRange(stackTrace, 0, i));
                iterable.getClass();
            } else {
                iterable = IntOffsetKt.listOf(stackTrace[0]);
            }
            sb.append(CollectionsKt.joinToString$default(iterable, "\n\t", null, null, null, 62));
            beanDefinition.toString();
            level.compareTo(Level.ERROR);
            throw new InstanceCreationException("Could not create instance for '" + beanDefinition + '\'', e);
        }
    }

    public abstract Object get(LocalStore.AnonymousClass7 anonymousClass7);
}
