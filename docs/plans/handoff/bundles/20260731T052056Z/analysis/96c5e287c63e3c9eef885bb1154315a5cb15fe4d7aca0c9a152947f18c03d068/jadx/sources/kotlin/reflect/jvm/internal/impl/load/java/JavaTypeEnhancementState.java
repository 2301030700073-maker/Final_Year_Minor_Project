package kotlin.reflect.jvm.internal.impl.load.java;

import kotlin.KotlinVersion;
import kotlin.reflect.jvm.internal.impl.name.FqName;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class JavaTypeEnhancementState {
    public static final JavaTypeEnhancementState DEFAULT;
    public final boolean disabledDefaultAnnotations;
    public final Jsr305Settings jsr305;

    static {
        FqName fqName = JavaNullabilityAnnotationSettingsKt.JSPECIFY_ANNOTATIONS_PACKAGE;
        KotlinVersion kotlinVersion = KotlinVersion.CURRENT;
        kotlinVersion.getClass();
        JavaNullabilityAnnotationsStatus javaNullabilityAnnotationsStatus = JavaNullabilityAnnotationSettingsKt.JSR_305_DEFAULT_SETTINGS;
        KotlinVersion kotlinVersion2 = javaNullabilityAnnotationsStatus.sinceVersion;
        ReportLevel reportLevel = (kotlinVersion2 == null || kotlinVersion2.version - kotlinVersion.version > 0) ? javaNullabilityAnnotationsStatus.reportLevelBefore : javaNullabilityAnnotationsStatus.reportLevelAfter;
        reportLevel.getClass();
        Jsr305Settings jsr305Settings = new Jsr305Settings(reportLevel, reportLevel == ReportLevel.WARN ? null : reportLevel);
        JavaTypeEnhancementState$Companion$DEFAULT$1 javaTypeEnhancementState$Companion$DEFAULT$1 = JavaTypeEnhancementState$Companion$DEFAULT$1.INSTANCE;
        DEFAULT = new JavaTypeEnhancementState(jsr305Settings);
    }

    public JavaTypeEnhancementState(Jsr305Settings jsr305Settings) {
        JavaTypeEnhancementState$Companion$DEFAULT$1 javaTypeEnhancementState$Companion$DEFAULT$1 = JavaTypeEnhancementState$Companion$DEFAULT$1.INSTANCE;
        this.jsr305 = jsr305Settings;
        this.disabledDefaultAnnotations = jsr305Settings.isDisabled || javaTypeEnhancementState$Companion$DEFAULT$1.invoke(JavaNullabilityAnnotationSettingsKt.JSPECIFY_ANNOTATIONS_PACKAGE) == ReportLevel.IGNORE;
    }

    public final String toString() {
        return "JavaTypeEnhancementState(jsr305=" + this.jsr305 + ", getReportLevelForAnnotation=" + JavaTypeEnhancementState$Companion$DEFAULT$1.INSTANCE + ')';
    }
}
