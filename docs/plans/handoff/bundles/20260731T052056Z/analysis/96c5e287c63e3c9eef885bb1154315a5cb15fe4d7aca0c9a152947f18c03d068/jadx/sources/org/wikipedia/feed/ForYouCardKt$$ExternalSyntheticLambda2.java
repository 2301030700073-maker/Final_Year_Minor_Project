package org.wikipedia.feed;

import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.ui.layout.LayoutCoordinates;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import org.wikipedia.R;
import org.wikipedia.compose.components.TopAppBarState;
import org.wikipedia.random.RandomActivity;
import org.wikipedia.settings.Prefs;
import org.wikipedia.settings.PrefsIoUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class ForYouCardKt$$ExternalSyntheticLambda2 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ MutableState f$0;

    public /* synthetic */ ForYouCardKt$$ExternalSyntheticLambda2(MutableState mutableState, int i) {
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
                mutableState.setValue(Boolean.TRUE);
                break;
            case 1:
                break;
            case 2:
                break;
            case 3:
                break;
            case 4:
                break;
            case 5:
                if (mutableState != null) {
                    break;
                }
                break;
            case 6:
                Boolean bool = (Boolean) mutableState.getValue();
                bool.booleanValue();
                break;
            case 7:
                LayoutCoordinates layoutCoordinates = (LayoutCoordinates) mutableState.getValue();
                if (layoutCoordinates == null) {
                    InlineClassHelperKt.throwIllegalStateExceptionForNullCheck("Required value was null.");
                    Gson$$ExternalSyntheticBUOutline0.m$1();
                    break;
                } else {
                    break;
                }
            case 8:
                LayoutCoordinates layoutCoordinates2 = (LayoutCoordinates) mutableState.getValue();
                if (layoutCoordinates2 == null) {
                    InlineClassHelperKt.throwIllegalStateExceptionForNullCheck("Required value was null.");
                    Gson$$ExternalSyntheticBUOutline0.m$1();
                    break;
                } else {
                    break;
                }
            case 9:
                LayoutCoordinates layoutCoordinates3 = (LayoutCoordinates) mutableState.getValue();
                if (layoutCoordinates3 == null) {
                    InlineClassHelperKt.throwIllegalStateExceptionForNullCheck("Required value was null.");
                    Gson$$ExternalSyntheticBUOutline0.m$1();
                    break;
                } else {
                    break;
                }
            case 10:
                break;
            case 11:
                mutableState.setValue(TopAppBarState.SEARCH);
                break;
            case 12:
                mutableState.setValue(Boolean.FALSE);
                break;
            case IMAGE_VALUE:
                mutableState.setValue(Boolean.TRUE);
                break;
            case LINEAR_PROGRESS_INDICATOR_VALUE:
                mutableState.setValue(Boolean.FALSE);
                break;
            case 15:
                mutableState.setValue(Boolean.TRUE);
                break;
            case LAZY_VERTICAL_GRID_VALUE:
                mutableState.setValue(Boolean.FALSE);
                break;
            case VERTICAL_GRID_ITEM_VALUE:
                mutableState.setValue(Boolean.FALSE);
                break;
            case RADIO_GROUP_VALUE:
                mutableState.setValue(Boolean.TRUE);
                break;
            case RADIO_BUTTON_VALUE:
                mutableState.setValue(Boolean.FALSE);
                break;
            case RADIO_ROW_VALUE:
                mutableState.setValue(Boolean.FALSE);
                break;
            case RADIO_COLUMN_VALUE:
                mutableState.setValue(Boolean.TRUE);
                break;
            case SIZE_BOX_VALUE:
                mutableState.setValue(Boolean.TRUE);
                Prefs prefs = Prefs.INSTANCE;
                PrefsIoUtil.setBoolean(R.string.preference_key_home_swipe_to_explore_prompt_shown, true);
                break;
            case 23:
                mutableState.setValue(Boolean.TRUE);
                break;
            case 24:
                mutableState.setValue(Boolean.FALSE);
                break;
            case 25:
                mutableState.setValue(Boolean.TRUE);
                break;
            case 26:
                mutableState.setValue(Boolean.FALSE);
                break;
            case 27:
                mutableState.setValue(Boolean.FALSE);
                break;
            case 28:
                int i2 = RandomActivity.$r8$clinit;
                mutableState.setValue(Boolean.TRUE);
                Prefs prefs2 = Prefs.INSTANCE;
                PrefsIoUtil.setBoolean(R.string.preference_key_randomizer_shake_prompt_shown, true);
                break;
            default:
                mutableState.setValue(Boolean.FALSE);
                break;
        }
        return unit;
    }
}
