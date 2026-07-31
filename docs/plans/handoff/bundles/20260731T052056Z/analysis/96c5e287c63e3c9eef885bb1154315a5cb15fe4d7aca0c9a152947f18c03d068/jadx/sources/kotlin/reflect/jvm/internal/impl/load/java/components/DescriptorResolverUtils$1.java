package kotlin.reflect.jvm.internal.impl.load.java.components;

import coil3.network.okhttp.internal.CallsKt$await$2$1;
import java.util.Collection;
import java.util.LinkedHashSet;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorFactory;
import kotlin.reflect.jvm.internal.impl.resolve.OverridingUtil;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.ErrorReporter;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class DescriptorResolverUtils$1 extends DescriptorFactory {
    public final /* synthetic */ ErrorReporter val$errorReporter;
    public final /* synthetic */ boolean val$isStaticContext;
    public final /* synthetic */ LinkedHashSet val$result;

    public static /* synthetic */ void $$$reportNull$$$0(int i) {
        Object[] objArr = new Object[3];
        if (i == 1) {
            objArr[0] = "fromSuper";
        } else if (i == 2) {
            objArr[0] = "fromCurrent";
        } else if (i == 3) {
            objArr[0] = "member";
        } else if (i != 4) {
            objArr[0] = "fakeOverride";
        } else {
            objArr[0] = "overridden";
        }
        objArr[1] = "kotlin/reflect/jvm/internal/impl/load/java/components/DescriptorResolverUtils$1";
        if (i == 1 || i == 2) {
            objArr[2] = "conflict";
        } else if (i == 3 || i == 4) {
            objArr[2] = "setOverriddenDescriptors";
        } else {
            objArr[2] = "addFakeOverride";
        }
        throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
    }

    public DescriptorResolverUtils$1(ErrorReporter errorReporter, LinkedHashSet linkedHashSet, boolean z) {
        this.val$errorReporter = errorReporter;
        this.val$result = linkedHashSet;
        this.val$isStaticContext = z;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.DescriptorFactory
    public final void addFakeOverride(CallableMemberDescriptor callableMemberDescriptor) {
        if (callableMemberDescriptor == null) {
            $$$reportNull$$$0(0);
            throw null;
        }
        OverridingUtil.resolveUnknownVisibilityForMember(callableMemberDescriptor, new CallsKt$await$2$1(7, this));
        this.val$result.add(callableMemberDescriptor);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.DescriptorFactory
    public final void setOverriddenDescriptors(CallableMemberDescriptor callableMemberDescriptor, Collection collection) {
        if (callableMemberDescriptor == null) {
            $$$reportNull$$$0(3);
            throw null;
        }
        if (!this.val$isStaticContext || callableMemberDescriptor.getKind() == CallableMemberDescriptor.Kind.FAKE_OVERRIDE) {
            callableMemberDescriptor.setOverriddenDescriptors(collection);
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.DescriptorFactory
    public final void conflict(CallableMemberDescriptor callableMemberDescriptor, CallableMemberDescriptor callableMemberDescriptor2) {
    }
}
