package kotlin.reflect.jvm.internal.impl.load.java.lazy.types;

import androidx.room.Room;
import androidx.work.OperationKt;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor;
import kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererImpl;
import kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererImpl$renderConstant$1;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.types.FlexibleType;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.TypeAttributes;
import kotlin.reflect.jvm.internal.impl.types.TypeProjectionBase;
import kotlin.reflect.jvm.internal.impl.types.UnwrappedType;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeChecker;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner$Default;
import kotlin.text.StringsKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class RawTypeImpl extends FlexibleType {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RawTypeImpl(SimpleType simpleType, SimpleType simpleType2) {
        super(simpleType, simpleType2);
        simpleType.getClass();
        simpleType2.getClass();
        KotlinTypeChecker.DEFAULT.isSubtypeOf(simpleType, simpleType2);
    }

    public static final ArrayList render$renderArguments(DescriptorRendererImpl descriptorRendererImpl, KotlinType kotlinType) {
        List<TypeProjectionBase> arguments = kotlinType.getArguments();
        ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(arguments, 10));
        for (TypeProjectionBase typeProjectionBase : arguments) {
            typeProjectionBase.getClass();
            StringBuilder sb = new StringBuilder();
            CollectionsKt.joinTo$default(Room.listOf(typeProjectionBase), sb, ", ", null, null, new DescriptorRendererImpl$renderConstant$1(descriptorRendererImpl, 1), 60);
            arrayList.add(sb.toString());
        }
        return arrayList;
    }

    public static final String render$replaceArgs(String str, String str2) {
        if (!StringsKt.contains$default(str, '<')) {
            return str;
        }
        return StringsKt.substringBefore$default(str, '<') + '<' + str2 + '>' + StringsKt.substringAfterLast('>', str, str);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.FlexibleType
    public final SimpleType getDelegate() {
        return this.lowerBound;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.FlexibleType, kotlin.reflect.jvm.internal.impl.types.KotlinType
    public final MemberScope getMemberScope() {
        ClassifierDescriptor declarationDescriptor = getConstructor().getDeclarationDescriptor();
        ModuleAwareClassDescriptor moduleAwareClassDescriptor = declarationDescriptor instanceof ModuleAwareClassDescriptor ? (ModuleAwareClassDescriptor) declarationDescriptor : null;
        if (moduleAwareClassDescriptor == null) {
            ContextsKt$$ExternalSyntheticBUOutline0.m("Incorrect classifier: ", getConstructor().getDeclarationDescriptor());
            return null;
        }
        MemberScope memberScope = moduleAwareClassDescriptor.getMemberScope(new RawSubstitution());
        memberScope.getClass();
        return memberScope;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.UnwrappedType
    public final UnwrappedType makeNullableAsSpecified(boolean z) {
        return new RawTypeImpl(this.lowerBound.makeNullableAsSpecified(z), this.upperBound.makeNullableAsSpecified(z));
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.KotlinType
    public final KotlinType refine(KotlinTypeRefiner$Default kotlinTypeRefiner$Default) {
        SimpleType simpleType = this.lowerBound;
        simpleType.getClass();
        SimpleType simpleType2 = this.upperBound;
        simpleType2.getClass();
        return new RawTypeImpl(simpleType, simpleType2);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.FlexibleType
    public final String render(DescriptorRendererImpl descriptorRendererImpl, DescriptorRendererImpl descriptorRendererImpl2) {
        SimpleType simpleType = this.lowerBound;
        String renderType = descriptorRendererImpl.renderType(simpleType);
        SimpleType simpleType2 = this.upperBound;
        String renderType2 = descriptorRendererImpl.renderType(simpleType2);
        if (descriptorRendererImpl2.options.getDebugMode()) {
            return "raw (" + renderType + ".." + renderType2 + ')';
        }
        if (simpleType2.getArguments().isEmpty()) {
            return descriptorRendererImpl.renderFlexibleType(renderType, renderType2, OperationKt.getBuiltIns(this));
        }
        ArrayList render$renderArguments = render$renderArguments(descriptorRendererImpl, simpleType);
        ArrayList render$renderArguments2 = render$renderArguments(descriptorRendererImpl, simpleType2);
        String joinToString$default = CollectionsKt.joinToString$default(render$renderArguments, ", ", null, null, RawTypeImpl$render$newArgs$1.INSTANCE, 30);
        ArrayList zip = CollectionsKt.zip(render$renderArguments, render$renderArguments2);
        if (!zip.isEmpty()) {
            Iterator it = zip.iterator();
            while (it.hasNext()) {
                Pair pair = (Pair) it.next();
                String str = (String) pair.first;
                String str2 = (String) pair.second;
                if (!Intrinsics.areEqual(str, StringsKt.removePrefix("out ", str2)) && !str2.equals("*")) {
                    break;
                }
            }
        }
        renderType2 = render$replaceArgs(renderType2, joinToString$default);
        String render$replaceArgs = render$replaceArgs(renderType, joinToString$default);
        return render$replaceArgs.equals(renderType2) ? render$replaceArgs : descriptorRendererImpl.renderFlexibleType(render$replaceArgs, renderType2, OperationKt.getBuiltIns(this));
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.UnwrappedType
    public final UnwrappedType replaceAttributes(TypeAttributes typeAttributes) {
        typeAttributes.getClass();
        return new RawTypeImpl(this.lowerBound.replaceAttributes(typeAttributes), this.upperBound.replaceAttributes(typeAttributes));
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.UnwrappedType, kotlin.reflect.jvm.internal.impl.types.KotlinType
    public final UnwrappedType refine(KotlinTypeRefiner$Default kotlinTypeRefiner$Default) {
        SimpleType simpleType = this.lowerBound;
        simpleType.getClass();
        SimpleType simpleType2 = this.upperBound;
        simpleType2.getClass();
        return new RawTypeImpl(simpleType, simpleType2);
    }
}
