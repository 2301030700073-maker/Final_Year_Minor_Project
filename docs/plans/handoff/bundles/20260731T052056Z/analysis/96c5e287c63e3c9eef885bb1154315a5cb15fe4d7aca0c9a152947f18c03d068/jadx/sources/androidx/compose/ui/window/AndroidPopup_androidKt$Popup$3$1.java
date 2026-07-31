package androidx.compose.ui.window;

import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaClassifierType;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.types.JavaTypeAttributes;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import okhttp3.FormBody;
import okhttp3.MultipartBody;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class AndroidPopup_androidKt$Popup$3$1 extends Lambda implements Function0 {
    public final /* synthetic */ Object $layoutDirection;
    public final /* synthetic */ Object $onDismissRequest;
    public final /* synthetic */ Object $popupLayout;
    public final /* synthetic */ Object $properties;
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object $testTag;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ AndroidPopup_androidKt$Popup$3$1(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, int i) {
        super(0);
        this.$r8$classId = i;
        this.$popupLayout = obj;
        this.$onDismissRequest = obj2;
        this.$properties = obj3;
        this.$testTag = obj4;
        this.$layoutDirection = obj5;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        Object obj = this.$layoutDirection;
        Object obj2 = this.$testTag;
        Object obj3 = this.$properties;
        Object obj4 = this.$onDismissRequest;
        Object obj5 = this.$popupLayout;
        switch (i) {
            case 0:
                ((PopupLayout) obj5).updateParameters((Function0) obj4, (PopupProperties) obj3, (String) obj2, (LayoutDirection) obj);
                return Unit.INSTANCE;
            default:
                FormBody.Builder builder = (FormBody.Builder) ((MultipartBody.Builder) obj5).parts;
                TypeParameterDescriptor typeParameterDescriptor = (TypeParameterDescriptor) obj4;
                JavaTypeAttributes javaTypeAttributes = (JavaTypeAttributes) obj3;
                ClassifierDescriptor declarationDescriptor = ((TypeConstructor) obj2).getDeclarationDescriptor();
                return builder.getErasedUpperBound(typeParameterDescriptor, JavaTypeAttributes.copy$default(JavaTypeAttributes.copy$default(javaTypeAttributes, null, false, null, declarationDescriptor != null ? declarationDescriptor.getDefaultType() : null, 31), null, ((ReflectJavaClassifierType) obj).isRaw(), null, null, 59));
        }
    }
}
