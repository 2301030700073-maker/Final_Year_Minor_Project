package kotlin.reflect.jvm.internal.impl.resolve.scopes;

import androidx.compose.ui.unit.DpKt;
import java.util.Collection;
import java.util.List;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.impl.descriptors.PropertyDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.SimpleFunctionDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.incremental.components.NoLookupLocation;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager;
import kotlin.reflect.jvm.internal.impl.utils.SmartList;
import leakcanary.AndroidLeakFixes$Companion$onDecorViewReady$1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class GivenFunctionsMemberScope extends MemberScopeImpl {
    public static final /* synthetic */ KProperty[] $$delegatedProperties;
    public final LockBasedStorageManager.LockBasedNotNullLazyValue allDescriptors$delegate;
    public final AbstractClassDescriptor containingClass;

    static {
        ReflectionFactory reflectionFactory = Reflection.factory;
        $$delegatedProperties = new KProperty[]{reflectionFactory.property1(new PropertyReference1Impl(reflectionFactory.getOrCreateKotlinClass(GivenFunctionsMemberScope.class), "allDescriptors", "getAllDescriptors()Ljava/util/List;"))};
    }

    public GivenFunctionsMemberScope(LockBasedStorageManager lockBasedStorageManager, AbstractClassDescriptor abstractClassDescriptor) {
        this.containingClass = abstractClassDescriptor;
        this.allDescriptors$delegate = new LockBasedStorageManager.LockBasedNotNullLazyValue(lockBasedStorageManager, new AndroidLeakFixes$Companion$onDecorViewReady$1(10, this));
    }

    public abstract List computeDeclaredFunctions();

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public final Collection getContributedDescriptors(DescriptorKindFilter descriptorKindFilter, Function1 function1) {
        descriptorKindFilter.getClass();
        if (!descriptorKindFilter.acceptsKinds(DescriptorKindFilter.CALLABLES.kindMask)) {
            return EmptyList.INSTANCE;
        }
        return (List) DpKt.getValue(this.allDescriptors$delegate, $$delegatedProperties[0]);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public final Collection getContributedFunctions(Name name, NoLookupLocation noLookupLocation) {
        name.getClass();
        noLookupLocation.getClass();
        List list = (List) DpKt.getValue(this.allDescriptors$delegate, $$delegatedProperties[0]);
        SmartList smartList = new SmartList();
        for (Object obj : list) {
            if ((obj instanceof SimpleFunctionDescriptorImpl) && Intrinsics.areEqual(((SimpleFunctionDescriptorImpl) obj).getName(), name)) {
                smartList.add(obj);
            }
        }
        return smartList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public final Collection getContributedVariables(Name name, NoLookupLocation noLookupLocation) {
        name.getClass();
        noLookupLocation.getClass();
        List list = (List) DpKt.getValue(this.allDescriptors$delegate, $$delegatedProperties[0]);
        SmartList smartList = new SmartList();
        for (Object obj : list) {
            if ((obj instanceof PropertyDescriptor) && Intrinsics.areEqual(((PropertyDescriptor) obj).getName(), name)) {
                smartList.add(obj);
            }
        }
        return smartList;
    }
}
