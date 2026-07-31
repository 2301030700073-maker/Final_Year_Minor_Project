package androidx.compose.ui.platform;

import androidx.compose.runtime.AbstractApplier;
import androidx.savedstate.internal.SavedStateRegistryImpl;
import coil3.svg.internal.AndroidSvg;
import com.hcaptcha.sdk.HCaptcha;
import java.io.Serializable;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.AnnotationAndConstantLoader;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.MemberDeserializer;
import org.wikipedia.databinding.ActivityGalleryBinding;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class DisposableSaveableStateRegistry_androidKt$DisposableSaveableStateRegistry$1 extends Lambda implements Function0 {
    public final /* synthetic */ Object $androidxRegistry;
    public final /* synthetic */ Serializable $key;
    public final /* synthetic */ int $r8$classId = 1;
    public final /* synthetic */ boolean $registered;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DisposableSaveableStateRegistry_androidKt$DisposableSaveableStateRegistry$1(MemberDeserializer memberDeserializer, boolean z, ProtoBuf$Property protoBuf$Property) {
        super(0);
        this.$androidxRegistry = memberDeserializer;
        this.$registered = z;
        this.$key = protoBuf$Property;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        List list;
        switch (this.$r8$classId) {
            case 0:
                if (this.$registered) {
                    AndroidSvg androidSvg = (AndroidSvg) this.$androidxRegistry;
                    String str = (String) this.$key;
                    SavedStateRegistryImpl savedStateRegistryImpl = (SavedStateRegistryImpl) androidSvg.svg;
                    synchronized (savedStateRegistryImpl.lock) {
                    }
                }
                return Unit.INSTANCE;
            default:
                MemberDeserializer memberDeserializer = (MemberDeserializer) this.$androidxRegistry;
                HCaptcha hCaptcha = memberDeserializer.c;
                AbstractApplier asProtoContainer = memberDeserializer.asProtoContainer((DeclarationDescriptor) hCaptcha.onSuccessListeners);
                if (asProtoContainer != null) {
                    boolean z = this.$registered;
                    ProtoBuf$Property protoBuf$Property = (ProtoBuf$Property) this.$key;
                    ActivityGalleryBinding activityGalleryBinding = (ActivityGalleryBinding) hCaptcha.result;
                    list = z ? CollectionsKt.toList(((AnnotationAndConstantLoader) activityGalleryBinding.transitionReceiver).loadPropertyDelegateFieldAnnotations(asProtoContainer, protoBuf$Property)) : CollectionsKt.toList(((AnnotationAndConstantLoader) activityGalleryBinding.transitionReceiver).loadPropertyBackingFieldAnnotations(asProtoContainer, protoBuf$Property));
                } else {
                    list = null;
                }
                return list == null ? EmptyList.INSTANCE : list;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DisposableSaveableStateRegistry_androidKt$DisposableSaveableStateRegistry$1(boolean z, AndroidSvg androidSvg, String str) {
        super(0);
        this.$registered = z;
        this.$androidxRegistry = androidSvg;
        this.$key = str;
    }
}
