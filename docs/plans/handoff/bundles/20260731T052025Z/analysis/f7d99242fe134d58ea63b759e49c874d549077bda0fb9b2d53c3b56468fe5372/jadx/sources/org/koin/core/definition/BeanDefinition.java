package org.koin.core.definition;

import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.Intrinsics;
import okio.internal.ZipFilesKt$$ExternalSyntheticLambda0;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.qualifier.StringQualifier;
import org.koin.core.registry.ScopeRegistry;
import org.koin.ext.KClassExtKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class BeanDefinition {
    public final Function2 definition;
    public final Kind kind;
    public final ClassReference primaryType;
    public final Qualifier qualifier;
    public final Qualifier scopeQualifier;
    public List secondaryTypes;

    public BeanDefinition(Qualifier qualifier, ClassReference classReference, Qualifier qualifier2, Function2 function2, Kind kind) {
        qualifier.getClass();
        this.scopeQualifier = qualifier;
        this.primaryType = classReference;
        this.qualifier = qualifier2;
        this.definition = function2;
        this.kind = kind;
        this.secondaryTypes = EmptyList.INSTANCE;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        obj.getClass();
        BeanDefinition beanDefinition = (BeanDefinition) obj;
        return this.primaryType.equals(beanDefinition.primaryType) && Intrinsics.areEqual(this.qualifier, beanDefinition.qualifier) && Intrinsics.areEqual(this.scopeQualifier, beanDefinition.scopeQualifier);
    }

    public final int hashCode() {
        Qualifier qualifier = this.qualifier;
        int hashCode = qualifier != null ? qualifier.hashCode() : 0;
        return this.scopeQualifier.hashCode() + ((this.primaryType.hashCode() + (hashCode * 31)) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append('[');
        sb.append(this.kind);
        sb.append(": '");
        sb.append(KClassExtKt.getFullName(this.primaryType));
        sb.append('\'');
        Qualifier qualifier = this.qualifier;
        if (qualifier != null) {
            sb.append(",qualifier:");
            sb.append(qualifier);
        }
        StringQualifier stringQualifier = ScopeRegistry.rootScopeQualifier;
        Qualifier qualifier2 = this.scopeQualifier;
        if (!Intrinsics.areEqual(qualifier2, stringQualifier)) {
            sb.append(",scope:");
            sb.append(qualifier2);
        }
        if (!this.secondaryTypes.isEmpty()) {
            sb.append(",binds:");
            CollectionsKt.joinTo$default(this.secondaryTypes, sb, ",", null, null, new ZipFilesKt$$ExternalSyntheticLambda0(11), 60);
        }
        sb.append(']');
        return sb.toString();
    }
}
