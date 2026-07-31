package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import androidx.room.Room;
import com.google.gson.GsonBuilder;
import com.hcaptcha.sdk.HCaptcha;
import java.util.Set;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DescriptorUtilKt;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.NameResolver;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedTypeAliasDescriptor;
import okhttp3.Dispatcher$promoteAndExecute$Effects;
import org.wikipedia.databinding.ActivityGalleryBinding;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class TypeDeserializer$typeAliasDescriptors$1 extends Lambda implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ GsonBuilder this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ TypeDeserializer$typeAliasDescriptors$1(GsonBuilder gsonBuilder, int i) {
        super(1);
        this.$r8$classId = i;
        this.this$0 = gsonBuilder;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        GsonBuilder gsonBuilder = this.this$0;
        switch (i) {
            case 0:
                int intValue = ((Number) obj).intValue();
                HCaptcha hCaptcha = (HCaptcha) gsonBuilder.excluder;
                ClassId classId = Room.getClassId((NameResolver) hCaptcha.hCaptchaException, intValue);
                if (classId.local) {
                    return null;
                }
                ModuleDescriptor moduleDescriptor = (ModuleDescriptor) ((ActivityGalleryBinding) hCaptcha.result).licenseIcon;
                moduleDescriptor.getClass();
                ClassifierDescriptor findClassifierAcrossModuleDependencies = DescriptorUtilKt.findClassifierAcrossModuleDependencies(moduleDescriptor, classId);
                if (findClassifierAcrossModuleDependencies instanceof DeserializedTypeAliasDescriptor) {
                    return (DeserializedTypeAliasDescriptor) findClassifierAcrossModuleDependencies;
                }
                return null;
            case 1:
                int intValue2 = ((Number) obj).intValue();
                HCaptcha hCaptcha2 = (HCaptcha) gsonBuilder.excluder;
                ClassId classId2 = Room.getClassId((NameResolver) hCaptcha2.hCaptchaException, intValue2);
                boolean z = classId2.local;
                ActivityGalleryBinding activityGalleryBinding = (ActivityGalleryBinding) hCaptcha2.result;
                if (!z) {
                    return DescriptorUtilKt.findClassifierAcrossModuleDependencies((ModuleDescriptor) activityGalleryBinding.licenseIcon, classId2);
                }
                ClassDeserializer classDeserializer = (ClassDeserializer) activityGalleryBinding.toolbar;
                Set set = ClassDeserializer.BLACK_LIST;
                return classDeserializer.deserializeClass(classId2, null);
            default:
                ProtoBuf$Type protoBuf$Type = (ProtoBuf$Type) obj;
                protoBuf$Type.getClass();
                Dispatcher$promoteAndExecute$Effects dispatcher$promoteAndExecute$Effects = (Dispatcher$promoteAndExecute$Effects) ((HCaptcha) gsonBuilder.excluder).onFailureListeners;
                int i2 = protoBuf$Type.bitField0_;
                if ((i2 & 256) == 256) {
                    return protoBuf$Type.outerType_;
                }
                if ((i2 & 512) == 512) {
                    return dispatcher$promoteAndExecute$Effects.get(protoBuf$Type.outerTypeId_);
                }
                return null;
        }
    }
}
