package kotlin.reflect.jvm.internal.impl.load.kotlin.header;

import androidx.compose.runtime.tooling.ComposeStackTraceBuilder;
import java.util.HashMap;
import java.util.Map;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.components.ReflectAnnotationSource;
import kotlin.reflect.jvm.internal.impl.load.java.JvmAnnotationNames;
import kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinJvmBinaryClass$AnnotationArgumentVisitor;
import kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinJvmBinaryClass$AnnotationArrayArgumentVisitor;
import kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinJvmBinaryClass$AnnotationVisitor;
import kotlin.reflect.jvm.internal.impl.load.kotlin.header.KotlinClassHeader;
import kotlin.reflect.jvm.internal.impl.load.kotlin.header.ReadKotlinClassHeaderAnnotationVisitor;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.constants.ClassLiteralValue;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ReadKotlinClassHeaderAnnotationVisitor implements KotlinJvmBinaryClass$AnnotationVisitor {
    public static final HashMap HEADER_KINDS;
    public static final boolean IGNORE_OLD_METADATA = "true".equals(System.getProperty("kotlin.ignore.old.metadata"));
    public String[] data;
    public int extraInt;
    public String extraString;
    public KotlinClassHeader.Kind headerKind;
    public String[] incompatibleData;
    public int[] metadataVersionArray;
    public String[] serializedIrFields;
    public String[] strings;

    static {
        HashMap hashMap = new HashMap();
        HEADER_KINDS = hashMap;
        hashMap.put(ClassId.topLevel(new FqName("kotlin.jvm.internal.KotlinClass")), KotlinClassHeader.Kind.CLASS);
        hashMap.put(ClassId.topLevel(new FqName("kotlin.jvm.internal.KotlinFileFacade")), KotlinClassHeader.Kind.FILE_FACADE);
        hashMap.put(ClassId.topLevel(new FqName("kotlin.jvm.internal.KotlinMultifileClass")), KotlinClassHeader.Kind.MULTIFILE_CLASS);
        hashMap.put(ClassId.topLevel(new FqName("kotlin.jvm.internal.KotlinMultifileClassPart")), KotlinClassHeader.Kind.MULTIFILE_CLASS_PART);
        hashMap.put(ClassId.topLevel(new FqName("kotlin.jvm.internal.KotlinSyntheticClass")), KotlinClassHeader.Kind.SYNTHETIC_CLASS);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinJvmBinaryClass$AnnotationVisitor
    public final KotlinJvmBinaryClass$AnnotationArgumentVisitor visitAnnotation(ClassId classId, ReflectAnnotationSource reflectAnnotationSource) {
        KotlinClassHeader.Kind kind;
        FqName asSingleFqName = classId.asSingleFqName();
        if (asSingleFqName.equals(JvmAnnotationNames.METADATA_FQ_NAME)) {
            return new KotlinMetadataArgumentVisitor(this, 0);
        }
        if (asSingleFqName.equals(JvmAnnotationNames.SERIALIZED_IR_FQ_NAME)) {
            return new KotlinMetadataArgumentVisitor(this, 1);
        }
        if (IGNORE_OLD_METADATA || this.headerKind != null || (kind = (KotlinClassHeader.Kind) HEADER_KINDS.get(classId)) == null) {
            return null;
        }
        this.headerKind = kind;
        return new KotlinMetadataArgumentVisitor(this, 2);
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class KotlinMetadataArgumentVisitor implements KotlinJvmBinaryClass$AnnotationArgumentVisitor {
        public final /* synthetic */ int $r8$classId;
        public final /* synthetic */ ReadKotlinClassHeaderAnnotationVisitor this$0;

        public /* synthetic */ KotlinMetadataArgumentVisitor(ReadKotlinClassHeaderAnnotationVisitor readKotlinClassHeaderAnnotationVisitor, int i) {
            this.$r8$classId = i;
            this.this$0 = readKotlinClassHeaderAnnotationVisitor;
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinJvmBinaryClass$AnnotationArgumentVisitor
        public final void visit(Name name, Object obj) {
            Map map;
            int i = this.$r8$classId;
            ReadKotlinClassHeaderAnnotationVisitor readKotlinClassHeaderAnnotationVisitor = this.this$0;
            switch (i) {
                case 0:
                    String asString = name.asString();
                    if (!"k".equals(asString)) {
                        if (!"mv".equals(asString)) {
                            if (!"xs".equals(asString)) {
                                if (!"xi".equals(asString)) {
                                    "pn".equals(asString);
                                    break;
                                } else if (obj instanceof Integer) {
                                    readKotlinClassHeaderAnnotationVisitor.extraInt = ((Integer) obj).intValue();
                                    break;
                                }
                            } else if (obj instanceof String) {
                                String str = (String) obj;
                                if (!str.isEmpty()) {
                                    readKotlinClassHeaderAnnotationVisitor.extraString = str;
                                    break;
                                }
                            }
                        } else if (obj instanceof int[]) {
                            readKotlinClassHeaderAnnotationVisitor.metadataVersionArray = (int[]) obj;
                            break;
                        }
                    } else if (obj instanceof Integer) {
                        KotlinClassHeader.Kind.Companion.getClass();
                        map = KotlinClassHeader.Kind.entryById;
                        KotlinClassHeader.Kind kind = (KotlinClassHeader.Kind) map.get((Integer) obj);
                        if (kind == null) {
                            kind = KotlinClassHeader.Kind.UNKNOWN;
                        }
                        readKotlinClassHeaderAnnotationVisitor.headerKind = kind;
                        break;
                    }
                    break;
                case 1:
                    break;
                default:
                    String asString2 = name.asString();
                    if (!"version".equals(asString2)) {
                        if ("multifileClassName".equals(asString2)) {
                            readKotlinClassHeaderAnnotationVisitor.extraString = obj instanceof String ? (String) obj : null;
                            break;
                        }
                    } else if (obj instanceof int[]) {
                        readKotlinClassHeaderAnnotationVisitor.metadataVersionArray = (int[]) obj;
                        break;
                    }
                    break;
            }
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinJvmBinaryClass$AnnotationArgumentVisitor
        public final KotlinJvmBinaryClass$AnnotationArgumentVisitor visitAnnotation(ClassId classId, Name name) {
            switch (this.$r8$classId) {
            }
            return null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinJvmBinaryClass$AnnotationArgumentVisitor
        public final KotlinJvmBinaryClass$AnnotationArrayArgumentVisitor visitArray(Name name) {
            final int i = 0;
            final int i2 = 1;
            switch (this.$r8$classId) {
                case 0:
                    String asString = name.asString();
                    if ("d1".equals(asString)) {
                        return new ComposeStackTraceBuilder() { // from class: kotlin.reflect.jvm.internal.impl.load.kotlin.header.ReadKotlinClassHeaderAnnotationVisitor.KotlinMetadataArgumentVisitor.1
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(1);
                            }

                            @Override // androidx.compose.runtime.tooling.ComposeStackTraceBuilder
                            public final void visitEnd(String[] strArr) {
                                int i3 = i;
                                KotlinJvmBinaryClass$AnnotationArgumentVisitor kotlinJvmBinaryClass$AnnotationArgumentVisitor = this;
                                switch (i3) {
                                    case 0:
                                        if (strArr == null) {
                                            _UtilJvmKt$$ExternalSyntheticLambda0.m("Argument for @NotNull parameter 'result' of kotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor$KotlinMetadataArgumentVisitor$1.visitEnd must not be null");
                                            break;
                                        } else {
                                            ((KotlinMetadataArgumentVisitor) kotlinJvmBinaryClass$AnnotationArgumentVisitor).this$0.data = strArr;
                                            break;
                                        }
                                    case 1:
                                        if (strArr == null) {
                                            _UtilJvmKt$$ExternalSyntheticLambda0.m("Argument for @NotNull parameter 'result' of kotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor$KotlinMetadataArgumentVisitor$2.visitEnd must not be null");
                                            break;
                                        } else {
                                            ((KotlinMetadataArgumentVisitor) kotlinJvmBinaryClass$AnnotationArgumentVisitor).this$0.strings = strArr;
                                            break;
                                        }
                                    default:
                                        if (strArr == null) {
                                            _UtilJvmKt$$ExternalSyntheticLambda0.m("Argument for @NotNull parameter 'result' of kotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor$KotlinSerializedIrArgumentVisitor$1.visitEnd must not be null");
                                            break;
                                        } else {
                                            ((KotlinMetadataArgumentVisitor) kotlinJvmBinaryClass$AnnotationArgumentVisitor).this$0.serializedIrFields = strArr;
                                            break;
                                        }
                                }
                            }
                        };
                    }
                    if ("d2".equals(asString)) {
                        return new ComposeStackTraceBuilder() { // from class: kotlin.reflect.jvm.internal.impl.load.kotlin.header.ReadKotlinClassHeaderAnnotationVisitor.KotlinMetadataArgumentVisitor.1
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(1);
                            }

                            @Override // androidx.compose.runtime.tooling.ComposeStackTraceBuilder
                            public final void visitEnd(String[] strArr) {
                                int i3 = i2;
                                KotlinJvmBinaryClass$AnnotationArgumentVisitor kotlinJvmBinaryClass$AnnotationArgumentVisitor = this;
                                switch (i3) {
                                    case 0:
                                        if (strArr == null) {
                                            _UtilJvmKt$$ExternalSyntheticLambda0.m("Argument for @NotNull parameter 'result' of kotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor$KotlinMetadataArgumentVisitor$1.visitEnd must not be null");
                                            break;
                                        } else {
                                            ((KotlinMetadataArgumentVisitor) kotlinJvmBinaryClass$AnnotationArgumentVisitor).this$0.data = strArr;
                                            break;
                                        }
                                    case 1:
                                        if (strArr == null) {
                                            _UtilJvmKt$$ExternalSyntheticLambda0.m("Argument for @NotNull parameter 'result' of kotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor$KotlinMetadataArgumentVisitor$2.visitEnd must not be null");
                                            break;
                                        } else {
                                            ((KotlinMetadataArgumentVisitor) kotlinJvmBinaryClass$AnnotationArgumentVisitor).this$0.strings = strArr;
                                            break;
                                        }
                                    default:
                                        if (strArr == null) {
                                            _UtilJvmKt$$ExternalSyntheticLambda0.m("Argument for @NotNull parameter 'result' of kotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor$KotlinSerializedIrArgumentVisitor$1.visitEnd must not be null");
                                            break;
                                        } else {
                                            ((KotlinMetadataArgumentVisitor) kotlinJvmBinaryClass$AnnotationArgumentVisitor).this$0.serializedIrFields = strArr;
                                            break;
                                        }
                                }
                            }
                        };
                    }
                    return null;
                case 1:
                    if (!"b".equals(name.asString())) {
                        return null;
                    }
                    final int i3 = 2;
                    return new ComposeStackTraceBuilder() { // from class: kotlin.reflect.jvm.internal.impl.load.kotlin.header.ReadKotlinClassHeaderAnnotationVisitor.KotlinMetadataArgumentVisitor.1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(1);
                        }

                        @Override // androidx.compose.runtime.tooling.ComposeStackTraceBuilder
                        public final void visitEnd(String[] strArr) {
                            int i32 = i3;
                            KotlinJvmBinaryClass$AnnotationArgumentVisitor kotlinJvmBinaryClass$AnnotationArgumentVisitor = this;
                            switch (i32) {
                                case 0:
                                    if (strArr == null) {
                                        _UtilJvmKt$$ExternalSyntheticLambda0.m("Argument for @NotNull parameter 'result' of kotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor$KotlinMetadataArgumentVisitor$1.visitEnd must not be null");
                                        break;
                                    } else {
                                        ((KotlinMetadataArgumentVisitor) kotlinJvmBinaryClass$AnnotationArgumentVisitor).this$0.data = strArr;
                                        break;
                                    }
                                case 1:
                                    if (strArr == null) {
                                        _UtilJvmKt$$ExternalSyntheticLambda0.m("Argument for @NotNull parameter 'result' of kotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor$KotlinMetadataArgumentVisitor$2.visitEnd must not be null");
                                        break;
                                    } else {
                                        ((KotlinMetadataArgumentVisitor) kotlinJvmBinaryClass$AnnotationArgumentVisitor).this$0.strings = strArr;
                                        break;
                                    }
                                default:
                                    if (strArr == null) {
                                        _UtilJvmKt$$ExternalSyntheticLambda0.m("Argument for @NotNull parameter 'result' of kotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor$KotlinSerializedIrArgumentVisitor$1.visitEnd must not be null");
                                        break;
                                    } else {
                                        ((KotlinMetadataArgumentVisitor) kotlinJvmBinaryClass$AnnotationArgumentVisitor).this$0.serializedIrFields = strArr;
                                        break;
                                    }
                            }
                        }
                    };
                default:
                    String asString2 = name.asString();
                    if ("data".equals(asString2) || "filePartClassNames".equals(asString2)) {
                        return new ComposeStackTraceBuilder(this) { // from class: kotlin.reflect.jvm.internal.impl.load.kotlin.header.ReadKotlinClassHeaderAnnotationVisitor$OldDeprecatedAnnotationArgumentVisitor$1
                            public final /* synthetic */ ReadKotlinClassHeaderAnnotationVisitor.KotlinMetadataArgumentVisitor this$1;

                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(1);
                                this.this$1 = this;
                            }

                            @Override // androidx.compose.runtime.tooling.ComposeStackTraceBuilder
                            public final void visitEnd(String[] strArr) {
                                int i4 = i;
                                ReadKotlinClassHeaderAnnotationVisitor.KotlinMetadataArgumentVisitor kotlinMetadataArgumentVisitor = this.this$1;
                                switch (i4) {
                                    case 0:
                                        if (strArr == null) {
                                            _UtilJvmKt$$ExternalSyntheticLambda0.m("Argument for @NotNull parameter 'data' of kotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor$OldDeprecatedAnnotationArgumentVisitor$1.visitEnd must not be null");
                                            break;
                                        } else {
                                            kotlinMetadataArgumentVisitor.this$0.data = strArr;
                                            break;
                                        }
                                    default:
                                        if (strArr == null) {
                                            _UtilJvmKt$$ExternalSyntheticLambda0.m("Argument for @NotNull parameter 'data' of kotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor$OldDeprecatedAnnotationArgumentVisitor$2.visitEnd must not be null");
                                            break;
                                        } else {
                                            kotlinMetadataArgumentVisitor.this$0.strings = strArr;
                                            break;
                                        }
                                }
                            }
                        };
                    }
                    if ("strings".equals(asString2)) {
                        return new ComposeStackTraceBuilder(this) { // from class: kotlin.reflect.jvm.internal.impl.load.kotlin.header.ReadKotlinClassHeaderAnnotationVisitor$OldDeprecatedAnnotationArgumentVisitor$1
                            public final /* synthetic */ ReadKotlinClassHeaderAnnotationVisitor.KotlinMetadataArgumentVisitor this$1;

                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(1);
                                this.this$1 = this;
                            }

                            @Override // androidx.compose.runtime.tooling.ComposeStackTraceBuilder
                            public final void visitEnd(String[] strArr) {
                                int i4 = i2;
                                ReadKotlinClassHeaderAnnotationVisitor.KotlinMetadataArgumentVisitor kotlinMetadataArgumentVisitor = this.this$1;
                                switch (i4) {
                                    case 0:
                                        if (strArr == null) {
                                            _UtilJvmKt$$ExternalSyntheticLambda0.m("Argument for @NotNull parameter 'data' of kotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor$OldDeprecatedAnnotationArgumentVisitor$1.visitEnd must not be null");
                                            break;
                                        } else {
                                            kotlinMetadataArgumentVisitor.this$0.data = strArr;
                                            break;
                                        }
                                    default:
                                        if (strArr == null) {
                                            _UtilJvmKt$$ExternalSyntheticLambda0.m("Argument for @NotNull parameter 'data' of kotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor$OldDeprecatedAnnotationArgumentVisitor$2.visitEnd must not be null");
                                            break;
                                        } else {
                                            kotlinMetadataArgumentVisitor.this$0.strings = strArr;
                                            break;
                                        }
                                }
                            }
                        };
                    }
                    return null;
            }
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinJvmBinaryClass$AnnotationArgumentVisitor
        public final void visitClassLiteral(Name name, ClassLiteralValue classLiteralValue) {
            int i = this.$r8$classId;
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinJvmBinaryClass$AnnotationArgumentVisitor
        public final void visitEnd() {
            int i = this.$r8$classId;
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinJvmBinaryClass$AnnotationArgumentVisitor
        public final void visitEnum(Name name, ClassId classId, Name name2) {
            int i = this.$r8$classId;
        }

        private final void visitEnd$kotlin$reflect$jvm$internal$impl$load$kotlin$header$ReadKotlinClassHeaderAnnotationVisitor$KotlinMetadataArgumentVisitor() {
        }

        private final void visitEnd$kotlin$reflect$jvm$internal$impl$load$kotlin$header$ReadKotlinClassHeaderAnnotationVisitor$KotlinSerializedIrArgumentVisitor() {
        }

        private final void visitEnd$kotlin$reflect$jvm$internal$impl$load$kotlin$header$ReadKotlinClassHeaderAnnotationVisitor$OldDeprecatedAnnotationArgumentVisitor() {
        }

        private final void visit$kotlin$reflect$jvm$internal$impl$load$kotlin$header$ReadKotlinClassHeaderAnnotationVisitor$KotlinSerializedIrArgumentVisitor(Name name, Object obj) {
        }

        private final void visitClassLiteral$kotlin$reflect$jvm$internal$impl$load$kotlin$header$ReadKotlinClassHeaderAnnotationVisitor$KotlinMetadataArgumentVisitor(Name name, ClassLiteralValue classLiteralValue) {
        }

        private final void visitClassLiteral$kotlin$reflect$jvm$internal$impl$load$kotlin$header$ReadKotlinClassHeaderAnnotationVisitor$KotlinSerializedIrArgumentVisitor(Name name, ClassLiteralValue classLiteralValue) {
        }

        private final void visitClassLiteral$kotlin$reflect$jvm$internal$impl$load$kotlin$header$ReadKotlinClassHeaderAnnotationVisitor$OldDeprecatedAnnotationArgumentVisitor(Name name, ClassLiteralValue classLiteralValue) {
        }

        private final void visitEnum$kotlin$reflect$jvm$internal$impl$load$kotlin$header$ReadKotlinClassHeaderAnnotationVisitor$KotlinMetadataArgumentVisitor(Name name, ClassId classId, Name name2) {
        }

        private final void visitEnum$kotlin$reflect$jvm$internal$impl$load$kotlin$header$ReadKotlinClassHeaderAnnotationVisitor$KotlinSerializedIrArgumentVisitor(Name name, ClassId classId, Name name2) {
        }

        private final void visitEnum$kotlin$reflect$jvm$internal$impl$load$kotlin$header$ReadKotlinClassHeaderAnnotationVisitor$OldDeprecatedAnnotationArgumentVisitor(Name name, ClassId classId, Name name2) {
        }
    }
}
