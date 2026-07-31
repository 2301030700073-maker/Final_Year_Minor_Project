package kotlin.reflect.jvm.internal.impl.metadata.deserialization;

import androidx.compose.runtime.composer.gapbuffer.changelist.Operation;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Class;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$MemberKind;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Modality;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Visibility;
import kotlin.reflect.jvm.internal.impl.protobuf.Internal;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class Flags {
    public static final EnumLiteFlagField CLASS_KIND;
    public static final BooleanFlagField DECLARES_DEFAULT_VALUE;
    public static final BooleanFlagField DEFINITELY_NOT_NULL_TYPE;
    public static final BooleanFlagField HAS_ANNOTATIONS;
    public static final BooleanFlagField HAS_CONSTANT;
    public static final BooleanFlagField HAS_GETTER;
    public static final BooleanFlagField HAS_SETTER;
    public static final BooleanFlagField IS_CONST;
    public static final BooleanFlagField IS_CONSTRUCTOR_WITH_NON_STABLE_PARAMETER_NAMES;
    public static final BooleanFlagField IS_CROSSINLINE;
    public static final BooleanFlagField IS_DATA;
    public static final BooleanFlagField IS_DELEGATED;
    public static final BooleanFlagField IS_EXPECT_CLASS;
    public static final BooleanFlagField IS_EXPECT_FUNCTION;
    public static final BooleanFlagField IS_EXPECT_PROPERTY;
    public static final BooleanFlagField IS_EXTERNAL_ACCESSOR;
    public static final BooleanFlagField IS_EXTERNAL_CLASS;
    public static final BooleanFlagField IS_EXTERNAL_FUNCTION;
    public static final BooleanFlagField IS_EXTERNAL_PROPERTY;
    public static final BooleanFlagField IS_FUNCTION_WITH_NON_STABLE_PARAMETER_NAMES;
    public static final BooleanFlagField IS_FUN_INTERFACE;
    public static final BooleanFlagField IS_INFIX;
    public static final BooleanFlagField IS_INLINE;
    public static final BooleanFlagField IS_INLINE_ACCESSOR;
    public static final BooleanFlagField IS_INNER;
    public static final BooleanFlagField IS_LATEINIT;
    public static final BooleanFlagField IS_NOINLINE;
    public static final BooleanFlagField IS_NOT_DEFAULT;
    public static final BooleanFlagField IS_OPERATOR;
    public static final BooleanFlagField IS_SECONDARY;
    public static final BooleanFlagField IS_SUSPEND;
    public static final BooleanFlagField IS_TAILREC;
    public static final BooleanFlagField IS_UNSIGNED;
    public static final BooleanFlagField IS_VALUE_CLASS;
    public static final BooleanFlagField IS_VAR;
    public static final EnumLiteFlagField MEMBER_KIND;
    public static final EnumLiteFlagField MODALITY;
    public static final BooleanFlagField SUSPEND_TYPE;
    public static final EnumLiteFlagField VISIBILITY;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class BooleanFlagField extends Operation {
        public final Boolean get(int i) {
            return Boolean.valueOf(((1 << this.ints) & i) != 0);
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class EnumLiteFlagField extends Operation {
        public final Internal.EnumLite[] values;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public EnumLiteFlagField(int r6, kotlin.reflect.jvm.internal.impl.protobuf.Internal.EnumLite[] r7) {
            /*
                r5 = this;
                r0 = 0
                if (r7 == 0) goto L28
                int r1 = r7.length
                r2 = 1
                int r1 = r1 - r2
                if (r1 != 0) goto La
                r3 = r2
                goto L14
            La:
                r3 = 31
            Lc:
                if (r3 < 0) goto L1e
                int r4 = r2 << r3
                r4 = r4 & r1
                if (r4 == 0) goto L1b
                int r3 = r3 + r2
            L14:
                r0 = 0
                r5.<init>(r6, r3, r2, r0)
                r5.values = r7
                return
            L1b:
                int r3 = r3 + (-1)
                goto Lc
            L1e:
                java.lang.String r5 = "Empty enum: "
                java.lang.Class r6 = r7.getClass()
                com.google.gson.Gson$$ExternalSyntheticBUOutline0.m$3(r5, r6)
                throw r0
            L28:
                java.lang.String r5 = "Argument for @NotNull parameter 'enumEntries' of kotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$EnumLiteFlagField.bitWidth must not be null"
                okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m(r5)
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.metadata.deserialization.Flags.EnumLiteFlagField.<init>(int, kotlin.reflect.jvm.internal.impl.protobuf.Internal$EnumLite[]):void");
        }

        public final Object get(int i) {
            int i2 = (1 << this.objects) - 1;
            int i3 = this.ints;
            int i4 = (i & (i2 << i3)) >> i3;
            for (Internal.EnumLite enumLite : this.values) {
                if (enumLite.getNumber() == i4) {
                    return enumLite;
                }
            }
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x004b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ void $$$reportNull$$$0(int r5) {
        /*
            r0 = 3
            java.lang.Object[] r0 = new java.lang.Object[r0]
            r1 = 0
            r2 = 2
            r3 = 1
            if (r5 == r3) goto L2c
            if (r5 == r2) goto L27
            r4 = 5
            if (r5 == r4) goto L2c
            r4 = 6
            if (r5 == r4) goto L22
            r4 = 8
            if (r5 == r4) goto L2c
            r4 = 9
            if (r5 == r4) goto L22
            r4 = 11
            if (r5 == r4) goto L2c
            java.lang.String r4 = "visibility"
            r0[r1] = r4
            goto L30
        L22:
            java.lang.String r4 = "memberKind"
            r0[r1] = r4
            goto L30
        L27:
            java.lang.String r4 = "kind"
            r0[r1] = r4
            goto L30
        L2c:
            java.lang.String r4 = "modality"
            r0[r1] = r4
        L30:
            java.lang.String r1 = "kotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags"
            r0[r3] = r1
            switch(r5) {
                case 3: goto L4b;
                case 4: goto L46;
                case 5: goto L46;
                case 6: goto L46;
                case 7: goto L41;
                case 8: goto L41;
                case 9: goto L41;
                case 10: goto L3c;
                case 11: goto L3c;
                default: goto L37;
            }
        L37:
            java.lang.String r5 = "getClassFlags"
            r0[r2] = r5
            goto L4f
        L3c:
            java.lang.String r5 = "getAccessorFlags"
            r0[r2] = r5
            goto L4f
        L41:
            java.lang.String r5 = "getPropertyFlags"
            r0[r2] = r5
            goto L4f
        L46:
            java.lang.String r5 = "getFunctionFlags"
            r0[r2] = r5
            goto L4f
        L4b:
            java.lang.String r5 = "getConstructorFlags"
            r0[r2] = r5
        L4f:
            java.lang.String r5 = "Argument for @NotNull parameter '%s' of %s.%s must not be null"
            java.lang.String r5 = java.lang.String.format(r5, r0)
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            r0.<init>(r5)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.metadata.deserialization.Flags.$$$reportNull$$$0(int):void");
    }

    static {
        BooleanFlagField booleanFirst = Operation.booleanFirst();
        SUSPEND_TYPE = booleanFirst;
        DEFINITELY_NOT_NULL_TYPE = Operation.booleanAfter(booleanFirst);
        BooleanFlagField booleanFirst2 = Operation.booleanFirst();
        HAS_ANNOTATIONS = booleanFirst2;
        EnumLiteFlagField enumLiteFlagField = new EnumLiteFlagField(1, ProtoBuf$Visibility.values());
        VISIBILITY = enumLiteFlagField;
        ProtoBuf$Modality[] values = ProtoBuf$Modality.values();
        int i = 1 + enumLiteFlagField.objects;
        EnumLiteFlagField enumLiteFlagField2 = new EnumLiteFlagField(i, values);
        MODALITY = enumLiteFlagField2;
        ProtoBuf$Class.Kind[] values2 = ProtoBuf$Class.Kind.values();
        int i2 = enumLiteFlagField2.objects;
        EnumLiteFlagField enumLiteFlagField3 = new EnumLiteFlagField(i + i2, values2);
        CLASS_KIND = enumLiteFlagField3;
        BooleanFlagField booleanAfter = Operation.booleanAfter(enumLiteFlagField3);
        IS_INNER = booleanAfter;
        BooleanFlagField booleanAfter2 = Operation.booleanAfter(booleanAfter);
        IS_DATA = booleanAfter2;
        BooleanFlagField booleanAfter3 = Operation.booleanAfter(booleanAfter2);
        IS_EXTERNAL_CLASS = booleanAfter3;
        BooleanFlagField booleanAfter4 = Operation.booleanAfter(booleanAfter3);
        IS_EXPECT_CLASS = booleanAfter4;
        BooleanFlagField booleanAfter5 = Operation.booleanAfter(booleanAfter4);
        IS_VALUE_CLASS = booleanAfter5;
        IS_FUN_INTERFACE = Operation.booleanAfter(booleanAfter5);
        BooleanFlagField booleanAfter6 = Operation.booleanAfter(enumLiteFlagField);
        IS_SECONDARY = booleanAfter6;
        IS_CONSTRUCTOR_WITH_NON_STABLE_PARAMETER_NAMES = Operation.booleanAfter(booleanAfter6);
        EnumLiteFlagField enumLiteFlagField4 = new EnumLiteFlagField(i + i2, ProtoBuf$MemberKind.values());
        MEMBER_KIND = enumLiteFlagField4;
        BooleanFlagField booleanAfter7 = Operation.booleanAfter(enumLiteFlagField4);
        IS_OPERATOR = booleanAfter7;
        BooleanFlagField booleanAfter8 = Operation.booleanAfter(booleanAfter7);
        IS_INFIX = booleanAfter8;
        BooleanFlagField booleanAfter9 = Operation.booleanAfter(booleanAfter8);
        IS_INLINE = booleanAfter9;
        BooleanFlagField booleanAfter10 = Operation.booleanAfter(booleanAfter9);
        IS_TAILREC = booleanAfter10;
        BooleanFlagField booleanAfter11 = Operation.booleanAfter(booleanAfter10);
        IS_EXTERNAL_FUNCTION = booleanAfter11;
        BooleanFlagField booleanAfter12 = Operation.booleanAfter(booleanAfter11);
        IS_SUSPEND = booleanAfter12;
        BooleanFlagField booleanAfter13 = Operation.booleanAfter(booleanAfter12);
        IS_EXPECT_FUNCTION = booleanAfter13;
        IS_FUNCTION_WITH_NON_STABLE_PARAMETER_NAMES = Operation.booleanAfter(booleanAfter13);
        BooleanFlagField booleanAfter14 = Operation.booleanAfter(enumLiteFlagField4);
        IS_VAR = booleanAfter14;
        BooleanFlagField booleanAfter15 = Operation.booleanAfter(booleanAfter14);
        HAS_GETTER = booleanAfter15;
        BooleanFlagField booleanAfter16 = Operation.booleanAfter(booleanAfter15);
        HAS_SETTER = booleanAfter16;
        BooleanFlagField booleanAfter17 = Operation.booleanAfter(booleanAfter16);
        IS_CONST = booleanAfter17;
        BooleanFlagField booleanAfter18 = Operation.booleanAfter(booleanAfter17);
        IS_LATEINIT = booleanAfter18;
        BooleanFlagField booleanAfter19 = Operation.booleanAfter(booleanAfter18);
        HAS_CONSTANT = booleanAfter19;
        BooleanFlagField booleanAfter20 = Operation.booleanAfter(booleanAfter19);
        IS_EXTERNAL_PROPERTY = booleanAfter20;
        BooleanFlagField booleanAfter21 = Operation.booleanAfter(booleanAfter20);
        IS_DELEGATED = booleanAfter21;
        IS_EXPECT_PROPERTY = Operation.booleanAfter(booleanAfter21);
        BooleanFlagField booleanAfter22 = Operation.booleanAfter(booleanFirst2);
        DECLARES_DEFAULT_VALUE = booleanAfter22;
        BooleanFlagField booleanAfter23 = Operation.booleanAfter(booleanAfter22);
        IS_CROSSINLINE = booleanAfter23;
        IS_NOINLINE = Operation.booleanAfter(booleanAfter23);
        BooleanFlagField booleanAfter24 = Operation.booleanAfter(enumLiteFlagField2);
        IS_NOT_DEFAULT = booleanAfter24;
        BooleanFlagField booleanAfter25 = Operation.booleanAfter(booleanAfter24);
        IS_EXTERNAL_ACCESSOR = booleanAfter25;
        IS_INLINE_ACCESSOR = Operation.booleanAfter(booleanAfter25);
        IS_UNSIGNED = Operation.booleanFirst();
    }
}
