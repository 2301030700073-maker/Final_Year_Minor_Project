package app.k9mail.feature.account.common.ui;

import android.content.res.Resources;
import androidx.camera.core.impl.Config;
import androidx.camera.core.streamsharing.StreamSharing$$ExternalSyntheticLambda0;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.layout.Arrangement$SpacedAligned;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.AndroidMenu_androidKt;
import androidx.compose.material3.ExposedDropdownMenuDefaults;
import androidx.compose.material3.SegmentedButtonKt$$ExternalSyntheticLambda4;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.ParcelableSnapshotMutableIntState;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.platform.TestTagKt;
import androidx.compose.ui.semantics.ClearAndSetSemanticsElement;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.datastore.preferences.protobuf.Utf8;
import app.k9mail.feature.account.oauth.ui.AccountOAuthContract$ViewModel;
import app.k9mail.feature.account.setup.ui.autodiscovery.AccountAutoDiscoveryContract$State;
import app.k9mail.feature.account.setup.ui.autodiscovery.AutoDiscoveryStringMapperKt;
import com.fsck.k9.ui.helper.SizeFormatter;
import com.fsck.k9.ui.settings.AboutFragmentKt$$ExternalSyntheticLambda7;
import com.fsck.k9.ui.settings.notificationactions.ActionRowState;
import com.fsck.k9.ui.settings.notificationactions.MessageNotificationAction;
import com.fsck.k9.ui.settings.notificationactions.MoveActions;
import com.fsck.k9.ui.settings.notificationactions.NotificationListItemKt;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.math.MathKt;
import kotlin.time.InstantKt$$ExternalSyntheticLambda0;
import kotlinx.collections.immutable.ImmutableList;
import net.thunderbird.core.ui.compose.designsystem.atom.icon.Icons$Outlined;
import net.thunderbird.core.ui.compose.theme2.ThemeSpacings;
import net.thunderbird.core.ui.compose.theme2.ThemeSpacingsKt;
import okhttp3.internal.connection.ConnectPlan$$ExternalSyntheticLambda0;
import okio.Options;
import org.jsoup.helper.Validate;
import org.slf4j.helpers.Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class WizardNavigationBarKt$$ExternalSyntheticLambda0 implements Function3 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ Object f$2;
    public final /* synthetic */ Object f$3;
    public final /* synthetic */ Object f$4;

    public /* synthetic */ WizardNavigationBarKt$$ExternalSyntheticLambda0(WizardNavigationBarState wizardNavigationBarState, String str, Function0 function0, String str2, Function0 function02) {
        this.$r8$classId = 0;
        this.f$0 = wizardNavigationBarState;
        this.f$1 = str;
        this.f$2 = function0;
        this.f$3 = str2;
        this.f$4 = function02;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        int i = this.$r8$classId;
        int i2 = 7;
        Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
        int i3 = 12;
        NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
        Unit unit = Unit.INSTANCE;
        Object obj4 = this.f$4;
        Object obj5 = this.f$2;
        Object obj6 = this.f$3;
        Object obj7 = this.f$1;
        Object obj8 = this.f$0;
        switch (i) {
            case 0:
                WizardNavigationBarState wizardNavigationBarState = (WizardNavigationBarState) obj8;
                String str = (String) obj7;
                Function0 function0 = (Function0) obj5;
                String str2 = (String) obj6;
                Function0 function02 = (Function0) obj4;
                PaddingValues paddingValues = (PaddingValues) obj;
                Composer composer = (Composer) obj2;
                int intValue = ((Integer) obj3).intValue();
                paddingValues.getClass();
                if ((intValue & 6) == 0) {
                    intValue |= ((GapComposer) composer).changed(paddingValues) ? 4 : 2;
                }
                GapComposer gapComposer = (GapComposer) composer;
                if (gapComposer.shouldExecute(intValue & 1, (intValue & 19) != 18)) {
                    StaticProvidableCompositionLocal staticProvidableCompositionLocal = ThemeSpacingsKt.LocalThemeSpacings;
                    ((ThemeSpacings) gapComposer.consume(staticProvidableCompositionLocal)).getClass();
                    ((ThemeSpacings) gapComposer.consume(staticProvidableCompositionLocal)).getClass();
                    ((ThemeSpacings) gapComposer.consume(staticProvidableCompositionLocal)).getClass();
                    ((ThemeSpacings) gapComposer.consume(staticProvidableCompositionLocal)).getClass();
                    Modifier then = OffsetKt.padding(OffsetKt.m221paddingqDBjuR0(companion, 32.0f, 8.0f, 32.0f, 16.0f), paddingValues).then(SizeKt.FillWholeMaxWidth);
                    boolean z = wizardNavigationBarState.showNext;
                    boolean z2 = wizardNavigationBarState.showBack;
                    RowMeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy((z && z2) ? OffsetKt.SpaceBetween : z ? OffsetKt.f4End : OffsetKt.f7Start, Alignment.Companion.Top, gapComposer, 0);
                    long j = gapComposer.compositeKeyHashCode;
                    int i4 = (int) (j ^ (j >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
                    Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, then);
                    ComposeUiNode.Companion.getClass();
                    LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
                    gapComposer.startReusableNode();
                    if (gapComposer.inserting) {
                        gapComposer.createNode(layoutNode$Companion$Constructor$1);
                    } else {
                        gapComposer.useNode();
                    }
                    Updater.m380setimpl(gapComposer, rowMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
                    Updater.m380setimpl(gapComposer, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                    Updater.m380setimpl(gapComposer, Integer.valueOf(i4), ComposeUiNode.Companion.SetCompositeKeyHash);
                    Updater.m379reconcileimpl(gapComposer, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                    Updater.m380setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
                    if (z2) {
                        gapComposer.startReplaceGroup(-2112686340);
                        Validate.ButtonOutlined(str, function0, TestTagKt.testTag(companion, "account_setup_back_button"), wizardNavigationBarState.isBackEnabled, null, null, null, null, gapComposer, 384, 240);
                        gapComposer.end(false);
                    } else {
                        gapComposer.startReplaceGroup(-2112434124);
                        gapComposer.end(false);
                    }
                    if (wizardNavigationBarState.showNext) {
                        gapComposer.startReplaceGroup(-2112375906);
                        IntOffsetKt.ButtonFilled(str2, function02, TestTagKt.testTag(companion, "account_setup_next_button"), wizardNavigationBarState.isNextEnabled, null, null, null, gapComposer, 384, 240);
                        gapComposer.end(false);
                    } else {
                        gapComposer.startReplaceGroup(-2112125612);
                        gapComposer.end(false);
                    }
                    gapComposer.end(true);
                    break;
                } else {
                    gapComposer.skipToGroupEnd();
                    break;
                }
            case 1:
                ImmutableList immutableList = (ImmutableList) obj8;
                Function1 function1 = (Function1) obj7;
                Function1 function12 = (Function1) obj6;
                MutableState mutableState = (MutableState) obj4;
                Composer composer2 = (Composer) obj2;
                int intValue2 = ((Integer) obj3).intValue();
                ((ColumnScopeInstance) obj).getClass();
                GapComposer gapComposer2 = (GapComposer) composer2;
                if (gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 17) != 16)) {
                    for (Object obj9 : immutableList) {
                        ComposableLambdaImpl rememberComposableLambda = Expect_jvmKt.rememberComposableLambda(835079823, new SegmentedButtonKt$$ExternalSyntheticLambda4(obj9, function12, obj5, i2), gapComposer2);
                        boolean changed = gapComposer2.changed(function1) | gapComposer2.changedInstance(obj9);
                        Object rememberedValue = gapComposer2.rememberedValue();
                        if (changed || rememberedValue == neverEqualPolicy) {
                            rememberedValue = new ConnectPlan$$ExternalSyntheticLambda0(function1, obj9, mutableState, 10);
                            gapComposer2.updateRememberedValue(rememberedValue);
                        }
                        AndroidMenu_androidKt.DropdownMenuItem(rememberComposableLambda, (Function0) rememberedValue, null, false, null, ExposedDropdownMenuDefaults.ItemContentPadding, gapComposer2, 6);
                    }
                    break;
                } else {
                    gapComposer2.skipToGroupEnd();
                    break;
                }
            case 2:
                Function1 function13 = (Function1) obj8;
                Function0 function03 = (Function0) obj5;
                Function0 function04 = (Function0) obj4;
                AccountOAuthContract$ViewModel accountOAuthContract$ViewModel = (AccountOAuthContract$ViewModel) obj7;
                Resources resources = (Resources) obj6;
                AccountAutoDiscoveryContract$State accountAutoDiscoveryContract$State = (AccountAutoDiscoveryContract$State) obj;
                Composer composer3 = (Composer) obj2;
                int intValue3 = ((Integer) obj3).intValue();
                accountAutoDiscoveryContract$State.getClass();
                if ((intValue3 & 6) == 0) {
                    intValue3 |= (intValue3 & 8) == 0 ? ((GapComposer) composer3).changed(accountAutoDiscoveryContract$State) : ((GapComposer) composer3).changedInstance(accountAutoDiscoveryContract$State) ? 4 : 2;
                }
                GapComposer gapComposer3 = (GapComposer) composer3;
                if (gapComposer3.shouldExecute(intValue3 & 1, (intValue3 & 19) != 18)) {
                    AutoDiscoveryStringMapperKt.ContentView(accountAutoDiscoveryContract$State, function13, function03, function04, accountOAuthContract$ViewModel, resources, null, gapComposer3, 8 | (intValue3 & 14));
                    break;
                } else {
                    gapComposer3.skipToGroupEnd();
                    break;
                }
            case 3:
                ImmutableList immutableList2 = (ImmutableList) obj8;
                SizeFormatter sizeFormatter = (SizeFormatter) obj7;
                Function1 function14 = (Function1) obj6;
                Function1 function15 = (Function1) obj4;
                Function0 function05 = (Function0) obj5;
                Composer composer4 = (Composer) obj2;
                int intValue4 = ((Integer) obj3).intValue();
                ((ColumnScopeInstance) obj).getClass();
                boolean z3 = (intValue4 & 17) != 16;
                int i5 = intValue4 & 1;
                GapComposer gapComposer4 = (GapComposer) composer4;
                if (gapComposer4.shouldExecute(i5, z3)) {
                    Util.AttachmentListContent(immutableList2, sizeFormatter, function14, function15, function05, gapComposer4, 64);
                    break;
                } else {
                    gapComposer4.skipToGroupEnd();
                    break;
                }
            case 4:
                MessageNotificationAction messageNotificationAction = (MessageNotificationAction) obj8;
                String str3 = (String) obj7;
                String str4 = (String) obj6;
                MoveActions moveActions = (MoveActions) obj5;
                ActionRowState actionRowState = (ActionRowState) obj4;
                RowScope rowScope = (RowScope) obj;
                Composer composer5 = (Composer) obj2;
                int intValue5 = ((Integer) obj3).intValue();
                rowScope.getClass();
                if ((intValue5 & 6) == 0) {
                    intValue5 |= ((GapComposer) composer5).changed(rowScope) ? 4 : 2;
                }
                GapComposer gapComposer5 = (GapComposer) composer5;
                if (gapComposer5.shouldExecute(intValue5 & 1, (intValue5 & 19) != 18)) {
                    Painter painterResource = MathKt.painterResource(messageNotificationAction.iconRes, gapComposer5, 0);
                    StaticProvidableCompositionLocal staticProvidableCompositionLocal2 = ThemeSpacingsKt.LocalThemeSpacings;
                    ((ThemeSpacings) gapComposer5.consume(staticProvidableCompositionLocal2)).getClass();
                    Modifier.Companion companion2 = Modifier.Companion.$$INSTANCE;
                    Modifier m218padding3ABfNKs = OffsetKt.m218padding3ABfNKs(companion2, 8.0f);
                    Object rememberedValue2 = gapComposer5.rememberedValue();
                    if (rememberedValue2 == neverEqualPolicy) {
                        rememberedValue2 = new InstantKt$$ExternalSyntheticLambda0(12);
                        gapComposer5.updateRememberedValue(rememberedValue2);
                    }
                    AtomicInteger atomicInteger = SemanticsModifierKt.lastIdentifier;
                    ImageKt.Image(painterResource, null, m218padding3ABfNKs.then(new ClearAndSetSemanticsElement((Function1) rememberedValue2)), null, null, 0.0f, null, gapComposer5, 56, 120);
                    Modifier weight = rowScope.weight(companion2, 1.0f);
                    ((ThemeSpacings) gapComposer5.consume(staticProvidableCompositionLocal2)).getClass();
                    ((ThemeSpacings) gapComposer5.consume(staticProvidableCompositionLocal2)).getClass();
                    Utf8.SafeProcessor.m799TextBodyLargeXl4FiYE(str3, OffsetKt.m222paddingqDBjuR0$default(weight, 24.0f, 0.0f, 8.0f, 0.0f, 10), 0L, null, 0, 0, gapComposer5, 0, 60);
                    ((ThemeSpacings) gapComposer5.consume(staticProvidableCompositionLocal2)).getClass();
                    Modifier m222paddingqDBjuR0$default = OffsetKt.m222paddingqDBjuR0$default(companion2, 0.0f, 0.0f, 8.0f, 0.0f, 11);
                    ((ThemeSpacings) gapComposer5.consume(staticProvidableCompositionLocal2)).getClass();
                    RowMeasurePolicy rowMeasurePolicy2 = RowKt.rowMeasurePolicy(new Arrangement$SpacedAligned(8.0f, true, new StreamSharing$$ExternalSyntheticLambda0(7)), Alignment.Companion.Top, gapComposer5, 0);
                    long j2 = gapComposer5.compositeKeyHashCode;
                    int i6 = (int) (j2 ^ (j2 >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer5.currentCompositionLocalScope();
                    Modifier materializeModifier2 = AbsoluteAlignment.materializeModifier(gapComposer5, m222paddingqDBjuR0$default);
                    ComposeUiNode.Companion.getClass();
                    LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$12 = ComposeUiNode.Companion.Constructor;
                    gapComposer5.startReusableNode();
                    if (gapComposer5.inserting) {
                        gapComposer5.createNode(layoutNode$Companion$Constructor$12);
                    } else {
                        gapComposer5.useNode();
                    }
                    Updater.m380setimpl(gapComposer5, rowMeasurePolicy2, ComposeUiNode.Companion.SetMeasurePolicy);
                    Updater.m380setimpl(gapComposer5, currentCompositionLocalScope2, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                    Updater.m380setimpl(gapComposer5, Integer.valueOf(i6), ComposeUiNode.Companion.SetCompositeKeyHash);
                    Updater.m379reconcileimpl(gapComposer5, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                    Updater.m380setimpl(gapComposer5, materializeModifier2, ComposeUiNode.Companion.SetModifier);
                    NotificationListItemKt.ArrowButton(Icons$Outlined.ExpandLess, Config.CC.m(str4, ". ", moveActions.moveUpLabel), actionRowState.canMoveUp, moveActions.onMoveUp, null, gapComposer5, 0);
                    NotificationListItemKt.ArrowButton(Icons$Outlined.ExpandMore, Config.CC.m(str4, ". ", moveActions.moveDownLabel), actionRowState.canMoveDown, moveActions.onMoveDown, null, gapComposer5, 0);
                    gapComposer5.end(true);
                    break;
                } else {
                    gapComposer5.skipToGroupEnd();
                    break;
                }
            default:
                ImmutableList immutableList3 = (ImmutableList) obj8;
                ParcelableSnapshotMutableIntState parcelableSnapshotMutableIntState = (ParcelableSnapshotMutableIntState) obj7;
                MutableState mutableState2 = (MutableState) obj6;
                Function1 function16 = (Function1) obj5;
                PaddingValues paddingValues2 = (PaddingValues) obj4;
                PaddingValues paddingValues3 = (PaddingValues) obj;
                Composer composer6 = (Composer) obj2;
                int intValue6 = ((Integer) obj3).intValue();
                paddingValues3.getClass();
                if ((intValue6 & 6) == 0) {
                    intValue6 |= ((GapComposer) composer6).changed(paddingValues3) ? 4 : 2;
                }
                GapComposer gapComposer6 = (GapComposer) composer6;
                if (gapComposer6.shouldExecute(intValue6 & 1, (intValue6 & 19) != 18)) {
                    boolean changed2 = gapComposer6.changed(parcelableSnapshotMutableIntState) | gapComposer6.changed(mutableState2);
                    Object rememberedValue3 = gapComposer6.rememberedValue();
                    if (changed2 || rememberedValue3 == neverEqualPolicy) {
                        rememberedValue3 = new AboutFragmentKt$$ExternalSyntheticLambda7(i3, parcelableSnapshotMutableIntState, mutableState2);
                        gapComposer6.updateRememberedValue(rememberedValue3);
                    }
                    Options.Companion.SettingList(immutableList3, (Function2) rememberedValue3, function16, OffsetKt.padding(OffsetKt.padding(companion, paddingValues2), paddingValues3), gapComposer6, 0);
                    break;
                } else {
                    gapComposer6.skipToGroupEnd();
                    break;
                }
        }
        return unit;
    }

    public /* synthetic */ WizardNavigationBarKt$$ExternalSyntheticLambda0(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = obj2;
        this.f$3 = obj3;
        this.f$2 = obj4;
        this.f$4 = obj5;
    }

    public /* synthetic */ WizardNavigationBarKt$$ExternalSyntheticLambda0(Function1 function1, Function0 function0, Function0 function02, AccountOAuthContract$ViewModel accountOAuthContract$ViewModel, Resources resources) {
        this.$r8$classId = 2;
        this.f$0 = function1;
        this.f$2 = function0;
        this.f$4 = function02;
        this.f$1 = accountOAuthContract$ViewModel;
        this.f$3 = resources;
    }

    public /* synthetic */ WizardNavigationBarKt$$ExternalSyntheticLambda0(ImmutableList immutableList, SizeFormatter sizeFormatter, Function1 function1, Function1 function12, Function0 function0) {
        this.$r8$classId = 3;
        this.f$0 = immutableList;
        this.f$1 = sizeFormatter;
        this.f$3 = function1;
        this.f$4 = function12;
        this.f$2 = function0;
    }
}
