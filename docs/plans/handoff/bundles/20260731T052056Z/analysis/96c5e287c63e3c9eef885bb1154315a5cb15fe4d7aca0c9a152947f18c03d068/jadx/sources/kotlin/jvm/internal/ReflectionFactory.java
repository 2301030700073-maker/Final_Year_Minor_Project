package kotlin.jvm.internal;

import androidx.compose.material3.TextFieldDefaults$Container$1;
import androidx.compose.material3.internal.TextFieldImplKt$CommonDecorationBox$3$borderContainerWithId$1;
import kotlin.reflect.KClass;
import kotlin.reflect.KDeclarationContainer;
import kotlin.reflect.KFunction;
import kotlin.reflect.KMutableProperty0;
import kotlin.reflect.KMutableProperty1;
import kotlin.reflect.KProperty0;
import kotlin.reflect.KProperty1;
import kotlin.reflect.KProperty2;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public class ReflectionFactory {
    public KClass getOrCreateKotlinClass(Class cls) {
        return new ClassReference(cls);
    }

    public KDeclarationContainer getOrCreateKotlinPackage(Class cls, String str) {
        return new PackageReference(cls, str);
    }

    public String renderLambdaToString(FunctionBase functionBase) {
        String obj = functionBase.getClass().getGenericInterfaces()[0].toString();
        return obj.startsWith("kotlin.jvm.functions.") ? obj.substring(21) : obj;
    }

    public KFunction function(FunctionReference functionReference) {
        return functionReference;
    }

    public KMutableProperty0 mutableProperty0(TextFieldImplKt$CommonDecorationBox$3$borderContainerWithId$1.AnonymousClass1 anonymousClass1) {
        return anonymousClass1;
    }

    public KMutableProperty1 mutableProperty1(MutablePropertyReference1Impl mutablePropertyReference1Impl) {
        return mutablePropertyReference1Impl;
    }

    public KProperty0 property0(TextFieldDefaults$Container$1 textFieldDefaults$Container$1) {
        return textFieldDefaults$Container$1;
    }

    public KProperty1 property1(PropertyReference1Impl propertyReference1Impl) {
        return propertyReference1Impl;
    }

    public KProperty2 property2(PropertyReference2Impl propertyReference2Impl) {
        return propertyReference2Impl;
    }

    public String renderLambdaToString(Lambda lambda) {
        return renderLambdaToString((FunctionBase) lambda);
    }
}
