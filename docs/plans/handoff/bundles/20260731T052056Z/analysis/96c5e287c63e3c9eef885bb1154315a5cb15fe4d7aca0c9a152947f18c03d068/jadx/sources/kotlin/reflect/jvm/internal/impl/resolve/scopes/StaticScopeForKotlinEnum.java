package kotlin.reflect.jvm.internal.impl.resolve.scopes;

import androidx.compose.ui.unit.DpKt;
import androidx.room.Room;
import java.util.Collection;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PropertyDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.SimpleFunctionDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.incremental.components.NoLookupLocation;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorFactory;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedClassDescriptor;
import kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager;
import kotlin.reflect.jvm.internal.impl.utils.SmartList;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class StaticScopeForKotlinEnum extends MemberScopeImpl {
    public static final /* synthetic */ KProperty[] $$delegatedProperties;
    public final DeserializedClassDescriptor containingClass;
    public final LockBasedStorageManager.LockBasedNotNullLazyValue functions$delegate;
    public final LockBasedStorageManager.LockBasedNotNullLazyValue properties$delegate;

    static {
        ReflectionFactory reflectionFactory = Reflection.factory;
        $$delegatedProperties = new KProperty[]{reflectionFactory.property1(new PropertyReference1Impl(reflectionFactory.getOrCreateKotlinClass(StaticScopeForKotlinEnum.class), "functions", "getFunctions()Ljava/util/List;")), reflectionFactory.property1(new PropertyReference1Impl(reflectionFactory.getOrCreateKotlinClass(StaticScopeForKotlinEnum.class), "properties", "getProperties()Ljava/util/List;"))};
    }

    public StaticScopeForKotlinEnum(LockBasedStorageManager lockBasedStorageManager, DeserializedClassDescriptor deserializedClassDescriptor) {
        lockBasedStorageManager.getClass();
        this.containingClass = deserializedClassDescriptor;
        final int i = 0;
        this.functions$delegate = new LockBasedStorageManager.LockBasedNotNullLazyValue(lockBasedStorageManager, new Function0(this) { // from class: kotlin.reflect.jvm.internal.impl.resolve.scopes.StaticScopeForKotlinEnum$functions$2
            public final /* synthetic */ StaticScopeForKotlinEnum this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
                this.this$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i2 = i;
                StaticScopeForKotlinEnum staticScopeForKotlinEnum = this.this$0;
                switch (i2) {
                    case 0:
                        DeserializedClassDescriptor deserializedClassDescriptor2 = staticScopeForKotlinEnum.containingClass;
                        return Room.listOf((Object[]) new SimpleFunctionDescriptorImpl[]{DescriptorFactory.createEnumValueOfMethod(deserializedClassDescriptor2), DescriptorFactory.createEnumValuesMethod(deserializedClassDescriptor2)});
                    default:
                        return Room.listOfNotNull(DescriptorFactory.createEnumEntriesProperty(staticScopeForKotlinEnum.containingClass));
                }
            }
        });
        final int i2 = 1;
        this.properties$delegate = new LockBasedStorageManager.LockBasedNotNullLazyValue(lockBasedStorageManager, new Function0(this) { // from class: kotlin.reflect.jvm.internal.impl.resolve.scopes.StaticScopeForKotlinEnum$functions$2
            public final /* synthetic */ StaticScopeForKotlinEnum this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
                this.this$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i2;
                StaticScopeForKotlinEnum staticScopeForKotlinEnum = this.this$0;
                switch (i22) {
                    case 0:
                        DeserializedClassDescriptor deserializedClassDescriptor2 = staticScopeForKotlinEnum.containingClass;
                        return Room.listOf((Object[]) new SimpleFunctionDescriptorImpl[]{DescriptorFactory.createEnumValueOfMethod(deserializedClassDescriptor2), DescriptorFactory.createEnumValuesMethod(deserializedClassDescriptor2)});
                    default:
                        return Room.listOfNotNull(DescriptorFactory.createEnumEntriesProperty(staticScopeForKotlinEnum.containingClass));
                }
            }
        });
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public final ClassifierDescriptor getContributedClassifier(Name name, NoLookupLocation noLookupLocation) {
        name.getClass();
        noLookupLocation.getClass();
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public final Collection getContributedDescriptors(DescriptorKindFilter descriptorKindFilter, Function1 function1) {
        descriptorKindFilter.getClass();
        KProperty[] kPropertyArr = $$delegatedProperties;
        return CollectionsKt.plus((Collection) DpKt.getValue(this.functions$delegate, kPropertyArr[0]), (Iterable) DpKt.getValue(this.properties$delegate, kPropertyArr[1]));
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public final Collection getContributedFunctions(Name name, NoLookupLocation noLookupLocation) {
        name.getClass();
        noLookupLocation.getClass();
        List list = (List) DpKt.getValue(this.functions$delegate, $$delegatedProperties[0]);
        SmartList smartList = new SmartList();
        for (Object obj : list) {
            if (Intrinsics.areEqual(((SimpleFunctionDescriptorImpl) obj).getName(), name)) {
                smartList.add(obj);
            }
        }
        return smartList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public final Collection getContributedVariables(Name name, NoLookupLocation noLookupLocation) {
        name.getClass();
        noLookupLocation.getClass();
        List list = (List) DpKt.getValue(this.properties$delegate, $$delegatedProperties[1]);
        SmartList smartList = new SmartList();
        for (Object obj : list) {
            if (Intrinsics.areEqual(((PropertyDescriptor) obj).getName(), name)) {
                smartList.add(obj);
            }
        }
        return smartList;
    }
}
