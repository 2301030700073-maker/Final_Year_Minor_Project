package androidx.compose.runtime;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.camera.core.impl.Config;
import androidx.compose.animation.CrossfadeKt;
import androidx.compose.animation.core.AnimationVector2D;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.FlowRowScopeInstance;
import androidx.compose.foundation.layout.LayoutWeightElement;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.foundation.text.HandleState;
import androidx.compose.foundation.text.input.internal.CoreTextFieldSemanticsModifierNode;
import androidx.compose.foundation.text.selection.SelectionMagnifierKt;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager_androidKt$$ExternalSyntheticLambda4;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifier;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.ComposeUiNode$Companion$SetModifier$1;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.node.OwnerSnapshotObserver$onCommitAffectingLayout$1;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.text.ParagraphKt;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntSize;
import androidx.core.util.DebugUtils;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.navigation.CollectionNavType;
import androidx.navigation.NavType;
import androidx.navigation.serialization.RouteBuilder$ParamType;
import androidx.room.InvalidationTracker$implementation$1;
import androidx.work.Data;
import app.k9mail.feature.account.edit.ui.server.settings.save.SaveServerSettingsContract$State;
import app.k9mail.feature.account.edit.ui.server.settings.save.SaveServerSettingsScreenKt;
import app.k9mail.feature.account.setup.ui.createaccount.CreateAccountContract$State;
import app.k9mail.feature.account.setup.ui.createaccount.CreateAccountScreenKt;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import coil3.size.ViewSizeResolver;
import com.fsck.k9.sasl.OAuthBearer;
import java.util.Iterator;
import java.util.Map;
import kotlin.Unit;
import kotlin.collections.AbstractMap$$ExternalSyntheticLambda0;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.channels.BufferedChannel$$ExternalSyntheticLambda1;
import kotlinx.coroutines.sync.MutexImpl;
import kotlinx.coroutines.sync.SemaphoreAndMutexImpl;
import kotlinx.serialization.KSerializer;
import net.thunderbird.core.ui.compose.theme2.ThemeColorScheme;
import net.thunderbird.core.ui.compose.theme2.ThemeColorSchemeKt;
import net.thunderbird.core.ui.compose.theme2.ThemeSpacings;
import net.thunderbird.core.ui.compose.theme2.ThemeSpacingsKt;
import net.thunderbird.core.ui.setting.SettingValue;
import net.thunderbird.feature.changelog.internal.ReleaseUiModel;
import net.thunderbird.feature.mail.message.list.ui.component.config.MessageSublineLeadingIndicator;
import net.thunderbird.feature.mail.message.list.ui.component.molecule.MessageBodyContentKt;
import net.thunderbird.feature.mail.message.list.ui.event.MessageListEvent;
import net.thunderbird.feature.mail.message.list.ui.state.MessageListState;
import net.thunderbird.feature.thundermail.internal.common.ui.ThundermailContract$State;
import net.thunderbird.feature.thundermail.internal.common.ui.ThundermailOAuthRedirectScreenKt;
import okhttp3.Dispatcher;
import org.jsoup.Jsoup;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class MovableContentKt$$ExternalSyntheticLambda0 implements Function3 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ MovableContentKt$$ExternalSyntheticLambda0(MutexImpl mutexImpl, MutexImpl.CancellableContinuationWithOwner cancellableContinuationWithOwner) {
        this.$r8$classId = 8;
        this.f$0 = mutexImpl;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        boolean z;
        boolean z2;
        Object obj4;
        Modifier then;
        boolean z3;
        long j;
        long j2;
        int i = this.$r8$classId;
        Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
        Unit unit = Unit.INSTANCE;
        Object obj5 = this.f$0;
        switch (i) {
            case 0:
                MovableContent movableContent = (MovableContent) obj5;
                Composer composer = (Composer) obj2;
                int intValue = ((Integer) obj3).intValue();
                if ((intValue & 6) == 0) {
                    intValue |= (intValue & 8) == 0 ? ((GapComposer) composer).changed(obj) : ((GapComposer) composer).changedInstance(obj) ? 4 : 2;
                }
                GapComposer gapComposer = (GapComposer) composer;
                if (gapComposer.shouldExecute(intValue & 1, (intValue & 19) != 18)) {
                    gapComposer.invokeMovableContentLambda(movableContent, gapComposer.currentCompositionLocalScope(), obj, false);
                    break;
                } else {
                    gapComposer.skipToGroupEnd();
                    break;
                }
            case 1:
                CoreTextFieldSemanticsModifierNode coreTextFieldSemanticsModifierNode = (CoreTextFieldSemanticsModifierNode) obj5;
                int intValue2 = ((Integer) obj).intValue();
                int intValue3 = ((Integer) obj2).intValue();
                boolean booleanValue = ((Boolean) obj3).booleanValue();
                if (!booleanValue) {
                    intValue2 = coreTextFieldSemanticsModifierNode.offsetMapping.transformedToOriginal(intValue2);
                }
                if (!booleanValue) {
                    intValue3 = coreTextFieldSemanticsModifierNode.offsetMapping.transformedToOriginal(intValue3);
                }
                if (coreTextFieldSemanticsModifierNode.enabled) {
                    long j3 = coreTextFieldSemanticsModifierNode.value.selection;
                    int i2 = TextRange.$r8$clinit;
                    if (intValue2 != ((int) (j3 >> 32)) || intValue3 != ((int) (4294967295L & j3))) {
                        int min = Math.min(intValue2, intValue3);
                        HandleState handleState = HandleState.None;
                        if (min >= 0 && Math.max(intValue2, intValue3) <= coreTextFieldSemanticsModifierNode.value.annotatedString.text.length()) {
                            if (booleanValue || intValue2 == intValue3) {
                                TextFieldSelectionManager textFieldSelectionManager = coreTextFieldSemanticsModifierNode.manager;
                                textFieldSelectionManager.updateFloatingToolbar(false);
                                textFieldSelectionManager.setHandleState(handleState);
                            } else {
                                coreTextFieldSemanticsModifierNode.manager.enterSelectionMode$foundation(true);
                            }
                            coreTextFieldSemanticsModifierNode.state.onValueChange.invoke(new TextFieldValue(coreTextFieldSemanticsModifierNode.value.annotatedString, ParagraphKt.TextRange(intValue2, intValue3), (TextRange) null));
                            z = true;
                            break;
                        } else {
                            TextFieldSelectionManager textFieldSelectionManager2 = coreTextFieldSemanticsModifierNode.manager;
                            textFieldSelectionManager2.updateFloatingToolbar(false);
                            textFieldSelectionManager2.setHandleState(handleState);
                        }
                    }
                }
                z = false;
                break;
            case 2:
                TextFieldSelectionManager textFieldSelectionManager3 = (TextFieldSelectionManager) obj5;
                Modifier modifier = (Modifier) obj;
                ((Integer) obj3).getClass();
                GapComposer gapComposer2 = (GapComposer) ((Composer) obj2);
                gapComposer2.startReplaceGroup(1980580247);
                Density density = (Density) gapComposer2.consume(CompositionLocalsKt.LocalDensity);
                Object rememberedValue = gapComposer2.rememberedValue();
                NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
                Object obj6 = rememberedValue;
                if (rememberedValue == neverEqualPolicy) {
                    ParcelableSnapshotMutableState mutableStateOf$default = Updater.mutableStateOf$default(new IntSize(0L));
                    gapComposer2.updateRememberedValue(mutableStateOf$default);
                    obj6 = mutableStateOf$default;
                }
                MutableState mutableState = (MutableState) obj6;
                boolean changedInstance = gapComposer2.changedInstance(textFieldSelectionManager3);
                Object rememberedValue2 = gapComposer2.rememberedValue();
                Object obj7 = rememberedValue2;
                if (changedInstance || rememberedValue2 == neverEqualPolicy) {
                    Recomposer$$ExternalSyntheticLambda6 recomposer$$ExternalSyntheticLambda6 = new Recomposer$$ExternalSyntheticLambda6(21, textFieldSelectionManager3, mutableState);
                    gapComposer2.updateRememberedValue(recomposer$$ExternalSyntheticLambda6);
                    obj7 = recomposer$$ExternalSyntheticLambda6;
                }
                Function0 function0 = (Function0) obj7;
                boolean changed = gapComposer2.changed(density);
                Object rememberedValue3 = gapComposer2.rememberedValue();
                if (changed || rememberedValue3 == neverEqualPolicy) {
                    z2 = false;
                    TextFieldSelectionManager_androidKt$$ExternalSyntheticLambda4 textFieldSelectionManager_androidKt$$ExternalSyntheticLambda4 = new TextFieldSelectionManager_androidKt$$ExternalSyntheticLambda4(density, mutableState, false ? 1 : 0);
                    gapComposer2.updateRememberedValue(textFieldSelectionManager_androidKt$$ExternalSyntheticLambda4);
                    obj4 = textFieldSelectionManager_androidKt$$ExternalSyntheticLambda4;
                } else {
                    z2 = false;
                    obj4 = rememberedValue3;
                }
                AnimationVector2D animationVector2D = SelectionMagnifierKt.UnspecifiedAnimationVector2D;
                then = modifier.then(new ComposedModifier(new BufferedChannel$$ExternalSyntheticLambda1(3, (Object) function0, (Function1) obj4)));
                gapComposer2.end(z2);
                break;
            case 3:
                Dispatcher dispatcher = (Dispatcher) obj5;
                int intValue4 = ((Integer) obj).intValue();
                String str = (String) obj2;
                NavType navType = (NavType) obj3;
                str.getClass();
                navType.getClass();
                int ordinal = (((navType instanceof CollectionNavType) || ((KSerializer) dispatcher.executorServiceOrNull).getDescriptor().isElementOptional(intValue4)) ? RouteBuilder$ParamType.QUERY : RouteBuilder$ParamType.PATH).ordinal();
                if (ordinal == 0) {
                    dispatcher.runningAsyncCalls = ((String) dispatcher.runningAsyncCalls) + '/' + CameraDevices$CC.m('}', "{", str);
                } else if (ordinal != 1) {
                    UriKt$$ExternalSyntheticBUOutline0.m857m();
                    break;
                } else {
                    dispatcher.addQuery(str, "{" + str + '}');
                }
                break;
            case 4:
                SaveServerSettingsContract$State saveServerSettingsContract$State = (SaveServerSettingsContract$State) obj5;
                PaddingValues paddingValues = (PaddingValues) obj;
                Composer composer2 = (Composer) obj2;
                int intValue5 = ((Integer) obj3).intValue();
                paddingValues.getClass();
                if ((intValue5 & 6) == 0) {
                    intValue5 |= ((GapComposer) composer2).changed(paddingValues) ? 4 : 2;
                }
                GapComposer gapComposer3 = (GapComposer) composer2;
                if (gapComposer3.shouldExecute(intValue5 & 1, (intValue5 & 19) != 18)) {
                    OAuthBearer.ContentLoadingErrorView(saveServerSettingsContract$State, SaveServerSettingsScreenKt.f23lambda$933224993, SaveServerSettingsScreenKt.lambda$1868006988, OffsetKt.padding(SizeKt.FillWholeMaxSize, paddingValues), null, SaveServerSettingsScreenKt.lambda$1143731368, gapComposer3, 197048);
                    break;
                } else {
                    gapComposer3.skipToGroupEnd();
                    break;
                }
            case 5:
                CreateAccountContract$State createAccountContract$State = (CreateAccountContract$State) obj5;
                PaddingValues paddingValues2 = (PaddingValues) obj;
                Composer composer3 = (Composer) obj2;
                int intValue6 = ((Integer) obj3).intValue();
                paddingValues2.getClass();
                if ((intValue6 & 6) == 0) {
                    intValue6 |= ((GapComposer) composer3).changed(paddingValues2) ? 4 : 2;
                }
                GapComposer gapComposer4 = (GapComposer) composer3;
                if (gapComposer4.shouldExecute(intValue6 & 1, (intValue6 & 19) != 18)) {
                    OAuthBearer.ContentLoadingErrorView(createAccountContract$State, CreateAccountScreenKt.lambda$1341403986, CreateAccountScreenKt.f26lambda$2242367, OffsetKt.padding(SizeKt.FillWholeMaxSize, paddingValues2), null, CreateAccountScreenKt.f25lambda$1334789093, gapComposer4, 197040);
                    break;
                } else {
                    gapComposer4.skipToGroupEnd();
                    break;
                }
            case 6:
                ((AbstractMap$$ExternalSyntheticLambda0) obj5).invoke((Throwable) obj);
                break;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                break;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                MutexImpl mutexImpl = (MutexImpl) obj5;
                MutexImpl.owner$volatile$FU.set(mutexImpl, null);
                mutexImpl.unlock(null);
                break;
            case 9:
                ((SemaphoreAndMutexImpl) obj5).release();
                break;
            case 10:
                SettingValue.ActionText actionText = (SettingValue.ActionText) obj5;
                Composer composer4 = (Composer) obj2;
                int intValue7 = ((Integer) obj3).intValue();
                ((ColumnScopeInstance) obj).getClass();
                GapComposer gapComposer5 = (GapComposer) composer4;
                if (gapComposer5.shouldExecute(intValue7 & 1, (intValue7 & 17) != 16)) {
                    DebugUtils.m787TextTitleMediumXl4FiYE((String) actionText.title.invoke(), null, 0L, null, 0, 0, gapComposer5, 0, 62);
                    Data.Companion.m825TextBodyMediumZHfKjFs(actionText.value, (Modifier) null, 0L, 0, 0, (Function1) null, gapComposer5, 0, 126);
                    break;
                } else {
                    gapComposer5.skipToGroupEnd();
                    break;
                }
            case 11:
                SettingValue.Select select = (SettingValue.Select) obj5;
                Composer composer5 = (Composer) obj2;
                int intValue8 = ((Integer) obj3).intValue();
                ((ColumnScopeInstance) obj).getClass();
                GapComposer gapComposer6 = (GapComposer) composer5;
                if (gapComposer6.shouldExecute(intValue8 & 1, (intValue8 & 17) != 16)) {
                    RowMeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(OffsetKt.f7Start, Alignment.Companion.CenterVertically, gapComposer6, 48);
                    long j4 = gapComposer6.compositeKeyHashCode;
                    int i3 = (int) (j4 ^ (j4 >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer6.currentCompositionLocalScope();
                    Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer6, companion);
                    ComposeUiNode.Companion.getClass();
                    LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
                    gapComposer6.startReusableNode();
                    if (gapComposer6.inserting) {
                        gapComposer6.createNode(layoutNode$Companion$Constructor$1);
                    } else {
                        gapComposer6.useNode();
                    }
                    ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$1 = ComposeUiNode.Companion.SetMeasurePolicy;
                    Updater.m380setimpl(gapComposer6, rowMeasurePolicy, composeUiNode$Companion$SetModifier$1);
                    ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$12 = ComposeUiNode.Companion.SetResolvedCompositionLocals;
                    Updater.m380setimpl(gapComposer6, currentCompositionLocalScope, composeUiNode$Companion$SetModifier$12);
                    Integer valueOf = Integer.valueOf(i3);
                    ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$13 = ComposeUiNode.Companion.SetCompositeKeyHash;
                    Updater.m380setimpl(gapComposer6, valueOf, composeUiNode$Companion$SetModifier$13);
                    OwnerSnapshotObserver$onCommitAffectingLayout$1 ownerSnapshotObserver$onCommitAffectingLayout$1 = ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion;
                    Updater.m379reconcileimpl(gapComposer6, ownerSnapshotObserver$onCommitAffectingLayout$1);
                    ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$14 = ComposeUiNode.Companion.SetModifier;
                    Updater.m380setimpl(gapComposer6, materializeModifier, composeUiNode$Companion$SetModifier$14);
                    LayoutWeightElement layoutWeightElement = new LayoutWeightElement(1.0f, true);
                    ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(OffsetKt.Top, Alignment.Companion.Start, gapComposer6, 0);
                    long j5 = gapComposer6.compositeKeyHashCode;
                    int i4 = (int) (j5 ^ (j5 >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer6.currentCompositionLocalScope();
                    Modifier materializeModifier2 = AbsoluteAlignment.materializeModifier(gapComposer6, layoutWeightElement);
                    gapComposer6.startReusableNode();
                    if (gapComposer6.inserting) {
                        gapComposer6.createNode(layoutNode$Companion$Constructor$1);
                    } else {
                        gapComposer6.useNode();
                    }
                    Updater.m380setimpl(gapComposer6, columnMeasurePolicy, composeUiNode$Companion$SetModifier$1);
                    Updater.m380setimpl(gapComposer6, currentCompositionLocalScope2, composeUiNode$Companion$SetModifier$12);
                    Config.CC.m(i4, gapComposer6, composeUiNode$Companion$SetModifier$13, gapComposer6, ownerSnapshotObserver$onCommitAffectingLayout$1);
                    Updater.m380setimpl(gapComposer6, materializeModifier2, composeUiNode$Companion$SetModifier$14);
                    boolean z4 = select.displayValueAsSecondaryText;
                    SettingValue.Select.SelectOption selectOption = select.value;
                    if (z4) {
                        gapComposer6.startReplaceGroup(-124105881);
                        DebugUtils.m787TextTitleMediumXl4FiYE((String) select.title.invoke(), null, 0L, null, 0, 0, gapComposer6, 0, 62);
                        Data.Companion.m825TextBodyMediumZHfKjFs((String) selectOption.title.invoke(), (Modifier) null, 0L, 0, 0, (Function1) null, gapComposer6, 0, 126);
                        gapComposer6.end(false);
                    } else {
                        gapComposer6.startReplaceGroup(-123955159);
                        DebugUtils.m787TextTitleMediumXl4FiYE((String) selectOption.title.invoke(), null, 0L, null, 0, 0, gapComposer6, 0, 62);
                        String str2 = (String) select.description.invoke();
                        if (str2 == null) {
                            gapComposer6.startReplaceGroup(-123849047);
                            z3 = false;
                            gapComposer6.end(false);
                        } else {
                            gapComposer6.startReplaceGroup(-123849046);
                            Data.Companion.m825TextBodyMediumZHfKjFs(str2, (Modifier) null, 0L, 0, 0, (Function1) null, gapComposer6, 0, 126);
                            z3 = false;
                            gapComposer6.end(false);
                        }
                        gapComposer6.end(z3);
                    }
                    gapComposer6.end(true);
                    gapComposer6.end(true);
                    break;
                } else {
                    gapComposer6.skipToGroupEnd();
                    break;
                }
            case BasicTextKt.ShiftMeta /* 12 */:
                SettingValue.Text text = (SettingValue.Text) obj5;
                Composer composer6 = (Composer) obj2;
                int intValue9 = ((Integer) obj3).intValue();
                ((ColumnScopeInstance) obj).getClass();
                GapComposer gapComposer7 = (GapComposer) composer6;
                if (gapComposer7.shouldExecute(intValue9 & 1, (intValue9 & 17) != 16)) {
                    DebugUtils.m787TextTitleMediumXl4FiYE((String) text.title.invoke(), null, 0L, null, 0, 0, gapComposer7, 0, 62);
                    Data.Companion.m825TextBodyMediumZHfKjFs(text.value, (Modifier) null, 0L, 0, 0, (Function1) null, gapComposer7, 0, 126);
                    break;
                } else {
                    gapComposer7.skipToGroupEnd();
                    break;
                }
            case 13:
                ReleaseUiModel releaseUiModel = (ReleaseUiModel) obj5;
                Composer composer7 = (Composer) obj2;
                int intValue10 = ((Integer) obj3).intValue();
                ((ColumnScopeInstance) obj).getClass();
                GapComposer gapComposer8 = (GapComposer) composer7;
                if (gapComposer8.shouldExecute(intValue10 & 1, (intValue10 & 17) != 16)) {
                    ((ThemeSpacings) gapComposer8.consume(ThemeSpacingsKt.LocalThemeSpacings)).getClass();
                    Modifier m220paddingVpY3zN4$default = OffsetKt.m220paddingVpY3zN4$default(companion, 16.0f, 0.0f, 2);
                    ColumnMeasurePolicy columnMeasurePolicy2 = ColumnKt.columnMeasurePolicy(OffsetKt.Top, Alignment.Companion.Start, gapComposer8, 0);
                    long j6 = gapComposer8.compositeKeyHashCode;
                    int i5 = (int) (j6 ^ (j6 >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope3 = gapComposer8.currentCompositionLocalScope();
                    Modifier materializeModifier3 = AbsoluteAlignment.materializeModifier(gapComposer8, m220paddingVpY3zN4$default);
                    ComposeUiNode.Companion.getClass();
                    LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$12 = ComposeUiNode.Companion.Constructor;
                    gapComposer8.startReusableNode();
                    if (gapComposer8.inserting) {
                        gapComposer8.createNode(layoutNode$Companion$Constructor$12);
                    } else {
                        gapComposer8.useNode();
                    }
                    Updater.m380setimpl(gapComposer8, columnMeasurePolicy2, ComposeUiNode.Companion.SetMeasurePolicy);
                    Updater.m380setimpl(gapComposer8, currentCompositionLocalScope3, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                    Updater.m380setimpl(gapComposer8, Integer.valueOf(i5), ComposeUiNode.Companion.SetCompositeKeyHash);
                    Updater.m379reconcileimpl(gapComposer8, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                    Updater.m380setimpl(gapComposer8, materializeModifier3, ComposeUiNode.Companion.SetModifier);
                    gapComposer8.startReplaceGroup(-1333516631);
                    for (Map.Entry entry : releaseUiModel.changes.entrySet()) {
                        String str3 = (String) entry.getKey();
                        if (Intrinsics.areEqual(str3, "NEW")) {
                            gapComposer8.startReplaceGroup(-1714501519);
                            j = ((ThemeColorScheme) gapComposer8.consume(ThemeColorSchemeKt.LocalThemeColorScheme)).onSuccessContainer;
                            gapComposer8.end(false);
                        } else if (Intrinsics.areEqual(str3, "FIXED")) {
                            gapComposer8.startReplaceGroup(-1714498671);
                            j = ((ThemeColorScheme) gapComposer8.consume(ThemeColorSchemeKt.LocalThemeColorScheme)).onWarningContainer;
                            gapComposer8.end(false);
                        } else {
                            gapComposer8.startReplaceGroup(-1714496370);
                            j = ((ThemeColorScheme) gapComposer8.consume(ThemeColorSchemeKt.LocalThemeColorScheme)).onInfoContainer;
                            gapComposer8.end(false);
                        }
                        long j7 = j;
                        String str4 = (String) entry.getKey();
                        if (Intrinsics.areEqual(str4, "NEW")) {
                            gapComposer8.startReplaceGroup(-1714490577);
                            j2 = ((ThemeColorScheme) gapComposer8.consume(ThemeColorSchemeKt.LocalThemeColorScheme)).successContainer;
                            gapComposer8.end(false);
                        } else if (Intrinsics.areEqual(str4, "FIXED")) {
                            gapComposer8.startReplaceGroup(-1714487793);
                            j2 = ((ThemeColorScheme) gapComposer8.consume(ThemeColorSchemeKt.LocalThemeColorScheme)).warningContainer;
                            gapComposer8.end(false);
                        } else {
                            gapComposer8.startReplaceGroup(-1714485556);
                            j2 = ((ThemeColorScheme) gapComposer8.consume(ThemeColorSchemeKt.LocalThemeColorScheme)).infoContainer;
                            gapComposer8.end(false);
                        }
                        Jsoup.m1064ChangeGroupHeadereopBjH0(entry, j7, j2, null, gapComposer8, 0);
                        ((ThemeSpacings) gapComposer8.consume(ThemeSpacingsKt.LocalThemeSpacings)).getClass();
                        OffsetKt.Spacer(gapComposer8, SizeKt.m226height3ABfNKs(companion, 4.0f));
                        gapComposer8.startReplaceGroup(-1333487569);
                        Iterator it = ((Iterable) entry.getValue()).iterator();
                        while (it.hasNext()) {
                            Jsoup.m1062Change3IgeMak(0, j7, gapComposer8, null, (String) it.next());
                            ViewSizeResolver.CC.m((ThemeSpacings) gapComposer8.consume(ThemeSpacingsKt.LocalThemeSpacings), companion, 8.0f, gapComposer8);
                        }
                        gapComposer8.end(false);
                        ViewSizeResolver.CC.m((ThemeSpacings) gapComposer8.consume(ThemeSpacingsKt.LocalThemeSpacings), companion, 8.0f, gapComposer8);
                    }
                    gapComposer8.end(false);
                    ((ThemeSpacings) gapComposer8.consume(ThemeSpacingsKt.LocalThemeSpacings)).getClass();
                    OffsetKt.Spacer(gapComposer8, SizeKt.m226height3ABfNKs(companion, 8.0f));
                    gapComposer8.end(true);
                    break;
                } else {
                    gapComposer8.skipToGroupEnd();
                    break;
                }
            case 14:
                ((MessageListState.WarmingUp) obj3).getClass();
                ((InvalidationTracker$implementation$1) obj5).invoke(MessageListEvent.LoadConfigurations.INSTANCE);
                break;
            case OffsetKt.Horizontal /* 15 */:
                Function3 function3 = (Function3) obj5;
                FlowRowScopeInstance flowRowScopeInstance = (FlowRowScopeInstance) obj;
                Composer composer8 = (Composer) obj2;
                int intValue11 = ((Integer) obj3).intValue();
                flowRowScopeInstance.getClass();
                if ((intValue11 & 6) == 0) {
                    intValue11 |= ((GapComposer) composer8).changed(flowRowScopeInstance) ? 4 : 2;
                }
                GapComposer gapComposer9 = (GapComposer) composer8;
                if (gapComposer9.shouldExecute(intValue11 & 1, (intValue11 & 19) != 18)) {
                    function3.invoke(flowRowScopeInstance, gapComposer9, Integer.valueOf(intValue11 & 14));
                    break;
                } else {
                    gapComposer9.skipToGroupEnd();
                    break;
                }
            case 16:
                MessageSublineLeadingIndicator.ConversationCounterBadge conversationCounterBadge = (MessageSublineLeadingIndicator.ConversationCounterBadge) obj5;
                Composer composer9 = (Composer) obj2;
                int intValue12 = ((Integer) obj3).intValue();
                ((String) obj).getClass();
                GapComposer gapComposer10 = (GapComposer) composer9;
                if (gapComposer10.shouldExecute(intValue12 & 1, (intValue12 & 17) != 16)) {
                    MessageBodyContentKt.MessageConversationCounterBadge(conversationCounterBadge.count, conversationCounterBadge.color, null, 0, gapComposer10, 0);
                    break;
                } else {
                    gapComposer10.skipToGroupEnd();
                    break;
                }
            default:
                ThundermailContract$State thundermailContract$State = (ThundermailContract$State) obj5;
                PaddingValues paddingValues3 = (PaddingValues) obj;
                Composer composer10 = (Composer) obj2;
                int intValue13 = ((Integer) obj3).intValue();
                paddingValues3.getClass();
                if ((intValue13 & 6) == 0) {
                    intValue13 |= ((GapComposer) composer10).changed(paddingValues3) ? 4 : 2;
                }
                GapComposer gapComposer11 = (GapComposer) composer10;
                if (gapComposer11.shouldExecute(intValue13 & 1, (intValue13 & 19) != 18)) {
                    Modifier windowInsetsPadding = OffsetKt.windowInsetsPadding(OffsetKt.padding(companion, paddingValues3).then(SizeKt.FillWholeMaxSize), OffsetKt.safeContentLambda);
                    ((ThemeSpacings) gapComposer11.consume(ThemeSpacingsKt.LocalThemeSpacings)).getClass();
                    Modifier m220paddingVpY3zN4$default2 = OffsetKt.m220paddingVpY3zN4$default(windowInsetsPadding, 32.0f, 0.0f, 2);
                    MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.TopStart, false);
                    long j8 = gapComposer11.compositeKeyHashCode;
                    int i6 = (int) (j8 ^ (j8 >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope4 = gapComposer11.currentCompositionLocalScope();
                    Modifier materializeModifier4 = AbsoluteAlignment.materializeModifier(gapComposer11, m220paddingVpY3zN4$default2);
                    ComposeUiNode.Companion.getClass();
                    LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$13 = ComposeUiNode.Companion.Constructor;
                    gapComposer11.startReusableNode();
                    if (gapComposer11.inserting) {
                        gapComposer11.createNode(layoutNode$Companion$Constructor$13);
                    } else {
                        gapComposer11.useNode();
                    }
                    Updater.m380setimpl(gapComposer11, maybeCachedBoxMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
                    Updater.m380setimpl(gapComposer11, currentCompositionLocalScope4, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                    Updater.m380setimpl(gapComposer11, Integer.valueOf(i6), ComposeUiNode.Companion.SetCompositeKeyHash);
                    Updater.m379reconcileimpl(gapComposer11, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                    Updater.m380setimpl(gapComposer11, materializeModifier4, ComposeUiNode.Companion.SetModifier);
                    CrossfadeKt.Crossfade(thundermailContract$State.error, BoxScopeInstance.INSTANCE.align(companion, Alignment.Companion.Center), null, null, ThundermailOAuthRedirectScreenKt.lambda$571617464, gapComposer11, 24576, 12);
                    gapComposer11.end(true);
                    break;
                } else {
                    gapComposer11.skipToGroupEnd();
                    break;
                }
        }
        return unit;
    }

    public /* synthetic */ MovableContentKt$$ExternalSyntheticLambda0(int i, Object obj) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }
}
