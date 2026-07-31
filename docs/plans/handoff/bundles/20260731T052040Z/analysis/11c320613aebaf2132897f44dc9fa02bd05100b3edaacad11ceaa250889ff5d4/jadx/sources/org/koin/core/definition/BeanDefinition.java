package org.koin.core.definition;

import java.util.ArrayList;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.Intrinsics;
import okio.internal.ZipFilesKt$$ExternalSyntheticLambda3;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.qualifier.StringQualifier;
import org.koin.core.qualifier.TypeQualifier;
import org.koin.core.registry.ScopeRegistry;
import org.koin.ext.KClassExtKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class BeanDefinition {
    public final ArrayList _secondaryTypes;
    public final Callbacks callbacks;
    public final Function2 definition;
    public final Kind kind;
    public final ClassReference primaryType;
    public final TypeQualifier qualifier;
    public final Qualifier scopeQualifier;

    public BeanDefinition(Qualifier qualifier, ClassReference classReference, TypeQualifier typeQualifier, Function2 function2, Kind kind) {
        qualifier.getClass();
        this.scopeQualifier = qualifier;
        this.primaryType = classReference;
        this.qualifier = typeQualifier;
        this.definition = function2;
        this.kind = kind;
        this._secondaryTypes = new ArrayList(EmptyList.INSTANCE);
        this.callbacks = new Callbacks();
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
        TypeQualifier typeQualifier = this.qualifier;
        int hashCode = typeQualifier != null ? typeQualifier.value.hashCode() : 0;
        return this.scopeQualifier.hashCode() + ((this.primaryType.hashCode() + (hashCode * 31)) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append('[');
        sb.append(this.kind);
        sb.append(": '");
        sb.append(KClassExtKt.getFullName(this.primaryType));
        sb.append('\'');
        TypeQualifier typeQualifier = this.qualifier;
        if (typeQualifier != null) {
            sb.append(",qualifier:");
            sb.append(typeQualifier);
        }
        StringQualifier stringQualifier = ScopeRegistry.rootScopeQualifier;
        Qualifier qualifier = this.scopeQualifier;
        if (!Intrinsics.areEqual(qualifier, stringQualifier)) {
            sb.append(",scope:");
            sb.append(qualifier);
        }
        ArrayList arrayList = this._secondaryTypes;
        if (!arrayList.isEmpty()) {
            sb.append(",binds:");
            CollectionsKt.joinTo$default(arrayList, sb, ",", new ZipFilesKt$$ExternalSyntheticLambda3(14), 60);
        }
        sb.append(']');
        return sb.toString();
    }
}
