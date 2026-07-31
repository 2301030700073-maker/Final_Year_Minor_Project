package kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement;

import androidx.compose.ui.semantics.SemanticsNode$emitFakeNodes$fakeNode$2;
import coil3.network.NetworkHeaders;
import java.util.LinkedHashMap;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import okhttp3.FormBody;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class PredefinedEnhancementInfoKt {
    public static final JavaTypeQualifiers NOT_NULLABLE;
    public static final JavaTypeQualifiers NOT_PLATFORM;
    public static final JavaTypeQualifiers NULLABLE = new JavaTypeQualifiers(NullabilityQualifier.NULLABLE, false);
    public static final LinkedHashMap PREDEFINED_FUNCTION_ENHANCEMENT_INFO_BY_SIGNATURE;

    static {
        NullabilityQualifier nullabilityQualifier = NullabilityQualifier.NOT_NULL;
        NOT_PLATFORM = new JavaTypeQualifiers(nullabilityQualifier, false);
        NOT_NULLABLE = new JavaTypeQualifiers(nullabilityQualifier, true);
        final String concat = "java/lang/".concat("Object");
        String concat2 = "java/util/function/".concat("Predicate");
        final String concat3 = "java/util/function/".concat("Function");
        String concat4 = "java/util/function/".concat("Consumer");
        final String concat5 = "java/util/function/".concat("BiFunction");
        String concat6 = "java/util/function/".concat("BiConsumer");
        String concat7 = "java/util/function/".concat("UnaryOperator");
        String concat8 = "java/util/".concat("stream/Stream");
        final String concat9 = "java/util/".concat("Optional");
        NetworkHeaders.Builder builder = new NetworkHeaders.Builder(6);
        new FormBody.Builder(7, builder, "java/util/".concat("Iterator")).function("forEachRemaining", new SemanticsNode$emitFakeNodes$fakeNode$2(1, concat4));
        final int i = 4;
        new FormBody.Builder(7, builder, "java/lang/".concat("Iterable")).function("spliterator", new SignatureEnhancement$containsFunctionN$1(1, 4));
        FormBody.Builder builder2 = new FormBody.Builder(7, builder, "java/util/".concat("Collection"));
        builder2.function("removeIf", new SemanticsNode$emitFakeNodes$fakeNode$2(7, concat2));
        builder2.function("stream", new SemanticsNode$emitFakeNodes$fakeNode$2(8, concat8));
        builder2.function("parallelStream", new SemanticsNode$emitFakeNodes$fakeNode$2(9, concat8));
        new FormBody.Builder(7, builder, "java/util/".concat("List")).function("replaceAll", new SemanticsNode$emitFakeNodes$fakeNode$2(10, concat7));
        FormBody.Builder builder3 = new FormBody.Builder(7, builder, "java/util/".concat("Map"));
        builder3.function("forEach", new SemanticsNode$emitFakeNodes$fakeNode$2(11, concat6));
        builder3.function("putIfAbsent", new SemanticsNode$emitFakeNodes$fakeNode$2(12, concat));
        builder3.function("replace", new SemanticsNode$emitFakeNodes$fakeNode$2(13, concat));
        builder3.function("replace", new SemanticsNode$emitFakeNodes$fakeNode$2(14, concat));
        builder3.function("replaceAll", new SemanticsNode$emitFakeNodes$fakeNode$2(15, concat5));
        final int i2 = 0;
        builder3.function("compute", new Function1() { // from class: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.PredefinedEnhancementInfoKt$PREDEFINED_FUNCTION_ENHANCEMENT_INFO_BY_SIGNATURE$1$1$5$6
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                int i3 = i2;
                Unit unit = Unit.INSTANCE;
                String str = concat5;
                String str2 = concat;
                switch (i3) {
                    case 0:
                        SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder = (SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder) obj;
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder.getClass();
                        JavaTypeQualifiers javaTypeQualifiers = PredefinedEnhancementInfoKt.NOT_PLATFORM;
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder.parameter(str2, javaTypeQualifiers);
                        JavaTypeQualifiers javaTypeQualifiers2 = PredefinedEnhancementInfoKt.NULLABLE;
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder.parameter(str, javaTypeQualifiers, javaTypeQualifiers, javaTypeQualifiers2, javaTypeQualifiers2);
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder.returns(str2, javaTypeQualifiers2);
                        break;
                    case 1:
                        SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder2 = (SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder) obj;
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder2.getClass();
                        JavaTypeQualifiers javaTypeQualifiers3 = PredefinedEnhancementInfoKt.NOT_PLATFORM;
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder2.parameter(str2, javaTypeQualifiers3);
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder2.parameter(str, javaTypeQualifiers3, javaTypeQualifiers3, javaTypeQualifiers3);
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder2.returns(str2, javaTypeQualifiers3);
                        break;
                    case 2:
                        SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder3 = (SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder) obj;
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder3.getClass();
                        JavaTypeQualifiers javaTypeQualifiers4 = PredefinedEnhancementInfoKt.NOT_PLATFORM;
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder3.parameter(str2, javaTypeQualifiers4);
                        JavaTypeQualifiers javaTypeQualifiers5 = PredefinedEnhancementInfoKt.NULLABLE;
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder3.parameter(str, javaTypeQualifiers4, javaTypeQualifiers4, PredefinedEnhancementInfoKt.NOT_NULLABLE, javaTypeQualifiers5);
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder3.returns(str2, javaTypeQualifiers5);
                        break;
                    case 3:
                        SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder4 = (SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder) obj;
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder4.getClass();
                        JavaTypeQualifiers javaTypeQualifiers6 = PredefinedEnhancementInfoKt.NOT_PLATFORM;
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder4.parameter(str2, javaTypeQualifiers6);
                        JavaTypeQualifiers javaTypeQualifiers7 = PredefinedEnhancementInfoKt.NOT_NULLABLE;
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder4.parameter(str2, javaTypeQualifiers7);
                        JavaTypeQualifiers javaTypeQualifiers8 = PredefinedEnhancementInfoKt.NULLABLE;
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder4.parameter(str, javaTypeQualifiers6, javaTypeQualifiers7, javaTypeQualifiers7, javaTypeQualifiers8);
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder4.returns(str2, javaTypeQualifiers8);
                        break;
                    case 4:
                        SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder5 = (SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder) obj;
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder5.getClass();
                        JavaTypeQualifiers javaTypeQualifiers9 = PredefinedEnhancementInfoKt.NOT_NULLABLE;
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder5.parameter(str2, javaTypeQualifiers9);
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder5.returns(str, PredefinedEnhancementInfoKt.NOT_PLATFORM, javaTypeQualifiers9);
                        break;
                    default:
                        SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder6 = (SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder) obj;
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder6.getClass();
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder6.parameter(str2, PredefinedEnhancementInfoKt.NULLABLE);
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder6.returns(str, PredefinedEnhancementInfoKt.NOT_PLATFORM, PredefinedEnhancementInfoKt.NOT_NULLABLE);
                        break;
                }
                return unit;
            }
        });
        final int i3 = 1;
        builder3.function("computeIfAbsent", new Function1() { // from class: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.PredefinedEnhancementInfoKt$PREDEFINED_FUNCTION_ENHANCEMENT_INFO_BY_SIGNATURE$1$1$5$6
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                int i32 = i3;
                Unit unit = Unit.INSTANCE;
                String str = concat3;
                String str2 = concat;
                switch (i32) {
                    case 0:
                        SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder = (SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder) obj;
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder.getClass();
                        JavaTypeQualifiers javaTypeQualifiers = PredefinedEnhancementInfoKt.NOT_PLATFORM;
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder.parameter(str2, javaTypeQualifiers);
                        JavaTypeQualifiers javaTypeQualifiers2 = PredefinedEnhancementInfoKt.NULLABLE;
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder.parameter(str, javaTypeQualifiers, javaTypeQualifiers, javaTypeQualifiers2, javaTypeQualifiers2);
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder.returns(str2, javaTypeQualifiers2);
                        break;
                    case 1:
                        SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder2 = (SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder) obj;
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder2.getClass();
                        JavaTypeQualifiers javaTypeQualifiers3 = PredefinedEnhancementInfoKt.NOT_PLATFORM;
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder2.parameter(str2, javaTypeQualifiers3);
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder2.parameter(str, javaTypeQualifiers3, javaTypeQualifiers3, javaTypeQualifiers3);
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder2.returns(str2, javaTypeQualifiers3);
                        break;
                    case 2:
                        SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder3 = (SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder) obj;
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder3.getClass();
                        JavaTypeQualifiers javaTypeQualifiers4 = PredefinedEnhancementInfoKt.NOT_PLATFORM;
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder3.parameter(str2, javaTypeQualifiers4);
                        JavaTypeQualifiers javaTypeQualifiers5 = PredefinedEnhancementInfoKt.NULLABLE;
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder3.parameter(str, javaTypeQualifiers4, javaTypeQualifiers4, PredefinedEnhancementInfoKt.NOT_NULLABLE, javaTypeQualifiers5);
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder3.returns(str2, javaTypeQualifiers5);
                        break;
                    case 3:
                        SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder4 = (SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder) obj;
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder4.getClass();
                        JavaTypeQualifiers javaTypeQualifiers6 = PredefinedEnhancementInfoKt.NOT_PLATFORM;
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder4.parameter(str2, javaTypeQualifiers6);
                        JavaTypeQualifiers javaTypeQualifiers7 = PredefinedEnhancementInfoKt.NOT_NULLABLE;
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder4.parameter(str2, javaTypeQualifiers7);
                        JavaTypeQualifiers javaTypeQualifiers8 = PredefinedEnhancementInfoKt.NULLABLE;
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder4.parameter(str, javaTypeQualifiers6, javaTypeQualifiers7, javaTypeQualifiers7, javaTypeQualifiers8);
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder4.returns(str2, javaTypeQualifiers8);
                        break;
                    case 4:
                        SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder5 = (SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder) obj;
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder5.getClass();
                        JavaTypeQualifiers javaTypeQualifiers9 = PredefinedEnhancementInfoKt.NOT_NULLABLE;
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder5.parameter(str2, javaTypeQualifiers9);
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder5.returns(str, PredefinedEnhancementInfoKt.NOT_PLATFORM, javaTypeQualifiers9);
                        break;
                    default:
                        SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder6 = (SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder) obj;
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder6.getClass();
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder6.parameter(str2, PredefinedEnhancementInfoKt.NULLABLE);
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder6.returns(str, PredefinedEnhancementInfoKt.NOT_PLATFORM, PredefinedEnhancementInfoKt.NOT_NULLABLE);
                        break;
                }
                return unit;
            }
        });
        final int i4 = 2;
        builder3.function("computeIfPresent", new Function1() { // from class: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.PredefinedEnhancementInfoKt$PREDEFINED_FUNCTION_ENHANCEMENT_INFO_BY_SIGNATURE$1$1$5$6
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                int i32 = i4;
                Unit unit = Unit.INSTANCE;
                String str = concat5;
                String str2 = concat;
                switch (i32) {
                    case 0:
                        SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder = (SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder) obj;
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder.getClass();
                        JavaTypeQualifiers javaTypeQualifiers = PredefinedEnhancementInfoKt.NOT_PLATFORM;
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder.parameter(str2, javaTypeQualifiers);
                        JavaTypeQualifiers javaTypeQualifiers2 = PredefinedEnhancementInfoKt.NULLABLE;
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder.parameter(str, javaTypeQualifiers, javaTypeQualifiers, javaTypeQualifiers2, javaTypeQualifiers2);
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder.returns(str2, javaTypeQualifiers2);
                        break;
                    case 1:
                        SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder2 = (SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder) obj;
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder2.getClass();
                        JavaTypeQualifiers javaTypeQualifiers3 = PredefinedEnhancementInfoKt.NOT_PLATFORM;
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder2.parameter(str2, javaTypeQualifiers3);
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder2.parameter(str, javaTypeQualifiers3, javaTypeQualifiers3, javaTypeQualifiers3);
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder2.returns(str2, javaTypeQualifiers3);
                        break;
                    case 2:
                        SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder3 = (SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder) obj;
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder3.getClass();
                        JavaTypeQualifiers javaTypeQualifiers4 = PredefinedEnhancementInfoKt.NOT_PLATFORM;
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder3.parameter(str2, javaTypeQualifiers4);
                        JavaTypeQualifiers javaTypeQualifiers5 = PredefinedEnhancementInfoKt.NULLABLE;
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder3.parameter(str, javaTypeQualifiers4, javaTypeQualifiers4, PredefinedEnhancementInfoKt.NOT_NULLABLE, javaTypeQualifiers5);
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder3.returns(str2, javaTypeQualifiers5);
                        break;
                    case 3:
                        SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder4 = (SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder) obj;
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder4.getClass();
                        JavaTypeQualifiers javaTypeQualifiers6 = PredefinedEnhancementInfoKt.NOT_PLATFORM;
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder4.parameter(str2, javaTypeQualifiers6);
                        JavaTypeQualifiers javaTypeQualifiers7 = PredefinedEnhancementInfoKt.NOT_NULLABLE;
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder4.parameter(str2, javaTypeQualifiers7);
                        JavaTypeQualifiers javaTypeQualifiers8 = PredefinedEnhancementInfoKt.NULLABLE;
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder4.parameter(str, javaTypeQualifiers6, javaTypeQualifiers7, javaTypeQualifiers7, javaTypeQualifiers8);
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder4.returns(str2, javaTypeQualifiers8);
                        break;
                    case 4:
                        SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder5 = (SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder) obj;
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder5.getClass();
                        JavaTypeQualifiers javaTypeQualifiers9 = PredefinedEnhancementInfoKt.NOT_NULLABLE;
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder5.parameter(str2, javaTypeQualifiers9);
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder5.returns(str, PredefinedEnhancementInfoKt.NOT_PLATFORM, javaTypeQualifiers9);
                        break;
                    default:
                        SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder6 = (SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder) obj;
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder6.getClass();
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder6.parameter(str2, PredefinedEnhancementInfoKt.NULLABLE);
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder6.returns(str, PredefinedEnhancementInfoKt.NOT_PLATFORM, PredefinedEnhancementInfoKt.NOT_NULLABLE);
                        break;
                }
                return unit;
            }
        });
        final int i5 = 3;
        builder3.function("merge", new Function1() { // from class: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.PredefinedEnhancementInfoKt$PREDEFINED_FUNCTION_ENHANCEMENT_INFO_BY_SIGNATURE$1$1$5$6
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                int i32 = i5;
                Unit unit = Unit.INSTANCE;
                String str = concat5;
                String str2 = concat;
                switch (i32) {
                    case 0:
                        SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder = (SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder) obj;
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder.getClass();
                        JavaTypeQualifiers javaTypeQualifiers = PredefinedEnhancementInfoKt.NOT_PLATFORM;
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder.parameter(str2, javaTypeQualifiers);
                        JavaTypeQualifiers javaTypeQualifiers2 = PredefinedEnhancementInfoKt.NULLABLE;
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder.parameter(str, javaTypeQualifiers, javaTypeQualifiers, javaTypeQualifiers2, javaTypeQualifiers2);
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder.returns(str2, javaTypeQualifiers2);
                        break;
                    case 1:
                        SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder2 = (SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder) obj;
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder2.getClass();
                        JavaTypeQualifiers javaTypeQualifiers3 = PredefinedEnhancementInfoKt.NOT_PLATFORM;
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder2.parameter(str2, javaTypeQualifiers3);
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder2.parameter(str, javaTypeQualifiers3, javaTypeQualifiers3, javaTypeQualifiers3);
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder2.returns(str2, javaTypeQualifiers3);
                        break;
                    case 2:
                        SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder3 = (SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder) obj;
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder3.getClass();
                        JavaTypeQualifiers javaTypeQualifiers4 = PredefinedEnhancementInfoKt.NOT_PLATFORM;
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder3.parameter(str2, javaTypeQualifiers4);
                        JavaTypeQualifiers javaTypeQualifiers5 = PredefinedEnhancementInfoKt.NULLABLE;
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder3.parameter(str, javaTypeQualifiers4, javaTypeQualifiers4, PredefinedEnhancementInfoKt.NOT_NULLABLE, javaTypeQualifiers5);
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder3.returns(str2, javaTypeQualifiers5);
                        break;
                    case 3:
                        SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder4 = (SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder) obj;
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder4.getClass();
                        JavaTypeQualifiers javaTypeQualifiers6 = PredefinedEnhancementInfoKt.NOT_PLATFORM;
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder4.parameter(str2, javaTypeQualifiers6);
                        JavaTypeQualifiers javaTypeQualifiers7 = PredefinedEnhancementInfoKt.NOT_NULLABLE;
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder4.parameter(str2, javaTypeQualifiers7);
                        JavaTypeQualifiers javaTypeQualifiers8 = PredefinedEnhancementInfoKt.NULLABLE;
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder4.parameter(str, javaTypeQualifiers6, javaTypeQualifiers7, javaTypeQualifiers7, javaTypeQualifiers8);
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder4.returns(str2, javaTypeQualifiers8);
                        break;
                    case 4:
                        SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder5 = (SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder) obj;
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder5.getClass();
                        JavaTypeQualifiers javaTypeQualifiers9 = PredefinedEnhancementInfoKt.NOT_NULLABLE;
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder5.parameter(str2, javaTypeQualifiers9);
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder5.returns(str, PredefinedEnhancementInfoKt.NOT_PLATFORM, javaTypeQualifiers9);
                        break;
                    default:
                        SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder6 = (SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder) obj;
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder6.getClass();
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder6.parameter(str2, PredefinedEnhancementInfoKt.NULLABLE);
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder6.returns(str, PredefinedEnhancementInfoKt.NOT_PLATFORM, PredefinedEnhancementInfoKt.NOT_NULLABLE);
                        break;
                }
                return unit;
            }
        });
        FormBody.Builder builder4 = new FormBody.Builder(7, builder, concat9);
        builder4.function("empty", new SemanticsNode$emitFakeNodes$fakeNode$2(16, concat9));
        builder4.function("of", new Function1() { // from class: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.PredefinedEnhancementInfoKt$PREDEFINED_FUNCTION_ENHANCEMENT_INFO_BY_SIGNATURE$1$1$5$6
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                int i32 = i;
                Unit unit = Unit.INSTANCE;
                String str = concat9;
                String str2 = concat;
                switch (i32) {
                    case 0:
                        SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder = (SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder) obj;
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder.getClass();
                        JavaTypeQualifiers javaTypeQualifiers = PredefinedEnhancementInfoKt.NOT_PLATFORM;
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder.parameter(str2, javaTypeQualifiers);
                        JavaTypeQualifiers javaTypeQualifiers2 = PredefinedEnhancementInfoKt.NULLABLE;
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder.parameter(str, javaTypeQualifiers, javaTypeQualifiers, javaTypeQualifiers2, javaTypeQualifiers2);
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder.returns(str2, javaTypeQualifiers2);
                        break;
                    case 1:
                        SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder2 = (SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder) obj;
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder2.getClass();
                        JavaTypeQualifiers javaTypeQualifiers3 = PredefinedEnhancementInfoKt.NOT_PLATFORM;
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder2.parameter(str2, javaTypeQualifiers3);
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder2.parameter(str, javaTypeQualifiers3, javaTypeQualifiers3, javaTypeQualifiers3);
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder2.returns(str2, javaTypeQualifiers3);
                        break;
                    case 2:
                        SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder3 = (SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder) obj;
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder3.getClass();
                        JavaTypeQualifiers javaTypeQualifiers4 = PredefinedEnhancementInfoKt.NOT_PLATFORM;
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder3.parameter(str2, javaTypeQualifiers4);
                        JavaTypeQualifiers javaTypeQualifiers5 = PredefinedEnhancementInfoKt.NULLABLE;
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder3.parameter(str, javaTypeQualifiers4, javaTypeQualifiers4, PredefinedEnhancementInfoKt.NOT_NULLABLE, javaTypeQualifiers5);
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder3.returns(str2, javaTypeQualifiers5);
                        break;
                    case 3:
                        SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder4 = (SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder) obj;
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder4.getClass();
                        JavaTypeQualifiers javaTypeQualifiers6 = PredefinedEnhancementInfoKt.NOT_PLATFORM;
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder4.parameter(str2, javaTypeQualifiers6);
                        JavaTypeQualifiers javaTypeQualifiers7 = PredefinedEnhancementInfoKt.NOT_NULLABLE;
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder4.parameter(str2, javaTypeQualifiers7);
                        JavaTypeQualifiers javaTypeQualifiers8 = PredefinedEnhancementInfoKt.NULLABLE;
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder4.parameter(str, javaTypeQualifiers6, javaTypeQualifiers7, javaTypeQualifiers7, javaTypeQualifiers8);
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder4.returns(str2, javaTypeQualifiers8);
                        break;
                    case 4:
                        SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder5 = (SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder) obj;
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder5.getClass();
                        JavaTypeQualifiers javaTypeQualifiers9 = PredefinedEnhancementInfoKt.NOT_NULLABLE;
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder5.parameter(str2, javaTypeQualifiers9);
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder5.returns(str, PredefinedEnhancementInfoKt.NOT_PLATFORM, javaTypeQualifiers9);
                        break;
                    default:
                        SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder6 = (SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder) obj;
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder6.getClass();
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder6.parameter(str2, PredefinedEnhancementInfoKt.NULLABLE);
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder6.returns(str, PredefinedEnhancementInfoKt.NOT_PLATFORM, PredefinedEnhancementInfoKt.NOT_NULLABLE);
                        break;
                }
                return unit;
            }
        });
        final int i6 = 5;
        builder4.function("ofNullable", new Function1() { // from class: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.PredefinedEnhancementInfoKt$PREDEFINED_FUNCTION_ENHANCEMENT_INFO_BY_SIGNATURE$1$1$5$6
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                int i32 = i6;
                Unit unit = Unit.INSTANCE;
                String str = concat9;
                String str2 = concat;
                switch (i32) {
                    case 0:
                        SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder = (SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder) obj;
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder.getClass();
                        JavaTypeQualifiers javaTypeQualifiers = PredefinedEnhancementInfoKt.NOT_PLATFORM;
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder.parameter(str2, javaTypeQualifiers);
                        JavaTypeQualifiers javaTypeQualifiers2 = PredefinedEnhancementInfoKt.NULLABLE;
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder.parameter(str, javaTypeQualifiers, javaTypeQualifiers, javaTypeQualifiers2, javaTypeQualifiers2);
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder.returns(str2, javaTypeQualifiers2);
                        break;
                    case 1:
                        SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder2 = (SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder) obj;
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder2.getClass();
                        JavaTypeQualifiers javaTypeQualifiers3 = PredefinedEnhancementInfoKt.NOT_PLATFORM;
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder2.parameter(str2, javaTypeQualifiers3);
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder2.parameter(str, javaTypeQualifiers3, javaTypeQualifiers3, javaTypeQualifiers3);
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder2.returns(str2, javaTypeQualifiers3);
                        break;
                    case 2:
                        SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder3 = (SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder) obj;
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder3.getClass();
                        JavaTypeQualifiers javaTypeQualifiers4 = PredefinedEnhancementInfoKt.NOT_PLATFORM;
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder3.parameter(str2, javaTypeQualifiers4);
                        JavaTypeQualifiers javaTypeQualifiers5 = PredefinedEnhancementInfoKt.NULLABLE;
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder3.parameter(str, javaTypeQualifiers4, javaTypeQualifiers4, PredefinedEnhancementInfoKt.NOT_NULLABLE, javaTypeQualifiers5);
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder3.returns(str2, javaTypeQualifiers5);
                        break;
                    case 3:
                        SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder4 = (SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder) obj;
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder4.getClass();
                        JavaTypeQualifiers javaTypeQualifiers6 = PredefinedEnhancementInfoKt.NOT_PLATFORM;
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder4.parameter(str2, javaTypeQualifiers6);
                        JavaTypeQualifiers javaTypeQualifiers7 = PredefinedEnhancementInfoKt.NOT_NULLABLE;
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder4.parameter(str2, javaTypeQualifiers7);
                        JavaTypeQualifiers javaTypeQualifiers8 = PredefinedEnhancementInfoKt.NULLABLE;
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder4.parameter(str, javaTypeQualifiers6, javaTypeQualifiers7, javaTypeQualifiers7, javaTypeQualifiers8);
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder4.returns(str2, javaTypeQualifiers8);
                        break;
                    case 4:
                        SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder5 = (SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder) obj;
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder5.getClass();
                        JavaTypeQualifiers javaTypeQualifiers9 = PredefinedEnhancementInfoKt.NOT_NULLABLE;
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder5.parameter(str2, javaTypeQualifiers9);
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder5.returns(str, PredefinedEnhancementInfoKt.NOT_PLATFORM, javaTypeQualifiers9);
                        break;
                    default:
                        SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder6 = (SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder) obj;
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder6.getClass();
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder6.parameter(str2, PredefinedEnhancementInfoKt.NULLABLE);
                        signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder6.returns(str, PredefinedEnhancementInfoKt.NOT_PLATFORM, PredefinedEnhancementInfoKt.NOT_NULLABLE);
                        break;
                }
                return unit;
            }
        });
        builder4.function("get", new SemanticsNode$emitFakeNodes$fakeNode$2(17, concat));
        builder4.function("ifPresent", new SemanticsNode$emitFakeNodes$fakeNode$2(18, concat4));
        new FormBody.Builder(7, builder, "java/lang/".concat("ref/Reference")).function("get", new SemanticsNode$emitFakeNodes$fakeNode$2(19, concat));
        new FormBody.Builder(7, builder, concat2).function("test", new SemanticsNode$emitFakeNodes$fakeNode$2(20, concat));
        new FormBody.Builder(7, builder, "java/util/function/".concat("BiPredicate")).function("test", new SemanticsNode$emitFakeNodes$fakeNode$2(21, concat));
        new FormBody.Builder(7, builder, concat4).function("accept", new SemanticsNode$emitFakeNodes$fakeNode$2(2, concat));
        new FormBody.Builder(7, builder, concat6).function("accept", new SemanticsNode$emitFakeNodes$fakeNode$2(3, concat));
        new FormBody.Builder(7, builder, concat3).function("apply", new SemanticsNode$emitFakeNodes$fakeNode$2(4, concat));
        new FormBody.Builder(7, builder, concat5).function("apply", new SemanticsNode$emitFakeNodes$fakeNode$2(5, concat));
        new FormBody.Builder(7, builder, "java/util/function/".concat("Supplier")).function("get", new SemanticsNode$emitFakeNodes$fakeNode$2(6, concat));
        PREDEFINED_FUNCTION_ENHANCEMENT_INFO_BY_SIGNATURE = builder.data;
    }
}
