package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import androidx.compose.runtime.AbstractApplier;
import com.hcaptcha.sdk.HCaptcha;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property;
import kotlin.reflect.jvm.internal.impl.resolve.constants.ConstantValue;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedPropertyDescriptor;
import kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import org.wikipedia.databinding.ActivityGalleryBinding;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class MemberDeserializer$loadProperty$4 extends Lambda implements Function0 {
    public final /* synthetic */ DeserializedPropertyDescriptor $property;
    public final /* synthetic */ ProtoBuf$Property $proto;
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ MemberDeserializer this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ MemberDeserializer$loadProperty$4(MemberDeserializer memberDeserializer, ProtoBuf$Property protoBuf$Property, DeserializedPropertyDescriptor deserializedPropertyDescriptor, int i) {
        super(0);
        this.$r8$classId = i;
        this.this$0 = memberDeserializer;
        this.$proto = protoBuf$Property;
        this.$property = deserializedPropertyDescriptor;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        DeserializedPropertyDescriptor deserializedPropertyDescriptor = this.$property;
        ProtoBuf$Property protoBuf$Property = this.$proto;
        MemberDeserializer memberDeserializer = this.this$0;
        switch (i) {
            case 0:
                LockBasedStorageManager lockBasedStorageManager = (LockBasedStorageManager) ((ActivityGalleryBinding) memberDeserializer.c.result).captionEditButton;
                MemberDeserializer$loadProperty$4 memberDeserializer$loadProperty$4 = new MemberDeserializer$loadProperty$4(memberDeserializer, protoBuf$Property, deserializedPropertyDescriptor, 1);
                lockBasedStorageManager.getClass();
                return new LockBasedStorageManager.LockBasedLazyValue(lockBasedStorageManager, memberDeserializer$loadProperty$4);
            case 1:
                HCaptcha hCaptcha = memberDeserializer.c;
                AbstractApplier asProtoContainer = memberDeserializer.asProtoContainer((DeclarationDescriptor) hCaptcha.onSuccessListeners);
                asProtoContainer.getClass();
                AnnotationAndConstantLoader annotationAndConstantLoader = (AnnotationAndConstantLoader) ((ActivityGalleryBinding) hCaptcha.result).transitionReceiver;
                KotlinType returnType = deserializedPropertyDescriptor.getReturnType();
                returnType.getClass();
                return (ConstantValue) annotationAndConstantLoader.loadPropertyConstant(asProtoContainer, protoBuf$Property, returnType);
            case 2:
                HCaptcha hCaptcha2 = memberDeserializer.c;
                AbstractApplier asProtoContainer2 = memberDeserializer.asProtoContainer((DeclarationDescriptor) hCaptcha2.onSuccessListeners);
                asProtoContainer2.getClass();
                AnnotationAndConstantLoader annotationAndConstantLoader2 = (AnnotationAndConstantLoader) ((ActivityGalleryBinding) hCaptcha2.result).transitionReceiver;
                KotlinType returnType2 = deserializedPropertyDescriptor.getReturnType();
                returnType2.getClass();
                return (ConstantValue) annotationAndConstantLoader2.loadAnnotationDefaultValue(asProtoContainer2, protoBuf$Property, returnType2);
            default:
                LockBasedStorageManager lockBasedStorageManager2 = (LockBasedStorageManager) ((ActivityGalleryBinding) memberDeserializer.c.result).captionEditButton;
                MemberDeserializer$loadProperty$4 memberDeserializer$loadProperty$42 = new MemberDeserializer$loadProperty$4(memberDeserializer, protoBuf$Property, deserializedPropertyDescriptor, 2);
                lockBasedStorageManager2.getClass();
                return new LockBasedStorageManager.LockBasedLazyValue(lockBasedStorageManager2, memberDeserializer$loadProperty$42);
        }
    }
}
