package com.skydoves.landscapist;

import androidx.appcompat.app.ActionBar;
import androidx.compose.foundation.layout.BoxWithConstraintsScope;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.TooltipKt$$ExternalSyntheticLambda1;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.TestTagKt;
import app.k9mail.core.ui.compose.designsystem.organism.snackbar.Material3BackedSnackbarHostState;
import app.k9mail.feature.account.setup.ui.autodiscovery.AccountAutoDiscoveryContract$State;
import app.k9mail.feature.account.setup.ui.autodiscovery.AccountAutoDiscoveryViewModel;
import app.k9mail.feature.account.setup.ui.autodiscovery.AutoDiscoveryStringMapperKt;
import app.k9mail.provider.K9AppNameProvider;
import com.skydoves.landscapist.coil3.ConstraintsSizeResolver;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.sequences.SequencesKt___SequencesKt$$ExternalSyntheticLambda0;
import kotlin.text.StringsKt__IndentKt;
import kotlinx.collections.immutable.ImmutableSet;
import kotlinx.coroutines.InterruptibleKt$runInterruptible$2;
import net.thunderbird.core.common.provider.BrandNameProvider;
import net.thunderbird.core.ui.setting.dialog.ui.DialogSettingViewKt$$ExternalSyntheticLambda4;
import net.thunderbird.feature.notification.api.ui.InAppNotificationHostKt;
import net.thunderbird.feature.notification.api.ui.host.InAppNotificationHostStateHolder;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class ImageLoadKt$$ExternalSyntheticLambda0 implements Function3 {
    public final /* synthetic */ int $r8$classId = 1;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ Object f$2;
    public final /* synthetic */ Object f$3;
    public final /* synthetic */ Object f$5;
    public final /* synthetic */ MutableState f$6;

    public /* synthetic */ ImageLoadKt$$ExternalSyntheticLambda0(MutableState mutableState, Function1 function1, Function0 function0, Function0 function02, AccountAutoDiscoveryViewModel accountAutoDiscoveryViewModel, BrandNameProvider brandNameProvider) {
        this.f$6 = mutableState;
        this.f$0 = function1;
        this.f$1 = function0;
        this.f$2 = function02;
        this.f$3 = accountAutoDiscoveryViewModel;
        this.f$5 = brandNameProvider;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
        MutableState mutableState = this.f$6;
        Object obj4 = this.f$5;
        Object obj5 = this.f$3;
        Object obj6 = this.f$2;
        Object obj7 = this.f$1;
        Object obj8 = this.f$0;
        switch (i) {
            case 0:
                ImageOptions imageOptions = (ImageOptions) obj6;
                ConstraintsSizeResolver constraintsSizeResolver = (ConstraintsSizeResolver) obj5;
                Function4 function4 = (Function4) obj4;
                BoxWithConstraintsScope boxWithConstraintsScope = (BoxWithConstraintsScope) obj;
                Composer composer = (Composer) obj2;
                int intValue = ((Integer) obj3).intValue();
                boxWithConstraintsScope.getClass();
                if ((intValue & 6) == 0) {
                    intValue |= ((GapComposer) composer).changed(boxWithConstraintsScope) ? 4 : 2;
                }
                GapComposer gapComposer = (GapComposer) composer;
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 19) != 18)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    int i2 = intValue & 14;
                    boolean changed = gapComposer.changed(imageOptions) | (i2 == 4) | gapComposer.changed(constraintsSizeResolver);
                    Object rememberedValue = gapComposer.rememberedValue();
                    if (changed || rememberedValue == neverEqualPolicy) {
                        ImageLoadKt$ImageLoad$2$1$1 imageLoadKt$ImageLoad$2$1$1 = new ImageLoadKt$ImageLoad$2$1$1(imageOptions, boxWithConstraintsScope, constraintsSizeResolver, null, 0);
                        gapComposer.updateRememberedValue(imageLoadKt$ImageLoad$2$1$1);
                        rememberedValue = imageLoadKt$ImageLoad$2$1$1;
                    }
                    Updater.LaunchedEffect(obj8, obj7, (Function2) rememberedValue, gapComposer);
                    function4.invoke(boxWithConstraintsScope, (ImageLoadState) mutableState.getValue(), gapComposer, Integer.valueOf(i2));
                    break;
                }
            case 1:
                Function1 function1 = (Function1) obj8;
                Function0 function0 = (Function0) obj7;
                Function0 function02 = (Function0) obj6;
                AccountAutoDiscoveryViewModel accountAutoDiscoveryViewModel = (AccountAutoDiscoveryViewModel) obj5;
                BrandNameProvider brandNameProvider = (BrandNameProvider) obj4;
                PaddingValues paddingValues = (PaddingValues) obj;
                Composer composer2 = (Composer) obj2;
                int intValue2 = ((Integer) obj3).intValue();
                paddingValues.getClass();
                if ((intValue2 & 6) == 0) {
                    intValue2 |= ((GapComposer) composer2).changed(paddingValues) ? 4 : 2;
                }
                GapComposer gapComposer2 = (GapComposer) composer2;
                if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 19) != 18)) {
                    gapComposer2.skipToGroupEnd();
                    break;
                } else {
                    AccountAutoDiscoveryContract$State accountAutoDiscoveryContract$State = (AccountAutoDiscoveryContract$State) mutableState.getValue();
                    boolean changed2 = gapComposer2.changed(function1);
                    Object rememberedValue2 = gapComposer2.rememberedValue();
                    if (changed2 || rememberedValue2 == neverEqualPolicy) {
                        rememberedValue2 = new SequencesKt___SequencesKt$$ExternalSyntheticLambda0(7, function1);
                        gapComposer2.updateRememberedValue(rememberedValue2);
                    }
                    AutoDiscoveryStringMapperKt.AccountAutoDiscoveryContent(accountAutoDiscoveryContract$State, (Function1) rememberedValue2, function0, function02, accountAutoDiscoveryViewModel.oAuthViewModel, ((K9AppNameProvider) brandNameProvider).getBrandName(), paddingValues, null, gapComposer2, 8 | ((intValue2 << 18) & 3670016));
                    break;
                }
            default:
                Function1 function12 = (Function1) obj8;
                InAppNotificationHostStateHolder inAppNotificationHostStateHolder = (InAppNotificationHostStateHolder) obj7;
                Material3BackedSnackbarHostState material3BackedSnackbarHostState = (Material3BackedSnackbarHostState) obj6;
                Function1 function13 = (Function1) obj5;
                ComposableLambdaImpl composableLambdaImpl = (ComposableLambdaImpl) obj4;
                PaddingValues paddingValues2 = (PaddingValues) obj;
                Composer composer3 = (Composer) obj2;
                int intValue3 = ((Integer) obj3).intValue();
                paddingValues2.getClass();
                if ((intValue3 & 6) == 0) {
                    intValue3 |= ((GapComposer) composer3).changed(paddingValues2) ? 4 : 2;
                }
                GapComposer gapComposer3 = (GapComposer) composer3;
                if (!gapComposer3.shouldExecute(intValue3 & 1, (intValue3 & 19) != 18)) {
                    gapComposer3.skipToGroupEnd();
                    break;
                } else {
                    Modifier testTag = TestTagKt.testTag(Modifier.Companion.$$INSTANCE, "ins_in_app_notification_host");
                    boolean changed3 = gapComposer3.changed(function12);
                    Object rememberedValue3 = gapComposer3.rememberedValue();
                    if (changed3 || rememberedValue3 == neverEqualPolicy) {
                        rememberedValue3 = new DialogSettingViewKt$$ExternalSyntheticLambda4(2, mutableState, function12);
                        gapComposer3.updateRememberedValue(rememberedValue3);
                    }
                    Function1 function14 = (Function1) rememberedValue3;
                    boolean changed4 = gapComposer3.changed(material3BackedSnackbarHostState);
                    Object rememberedValue4 = gapComposer3.rememberedValue();
                    if (changed4 || rememberedValue4 == neverEqualPolicy) {
                        rememberedValue4 = new InterruptibleKt$runInterruptible$2(material3BackedSnackbarHostState, null, 27);
                        gapComposer3.updateRememberedValue(rememberedValue4);
                    }
                    InAppNotificationHostKt.InAppNotificationHost(function14, testTag, inAppNotificationHostStateHolder, paddingValues2, (Function2) rememberedValue4, function13, composableLambdaImpl, gapComposer3, ((intValue3 << 9) & 7168) | 48);
                    if (!((Boolean) mutableState.getValue()).booleanValue()) {
                        gapComposer3.startReplaceGroup(1217642333);
                        gapComposer3.end(false);
                        break;
                    } else {
                        gapComposer3.startReplaceGroup(1217162794);
                        ImmutableSet immutableSet = ((InAppNotificationHostStateHolder.InAppNotificationHostStateImpl) ActionBar.collectAsStateWithLifecycle(inAppNotificationHostStateHolder.currentInAppNotificationHostState, gapComposer3).getValue()).bannerInlineVisuals;
                        Object rememberedValue5 = gapComposer3.rememberedValue();
                        if (rememberedValue5 == neverEqualPolicy) {
                            rememberedValue5 = new TooltipKt$$ExternalSyntheticLambda1(mutableState, 25);
                            gapComposer3.updateRememberedValue(rememberedValue5);
                        }
                        StringsKt__IndentKt.ErrorNotificationsDialog(immutableSet, (Function0) rememberedValue5, function12, TestTagKt.testTag(SizeKt.FillWholeMaxSize, "ins_error_notifications_dialog"), null, gapComposer3, 3120);
                        gapComposer3.end(false);
                        break;
                    }
                }
        }
        return unit;
    }

    public /* synthetic */ ImageLoadKt$$ExternalSyntheticLambda0(Object obj, Object obj2, ImageOptions imageOptions, ConstraintsSizeResolver constraintsSizeResolver, int i, Function4 function4, MutableState mutableState) {
        this.f$0 = obj;
        this.f$1 = obj2;
        this.f$2 = imageOptions;
        this.f$3 = constraintsSizeResolver;
        this.f$5 = function4;
        this.f$6 = mutableState;
    }

    public /* synthetic */ ImageLoadKt$$ExternalSyntheticLambda0(Function1 function1, InAppNotificationHostStateHolder inAppNotificationHostStateHolder, Material3BackedSnackbarHostState material3BackedSnackbarHostState, Function1 function12, ComposableLambdaImpl composableLambdaImpl, MutableState mutableState) {
        this.f$0 = function1;
        this.f$1 = inAppNotificationHostStateHolder;
        this.f$2 = material3BackedSnackbarHostState;
        this.f$3 = function12;
        this.f$5 = composableLambdaImpl;
        this.f$6 = mutableState;
    }
}
