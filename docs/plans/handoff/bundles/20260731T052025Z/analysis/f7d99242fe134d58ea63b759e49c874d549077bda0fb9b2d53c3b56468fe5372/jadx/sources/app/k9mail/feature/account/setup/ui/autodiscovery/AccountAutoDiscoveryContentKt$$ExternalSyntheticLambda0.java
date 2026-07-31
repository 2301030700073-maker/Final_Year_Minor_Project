package app.k9mail.feature.account.setup.ui.autodiscovery;

import androidx.camera.core.impl.Config;
import androidx.compose.foundation.ScrollState;
import androidx.compose.foundation.ScrollableAreaElement;
import androidx.compose.foundation.ScrollingLayoutElement;
import androidx.compose.foundation.VerticalScrollableClipShape;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.FillElement;
import androidx.compose.foundation.layout.FlowRowOverflow;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.ExposedDropdownMenuKt$$ExternalSyntheticLambda3;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.ComposeUiNode$Companion$SetModifier$1;
import androidx.compose.ui.node.OwnerSnapshotObserver$onCommitAffectingLayout$1;
import androidx.core.util.DebugUtils;
import androidx.room.util.DBUtil;
import app.k9mail.feature.account.common.ui.WizardNavigationBarState;
import app.k9mail.feature.account.oauth.ui.AccountOAuthContract$ViewModel;
import com.fsck.k9.ui.settings.AboutFragment$$ExternalSyntheticLambda2;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import net.thunderbird.feature.mail.message.list.ui.dialog.SetupArchiveFolderDialogContract$State;
import org.jsoup.Jsoup;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class AccountAutoDiscoveryContentKt$$ExternalSyntheticLambda0 implements Function3 {
    public final /* synthetic */ int $r8$classId = 0;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Function1 f$1;
    public final /* synthetic */ Object f$2;
    public final /* synthetic */ Object f$3;
    public final /* synthetic */ Function0 f$4;
    public final /* synthetic */ Function0 f$5;
    public final /* synthetic */ Object f$6;

    public /* synthetic */ AccountAutoDiscoveryContentKt$$ExternalSyntheticLambda0(ScrollState scrollState, Function1 function1, AccountAutoDiscoveryContract$State accountAutoDiscoveryContract$State, String str, Function0 function0, Function0 function02, AccountOAuthContract$ViewModel accountOAuthContract$ViewModel) {
        this.f$0 = scrollState;
        this.f$1 = function1;
        this.f$2 = accountAutoDiscoveryContract$State;
        this.f$3 = str;
        this.f$4 = function0;
        this.f$5 = function02;
        this.f$6 = accountOAuthContract$ViewModel;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        Modifier then;
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Object obj4 = this.f$6;
        Object obj5 = this.f$3;
        Object obj6 = this.f$2;
        Object obj7 = this.f$0;
        switch (i) {
            case 0:
                ScrollState scrollState = (ScrollState) obj7;
                AccountAutoDiscoveryContract$State accountAutoDiscoveryContract$State = (AccountAutoDiscoveryContract$State) obj6;
                String str = (String) obj5;
                AccountOAuthContract$ViewModel accountOAuthContract$ViewModel = (AccountOAuthContract$ViewModel) obj4;
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
                    FillElement fillElement = SizeKt.FillWholeMaxSize;
                    FlowRowOverflow flowRowOverflow = OffsetKt.Top;
                    BiasAlignment.Horizontal horizontal = Alignment.Companion.Start;
                    ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(flowRowOverflow, horizontal, gapComposer, 0);
                    long j = gapComposer.compositeKeyHashCode;
                    int i2 = (int) (j ^ (j >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
                    Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, fillElement);
                    ComposeUiNode.Companion.getClass();
                    Function0 function0 = ComposeUiNode.Companion.Constructor;
                    gapComposer.startReusableNode();
                    if (gapComposer.inserting) {
                        gapComposer.createNode(function0);
                    } else {
                        gapComposer.useNode();
                    }
                    ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$1 = ComposeUiNode.Companion.SetMeasurePolicy;
                    Updater.m380setimpl(gapComposer, columnMeasurePolicy, composeUiNode$Companion$SetModifier$1);
                    ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$12 = ComposeUiNode.Companion.SetResolvedCompositionLocals;
                    Updater.m380setimpl(gapComposer, currentCompositionLocalScope, composeUiNode$Companion$SetModifier$12);
                    Integer valueOf = Integer.valueOf(i2);
                    ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$13 = ComposeUiNode.Companion.SetCompositeKeyHash;
                    Updater.m380setimpl(gapComposer, valueOf, composeUiNode$Companion$SetModifier$13);
                    OwnerSnapshotObserver$onCommitAffectingLayout$1 ownerSnapshotObserver$onCommitAffectingLayout$1 = ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion;
                    Updater.m379reconcileimpl(gapComposer, ownerSnapshotObserver$onCommitAffectingLayout$1);
                    ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$14 = ComposeUiNode.Companion.SetModifier;
                    Updater.m380setimpl(gapComposer, materializeModifier, composeUiNode$Companion$SetModifier$14);
                    then = ColumnScopeInstance.weight(true).then(ClipKt.clip(Modifier.Companion.$$INSTANCE, VerticalScrollableClipShape.INSTANCE)).then(new ScrollableAreaElement(null, null, Orientation.Vertical, scrollState, scrollState.internalInteractionSource, true, true)).then(new ScrollingLayoutElement(scrollState));
                    Modifier padding = OffsetKt.padding(then, paddingValues);
                    ColumnMeasurePolicy columnMeasurePolicy2 = ColumnKt.columnMeasurePolicy(flowRowOverflow, horizontal, gapComposer, 0);
                    long j2 = gapComposer.compositeKeyHashCode;
                    int i3 = (int) (j2 ^ (j2 >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer.currentCompositionLocalScope();
                    Modifier materializeModifier2 = AbsoluteAlignment.materializeModifier(gapComposer, padding);
                    gapComposer.startReusableNode();
                    if (gapComposer.inserting) {
                        gapComposer.createNode(function0);
                    } else {
                        gapComposer.useNode();
                    }
                    Updater.m380setimpl(gapComposer, columnMeasurePolicy2, composeUiNode$Companion$SetModifier$1);
                    Updater.m380setimpl(gapComposer, currentCompositionLocalScope2, composeUiNode$Companion$SetModifier$12);
                    Config.CC.m(i3, gapComposer, composeUiNode$Companion$SetModifier$13, gapComposer, ownerSnapshotObserver$onCommitAffectingLayout$1);
                    Updater.m380setimpl(gapComposer, materializeModifier2, composeUiNode$Companion$SetModifier$14);
                    DBUtil.AppTitleTopHeader(str, null, gapComposer, 0, 2);
                    OffsetKt.Spacer(gapComposer, ColumnScopeInstance.weight(true));
                    Function1 function1 = this.f$1;
                    AutoDiscoveryStringMapperKt.AutoDiscoveryContent(accountAutoDiscoveryContract$State, function1, this.f$4, this.f$5, accountOAuthContract$ViewModel, null, gapComposer, 8);
                    OffsetKt.Spacer(gapComposer, ColumnScopeInstance.weight(true));
                    gapComposer.end(true);
                    boolean changed = gapComposer.changed(function1);
                    Object rememberedValue = gapComposer.rememberedValue();
                    Object obj8 = Composer.Companion.Empty;
                    if (changed || rememberedValue == obj8) {
                        rememberedValue = new ExposedDropdownMenuKt$$ExternalSyntheticLambda3(29, function1);
                        gapComposer.updateRememberedValue(rememberedValue);
                    }
                    Function0 function02 = (Function0) rememberedValue;
                    boolean changed2 = gapComposer.changed(function1);
                    Object rememberedValue2 = gapComposer.rememberedValue();
                    if (changed2 || rememberedValue2 == obj8) {
                        rememberedValue2 = new AboutFragment$$ExternalSyntheticLambda2(1, function1);
                        gapComposer.updateRememberedValue(rememberedValue2);
                    }
                    DebugUtils.WizardNavigationBar(function02, (Function0) rememberedValue2, null, null, null, new WizardNavigationBarState(13, accountAutoDiscoveryContract$State.isNextButtonVisible, false, false), gapComposer, 0, 28);
                    gapComposer.end(true);
                    break;
                }
            default:
                SetupArchiveFolderDialogContract$State setupArchiveFolderDialogContract$State = (SetupArchiveFolderDialogContract$State) obj7;
                Function0 function03 = (Function0) obj6;
                Function1 function12 = (Function1) obj5;
                MutableState mutableState = (MutableState) obj4;
                RowScope rowScope = (RowScope) obj;
                Composer composer2 = (Composer) obj2;
                int intValue2 = ((Integer) obj3).intValue();
                rowScope.getClass();
                if ((intValue2 & 6) == 0) {
                    intValue2 |= ((GapComposer) composer2).changed(rowScope) ? 4 : 2;
                }
                GapComposer gapComposer2 = (GapComposer) composer2;
                if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 19) != 18)) {
                    gapComposer2.skipToGroupEnd();
                    break;
                } else {
                    Jsoup.SetupArchiveFolderDialogButtons(rowScope, setupArchiveFolderDialogContract$State, (String) mutableState.getValue(), this.f$4, this.f$5, function03, this.f$1, function12, gapComposer2, intValue2 & 14);
                    break;
                }
        }
        return unit;
    }

    public /* synthetic */ AccountAutoDiscoveryContentKt$$ExternalSyntheticLambda0(SetupArchiveFolderDialogContract$State setupArchiveFolderDialogContract$State, Function0 function0, Function0 function02, Function0 function03, Function1 function1, Function1 function12, MutableState mutableState) {
        this.f$0 = setupArchiveFolderDialogContract$State;
        this.f$4 = function0;
        this.f$5 = function02;
        this.f$2 = function03;
        this.f$1 = function1;
        this.f$3 = function12;
        this.f$6 = mutableState;
    }
}
