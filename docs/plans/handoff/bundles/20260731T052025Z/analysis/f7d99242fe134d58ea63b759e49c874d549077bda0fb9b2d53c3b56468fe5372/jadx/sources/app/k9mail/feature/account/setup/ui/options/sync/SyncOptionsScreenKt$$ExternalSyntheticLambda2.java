package app.k9mail.feature.account.setup.ui.options.sync;

import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.NeverEqualPolicy;
import app.k9mail.feature.account.setup.ui.options.display.DisplayOptionsContract$State;
import app.k9mail.feature.account.setup.ui.options.display.DisplayOptionsScreenKt;
import app.k9mail.feature.account.setup.ui.specialfolders.SpecialFoldersContract$State;
import app.k9mail.feature.account.setup.ui.specialfolders.SpecialFoldersScreenKt;
import app.k9mail.provider.K9AppNameProvider;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.sequences.SequencesKt___SequencesKt$$ExternalSyntheticLambda0;
import net.thunderbird.core.common.provider.BrandNameProvider;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class SyncOptionsScreenKt$$ExternalSyntheticLambda2 implements Function3 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ MutableState f$0;
    public final /* synthetic */ Function1 f$1;
    public final /* synthetic */ BrandNameProvider f$2;

    public /* synthetic */ SyncOptionsScreenKt$$ExternalSyntheticLambda2(MutableState mutableState, Function1 function1, BrandNameProvider brandNameProvider, int i) {
        this.$r8$classId = i;
        this.f$0 = mutableState;
        this.f$1 = function1;
        this.f$2 = brandNameProvider;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
        BrandNameProvider brandNameProvider = this.f$2;
        Function1 function1 = this.f$1;
        MutableState mutableState = this.f$0;
        switch (i) {
            case 0:
                PaddingValues paddingValues = (PaddingValues) obj;
                Composer composer = (Composer) obj2;
                int intValue = ((Integer) obj3).intValue();
                paddingValues.getClass();
                if ((intValue & 6) == 0) {
                    intValue |= ((GapComposer) composer).changed(paddingValues) ? 4 : 2;
                }
                GapComposer gapComposer = (GapComposer) composer;
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 19) != 18)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    SyncOptionsContract$State syncOptionsContract$State = (SyncOptionsContract$State) mutableState.getValue();
                    boolean changed = gapComposer.changed(function1);
                    Object rememberedValue = gapComposer.rememberedValue();
                    if (changed || rememberedValue == neverEqualPolicy) {
                        rememberedValue = new SequencesKt___SequencesKt$$ExternalSyntheticLambda0(15, function1);
                        gapComposer.updateRememberedValue(rememberedValue);
                    }
                    SyncOptionsScreenKt.SyncOptionsContent(syncOptionsContract$State, (Function1) rememberedValue, paddingValues, ((K9AppNameProvider) brandNameProvider).getBrandName(), null, gapComposer, (intValue << 6) & 896);
                    break;
                }
            case 1:
                PaddingValues paddingValues2 = (PaddingValues) obj;
                Composer composer2 = (Composer) obj2;
                int intValue2 = ((Integer) obj3).intValue();
                paddingValues2.getClass();
                if ((intValue2 & 6) == 0) {
                    intValue2 |= ((GapComposer) composer2).changed(paddingValues2) ? 4 : 2;
                }
                GapComposer gapComposer2 = (GapComposer) composer2;
                if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 19) != 18)) {
                    gapComposer2.skipToGroupEnd();
                    break;
                } else {
                    DisplayOptionsContract$State displayOptionsContract$State = (DisplayOptionsContract$State) mutableState.getValue();
                    boolean changed2 = gapComposer2.changed(function1);
                    Object rememberedValue2 = gapComposer2.rememberedValue();
                    if (changed2 || rememberedValue2 == neverEqualPolicy) {
                        rememberedValue2 = new SequencesKt___SequencesKt$$ExternalSyntheticLambda0(11, function1);
                        gapComposer2.updateRememberedValue(rememberedValue2);
                    }
                    DisplayOptionsScreenKt.DisplayOptionsContent(displayOptionsContract$State, (Function1) rememberedValue2, paddingValues2, ((K9AppNameProvider) brandNameProvider).getBrandName(), null, gapComposer2, 8 | ((intValue2 << 6) & 896));
                    break;
                }
            default:
                PaddingValues paddingValues3 = (PaddingValues) obj;
                Composer composer3 = (Composer) obj2;
                int intValue3 = ((Integer) obj3).intValue();
                paddingValues3.getClass();
                if ((intValue3 & 6) == 0) {
                    intValue3 |= ((GapComposer) composer3).changed(paddingValues3) ? 4 : 2;
                }
                GapComposer gapComposer3 = (GapComposer) composer3;
                if (!gapComposer3.shouldExecute(intValue3 & 1, (intValue3 & 19) != 18)) {
                    gapComposer3.skipToGroupEnd();
                    break;
                } else {
                    SpecialFoldersContract$State specialFoldersContract$State = (SpecialFoldersContract$State) mutableState.getValue();
                    boolean changed3 = gapComposer3.changed(function1);
                    Object rememberedValue3 = gapComposer3.rememberedValue();
                    if (changed3 || rememberedValue3 == neverEqualPolicy) {
                        rememberedValue3 = new SequencesKt___SequencesKt$$ExternalSyntheticLambda0(21, function1);
                        gapComposer3.updateRememberedValue(rememberedValue3);
                    }
                    SpecialFoldersScreenKt.SpecialFoldersContent(specialFoldersContract$State, (Function1) rememberedValue3, paddingValues3, ((K9AppNameProvider) brandNameProvider).getBrandName(), null, gapComposer3, (intValue3 << 6) & 896);
                    break;
                }
        }
        return unit;
    }
}
