package androidx.compose.material3;

import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.datastore.preferences.PreferencesProto$Value;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class TooltipKt$$ExternalSyntheticLambda1 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ MutableState f$0;

    public /* synthetic */ TooltipKt$$ExternalSyntheticLambda1(MutableState mutableState, int i) {
        this.$r8$classId = i;
        this.f$0 = mutableState;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        MutableState mutableState = this.f$0;
        switch (i) {
            case 0:
                break;
            case 1:
                break;
            case 2:
                break;
            case 3:
                break;
            case 4:
                if (mutableState != null) {
                    break;
                }
                break;
            case 5:
                Boolean bool = (Boolean) mutableState.getValue();
                bool.booleanValue();
                break;
            case 6:
                LayoutCoordinates layoutCoordinates = (LayoutCoordinates) mutableState.getValue();
                if (layoutCoordinates == null) {
                    InlineClassHelperKt.throwIllegalStateExceptionForNullCheck("Required value was null.");
                    _UtilJvmKt$$ExternalSyntheticLambda0.m();
                    break;
                } else {
                    break;
                }
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                LayoutCoordinates layoutCoordinates2 = (LayoutCoordinates) mutableState.getValue();
                if (layoutCoordinates2 == null) {
                    InlineClassHelperKt.throwIllegalStateExceptionForNullCheck("Required value was null.");
                    _UtilJvmKt$$ExternalSyntheticLambda0.m();
                    break;
                } else {
                    break;
                }
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                LayoutCoordinates layoutCoordinates3 = (LayoutCoordinates) mutableState.getValue();
                if (layoutCoordinates3 == null) {
                    InlineClassHelperKt.throwIllegalStateExceptionForNullCheck("Required value was null.");
                    _UtilJvmKt$$ExternalSyntheticLambda0.m();
                    break;
                } else {
                    break;
                }
            case 9:
                ((ExposedDropdownMenuAnchorType) mutableState.getValue()).getClass();
                mutableState.setValue(new ExposedDropdownMenuAnchorType());
                break;
            case 10:
                mutableState.setValue(Boolean.valueOf(!((Boolean) mutableState.getValue()).booleanValue()));
                break;
            case 11:
                mutableState.setValue(Boolean.FALSE);
                break;
            case BasicTextKt.ShiftMeta /* 12 */:
                mutableState.setValue(Boolean.valueOf(!((Boolean) mutableState.getValue()).booleanValue()));
                break;
            case 13:
                mutableState.setValue(Boolean.FALSE);
                break;
            case 14:
                mutableState.setValue(Boolean.FALSE);
                break;
            case OffsetKt.Horizontal /* 15 */:
                mutableState.setValue(Boolean.TRUE);
                break;
            case 16:
                mutableState.setValue(Boolean.FALSE);
                break;
            case 17:
                mutableState.setValue(Boolean.FALSE);
                break;
            case 18:
                mutableState.setValue(Boolean.TRUE);
                break;
            case 19:
                mutableState.setValue(Boolean.FALSE);
                break;
            case 20:
                mutableState.setValue(Boolean.FALSE);
                break;
            case 21:
                mutableState.setValue(Boolean.TRUE);
                break;
            case 22:
                mutableState.setValue(Boolean.FALSE);
                break;
            case 23:
                mutableState.setValue(Boolean.FALSE);
                break;
            case 24:
                mutableState.setValue(Boolean.valueOf(!((Boolean) mutableState.getValue()).booleanValue()));
                break;
            default:
                mutableState.setValue(Boolean.FALSE);
                break;
        }
        return unit;
    }
}
