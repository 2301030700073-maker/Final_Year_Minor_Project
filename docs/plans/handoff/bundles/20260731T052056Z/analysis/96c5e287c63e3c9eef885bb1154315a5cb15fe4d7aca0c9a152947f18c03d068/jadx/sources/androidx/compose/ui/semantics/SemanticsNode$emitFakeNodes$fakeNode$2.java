package androidx.compose.ui.semantics;

import androidx.room.Room;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.JavaTypeQualifiers;
import kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.PredefinedEnhancementInfoKt;
import kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder;
import kotlin.reflect.jvm.internal.impl.resolve.jvm.JvmPrimitiveType;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SemanticsNode$emitFakeNodes$fakeNode$2 extends Lambda implements Function1 {
    public final /* synthetic */ String $contentDescription;
    public final /* synthetic */ int $r8$classId;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ SemanticsNode$emitFakeNodes$fakeNode$2(int i, String str) {
        super(1);
        this.$r8$classId = i;
        this.$contentDescription = str;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        String str = this.$contentDescription;
        switch (i) {
            case 0:
                KProperty[] kPropertyArr = SemanticsPropertiesKt.$$delegatedProperties;
                ((SemanticsPropertyReceiver) obj).set(SemanticsProperties.ContentDescription, Room.listOf(str));
                break;
            case 1:
                SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder = (SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder) obj;
                signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder.getClass();
                JavaTypeQualifiers javaTypeQualifiers = PredefinedEnhancementInfoKt.NOT_PLATFORM;
                signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder.parameter(str, javaTypeQualifiers, javaTypeQualifiers);
                break;
            case 2:
                SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder2 = (SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder) obj;
                signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder2.getClass();
                signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder2.parameter(str, PredefinedEnhancementInfoKt.NOT_PLATFORM);
                break;
            case 3:
                SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder3 = (SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder) obj;
                signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder3.getClass();
                JavaTypeQualifiers javaTypeQualifiers2 = PredefinedEnhancementInfoKt.NOT_PLATFORM;
                signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder3.parameter(str, javaTypeQualifiers2);
                signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder3.parameter(str, javaTypeQualifiers2);
                break;
            case 4:
                SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder4 = (SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder) obj;
                signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder4.getClass();
                JavaTypeQualifiers javaTypeQualifiers3 = PredefinedEnhancementInfoKt.NOT_PLATFORM;
                signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder4.parameter(str, javaTypeQualifiers3);
                signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder4.returns(str, javaTypeQualifiers3);
                break;
            case 5:
                SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder5 = (SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder) obj;
                signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder5.getClass();
                JavaTypeQualifiers javaTypeQualifiers4 = PredefinedEnhancementInfoKt.NOT_PLATFORM;
                signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder5.parameter(str, javaTypeQualifiers4);
                signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder5.parameter(str, javaTypeQualifiers4);
                signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder5.returns(str, javaTypeQualifiers4);
                break;
            case 6:
                SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder6 = (SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder) obj;
                signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder6.getClass();
                signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder6.returns(str, PredefinedEnhancementInfoKt.NOT_PLATFORM);
                break;
            case 7:
                SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder7 = (SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder) obj;
                signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder7.getClass();
                JavaTypeQualifiers javaTypeQualifiers5 = PredefinedEnhancementInfoKt.NOT_PLATFORM;
                signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder7.parameter(str, javaTypeQualifiers5, javaTypeQualifiers5);
                signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder7.returns(JvmPrimitiveType.BOOLEAN);
                break;
            case 8:
                SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder8 = (SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder) obj;
                signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder8.getClass();
                JavaTypeQualifiers javaTypeQualifiers6 = PredefinedEnhancementInfoKt.NOT_PLATFORM;
                signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder8.returns(str, javaTypeQualifiers6, javaTypeQualifiers6);
                break;
            case 9:
                SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder9 = (SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder) obj;
                signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder9.getClass();
                JavaTypeQualifiers javaTypeQualifiers7 = PredefinedEnhancementInfoKt.NOT_PLATFORM;
                signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder9.returns(str, javaTypeQualifiers7, javaTypeQualifiers7);
                break;
            case 10:
                SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder10 = (SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder) obj;
                signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder10.getClass();
                JavaTypeQualifiers javaTypeQualifiers8 = PredefinedEnhancementInfoKt.NOT_PLATFORM;
                signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder10.parameter(str, javaTypeQualifiers8, javaTypeQualifiers8);
                break;
            case 11:
                SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder11 = (SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder) obj;
                signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder11.getClass();
                JavaTypeQualifiers javaTypeQualifiers9 = PredefinedEnhancementInfoKt.NOT_PLATFORM;
                signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder11.parameter(str, javaTypeQualifiers9, javaTypeQualifiers9, javaTypeQualifiers9);
                break;
            case 12:
                SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder12 = (SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder) obj;
                signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder12.getClass();
                JavaTypeQualifiers javaTypeQualifiers10 = PredefinedEnhancementInfoKt.NOT_PLATFORM;
                signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder12.parameter(str, javaTypeQualifiers10);
                signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder12.parameter(str, javaTypeQualifiers10);
                signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder12.returns(str, PredefinedEnhancementInfoKt.NULLABLE);
                break;
            case IMAGE_VALUE:
                SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder13 = (SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder) obj;
                signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder13.getClass();
                JavaTypeQualifiers javaTypeQualifiers11 = PredefinedEnhancementInfoKt.NOT_PLATFORM;
                signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder13.parameter(str, javaTypeQualifiers11);
                signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder13.parameter(str, javaTypeQualifiers11);
                signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder13.returns(str, PredefinedEnhancementInfoKt.NULLABLE);
                break;
            case LINEAR_PROGRESS_INDICATOR_VALUE:
                SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder14 = (SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder) obj;
                signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder14.getClass();
                JavaTypeQualifiers javaTypeQualifiers12 = PredefinedEnhancementInfoKt.NOT_PLATFORM;
                signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder14.parameter(str, javaTypeQualifiers12);
                signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder14.parameter(str, javaTypeQualifiers12);
                signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder14.parameter(str, javaTypeQualifiers12);
                signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder14.returns(JvmPrimitiveType.BOOLEAN);
                break;
            case 15:
                SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder15 = (SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder) obj;
                signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder15.getClass();
                JavaTypeQualifiers javaTypeQualifiers13 = PredefinedEnhancementInfoKt.NOT_PLATFORM;
                signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder15.parameter(str, javaTypeQualifiers13, javaTypeQualifiers13, javaTypeQualifiers13, javaTypeQualifiers13);
                break;
            case LAZY_VERTICAL_GRID_VALUE:
                SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder16 = (SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder) obj;
                signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder16.getClass();
                signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder16.returns(str, PredefinedEnhancementInfoKt.NOT_PLATFORM, PredefinedEnhancementInfoKt.NOT_NULLABLE);
                break;
            case VERTICAL_GRID_ITEM_VALUE:
                SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder17 = (SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder) obj;
                signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder17.getClass();
                signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder17.returns(str, PredefinedEnhancementInfoKt.NOT_NULLABLE);
                break;
            case RADIO_GROUP_VALUE:
                SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder18 = (SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder) obj;
                signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder18.getClass();
                signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder18.parameter(str, PredefinedEnhancementInfoKt.NOT_PLATFORM, PredefinedEnhancementInfoKt.NOT_NULLABLE);
                break;
            case RADIO_BUTTON_VALUE:
                SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder19 = (SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder) obj;
                signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder19.getClass();
                signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder19.returns(str, PredefinedEnhancementInfoKt.NULLABLE);
                break;
            case RADIO_ROW_VALUE:
                SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder20 = (SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder) obj;
                signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder20.getClass();
                signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder20.parameter(str, PredefinedEnhancementInfoKt.NOT_PLATFORM);
                signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder20.returns(JvmPrimitiveType.BOOLEAN);
                break;
            default:
                SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder21 = (SignatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder) obj;
                signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder21.getClass();
                JavaTypeQualifiers javaTypeQualifiers14 = PredefinedEnhancementInfoKt.NOT_PLATFORM;
                signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder21.parameter(str, javaTypeQualifiers14);
                signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder21.parameter(str, javaTypeQualifiers14);
                signatureEnhancementBuilder$ClassEnhancementBuilder$FunctionEnhancementBuilder21.returns(JvmPrimitiveType.BOOLEAN);
                break;
        }
        return unit;
    }
}
