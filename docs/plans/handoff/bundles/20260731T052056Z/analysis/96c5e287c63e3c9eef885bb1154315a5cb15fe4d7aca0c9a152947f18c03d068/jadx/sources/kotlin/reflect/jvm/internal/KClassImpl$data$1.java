package kotlin.reflect.jvm.internal;

import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.KClassImpl;
import kotlin.reflect.jvm.internal.KDeclarationContainerImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.ConstructorDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DescriptorUtilKt;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.components.ReflectKotlinClass;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.components.RuntimeModuleData;
import kotlin.reflect.jvm.internal.impl.load.kotlin.header.KotlinClassHeader;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.ClassDeserializer;
import kotlin.text.RegexKt;
import kotlin.text.StringsKt;
import org.wikipedia.databinding.ActivityGalleryBinding;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class KClassImpl$data$1 extends Lambda implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ KClassImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public KClassImpl$data$1(KClassImpl kClassImpl, KClassImpl.Data data) {
        super(0);
        this.$r8$classId = 8;
        this.this$0 = kClassImpl;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        ModuleAwareClassDescriptor findClassAcrossModuleDependencies;
        int i = this.$r8$classId;
        KClassImpl kClassImpl = this.this$0;
        switch (i) {
            case 0:
                return new KClassImpl.Data(kClassImpl);
            case 1:
                Collection constructorDescriptors = kClassImpl.getConstructorDescriptors();
                ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(constructorDescriptors, 10));
                Iterator it = constructorDescriptors.iterator();
                while (it.hasNext()) {
                    arrayList.add(new KFunctionImpl(kClassImpl, (ConstructorDescriptor) it.next()));
                }
                return arrayList;
            case 2:
                return kClassImpl.getMembers(kClassImpl.getDescriptor().getDefaultType().getMemberScope(), KDeclarationContainerImpl.MemberBelonginess.DECLARED);
            case 3:
                MemberScope staticScope = kClassImpl.getDescriptor().getStaticScope();
                staticScope.getClass();
                return kClassImpl.getMembers(staticScope, KDeclarationContainerImpl.MemberBelonginess.DECLARED);
            case 4:
                int i2 = KClassImpl.$r8$clinit;
                ClassId classId = kClassImpl.getClassId();
                ReflectProperties$LazySoftVal reflectProperties$LazySoftVal = ((KClassImpl.Data) kClassImpl.data.invoke()).moduleData$delegate;
                KProperty kProperty = KDeclarationContainerImpl.Data.$$delegatedProperties[0];
                Object invoke = reflectProperties$LazySoftVal.invoke();
                invoke.getClass();
                boolean z = classId.local;
                ActivityGalleryBinding activityGalleryBinding = ((RuntimeModuleData) invoke).deserialization;
                if (z) {
                    ClassDeserializer classDeserializer = (ClassDeserializer) activityGalleryBinding.toolbar;
                    Set set = ClassDeserializer.BLACK_LIST;
                    findClassAcrossModuleDependencies = classDeserializer.deserializeClass(classId, null);
                } else {
                    findClassAcrossModuleDependencies = DescriptorUtilKt.findClassAcrossModuleDependencies((ModuleDescriptor) activityGalleryBinding.licenseIcon, classId);
                }
                if (findClassAcrossModuleDependencies != null) {
                    return findClassAcrossModuleDependencies;
                }
                Class cls = kClassImpl.jClass;
                ReflectKotlinClass create = RegexKt.create(cls);
                KotlinClassHeader.Kind kind = create != null ? create.classHeader.kind : null;
                switch (kind == null ? -1 : KClassImpl.WhenMappings.$EnumSwitchMapping$0[kind.ordinal()]) {
                    case -1:
                    case 6:
                        Gson$$ExternalSyntheticBUOutline0.m$6("Unresolved class: ", cls);
                        return null;
                    case 0:
                    default:
                        ContextsKt$$ExternalSyntheticBUOutline0.m();
                        return null;
                    case 1:
                    case 2:
                    case 3:
                        Gson$$ExternalSyntheticBUOutline0.m$5("Packages and file facades are not yet supported in Kotlin reflection. Meanwhile please use Java reflection to inspect this class: ", cls);
                        return null;
                    case 4:
                        Gson$$ExternalSyntheticBUOutline0.m$5("This class is an internal synthetic class generated by the Kotlin compiler, such as an anonymous class for a lambda, a SAM wrapper, a callable reference, etc. It's not a Kotlin class or interface, so the reflection library has no idea what declarations it has. Please use Java reflection to inspect this class: ", cls);
                        return null;
                    case 5:
                        Gson$$ExternalSyntheticBUOutline0.m("Unknown class: ", cls, " (kind = ", kind);
                        return null;
                }
            case 5:
                return kClassImpl.getMembers(kClassImpl.getDescriptor().getDefaultType().getMemberScope(), KDeclarationContainerImpl.MemberBelonginess.INHERITED);
            case 6:
                MemberScope staticScope2 = kClassImpl.getDescriptor().getStaticScope();
                staticScope2.getClass();
                return kClassImpl.getMembers(staticScope2, KDeclarationContainerImpl.MemberBelonginess.INHERITED);
            case 7:
                if (kClassImpl.jClass.isAnonymousClass()) {
                    return null;
                }
                ClassId classId2 = kClassImpl.getClassId();
                if (classId2.local) {
                    return null;
                }
                return classId2.asSingleFqName().asString();
            default:
                Class cls2 = kClassImpl.jClass;
                if (cls2.isAnonymousClass()) {
                    return null;
                }
                ClassId classId3 = kClassImpl.getClassId();
                if (!classId3.local) {
                    String asString = classId3.getShortClassName().asString();
                    asString.getClass();
                    return asString;
                }
                String simpleName = cls2.getSimpleName();
                Method enclosingMethod = cls2.getEnclosingMethod();
                if (enclosingMethod != null) {
                    return StringsKt.substringAfter(simpleName, enclosingMethod.getName() + '$', simpleName);
                }
                Constructor<?> enclosingConstructor = cls2.getEnclosingConstructor();
                if (enclosingConstructor == null) {
                    return StringsKt.substringAfter$default(simpleName, '$');
                }
                return StringsKt.substringAfter(simpleName, enclosingConstructor.getName() + '$', simpleName);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ KClassImpl$data$1(KClassImpl kClassImpl, int i) {
        super(0);
        this.$r8$classId = i;
        this.this$0 = kClassImpl;
    }
}
