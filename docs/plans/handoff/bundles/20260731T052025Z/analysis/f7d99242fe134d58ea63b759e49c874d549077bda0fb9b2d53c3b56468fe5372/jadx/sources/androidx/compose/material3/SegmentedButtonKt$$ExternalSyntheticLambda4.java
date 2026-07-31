package androidx.compose.material3;

import androidx.appcompat.app.ActionBar;
import androidx.camera.core.impl.Config;
import androidx.camera.core.streamsharing.StreamSharing$$ExternalSyntheticLambda0;
import androidx.camera.view.PreviewView;
import androidx.compose.animation.core.SeekableTransitionState;
import androidx.compose.foundation.ScrollState;
import androidx.compose.foundation.gestures.ScrollingLogic;
import androidx.compose.foundation.gestures.ScrollingLogic$nestedScrollScope$1;
import androidx.compose.foundation.layout.Arrangement$Horizontal;
import androidx.compose.foundation.layout.Arrangement$SpacedAligned;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.FillElement;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.foundation.text.BasicTextKt$$ExternalSyntheticLambda0;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.runtime.saveable.SaveableStateHolder;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.DrawResult;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.RulerKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.SpanStyle;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.font.SystemFontFamily;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextGeometricTransform;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.core.util.DebugUtils;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.datastore.preferences.protobuf.Utf8;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.compose.NavHostKt$NavHost$29$1$1$1;
import androidx.room.util.RelationUtil;
import androidx.room.util.SchemaInfoUtilKt;
import androidx.work.Operation$State;
import app.k9mail.core.ui.compose.designsystem.organism.TopAppBarKt;
import app.k9mail.core.ui.compose.designsystem.template.ScaffoldKt;
import app.k9mail.feature.account.server.certificate.ui.ServerCertificateErrorContract$State;
import app.k9mail.feature.account.setup.ui.specialfolders.SpecialFoldersContract$FormState;
import app.k9mail.feature.account.setup.ui.specialfolders.SpecialFoldersScreenKt;
import app.k9mail.feature.migration.qrcode.ui.QrCodeScannerContract$DisplayText;
import app.k9mail.feature.migration.qrcode.ui.QrCodeScannerViewModel;
import app.k9mail.feature.onboarding.permissions.ui.PermissionsViewModel;
import app.k9mail.feature.onboarding.welcome.ui.WelcomeScreenKt;
import com.fsck.k9.K9$$ExternalSyntheticLambda0;
import com.fsck.k9.activity.setup.AccountSetupComposition;
import com.fsck.k9.activity.setup.AccountSetupCompositionContract$State;
import com.fsck.k9.controller.ArchiveOperations$$ExternalSyntheticLambda2;
import com.fsck.k9.mailstore.AttachmentViewInfo;
import com.fsck.k9.sasl.OAuthBearer;
import com.fsck.k9.ui.helper.SizeFormatter;
import com.fsck.k9.ui.messageview.MessageViewFragment;
import kotlin.Function;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$FloatRef;
import kotlin.jvm.internal.Ref$LongRef;
import kotlin.math.MathKt;
import kotlin.sequences.SequencesKt___SequencesKt$$ExternalSyntheticLambda0;
import kotlin.text.Regex$$ExternalSyntheticLambda1;
import kotlinx.collections.immutable.ImmutableSet;
import kotlinx.collections.immutable.implementations.immutableList.AbstractPersistentList;
import kotlinx.collections.immutable.implementations.immutableList.SmallPersistentVector;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.flow.StateFlowImpl;
import kotlinx.serialization.internal.MapEntrySerializer$$ExternalSyntheticLambda0;
import net.thunderbird.core.common.action.SwipeAction;
import net.thunderbird.core.common.provider.BrandNameProvider;
import net.thunderbird.core.ui.compose.designsystem.molecule.swipe.fork.DragEvent;
import net.thunderbird.core.ui.compose.designsystem.molecule.swipe.fork.DraggableNode;
import net.thunderbird.core.ui.compose.theme2.ThemeColorScheme;
import net.thunderbird.core.ui.compose.theme2.ThemeColorSchemeKt;
import net.thunderbird.core.ui.compose.theme2.ThemeConfig;
import net.thunderbird.core.ui.compose.theme2.ThemeShapes;
import net.thunderbird.core.ui.compose.theme2.ThemeShapesKt;
import net.thunderbird.core.ui.compose.theme2.ThemeSpacings;
import net.thunderbird.core.ui.compose.theme2.ThemeSpacingsKt;
import net.thunderbird.core.ui.compose.theme2.ThemeTypography;
import net.thunderbird.core.ui.compose.theme2.ThemeTypographyKt;
import net.thunderbird.feature.account.avatar.ui.AvatarSize;
import net.thunderbird.feature.mail.message.list.ui.dialog.SetupArchiveFolderDialogContract$State;
import net.thunderbird.feature.mail.message.list.ui.state.MessageListState;
import net.thunderbird.feature.navigation.drawer.dropdown.ui.DrawerContract$State;
import net.thunderbird.feature.notification.api.ui.InAppNotificationHostKt;
import net.thunderbird.feature.notification.api.ui.host.InAppNotificationHostStateHolder;
import okhttp3.Handshake;
import okio.Options;
import org.jsoup.Jsoup;
import org.jsoup.helper.Validate;
import org.slf4j.helpers.Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class SegmentedButtonKt$$ExternalSyntheticLambda4 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ Object f$2;

    public /* synthetic */ SegmentedButtonKt$$ExternalSyntheticLambda4(int i, ComposableLambdaImpl composableLambdaImpl, Object obj, Object obj2) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$2 = obj2;
        this.f$1 = composableLambdaImpl;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
        NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
        final int i2 = 1;
        Unit unit = Unit.INSTANCE;
        Object obj3 = this.f$2;
        Object obj4 = this.f$1;
        Object obj5 = this.f$0;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                CardKt.SegmentedButtonContent((Function2) obj5, (ComposableLambdaImpl) obj4, (PaddingValues) obj3, (Composer) obj, Updater.updateChangedFlags(1));
                return unit;
            case 1:
                Ref$FloatRef ref$FloatRef = (Ref$FloatRef) obj5;
                ScrollingLogic scrollingLogic = (ScrollingLogic) obj4;
                float floatValue = ((Float) obj).floatValue();
                ((Float) obj2).getClass();
                long m194toOffsettuRUvjQ = scrollingLogic.m194toOffsettuRUvjQ(scrollingLogic.reverseIfNeeded(floatValue - ref$FloatRef.element));
                ScrollingLogic scrollingLogic2 = ((ScrollingLogic$nestedScrollScope$1) obj3).this$0;
                ref$FloatRef.element += scrollingLogic.reverseIfNeeded(scrollingLogic.m193toFloatk4lQ0M(scrollingLogic2.m191performScroll3eAAhYA(scrollingLogic2.outerStateScope, m194toOffsettuRUvjQ, 1)));
                return unit;
            case 2:
                ((Integer) obj2).getClass();
                BasicTextKt.CoreTextFieldRootBox((Modifier) obj5, (TextFieldSelectionManager) obj3, (ComposableLambdaImpl) obj4, (Composer) obj, Updater.updateChangedFlags(385));
                return unit;
            case 3:
                Modifier modifier = (Modifier) obj5;
                MutableState mutableState = (MutableState) obj3;
                ComposableLambdaImpl composableLambdaImpl = (ComposableLambdaImpl) obj4;
                Composer composer = (Composer) obj;
                int intValue = ((Integer) obj2).intValue();
                GapComposer gapComposer = (GapComposer) composer;
                if (gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    Object rememberedValue = gapComposer.rememberedValue();
                    if (rememberedValue == neverEqualPolicy) {
                        rememberedValue = new BasicTextKt$$ExternalSyntheticLambda0(mutableState, 4);
                        gapComposer.updateRememberedValue(rememberedValue);
                    }
                    Modifier onGloballyPositioned = RulerKt.onGloballyPositioned(modifier, (Function1) rememberedValue);
                    MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.TopStart, true);
                    long j = gapComposer.compositeKeyHashCode;
                    int i3 = (int) (j ^ (j >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
                    Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, onGloballyPositioned);
                    ComposeUiNode.Companion.getClass();
                    LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
                    gapComposer.startReusableNode();
                    if (gapComposer.inserting) {
                        gapComposer.createNode(layoutNode$Companion$Constructor$1);
                    } else {
                        gapComposer.useNode();
                    }
                    Updater.m380setimpl(gapComposer, maybeCachedBoxMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
                    Updater.m380setimpl(gapComposer, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                    Updater.m380setimpl(gapComposer, Integer.valueOf(i3), ComposeUiNode.Companion.SetCompositeKeyHash);
                    Updater.m379reconcileimpl(gapComposer, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                    Updater.m380setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
                    Config.CC.m(0, composableLambdaImpl, gapComposer, true);
                } else {
                    gapComposer.skipToGroupEnd();
                }
                return unit;
            case 4:
                ((Integer) obj2).getClass();
                SchemaInfoUtilKt.LifecycleEventEffect((Lifecycle.Event) obj5, (LifecycleOwner) obj4, (Function0) obj3, (Composer) obj, Updater.updateChangedFlags(7));
                return unit;
            case 5:
                ((Integer) obj2).getClass();
                RelationUtil.LocalOwnersProvider((NavBackStackEntry) obj5, (SaveableStateHolder) obj3, (ComposableLambdaImpl) obj4, (Composer) obj, Updater.updateChangedFlags(385));
                return unit;
            case 6:
                float floatValue2 = ((Float) obj).floatValue();
                ((Float) obj2).getClass();
                JobKt.launch$default((CoroutineScope) obj5, null, null, new NavHostKt$NavHost$29$1$1$1(floatValue2, (SeekableTransitionState) obj4, (NavBackStackEntry) obj3, (Continuation) null), 3);
                return unit;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                Function1 function1 = (Function1) obj4;
                Composer composer2 = (Composer) obj;
                int intValue2 = ((Integer) obj2).intValue();
                GapComposer gapComposer2 = (GapComposer) composer2;
                if (gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 3) != 2)) {
                    String str = (String) function1.invoke(obj5);
                    AnnotatedString.Builder builder = new AnnotatedString.Builder();
                    if (Intrinsics.areEqual(obj5, obj3)) {
                        int pushStyle = builder.pushStyle(new SpanStyle(0L, 0L, FontWeight.Bold, (FontStyle) null, (FontSynthesis) null, (SystemFontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, 65531));
                        try {
                            builder.append(str);
                        } finally {
                            builder.pop(pushStyle);
                        }
                    } else {
                        builder.append(str);
                    }
                    TextKt.m363TextZ58ophY(builder.toAnnotatedString(), null, 0L, 0L, 0L, null, 0L, 0, false, 0, 0, null, null, null, gapComposer2, 0, 0, 524286);
                } else {
                    gapComposer2.skipToGroupEnd();
                }
                return unit;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                ((Integer) obj2).getClass();
                MathKt.NavigationDrawerItemBadge((String) obj5, (Modifier) obj4, (ImageVector) obj3, (Composer) obj, Updater.updateChangedFlags(1));
                return unit;
            case 9:
                String str2 = (String) obj5;
                String str3 = (String) obj4;
                Function0 function0 = (Function0) obj3;
                Composer composer3 = (Composer) obj;
                int intValue3 = ((Integer) obj2).intValue();
                GapComposer gapComposer3 = (GapComposer) composer3;
                if (gapComposer3.shouldExecute(intValue3 & 1, (intValue3 & 3) != 2)) {
                    ActionBar.ErrorView(str2, null, str3, function0, null, gapComposer3, 0, 18);
                } else {
                    gapComposer3.skipToGroupEnd();
                }
                return unit;
            case 10:
                MutableState mutableState2 = (MutableState) obj5;
                Function1 function12 = (Function1) obj4;
                ScrollState scrollState = (ScrollState) obj3;
                Composer composer4 = (Composer) obj;
                int intValue4 = ((Integer) obj2).intValue();
                GapComposer gapComposer4 = (GapComposer) composer4;
                if (gapComposer4.shouldExecute(intValue4 & 1, (intValue4 & 3) != 2)) {
                    IntOffsetKt.ButtonBar((ServerCertificateErrorContract$State) mutableState2.getValue(), function12, scrollState, OffsetKt.windowInsetsPadding(companion, OffsetKt.imeLambda), gapComposer4, 8);
                } else {
                    gapComposer4.skipToGroupEnd();
                }
                return unit;
            case 11:
                ((Integer) obj2).getClass();
                MathKt.ServerSettingRow((ImageVector) obj5, (AnnotatedString) obj4, (Modifier) obj3, (Composer) obj, Updater.updateChangedFlags(1));
                return unit;
            case BasicTextKt.ShiftMeta /* 12 */:
                ((Integer) obj2).getClass();
                SpecialFoldersScreenKt.SpecialFoldersFormContent((SpecialFoldersContract$FormState) obj5, (Function1) obj4, (Modifier) obj3, (Composer) obj, Updater.updateChangedFlags(385));
                return unit;
            case 13:
                ((Integer) obj2).getClass();
                DebugUtils.QrCodeScannerScreen((Function1) obj5, (Function0) obj4, (QrCodeScannerViewModel) obj3, (Composer) obj, Updater.updateChangedFlags(1));
                return unit;
            case 14:
                ((Integer) obj2).getClass();
                RelationUtil.QrCodeScannerView((DrawResult) obj5, (QrCodeScannerContract$DisplayText) obj4, (Function0) obj3, (Composer) obj, Updater.updateChangedFlags(1));
                return unit;
            case OffsetKt.Horizontal /* 15 */:
                ((Integer) obj2).getClass();
                Utf8.SafeProcessor.PermissionsScreen((PermissionsViewModel) obj5, (BrandNameProvider) obj4, (Function0) obj3, (Composer) obj, Updater.updateChangedFlags(1));
                return unit;
            case 16:
                String str4 = (String) obj5;
                Function0 function02 = (Function0) obj4;
                Function0 function03 = (Function0) obj3;
                Composer composer5 = (Composer) obj;
                int intValue5 = ((Integer) obj2).intValue();
                GapComposer gapComposer5 = (GapComposer) composer5;
                if (gapComposer5.shouldExecute(intValue5 & 1, (intValue5 & 3) != 2)) {
                    ScaffoldKt.ResponsiveContent(null, Expect_jvmKt.rememberComposableLambda(1767851480, new ArchiveOperations$$ExternalSyntheticLambda2(str4, (Object) function02, (Function) function03, 6), gapComposer5), gapComposer5, 48, 1);
                } else {
                    gapComposer5.skipToGroupEnd();
                }
                return unit;
            case 17:
                ((Integer) obj2).getClass();
                WelcomeScreenKt.WelcomeFooterSection((Function0) obj5, (Function0) obj4, (Modifier) obj3, (Composer) obj, Updater.updateChangedFlags(1));
                return unit;
            case 18:
                MutableState mutableState3 = (MutableState) obj5;
                Function1 function13 = (Function1) obj4;
                MutableState mutableState4 = (MutableState) obj3;
                Composer composer6 = (Composer) obj;
                int intValue6 = ((Integer) obj2).intValue();
                int i4 = AccountSetupComposition.$r8$clinit;
                GapComposer gapComposer6 = (GapComposer) composer6;
                if (gapComposer6.shouldExecute(intValue6 & 1, (intValue6 & 3) != 2)) {
                    String str5 = ((AccountSetupCompositionContract$State) mutableState3.getValue()).senderName;
                    String str6 = ((AccountSetupCompositionContract$State) mutableState3.getValue()).senderEmail;
                    String str7 = ((AccountSetupCompositionContract$State) mutableState3.getValue()).bccEmail;
                    boolean z = ((AccountSetupCompositionContract$State) mutableState3.getValue()).useSignature;
                    boolean booleanValue = ((Boolean) mutableState4.getValue()).booleanValue();
                    String str8 = ((AccountSetupCompositionContract$State) mutableState3.getValue()).signature;
                    AbstractPersistentList abstractPersistentList = ((AccountSetupCompositionContract$State) mutableState3.getValue()).signatureLocations;
                    Pair pair = ((AccountSetupCompositionContract$State) mutableState3.getValue()).selectedSignatureLocations;
                    boolean changed = gapComposer6.changed(function13);
                    Object rememberedValue2 = gapComposer6.rememberedValue();
                    if (changed || rememberedValue2 == neverEqualPolicy) {
                        rememberedValue2 = new SequencesKt___SequencesKt$$ExternalSyntheticLambda0(22, function13);
                        gapComposer6.updateRememberedValue(rememberedValue2);
                    }
                    Utf8.SafeProcessor.AccountSetupCompositionScreen(str5, str6, str7, z, str8, booleanValue, abstractPersistentList, pair, (Function1) rememberedValue2, null, gapComposer6, 0);
                } else {
                    gapComposer6.skipToGroupEnd();
                }
                return unit;
            case 19:
                SizeFormatter sizeFormatter = (SizeFormatter) obj5;
                final MessageViewFragment messageViewFragment = (MessageViewFragment) obj4;
                MutableState mutableState5 = (MutableState) obj3;
                Composer composer7 = (Composer) obj;
                int intValue7 = ((Integer) obj2).intValue();
                GapComposer gapComposer7 = (GapComposer) composer7;
                if (gapComposer7.shouldExecute(intValue7 & 1, (intValue7 & 3) != 2)) {
                    AbstractPersistentList abstractPersistentList2 = (AbstractPersistentList) mutableState5.getValue();
                    boolean changedInstance = gapComposer7.changedInstance(messageViewFragment);
                    Object rememberedValue3 = gapComposer7.rememberedValue();
                    if (changedInstance || rememberedValue3 == neverEqualPolicy) {
                        rememberedValue3 = new K9$$ExternalSyntheticLambda0(19, messageViewFragment);
                        gapComposer7.updateRememberedValue(rememberedValue3);
                    }
                    Function0 function04 = (Function0) rememberedValue3;
                    boolean changedInstance2 = gapComposer7.changedInstance(messageViewFragment);
                    Object rememberedValue4 = gapComposer7.rememberedValue();
                    if (changedInstance2 || rememberedValue4 == neverEqualPolicy) {
                        final int i5 = 0;
                        rememberedValue4 = new Function1() { // from class: com.fsck.k9.ui.messageview.MessageViewFragment$$ExternalSyntheticLambda9
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj6) {
                                Object value;
                                int i6 = i5;
                                Unit unit2 = Unit.INSTANCE;
                                MessageViewFragment messageViewFragment2 = messageViewFragment;
                                AttachmentViewInfo attachmentViewInfo = (AttachmentViewInfo) obj6;
                                switch (i6) {
                                    case 0:
                                        attachmentViewInfo.getClass();
                                        StateFlowImpl stateFlowImpl = messageViewFragment2.attachmentListBottomSheetState;
                                        do {
                                            value = stateFlowImpl.getValue();
                                        } while (!stateFlowImpl.compareAndSet(value, SmallPersistentVector.EMPTY));
                                        messageViewFragment2.onViewAttachment(attachmentViewInfo);
                                        break;
                                    default:
                                        attachmentViewInfo.getClass();
                                        messageViewFragment2.onSaveAttachment(attachmentViewInfo);
                                        break;
                                }
                                return unit2;
                            }
                        };
                        gapComposer7.updateRememberedValue(rememberedValue4);
                    }
                    Function1 function14 = (Function1) rememberedValue4;
                    boolean changedInstance3 = gapComposer7.changedInstance(messageViewFragment);
                    Object rememberedValue5 = gapComposer7.rememberedValue();
                    if (changedInstance3 || rememberedValue5 == neverEqualPolicy) {
                        rememberedValue5 = new Function1() { // from class: com.fsck.k9.ui.messageview.MessageViewFragment$$ExternalSyntheticLambda9
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj6) {
                                Object value;
                                int i6 = i2;
                                Unit unit2 = Unit.INSTANCE;
                                MessageViewFragment messageViewFragment2 = messageViewFragment;
                                AttachmentViewInfo attachmentViewInfo = (AttachmentViewInfo) obj6;
                                switch (i6) {
                                    case 0:
                                        attachmentViewInfo.getClass();
                                        StateFlowImpl stateFlowImpl = messageViewFragment2.attachmentListBottomSheetState;
                                        do {
                                            value = stateFlowImpl.getValue();
                                        } while (!stateFlowImpl.compareAndSet(value, SmallPersistentVector.EMPTY));
                                        messageViewFragment2.onViewAttachment(attachmentViewInfo);
                                        break;
                                    default:
                                        attachmentViewInfo.getClass();
                                        messageViewFragment2.onSaveAttachment(attachmentViewInfo);
                                        break;
                                }
                                return unit2;
                            }
                        };
                        gapComposer7.updateRememberedValue(rememberedValue5);
                    }
                    Function1 function15 = (Function1) rememberedValue5;
                    boolean changed2 = gapComposer7.changed(mutableState5) | gapComposer7.changedInstance(messageViewFragment);
                    Object rememberedValue6 = gapComposer7.rememberedValue();
                    if (changed2 || rememberedValue6 == neverEqualPolicy) {
                        rememberedValue6 = new Regex$$ExternalSyntheticLambda1(27, mutableState5, messageViewFragment);
                        gapComposer7.updateRememberedValue(rememberedValue6);
                    }
                    Util.AttachmentListModalBottomSheet(abstractPersistentList2, sizeFormatter, function04, function14, function15, (Function0) rememberedValue6, gapComposer7, 72);
                } else {
                    gapComposer7.skipToGroupEnd();
                }
                return unit;
            case 20:
                DraggableNode draggableNode = (DraggableNode) obj5;
                Ref$LongRef ref$LongRef = (Ref$LongRef) obj4;
                PreviewView.AnonymousClass1 anonymousClass1 = (PreviewView.AnonymousClass1) obj3;
                PointerInputChange pointerInputChange = (PointerInputChange) obj;
                Offset offset = (Offset) obj2;
                pointerInputChange.getClass();
                long mo580localToScreenMKHz9U = HitTestResultKt.requireLayoutCoordinates(draggableNode).mo580localToScreenMKHz9U(0L);
                if (!Offset.m437equalsimpl0(mo580localToScreenMKHz9U, ref$LongRef.element)) {
                    draggableNode.nodeOffset = Offset.m441plusMKHz9U(draggableNode.nodeOffset, Offset.m440minusMKHz9U(mo580localToScreenMKHz9U, ref$LongRef.element));
                }
                ref$LongRef.element = mo580localToScreenMKHz9U;
                OAuthBearer.m940addPointerInputChange0AR0LA0(anonymousClass1, pointerInputChange, draggableNode.nodeOffset);
                BufferedChannel bufferedChannel = draggableNode.channel;
                if (bufferedChannel != null) {
                    bufferedChannel.mo1016trySendJP2dKIU(new DragEvent.DragDelta(offset.packedValue));
                }
                return unit;
            case 21:
                ThemeColorScheme themeColorScheme = (ThemeColorScheme) obj5;
                ThemeConfig themeConfig = (ThemeConfig) obj3;
                ComposableLambdaImpl composableLambdaImpl2 = (ComposableLambdaImpl) obj4;
                Composer composer8 = (Composer) obj;
                int intValue8 = ((Integer) obj2).intValue();
                GapComposer gapComposer8 = (GapComposer) composer8;
                if (gapComposer8.shouldExecute(intValue8 & 1, (intValue8 & 3) != 2)) {
                    StaticProvidableCompositionLocal staticProvidableCompositionLocal = ThemeColorSchemeKt.LocalThemeColorScheme;
                    themeColorScheme.getClass();
                    long j2 = themeColorScheme.primary;
                    long j3 = themeColorScheme.onPrimary;
                    long j4 = themeColorScheme.primaryContainer;
                    long j5 = themeColorScheme.onPrimaryContainer;
                    long j6 = themeColorScheme.secondary;
                    long j7 = themeColorScheme.onSecondary;
                    long j8 = themeColorScheme.secondaryContainer;
                    long j9 = themeColorScheme.onSecondaryContainer;
                    long j10 = themeColorScheme.tertiary;
                    long j11 = themeColorScheme.onTertiary;
                    long j12 = themeColorScheme.tertiaryContainer;
                    long j13 = themeColorScheme.onTertiaryContainer;
                    long j14 = themeColorScheme.error;
                    long j15 = themeColorScheme.onError;
                    long j16 = themeColorScheme.errorContainer;
                    long j17 = themeColorScheme.onErrorContainer;
                    long j18 = themeColorScheme.surfaceDim;
                    long j19 = themeColorScheme.surface;
                    long j20 = themeColorScheme.surfaceBright;
                    long j21 = themeColorScheme.onSurface;
                    long j22 = themeColorScheme.onSurfaceVariant;
                    long j23 = themeColorScheme.surfaceContainerLowest;
                    long j24 = themeColorScheme.surfaceContainerLow;
                    long j25 = themeColorScheme.surfaceContainer;
                    long j26 = themeColorScheme.surfaceContainerHigh;
                    long j27 = themeColorScheme.surfaceContainerHighest;
                    long j28 = themeColorScheme.inverseSurface;
                    long j29 = themeColorScheme.inverseOnSurface;
                    long j30 = themeColorScheme.inversePrimary;
                    long j31 = themeColorScheme.outline;
                    long j32 = themeColorScheme.outlineVariant;
                    long j33 = themeColorScheme.scrim;
                    long j34 = Color.Unspecified;
                    ColorScheme colorScheme = new ColorScheme(j2, j3, j4, j5, j30, j6, j7, j8, j9, j10, j11, j12, j13, j19, j21, j19, j21, j27, j22, j27, j28, j29, j14, j15, j16, j17, j31, j32, j33, j20, j18, j25, j26, j27, j24, j23, j34, j34, j34, j34, j34, j34, j34, j34, j34, j34, j34, j34);
                    ThemeShapes themeShapes = themeConfig.shapes;
                    StaticProvidableCompositionLocal staticProvidableCompositionLocal2 = ThemeShapesKt.LocalThemeShapes;
                    themeShapes.getClass();
                    Shapes shapes = new Shapes(themeShapes.extraSmall, themeShapes.small, themeShapes.medium, themeShapes.large, themeShapes.extraLarge);
                    ThemeTypography themeTypography = themeConfig.typography;
                    StaticProvidableCompositionLocal staticProvidableCompositionLocal3 = ThemeTypographyKt.LocalThemeTypography;
                    themeTypography.getClass();
                    MaterialThemeKt.MaterialTheme(colorScheme, shapes, new Typography(themeTypography.displayLarge, themeTypography.displayMedium, themeTypography.displaySmall, themeTypography.headlineLarge, themeTypography.headlineMedium, themeTypography.headlineSmall, themeTypography.titleLarge, themeTypography.titleMedium, themeTypography.titleSmall, themeTypography.bodyLarge, themeTypography.bodyMedium, themeTypography.bodySmall, themeTypography.labelLarge, themeTypography.labelMedium, themeTypography.labelSmall), composableLambdaImpl2, gapComposer8, 0);
                } else {
                    gapComposer8.skipToGroupEnd();
                }
                return unit;
            case 22:
                ((Integer) obj2).getClass();
                Jsoup.AvatarImage((String) obj5, (AvatarSize) obj4, (Modifier) obj3, (Composer) obj, Updater.updateChangedFlags(1));
                return unit;
            case 23:
                Arrangement$Horizontal arrangement$Horizontal = (Arrangement$Horizontal) obj5;
                ImageVector imageVector = (ImageVector) obj4;
                Integer num = (Integer) obj3;
                Composer composer9 = (Composer) obj;
                int intValue9 = ((Integer) obj2).intValue();
                GapComposer gapComposer9 = (GapComposer) composer9;
                if (gapComposer9.shouldExecute(intValue9 & 1, (intValue9 & 3) != 2)) {
                    FillElement fillElement = SizeKt.FillWholeMaxSize;
                    StaticProvidableCompositionLocal staticProvidableCompositionLocal4 = ThemeSpacingsKt.LocalThemeSpacings;
                    ((ThemeSpacings) gapComposer9.consume(staticProvidableCompositionLocal4)).getClass();
                    Modifier m220paddingVpY3zN4$default = OffsetKt.m220paddingVpY3zN4$default(fillElement, 24.0f, 0.0f, 2);
                    RowMeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(arrangement$Horizontal, Alignment.Companion.CenterVertically, gapComposer9, 48);
                    long j35 = gapComposer9.compositeKeyHashCode;
                    int i6 = (int) (j35 ^ (j35 >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer9.currentCompositionLocalScope();
                    Modifier materializeModifier2 = AbsoluteAlignment.materializeModifier(gapComposer9, m220paddingVpY3zN4$default);
                    ComposeUiNode.Companion.getClass();
                    LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$12 = ComposeUiNode.Companion.Constructor;
                    gapComposer9.startReusableNode();
                    if (gapComposer9.inserting) {
                        gapComposer9.createNode(layoutNode$Companion$Constructor$12);
                    } else {
                        gapComposer9.useNode();
                    }
                    Updater.m380setimpl(gapComposer9, rowMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
                    Updater.m380setimpl(gapComposer9, currentCompositionLocalScope2, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                    Updater.m380setimpl(gapComposer9, Integer.valueOf(i6), ComposeUiNode.Companion.SetCompositeKeyHash);
                    Updater.m379reconcileimpl(gapComposer9, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                    Updater.m380setimpl(gapComposer9, materializeModifier2, ComposeUiNode.Companion.SetModifier);
                    boolean changed3 = gapComposer9.changed(imageVector);
                    Object rememberedValue7 = gapComposer9.rememberedValue();
                    if (changed3 || rememberedValue7 == neverEqualPolicy) {
                        rememberedValue7 = Updater.movableContentOf(new ComposableLambdaImpl(-907683201, new app.k9mail.core.ui.compose.designsystem.organism.AlertDialogKt$$ExternalSyntheticLambda2(imageVector, i2), true));
                        gapComposer9.updateRememberedValue(rememberedValue7);
                    }
                    Function2 function2 = (Function2) rememberedValue7;
                    if (Intrinsics.areEqual(arrangement$Horizontal, OffsetKt.f7Start)) {
                        gapComposer9.startReplaceGroup(1298862155);
                        function2.invoke(gapComposer9, 0);
                        ((ThemeSpacings) gapComposer9.consume(staticProvidableCompositionLocal4)).getClass();
                        OffsetKt.Spacer(gapComposer9, SizeKt.m238width3ABfNKs(companion, 8.0f));
                        gapComposer9.end(false);
                    } else {
                        gapComposer9.startReplaceGroup(1298980358);
                        gapComposer9.end(false);
                    }
                    Validate.m1066TextLabelLargeXl4FiYE(Operation$State.stringResource(gapComposer9, num.intValue()), null, 0L, 0, 0, gapComposer9, 0, 62);
                    if (Intrinsics.areEqual(arrangement$Horizontal, OffsetKt.f4End)) {
                        gapComposer9.startReplaceGroup(1299089323);
                        ((ThemeSpacings) gapComposer9.consume(staticProvidableCompositionLocal4)).getClass();
                        OffsetKt.Spacer(gapComposer9, SizeKt.m238width3ABfNKs(companion, 8.0f));
                        function2.invoke(gapComposer9, 0);
                        gapComposer9.end(false);
                    } else {
                        gapComposer9.startReplaceGroup(1299207526);
                        gapComposer9.end(false);
                    }
                    gapComposer9.end(true);
                } else {
                    gapComposer9.skipToGroupEnd();
                }
                return unit;
            case 24:
                ((Integer) obj2).getClass();
                Options.Companion.MessageItemSwipeBackground((SwipeAction) obj5, (Arrangement$Horizontal) obj4, (Modifier) obj3, (Composer) obj, Updater.updateChangedFlags(49));
                return unit;
            case 25:
                ((Integer) obj2).getClass();
                CloseableKt.MessageListFooter((MessageListState) obj5, (Function1) obj4, (Modifier) obj3, (Composer) obj, Updater.updateChangedFlags(1));
                return unit;
            case 26:
                SetupArchiveFolderDialogContract$State setupArchiveFolderDialogContract$State = (SetupArchiveFolderDialogContract$State) obj5;
                Function1 function16 = (Function1) obj4;
                MutableState mutableState6 = (MutableState) obj3;
                Composer composer10 = (Composer) obj;
                int intValue10 = ((Integer) obj2).intValue();
                GapComposer gapComposer10 = (GapComposer) composer10;
                if (gapComposer10.shouldExecute(intValue10 & 1, (intValue10 & 3) != 2)) {
                    String str9 = (String) mutableState6.getValue();
                    boolean changed4 = gapComposer10.changed(mutableState6);
                    Object rememberedValue8 = gapComposer10.rememberedValue();
                    if (changed4 || rememberedValue8 == neverEqualPolicy) {
                        rememberedValue8 = new BasicTextKt$$ExternalSyntheticLambda0(mutableState6, 15);
                        gapComposer10.updateRememberedValue(rememberedValue8);
                    }
                    Jsoup.SetupArchiveFolderDialogContent(setupArchiveFolderDialogContract$State, str9, function16, (Function1) rememberedValue8, null, gapComposer10, 0);
                } else {
                    gapComposer10.skipToGroupEnd();
                }
                return unit;
            case 27:
                ((Integer) obj2).getClass();
                Handshake.Companion.DrawerContent((DrawerContract$State) obj5, (Function1) obj4, (Modifier) obj3, (Composer) obj, Updater.updateChangedFlags(1));
                return unit;
            case 28:
                ((Integer) obj2).getClass();
                InAppNotificationHostKt.BannerGlobalNotificationHost((InAppNotificationHostStateHolder) obj5, (Function1) obj4, (Modifier) obj3, (Composer) obj, Updater.updateChangedFlags(385));
                return unit;
            default:
                ImmutableSet immutableSet = (ImmutableSet) obj5;
                Function1 function17 = (Function1) obj4;
                Function0 function05 = (Function0) obj3;
                Composer composer11 = (Composer) obj;
                int intValue11 = ((Integer) obj2).intValue();
                GapComposer gapComposer11 = (GapComposer) composer11;
                if (gapComposer11.shouldExecute(intValue11 & 1, (intValue11 & 3) != 2)) {
                    ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(OffsetKt.Top, Alignment.Companion.Start, gapComposer11, 0);
                    long j36 = gapComposer11.compositeKeyHashCode;
                    int i7 = (int) (j36 ^ (j36 >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope3 = gapComposer11.currentCompositionLocalScope();
                    Modifier materializeModifier3 = AbsoluteAlignment.materializeModifier(gapComposer11, companion);
                    ComposeUiNode.Companion.getClass();
                    LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$13 = ComposeUiNode.Companion.Constructor;
                    gapComposer11.startReusableNode();
                    if (gapComposer11.inserting) {
                        gapComposer11.createNode(layoutNode$Companion$Constructor$13);
                    } else {
                        gapComposer11.useNode();
                    }
                    Updater.m380setimpl(gapComposer11, columnMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
                    Updater.m380setimpl(gapComposer11, currentCompositionLocalScope3, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                    Updater.m380setimpl(gapComposer11, Integer.valueOf(i7), ComposeUiNode.Companion.SetCompositeKeyHash);
                    Updater.m379reconcileimpl(gapComposer11, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                    Updater.m380setimpl(gapComposer11, materializeModifier3, ComposeUiNode.Companion.SetModifier);
                    TopAppBarKt.TopAppBar("Error Notifications", null, Expect_jvmKt.rememberComposableLambda(-323826349, new ExposedDropdownMenu_androidKt$$ExternalSyntheticLambda0(9, function05), gapComposer11), null, gapComposer11, 390, 10);
                    StaticProvidableCompositionLocal staticProvidableCompositionLocal5 = ThemeSpacingsKt.LocalThemeSpacings;
                    ((ThemeSpacings) gapComposer11.consume(staticProvidableCompositionLocal5)).getClass();
                    Arrangement$SpacedAligned arrangement$SpacedAligned = new Arrangement$SpacedAligned(8.0f, true, new StreamSharing$$ExternalSyntheticLambda0(7));
                    ((ThemeSpacings) gapComposer11.consume(staticProvidableCompositionLocal5)).getClass();
                    ((ThemeSpacings) gapComposer11.consume(staticProvidableCompositionLocal5)).getClass();
                    ((ThemeSpacings) gapComposer11.consume(staticProvidableCompositionLocal5)).getClass();
                    ((ThemeSpacings) gapComposer11.consume(staticProvidableCompositionLocal5)).getClass();
                    PaddingValuesImpl paddingValuesImpl = new PaddingValuesImpl(16.0f, 8.0f, 16.0f, 16.0f);
                    boolean changed5 = gapComposer11.changed(immutableSet) | gapComposer11.changed(function17);
                    Object rememberedValue9 = gapComposer11.rememberedValue();
                    if (changed5 || rememberedValue9 == neverEqualPolicy) {
                        rememberedValue9 = new MapEntrySerializer$$ExternalSyntheticLambda0(11, immutableSet, function17);
                        gapComposer11.updateRememberedValue(rememberedValue9);
                    }
                    ActionBar.LazyColumn(0, 491, null, null, arrangement$SpacedAligned, paddingValuesImpl, null, gapComposer11, null, null, (Function1) rememberedValue9, false);
                    gapComposer11.end(true);
                } else {
                    gapComposer11.skipToGroupEnd();
                }
                return unit;
        }
    }

    public /* synthetic */ SegmentedButtonKt$$ExternalSyntheticLambda4(Object obj, Object obj2, ComposableLambdaImpl composableLambdaImpl, int i, int i2) {
        this.$r8$classId = i2;
        this.f$0 = obj;
        this.f$2 = obj2;
        this.f$1 = composableLambdaImpl;
    }

    public /* synthetic */ SegmentedButtonKt$$ExternalSyntheticLambda4(Object obj, Object obj2, Object obj3, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = obj2;
        this.f$2 = obj3;
    }

    public /* synthetic */ SegmentedButtonKt$$ExternalSyntheticLambda4(Object obj, Object obj2, Object obj3, int i, int i2) {
        this.$r8$classId = i2;
        this.f$0 = obj;
        this.f$1 = obj2;
        this.f$2 = obj3;
    }
}
