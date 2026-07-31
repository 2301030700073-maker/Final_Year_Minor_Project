package kotlin.reflect.jvm.internal.impl.builtins.jvm;

import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.builtins.StandardNames;
import kotlin.reflect.jvm.internal.impl.builtins.jvm.JvmBuiltIns;
import kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentProviderOptimized;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.CompositePackageFragmentProvider;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleDescriptorImpl;
import okhttp3.Dispatcher$promoteAndExecute$Effects;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class JvmBuiltIns$initialize$1 extends Lambda implements Function0 {
    public final /* synthetic */ ModuleDescriptorImpl $moduleDescriptor;
    public final /* synthetic */ int $r8$classId;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ JvmBuiltIns$initialize$1(ModuleDescriptorImpl moduleDescriptorImpl, int i) {
        super(0);
        this.$r8$classId = i;
        this.$moduleDescriptor = moduleDescriptorImpl;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        ModuleDescriptorImpl moduleDescriptorImpl = this.$moduleDescriptor;
        switch (i) {
            case 0:
                return new JvmBuiltIns.Settings(moduleDescriptorImpl);
            case 1:
                return moduleDescriptorImpl.getPackage(StandardNames.KOTLIN_REFLECT_FQ_NAME).memberScope;
            default:
                Dispatcher$promoteAndExecute$Effects dispatcher$promoteAndExecute$Effects = moduleDescriptorImpl.dependencies;
                if (dispatcher$promoteAndExecute$Effects == null) {
                    String str = moduleDescriptorImpl.getName().name;
                    str.getClass();
                    Gson$$ExternalSyntheticBUOutline0.m(str, " were not set before querying module content", "Dependencies of module ");
                    return null;
                }
                List list = dispatcher$promoteAndExecute$Effects.callsToExecute;
                moduleDescriptorImpl.assertValid();
                list.contains(moduleDescriptorImpl);
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    ((ModuleDescriptorImpl) it.next()).getClass();
                }
                ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list, 10));
                Iterator it2 = list.iterator();
                while (it2.hasNext()) {
                    PackageFragmentProviderOptimized packageFragmentProviderOptimized = ((ModuleDescriptorImpl) it2.next()).packageFragmentProviderForModuleContent;
                    packageFragmentProviderOptimized.getClass();
                    arrayList.add(packageFragmentProviderOptimized);
                }
                return new CompositePackageFragmentProvider(arrayList, "CompositeProvider@ModuleDescriptor for " + moduleDescriptorImpl.getName());
        }
    }
}
