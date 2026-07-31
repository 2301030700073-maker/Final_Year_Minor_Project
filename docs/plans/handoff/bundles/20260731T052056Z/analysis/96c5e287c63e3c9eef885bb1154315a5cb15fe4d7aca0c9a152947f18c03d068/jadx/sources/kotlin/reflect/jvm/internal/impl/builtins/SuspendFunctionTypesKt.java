package kotlin.reflect.jvm.internal.impl.builtins;

import androidx.room.Room;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassKind;
import kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibilities;
import kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ClassConstructorDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.EmptyPackageFragmentDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.MutableClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.TypeParameterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager;
import kotlin.reflect.jvm.internal.impl.types.ClassTypeConstructorImpl;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorUtils;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class SuspendFunctionTypesKt {
    public static final MutableClassDescriptor FAKE_CONTINUATION_CLASS_DESCRIPTOR;

    static {
        ErrorUtils errorUtils = ErrorUtils.INSTANCE;
        EmptyPackageFragmentDescriptor emptyPackageFragmentDescriptor = new EmptyPackageFragmentDescriptor(ErrorUtils.errorModule, StandardNames.COROUTINES_PACKAGE_FQ_NAME, 0);
        ClassKind classKind = ClassKind.INTERFACE;
        Name shortName = StandardNames.CONTINUATION_INTERFACE_FQ_NAME.shortName();
        LockBasedStorageManager.AnonymousClass1 anonymousClass1 = LockBasedStorageManager.NO_LOCKS;
        MutableClassDescriptor mutableClassDescriptor = new MutableClassDescriptor(emptyPackageFragmentDescriptor, classKind, shortName, anonymousClass1);
        Modality modality = Modality.ABSTRACT;
        if (modality == null) {
            MutableClassDescriptor.$$$reportNull$$$0(6);
            throw null;
        }
        mutableClassDescriptor.modality = modality;
        DescriptorVisibilities.AnonymousClass1 anonymousClass12 = DescriptorVisibilities.PUBLIC;
        if (anonymousClass12 == null) {
            MutableClassDescriptor.$$$reportNull$$$0(9);
            throw null;
        }
        mutableClassDescriptor.visibility = anonymousClass12;
        List listOf = Room.listOf(TypeParameterDescriptorImpl.createWithDefaultBound(mutableClassDescriptor, Variance.IN_VARIANCE, Name.identifier("T"), 0, anonymousClass1));
        if (mutableClassDescriptor.typeParameters != null) {
            Gson$$ExternalSyntheticBUOutline0.m$3("Type parameters are already set for ", mutableClassDescriptor.getName());
            return;
        }
        ArrayList arrayList = new ArrayList(listOf);
        mutableClassDescriptor.typeParameters = arrayList;
        mutableClassDescriptor.typeConstructor = new ClassTypeConstructorImpl(mutableClassDescriptor, arrayList, mutableClassDescriptor.supertypes, mutableClassDescriptor.storageManager);
        Set set = Collections.EMPTY_SET;
        if (set == null) {
            MutableClassDescriptor.$$$reportNull$$$0(13);
            throw null;
        }
        Iterator it = set.iterator();
        while (it.hasNext()) {
            ((ClassConstructorDescriptorImpl) ((FunctionDescriptor) it.next())).unsubstitutedReturnType = mutableClassDescriptor.getDefaultType();
        }
        FAKE_CONTINUATION_CLASS_DESCRIPTOR = mutableClassDescriptor;
    }
}
