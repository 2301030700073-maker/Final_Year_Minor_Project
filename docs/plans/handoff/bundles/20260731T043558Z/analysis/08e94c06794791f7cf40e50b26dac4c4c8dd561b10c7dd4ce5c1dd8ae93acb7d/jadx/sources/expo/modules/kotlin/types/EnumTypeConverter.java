package expo.modules.kotlin.types;

import com.facebook.react.bridge.Dynamic;
import expo.modules.core.logging.Logger;
import expo.modules.kotlin.AppContext;
import expo.modules.kotlin.CoreLoggerKt;
import expo.modules.kotlin.ReadableTypeExtensionsKt;
import expo.modules.kotlin.exception.EnumNoSuchValueException;
import expo.modules.kotlin.exception.IncompatibleArgTypeException;
import expo.modules.kotlin.jni.ExpectedType;
import java.lang.reflect.Field;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlin.reflect.KFunction;
import kotlin.reflect.KParameter;
import kotlin.reflect.full.KClasses;
import kotlin.reflect.full.KClassifiers;

/* compiled from: EnumTypeConverter.kt */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\u0018\u00002\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00020\u0001B!\u0012\u0010\u0010\u0003\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bJ\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0006H\u0016J\u001e\u0010\u0012\u001a\u0006\u0012\u0002\b\u00030\u00022\u0006\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0016J\u001e\u0010\u0017\u001a\u0006\u0012\u0002\b\u00030\u00022\u0006\u0010\u0013\u001a\u00020\u00182\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0016J-\u0010\u0019\u001a\u0006\u0012\u0002\b\u00030\u00022\u0006\u0010\u001a\u001a\u00020\u001b2\u0012\u0010\t\u001a\u000e\u0012\n\b\u0001\u0012\u0006\u0012\u0002\b\u00030\u00020\nH\u0002¢\u0006\u0002\u0010\u001cJ5\u0010\u001d\u001a\u0006\u0012\u0002\b\u00030\u00022\u0006\u0010\u001e\u001a\u00020\u00182\u0012\u0010\t\u001a\u000e\u0012\n\b\u0001\u0012\u0006\u0012\u0002\b\u00030\u00020\n2\u0006\u0010\u001f\u001a\u00020\u001bH\u0002¢\u0006\u0002\u0010 R\u0018\u0010\u0003\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000RD\u0010\t\u001a6\u0012\u0014\u0012\u0012\u0012\u0002\b\u0003 \u000b*\b\u0012\u0002\b\u0003\u0018\u00010\u00020\u0002 \u000b*\u001a\u0012\u0016\b\u0001\u0012\u0012\u0012\u0002\b\u0003 \u000b*\b\u0012\u0002\b\u0003\u0018\u00010\u00020\u00020\n0\nX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\fR\u0018\u0010\r\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00020\u000eX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006!"}, d2 = {"Lexpo/modules/kotlin/types/EnumTypeConverter;", "Lexpo/modules/kotlin/types/DynamicAwareTypeConverters;", "", "enumClass", "Lkotlin/reflect/KClass;", "isOptional", "", "<init>", "(Lkotlin/reflect/KClass;Z)V", "enumConstants", "", "kotlin.jvm.PlatformType", "[Ljava/lang/Enum;", "primaryConstructor", "Lkotlin/reflect/KFunction;", "getCppRequiredTypes", "Lexpo/modules/kotlin/jni/ExpectedType;", "isTrivial", "convertFromDynamic", "value", "Lcom/facebook/react/bridge/Dynamic;", "context", "Lexpo/modules/kotlin/AppContext;", "convertFromAny", "", "convertEnumWithoutParameter", "stringRepresentation", "", "(Ljava/lang/String;[Ljava/lang/Enum;)Ljava/lang/Enum;", "convertEnumWithParameter", "jsValue", "parameterName", "(Ljava/lang/Object;[Ljava/lang/Enum;Ljava/lang/String;)Ljava/lang/Enum;", "expo-modules-core_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes5.dex */
public final class EnumTypeConverter extends DynamicAwareTypeConverters<Enum<?>> {
    private final KClass<Enum<?>> enumClass;
    private final Enum<?>[] enumConstants;
    private final KFunction<Enum<?>> primaryConstructor;

    @Override // expo.modules.kotlin.types.TypeConverter
    public boolean isTrivial() {
        return false;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EnumTypeConverter(KClass<Enum<?>> enumClass, boolean z) {
        super(z);
        Intrinsics.checkNotNullParameter(enumClass, "enumClass");
        this.enumClass = enumClass;
        Object[] enumConstants = JvmClassMappingKt.getJavaClass((KClass) enumClass).getEnumConstants();
        if (enumConstants == null) {
            throw new IllegalArgumentException("Passed type is not an enum type".toString());
        }
        Enum<?>[] enumArr = (Enum[]) enumConstants;
        if (!(enumArr.length == 0)) {
            this.enumConstants = enumArr;
            KFunction<Enum<?>> primaryConstructor = KClasses.getPrimaryConstructor(enumClass);
            if (primaryConstructor == null) {
                throw new IllegalArgumentException("Cannot convert js value to enum without the primary constructor".toString());
            }
            this.primaryConstructor = primaryConstructor;
            if (Enumerable.class.isAssignableFrom(JvmClassMappingKt.getJavaClass((KClass) enumClass))) {
                return;
            }
            Logger.error$default(CoreLoggerKt.getLogger(), "Enum '" + enumClass + "' should inherit from " + Reflection.getOrCreateKotlinClass(Enumerable.class) + ".", null, 2, null);
            return;
        }
        throw new IllegalArgumentException("Passed enum type is empty".toString());
    }

    @Override // expo.modules.kotlin.types.TypeConverter
    /* renamed from: getCppRequiredTypes */
    public ExpectedType get$cppRequireType() {
        return ExpectedType.INSTANCE.forEnum();
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // expo.modules.kotlin.types.DynamicAwareTypeConverters
    public Enum<?> convertFromDynamic(Dynamic value, AppContext context) {
        Intrinsics.checkNotNullParameter(value, "value");
        if (this.primaryConstructor.getParameters().isEmpty()) {
            return convertEnumWithoutParameter(value.asString(), this.enumConstants);
        }
        if (this.primaryConstructor.getParameters().size() == 1) {
            Enum<?>[] enumArr = this.enumConstants;
            String name = ((KParameter) CollectionsKt.first((List) this.primaryConstructor.getParameters())).getName();
            Intrinsics.checkNotNull(name);
            return convertEnumWithParameter(value, enumArr, name);
        }
        throw new IncompatibleArgTypeException(ReadableTypeExtensionsKt.toKType(value.getType()), KClassifiers.createType$default(this.enumClass, null, false, null, 7, null), null, 4, null);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // expo.modules.kotlin.types.DynamicAwareTypeConverters
    public Enum<?> convertFromAny(Object value, AppContext context) {
        Intrinsics.checkNotNullParameter(value, "value");
        if (this.primaryConstructor.getParameters().isEmpty()) {
            return convertEnumWithoutParameter((String) value, this.enumConstants);
        }
        if (this.primaryConstructor.getParameters().size() == 1) {
            Enum<?>[] enumArr = this.enumConstants;
            String name = ((KParameter) CollectionsKt.first((List) this.primaryConstructor.getParameters())).getName();
            Intrinsics.checkNotNull(name);
            return convertEnumWithParameter(value, enumArr, name);
        }
        throw new IncompatibleArgTypeException(KClassifiers.createType$default(Reflection.getOrCreateKotlinClass(value.getClass()), null, false, null, 7, null), KClassifiers.createType$default(this.enumClass, null, false, null, 7, null), null, 4, null);
    }

    private final Enum<?> convertEnumWithoutParameter(String stringRepresentation, Enum<?>[] enumConstants) {
        Enum<?> r2;
        int length = enumConstants.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                r2 = null;
                break;
            }
            r2 = enumConstants[i];
            if (Intrinsics.areEqual(r2.name(), stringRepresentation)) {
                break;
            }
            i++;
        }
        if (r2 != null) {
            return r2;
        }
        throw new EnumNoSuchValueException(this.enumClass, enumConstants, stringRepresentation);
    }

    private final Enum<?> convertEnumWithParameter(Object jsValue, Enum<?>[] enumConstants, String parameterName) {
        int intValue;
        Object valueOf;
        Enum<?> r4;
        Field declaredField = JvmClassMappingKt.getJavaClass((KClass) this.enumClass).getDeclaredField(parameterName);
        if (declaredField == null) {
            throw new IllegalArgumentException(("Cannot find a property for " + parameterName + " parameter").toString());
        }
        declaredField.setAccessible(true);
        Class<?> type = declaredField.getType();
        if (jsValue instanceof Dynamic) {
            if (Intrinsics.areEqual(type, String.class)) {
                valueOf = ((Dynamic) jsValue).asString();
            } else {
                valueOf = Integer.valueOf(((Dynamic) jsValue).asInt());
            }
        } else if (Intrinsics.areEqual(type, String.class)) {
            Intrinsics.checkNotNull(jsValue, "null cannot be cast to non-null type kotlin.String");
            valueOf = (String) jsValue;
        } else {
            if (jsValue instanceof Double) {
                intValue = (int) ((Number) jsValue).doubleValue();
            } else {
                Intrinsics.checkNotNull(jsValue, "null cannot be cast to non-null type kotlin.Int");
                intValue = ((Integer) jsValue).intValue();
            }
            valueOf = Integer.valueOf(intValue);
        }
        int length = enumConstants.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                r4 = null;
                break;
            }
            r4 = enumConstants[i];
            if (Intrinsics.areEqual(declaredField.get(r4), valueOf)) {
                break;
            }
            i++;
        }
        if (r4 != null) {
            return r4;
        }
        throw new IllegalArgumentException(("Couldn't convert '" + jsValue + "' to " + this.enumClass.getSimpleName() + " where " + parameterName + " is the enum parameter").toString());
    }
}
