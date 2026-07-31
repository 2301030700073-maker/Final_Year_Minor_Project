package kotlinx.datetime.internal.format;

import androidx.compose.foundation.text.input.internal.LegacyAdaptingPlatformTextInputModifierNode;
import androidx.compose.ui.graphics.Matrix;
import androidx.compose.ui.layout.LayoutCoordinates;
import java.util.Iterator;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.datetime.format.IncompleteUtcOffset;
import kotlinx.datetime.format.OffsetFields$sign$1;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class SignedFormatStructure$formatter$1 extends FunctionReferenceImpl implements Function1 {
    public final /* synthetic */ int $r8$classId = 1;
    public final /* synthetic */ Object this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SignedFormatStructure$formatter$1(LegacyAdaptingPlatformTextInputModifierNode legacyAdaptingPlatformTextInputModifierNode) {
        super(1, Intrinsics.Kotlin.class, "localToScreen", "startInput$localToScreen(Landroidx/compose/foundation/text/input/internal/LegacyPlatformTextInputServiceAdapter$LegacyPlatformTextInputNode;[F)V", 0);
        this.this$0 = legacyAdaptingPlatformTextInputModifierNode;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        Object obj2 = this.this$0;
        switch (i) {
            case 0:
                Iterator it = ((SignedFormatStructure) obj2).fieldSigns.iterator();
                boolean z = false;
                boolean z2 = false;
                while (true) {
                    if (!it.hasNext()) {
                        z = z2;
                    } else if (Intrinsics.areEqual(((OffsetFields$sign$1) it.next()).isNegative.property.get(obj), Boolean.TRUE)) {
                        z2 = true;
                    } else {
                        IncompleteUtcOffset incompleteUtcOffset = (IncompleteUtcOffset) obj;
                        incompleteUtcOffset.getClass();
                        Integer num = incompleteUtcOffset.offsetHours;
                        if ((num != null ? num.intValue() : 0) == 0) {
                            Integer num2 = incompleteUtcOffset.offsetMinutesOfHour;
                            if ((num2 != null ? num2.intValue() : 0) == 0) {
                                Integer num3 = incompleteUtcOffset.offsetSecondsOfMinute;
                                if ((num3 != null ? num3.intValue() : 0) == 0) {
                                }
                            }
                        }
                    }
                }
                return Boolean.valueOf(z);
            default:
                float[] fArr = ((Matrix) obj).values;
                LayoutCoordinates layoutCoordinates = (LayoutCoordinates) ((LegacyAdaptingPlatformTextInputModifierNode) obj2).layoutCoordinates$delegate.getValue();
                if (layoutCoordinates != null) {
                    if (!layoutCoordinates.isAttached$1()) {
                        layoutCoordinates = null;
                    }
                    if (layoutCoordinates != null) {
                        layoutCoordinates.mo584transformToScreen58bKbWc(fArr);
                    }
                }
                return Unit.INSTANCE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SignedFormatStructure$formatter$1(SignedFormatStructure signedFormatStructure) {
        super(1, Intrinsics.Kotlin.class, "checkIfAllNegative", "formatter$checkIfAllNegative(Lkotlinx/datetime/internal/format/SignedFormatStructure;Ljava/lang/Object;)Z", 0);
        this.this$0 = signedFormatStructure;
    }
}
