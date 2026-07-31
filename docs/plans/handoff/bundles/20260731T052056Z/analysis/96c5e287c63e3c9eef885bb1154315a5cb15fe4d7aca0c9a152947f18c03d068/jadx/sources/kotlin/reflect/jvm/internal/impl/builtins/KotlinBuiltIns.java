package kotlin.reflect.jvm.internal.impl.builtins;

import androidx.transition.Transition;
import coil3.ImageLoader$Builder;
import coil3.network.okhttp.internal.CallsKt$await$2$1;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.reflect.jvm.internal.impl.builtins.BuiltInsLoader;
import kotlin.reflect.jvm.internal.impl.builtins.StandardNames;
import kotlin.reflect.jvm.internal.impl.builtins.functions.BuiltInFictitiousFunctionClassFactory;
import kotlin.reflect.jvm.internal.impl.builtins.functions.FunctionClassKind;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DescriptorUtilKt;
import kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentProviderImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.PropertyDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.deserialization.AdditionalClassPartsProvider;
import kotlin.reflect.jvm.internal.impl.descriptors.deserialization.PlatformDependentDeclarationFilter;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.DeclarationDescriptorNonRootImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.PackageFragmentDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertyGetterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertySetterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.incremental.components.NoLookupLocation;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.FqNameUnsafe;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorUtils;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.ErrorReporter;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.ProtoEnumFlags;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.builtins.BuiltInSerializerProtocol;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.builtins.BuiltInsLoaderImpl;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.builtins.BuiltInsPackageFragmentImpl;
import kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeKt;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.StarProjectionImpl;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.TypeUtils;
import kotlin.reflect.jvm.internal.impl.types.UnwrappedType;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.uuid.UuidKt;
import okhttp3.ConnectionPool;
import okhttp3.Dispatcher$promoteAndExecute$Effects;
import okhttp3.FormBody;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.ByteString;
import org.maplibre.android.log.Logger;
import org.wikipedia.databinding.ActivityGalleryBinding;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class KotlinBuiltIns {
    public static final Name BUILTINS_MODULE_NAME = Name.special("<built-ins module>");
    public final LockBasedStorageManager.MapBasedMemoizedFunctionToNotNull builtInClassesByName;
    public ModuleDescriptorImpl builtInsModule;
    public final LockBasedStorageManager.LockBasedNotNullLazyValue primitives;
    public final LockBasedStorageManager storageManager;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Primitives {
        public final HashMap kotlinArrayTypeToPrimitiveKotlinType;
        public final EnumMap primitiveTypeToArrayKotlinType;

        public Primitives(EnumMap enumMap, HashMap hashMap, HashMap hashMap2) {
            this.primitiveTypeToArrayKotlinType = enumMap;
            this.kotlinArrayTypeToPrimitiveKotlinType = hashMap2;
        }
    }

    public static /* synthetic */ void $$$reportNull$$$0(int i) {
        String str;
        int i2;
        switch (i) {
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 11:
            case IMAGE_VALUE:
            case 15:
            case RADIO_GROUP_VALUE:
            case RADIO_BUTTON_VALUE:
            case RADIO_ROW_VALUE:
            case RADIO_COLUMN_VALUE:
            case SIZE_BOX_VALUE:
            case 23:
            case 24:
            case 25:
            case 26:
            case 27:
            case 28:
            case 29:
            case 30:
            case 31:
            case 32:
            case 33:
            case 34:
            case 35:
            case 36:
            case 37:
            case 38:
            case 39:
            case 40:
            case 41:
            case 42:
            case 43:
            case 44:
            case 45:
            case 47:
            case 48:
            case 49:
            case 50:
            case 51:
            case 52:
            case 54:
            case 55:
            case 56:
            case 57:
            case 58:
            case 59:
            case 60:
            case 61:
            case 62:
            case 63:
            case 64:
            case 65:
            case 66:
            case 68:
            case 69:
            case 70:
            case 74:
            case 81:
            case 84:
            case 86:
            case 87:
                str = "@NotNull method %s.%s must not return null";
                break;
            case 9:
            case 10:
            case 12:
            case LINEAR_PROGRESS_INDICATOR_VALUE:
            case LAZY_VERTICAL_GRID_VALUE:
            case VERTICAL_GRID_ITEM_VALUE:
            case 46:
            case 53:
            case 67:
            case 71:
            case 72:
            case 73:
            case 75:
            case 76:
            case 77:
            case 78:
            case 79:
            case 80:
            case 82:
            case 83:
            case 85:
            default:
                str = "Argument for @NotNull parameter '%s' of %s.%s must not be null";
                break;
        }
        switch (i) {
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 11:
            case IMAGE_VALUE:
            case 15:
            case RADIO_GROUP_VALUE:
            case RADIO_BUTTON_VALUE:
            case RADIO_ROW_VALUE:
            case RADIO_COLUMN_VALUE:
            case SIZE_BOX_VALUE:
            case 23:
            case 24:
            case 25:
            case 26:
            case 27:
            case 28:
            case 29:
            case 30:
            case 31:
            case 32:
            case 33:
            case 34:
            case 35:
            case 36:
            case 37:
            case 38:
            case 39:
            case 40:
            case 41:
            case 42:
            case 43:
            case 44:
            case 45:
            case 47:
            case 48:
            case 49:
            case 50:
            case 51:
            case 52:
            case 54:
            case 55:
            case 56:
            case 57:
            case 58:
            case 59:
            case 60:
            case 61:
            case 62:
            case 63:
            case 64:
            case 65:
            case 66:
            case 68:
            case 69:
            case 70:
            case 74:
            case 81:
            case 84:
            case 86:
            case 87:
                i2 = 2;
                break;
            case 9:
            case 10:
            case 12:
            case LINEAR_PROGRESS_INDICATOR_VALUE:
            case LAZY_VERTICAL_GRID_VALUE:
            case VERTICAL_GRID_ITEM_VALUE:
            case 46:
            case 53:
            case 67:
            case 71:
            case 72:
            case 73:
            case 75:
            case 76:
            case 77:
            case 78:
            case 79:
            case 80:
            case 82:
            case 83:
            case 85:
            default:
                i2 = 3;
                break;
        }
        Object[] objArr = new Object[i2];
        switch (i) {
            case 1:
            case 72:
                objArr[0] = "module";
                break;
            case 2:
                objArr[0] = "computation";
                break;
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 11:
            case IMAGE_VALUE:
            case 15:
            case RADIO_GROUP_VALUE:
            case RADIO_BUTTON_VALUE:
            case RADIO_ROW_VALUE:
            case RADIO_COLUMN_VALUE:
            case SIZE_BOX_VALUE:
            case 23:
            case 24:
            case 25:
            case 26:
            case 27:
            case 28:
            case 29:
            case 30:
            case 31:
            case 32:
            case 33:
            case 34:
            case 35:
            case 36:
            case 37:
            case 38:
            case 39:
            case 40:
            case 41:
            case 42:
            case 43:
            case 44:
            case 45:
            case 47:
            case 48:
            case 49:
            case 50:
            case 51:
            case 52:
            case 54:
            case 55:
            case 56:
            case 57:
            case 58:
            case 59:
            case 60:
            case 61:
            case 62:
            case 63:
            case 64:
            case 65:
            case 66:
            case 68:
            case 69:
            case 70:
            case 74:
            case 81:
            case 84:
            case 86:
            case 87:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns";
                break;
            case 9:
            case 10:
            case 76:
            case 77:
            case 89:
            case 96:
            case 103:
            case 107:
            case 108:
            case 143:
            case 146:
            case 147:
            case 149:
            case 157:
            case 158:
            case 159:
            case 160:
                objArr[0] = "descriptor";
                break;
            case 12:
            case 98:
            case 100:
            case 102:
            case 104:
            case 106:
            case 135:
                objArr[0] = "fqName";
                break;
            case LINEAR_PROGRESS_INDICATOR_VALUE:
                objArr[0] = "simpleName";
                break;
            case LAZY_VERTICAL_GRID_VALUE:
            case VERTICAL_GRID_ITEM_VALUE:
            case 53:
            case 88:
            case 90:
            case 91:
            case 92:
            case 93:
            case 94:
            case 95:
            case 97:
            case Logger.NONE /* 99 */:
            case 105:
            case 109:
            case 110:
            case 111:
            case 113:
            case 114:
            case 115:
            case 116:
            case 117:
            case 118:
            case 119:
            case 120:
            case 121:
            case 122:
            case 123:
            case 124:
            case 125:
            case 126:
            case 127:
            case 128:
            case 129:
            case 130:
            case 131:
            case 132:
            case 133:
            case 134:
            case 136:
            case 137:
            case 138:
            case 139:
            case 140:
            case 141:
            case 142:
            case 144:
            case 145:
            case 148:
            case 150:
            case 151:
            case 152:
            case 153:
            case 154:
            case 155:
            case 156:
            case 162:
                objArr[0] = "type";
                break;
            case 46:
                objArr[0] = "classSimpleName";
                break;
            case 67:
                objArr[0] = "arrayType";
                break;
            case 71:
                objArr[0] = "notNullArrayType";
                break;
            case 73:
                objArr[0] = "primitiveType";
                break;
            case 75:
                objArr[0] = "kotlinType";
                break;
            case 78:
            case 82:
                objArr[0] = "projectionType";
                break;
            case 79:
            case 83:
            case 85:
                objArr[0] = "argument";
                break;
            case 80:
                objArr[0] = "annotations";
                break;
            case 101:
                objArr[0] = "typeConstructor";
                break;
            case 112:
                objArr[0] = "classDescriptor";
                break;
            case 161:
                objArr[0] = "declarationDescriptor";
                break;
            default:
                objArr[0] = "storageManager";
                break;
        }
        switch (i) {
            case 3:
                objArr[1] = "getAdditionalClassPartsProvider";
                break;
            case 4:
                objArr[1] = "getPlatformDependentDeclarationFilter";
                break;
            case 5:
                objArr[1] = "getClassDescriptorFactories";
                break;
            case 6:
                objArr[1] = "getStorageManager";
                break;
            case 7:
                objArr[1] = "getBuiltInsModule";
                break;
            case 8:
                objArr[1] = "getBuiltInPackagesImportedByDefault";
                break;
            case 9:
            case 10:
            case 12:
            case LINEAR_PROGRESS_INDICATOR_VALUE:
            case LAZY_VERTICAL_GRID_VALUE:
            case VERTICAL_GRID_ITEM_VALUE:
            case 46:
            case 53:
            case 67:
            case 71:
            case 72:
            case 73:
            case 75:
            case 76:
            case 77:
            case 78:
            case 79:
            case 80:
            case 82:
            case 83:
            case 85:
            default:
                objArr[1] = "kotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns";
                break;
            case 11:
                objArr[1] = "getBuiltInsPackageScope";
                break;
            case IMAGE_VALUE:
                objArr[1] = "getBuiltInClassByFqName";
                break;
            case 15:
                objArr[1] = "getBuiltInClassByName";
                break;
            case RADIO_GROUP_VALUE:
                objArr[1] = "getSuspendFunction";
                break;
            case RADIO_BUTTON_VALUE:
                objArr[1] = "getKFunction";
                break;
            case RADIO_ROW_VALUE:
                objArr[1] = "getKSuspendFunction";
                break;
            case RADIO_COLUMN_VALUE:
                objArr[1] = "getKClass";
                break;
            case SIZE_BOX_VALUE:
                objArr[1] = "getKCallable";
                break;
            case 23:
                objArr[1] = "getKProperty";
                break;
            case 24:
                objArr[1] = "getKProperty0";
                break;
            case 25:
                objArr[1] = "getKProperty1";
                break;
            case 26:
                objArr[1] = "getKProperty2";
                break;
            case 27:
                objArr[1] = "getKMutableProperty0";
                break;
            case 28:
                objArr[1] = "getKMutableProperty1";
                break;
            case 29:
                objArr[1] = "getKMutableProperty2";
                break;
            case 30:
                objArr[1] = "getIterator";
                break;
            case 31:
                objArr[1] = "getIterable";
                break;
            case 32:
                objArr[1] = "getMutableIterable";
                break;
            case 33:
                objArr[1] = "getMutableIterator";
                break;
            case 34:
                objArr[1] = "getCollection";
                break;
            case 35:
                objArr[1] = "getMutableCollection";
                break;
            case 36:
                objArr[1] = "getList";
                break;
            case 37:
                objArr[1] = "getMutableList";
                break;
            case 38:
                objArr[1] = "getSet";
                break;
            case 39:
                objArr[1] = "getMutableSet";
                break;
            case 40:
                objArr[1] = "getMap";
                break;
            case 41:
                objArr[1] = "getMutableMap";
                break;
            case 42:
                objArr[1] = "getMapEntry";
                break;
            case 43:
                objArr[1] = "getMutableMapEntry";
                break;
            case 44:
                objArr[1] = "getListIterator";
                break;
            case 45:
                objArr[1] = "getMutableListIterator";
                break;
            case 47:
                objArr[1] = "getBuiltInTypeByClassName";
                break;
            case 48:
                objArr[1] = "getNothingType";
                break;
            case 49:
                objArr[1] = "getNullableNothingType";
                break;
            case 50:
                objArr[1] = "getAnyType";
                break;
            case 51:
                objArr[1] = "getNullableAnyType";
                break;
            case 52:
                objArr[1] = "getDefaultBound";
                break;
            case 54:
                objArr[1] = "getPrimitiveKotlinType";
                break;
            case 55:
                objArr[1] = "getNumberType";
                break;
            case 56:
                objArr[1] = "getByteType";
                break;
            case 57:
                objArr[1] = "getShortType";
                break;
            case 58:
                objArr[1] = "getIntType";
                break;
            case 59:
                objArr[1] = "getLongType";
                break;
            case 60:
                objArr[1] = "getFloatType";
                break;
            case 61:
                objArr[1] = "getDoubleType";
                break;
            case 62:
                objArr[1] = "getCharType";
                break;
            case 63:
                objArr[1] = "getBooleanType";
                break;
            case 64:
                objArr[1] = "getUnitType";
                break;
            case 65:
                objArr[1] = "getStringType";
                break;
            case 66:
                objArr[1] = "getIterableType";
                break;
            case 68:
            case 69:
            case 70:
                objArr[1] = "getArrayElementType";
                break;
            case 74:
                objArr[1] = "getPrimitiveArrayKotlinType";
                break;
            case 81:
            case 84:
                objArr[1] = "getArrayType";
                break;
            case 86:
                objArr[1] = "getEnumType";
                break;
            case 87:
                objArr[1] = "getAnnotationType";
                break;
        }
        switch (i) {
            case 1:
                objArr[2] = "setBuiltInsModule";
                break;
            case 2:
                objArr[2] = "setPostponedBuiltinsModuleComputation";
                break;
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 11:
            case IMAGE_VALUE:
            case 15:
            case RADIO_GROUP_VALUE:
            case RADIO_BUTTON_VALUE:
            case RADIO_ROW_VALUE:
            case RADIO_COLUMN_VALUE:
            case SIZE_BOX_VALUE:
            case 23:
            case 24:
            case 25:
            case 26:
            case 27:
            case 28:
            case 29:
            case 30:
            case 31:
            case 32:
            case 33:
            case 34:
            case 35:
            case 36:
            case 37:
            case 38:
            case 39:
            case 40:
            case 41:
            case 42:
            case 43:
            case 44:
            case 45:
            case 47:
            case 48:
            case 49:
            case 50:
            case 51:
            case 52:
            case 54:
            case 55:
            case 56:
            case 57:
            case 58:
            case 59:
            case 60:
            case 61:
            case 62:
            case 63:
            case 64:
            case 65:
            case 66:
            case 68:
            case 69:
            case 70:
            case 74:
            case 81:
            case 84:
            case 86:
            case 87:
                break;
            case 9:
                objArr[2] = "isBuiltIn";
                break;
            case 10:
                objArr[2] = "isUnderKotlinPackage";
                break;
            case 12:
                objArr[2] = "getBuiltInClassByFqName";
                break;
            case LINEAR_PROGRESS_INDICATOR_VALUE:
                objArr[2] = "getBuiltInClassByName";
                break;
            case LAZY_VERTICAL_GRID_VALUE:
                objArr[2] = "getPrimitiveClassDescriptor";
                break;
            case VERTICAL_GRID_ITEM_VALUE:
                objArr[2] = "getPrimitiveArrayClassDescriptor";
                break;
            case 46:
                objArr[2] = "getBuiltInTypeByClassName";
                break;
            case 53:
                objArr[2] = "getPrimitiveKotlinType";
                break;
            case 67:
                objArr[2] = "getArrayElementType";
                break;
            case 71:
            case 72:
                objArr[2] = "getElementTypeForUnsignedArray";
                break;
            case 73:
                objArr[2] = "getPrimitiveArrayKotlinType";
                break;
            case 75:
                objArr[2] = "getPrimitiveArrayKotlinTypeByPrimitiveKotlinType";
                break;
            case 76:
            case 93:
                objArr[2] = "getPrimitiveType";
                break;
            case 77:
                objArr[2] = "getPrimitiveArrayType";
                break;
            case 78:
            case 79:
            case 80:
            case 82:
            case 83:
                objArr[2] = "getArrayType";
                break;
            case 85:
                objArr[2] = "getEnumType";
                break;
            case 88:
                objArr[2] = "isArray";
                break;
            case 89:
            case 90:
                objArr[2] = "isArrayOrPrimitiveArray";
                break;
            case 91:
                objArr[2] = "isPrimitiveArray";
                break;
            case 92:
                objArr[2] = "getPrimitiveArrayElementType";
                break;
            case 94:
                objArr[2] = "isPrimitiveType";
                break;
            case 95:
                objArr[2] = "isPrimitiveTypeOrNullablePrimitiveType";
                break;
            case 96:
                objArr[2] = "isPrimitiveClass";
                break;
            case 97:
            case 98:
            case Logger.NONE /* 99 */:
            case 100:
                objArr[2] = "isConstructedFromGivenClass";
                break;
            case 101:
            case 102:
                objArr[2] = "isTypeConstructorForGivenClass";
                break;
            case 103:
            case 104:
                objArr[2] = "classFqNameEquals";
                break;
            case 105:
            case 106:
                objArr[2] = "isNotNullConstructedFromGivenClass";
                break;
            case 107:
                objArr[2] = "isSpecialClassWithNoSupertypes";
                break;
            case 108:
            case 109:
                objArr[2] = "isAny";
                break;
            case 110:
            case 112:
                objArr[2] = "isBoolean";
                break;
            case 111:
                objArr[2] = "isBooleanOrNullableBoolean";
                break;
            case 113:
                objArr[2] = "isNumber";
                break;
            case 114:
                objArr[2] = "isChar";
                break;
            case 115:
                objArr[2] = "isCharOrNullableChar";
                break;
            case 116:
                objArr[2] = "isInt";
                break;
            case 117:
                objArr[2] = "isByte";
                break;
            case 118:
                objArr[2] = "isLong";
                break;
            case 119:
                objArr[2] = "isLongOrNullableLong";
                break;
            case 120:
                objArr[2] = "isShort";
                break;
            case 121:
                objArr[2] = "isFloat";
                break;
            case 122:
                objArr[2] = "isFloatOrNullableFloat";
                break;
            case 123:
                objArr[2] = "isDouble";
                break;
            case 124:
                objArr[2] = "isUByte";
                break;
            case 125:
                objArr[2] = "isUShort";
                break;
            case 126:
                objArr[2] = "isUInt";
                break;
            case 127:
                objArr[2] = "isULong";
                break;
            case 128:
                objArr[2] = "isUByteArray";
                break;
            case 129:
                objArr[2] = "isUShortArray";
                break;
            case 130:
                objArr[2] = "isUIntArray";
                break;
            case 131:
                objArr[2] = "isULongArray";
                break;
            case 132:
                objArr[2] = "isUnsignedArrayType";
                break;
            case 133:
                objArr[2] = "isDoubleOrNullableDouble";
                break;
            case 134:
            case 135:
                objArr[2] = "isConstructedFromGivenClassAndNotNullable";
                break;
            case 136:
                objArr[2] = "isNothing";
                break;
            case 137:
                objArr[2] = "isNullableNothing";
                break;
            case 138:
                objArr[2] = "isNothingOrNullableNothing";
                break;
            case 139:
                objArr[2] = "isAnyOrNullableAny";
                break;
            case 140:
                objArr[2] = "isNullableAny";
                break;
            case 141:
                objArr[2] = "isDefaultBound";
                break;
            case 142:
                objArr[2] = "isUnit";
                break;
            case 143:
                objArr[2] = "mayReturnNonUnitValue";
                break;
            case 144:
                objArr[2] = "isUnitOrNullableUnit";
                break;
            case 145:
                objArr[2] = "isBooleanOrSubtype";
                break;
            case 146:
                objArr[2] = "isMemberOfAny";
                break;
            case 147:
            case 148:
                objArr[2] = "isEnum";
                break;
            case 149:
            case 150:
                objArr[2] = "isComparable";
                break;
            case 151:
                objArr[2] = "isCollectionOrNullableCollection";
                break;
            case 152:
                objArr[2] = "isListOrNullableList";
                break;
            case 153:
                objArr[2] = "isSetOrNullableSet";
                break;
            case 154:
                objArr[2] = "isMapOrNullableMap";
                break;
            case 155:
                objArr[2] = "isIterableOrNullableIterable";
                break;
            case 156:
                objArr[2] = "isThrowableOrNullableThrowable";
                break;
            case 157:
                objArr[2] = "isThrowable";
                break;
            case 158:
                objArr[2] = "isKClass";
                break;
            case 159:
                objArr[2] = "isNonPrimitiveArray";
                break;
            case 160:
                objArr[2] = "isCloneable";
                break;
            case 161:
                objArr[2] = "isDeprecated";
                break;
            case 162:
                objArr[2] = "isNotNullOrNullableFunctionSupertype";
                break;
            default:
                objArr[2] = "<init>";
                break;
        }
        String format = String.format(str, objArr);
        switch (i) {
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 11:
            case IMAGE_VALUE:
            case 15:
            case RADIO_GROUP_VALUE:
            case RADIO_BUTTON_VALUE:
            case RADIO_ROW_VALUE:
            case RADIO_COLUMN_VALUE:
            case SIZE_BOX_VALUE:
            case 23:
            case 24:
            case 25:
            case 26:
            case 27:
            case 28:
            case 29:
            case 30:
            case 31:
            case 32:
            case 33:
            case 34:
            case 35:
            case 36:
            case 37:
            case 38:
            case 39:
            case 40:
            case 41:
            case 42:
            case 43:
            case 44:
            case 45:
            case 47:
            case 48:
            case 49:
            case 50:
            case 51:
            case 52:
            case 54:
            case 55:
            case 56:
            case 57:
            case 58:
            case 59:
            case 60:
            case 61:
            case 62:
            case 63:
            case 64:
            case 65:
            case 66:
            case 68:
            case 69:
            case 70:
            case 74:
            case 81:
            case 84:
            case 86:
            case 87:
                throw new IllegalStateException(format);
            case 9:
            case 10:
            case 12:
            case LINEAR_PROGRESS_INDICATOR_VALUE:
            case LAZY_VERTICAL_GRID_VALUE:
            case VERTICAL_GRID_ITEM_VALUE:
            case 46:
            case 53:
            case 67:
            case 71:
            case 72:
            case 73:
            case 75:
            case 76:
            case 77:
            case 78:
            case 79:
            case 80:
            case 82:
            case 83:
            case 85:
            default:
                throw new IllegalArgumentException(format);
        }
    }

    public KotlinBuiltIns(LockBasedStorageManager lockBasedStorageManager) {
        this.storageManager = lockBasedStorageManager;
        final int i = 0;
        lockBasedStorageManager.createLazyValue(new Function0(this) { // from class: kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns.1
            public final /* synthetic */ KotlinBuiltIns this$0;

            {
                this.this$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i2 = i;
                KotlinBuiltIns kotlinBuiltIns = this.this$0;
                switch (i2) {
                    case 0:
                        return Arrays.asList(kotlinBuiltIns.getBuiltInsModule().getPackage(StandardNames.BUILT_INS_PACKAGE_FQ_NAME), kotlinBuiltIns.getBuiltInsModule().getPackage(StandardNames.COLLECTIONS_PACKAGE_FQ_NAME), kotlinBuiltIns.getBuiltInsModule().getPackage(StandardNames.RANGES_PACKAGE_FQ_NAME), kotlinBuiltIns.getBuiltInsModule().getPackage(StandardNames.ANNOTATION_PACKAGE_FQ_NAME));
                    default:
                        EnumMap enumMap = new EnumMap(PrimitiveType.class);
                        HashMap hashMap = new HashMap();
                        HashMap hashMap2 = new HashMap();
                        for (PrimitiveType primitiveType : PrimitiveType.values()) {
                            String asString = primitiveType.getTypeName().asString();
                            if (asString == null) {
                                KotlinBuiltIns.$$$reportNull$$$0(46);
                                throw null;
                            }
                            SimpleType defaultType = kotlinBuiltIns.getBuiltInClassByName(asString).getDefaultType();
                            if (defaultType == null) {
                                KotlinBuiltIns.$$$reportNull$$$0(47);
                                throw null;
                            }
                            String asString2 = primitiveType.getArrayTypeName().asString();
                            if (asString2 == null) {
                                KotlinBuiltIns.$$$reportNull$$$0(46);
                                throw null;
                            }
                            SimpleType defaultType2 = kotlinBuiltIns.getBuiltInClassByName(asString2).getDefaultType();
                            if (defaultType2 == null) {
                                KotlinBuiltIns.$$$reportNull$$$0(47);
                                throw null;
                            }
                            enumMap.put((EnumMap) primitiveType, (PrimitiveType) defaultType2);
                            hashMap.put(defaultType, defaultType2);
                            hashMap2.put(defaultType2, defaultType);
                        }
                        return new Primitives(enumMap, hashMap, hashMap2);
                }
            }
        });
        final int i2 = 1;
        this.primitives = new LockBasedStorageManager.LockBasedNotNullLazyValue(lockBasedStorageManager, new Function0(this) { // from class: kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns.1
            public final /* synthetic */ KotlinBuiltIns this$0;

            {
                this.this$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i2;
                KotlinBuiltIns kotlinBuiltIns = this.this$0;
                switch (i22) {
                    case 0:
                        return Arrays.asList(kotlinBuiltIns.getBuiltInsModule().getPackage(StandardNames.BUILT_INS_PACKAGE_FQ_NAME), kotlinBuiltIns.getBuiltInsModule().getPackage(StandardNames.COLLECTIONS_PACKAGE_FQ_NAME), kotlinBuiltIns.getBuiltInsModule().getPackage(StandardNames.RANGES_PACKAGE_FQ_NAME), kotlinBuiltIns.getBuiltInsModule().getPackage(StandardNames.ANNOTATION_PACKAGE_FQ_NAME));
                    default:
                        EnumMap enumMap = new EnumMap(PrimitiveType.class);
                        HashMap hashMap = new HashMap();
                        HashMap hashMap2 = new HashMap();
                        for (PrimitiveType primitiveType : PrimitiveType.values()) {
                            String asString = primitiveType.getTypeName().asString();
                            if (asString == null) {
                                KotlinBuiltIns.$$$reportNull$$$0(46);
                                throw null;
                            }
                            SimpleType defaultType = kotlinBuiltIns.getBuiltInClassByName(asString).getDefaultType();
                            if (defaultType == null) {
                                KotlinBuiltIns.$$$reportNull$$$0(47);
                                throw null;
                            }
                            String asString2 = primitiveType.getArrayTypeName().asString();
                            if (asString2 == null) {
                                KotlinBuiltIns.$$$reportNull$$$0(46);
                                throw null;
                            }
                            SimpleType defaultType2 = kotlinBuiltIns.getBuiltInClassByName(asString2).getDefaultType();
                            if (defaultType2 == null) {
                                KotlinBuiltIns.$$$reportNull$$$0(47);
                                throw null;
                            }
                            enumMap.put((EnumMap) primitiveType, (PrimitiveType) defaultType2);
                            hashMap.put(defaultType, defaultType2);
                            hashMap2.put(defaultType2, defaultType);
                        }
                        return new Primitives(enumMap, hashMap, hashMap2);
                }
            }
        });
        this.builtInClassesByName = lockBasedStorageManager.createMemoizedFunction(new CallsKt$await$2$1(5, this));
    }

    public static boolean classFqNameEquals(ModuleAwareClassDescriptor moduleAwareClassDescriptor, FqNameUnsafe fqNameUnsafe) {
        if (moduleAwareClassDescriptor == null) {
            $$$reportNull$$$0(103);
            throw null;
        }
        if (fqNameUnsafe != null) {
            return moduleAwareClassDescriptor.getName().equals(fqNameUnsafe.shortName()) && fqNameUnsafe.equals(DescriptorUtils.getFqName(moduleAwareClassDescriptor));
        }
        $$$reportNull$$$0(104);
        throw null;
    }

    public static PrimitiveType getPrimitiveArrayType(ClassifierDescriptor classifierDescriptor) {
        if (StandardNames.FqNames.primitiveArrayTypeShortNames.contains(classifierDescriptor.getName())) {
            return (PrimitiveType) StandardNames.FqNames.arrayClassFqNameToPrimitiveType.get(DescriptorUtils.getFqName(classifierDescriptor));
        }
        return null;
    }

    public static PrimitiveType getPrimitiveType(ModuleAwareClassDescriptor moduleAwareClassDescriptor) {
        if (StandardNames.FqNames.primitiveTypeShortNames.contains(moduleAwareClassDescriptor.getName())) {
            return (PrimitiveType) StandardNames.FqNames.fqNameToPrimitiveType.get(DescriptorUtils.getFqName(moduleAwareClassDescriptor));
        }
        return null;
    }

    public static boolean isAnyOrNullableAny(KotlinType kotlinType) {
        if (kotlinType != null) {
            return isConstructedFromGivenClass(kotlinType, StandardNames.FqNames.any);
        }
        $$$reportNull$$$0(139);
        throw null;
    }

    public static boolean isArray(KotlinType kotlinType) {
        if (kotlinType != null) {
            return isConstructedFromGivenClass(kotlinType, StandardNames.FqNames.array);
        }
        $$$reportNull$$$0(88);
        throw null;
    }

    public static boolean isBuiltIn(DeclarationDescriptor declarationDescriptor) {
        if (declarationDescriptor != null) {
            return DescriptorUtils.getParentOfType(declarationDescriptor, BuiltInsPackageFragmentImpl.class, false) != null;
        }
        $$$reportNull$$$0(9);
        throw null;
    }

    public static boolean isConstructedFromGivenClass(KotlinType kotlinType, FqNameUnsafe fqNameUnsafe) {
        if (kotlinType == null) {
            $$$reportNull$$$0(97);
            throw null;
        }
        if (fqNameUnsafe != null) {
            return isTypeConstructorForGivenClass(kotlinType.getConstructor(), fqNameUnsafe);
        }
        $$$reportNull$$$0(98);
        throw null;
    }

    public static boolean isConstructedFromGivenClassAndNotNullable(KotlinType kotlinType, FqNameUnsafe fqNameUnsafe) {
        if (fqNameUnsafe != null) {
            return isConstructedFromGivenClass(kotlinType, fqNameUnsafe) && !kotlinType.isMarkedNullable();
        }
        $$$reportNull$$$0(135);
        throw null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean isDeprecated(DeclarationDescriptorNonRootImpl declarationDescriptorNonRootImpl) {
        if (declarationDescriptorNonRootImpl.getOriginal().getAnnotations().hasAnnotation(StandardNames.FqNames.deprecated)) {
            return true;
        }
        if (!(declarationDescriptorNonRootImpl instanceof PropertyDescriptor)) {
            return false;
        }
        PropertyDescriptor propertyDescriptor = (PropertyDescriptor) declarationDescriptorNonRootImpl;
        boolean isVar = propertyDescriptor.isVar();
        PropertyGetterDescriptorImpl getter = propertyDescriptor.getGetter();
        PropertySetterDescriptorImpl setter = propertyDescriptor.getSetter();
        if (getter == null || !isDeprecated(getter)) {
            return false;
        }
        if (isVar) {
            return setter != null && isDeprecated(setter);
        }
        return true;
    }

    public static boolean isNotNullConstructedFromGivenClass(KotlinType kotlinType, FqNameUnsafe fqNameUnsafe) {
        if (kotlinType == null) {
            $$$reportNull$$$0(105);
            throw null;
        }
        if (fqNameUnsafe != null) {
            return !kotlinType.isMarkedNullable() && isConstructedFromGivenClass(kotlinType, fqNameUnsafe);
        }
        $$$reportNull$$$0(106);
        throw null;
    }

    public static boolean isNothing(KotlinType kotlinType) {
        if (kotlinType == null) {
            $$$reportNull$$$0(136);
            throw null;
        }
        if (kotlinType != null) {
            return isConstructedFromGivenClass(kotlinType, StandardNames.FqNames.nothing) && !TypeUtils.isNullableType(kotlinType);
        }
        $$$reportNull$$$0(138);
        throw null;
    }

    public static boolean isPrimitiveType(KotlinType kotlinType) {
        if (kotlinType.isMarkedNullable()) {
            return false;
        }
        ClassifierDescriptor declarationDescriptor = kotlinType.getConstructor().getDeclarationDescriptor();
        return (declarationDescriptor instanceof ModuleAwareClassDescriptor) && getPrimitiveType((ModuleAwareClassDescriptor) declarationDescriptor) != null;
    }

    public static boolean isString(KotlinType kotlinType) {
        return isNotNullConstructedFromGivenClass(kotlinType, StandardNames.FqNames.string);
    }

    public static boolean isTypeConstructorForGivenClass(TypeConstructor typeConstructor, FqNameUnsafe fqNameUnsafe) {
        if (typeConstructor == null) {
            $$$reportNull$$$0(101);
            throw null;
        }
        if (fqNameUnsafe != null) {
            ClassifierDescriptor declarationDescriptor = typeConstructor.getDeclarationDescriptor();
            return (declarationDescriptor instanceof ModuleAwareClassDescriptor) && classFqNameEquals((ModuleAwareClassDescriptor) declarationDescriptor, fqNameUnsafe);
        }
        $$$reportNull$$$0(102);
        throw null;
    }

    public static boolean isUnderKotlinPackage(DeclarationDescriptor declarationDescriptor) {
        while (declarationDescriptor != null) {
            if (declarationDescriptor instanceof PackageFragmentDescriptor) {
                return ((PackageFragmentDescriptorImpl) ((PackageFragmentDescriptor) declarationDescriptor)).fqName.startsWith(StandardNames.BUILT_INS_PACKAGE_NAME);
            }
            declarationDescriptor = declarationDescriptor.getContainingDeclaration();
        }
        return false;
    }

    public final void createBuiltInsModule() {
        Name name = BUILTINS_MODULE_NAME;
        name.getClass();
        LockBasedStorageManager lockBasedStorageManager = this.storageManager;
        ModuleDescriptorImpl moduleDescriptorImpl = new ModuleDescriptorImpl(name, lockBasedStorageManager, this, 48);
        this.builtInsModule = moduleDescriptorImpl;
        BuiltInsLoader.Companion.getClass();
        BuiltInsLoader builtInsLoader = (BuiltInsLoader) BuiltInsLoader.Companion.Instance$delegate.getValue();
        ModuleDescriptorImpl moduleDescriptorImpl2 = this.builtInsModule;
        Iterable classDescriptorFactories = getClassDescriptorFactories();
        PlatformDependentDeclarationFilter platformDependentDeclarationFilter = getPlatformDependentDeclarationFilter();
        AdditionalClassPartsProvider additionalClassPartsProvider = getAdditionalClassPartsProvider();
        ((BuiltInsLoaderImpl) builtInsLoader).getClass();
        moduleDescriptorImpl2.getClass();
        classDescriptorFactories.getClass();
        platformDependentDeclarationFilter.getClass();
        additionalClassPartsProvider.getClass();
        Set set = StandardNames.BUILT_INS_PACKAGE_FQ_NAMES;
        set.getClass();
        Set<FqName> set2 = set;
        int i = 10;
        ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(set2, 10));
        for (FqName fqName : set2) {
            BuiltInSerializerProtocol.INSTANCE.getClass();
            String builtInsFilePath = BuiltInSerializerProtocol.getBuiltInsFilePath(fqName);
            InputStream loadResource = Transition.AnonymousClass1.loadResource(builtInsFilePath);
            if (loadResource == null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Resource not found in classpath: ".concat(builtInsFilePath));
                return;
            }
            arrayList.add(UuidKt.create(fqName, lockBasedStorageManager, moduleDescriptorImpl2, loadResource));
        }
        PackageFragmentProviderImpl packageFragmentProviderImpl = new PackageFragmentProviderImpl(arrayList);
        ImageLoader$Builder imageLoader$Builder = new ImageLoader$Builder(lockBasedStorageManager, moduleDescriptorImpl2);
        ConnectionPool connectionPool = new ConnectionPool(i, packageFragmentProviderImpl);
        BuiltInSerializerProtocol builtInSerializerProtocol = BuiltInSerializerProtocol.INSTANCE;
        ActivityGalleryBinding activityGalleryBinding = new ActivityGalleryBinding(lockBasedStorageManager, moduleDescriptorImpl2, connectionPool, new FormBody.Builder(moduleDescriptorImpl2, imageLoader$Builder, builtInSerializerProtocol), packageFragmentProviderImpl, ErrorReporter.DO_NOTHING, ProtoEnumFlags.INSTANCE$1, classDescriptorFactories, imageLoader$Builder, additionalClassPartsProvider, platformDependentDeclarationFilter, builtInSerializerProtocol.extensionRegistry, null, new ByteString.Companion(lockBasedStorageManager), null, 851968);
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((BuiltInsPackageFragmentImpl) it.next()).initialize(activityGalleryBinding);
        }
        moduleDescriptorImpl.packageFragmentProviderForModuleContent = packageFragmentProviderImpl;
        ModuleDescriptorImpl moduleDescriptorImpl3 = this.builtInsModule;
        moduleDescriptorImpl3.getClass();
        moduleDescriptorImpl3.dependencies = new Dispatcher$promoteAndExecute$Effects(ArraysKt___ArraysKt.toList(new ModuleDescriptorImpl[]{moduleDescriptorImpl3}), false);
    }

    public AdditionalClassPartsProvider getAdditionalClassPartsProvider() {
        return AdditionalClassPartsProvider.None.INSTANCE;
    }

    public final SimpleType getAnyType() {
        SimpleType defaultType = getBuiltInClassByName("Any").getDefaultType();
        if (defaultType != null) {
            return defaultType;
        }
        $$$reportNull$$$0(50);
        throw null;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0098 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final kotlin.reflect.jvm.internal.impl.types.KotlinType getArrayElementType(kotlin.reflect.jvm.internal.impl.types.KotlinType r5) {
        /*
            r4 = this;
            r0 = 0
            if (r5 == 0) goto L9f
            boolean r1 = isArray(r5)
            r2 = 0
            if (r1 == 0) goto L30
            java.util.List r4 = r5.getArguments()
            int r4 = r4.size()
            r1 = 1
            if (r4 != r1) goto L2c
            java.util.List r4 = r5.getArguments()
            java.lang.Object r4 = r4.get(r2)
            kotlin.reflect.jvm.internal.impl.types.TypeProjectionBase r4 = (kotlin.reflect.jvm.internal.impl.types.TypeProjectionBase) r4
            kotlin.reflect.jvm.internal.impl.types.KotlinType r4 = r4.getType()
            if (r4 == 0) goto L26
            return r4
        L26:
            r4 = 68
            $$$reportNull$$$0(r4)
            throw r0
        L2c:
            com.google.gson.Gson$$ExternalSyntheticBUOutline0.m()
            return r0
        L30:
            kotlin.reflect.jvm.internal.impl.types.UnwrappedType r1 = kotlin.reflect.jvm.internal.impl.types.TypeUtils.makeNullableAsSpecified(r5, r2)
            kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager$LockBasedNotNullLazyValue r4 = r4.primitives
            java.lang.Object r4 = r4.invoke()
            kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns$Primitives r4 = (kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns.Primitives) r4
            java.util.HashMap r4 = r4.kotlinArrayTypeToPrimitiveKotlinType
            java.lang.Object r4 = r4.get(r1)
            kotlin.reflect.jvm.internal.impl.types.KotlinType r4 = (kotlin.reflect.jvm.internal.impl.types.KotlinType) r4
            if (r4 == 0) goto L47
            return r4
        L47:
            int r4 = kotlin.reflect.jvm.internal.impl.resolve.DescriptorUtils.$r8$clinit
            kotlin.reflect.jvm.internal.impl.types.TypeConstructor r4 = r1.getConstructor()
            kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor r4 = r4.getDeclarationDescriptor()
            if (r4 != 0) goto L55
            r4 = r0
            goto L59
        L55:
            kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor r4 = kotlin.reflect.jvm.internal.impl.resolve.DescriptorUtils.getContainingModuleOrNull(r4)
        L59:
            if (r4 == 0) goto L99
            kotlin.reflect.jvm.internal.impl.types.TypeConstructor r1 = r1.getConstructor()
            kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor r1 = r1.getDeclarationDescriptor()
            if (r1 != 0) goto L67
        L65:
            r4 = r0
            goto L96
        L67:
            java.util.Set r2 = kotlin.reflect.jvm.internal.impl.builtins.UnsignedTypes.unsignedTypeNames
            kotlin.reflect.jvm.internal.impl.name.Name r2 = r1.getName()
            r2.getClass()
            java.util.LinkedHashSet r3 = kotlin.reflect.jvm.internal.impl.builtins.UnsignedTypes.arrayClassesShortNames
            boolean r2 = r3.contains(r2)
            if (r2 != 0) goto L79
            goto L65
        L79:
            kotlin.reflect.jvm.internal.impl.name.ClassId r1 = kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt.getClassId(r1)
            if (r1 != 0) goto L80
            goto L65
        L80:
            java.util.HashMap r2 = kotlin.reflect.jvm.internal.impl.builtins.UnsignedTypes.arrayClassIdToUnsignedClassId
            java.lang.Object r1 = r2.get(r1)
            kotlin.reflect.jvm.internal.impl.name.ClassId r1 = (kotlin.reflect.jvm.internal.impl.name.ClassId) r1
            if (r1 != 0) goto L8b
            goto L65
        L8b:
            kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor r4 = kotlin.reflect.jvm.internal.impl.descriptors.DescriptorUtilKt.findClassAcrossModuleDependencies(r4, r1)
            if (r4 != 0) goto L92
            goto L65
        L92:
            kotlin.reflect.jvm.internal.impl.types.SimpleType r4 = r4.getDefaultType()
        L96:
            if (r4 == 0) goto L99
            return r4
        L99:
            java.lang.String r4 = "not array: "
            com.google.gson.Gson$$ExternalSyntheticBUOutline0.m$1(r4, r5)
            return r0
        L9f:
            r4 = 67
            $$$reportNull$$$0(r4)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns.getArrayElementType(kotlin.reflect.jvm.internal.impl.types.KotlinType):kotlin.reflect.jvm.internal.impl.types.KotlinType");
    }

    public final SimpleType getArrayType(Variance variance, KotlinType kotlinType, Annotations annotations) {
        if (variance == null) {
            $$$reportNull$$$0(78);
            throw null;
        }
        if (kotlinType != null) {
            return KotlinTypeKt.simpleNotNullType(KotlinTypeKt.toDefaultAttributes(annotations), getBuiltInClassByName("Array"), Collections.singletonList(new StarProjectionImpl(kotlinType, variance)));
        }
        $$$reportNull$$$0(79);
        throw null;
    }

    public final ModuleAwareClassDescriptor getBuiltInClassByFqName(FqName fqName) {
        if (fqName == null) {
            $$$reportNull$$$0(12);
            throw null;
        }
        ModuleAwareClassDescriptor resolveClassByFqName = DescriptorUtilKt.resolveClassByFqName(getBuiltInsModule(), fqName, NoLookupLocation.FROM_BUILTINS);
        if (resolveClassByFqName != null) {
            return resolveClassByFqName;
        }
        $$$reportNull$$$0(13);
        throw null;
    }

    public final ModuleAwareClassDescriptor getBuiltInClassByName(String str) {
        if (str != null) {
            return (ModuleAwareClassDescriptor) this.builtInClassesByName.invoke(Name.identifier(str));
        }
        $$$reportNull$$$0(14);
        throw null;
    }

    public final ModuleDescriptorImpl getBuiltInsModule() {
        this.builtInsModule.getClass();
        ModuleDescriptorImpl moduleDescriptorImpl = this.builtInsModule;
        if (moduleDescriptorImpl != null) {
            return moduleDescriptorImpl;
        }
        $$$reportNull$$$0(7);
        throw null;
    }

    public Iterable getClassDescriptorFactories() {
        List singletonList = Collections.singletonList(new BuiltInFictitiousFunctionClassFactory(this.storageManager, getBuiltInsModule()));
        if (singletonList != null) {
            return singletonList;
        }
        $$$reportNull$$$0(5);
        throw null;
    }

    public final SimpleType getDefaultBound() {
        SimpleType nullableAnyType = getNullableAnyType();
        if (nullableAnyType != null) {
            return nullableAnyType;
        }
        $$$reportNull$$$0(52);
        throw null;
    }

    public final SimpleType getNothingType() {
        SimpleType defaultType = getBuiltInClassByName("Nothing").getDefaultType();
        if (defaultType != null) {
            return defaultType;
        }
        $$$reportNull$$$0(48);
        throw null;
    }

    public final SimpleType getNullableAnyType() {
        SimpleType makeNullableAsSpecified = getAnyType().makeNullableAsSpecified(true);
        if (makeNullableAsSpecified != null) {
            return makeNullableAsSpecified;
        }
        $$$reportNull$$$0(51);
        throw null;
    }

    public PlatformDependentDeclarationFilter getPlatformDependentDeclarationFilter() {
        return AdditionalClassPartsProvider.None.INSTANCE$2;
    }

    public final SimpleType getPrimitiveArrayKotlinType(PrimitiveType primitiveType) {
        if (primitiveType == null) {
            $$$reportNull$$$0(73);
            throw null;
        }
        SimpleType simpleType = (SimpleType) ((Primitives) this.primitives.invoke()).primitiveTypeToArrayKotlinType.get(primitiveType);
        if (simpleType != null) {
            return simpleType;
        }
        $$$reportNull$$$0(74);
        throw null;
    }

    public final SimpleType getPrimitiveKotlinType(PrimitiveType primitiveType) {
        if (primitiveType == null) {
            $$$reportNull$$$0(53);
            throw null;
        }
        SimpleType defaultType = getBuiltInClassByName(primitiveType.getTypeName().asString()).getDefaultType();
        if (defaultType != null) {
            return defaultType;
        }
        $$$reportNull$$$0(54);
        throw null;
    }

    public final SimpleType getStringType() {
        SimpleType defaultType = getBuiltInClassByName("String").getDefaultType();
        if (defaultType != null) {
            return defaultType;
        }
        $$$reportNull$$$0(65);
        throw null;
    }

    public final ModuleAwareClassDescriptor getSuspendFunction(int i) {
        ModuleAwareClassDescriptor builtInClassByFqName = getBuiltInClassByFqName(StandardNames.COROUTINES_PACKAGE_FQ_NAME.child(Name.identifier(FunctionClassKind.SuspendFunction.getClassNamePrefix() + i)));
        if (builtInClassByFqName != null) {
            return builtInClassByFqName;
        }
        $$$reportNull$$$0(18);
        throw null;
    }

    public final SimpleType getUnitType() {
        SimpleType defaultType = getBuiltInClassByName("Unit").getDefaultType();
        if (defaultType != null) {
            return defaultType;
        }
        $$$reportNull$$$0(64);
        throw null;
    }

    public final SimpleType getArrayType(Variance variance, UnwrappedType unwrappedType) {
        if (variance == null) {
            $$$reportNull$$$0(82);
            throw null;
        }
        if (unwrappedType != null) {
            return getArrayType(variance, unwrappedType, Annotations.Companion.EMPTY);
        }
        $$$reportNull$$$0(83);
        throw null;
    }
}
