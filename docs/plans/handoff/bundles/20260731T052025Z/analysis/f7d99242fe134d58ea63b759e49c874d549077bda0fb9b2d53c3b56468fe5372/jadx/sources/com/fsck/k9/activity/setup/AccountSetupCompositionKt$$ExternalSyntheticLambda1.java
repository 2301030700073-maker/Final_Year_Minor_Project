package com.fsck.k9.activity.setup;

import androidx.compose.foundation.interaction.MutableInteractionSourceImpl;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.AndroidMenu_androidKt;
import androidx.compose.material3.AndroidMenu_androidKt$$ExternalSyntheticLambda0;
import androidx.compose.material3.CardKt;
import androidx.compose.material3.ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1;
import androidx.compose.material3.TooltipKt$$ExternalSyntheticLambda1;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.RulerKt;
import androidx.work.Data$$ExternalSyntheticLambda0;
import app.k9mail.core.ui.compose.designsystem.atom.textfield.TextFieldCommonKt;
import app.k9mail.feature.account.common.ui.WizardNavigationBarKt$$ExternalSyntheticLambda0;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.math.MathKt;
import kotlinx.collections.immutable.ImmutableList;
import kotlinx.collections.immutable.implementations.immutableList.AbstractPersistentList;
import kotlinx.coroutines.channels.BufferedChannel$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class AccountSetupCompositionKt$$ExternalSyntheticLambda1 implements Function3 {
    public final /* synthetic */ int $r8$classId = 1;
    public final /* synthetic */ Function1 f$0;
    public final /* synthetic */ String f$1;
    public final /* synthetic */ Object f$2;
    public final /* synthetic */ Object f$3;
    public final /* synthetic */ boolean f$4;
    public final /* synthetic */ Object f$5;
    public final /* synthetic */ ImmutableList f$6;
    public final /* synthetic */ Object f$7;

    public /* synthetic */ AccountSetupCompositionKt$$ExternalSyntheticLambda1(Function1 function1, Object obj, Modifier modifier, String str, boolean z, MutableState mutableState, ImmutableList immutableList, Function1 function12) {
        this.f$0 = function1;
        this.f$2 = obj;
        this.f$3 = modifier;
        this.f$1 = str;
        this.f$4 = z;
        this.f$5 = mutableState;
        this.f$6 = immutableList;
        this.f$7 = function12;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Object obj4 = this.f$7;
        Object obj5 = this.f$5;
        Object obj6 = this.f$3;
        int i2 = 4;
        switch (i) {
            case 0:
                String str = (String) this.f$2;
                String str2 = (String) obj6;
                String str3 = (String) obj5;
                AbstractPersistentList abstractPersistentList = (AbstractPersistentList) this.f$6;
                Pair pair = (Pair) obj4;
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
                    MathKt.m983Surface_UMDTes(OffsetKt.consumeWindowInsets(OffsetKt.padding(SizeKt.FillWholeMaxSize, paddingValues), paddingValues), null, 0L, 0L, 0.0f, Expect_jvmKt.rememberComposableLambda(532382746, new AccountSetupCompositionKt$$ExternalSyntheticLambda3(this.f$0, this.f$1, str, str2, this.f$4, str3, abstractPersistentList, pair), gapComposer), gapComposer, 196608, 30);
                    break;
                }
            default:
                Modifier modifier = (Modifier) obj6;
                MutableState mutableState = (MutableState) obj5;
                Function1 function1 = (Function1) obj4;
                ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1 exposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1 = (ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1) obj;
                Composer composer2 = (Composer) obj2;
                int intValue2 = ((Integer) obj3).intValue();
                exposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1.getClass();
                if ((intValue2 & 6) == 0) {
                    intValue2 |= (intValue2 & 8) == 0 ? ((GapComposer) composer2).changed(exposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1) : ((GapComposer) composer2).changedInstance(exposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1) ? 4 : 2;
                }
                GapComposer gapComposer2 = (GapComposer) composer2;
                if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 19) != 18)) {
                    gapComposer2.skipToGroupEnd();
                    break;
                } else {
                    Function1 function12 = this.f$0;
                    Object obj7 = this.f$2;
                    String str4 = (String) function12.invoke(obj7);
                    Object rememberedValue = gapComposer2.rememberedValue();
                    NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
                    if (rememberedValue == neverEqualPolicy) {
                        rememberedValue = new Data$$ExternalSyntheticLambda0(22);
                        gapComposer2.updateRememberedValue(rememberedValue);
                    }
                    Function1 function13 = (Function1) rememberedValue;
                    Modifier then = ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1.m342menuAnchor2Hz36ac$default(exposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1, SizeKt.FillWholeMaxWidth).then(modifier);
                    ComposableLambdaImpl selectLabel = TextFieldCommonKt.selectLabel(this.f$1, false);
                    ComposableLambdaImpl rememberComposableLambda = Expect_jvmKt.rememberComposableLambda(-820188269, new AndroidMenu_androidKt$$ExternalSyntheticLambda0(mutableState, 1), gapComposer2);
                    Object rememberedValue2 = gapComposer2.rememberedValue();
                    if (rememberedValue2 == neverEqualPolicy) {
                        rememberedValue2 = new MutableInteractionSourceImpl();
                        gapComposer2.updateRememberedValue(rememberedValue2);
                    }
                    CardKt.OutlinedTextField(str4, function13, then, true, true, null, selectLabel, rememberComposableLambda, false, null, null, null, true, 0, 0, (MutableInteractionSourceImpl) rememberedValue2, null, null, gapComposer2, 805330992, 12582912, 6, 7200160);
                    if (!this.f$4) {
                        gapComposer2.startReplaceGroup(59346721);
                        boolean booleanValue = ((Boolean) mutableState.getValue()).booleanValue();
                        Object rememberedValue3 = gapComposer2.rememberedValue();
                        if (rememberedValue3 == neverEqualPolicy) {
                            rememberedValue3 = new TooltipKt$$ExternalSyntheticLambda1(mutableState, 11);
                            gapComposer2.updateRememberedValue(rememberedValue3);
                        }
                        AndroidMenu_androidKt.m320DropdownMenuIlH_yew(booleanValue, (Function0) rememberedValue3, RulerKt.layout(Modifier.Companion.$$INSTANCE, new BufferedChannel$$ExternalSyntheticLambda1(i2, exposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1.$anchorWidth$delegate, exposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1.$menuMaxHeight$delegate)), 0L, null, null, null, 0L, 0.0f, Expect_jvmKt.rememberComposableLambda(73733020, new WizardNavigationBarKt$$ExternalSyntheticLambda0(this.f$6, function1, function12, obj7, mutableState, 1), gapComposer2), gapComposer2, 48, 2040);
                        gapComposer2.end(false);
                        break;
                    } else {
                        gapComposer2.startReplaceGroup(60335590);
                        gapComposer2.end(false);
                        break;
                    }
                }
        }
        return unit;
    }

    public /* synthetic */ AccountSetupCompositionKt$$ExternalSyntheticLambda1(Function1 function1, String str, String str2, String str3, boolean z, String str4, AbstractPersistentList abstractPersistentList, Pair pair) {
        this.f$0 = function1;
        this.f$1 = str;
        this.f$2 = str2;
        this.f$3 = str3;
        this.f$4 = z;
        this.f$5 = str4;
        this.f$6 = abstractPersistentList;
        this.f$7 = pair;
    }
}
