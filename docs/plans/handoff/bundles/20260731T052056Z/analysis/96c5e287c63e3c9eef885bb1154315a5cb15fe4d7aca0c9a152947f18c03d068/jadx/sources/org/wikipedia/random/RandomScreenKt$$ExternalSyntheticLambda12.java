package org.wikipedia.random;

import androidx.compose.runtime.ParcelableSnapshotMutableIntState;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import org.wikipedia.R;
import org.wikipedia.settings.Prefs;
import org.wikipedia.settings.PrefsIoUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class RandomScreenKt$$ExternalSyntheticLambda12 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Function0 f$0;
    public final /* synthetic */ ParcelableSnapshotMutableIntState f$1;

    public /* synthetic */ RandomScreenKt$$ExternalSyntheticLambda12(Function0 function0, ParcelableSnapshotMutableIntState parcelableSnapshotMutableIntState, int i) {
        this.$r8$classId = i;
        this.f$0 = function0;
        this.f$1 = parcelableSnapshotMutableIntState;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        ParcelableSnapshotMutableIntState parcelableSnapshotMutableIntState = this.f$1;
        Function0 function0 = this.f$0;
        switch (i) {
            case 0:
                parcelableSnapshotMutableIntState.setIntValue(parcelableSnapshotMutableIntState.getIntValue() + 1);
                function0.invoke();
                break;
            case 1:
                if (parcelableSnapshotMutableIntState.getIntValue() > 0) {
                    Prefs prefs = Prefs.INSTANCE;
                    parcelableSnapshotMutableIntState.setIntValue(parcelableSnapshotMutableIntState.getIntValue() - 1);
                    PrefsIoUtil.setInt(R.string.preference_key_reading_challenge_streak, parcelableSnapshotMutableIntState.getIntValue());
                    function0.invoke();
                    break;
                }
                break;
            default:
                Prefs prefs2 = Prefs.INSTANCE;
                parcelableSnapshotMutableIntState.setIntValue(parcelableSnapshotMutableIntState.getIntValue() + 1);
                PrefsIoUtil.setInt(R.string.preference_key_reading_challenge_streak, parcelableSnapshotMutableIntState.getIntValue());
                function0.invoke();
                break;
        }
        return unit;
    }
}
