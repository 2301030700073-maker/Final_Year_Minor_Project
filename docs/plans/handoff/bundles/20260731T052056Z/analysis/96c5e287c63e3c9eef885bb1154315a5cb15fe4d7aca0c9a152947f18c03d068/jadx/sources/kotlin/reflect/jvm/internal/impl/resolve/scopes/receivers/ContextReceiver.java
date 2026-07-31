package kotlin.reflect.jvm.internal.impl.resolve.scopes.receivers;

import kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import org.wikipedia.settings.BasePreferenceLoader;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ContextReceiver extends BasePreferenceLoader implements ReceiverValue {
    public final /* synthetic */ int $r8$classId = 0;
    public final Name customLabelName;
    public final Object declarationDescriptor;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ContextReceiver(CallableDescriptor callableDescriptor, KotlinType kotlinType, Name name) {
        super(kotlinType);
        kotlinType.getClass();
        this.declarationDescriptor = callableDescriptor;
        this.customLabelName = name;
    }

    public final Name getCustomLabelName() {
        switch (this.$r8$classId) {
        }
        return this.customLabelName;
    }

    @Override // org.wikipedia.settings.BasePreferenceLoader
    public final String toString() {
        int i = this.$r8$classId;
        Object obj = this.declarationDescriptor;
        switch (i) {
            case 0:
                return "Cxt { " + ((CallableDescriptor) obj) + " }";
            default:
                return getType() + ": Ctx { " + ((ModuleAwareClassDescriptor) obj) + " }";
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ContextReceiver(ModuleAwareClassDescriptor moduleAwareClassDescriptor, KotlinType kotlinType, Name name) {
        super(kotlinType);
        kotlinType.getClass();
        this.declarationDescriptor = moduleAwareClassDescriptor;
        this.customLabelName = name;
    }
}
