package kotlin.reflect.jvm.internal.impl.builtins.functions;

import androidx.compose.ui.unit.DpKt;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptySet;
import kotlin.reflect.jvm.internal.impl.builtins.functions.FunctionClassKind;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.deserialization.ClassDescriptorFactory;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.LazyPackageViewDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.builtins.BuiltInsPackageFragmentImpl;
import kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsJVMKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class BuiltInFictitiousFunctionClassFactory implements ClassDescriptorFactory {
    public final ModuleDescriptor module;
    public final LockBasedStorageManager storageManager;

    public BuiltInFictitiousFunctionClassFactory(LockBasedStorageManager lockBasedStorageManager, ModuleDescriptorImpl moduleDescriptorImpl) {
        moduleDescriptorImpl.getClass();
        this.storageManager = lockBasedStorageManager;
        this.module = moduleDescriptorImpl;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.deserialization.ClassDescriptorFactory
    public final ModuleAwareClassDescriptor createClass(ClassId classId) {
        classId.getClass();
        if (!classId.local && classId.relativeClassName.parent().isRoot()) {
            String asString = classId.getRelativeClassName().asString();
            if (StringsKt.contains(asString, "Function", false)) {
                FqName packageFqName = classId.getPackageFqName();
                packageFqName.getClass();
                FunctionClassKind.Companion.getClass();
                FunctionClassKind.Companion.KindWithArity parseClassName = FunctionClassKind.Companion.parseClassName(asString, packageFqName);
                if (parseClassName != null) {
                    FunctionClassKind functionClassKind = parseClassName.kind;
                    int i = parseClassName.arity;
                    List list = (List) DpKt.getValue(this.module.getPackage(packageFqName).fragments$delegate, LazyPackageViewDescriptorImpl.$$delegatedProperties[0]);
                    ArrayList arrayList = new ArrayList();
                    for (Object obj : list) {
                        if (obj instanceof BuiltInsPackageFragmentImpl) {
                            arrayList.add(obj);
                        }
                    }
                    ArrayList arrayList2 = new ArrayList();
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        it.next();
                    }
                    if (CollectionsKt.firstOrNull((List) arrayList2) == null) {
                        return new FunctionClassDescriptor(this.storageManager, (BuiltInsPackageFragmentImpl) CollectionsKt.first((List) arrayList), functionClassKind, i);
                    }
                    ContextsKt$$ExternalSyntheticBUOutline0.m$1();
                }
            }
        }
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.deserialization.ClassDescriptorFactory
    public final Collection getAllContributedClassesIfPossible(FqName fqName) {
        fqName.getClass();
        return EmptySet.INSTANCE;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.deserialization.ClassDescriptorFactory
    public final boolean shouldCreateClass(FqName fqName, Name name) {
        fqName.getClass();
        name.getClass();
        String asString = name.asString();
        asString.getClass();
        if (StringsKt__StringsJVMKt.startsWith(asString, "Function", false) || StringsKt__StringsJVMKt.startsWith(asString, "KFunction", false) || StringsKt__StringsJVMKt.startsWith(asString, "SuspendFunction", false) || StringsKt__StringsJVMKt.startsWith(asString, "KSuspendFunction", false)) {
            FunctionClassKind.Companion.getClass();
            if (FunctionClassKind.Companion.parseClassName(asString, fqName) != null) {
                return true;
            }
        }
        return false;
    }
}
