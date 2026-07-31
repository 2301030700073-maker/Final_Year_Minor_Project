package kotlin.reflect.jvm.internal.impl.load.java;

import coil3.size.ViewSizeResolver$size$3$1;
import kotlin.KotlinVersion;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReference;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KDeclarationContainer;
import kotlin.reflect.jvm.internal.impl.load.java.NullabilityAnnotationStates;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import okhttp3.FormBody;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class JavaTypeEnhancementState$Companion$DEFAULT$1 extends FunctionReference implements Function1 {
    public static final JavaTypeEnhancementState$Companion$DEFAULT$1 INSTANCE = new JavaTypeEnhancementState$Companion$DEFAULT$1(1);

    @Override // kotlin.jvm.internal.CallableReference, kotlin.reflect.KCallable
    public final String getName() {
        return "getDefaultReportLevelForAnnotation";
    }

    @Override // kotlin.jvm.internal.CallableReference
    public final KDeclarationContainer getOwner() {
        return Reflection.factory.getOrCreateKotlinPackage(JavaNullabilityAnnotationSettingsKt.class, "compiler.common.jvm");
    }

    @Override // kotlin.jvm.internal.CallableReference
    public final String getSignature() {
        return "getDefaultReportLevelForAnnotation(Lorg/jetbrains/kotlin/name/FqName;)Lorg/jetbrains/kotlin/load/java/ReportLevel;";
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        FqName fqName = (FqName) obj;
        fqName.getClass();
        FqName fqName2 = JavaNullabilityAnnotationSettingsKt.JSPECIFY_ANNOTATIONS_PACKAGE;
        NullabilityAnnotationStates.Companion.getClass();
        FormBody.Builder builder = NullabilityAnnotationStates.Companion.EMPTY;
        KotlinVersion kotlinVersion = new KotlinVersion(1, 7, 20);
        builder.getClass();
        ReportLevel reportLevel = (ReportLevel) ((ViewSizeResolver$size$3$1) builder.values).invoke(fqName);
        if (reportLevel != null) {
            return reportLevel;
        }
        FormBody.Builder builder2 = JavaNullabilityAnnotationSettingsKt.NULLABILITY_ANNOTATION_SETTINGS;
        builder2.getClass();
        JavaNullabilityAnnotationsStatus javaNullabilityAnnotationsStatus = (JavaNullabilityAnnotationsStatus) ((ViewSizeResolver$size$3$1) builder2.values).invoke(fqName);
        if (javaNullabilityAnnotationsStatus == null) {
            return ReportLevel.IGNORE;
        }
        KotlinVersion kotlinVersion2 = javaNullabilityAnnotationsStatus.sinceVersion;
        return (kotlinVersion2 == null || kotlinVersion2.version - kotlinVersion.version > 0) ? javaNullabilityAnnotationsStatus.reportLevelBefore : javaNullabilityAnnotationsStatus.reportLevelAfter;
    }
}
