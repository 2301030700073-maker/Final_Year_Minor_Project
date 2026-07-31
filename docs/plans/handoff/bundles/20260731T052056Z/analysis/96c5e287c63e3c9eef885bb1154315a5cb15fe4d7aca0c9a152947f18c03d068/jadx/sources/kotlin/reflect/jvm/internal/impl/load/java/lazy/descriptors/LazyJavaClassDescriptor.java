package kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors;

import androidx.appcompat.view.ActionMode;
import androidx.compose.ui.unit.DpKt;
import androidx.work.OperationKt;
import coil3.ImageLoader$Builder;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.SynchronizedLazyImpl;
import kotlin.UnsignedKt;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassKind;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibilities;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.ScopesHolderForClass;
import kotlin.reflect.jvm.internal.impl.descriptors.SourceFile$1;
import kotlin.reflect.jvm.internal.impl.descriptors.ValueClassRepresentation;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ClassConstructorDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ClassDescriptorBase;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaClass;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaClassifierType;
import kotlin.reflect.jvm.internal.impl.load.java.JavaDescriptorVisibilities;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.LazyJavaAnnotations;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.types.JavaTypeAttributes;
import kotlin.reflect.jvm.internal.impl.name.FqNameUnsafe;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorUtils;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.InnerClassesScopeWrapper;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedClassDescriptor;
import kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager;
import kotlin.reflect.jvm.internal.impl.types.AbstractClassTypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.TypeUsage;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner$Default;
import kotlin.text.UStringsKt;
import okhttp3.MultipartBody;
import okhttp3.Request;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LazyJavaClassDescriptor extends ClassDescriptorBase {
    public final ModuleAwareClassDescriptor additionalSupertypeClassDescriptor;
    public final LazyJavaAnnotations annotations;
    public final Request.Builder c;
    public final LockBasedStorageManager.LockBasedNotNullLazyValue declaredParameters;
    public final InnerClassesScopeWrapper innerClassesScope;
    public final boolean isInner;
    public final ReflectJavaClass jClass;
    public final ClassKind kind;
    public final Modality modality;
    public final SynchronizedLazyImpl moduleAnnotations$delegate;
    public final Request.Builder outerContext;
    public final ScopesHolderForClass scopeHolder;
    public final LazyJavaStaticClassScope staticScope;
    public final LazyJavaClassTypeConstructor typeConstructor;
    public final LazyJavaClassMemberScope unsubstitutedMemberScope;
    public final ActionMode visibility;

    static {
        ArraysKt___ArraysKt.toSet(new String[]{"equals", "hashCode", "getClass", "wait", "notify", "notifyAll", "toString"});
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public LazyJavaClassDescriptor(okhttp3.Request.Builder r9, kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor r10, kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaClass r11, kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor r12) {
        /*
            Method dump skipped, instructions count: 328
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaClassDescriptor.<init>(okhttp3.Request$Builder, kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaClass, kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor):void");
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotated
    public final Annotations getAnnotations() {
        return this.annotations;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor
    public final Collection getConstructors() {
        return (List) this.unsubstitutedMemberScope.constructors.invoke();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptorWithTypeParameters
    public final List getDeclaredTypeParameters() {
        return (List) this.declaredParameters.invoke();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor
    public final ClassKind getKind() {
        return this.kind;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.MemberDescriptor
    public final Modality getModality() {
        return this.modality;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [java.util.Collection, kotlin.collections.EmptyList] */
    /* JADX WARN: Type inference failed for: r2v1, types: [java.lang.Iterable] */
    /* JADX WARN: Type inference failed for: r2v3, types: [java.util.ArrayList] */
    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor
    public final Collection getSealedSubclasses() {
        Class[] clsArr;
        Modality modality = this.modality;
        Modality modality2 = Modality.SEALED;
        ?? r2 = EmptyList.INSTANCE;
        if (modality != modality2) {
            return r2;
        }
        Object obj = null;
        JavaTypeAttributes attributes$default = OperationKt.toAttributes$default(TypeUsage.COMMON, false, null, 7);
        Class cls = this.jClass.klass;
        ImageLoader$Builder imageLoader$Builder = UStringsKt._cache;
        if (imageLoader$Builder == null) {
            try {
                imageLoader$Builder = new ImageLoader$Builder(Class.class.getMethod("isSealed", null), Class.class.getMethod("getPermittedSubclasses", null), Class.class.getMethod("isRecord", null), Class.class.getMethod("getRecordComponents", null), 27);
            } catch (NoSuchMethodException unused) {
                imageLoader$Builder = new ImageLoader$Builder(obj, obj, obj, obj, 27);
            }
            UStringsKt._cache = imageLoader$Builder;
        }
        Method method = (Method) imageLoader$Builder.defaults;
        if (method == null) {
            clsArr = null;
        } else {
            Object invoke = method.invoke(cls, null);
            invoke.getClass();
            clsArr = (Class[]) invoke;
        }
        if (clsArr != null) {
            r2 = new ArrayList(clsArr.length);
            for (Class cls2 : clsArr) {
                r2.add(new ReflectJavaClassifierType(cls2));
            }
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = r2.iterator();
        while (it.hasNext()) {
            ClassifierDescriptor declarationDescriptor = ((MultipartBody.Builder) this.c.tags).transformJavaType((ReflectJavaClassifierType) it.next(), attributes$default).getConstructor().getDeclarationDescriptor();
            ModuleAwareClassDescriptor moduleAwareClassDescriptor = declarationDescriptor instanceof ModuleAwareClassDescriptor ? (ModuleAwareClassDescriptor) declarationDescriptor : null;
            if (moduleAwareClassDescriptor != null) {
                arrayList.add(moduleAwareClassDescriptor);
            }
        }
        return CollectionsKt.sortedWith(arrayList, new LazyJavaClassDescriptor$getSealedSubclasses$$inlined$sortedBy$1());
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor
    public final MemberScope getStaticScope() {
        return this.staticScope;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor
    public final TypeConstructor getTypeConstructor() {
        return this.typeConstructor;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractClassDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor
    public final MemberScope getUnsubstitutedInnerClassesScope() {
        return this.innerClassesScope;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor
    public final MemberScope getUnsubstitutedMemberScope(KotlinTypeRefiner$Default kotlinTypeRefiner$Default) {
        ScopesHolderForClass scopesHolderForClass = this.scopeHolder;
        AbstractClassDescriptor abstractClassDescriptor = scopesHolderForClass.classDescriptor;
        int i = DescriptorUtilsKt.$r8$clinit;
        DescriptorUtils.getContainingModule(abstractClassDescriptor).getClass();
        return (LazyJavaClassMemberScope) ((MemberScope) DpKt.getValue(scopesHolderForClass.scopeForOwnerModule$delegate, ScopesHolderForClass.$$delegatedProperties[0]));
    }

    public final LazyJavaClassMemberScope getUnsubstitutedMemberScope$1() {
        return (LazyJavaClassMemberScope) super.getUnsubstitutedMemberScope();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor
    public final ClassConstructorDescriptorImpl getUnsubstitutedPrimaryConstructor() {
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor
    public final ValueClassRepresentation getValueClassRepresentation() {
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptorWithVisibility, kotlin.reflect.jvm.internal.impl.descriptors.MemberDescriptor
    public final DescriptorVisibilities.AnonymousClass1 getVisibility() {
        DescriptorVisibilities.AnonymousClass1 anonymousClass1 = DescriptorVisibilities.PRIVATE;
        ActionMode actionMode = this.visibility;
        if (Intrinsics.areEqual(actionMode, anonymousClass1)) {
            Class<?> declaringClass = this.jClass.klass.getDeclaringClass();
            if ((declaringClass != null ? new ReflectJavaClass(declaringClass) : null) == null) {
                DescriptorVisibilities.AnonymousClass1 anonymousClass12 = JavaDescriptorVisibilities.PACKAGE_VISIBILITY;
                anonymousClass12.getClass();
                return anonymousClass12;
            }
        }
        return UnsignedKt.toDescriptorVisibility(actionMode);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.MemberDescriptor
    public final boolean isActual() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor
    public final boolean isCompanionObject() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor
    public final boolean isData() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.MemberDescriptor
    public final boolean isExpect() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor
    public final boolean isFun() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor
    public final boolean isInline() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptorWithTypeParameters
    public final boolean isInner() {
        return this.isInner;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor
    public final boolean isValue() {
        return false;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Lazy Java class ");
        int i = DescriptorUtilsKt.$r8$clinit;
        FqNameUnsafe fqName = DescriptorUtils.getFqName(this);
        fqName.getClass();
        sb.append(fqName);
        return sb.toString();
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class LazyJavaClassTypeConstructor extends AbstractClassTypeConstructor {
        public final /* synthetic */ int $r8$classId = 0;
        public final LockBasedStorageManager.LockBasedNotNullLazyValue parameters;
        public final /* synthetic */ AbstractClassDescriptor this$0;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public LazyJavaClassTypeConstructor(kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedClassDescriptor r4) {
            /*
                r3 = this;
                r0 = 1
                r3.$r8$classId = r0
                r3.this$0 = r4
                com.hcaptcha.sdk.HCaptcha r1 = r4.c
                java.lang.Object r2 = r1.result
                org.wikipedia.databinding.ActivityGalleryBinding r2 = (org.wikipedia.databinding.ActivityGalleryBinding) r2
                java.lang.Object r2 = r2.captionEditButton
                kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager r2 = (kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager) r2
                r3.<init>(r2)
                java.lang.Object r1 = r1.result
                org.wikipedia.databinding.ActivityGalleryBinding r1 = (org.wikipedia.databinding.ActivityGalleryBinding) r1
                java.lang.Object r1 = r1.captionEditButton
                kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager r1 = (kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager) r1
                kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedClassDescriptor$annotations$1 r2 = new kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedClassDescriptor$annotations$1
                r2.<init>(r4, r0)
                r1.getClass()
                kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager$LockBasedNotNullLazyValue r4 = new kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager$LockBasedNotNullLazyValue
                r4.<init>(r1, r2)
                r3.parameters = r4
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaClassDescriptor.LazyJavaClassTypeConstructor.<init>(kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedClassDescriptor):void");
        }

        /* JADX WARN: Code restructure failed: missing block: B:61:0x0203, code lost:
        
            if (r5 == null) goto L95;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:102:0x0395  */
        /* JADX WARN: Removed duplicated region for block: B:108:0x034e  */
        /* JADX WARN: Removed duplicated region for block: B:66:0x02cf  */
        /* JADX WARN: Removed duplicated region for block: B:88:0x033a  */
        /* JADX WARN: Removed duplicated region for block: B:90:0x0351  */
        /* JADX WARN: Removed duplicated region for block: B:92:0x0356  */
        /* JADX WARN: Removed duplicated region for block: B:95:0x035f  */
        /* JADX WARN: Type inference failed for: r4v2, types: [java.util.ArrayList] */
        /* JADX WARN: Type inference failed for: r4v32 */
        /* JADX WARN: Type inference failed for: r4v4, types: [java.util.Collection] */
        /* JADX WARN: Type inference failed for: r6v25 */
        /* JADX WARN: Type inference failed for: r6v26, types: [java.lang.Iterable] */
        /* JADX WARN: Type inference failed for: r6v33, types: [java.util.ArrayList] */
        /* JADX WARN: Type inference failed for: r6v34 */
        /* JADX WARN: Type inference failed for: r6v35 */
        @Override // kotlin.reflect.jvm.internal.impl.types.AbstractTypeConstructor
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.util.Collection computeSupertypes() {
            /*
                Method dump skipped, instructions count: 954
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaClassDescriptor.LazyJavaClassTypeConstructor.computeSupertypes():java.util.Collection");
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.AbstractClassTypeConstructor, kotlin.reflect.jvm.internal.impl.types.TypeConstructor
        public final ClassifierDescriptor getDeclarationDescriptor() {
            int i = this.$r8$classId;
            AbstractClassDescriptor abstractClassDescriptor = this.this$0;
            switch (i) {
                case 0:
                    return (LazyJavaClassDescriptor) abstractClassDescriptor;
                default:
                    return (DeserializedClassDescriptor) abstractClassDescriptor;
            }
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
        public final List getParameters() {
            switch (this.$r8$classId) {
            }
            return (List) this.parameters.invoke();
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.AbstractTypeConstructor
        public final SourceFile$1 getSupertypeLoopChecker() {
            switch (this.$r8$classId) {
                case 0:
                    Object obj = ((LazyJavaClassDescriptor) this.this$0).c.url;
                    break;
            }
            return SourceFile$1.INSTANCE;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
        public final boolean isDenotable() {
            switch (this.$r8$classId) {
            }
            return true;
        }

        public final String toString() {
            int i = this.$r8$classId;
            AbstractClassDescriptor abstractClassDescriptor = this.this$0;
            switch (i) {
                case 0:
                    String asString = ((LazyJavaClassDescriptor) abstractClassDescriptor).getName().asString();
                    asString.getClass();
                    return asString;
                default:
                    String str = ((DeserializedClassDescriptor) abstractClassDescriptor).getName().name;
                    str.getClass();
                    return str;
            }
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.AbstractClassTypeConstructor, kotlin.reflect.jvm.internal.impl.types.TypeConstructor
        public final ModuleAwareClassDescriptor getDeclarationDescriptor() {
            int i = this.$r8$classId;
            AbstractClassDescriptor abstractClassDescriptor = this.this$0;
            switch (i) {
                case 0:
                    return (LazyJavaClassDescriptor) abstractClassDescriptor;
                default:
                    return (DeserializedClassDescriptor) abstractClassDescriptor;
            }
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public LazyJavaClassTypeConstructor(kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaClassDescriptor r4) {
            /*
                r3 = this;
                r0 = 0
                r3.$r8$classId = r0
                r3.this$0 = r4
                okhttp3.Request$Builder r0 = r4.c
                java.lang.Object r1 = r0.url
                org.wikipedia.databinding.ActivityPageBinding r1 = (org.wikipedia.databinding.ActivityPageBinding) r1
                java.lang.Object r1 = r1.rootView
                kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager r1 = (kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager) r1
                r3.<init>(r1)
                java.lang.Object r0 = r0.url
                org.wikipedia.databinding.ActivityPageBinding r0 = (org.wikipedia.databinding.ActivityPageBinding) r0
                java.lang.Object r0 = r0.rootView
                kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager r0 = (kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager) r0
                kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaClassDescriptor$moduleAnnotations$2 r1 = new kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaClassDescriptor$moduleAnnotations$2
                r2 = 1
                r1.<init>(r4, r2)
                kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager$LockBasedNotNullLazyValue r4 = new kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager$LockBasedNotNullLazyValue
                r4.<init>(r0, r1)
                r3.parameters = r4
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaClassDescriptor.LazyJavaClassTypeConstructor.<init>(kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaClassDescriptor):void");
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractClassDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor
    public final MemberScope getUnsubstitutedMemberScope() {
        return (LazyJavaClassMemberScope) super.getUnsubstitutedMemberScope();
    }
}
