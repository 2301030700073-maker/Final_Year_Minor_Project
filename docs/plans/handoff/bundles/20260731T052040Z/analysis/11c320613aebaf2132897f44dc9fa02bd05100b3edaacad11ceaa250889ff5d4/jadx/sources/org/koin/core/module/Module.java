package org.koin.core.module;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.CharsKt;
import org.koin.core.definition.BeanDefinition;
import org.koin.core.instance.InstanceFactory;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.qualifier.TypeQualifier;
import org.koin.ext.KClassExtKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class Module {
    public final String id = CharsKt.generateId();
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
        TypeQualifier typeQualifier = beanDefinition.qualifier;
        Qualifier qualifier = beanDefinition.scopeQualifier;
        StringBuilder sb = new StringBuilder();
        sb.append(KClassExtKt.getFullName(classReference));
        sb.append(':');
        if (typeQualifier == null || (str = typeQualifier.value) == null) {
            str = "";
        }
        sb.append(str);
        sb.append(':');
        sb.append(qualifier);
        this.mappings.put(sb.toString(), instanceFactory);
    }
}
