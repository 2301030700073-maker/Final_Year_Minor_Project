package org.koin.core.module;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.CacheControl;
import org.koin.core.definition.BeanDefinition;
import org.koin.core.instance.InstanceFactory;
import org.koin.core.qualifier.Qualifier;
import org.koin.ext.KClassExtKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Module {
    public final String id = CacheControl.Companion.generateId();
    public final LinkedHashSet eagerInstances = new LinkedHashSet();
    public final LinkedHashMap mappings = new LinkedHashMap();
    public final LinkedHashSet scopes = new LinkedHashSet();
    public final ArrayList includedModules = new ArrayList();

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Module)) {
            return false;
        }
        return Intrinsics.areEqual(this.id, ((Module) obj).id);
    }

    public final int hashCode() {
        return this.id.hashCode();
    }

    public final void indexPrimaryType(InstanceFactory instanceFactory) {
        String str;
        BeanDefinition beanDefinition = instanceFactory.beanDefinition;
        ClassReference classReference = beanDefinition.primaryType;
        Qualifier qualifier = beanDefinition.qualifier;
        Qualifier qualifier2 = beanDefinition.scopeQualifier;
        StringBuilder sb = new StringBuilder();
        sb.append(KClassExtKt.getFullName(classReference));
        sb.append(':');
        if (qualifier == null || (str = qualifier.getValue()) == null) {
            str = "";
        }
        sb.append(str);
        sb.append(':');
        sb.append(qualifier2);
        this.mappings.put(sb.toString(), instanceFactory);
    }
}
