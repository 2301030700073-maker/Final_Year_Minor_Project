package androidx.compose.foundation.text;

import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.text.modifiers.TextAnnotatedStringNode;
import androidx.compose.runtime.MutableState;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.node.LayoutNodeDrawScope;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.navigation.NavOptionsBuilder;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import net.thunderbird.core.ui.setting.SettingValue;
import net.thunderbird.feature.account.server.settings.ui.common.AuthenticationError;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class BasicTextKt$$ExternalSyntheticLambda0 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ MutableState f$0;

    public /* synthetic */ BasicTextKt$$ExternalSyntheticLambda0(MutableState mutableState, int i) {
        this.$r8$classId = i;
        this.f$0 = mutableState;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        MutableState mutableState = this.f$0;
        switch (i) {
            case 0:
                TextAnnotatedStringNode.TextSubstitutionValue textSubstitutionValue = (TextAnnotatedStringNode.TextSubstitutionValue) obj;
                mutableState.setValue(textSubstitutionValue.isShowingSubstitution ? textSubstitutionValue.substitution : textSubstitutionValue.original);
                break;
            case 1:
                Float f = (Float) obj;
                f.getClass();
                break;
            case 2:
                List list = (List) obj;
                if (mutableState != null) {
                    mutableState.setValue(list);
                    break;
                }
                break;
            case 3:
                ((Function1) mutableState.getValue()).invoke((Offset) obj);
                break;
            case 4:
                mutableState.setValue((LayoutCoordinates) obj);
                break;
            case 5:
                mutableState.setValue((LayoutCoordinates) obj);
                break;
            case 6:
                mutableState.setValue((LayoutCoordinates) obj);
                break;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                mutableState.setValue((LayoutCoordinates) obj);
                break;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                LayoutNodeDrawScope layoutNodeDrawScope = (LayoutNodeDrawScope) obj;
                layoutNodeDrawScope.getClass();
                if (((Boolean) mutableState.getValue()).booleanValue()) {
                    layoutNodeDrawScope.drawContent();
                    break;
                }
                break;
            case 9:
                mutableState.setValue((AuthenticationError) obj);
                break;
            case 10:
                NavOptionsBuilder navOptionsBuilder = (NavOptionsBuilder) obj;
                navOptionsBuilder.getClass();
                if (!((Boolean) mutableState.getValue()).booleanValue()) {
                    NavOptionsBuilder.popUpTo$default(navOptionsBuilder, "outgoing-server/config");
                    break;
                } else {
                    NavOptionsBuilder.popUpTo$default(navOptionsBuilder, "autoconfig");
                    break;
                }
            case 11:
                SettingValue.Select.SelectOption selectOption = (SettingValue.Select.SelectOption) obj;
                selectOption.getClass();
                mutableState.setValue(selectOption);
                break;
            case BasicTextKt.ShiftMeta /* 12 */:
                Boolean bool = (Boolean) obj;
                bool.booleanValue();
                mutableState.setValue(bool);
                break;
            case 13:
                Boolean bool2 = (Boolean) obj;
                bool2.booleanValue();
                mutableState.setValue(bool2);
                break;
            case 14:
                Boolean bool3 = (Boolean) obj;
                bool3.booleanValue();
                mutableState.setValue(bool3);
                break;
            case OffsetKt.Horizontal /* 15 */:
                String str = (String) obj;
                str.getClass();
                mutableState.setValue(str);
                break;
            default:
                Boolean bool4 = (Boolean) obj;
                bool4.booleanValue();
                mutableState.setValue(bool4);
                break;
        }
        return unit;
    }
}
