package leakcanary;

import android.app.Application;
import androidx.compose.ui.unit.DpKt;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.room.Room;
import coil3.util.UtilsKt;
import com.hcaptcha.sdk.HCaptcha;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.collections.EmptyList;
import kotlin.collections.EmptyMap;
import kotlin.collections.builders.ListBuilder;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.ClassBasedDeclarationContainer;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlin.reflect.jvm.internal.KTypeImpl$arguments$2;
import kotlin.reflect.jvm.internal.impl.builtins.StandardNames;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PropertyDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.BuiltInAnnotationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.KotlinRetention;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.DeclarationDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.SimpleFunctionDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ValueParameterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.components.ReflectKotlinClass;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaAnnotationArgument;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaArrayAnnotationArgument;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaEnumValueAnnotationArgument;
import kotlin.reflect.jvm.internal.impl.load.java.Jsr305Settings;
import kotlin.reflect.jvm.internal.impl.load.java.ReportLevel;
import kotlin.reflect.jvm.internal.impl.load.java.components.JavaAnnotationMapper;
import kotlin.reflect.jvm.internal.impl.load.java.components.JavaAnnotationTargetMapper;
import kotlin.reflect.jvm.internal.impl.load.java.components.JavaRetentionAnnotationDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.components.JavaTargetAnnotationDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.JvmPackageScope;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaClassDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaPackageFragment;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaPackageScope;
import kotlin.reflect.jvm.internal.impl.load.kotlin.DeserializedDescriptorResolver;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Class;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Function;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.NameResolver;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererImpl;
import kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererOptionsImpl;
import kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererOptionsImpl$property$$inlined$vetoable$1;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorFactory;
import kotlin.reflect.jvm.internal.impl.resolve.OverridingUtil;
import kotlin.reflect.jvm.internal.impl.resolve.constants.ArrayValue;
import kotlin.reflect.jvm.internal.impl.resolve.constants.EnumValue;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.GivenFunctionsMemberScope;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.SubstitutingScope;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.AnnotationAndConstantLoader;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.ClassDeserializer;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.builtins.BuiltInsPackageFragmentImpl;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedClassDescriptor;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedPackageMemberScope;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedTypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.types.AbstractTypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeKt;
import kotlin.reflect.jvm.internal.impl.types.LazyWrappedType;
import kotlin.reflect.jvm.internal.impl.types.StarProjectionImpl;
import kotlin.reflect.jvm.internal.impl.types.TypeProjectionBase;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;
import kotlin.reflect.jvm.internal.impl.types.checker.NewCapturedTypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorTypeKind;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorUtils;
import kotlin.reflect.jvm.internal.impl.types.model.KotlinTypeMarker;
import kotlin.reflect.jvm.internal.impl.utils.DFS;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.uuid.UuidKt;
import okhttp3.FormBody;
import okio.internal.DefaultSocket;
import org.jsoup.select.NodeTraversor;
import org.wikipedia.activitytab.ActivityTabFragment;
import org.wikipedia.categories.CategoryDialog;
import org.wikipedia.commons.FilePageFragment;
import org.wikipedia.commons.ImagePreviewDialog;
import org.wikipedia.databinding.ActivityGalleryBinding;
import org.wikipedia.databinding.ActivityPageBinding;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class AndroidLeakFixes$Companion$onDecorViewReady$1 extends Lambda implements Function0 {
    public final /* synthetic */ Object $callback;
    public final /* synthetic */ int $r8$classId;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ AndroidLeakFixes$Companion$onDecorViewReady$1(int i, Object obj) {
        super(0);
        this.$r8$classId = i;
        this.$callback = obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v22, types: [kotlin.collections.EmptyList] */
    /* JADX WARN: Type inference failed for: r4v23 */
    /* JADX WARN: Type inference failed for: r4v24, types: [java.util.ArrayList] */
    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        KotlinRetention kotlinRetention;
        ArrayValue arrayValue;
        Collection collection;
        int i = this.$r8$classId;
        EmptyMap emptyMap = EmptyMap.INSTANCE;
        Map map = null;
        Object obj = this.$callback;
        switch (i) {
            case 0:
                ((KTypeImpl$arguments$2) obj).invoke();
                return Boolean.FALSE;
            case 1:
                BuiltInAnnotationDescriptor builtInAnnotationDescriptor = (BuiltInAnnotationDescriptor) obj;
                return builtInAnnotationDescriptor.builtIns.getBuiltInClassByFqName(builtInAnnotationDescriptor.fqName).getDefaultType();
            case 2:
                return (List) ((ValueParameterDescriptorImpl.WithDestructuringDeclaration) obj).destructuringVariables$delegate.getValue();
            case 3:
                Jsr305Settings jsr305Settings = (Jsr305Settings) obj;
                ListBuilder createListBuilder = Room.createListBuilder();
                createListBuilder.add(jsr305Settings.globalLevel.getDescription());
                ReportLevel reportLevel = jsr305Settings.migrationLevel;
                if (reportLevel != null) {
                    createListBuilder.add("under-migration:" + reportLevel.getDescription());
                }
                for (Map.Entry entry : jsr305Settings.userDefinedLevelForSpecificAnnotation.entrySet()) {
                    createListBuilder.add("@" + entry.getKey() + ':' + ((ReportLevel) entry.getValue()).getDescription());
                }
                return (String[]) Room.build(createListBuilder).toArray(new String[0]);
            case 4:
                Map map2 = JavaAnnotationTargetMapper.targetNameLists;
                ReflectJavaAnnotationArgument reflectJavaAnnotationArgument = ((JavaRetentionAnnotationDescriptor) obj).firstArgument;
                ReflectJavaEnumValueAnnotationArgument reflectJavaEnumValueAnnotationArgument = reflectJavaAnnotationArgument instanceof ReflectJavaEnumValueAnnotationArgument ? (ReflectJavaEnumValueAnnotationArgument) reflectJavaAnnotationArgument : null;
                EnumValue enumValue = (reflectJavaEnumValueAnnotationArgument == null || (kotlinRetention = (KotlinRetention) JavaAnnotationTargetMapper.retentionNameList.get(Name.identifier(reflectJavaEnumValueAnnotationArgument.value.name()).asString())) == null) ? null : new EnumValue(ClassId.topLevel(StandardNames.FqNames.annotationRetention), Name.identifier(kotlinRetention.name()));
                if (enumValue != null) {
                    map = Collections.singletonMap(JavaAnnotationMapper.RETENTION_ANNOTATION_VALUE, enumValue);
                    map.getClass();
                }
                return map == null ? emptyMap : map;
            case 5:
                ReflectJavaAnnotationArgument reflectJavaAnnotationArgument2 = ((JavaTargetAnnotationDescriptor) obj).firstArgument;
                if (reflectJavaAnnotationArgument2 instanceof ReflectJavaArrayAnnotationArgument) {
                    Map map3 = JavaAnnotationTargetMapper.targetNameLists;
                    arrayValue = JavaAnnotationTargetMapper.mapJavaTargetArguments$descriptors_jvm(((ReflectJavaArrayAnnotationArgument) reflectJavaAnnotationArgument2).getElements());
                } else if (reflectJavaAnnotationArgument2 instanceof ReflectJavaEnumValueAnnotationArgument) {
                    Map map4 = JavaAnnotationTargetMapper.targetNameLists;
                    arrayValue = JavaAnnotationTargetMapper.mapJavaTargetArguments$descriptors_jvm(Room.listOf(reflectJavaAnnotationArgument2));
                } else {
                    arrayValue = null;
                }
                if (arrayValue != null) {
                    map = Collections.singletonMap(JavaAnnotationMapper.TARGET_ANNOTATION_ALLOWED_TARGETS, arrayValue);
                    map.getClass();
                }
                return map == null ? emptyMap : map;
            case 6:
                JvmPackageScope jvmPackageScope = (JvmPackageScope) obj;
                LazyJavaPackageFragment lazyJavaPackageFragment = jvmPackageScope.packageFragment;
                Collection values = ((Map) DpKt.getValue(lazyJavaPackageFragment.binaryClasses$delegate, LazyJavaPackageFragment.$$delegatedProperties[0])).values();
                ArrayList arrayList = new ArrayList();
                Iterator it = values.iterator();
                while (it.hasNext()) {
                    DeserializedPackageMemberScope createKotlinPackagePartScope = ((DeserializedDescriptorResolver) ((ActivityPageBinding) jvmPackageScope.c.url).pageFragment).createKotlinPackagePartScope(lazyJavaPackageFragment, (ReflectKotlinClass) it.next());
                    if (createKotlinPackagePartScope != null) {
                        arrayList.add(createKotlinPackagePartScope);
                    }
                }
                return (MemberScope[]) TuplesKt.listOfNonEmptyScopes(arrayList).toArray(new MemberScope[0]);
            case 7:
                ((LazyJavaPackageScope) obj).ownerDescriptor.fqName.getClass();
                return null;
            case 8:
                DescriptorRendererOptionsImpl descriptorRendererOptionsImpl = ((DescriptorRendererImpl) obj).options;
                DescriptorRendererOptionsImpl descriptorRendererOptionsImpl2 = new DescriptorRendererOptionsImpl();
                Field[] declaredFields = DescriptorRendererOptionsImpl.class.getDeclaredFields();
                declaredFields.getClass();
                for (Field field : declaredFields) {
                    if ((field.getModifiers() & 8) == 0) {
                        field.setAccessible(true);
                        Object obj2 = field.get(descriptorRendererOptionsImpl);
                        DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 descriptorRendererOptionsImpl$property$$inlined$vetoable$1 = obj2 instanceof DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 ? (DescriptorRendererOptionsImpl$property$$inlined$vetoable$1) obj2 : null;
                        if (descriptorRendererOptionsImpl$property$$inlined$vetoable$1 != null) {
                            String name = field.getName();
                            name.getClass();
                            StringsKt__StringsJVMKt.startsWith(name, "is", false);
                            KClass orCreateKotlinClass = Reflection.factory.getOrCreateKotlinClass(DescriptorRendererOptionsImpl.class);
                            field.getName();
                            String name2 = field.getName();
                            name2.getClass();
                            if (name2.length() > 0) {
                                name2 = Character.toUpperCase(name2.charAt(0)) + name2.substring(1);
                            }
                            "get".concat(name2);
                            ((ClassBasedDeclarationContainer) orCreateKotlinClass).getJClass();
                            field.set(descriptorRendererOptionsImpl2, new DescriptorRendererOptionsImpl$property$$inlined$vetoable$1(descriptorRendererOptionsImpl$property$$inlined$vetoable$1.value, descriptorRendererOptionsImpl2));
                        }
                    }
                }
                descriptorRendererOptionsImpl2.setExcludedTypeAnnotationClasses(UuidKt.plus(descriptorRendererOptionsImpl2.getExcludedTypeAnnotationClasses(), (Iterable) Room.listOf((Object[]) new FqName[]{StandardNames.FqNames.extensionFunctionType, StandardNames.FqNames.contextFunctionTypeParams})));
                descriptorRendererOptionsImpl2.isLocked = true;
                return new DescriptorRendererImpl(descriptorRendererOptionsImpl2);
            case 9:
                KotlinType type = ((TypeProjectionBase) obj).getType();
                type.getClass();
                return type;
            case 10:
                final GivenFunctionsMemberScope givenFunctionsMemberScope = (GivenFunctionsMemberScope) obj;
                List computeDeclaredFunctions = givenFunctionsMemberScope.computeDeclaredFunctions();
                final ArrayList arrayList2 = new ArrayList(3);
                AbstractClassDescriptor abstractClassDescriptor = givenFunctionsMemberScope.containingClass;
                Collection supertypes = abstractClassDescriptor.getTypeConstructor().getSupertypes();
                supertypes.getClass();
                ArrayList arrayList3 = new ArrayList();
                Iterator it2 = supertypes.iterator();
                while (it2.hasNext()) {
                    CollectionsKt.addAll(arrayList3, UtilsKt.getContributedDescriptors$default(((KotlinType) it2.next()).getMemberScope(), null, 3));
                }
                ArrayList arrayList4 = new ArrayList();
                Iterator it3 = arrayList3.iterator();
                while (it3.hasNext()) {
                    Object next = it3.next();
                    if (next instanceof CallableMemberDescriptor) {
                        arrayList4.add(next);
                    }
                }
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                Iterator it4 = arrayList4.iterator();
                while (it4.hasNext()) {
                    Object next2 = it4.next();
                    Name name3 = ((CallableMemberDescriptor) next2).getName();
                    Object obj3 = linkedHashMap.get(name3);
                    if (obj3 == null) {
                        obj3 = new ArrayList();
                        linkedHashMap.put(name3, obj3);
                    }
                    ((List) obj3).add(next2);
                }
                for (Map.Entry entry2 : linkedHashMap.entrySet()) {
                    Name name4 = (Name) entry2.getKey();
                    List list = (List) entry2.getValue();
                    LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                    for (Object obj4 : list) {
                        Boolean valueOf = Boolean.valueOf(((CallableMemberDescriptor) obj4) instanceof FunctionDescriptor);
                        Object obj5 = linkedHashMap2.get(valueOf);
                        if (obj5 == null) {
                            obj5 = new ArrayList();
                            linkedHashMap2.put(valueOf, obj5);
                        }
                        ((List) obj5).add(obj4);
                    }
                    for (Map.Entry entry3 : linkedHashMap2.entrySet()) {
                        boolean booleanValue = ((Boolean) entry3.getKey()).booleanValue();
                        List list2 = (List) entry3.getValue();
                        OverridingUtil overridingUtil = OverridingUtil.DEFAULT;
                        if (booleanValue) {
                            collection = new ArrayList();
                            for (Object obj6 : computeDeclaredFunctions) {
                                if (Intrinsics.areEqual(((DeclarationDescriptorImpl) ((FunctionDescriptor) obj6)).getName(), name4)) {
                                    collection.add(obj6);
                                }
                            }
                        } else {
                            collection = EmptyList.INSTANCE;
                        }
                        overridingUtil.generateOverridesInFunctionGroup(name4, list2, collection, abstractClassDescriptor, new DescriptorFactory() { // from class: kotlin.reflect.jvm.internal.impl.resolve.scopes.GivenFunctionsMemberScope$createFakeOverrides$4
                            @Override // kotlin.reflect.jvm.internal.impl.resolve.DescriptorFactory
                            public final void addFakeOverride(CallableMemberDescriptor callableMemberDescriptor) {
                                callableMemberDescriptor.getClass();
                                OverridingUtil.resolveUnknownVisibilityForMember(callableMemberDescriptor, null);
                                arrayList2.add(callableMemberDescriptor);
                            }

                            @Override // kotlin.reflect.jvm.internal.impl.resolve.DescriptorFactory
                            public final void conflict(CallableMemberDescriptor callableMemberDescriptor, CallableMemberDescriptor callableMemberDescriptor2) {
                                throw new IllegalStateException(("Conflict in scope of " + givenFunctionsMemberScope.containingClass + ": " + callableMemberDescriptor + " vs " + callableMemberDescriptor2).toString());
                            }
                        });
                    }
                }
                return CollectionsKt.plus((Collection) computeDeclaredFunctions, (Iterable) DFS.compact(arrayList2));
            case 11:
                SubstitutingScope substitutingScope = (SubstitutingScope) obj;
                return substitutingScope.substitute(UtilsKt.getContributedDescriptors$default(substitutingScope.workerScope, null, 3));
            case 12:
                return new TypeSubstitutor(((TypeSubstitutor) obj).substitution);
            case IMAGE_VALUE:
                Set keySet = ((LinkedHashMap) ((BuiltInsPackageFragmentImpl) obj).classDataFinder.sink).keySet();
                ArrayList arrayList5 = new ArrayList();
                for (Object obj7 : keySet) {
                    ClassId classId = (ClassId) obj7;
                    if (classId.relativeClassName.parent().isRoot() && !ClassDeserializer.BLACK_LIST.contains(classId)) {
                        arrayList5.add(obj7);
                    }
                }
                ArrayList arrayList6 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(arrayList5, 10));
                Iterator it5 = arrayList5.iterator();
                while (it5.hasNext()) {
                    arrayList6.add(((ClassId) it5.next()).getShortClassName());
                }
                return arrayList6;
            case LINEAR_PROGRESS_INDICATOR_VALUE:
                HashSet hashSet = new HashSet();
                DeserializedClassDescriptor deserializedClassDescriptor = (DeserializedClassDescriptor) ((DefaultSocket) obj).sink;
                LazyJavaClassDescriptor.LazyJavaClassTypeConstructor lazyJavaClassTypeConstructor = deserializedClassDescriptor.typeConstructor;
                HCaptcha hCaptcha = deserializedClassDescriptor.c;
                ProtoBuf$Class protoBuf$Class = deserializedClassDescriptor.classProto;
                Iterator it6 = lazyJavaClassTypeConstructor.getSupertypes().iterator();
                while (it6.hasNext()) {
                    for (DeclarationDescriptor declarationDescriptor : UtilsKt.getContributedDescriptors$default(((KotlinType) it6.next()).getMemberScope(), null, 3)) {
                        if ((declarationDescriptor instanceof SimpleFunctionDescriptorImpl) || (declarationDescriptor instanceof PropertyDescriptor)) {
                            hashSet.add(declarationDescriptor.getName());
                        }
                    }
                }
                List list3 = protoBuf$Class.function_;
                list3.getClass();
                Iterator it7 = list3.iterator();
                while (it7.hasNext()) {
                    hashSet.add(Room.getName((NameResolver) hCaptcha.hCaptchaException, ((ProtoBuf$Function) it7.next()).name_));
                }
                List list4 = protoBuf$Class.property_;
                list4.getClass();
                Iterator it8 = list4.iterator();
                while (it8.hasNext()) {
                    hashSet.add(Room.getName((NameResolver) hCaptcha.hCaptchaException, ((ProtoBuf$Property) it8.next()).name_));
                }
                return UuidKt.plus((Set) hashSet, (Iterable) hashSet);
            case 15:
                DeserializedMemberScope deserializedMemberScope = (DeserializedMemberScope) obj;
                Set nonDeclaredClassifierNames = deserializedMemberScope.getNonDeclaredClassifierNames();
                if (nonDeclaredClassifierNames == null) {
                    return null;
                }
                return UuidKt.plus((Set) UuidKt.plus(deserializedMemberScope.getClassNames$deserialization(), (Iterable) deserializedMemberScope.impl.typeAliasBytes.keySet()), (Iterable) nonDeclaredClassifierNames);
            case LAZY_VERTICAL_GRID_VALUE:
                DeserializedTypeParameterDescriptor deserializedTypeParameterDescriptor = (DeserializedTypeParameterDescriptor) obj;
                HCaptcha hCaptcha2 = deserializedTypeParameterDescriptor.c;
                return CollectionsKt.toList(((AnnotationAndConstantLoader) ((ActivityGalleryBinding) hCaptcha2.result).transitionReceiver).loadTypeParameterAnnotations(deserializedTypeParameterDescriptor.proto, (NameResolver) hCaptcha2.hCaptchaException));
            case VERTICAL_GRID_ITEM_VALUE:
                return new AbstractTypeConstructor.Supertypes(((AbstractTypeConstructor) obj).computeSupertypes());
            case RADIO_GROUP_VALUE:
                KotlinTypeMarker kotlinTypeMarker = (KotlinTypeMarker) ((LazyWrappedType) obj).computation.invoke();
                kotlinTypeMarker.getClass();
                return (KotlinType) kotlinTypeMarker;
            case RADIO_BUTTON_VALUE:
                return KotlinTypeKt.starProjectionType((TypeParameterDescriptor) ((StarProjectionImpl) obj).typeParameter);
            case RADIO_ROW_VALUE:
                return ErrorUtils.createErrorType(ErrorTypeKind.CANNOT_COMPUTE_ERASED_BOUND, ((FormBody.Builder) obj).toString());
            case RADIO_COLUMN_VALUE:
                Function0 function0 = ((NewCapturedTypeConstructor) obj).supertypesComputation;
                if (function0 != null) {
                    return (List) function0.invoke();
                }
                return null;
            case SIZE_BOX_VALUE:
                NodeTraversor.uncheckedClearStaticPool((Application) ((ViewLocationHolderLeakFix$applyFix$2) obj).$application);
                return Unit.INSTANCE;
            case 23:
                return (ActivityTabFragment) obj;
            case 24:
                return (ViewModelStoreOwner) ((AndroidLeakFixes$Companion$onDecorViewReady$1) obj).invoke();
            case 25:
                return (CategoryDialog) obj;
            case 26:
                return (ViewModelStoreOwner) ((AndroidLeakFixes$Companion$onDecorViewReady$1) obj).invoke();
            case 27:
                return (FilePageFragment) obj;
            case 28:
                return (ViewModelStoreOwner) ((AndroidLeakFixes$Companion$onDecorViewReady$1) obj).invoke();
            default:
                return (ImagePreviewDialog) obj;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ AndroidLeakFixes$Companion$onDecorViewReady$1(int i, Object obj, Object obj2) {
        super(0);
        this.$r8$classId = i;
        this.$callback = obj2;
    }
}
