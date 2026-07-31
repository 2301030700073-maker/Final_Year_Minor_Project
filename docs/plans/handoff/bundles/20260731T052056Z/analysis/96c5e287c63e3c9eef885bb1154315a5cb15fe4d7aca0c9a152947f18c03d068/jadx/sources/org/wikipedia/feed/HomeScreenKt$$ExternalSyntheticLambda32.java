package org.wikipedia.feed;

import androidx.compose.runtime.MutableState;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import org.wikipedia.R;
import org.wikipedia.settings.Prefs;
import org.wikipedia.settings.PrefsIoUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class HomeScreenKt$$ExternalSyntheticLambda32 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Function0 f$0;
    public final /* synthetic */ MutableState f$1;

    public /* synthetic */ HomeScreenKt$$ExternalSyntheticLambda32(Function0 function0, MutableState mutableState, int i) {
        this.$r8$classId = i;
        this.f$0 = function0;
        this.f$1 = mutableState;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        MutableState mutableState = this.f$1;
        Function0 function0 = this.f$0;
        switch (i) {
            case 0:
                function0.invoke();
                mutableState.setValue(Boolean.FALSE);
                break;
            case 1:
                function0.invoke();
                mutableState.setValue(Boolean.FALSE);
                break;
            case 2:
                mutableState.setValue(Boolean.TRUE);
                function0.invoke();
                break;
            case 3:
                function0.invoke();
                mutableState.setValue(Boolean.FALSE);
                break;
            case 4:
                function0.invoke();
                mutableState.setValue(Boolean.FALSE);
                break;
            case 5:
                Prefs prefs = Prefs.INSTANCE;
                String str = (String) mutableState.getValue();
                str.getClass();
                PrefsIoUtil.setString(R.string.preference_key_reading_challenge_start_date, str);
                function0.invoke();
                break;
            case 6:
                Prefs prefs2 = Prefs.INSTANCE;
                String str2 = (String) mutableState.getValue();
                str2.getClass();
                PrefsIoUtil.setString(R.string.preference_key_reading_challenge_last_read_date, str2);
                function0.invoke();
                break;
            case 7:
                Prefs prefs3 = Prefs.INSTANCE;
                String str3 = (String) mutableState.getValue();
                str3.getClass();
                PrefsIoUtil.setString(R.string.preference_key_reading_challenge_end_date, str3);
                function0.invoke();
                break;
            default:
                Prefs prefs4 = Prefs.INSTANCE;
                PrefsIoUtil.setString(R.string.preference_key_reading_challenge_last_read_date, "");
                mutableState.setValue("");
                function0.invoke();
                break;
        }
        return unit;
    }
}
