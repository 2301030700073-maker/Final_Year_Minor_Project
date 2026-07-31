package kotlinx.coroutines.channels;

import android.content.res.Resources;
import android.graphics.Typeface;
import android.text.Spannable;
import androidx.appcompat.app.ActionBar;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.camera.core.streamsharing.StreamSharing$$ExternalSyntheticLambda0;
import androidx.camera.view.PreviewView;
import androidx.compose.animation.AnimatedVisibilityScope;
import androidx.compose.animation.CrossfadeKt;
import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimationState;
import androidx.compose.animation.core.ArcSplineKt;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.animation.core.SpringSpec;
import androidx.compose.animation.core.VisibilityThresholdsKt;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.ScrollState;
import androidx.compose.foundation.ScrollableAreaElement;
import androidx.compose.foundation.ScrollingLayoutElement;
import androidx.compose.foundation.VerticalScrollableClipShape;
import androidx.compose.foundation.contextmenu.ContextMenuColors;
import androidx.compose.foundation.contextmenu.ContextMenuScope;
import androidx.compose.foundation.gestures.DragGestureDetectorKt$$ExternalSyntheticLambda0;
import androidx.compose.foundation.gestures.DraggableKt$NoOpOnDragStarted$1;
import androidx.compose.foundation.gestures.DraggableNode$drag$2;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.gestures.PressGestureScopeImpl;
import androidx.compose.foundation.gestures.ScrollableKt$semanticsScrollBy$2;
import androidx.compose.foundation.gestures.TapGestureDetectorKt;
import androidx.compose.foundation.interaction.MutableInteractionSourceImpl;
import androidx.compose.foundation.layout.Arrangement$Horizontal;
import androidx.compose.foundation.layout.Arrangement$SpacedAligned;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.FillElement;
import androidx.compose.foundation.layout.FillNode$$ExternalSyntheticLambda0;
import androidx.compose.foundation.layout.FlexBoxMeasurePolicy;
import androidx.compose.foundation.layout.HorizontalAlignElement;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.lazy.LazyItemScopeImpl;
import androidx.compose.foundation.lazy.layout.LazyLayoutAnimateItemElement;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.foundation.text.TextFieldPointerModifier_commonKt$$ExternalSyntheticLambda1;
import androidx.compose.foundation.text.selection.SelectionMagnifierKt;
import androidx.compose.material3.ExposedDropdownMenuKt$$ExternalSyntheticLambda3;
import androidx.compose.material3.SnackbarHostKt$animatedOpacity$2$1;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.GapComposer$$ExternalSyntheticLambda3;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.ParcelableSnapshotMutableIntState;
import androidx.compose.runtime.State;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.input.pointer.PointerInputEventHandler;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.input.pointer.SuspendPointerInputElement;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.text.SpanStyle;
import androidx.compose.ui.text.android.style.TypefaceSpan;
import androidx.compose.ui.text.font.FontFamilyResolverImpl;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.font.SystemFontFamily;
import androidx.compose.ui.text.font.TypefaceResult$Immutable;
import androidx.compose.ui.text.platform.AndroidParagraphIntrinsics;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.core.util.DebugUtils;
import androidx.core.view.MenuHostHelper;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.navigation.CollectionNavType;
import androidx.navigation.NavType;
import androidx.navigation.Navigator$$ExternalSyntheticLambda1;
import androidx.navigation.compose.NavHostKt$$ExternalSyntheticLambda11;
import androidx.navigation.compose.NavHostKt$$ExternalSyntheticLambda14;
import androidx.navigation.compose.NavHostKt$NavHost$25$1;
import androidx.navigation.serialization.RouteBuilder$ParamType;
import androidx.room.util.SchemaInfoUtilKt;
import androidx.sqlite.SQLite;
import androidx.work.Data;
import androidx.work.Operation$State;
import androidx.work.OperationKt;
import app.k9mail.autodiscovery.api.AutoDiscoveryResult;
import app.k9mail.core.ui.compose.designsystem.molecule.input.TextInputKt;
import app.k9mail.feature.account.oauth.ui.AccountOAuthContract$ViewModel;
import app.k9mail.feature.account.server.certificate.ui.ServerCertificateErrorContract$State;
import app.k9mail.feature.account.server.settings.ui.outgoing.OutgoingServerSettingsContract$State;
import app.k9mail.feature.account.setup.ui.autodiscovery.AccountAutoDiscoveryContract$Error;
import app.k9mail.feature.account.setup.ui.options.sync.SyncOptionsContract$State;
import app.k9mail.feature.onboarding.permissions.ui.PermissionsContract$State;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.fsck.k9.R;
import com.fsck.k9.sasl.OAuthBearer;
import com.fsck.k9.ui.settings.AboutFragmentKt$$ExternalSyntheticLambda7;
import com.skydoves.landscapist.coil3.CoilImageKt$$ExternalSyntheticLambda11;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyMap;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.math.MathKt;
import kotlin.sequences.SequencesKt___SequencesKt$$ExternalSyntheticLambda0;
import kotlin.text.CharsKt__CharKt;
import kotlin.text.StringsKt;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.collections.immutable.ImmutableList;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.internal.InlineList;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.internal.MapEntrySerializer$$ExternalSyntheticLambda0;
import kotlinx.serialization.json.JsonObject$$ExternalSyntheticLambda0;
import net.thunderbird.core.common.action.SwipeAction;
import net.thunderbird.core.common.action.SwipeActions;
import net.thunderbird.core.ui.compose.designsystem.atom.icon.Icons$Outlined;
import net.thunderbird.core.ui.compose.designsystem.molecule.swipe.SwipeDirection;
import net.thunderbird.core.ui.compose.designsystem.molecule.swipe.SwipeableRowState;
import net.thunderbird.core.ui.compose.designsystem.molecule.swipe.fork.DragEvent;
import net.thunderbird.core.ui.compose.designsystem.molecule.swipe.fork.DraggableNode;
import net.thunderbird.core.ui.compose.designsystem.molecule.swipe.fork.DraggableNode$startListeningForEvents$1;
import net.thunderbird.core.ui.compose.theme2.ThemeColorScheme;
import net.thunderbird.core.ui.compose.theme2.ThemeColorSchemeKt;
import net.thunderbird.core.ui.compose.theme2.ThemeImages;
import net.thunderbird.core.ui.compose.theme2.ThemeImagesKt;
import net.thunderbird.core.ui.compose.theme2.ThemeSizes;
import net.thunderbird.core.ui.compose.theme2.ThemeSizesKt;
import net.thunderbird.core.ui.compose.theme2.ThemeSpacings;
import net.thunderbird.core.ui.compose.theme2.ThemeSpacingsKt;
import net.thunderbird.core.ui.setting.SettingValue;
import net.thunderbird.core.ui.setting.dialog.ui.components.dialog.value.ColorDialogViewKt$$ExternalSyntheticLambda4;
import net.thunderbird.feature.mail.message.list.internal.ui.MessageListScreenAccessibilityState;
import net.thunderbird.feature.mail.message.list.ui.dialog.SetupArchiveFolderDialogContract$State;
import net.thunderbird.feature.mail.message.list.ui.state.MessageListState;
import net.thunderbird.feature.mail.message.reader.api.ui.attachment.AttachmentUiItem;
import net.thunderbird.feature.mail.message.reader.api.ui.component.organism.AttachmentCardKt;
import okhttp3.Cookie;
import okhttp3.Dispatcher;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.ForwardingFileSystem$$ExternalSyntheticLambda0;
import okio.Options;
import org.jetbrains.compose.resources.ImageResourcesKt;
import org.jsoup.helper.Validate;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class BufferedChannel$$ExternalSyntheticLambda1 implements Function3 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;

    public /* synthetic */ BufferedChannel$$ExternalSyntheticLambda1(int i, Object obj, Object obj2) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = obj2;
    }

    private final Object invoke$net$thunderbird$core$ui$setting$dialog$ui$components$list$value$SegmentedButtonItemKt$$ExternalSyntheticLambda0(Object obj, Object obj2, Object obj3) {
        SettingValue.SegmentedButton segmentedButton = (SettingValue.SegmentedButton) this.f$1;
        Function1 function1 = (Function1) this.f$0;
        Composer composer = (Composer) obj2;
        int intValue = ((Integer) obj3).intValue();
        ((ColumnScopeInstance) obj).getClass();
        GapComposer gapComposer = (GapComposer) composer;
        if (gapComposer.shouldExecute(intValue & 1, (intValue & 17) != 16)) {
            DebugUtils.m787TextTitleMediumXl4FiYE((String) segmentedButton.title.invoke(), null, 0L, null, 0, 0, gapComposer, 0, 62);
            String str = (String) segmentedButton.description.invoke();
            if (str == null) {
                gapComposer.startReplaceGroup(1010610806);
                gapComposer.end(false);
            } else {
                gapComposer.startReplaceGroup(1010610807);
                Data.Companion.m825TextBodyMediumZHfKjFs(str, (Modifier) null, 0L, 0, 0, (Function1) null, gapComposer, 0, 126);
                gapComposer.end(false);
            }
            boolean changed = gapComposer.changed(function1) | gapComposer.changedInstance(segmentedButton);
            Object rememberedValue = gapComposer.rememberedValue();
            NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
            if (changed || rememberedValue == neverEqualPolicy) {
                rememberedValue = new MapEntrySerializer$$ExternalSyntheticLambda0(5, function1, segmentedButton);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            Function1 function12 = (Function1) rememberedValue;
            ImmutableList immutableList = segmentedButton.options;
            Object rememberedValue2 = gapComposer.rememberedValue();
            if (rememberedValue2 == neverEqualPolicy) {
                rememberedValue2 = new JsonObject$$ExternalSyntheticLambda0(28);
                gapComposer.updateRememberedValue(rememberedValue2);
            }
            SQLite.ButtonSegmentedSingleChoice(function12, immutableList, (Function1) rememberedValue2, SizeKt.FillWholeMaxWidth, segmentedButton.value, gapComposer, 3456);
        } else {
            gapComposer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    private final Object invoke$net$thunderbird$feature$mail$message$list$internal$ui$component$organism$MessageListSwipeableItemKt$$ExternalSyntheticLambda0(Object obj, Object obj2, Object obj3) {
        Pair pair;
        SwipeActions swipeActions = (SwipeActions) this.f$0;
        SwipeableRowState swipeableRowState = (SwipeableRowState) this.f$1;
        Composer composer = (Composer) obj2;
        int intValue = ((Integer) obj3).intValue();
        ((RowScope) obj).getClass();
        GapComposer gapComposer = (GapComposer) composer;
        if (!gapComposer.shouldExecute(intValue & 1, (intValue & 17) != 16)) {
            gapComposer.skipToGroupEnd();
        } else if (swipeActions == null) {
            gapComposer.startReplaceGroup(1979369430);
            gapComposer.end(false);
        } else {
            gapComposer.startReplaceGroup(1979369431);
            int ordinal = ((SwipeDirection) swipeableRowState.swipeDirection$delegate.getValue()).ordinal();
            if (ordinal == 0) {
                pair = new Pair(swipeActions.rightAction, OffsetKt.f7Start);
            } else if (ordinal != 1) {
                if (ordinal != 2) {
                    UriKt$$ExternalSyntheticBUOutline0.m857m();
                    return null;
                }
                gapComposer.end(false);
            } else {
                pair = new Pair(swipeActions.leftAction, OffsetKt.f4End);
            }
            Options.Companion.MessageItemSwipeBackground((SwipeAction) pair.first, (Arrangement$Horizontal) pair.second, null, gapComposer, 48);
            gapComposer.end(false);
        }
        return Unit.INSTANCE;
    }

    private final Object invoke$net$thunderbird$feature$mail$message$list$internal$ui$component$template$MessageListKt$$ExternalSyntheticLambda3(Object obj, Object obj2, Object obj3) {
        MessageListState messageListState = (MessageListState) this.f$1;
        Function1 function1 = (Function1) this.f$0;
        LazyItemScopeImpl lazyItemScopeImpl = (LazyItemScopeImpl) obj;
        Composer composer = (Composer) obj2;
        int intValue = ((Integer) obj3).intValue();
        lazyItemScopeImpl.getClass();
        if ((intValue & 6) == 0) {
            intValue |= ((GapComposer) composer).changed(lazyItemScopeImpl) ? 4 : 2;
        }
        GapComposer gapComposer = (GapComposer) composer;
        if (gapComposer.shouldExecute(intValue & 1, (intValue & 19) != 18)) {
            FiniteAnimationSpec snap$default = ArcSplineKt.snap$default();
            SpringSpec spring$default = ArcSplineKt.spring$default(0.0f, 400.0f, null, 5);
            if ((2 & 5) != 0) {
                Map map = VisibilityThresholdsKt.VisibilityThresholdMap;
                snap$default = ArcSplineKt.spring$default(0.0f, 400.0f, new IntOffset(4294967297L), 1);
            }
            CloseableKt.MessageListFooter(messageListState, function1, new LazyLayoutAnimateItemElement(spring$default, snap$default, ArcSplineKt.spring$default(0.0f, 400.0f, null, 5)), gapComposer, 0);
        } else {
            gapComposer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    private final Object invoke$net$thunderbird$feature$mail$message$list$internal$ui$dialog$ChooseArchiveFolderDialogContentKt$$ExternalSyntheticLambda0(Object obj, Object obj2, Object obj3) {
        SetupArchiveFolderDialogContract$State.ChooseArchiveFolder chooseArchiveFolder = (SetupArchiveFolderDialogContract$State.ChooseArchiveFolder) this.f$1;
        Function1 function1 = (Function1) this.f$0;
        boolean booleanValue = ((Boolean) obj).booleanValue();
        Composer composer = (Composer) obj2;
        int intValue = ((Integer) obj3).intValue();
        if ((intValue & 6) == 0) {
            intValue |= ((GapComposer) composer).changed(booleanValue) ? 4 : 2;
        }
        GapComposer gapComposer = (GapComposer) composer;
        if (gapComposer.shouldExecute(intValue & 1, (intValue & 19) != 18)) {
            String str = chooseArchiveFolder.errorMessage;
            if (booleanValue) {
                gapComposer.startReplaceGroup(-1866236445);
                BiasAlignment biasAlignment = Alignment.Companion.Center;
                FillElement fillElement = SizeKt.FillWholeMaxWidth;
                ((ThemeSpacings) gapComposer.consume(ThemeSpacingsKt.LocalThemeSpacings)).getClass();
                Modifier m218padding3ABfNKs = OffsetKt.m218padding3ABfNKs(fillElement, 24.0f);
                MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(biasAlignment, false);
                long j = gapComposer.compositeKeyHashCode;
                int i = (int) (j ^ (j >>> 32));
                PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
                Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, m218padding3ABfNKs);
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
                Updater.m380setimpl(gapComposer, Integer.valueOf(i), ComposeUiNode.Companion.SetCompositeKeyHash);
                Updater.m379reconcileimpl(gapComposer, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                Updater.m380setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
                OAuthBearer.m939CircularProgressIndicatoriJQMabo(null, 0L, gapComposer, 0, 3);
                gapComposer.end(true);
                gapComposer.end(false);
            } else {
                int i2 = 7;
                if (str == null || !(!StringsKt.isBlank(str))) {
                    gapComposer.startReplaceGroup(-1864856914);
                    Modifier m228heightInVpY3zN4$default = SizeKt.m228heightInVpY3zN4$default(SizeKt.FillWholeMaxWidth, 0.0f, 1);
                    boolean changed = gapComposer.changed(chooseArchiveFolder) | gapComposer.changed(function1);
                    Object rememberedValue = gapComposer.rememberedValue();
                    if (changed || rememberedValue == Composer.Companion.Empty) {
                        rememberedValue = new MapEntrySerializer$$ExternalSyntheticLambda0(i2, chooseArchiveFolder, function1);
                        gapComposer.updateRememberedValue(rememberedValue);
                    }
                    ActionBar.LazyColumn(6, 510, null, null, null, null, null, gapComposer, null, m228heightInVpY3zN4$default, (Function1) rememberedValue, false);
                    gapComposer.end(false);
                } else {
                    gapComposer.startReplaceGroup(-1865846155);
                    StaticProvidableCompositionLocal staticProvidableCompositionLocal = ThemeSpacingsKt.LocalThemeSpacings;
                    ((ThemeSpacings) gapComposer.consume(staticProvidableCompositionLocal)).getClass();
                    Arrangement$SpacedAligned arrangement$SpacedAligned = new Arrangement$SpacedAligned(16.0f, true, new StreamSharing$$ExternalSyntheticLambda0(7));
                    FillElement fillElement2 = SizeKt.FillWholeMaxWidth;
                    ((ThemeSpacings) gapComposer.consume(staticProvidableCompositionLocal)).getClass();
                    Modifier m218padding3ABfNKs2 = OffsetKt.m218padding3ABfNKs(fillElement2, 24.0f);
                    ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(arrangement$SpacedAligned, Alignment.Companion.Start, gapComposer, 0);
                    long j2 = gapComposer.compositeKeyHashCode;
                    int i3 = (int) (j2 ^ (j2 >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer.currentCompositionLocalScope();
                    Modifier materializeModifier2 = AbsoluteAlignment.materializeModifier(gapComposer, m218padding3ABfNKs2);
                    ComposeUiNode.Companion.getClass();
                    LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$12 = ComposeUiNode.Companion.Constructor;
                    gapComposer.startReusableNode();
                    if (gapComposer.inserting) {
                        gapComposer.createNode(layoutNode$Companion$Constructor$12);
                    } else {
                        gapComposer.useNode();
                    }
                    Updater.m380setimpl(gapComposer, columnMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
                    Updater.m380setimpl(gapComposer, currentCompositionLocalScope2, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                    Updater.m380setimpl(gapComposer, Integer.valueOf(i3), ComposeUiNode.Companion.SetCompositeKeyHash);
                    Updater.m379reconcileimpl(gapComposer, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                    Updater.m380setimpl(gapComposer, materializeModifier2, ComposeUiNode.Companion.SetModifier);
                    AtomicFU.m1009IconxqIIw2o(Icons$Outlined.ErrorOutline, new HorizontalAlignElement(Alignment.Companion.CenterHorizontally), new Color(((ThemeColorScheme) gapComposer.consume(ThemeColorSchemeKt.LocalThemeColorScheme)).error), gapComposer, 0, 4);
                    Data.Companion.m825TextBodyMediumZHfKjFs(Operation$State.stringResource(gapComposer, R.string.setup_archive_folder_dialog_error_retrieve_folders), (Modifier) null, 0L, 0, 0, (Function1) null, gapComposer, 0, 126);
                    Data.Companion.m825TextBodyMediumZHfKjFs(Operation$State.stringResource(R.string.setup_archive_folder_dialog_error_retrieve_folders_detailed_message, new Object[]{str}, gapComposer), (Modifier) null, 0L, 0, 0, (Function1) null, gapComposer, 0, 126);
                    gapComposer.end(true);
                    gapComposer.end(false);
                }
            }
        } else {
            gapComposer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        Typeface typeface;
        Modifier then;
        String string;
        int i = this.$r8$classId;
        Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
        Object obj4 = Composer.Companion.Empty;
        Continuation continuation = null;
        int i2 = 6;
        Unit unit = Unit.INSTANCE;
        Object obj5 = this.f$1;
        Object obj6 = this.f$0;
        switch (i) {
            case 0:
                InlineList.callUndeliveredElement((Function1) obj6, obj5, (CoroutineContext) obj3);
                return unit;
            case 1:
                Function1 function1 = (Function1) obj6;
                ContextMenuColors contextMenuColors = (ContextMenuColors) obj5;
                Composer composer = (Composer) obj2;
                int intValue = ((Integer) obj3).intValue();
                GapComposer gapComposer = (GapComposer) composer;
                if (gapComposer.shouldExecute(intValue & 1, (intValue & 17) != 16)) {
                    Object rememberedValue = gapComposer.rememberedValue();
                    if (rememberedValue == obj4) {
                        rememberedValue = new ContextMenuScope();
                        gapComposer.updateRememberedValue(rememberedValue);
                    }
                    ContextMenuScope contextMenuScope = (ContextMenuScope) rememberedValue;
                    contextMenuScope.composables.clear();
                    function1.invoke(contextMenuScope);
                    contextMenuScope.Content$foundation(contextMenuColors, gapComposer, 0);
                } else {
                    gapComposer.skipToGroupEnd();
                }
                return unit;
            case 2:
                TextFieldPointerModifier_commonKt$$ExternalSyntheticLambda1 textFieldPointerModifier_commonKt$$ExternalSyntheticLambda1 = (TextFieldPointerModifier_commonKt$$ExternalSyntheticLambda1) obj6;
                final MutableInteractionSourceImpl mutableInteractionSourceImpl = (MutableInteractionSourceImpl) obj5;
                ((Integer) obj3).getClass();
                GapComposer gapComposer2 = (GapComposer) ((Composer) obj2);
                gapComposer2.startReplaceGroup(-102778667);
                Object rememberedValue2 = gapComposer2.rememberedValue();
                Object obj7 = rememberedValue2;
                if (rememberedValue2 == obj4) {
                    Object createCompositionCoroutineScope = Updater.createCompositionCoroutineScope(gapComposer2);
                    gapComposer2.updateRememberedValue(createCompositionCoroutineScope);
                    obj7 = createCompositionCoroutineScope;
                }
                final CoroutineScope coroutineScope = (CoroutineScope) obj7;
                Object rememberedValue3 = gapComposer2.rememberedValue();
                Object obj8 = rememberedValue3;
                if (rememberedValue3 == obj4) {
                    Object mutableStateOf$default = Updater.mutableStateOf$default(null);
                    gapComposer2.updateRememberedValue(mutableStateOf$default);
                    obj8 = mutableStateOf$default;
                }
                final MutableState mutableState = (MutableState) obj8;
                final MutableState rememberUpdatedState = Updater.rememberUpdatedState(textFieldPointerModifier_commonKt$$ExternalSyntheticLambda1, gapComposer2);
                boolean changed = gapComposer2.changed(mutableInteractionSourceImpl);
                Object rememberedValue4 = gapComposer2.rememberedValue();
                Object obj9 = rememberedValue4;
                if (changed || rememberedValue4 == obj4) {
                    Object navigator$$ExternalSyntheticLambda1 = new Navigator$$ExternalSyntheticLambda1(7, mutableState, mutableInteractionSourceImpl);
                    gapComposer2.updateRememberedValue(navigator$$ExternalSyntheticLambda1);
                    obj9 = navigator$$ExternalSyntheticLambda1;
                }
                Updater.DisposableEffect(mutableInteractionSourceImpl, (Function1) obj9, gapComposer2);
                boolean changedInstance = gapComposer2.changedInstance(coroutineScope) | gapComposer2.changed(mutableInteractionSourceImpl) | gapComposer2.changed(rememberUpdatedState);
                Object rememberedValue5 = gapComposer2.rememberedValue();
                Object obj10 = rememberedValue5;
                if (changedInstance || rememberedValue5 == obj4) {
                    Object obj11 = new PointerInputEventHandler() { // from class: androidx.compose.foundation.text.TextFieldPressGestureFilterKt$tapPressTextFieldModifier$1$2$1

                        /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
                        /* renamed from: androidx.compose.foundation.text.TextFieldPressGestureFilterKt$tapPressTextFieldModifier$1$2$1$1, reason: invalid class name */
                        public final class AnonymousClass1 extends SuspendLambda implements Function3 {
                            public final /* synthetic */ MutableInteractionSourceImpl $interactionSource;
                            public final /* synthetic */ MutableState $pressedInteraction;
                            public final /* synthetic */ CoroutineScope $scope;
                            public /* synthetic */ long J$0;
                            public /* synthetic */ PressGestureScopeImpl L$0;
                            public int label;

                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            public AnonymousClass1(CoroutineScope coroutineScope, MutableState mutableState, MutableInteractionSourceImpl mutableInteractionSourceImpl, Continuation continuation) {
                                super(3, continuation);
                                this.$scope = coroutineScope;
                                this.$pressedInteraction = mutableState;
                                this.$interactionSource = mutableInteractionSourceImpl;
                            }

                            @Override // kotlin.jvm.functions.Function3
                            public final Object invoke(Object obj, Object obj2, Object obj3) {
                                long j = ((Offset) obj2).packedValue;
                                MutableState mutableState = this.$pressedInteraction;
                                MutableInteractionSourceImpl mutableInteractionSourceImpl = this.$interactionSource;
                                AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$scope, mutableState, mutableInteractionSourceImpl, (Continuation) obj3);
                                anonymousClass1.L$0 = (PressGestureScopeImpl) obj;
                                anonymousClass1.J$0 = j;
                                return anonymousClass1.invokeSuspend(Unit.INSTANCE);
                            }

                            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                            public final Object invokeSuspend(Object obj) {
                                int i = this.label;
                                CoroutineScope coroutineScope = this.$scope;
                                if (i == 0) {
                                    ResultKt.throwOnFailure(obj);
                                    PressGestureScopeImpl pressGestureScopeImpl = this.L$0;
                                    JobKt.launch$default(coroutineScope, null, null, new ScrollableKt$semanticsScrollBy$2(3, this.J$0, this.$pressedInteraction, this.$interactionSource, (Continuation) null), 3);
                                    this.label = 1;
                                    obj = pressGestureScopeImpl.tryAwaitRelease(this);
                                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                                    if (obj == coroutineSingletons) {
                                        return coroutineSingletons;
                                    }
                                } else {
                                    if (i != 1) {
                                        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                                        return null;
                                    }
                                    ResultKt.throwOnFailure(obj);
                                }
                                JobKt.launch$default(coroutineScope, null, null, new SnackbarHostKt$animatedOpacity$2$1(this.$pressedInteraction, ((Boolean) obj).booleanValue(), this.$interactionSource, null), 3);
                                return Unit.INSTANCE;
                            }
                        }

                        @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                        public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation2) {
                            AnonymousClass1 anonymousClass1 = new AnonymousClass1(CoroutineScope.this, mutableState, mutableInteractionSourceImpl, null);
                            BasicTextKt$$ExternalSyntheticLambda0 basicTextKt$$ExternalSyntheticLambda0 = new BasicTextKt$$ExternalSyntheticLambda0(rememberUpdatedState, 3);
                            DraggableKt$NoOpOnDragStarted$1 draggableKt$NoOpOnDragStarted$1 = TapGestureDetectorKt.NoPressGesture;
                            Object coroutineScope2 = JobKt.coroutineScope(new NavHostKt$NavHost$25$1(pointerInputScope, anonymousClass1, basicTextKt$$ExternalSyntheticLambda0, new PressGestureScopeImpl(pointerInputScope), (Continuation) null, 2), continuation2);
                            Unit unit2 = Unit.INSTANCE;
                            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                            if (coroutineScope2 != coroutineSingletons) {
                                coroutineScope2 = unit2;
                            }
                            return coroutineScope2 == coroutineSingletons ? coroutineScope2 : unit2;
                        }
                    };
                    gapComposer2.updateRememberedValue(obj11);
                    obj10 = obj11;
                }
                SuspendPointerInputElement suspendPointerInputElement = new SuspendPointerInputElement(mutableInteractionSourceImpl, null, (PointerInputEventHandler) obj10, 6);
                gapComposer2.end(false);
                return suspendPointerInputElement;
            case 3:
                Function0 function0 = (Function0) obj5;
                Function1 function12 = (Function1) obj6;
                ((Integer) obj3).getClass();
                GapComposer gapComposer3 = (GapComposer) ((Composer) obj2);
                gapComposer3.startReplaceGroup(759876635);
                Object rememberedValue6 = gapComposer3.rememberedValue();
                Object obj12 = rememberedValue6;
                if (rememberedValue6 == obj4) {
                    Object derivedStateOf = Updater.derivedStateOf(function0);
                    gapComposer3.updateRememberedValue(derivedStateOf);
                    obj12 = derivedStateOf;
                }
                State state = (State) obj12;
                Object rememberedValue7 = gapComposer3.rememberedValue();
                Object obj13 = rememberedValue7;
                if (rememberedValue7 == obj4) {
                    Object animatable = new Animatable(new Offset(((Offset) state.getValue()).packedValue), SelectionMagnifierKt.UnspecifiedSafeOffsetVectorConverter, new Offset(SelectionMagnifierKt.OffsetDisplacementThreshold), 8);
                    gapComposer3.updateRememberedValue(animatable);
                    obj13 = animatable;
                }
                Animatable animatable2 = (Animatable) obj13;
                boolean changedInstance2 = gapComposer3.changedInstance(animatable2);
                Object rememberedValue8 = gapComposer3.rememberedValue();
                Object obj14 = rememberedValue8;
                if (changedInstance2 || rememberedValue8 == obj4) {
                    Object draggableNode$drag$2 = new DraggableNode$drag$2(state, animatable2, continuation, 23);
                    gapComposer3.updateRememberedValue(draggableNode$drag$2);
                    obj14 = draggableNode$drag$2;
                }
                Updater.LaunchedEffect(gapComposer3, unit, (Function2) obj14);
                AnimationState animationState = animatable2.internalState;
                boolean changed2 = gapComposer3.changed(animationState);
                Object rememberedValue9 = gapComposer3.rememberedValue();
                if (changed2 || rememberedValue9 == obj4) {
                    rememberedValue9 = new NavHostKt$$ExternalSyntheticLambda11(animationState, true ? 1 : 0);
                    gapComposer3.updateRememberedValue(rememberedValue9);
                }
                Modifier modifier = (Modifier) function12.invoke((Function0) rememberedValue9);
                gapComposer3.end(false);
                return modifier;
            case 4:
                Constraints constraints = (Constraints) obj3;
                int m741constrainWidthK40F9xA = ConstraintsKt.m741constrainWidthK40F9xA(((ParcelableSnapshotMutableIntState) obj6).getIntValue(), constraints.value);
                Placeable mo571measureBRTryo0 = ((Measurable) obj2).mo571measureBRTryo0(Constraints.m727copyZbe2FdA$default(constraints.value, m741constrainWidthK40F9xA, m741constrainWidthK40F9xA, 0, ConstraintsKt.m740constrainHeightK40F9xA(((ParcelableSnapshotMutableIntState) obj5).getIntValue(), constraints.value), 4));
                return ((MeasureScope) obj).layout(mo571measureBRTryo0.width, mo571measureBRTryo0.height, EmptyMap.INSTANCE, new FillNode$$ExternalSyntheticLambda0(mo571measureBRTryo0, 9));
            case 5:
                Spannable spannable = (Spannable) obj6;
                CoilImageKt$$ExternalSyntheticLambda11 coilImageKt$$ExternalSyntheticLambda11 = (CoilImageKt$$ExternalSyntheticLambda11) obj5;
                SpanStyle spanStyle = (SpanStyle) obj;
                int intValue2 = ((Integer) obj2).intValue();
                int intValue3 = ((Integer) obj3).intValue();
                SystemFontFamily systemFontFamily = spanStyle.fontFamily;
                FontWeight fontWeight = spanStyle.fontWeight;
                if (fontWeight == null) {
                    fontWeight = FontWeight.Normal;
                }
                FontStyle fontStyle = spanStyle.fontStyle;
                int i3 = fontStyle != null ? fontStyle.value : 0;
                FontSynthesis fontSynthesis = spanStyle.fontSynthesis;
                int i4 = fontSynthesis != null ? fontSynthesis.value : 65535;
                AndroidParagraphIntrinsics androidParagraphIntrinsics = (AndroidParagraphIntrinsics) coilImageKt$$ExternalSyntheticLambda11.f$0;
                TypefaceResult$Immutable m708resolveDPcqOEQ = ((FontFamilyResolverImpl) androidParagraphIntrinsics.fontFamilyResolver).m708resolveDPcqOEQ(systemFontFamily, fontWeight, i3, i4);
                if (m708resolveDPcqOEQ instanceof TypefaceResult$Immutable) {
                    Object obj15 = m708resolveDPcqOEQ.value;
                    obj15.getClass();
                    typeface = (Typeface) obj15;
                } else {
                    MenuHostHelper menuHostHelper = new MenuHostHelper(m708resolveDPcqOEQ, androidParagraphIntrinsics.resolvedTypefaces);
                    androidParagraphIntrinsics.resolvedTypefaces = menuHostHelper;
                    Object obj16 = menuHostHelper.mProviderToLifecycleContainers;
                    obj16.getClass();
                    typeface = (Typeface) obj16;
                }
                spannable.setSpan(new TypefaceSpan(0, typeface), intValue2, intValue3, 33);
                return unit;
            case 6:
                Dispatcher dispatcher = (Dispatcher) obj5;
                int intValue4 = ((Integer) obj).intValue();
                String str = (String) obj2;
                NavType navType = (NavType) obj3;
                str.getClass();
                navType.getClass();
                Object obj17 = ((Map) obj6).get(str);
                obj17.getClass();
                List list = (List) obj17;
                int ordinal = (((navType instanceof CollectionNavType) || ((KSerializer) dispatcher.executorServiceOrNull).getDescriptor().isElementOptional(intValue4)) ? RouteBuilder$ParamType.QUERY : RouteBuilder$ParamType.PATH).ordinal();
                if (ordinal != 0) {
                    if (ordinal != 1) {
                        UriKt$$ExternalSyntheticBUOutline0.m857m();
                        return null;
                    }
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        dispatcher.addQuery(str, (String) it.next());
                    }
                } else {
                    if (list.size() != 1) {
                        StringBuilder m31m = CameraDevices$CC.m31m("Expected one value for argument ", str, ", found ");
                        m31m.append(list.size());
                        m31m.append("values instead.");
                        throw new IllegalArgumentException(m31m.toString().toString());
                    }
                    dispatcher.runningAsyncCalls = ((String) dispatcher.runningAsyncCalls) + '/' + ((String) CollectionsKt.first(list));
                }
                return unit;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                Function2 function2 = (Function2) obj6;
                String str2 = (String) obj5;
                Composer composer2 = (Composer) obj2;
                int intValue5 = ((Integer) obj3).intValue();
                ((RowScope) obj).getClass();
                GapComposer gapComposer4 = (GapComposer) composer2;
                if (gapComposer4.shouldExecute(intValue5 & 1, (intValue5 & 17) != 16)) {
                    if (function2 == null) {
                        gapComposer4.startReplaceGroup(1133759537);
                    } else {
                        gapComposer4.startReplaceGroup(-240521776);
                        function2.invoke(gapComposer4, 0);
                    }
                    gapComposer4.end(false);
                    TextKt.m362TextNvy7gAk(str2, null, 0L, 0L, 0L, new TextAlign(3), 0L, 0, false, 0, 0, null, null, gapComposer4, 0, 0, 261118);
                } else {
                    gapComposer4.skipToGroupEnd();
                }
                return unit;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                Modifier modifier2 = (Modifier) obj6;
                String str3 = (String) obj5;
                PaddingValues paddingValues = (PaddingValues) obj;
                Composer composer3 = (Composer) obj2;
                int intValue6 = ((Integer) obj3).intValue();
                paddingValues.getClass();
                if ((intValue6 & 6) == 0) {
                    intValue6 |= ((GapComposer) composer3).changed(paddingValues) ? 4 : 2;
                }
                GapComposer gapComposer5 = (GapComposer) composer3;
                if (gapComposer5.shouldExecute(intValue6 & 1, (intValue6 & 19) != 18)) {
                    FillElement fillElement = SizeKt.FillWholeMaxWidth;
                    StaticProvidableCompositionLocal staticProvidableCompositionLocal = ThemeSpacingsKt.LocalThemeSpacings;
                    ((ThemeSpacings) gapComposer5.consume(staticProvidableCompositionLocal)).getClass();
                    ((ThemeSpacings) gapComposer5.consume(staticProvidableCompositionLocal)).getClass();
                    Modifier then2 = OffsetKt.padding(OffsetKt.m222paddingqDBjuR0$default(fillElement, 4.0f, 0.0f, 32.0f, 0.0f, 10), paddingValues).then(modifier2);
                    RowMeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(OffsetKt.Center, Alignment.Companion.CenterVertically, gapComposer5, 54);
                    long j = gapComposer5.compositeKeyHashCode;
                    int i5 = (int) (j ^ (j >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer5.currentCompositionLocalScope();
                    Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer5, then2);
                    ComposeUiNode.Companion.getClass();
                    LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
                    gapComposer5.startReusableNode();
                    if (gapComposer5.inserting) {
                        gapComposer5.createNode(layoutNode$Companion$Constructor$1);
                    } else {
                        gapComposer5.useNode();
                    }
                    Updater.m380setimpl(gapComposer5, rowMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
                    Updater.m380setimpl(gapComposer5, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                    Updater.m380setimpl(gapComposer5, Integer.valueOf(i5), ComposeUiNode.Companion.SetCompositeKeyHash);
                    Updater.m379reconcileimpl(gapComposer5, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                    Updater.m380setimpl(gapComposer5, materializeModifier, ComposeUiNode.Companion.SetModifier);
                    Painter painterResource = ImageResourcesKt.painterResource(((ThemeImages) gapComposer5.consume(ThemeImagesKt.LocalThemeImages)).logo, gapComposer5);
                    ((ThemeSpacings) gapComposer5.consume(staticProvidableCompositionLocal)).getClass();
                    Modifier m218padding3ABfNKs = OffsetKt.m218padding3ABfNKs(companion, 8.0f);
                    ((ThemeSpacings) gapComposer5.consume(staticProvidableCompositionLocal)).getClass();
                    ImageKt.Image(painterResource, null, SizeKt.m234size3ABfNKs(OffsetKt.m222paddingqDBjuR0$default(m218padding3ABfNKs, 0.0f, 0.0f, 8.0f, 0.0f, 11), 56.0f), null, null, 0.0f, null, gapComposer5, 56, 120);
                    Operation$State.m827TextDisplayMediumAutoResizeOxOnQKw(0, 0L, gapComposer5, null, str3);
                    gapComposer5.end(true);
                } else {
                    gapComposer5.skipToGroupEnd();
                }
                return unit;
            case 9:
                ScrollState scrollState = (ScrollState) obj6;
                ServerCertificateErrorContract$State serverCertificateErrorContract$State = (ServerCertificateErrorContract$State) obj5;
                PaddingValues paddingValues2 = (PaddingValues) obj;
                Composer composer4 = (Composer) obj2;
                int intValue7 = ((Integer) obj3).intValue();
                paddingValues2.getClass();
                if ((intValue7 & 6) == 0) {
                    intValue7 |= ((GapComposer) composer4).changed(paddingValues2) ? 4 : 2;
                }
                GapComposer gapComposer6 = (GapComposer) composer4;
                if (gapComposer6.shouldExecute(intValue7 & 1, (intValue7 & 19) != 18)) {
                    then = companion.then(ClipKt.clip(Modifier.Companion.$$INSTANCE, VerticalScrollableClipShape.INSTANCE)).then(new ScrollableAreaElement(null, null, Orientation.Vertical, scrollState, scrollState.internalInteractionSource, true, true)).then(new ScrollingLayoutElement(scrollState));
                    Modifier padding = OffsetKt.padding(then, paddingValues2);
                    ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(OffsetKt.Top, Alignment.Companion.Start, gapComposer6, 0);
                    long j2 = gapComposer6.compositeKeyHashCode;
                    int i6 = (int) (j2 ^ (j2 >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer6.currentCompositionLocalScope();
                    Modifier materializeModifier2 = AbsoluteAlignment.materializeModifier(gapComposer6, padding);
                    ComposeUiNode.Companion.getClass();
                    LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$12 = ComposeUiNode.Companion.Constructor;
                    gapComposer6.startReusableNode();
                    if (gapComposer6.inserting) {
                        gapComposer6.createNode(layoutNode$Companion$Constructor$12);
                    } else {
                        gapComposer6.useNode();
                    }
                    Updater.m380setimpl(gapComposer6, columnMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
                    Updater.m380setimpl(gapComposer6, currentCompositionLocalScope2, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                    Updater.m380setimpl(gapComposer6, Integer.valueOf(i6), ComposeUiNode.Companion.SetCompositeKeyHash);
                    Updater.m379reconcileimpl(gapComposer6, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                    Updater.m380setimpl(gapComposer6, materializeModifier2, ComposeUiNode.Companion.SetModifier);
                    OperationKt.CertificateErrorOverview(serverCertificateErrorContract$State, gapComposer6, 8);
                    CrossfadeKt.AnimatedContent(Boolean.valueOf(serverCertificateErrorContract$State.isShowServerCertificate), null, null, null, "ServerCertificateViewVisibility", null, Expect_jvmKt.rememberComposableLambda(-77664354, new CoilImageKt$$ExternalSyntheticLambda11(4, serverCertificateErrorContract$State), gapComposer6), gapComposer6, 1597440, 46);
                    gapComposer6.end(true);
                } else {
                    gapComposer6.skipToGroupEnd();
                }
                return unit;
            case 10:
                MutableState mutableState2 = (MutableState) obj6;
                ScrollState scrollState2 = (ScrollState) obj5;
                PaddingValues paddingValues3 = (PaddingValues) obj;
                Composer composer5 = (Composer) obj2;
                int intValue8 = ((Integer) obj3).intValue();
                paddingValues3.getClass();
                if ((intValue8 & 6) == 0) {
                    intValue8 |= ((GapComposer) composer5).changed(paddingValues3) ? 4 : 2;
                }
                GapComposer gapComposer7 = (GapComposer) composer5;
                if (gapComposer7.shouldExecute(intValue8 & 1, (intValue8 & 19) != 18)) {
                    OperationKt.ServerCertificateErrorContent(paddingValues3, (ServerCertificateErrorContract$State) mutableState2.getValue(), scrollState2, gapComposer7, (intValue8 & 14) | 64);
                } else {
                    gapComposer7.skipToGroupEnd();
                }
                return unit;
            case 11:
                Function1 function13 = (Function1) obj6;
                ServerCertificateErrorContract$State serverCertificateErrorContract$State2 = (ServerCertificateErrorContract$State) obj5;
                PaddingValues paddingValues4 = (PaddingValues) obj;
                Composer composer6 = (Composer) obj2;
                int intValue9 = ((Integer) obj3).intValue();
                paddingValues4.getClass();
                if ((intValue9 & 6) == 0) {
                    intValue9 |= ((GapComposer) composer6).changed(paddingValues4) ? 4 : 2;
                }
                GapComposer gapComposer8 = (GapComposer) composer6;
                if (gapComposer8.shouldExecute(intValue9 & 1, (intValue9 & 19) != 18)) {
                    Modifier padding2 = OffsetKt.padding(CrossfadeKt.animateContentSize$default(companion, null, 3), paddingValues4);
                    ColumnMeasurePolicy columnMeasurePolicy2 = ColumnKt.columnMeasurePolicy(OffsetKt.Top, Alignment.Companion.Start, gapComposer8, 0);
                    long j3 = gapComposer8.compositeKeyHashCode;
                    int i7 = (int) (j3 ^ (j3 >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope3 = gapComposer8.currentCompositionLocalScope();
                    Modifier materializeModifier3 = AbsoluteAlignment.materializeModifier(gapComposer8, padding2);
                    ComposeUiNode.Companion.getClass();
                    LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$13 = ComposeUiNode.Companion.Constructor;
                    gapComposer8.startReusableNode();
                    if (gapComposer8.inserting) {
                        gapComposer8.createNode(layoutNode$Companion$Constructor$13);
                    } else {
                        gapComposer8.useNode();
                    }
                    Updater.m380setimpl(gapComposer8, columnMeasurePolicy2, ComposeUiNode.Companion.SetMeasurePolicy);
                    Updater.m380setimpl(gapComposer8, currentCompositionLocalScope3, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                    Updater.m380setimpl(gapComposer8, Integer.valueOf(i7), ComposeUiNode.Companion.SetCompositeKeyHash);
                    Updater.m379reconcileimpl(gapComposer8, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                    Updater.m380setimpl(gapComposer8, materializeModifier3, ComposeUiNode.Companion.SetModifier);
                    String stringResource = Operation$State.stringResource(gapComposer8, R.string.account_server_certificate_button_back);
                    boolean changed3 = gapComposer8.changed(function13);
                    Object rememberedValue10 = gapComposer8.rememberedValue();
                    if (changed3 || rememberedValue10 == obj4) {
                        rememberedValue10 = new ExposedDropdownMenuKt$$ExternalSyntheticLambda3(9, function13);
                        gapComposer8.updateRememberedValue(rememberedValue10);
                    }
                    IntOffsetKt.ButtonFilled(stringResource, (Function0) rememberedValue10, SizeKt.FillWholeMaxWidth, false, null, null, null, gapComposer8, 384, 248);
                    CrossfadeKt.Crossfade(Boolean.valueOf(serverCertificateErrorContract$State2.isShowServerCertificate), null, null, "ContinueButton", Expect_jvmKt.rememberComposableLambda(565385281, new DragGestureDetectorKt$$ExternalSyntheticLambda0(true ? 1 : 0, function13), gapComposer8), gapComposer8, 27648, 6);
                    gapComposer8.end(true);
                } else {
                    gapComposer8.skipToGroupEnd();
                }
                return unit;
            case BasicTextKt.ShiftMeta /* 12 */:
                OutgoingServerSettingsContract$State outgoingServerSettingsContract$State = (OutgoingServerSettingsContract$State) obj5;
                Function1 function14 = (Function1) obj6;
                Composer composer7 = (Composer) obj2;
                int intValue10 = ((Integer) obj3).intValue();
                ((LazyItemScopeImpl) obj).getClass();
                GapComposer gapComposer9 = (GapComposer) composer7;
                if (gapComposer9.shouldExecute(intValue10 & 1, (intValue10 & 17) != 16)) {
                    String str4 = outgoingServerSettingsContract$State.clientCertificateAlias;
                    boolean changed4 = gapComposer9.changed(function14);
                    Object rememberedValue11 = gapComposer9.rememberedValue();
                    if (changed4 || rememberedValue11 == obj4) {
                        rememberedValue11 = new NavHostKt$$ExternalSyntheticLambda14(25, function14);
                        gapComposer9.updateRememberedValue(rememberedValue11);
                    }
                    Validate.ClientCertificateInput(str4, (Function1) rememberedValue11, null, Operation$State.stringResource(gapComposer9, R.string.account_server_settings_client_certificate_label), OAuthBearer.defaultItemPadding(gapComposer9), gapComposer9, 0);
                } else {
                    gapComposer9.skipToGroupEnd();
                }
                return unit;
            case 13:
                Function1 function15 = (Function1) obj6;
                AccountOAuthContract$ViewModel accountOAuthContract$ViewModel = (AccountOAuthContract$ViewModel) obj5;
                LazyItemScopeImpl lazyItemScopeImpl = (LazyItemScopeImpl) obj;
                Composer composer8 = (Composer) obj2;
                int intValue11 = ((Integer) obj3).intValue();
                lazyItemScopeImpl.getClass();
                if ((intValue11 & 6) == 0) {
                    intValue11 |= ((GapComposer) composer8).changed(lazyItemScopeImpl) ? 4 : 2;
                }
                GapComposer gapComposer10 = (GapComposer) composer8;
                if (gapComposer10.shouldExecute(intValue11 & 1, (intValue11 & 19) != 18)) {
                    ActionBar.ListItem(lazyItemScopeImpl, null, null, Expect_jvmKt.rememberComposableLambda(134912529, new GapComposer$$ExternalSyntheticLambda3(26, function15, accountOAuthContract$ViewModel), gapComposer10), gapComposer10, (intValue11 & 14) | 3072, 3);
                } else {
                    gapComposer10.skipToGroupEnd();
                }
                return unit;
            case 14:
                Resources resources = (Resources) obj5;
                Function1 function16 = (Function1) obj6;
                AccountAutoDiscoveryContract$Error accountAutoDiscoveryContract$Error = (AccountAutoDiscoveryContract$Error) obj;
                Composer composer9 = (Composer) obj2;
                int intValue12 = ((Integer) obj3).intValue();
                accountAutoDiscoveryContract$Error.getClass();
                if ((intValue12 & 6) == 0) {
                    intValue12 |= (intValue12 & 8) == 0 ? ((GapComposer) composer9).changed(accountAutoDiscoveryContract$Error) : ((GapComposer) composer9).changedInstance(accountAutoDiscoveryContract$Error) ? 4 : 2;
                }
                GapComposer gapComposer11 = (GapComposer) composer9;
                if (gapComposer11.shouldExecute(intValue12 & 1, (intValue12 & 19) != 18)) {
                    String stringResource2 = Operation$State.stringResource(gapComposer11, R.string.account_setup_auto_discovery_loading_error);
                    resources.getClass();
                    if (accountAutoDiscoveryContract$Error.equals(AccountAutoDiscoveryContract$Error.NetworkError.INSTANCE)) {
                        string = resources.getString(R.string.account_setup_error_network);
                        string.getClass();
                    } else {
                        if (!accountAutoDiscoveryContract$Error.equals(AccountAutoDiscoveryContract$Error.UnknownError.INSTANCE)) {
                            UriKt$$ExternalSyntheticBUOutline0.m857m();
                            return null;
                        }
                        string = resources.getString(R.string.account_setup_error_unknown);
                        string.getClass();
                    }
                    String str5 = string;
                    FillElement fillElement2 = SizeKt.FillWholeMaxSize;
                    boolean changed5 = gapComposer11.changed(function16);
                    Object rememberedValue12 = gapComposer11.rememberedValue();
                    if (changed5 || rememberedValue12 == obj4) {
                        rememberedValue12 = new ExposedDropdownMenuKt$$ExternalSyntheticLambda3(28, function16);
                        gapComposer11.updateRememberedValue(rememberedValue12);
                    }
                    ActionBar.ErrorView(stringResource2, fillElement2, str5, (Function0) rememberedValue12, null, gapComposer11, 48, 16);
                } else {
                    gapComposer11.skipToGroupEnd();
                }
                return unit;
            case OffsetKt.Horizontal /* 15 */:
                AutoDiscoveryResult.Settings settings = (AutoDiscoveryResult.Settings) obj6;
                Function0 function02 = (Function0) obj5;
                Composer composer10 = (Composer) obj2;
                int intValue13 = ((Integer) obj3).intValue();
                ((AnimatedVisibilityScope) obj).getClass();
                GapComposer gapComposer12 = (GapComposer) composer10;
                if (gapComposer12.shouldExecute(intValue13 & 1, (intValue13 & 17) != 16)) {
                    SchemaInfoUtilKt.AutoDiscoveryResultBodyView(settings, function02, null, gapComposer12, 0);
                } else {
                    gapComposer12.skipToGroupEnd();
                }
                return unit;
            case 16:
                SyncOptionsContract$State syncOptionsContract$State = (SyncOptionsContract$State) obj5;
                Function1 function17 = (Function1) obj6;
                Composer composer11 = (Composer) obj2;
                int intValue14 = ((Integer) obj3).intValue();
                ((LazyItemScopeImpl) obj).getClass();
                GapComposer gapComposer13 = (GapComposer) composer11;
                if (gapComposer13.shouldExecute(intValue14 & 1, (intValue14 & 17) != 16)) {
                    String stringResource3 = Operation$State.stringResource(gapComposer13, R.string.account_setup_options_show_notifications_label);
                    boolean z = syncOptionsContract$State.showNotification;
                    boolean changed6 = gapComposer13.changed(function17);
                    Object rememberedValue13 = gapComposer13.rememberedValue();
                    if (changed6 || rememberedValue13 == obj4) {
                        rememberedValue13 = new SequencesKt___SequencesKt$$ExternalSyntheticLambda0(14, function17);
                        gapComposer13.updateRememberedValue(rememberedValue13);
                    }
                    TextInputKt.SwitchInput(stringResource3, z, (Function1) rememberedValue13, null, OAuthBearer.defaultItemPadding(gapComposer13), gapComposer13, 0);
                } else {
                    gapComposer13.skipToGroupEnd();
                }
                return unit;
            case 17:
                PermissionsContract$State permissionsContract$State = (PermissionsContract$State) obj5;
                Function1 function18 = (Function1) obj6;
                PaddingValues paddingValues5 = (PaddingValues) obj;
                Composer composer12 = (Composer) obj2;
                int intValue15 = ((Integer) obj3).intValue();
                paddingValues5.getClass();
                if ((intValue15 & 6) == 0) {
                    intValue15 |= ((GapComposer) composer12).changed(paddingValues5) ? 4 : 2;
                }
                GapComposer gapComposer14 = (GapComposer) composer12;
                if (gapComposer14.shouldExecute(intValue15 & 1, (intValue15 & 19) != 18)) {
                    StaticProvidableCompositionLocal staticProvidableCompositionLocal2 = ThemeSpacingsKt.LocalThemeSpacings;
                    ((ThemeSpacings) gapComposer14.consume(staticProvidableCompositionLocal2)).getClass();
                    ((ThemeSpacings) gapComposer14.consume(staticProvidableCompositionLocal2)).getClass();
                    ((ThemeSpacings) gapComposer14.consume(staticProvidableCompositionLocal2)).getClass();
                    ((ThemeSpacings) gapComposer14.consume(staticProvidableCompositionLocal2)).getClass();
                    Modifier padding3 = OffsetKt.padding(OffsetKt.m221paddingqDBjuR0(companion, 32.0f, 8.0f, 32.0f, 16.0f).then(SizeKt.FillWholeMaxWidth), paddingValues5);
                    RowMeasurePolicy rowMeasurePolicy2 = RowKt.rowMeasurePolicy(OffsetKt.f4End, Alignment.Companion.Top, gapComposer14, 6);
                    long j4 = gapComposer14.compositeKeyHashCode;
                    int i8 = (int) (j4 ^ (j4 >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope4 = gapComposer14.currentCompositionLocalScope();
                    Modifier materializeModifier4 = AbsoluteAlignment.materializeModifier(gapComposer14, padding3);
                    ComposeUiNode.Companion.getClass();
                    LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$14 = ComposeUiNode.Companion.Constructor;
                    gapComposer14.startReusableNode();
                    if (gapComposer14.inserting) {
                        gapComposer14.createNode(layoutNode$Companion$Constructor$14);
                    } else {
                        gapComposer14.useNode();
                    }
                    Updater.m380setimpl(gapComposer14, rowMeasurePolicy2, ComposeUiNode.Companion.SetMeasurePolicy);
                    Updater.m380setimpl(gapComposer14, currentCompositionLocalScope4, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                    Updater.m380setimpl(gapComposer14, Integer.valueOf(i8), ComposeUiNode.Companion.SetCompositeKeyHash);
                    Updater.m379reconcileimpl(gapComposer14, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                    Updater.m380setimpl(gapComposer14, materializeModifier4, ComposeUiNode.Companion.SetModifier);
                    CrossfadeKt.Crossfade(Boolean.valueOf(permissionsContract$State.isNextButtonVisible), null, null, "NextButton", Expect_jvmKt.rememberComposableLambda(1205414616, new DragGestureDetectorKt$$ExternalSyntheticLambda0(4, function18), gapComposer14), gapComposer14, 27648, 6);
                    gapComposer14.end(true);
                } else {
                    gapComposer14.skipToGroupEnd();
                }
                return unit;
            case 18:
                DraggableNode draggableNode = (DraggableNode) obj6;
                PreviewView.AnonymousClass1 anonymousClass1 = (PreviewView.AnonymousClass1) obj5;
                PointerInputChange pointerInputChange = (PointerInputChange) obj;
                PointerInputChange pointerInputChange2 = (PointerInputChange) obj2;
                Offset offset = (Offset) obj3;
                pointerInputChange.getClass();
                pointerInputChange2.getClass();
                draggableNode.nodeOffset = 0L;
                draggableNode.canDrag.getClass();
                if (Boolean.TRUE.booleanValue()) {
                    if (!draggableNode.isListeningForEvents) {
                        draggableNode.isListeningForEvents = true;
                        if (draggableNode.channel == null) {
                            draggableNode.channel = Cookie.Companion.Channel$default(Integer.MAX_VALUE, null, null, 6);
                        }
                        JobKt.launch$default(draggableNode.getCoroutineScope(), null, null, new DraggableNode$startListeningForEvents$1(draggableNode, null), 3);
                    }
                    OAuthBearer.m940addPointerInputChange0AR0LA0(anonymousClass1, pointerInputChange, 0L);
                    long m440minusMKHz9U = Offset.m440minusMKHz9U(pointerInputChange2.position, offset.packedValue);
                    BufferedChannel bufferedChannel = draggableNode.channel;
                    if (bufferedChannel != null) {
                        bufferedChannel.mo1016trySendJP2dKIU(new DragEvent.DragStarted(m440minusMKHz9U));
                    }
                }
                return unit;
            case 19:
                SettingValue.Color color = (SettingValue.Color) obj6;
                ParcelableSnapshotMutableIntState parcelableSnapshotMutableIntState = (ParcelableSnapshotMutableIntState) obj5;
                Composer composer13 = (Composer) obj2;
                int intValue16 = ((Integer) obj3).intValue();
                ((ColumnScopeInstance) obj).getClass();
                GapComposer gapComposer15 = (GapComposer) composer13;
                if (gapComposer15.shouldExecute(intValue16 & 1, (intValue16 & 17) != 16)) {
                    String str6 = (String) color.description.invoke();
                    if (str6 == null) {
                        gapComposer15.startReplaceGroup(-226467720);
                        gapComposer15.end(false);
                    } else {
                        gapComposer15.startReplaceGroup(-226467719);
                        Data.Companion.m825TextBodyMediumZHfKjFs(str6, (Modifier) null, 0L, 0, 0, (Function1) null, gapComposer15, 0, 126);
                        ((ThemeSpacings) gapComposer15.consume(ThemeSpacingsKt.LocalThemeSpacings)).getClass();
                        OffsetKt.Spacer(gapComposer15, SizeKt.m226height3ABfNKs(companion, 16.0f));
                        gapComposer15.end(false);
                    }
                    ((ThemeSpacings) gapComposer15.consume(ThemeSpacingsKt.LocalThemeSpacings)).getClass();
                    boolean changed7 = gapComposer15.changed(8.0f);
                    Object rememberedValue14 = gapComposer15.rememberedValue();
                    Object obj18 = rememberedValue14;
                    if (changed7 || rememberedValue14 == obj4) {
                        Object colorDialogViewKt$$ExternalSyntheticLambda4 = new ColorDialogViewKt$$ExternalSyntheticLambda4();
                        gapComposer15.updateRememberedValue(colorDialogViewKt$$ExternalSyntheticLambda4);
                        obj18 = colorDialogViewKt$$ExternalSyntheticLambda4;
                    }
                    Modifier height = OffsetKt.height(companion);
                    MutableState rememberUpdatedState2 = Updater.rememberUpdatedState((ColorDialogViewKt$$ExternalSyntheticLambda4) obj18, gapComposer15);
                    boolean changed8 = gapComposer15.changed(rememberUpdatedState2);
                    Object rememberedValue15 = gapComposer15.rememberedValue();
                    Object obj19 = rememberedValue15;
                    if (changed8 || rememberedValue15 == obj4) {
                        Object flexBoxMeasurePolicy = new FlexBoxMeasurePolicy(rememberUpdatedState2);
                        gapComposer15.updateRememberedValue(flexBoxMeasurePolicy);
                        obj19 = flexBoxMeasurePolicy;
                    }
                    FlexBoxMeasurePolicy flexBoxMeasurePolicy2 = (FlexBoxMeasurePolicy) obj19;
                    long j5 = gapComposer15.compositeKeyHashCode;
                    int i9 = (int) (j5 ^ (j5 >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope5 = gapComposer15.currentCompositionLocalScope();
                    Modifier materializeModifier5 = AbsoluteAlignment.materializeModifier(gapComposer15, height);
                    ComposeUiNode.Companion.getClass();
                    Function0 function03 = ComposeUiNode.Companion.Constructor;
                    gapComposer15.startReusableNode();
                    if (gapComposer15.inserting) {
                        gapComposer15.createNode(function03);
                    } else {
                        gapComposer15.useNode();
                    }
                    Updater.m380setimpl(gapComposer15, flexBoxMeasurePolicy2, ComposeUiNode.Companion.SetMeasurePolicy);
                    Updater.m380setimpl(gapComposer15, currentCompositionLocalScope5, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                    Updater.m380setimpl(gapComposer15, Integer.valueOf(i9), ComposeUiNode.Companion.SetCompositeKeyHash);
                    Updater.m379reconcileimpl(gapComposer15, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                    Updater.m380setimpl(gapComposer15, materializeModifier5, ComposeUiNode.Companion.SetModifier);
                    gapComposer15.startReplaceGroup(-583188129);
                    Iterator<E> it2 = color.colors.iterator();
                    while (it2.hasNext()) {
                        int intValue17 = ((Number) it2.next()).intValue();
                        MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.Center, false);
                        long j6 = gapComposer15.compositeKeyHashCode;
                        int i10 = (int) (j6 ^ (j6 >>> 32));
                        PersistentCompositionLocalHashMap currentCompositionLocalScope6 = gapComposer15.currentCompositionLocalScope();
                        Modifier materializeModifier6 = AbsoluteAlignment.materializeModifier(gapComposer15, companion);
                        ComposeUiNode.Companion.getClass();
                        Function0 function04 = ComposeUiNode.Companion.Constructor;
                        gapComposer15.startReusableNode();
                        if (gapComposer15.inserting) {
                            gapComposer15.createNode(function04);
                        } else {
                            gapComposer15.useNode();
                        }
                        Updater.m380setimpl(gapComposer15, maybeCachedBoxMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
                        Updater.m380setimpl(gapComposer15, currentCompositionLocalScope6, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                        Updater.m380setimpl(gapComposer15, Integer.valueOf(i10), ComposeUiNode.Companion.SetCompositeKeyHash);
                        Updater.m379reconcileimpl(gapComposer15, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                        Updater.m380setimpl(gapComposer15, materializeModifier6, ComposeUiNode.Companion.SetModifier);
                        boolean z2 = intValue17 == parcelableSnapshotMutableIntState.getIntValue();
                        ((ThemeSizes) gapComposer15.consume(ThemeSizesKt.LocalThemeSizes)).getClass();
                        Modifier m234size3ABfNKs = SizeKt.m234size3ABfNKs(companion, 48.0f);
                        boolean changed9 = gapComposer15.changed(parcelableSnapshotMutableIntState);
                        Object rememberedValue16 = gapComposer15.rememberedValue();
                        if (changed9 || rememberedValue16 == obj4) {
                            rememberedValue16 = new ForwardingFileSystem$$ExternalSyntheticLambda0(i2, parcelableSnapshotMutableIntState);
                            gapComposer15.updateRememberedValue(rememberedValue16);
                        }
                        CharsKt__CharKt.m989ColorViewFJfuzF0(intValue17, (Function1) rememberedValue16, m234size3ABfNKs, z2, 0.0f, gapComposer15, 0, 16);
                        gapComposer15.end(true);
                    }
                    gapComposer15.end(false);
                    gapComposer15.end(true);
                } else {
                    gapComposer15.skipToGroupEnd();
                }
                return unit;
            case 20:
                return invoke$net$thunderbird$core$ui$setting$dialog$ui$components$list$value$SegmentedButtonItemKt$$ExternalSyntheticLambda0(obj, obj2, obj3);
            case 21:
                return invoke$net$thunderbird$feature$mail$message$list$internal$ui$component$organism$MessageListSwipeableItemKt$$ExternalSyntheticLambda0(obj, obj2, obj3);
            case 22:
                ComposableLambdaImpl composableLambdaImpl = (ComposableLambdaImpl) obj6;
                MessageListScreenAccessibilityState messageListScreenAccessibilityState = (MessageListScreenAccessibilityState) obj5;
                Composer composer14 = (Composer) obj2;
                int intValue18 = ((Integer) obj3).intValue();
                ((RowScope) obj).getClass();
                GapComposer gapComposer16 = (GapComposer) composer14;
                if (gapComposer16.shouldExecute(intValue18 & 1, (intValue18 & 17) != 16)) {
                    composableLambdaImpl.invoke((Object) messageListScreenAccessibilityState, (Object) gapComposer16, (Object) 0);
                } else {
                    gapComposer16.skipToGroupEnd();
                }
                return unit;
            case 23:
                return invoke$net$thunderbird$feature$mail$message$list$internal$ui$component$template$MessageListKt$$ExternalSyntheticLambda3(obj, obj2, obj3);
            case 24:
                return invoke$net$thunderbird$feature$mail$message$list$internal$ui$dialog$ChooseArchiveFolderDialogContentKt$$ExternalSyntheticLambda0(obj, obj2, obj3);
            default:
                AttachmentUiItem attachmentUiItem = (AttachmentUiItem) obj6;
                Function0 function05 = (Function0) obj5;
                Composer composer15 = (Composer) obj2;
                int intValue19 = ((Integer) obj3).intValue();
                ((ColumnScopeInstance) obj).getClass();
                GapComposer gapComposer17 = (GapComposer) composer15;
                if (gapComposer17.shouldExecute(intValue19 & 1, (intValue19 & 17) != 16)) {
                    ColumnMeasurePolicy columnMeasurePolicy3 = ColumnKt.columnMeasurePolicy(OffsetKt.Top, Alignment.Companion.Start, gapComposer17, 0);
                    long j7 = gapComposer17.compositeKeyHashCode;
                    int i11 = (int) (j7 ^ (j7 >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope7 = gapComposer17.currentCompositionLocalScope();
                    Modifier materializeModifier7 = AbsoluteAlignment.materializeModifier(gapComposer17, companion);
                    ComposeUiNode.Companion.getClass();
                    LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$15 = ComposeUiNode.Companion.Constructor;
                    gapComposer17.startReusableNode();
                    if (gapComposer17.inserting) {
                        gapComposer17.createNode(layoutNode$Companion$Constructor$15);
                    } else {
                        gapComposer17.useNode();
                    }
                    Updater.m380setimpl(gapComposer17, columnMeasurePolicy3, ComposeUiNode.Companion.SetMeasurePolicy);
                    Updater.m380setimpl(gapComposer17, currentCompositionLocalScope7, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                    Updater.m380setimpl(gapComposer17, Integer.valueOf(i11), ComposeUiNode.Companion.SetCompositeKeyHash);
                    Updater.m379reconcileimpl(gapComposer17, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                    Updater.m380setimpl(gapComposer17, materializeModifier7, ComposeUiNode.Companion.SetModifier);
                    AttachmentCardKt.AttachmentThumbnail(attachmentUiItem, null, gapComposer17, 0);
                    MathKt.m983Surface_UMDTes(null, null, ((ThemeColorScheme) gapComposer17.consume(ThemeColorSchemeKt.LocalThemeColorScheme)).surfaceContainerHigh, 0L, 0.0f, Expect_jvmKt.rememberComposableLambda(1535328885, new AboutFragmentKt$$ExternalSyntheticLambda7(15, attachmentUiItem, function05), gapComposer17), gapComposer17, 196608, 27);
                    gapComposer17.end(true);
                } else {
                    gapComposer17.skipToGroupEnd();
                }
                return unit;
        }
    }

    public /* synthetic */ BufferedChannel$$ExternalSyntheticLambda1(int i, Object obj, Function1 function1) {
        this.$r8$classId = i;
        this.f$1 = obj;
        this.f$0 = function1;
    }
}
