package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import androidx.compose.runtime.AbstractApplier;
import com.hcaptcha.sdk.HCaptcha;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite;
import org.wikipedia.databinding.ActivityGalleryBinding;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class MemberDeserializer$getAnnotations$1 extends Lambda implements Function0 {
    public final /* synthetic */ AnnotatedCallableKind $kind;
    public final /* synthetic */ AbstractMessageLite $proto;
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ MemberDeserializer this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ MemberDeserializer$getAnnotations$1(MemberDeserializer memberDeserializer, AbstractMessageLite abstractMessageLite, AnnotatedCallableKind annotatedCallableKind, int i) {
        super(0);
        this.$r8$classId = i;
        this.this$0 = memberDeserializer;
        this.$proto = abstractMessageLite;
        this.$kind = annotatedCallableKind;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        List list;
        int i = this.$r8$classId;
        EmptyList emptyList = EmptyList.INSTANCE;
        AnnotatedCallableKind annotatedCallableKind = this.$kind;
        AbstractMessageLite abstractMessageLite = this.$proto;
        MemberDeserializer memberDeserializer = this.this$0;
        switch (i) {
            case 0:
                HCaptcha hCaptcha = memberDeserializer.c;
                AbstractApplier asProtoContainer = memberDeserializer.asProtoContainer((DeclarationDescriptor) hCaptcha.onSuccessListeners);
                list = asProtoContainer != null ? CollectionsKt.toList(((AnnotationAndConstantLoader) ((ActivityGalleryBinding) hCaptcha.result).transitionReceiver).loadCallableAnnotations(asProtoContainer, abstractMessageLite, annotatedCallableKind)) : null;
                if (list != null) {
                    break;
                }
                break;
            default:
                HCaptcha hCaptcha2 = memberDeserializer.c;
                AbstractApplier asProtoContainer2 = memberDeserializer.asProtoContainer((DeclarationDescriptor) hCaptcha2.onSuccessListeners);
                list = asProtoContainer2 != null ? ((AnnotationAndConstantLoader) ((ActivityGalleryBinding) hCaptcha2.result).transitionReceiver).loadExtensionReceiverParameterAnnotations(asProtoContainer2, abstractMessageLite, annotatedCallableKind) : null;
                if (list != null) {
                    break;
                }
                break;
        }
        return list;
    }
}
