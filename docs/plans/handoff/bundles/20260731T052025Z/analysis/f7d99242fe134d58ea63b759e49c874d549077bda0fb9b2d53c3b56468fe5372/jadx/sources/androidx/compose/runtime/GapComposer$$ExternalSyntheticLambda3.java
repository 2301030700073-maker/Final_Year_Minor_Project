package androidx.compose.runtime;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Build;
import androidx.appcompat.app.ActionBar;
import androidx.camera.camera2.impl.TorchControl$$ExternalSyntheticLambda1;
import androidx.camera.core.streamsharing.StreamSharing$$ExternalSyntheticLambda0;
import androidx.compose.foundation.contextmenu.ContextMenuColors;
import androidx.compose.foundation.contextmenu.ContextMenuScope;
import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.foundation.layout.Arrangement$Horizontal;
import androidx.compose.foundation.layout.Arrangement$SpacedAligned;
import androidx.compose.foundation.layout.BoxWithConstraintsScopeImpl;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.FillElement;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.lazy.grid.GridCells$Adaptive;
import androidx.compose.foundation.lazy.layout.LazyLayoutItemContentFactory;
import androidx.compose.foundation.lazy.layout.LazyLayoutItemProvider;
import androidx.compose.foundation.lazy.layout.LazyLayoutKt;
import androidx.compose.foundation.lazy.layout.LazySaveableStateHolder;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.foundation.text.contextmenu.ProcessTextApi23Impl;
import androidx.compose.foundation.text.contextmenu.builder.TextContextMenuBuilderScope;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuData;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuSession;
import androidx.compose.foundation.text.contextmenu.internal.DefaultTextContextMenuDropdownProvider_androidKt;
import androidx.compose.foundation.text.contextmenu.internal.TextContextMenuHelperApi28;
import androidx.compose.foundation.text.contextmenu.provider.TextContextMenuDataProvider;
import androidx.compose.foundation.text.selection.PlatformSelectionBehaviors;
import androidx.compose.foundation.text.selection.PlatformSelectionBehaviorsImpl;
import androidx.compose.foundation.text.selection.PlatformSelectionBehaviors_androidKt;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager;
import androidx.compose.material3.DefaultBasicAlertDialogOverride;
import androidx.compose.material3.DefaultSingleRowTopAppBarOverride;
import androidx.compose.material3.ExposedDropdownMenuKt$$ExternalSyntheticLambda3;
import androidx.compose.material3.SingleRowTopAppBarOverrideScope;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.runtime.composer.gapbuffer.SlotWriter;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.runtime.saveable.SaveableStateHolder;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.SubcomposeMeasureScope;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.ParagraphKt;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.input.OffsetMapping;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.core.util.DebugUtils;
import androidx.core.view.MenuHostHelper;
import androidx.datastore.core.SimpleActor$$ExternalSyntheticLambda0;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.navigation.NavHostController;
import androidx.navigation.compose.NavHostKt$$ExternalSyntheticLambda14;
import androidx.room.RoomDatabase$closeBarrier$1;
import androidx.room.util.RelationUtil;
import androidx.room.util.SchemaInfoUtilKt;
import androidx.work.Data;
import androidx.work.Operation$State;
import androidx.work.OperationKt;
import app.k9mail.core.ui.compose.designsystem.organism.TopAppBarKt;
import app.k9mail.core.ui.compose.designsystem.organism.banner.inline.BannerInlineNotificationCardKt;
import app.k9mail.core.ui.compose.designsystem.organism.snackbar.Material3BackedSnackbarHostState;
import app.k9mail.core.ui.compose.designsystem.template.ScaffoldKt;
import app.k9mail.feature.account.common.domain.entity.InteractionMode;
import app.k9mail.feature.account.oauth.ui.AccountOAuthContract$ViewModel;
import app.k9mail.feature.account.server.certificate.domain.entity.FormattedServerCertificateError;
import app.k9mail.feature.account.server.certificate.ui.DefaultServerNameFormatter;
import app.k9mail.feature.account.server.certificate.ui.ServerCertificateErrorContract$State;
import app.k9mail.feature.account.server.settings.ui.incoming.IncomingServerSettingsViewModel;
import app.k9mail.feature.account.server.settings.ui.outgoing.OutgoingServerSettingsViewModel;
import com.fsck.k9.R;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.math.MathKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.channels.BufferedChannel$$ExternalSyntheticLambda1;
import net.openid.appauth.AuthorizationRequest;
import net.thunderbird.core.ui.compose.theme2.ThemeSpacings;
import net.thunderbird.core.ui.compose.theme2.ThemeSpacingsKt;
import net.thunderbird.core.ui.theme.api.FeatureThemeProvider;
import net.thunderbird.core.validation.input.BooleanInputField;
import org.slf4j.helpers.Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class GapComposer$$ExternalSyntheticLambda3 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;

    public /* synthetic */ GapComposer$$ExternalSyntheticLambda3(int i, int i2, Object obj, Object obj2) {
        this.$r8$classId = i2;
        this.f$0 = obj;
        this.f$1 = obj2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        InteractionMode interactionMode = InteractionMode.Edit;
        TextRange textRange = null;
        Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
        NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
        Unit unit = Unit.INSTANCE;
        Object obj3 = this.f$1;
        Object obj4 = this.f$0;
        switch (i) {
            case 0:
                MovableContent movableContent = (MovableContent) obj4;
                Composer composer = (Composer) obj;
                int intValue = ((Integer) obj2).intValue();
                GapComposer gapComposer = (GapComposer) composer;
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    movableContent.content.invoke(obj3, (Object) gapComposer, (Object) 0);
                    break;
                }
            case 1:
                ((Integer) obj2).getClass();
                ((ContextMenuScope) obj4).Content$foundation((ContextMenuColors) obj3, (Composer) obj, Updater.updateChangedFlags(1));
                break;
            case 2:
                SubcomposeMeasureScope subcomposeMeasureScope = (SubcomposeMeasureScope) obj;
                Constraints constraints = (Constraints) obj2;
                break;
            case 3:
                ComposableLambdaImpl composableLambdaImpl = (ComposableLambdaImpl) obj4;
                BoxWithConstraintsScopeImpl boxWithConstraintsScopeImpl = (BoxWithConstraintsScopeImpl) obj3;
                Composer composer2 = (Composer) obj;
                int intValue2 = ((Integer) obj2).intValue();
                GapComposer gapComposer2 = (GapComposer) composer2;
                if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 3) != 2)) {
                    gapComposer2.skipToGroupEnd();
                    break;
                } else {
                    composableLambdaImpl.invoke((Object) boxWithConstraintsScopeImpl, (Object) gapComposer2, (Object) 0);
                    break;
                }
            case 4:
                GridCells$Adaptive gridCells$Adaptive = (GridCells$Adaptive) obj4;
                Arrangement$Horizontal arrangement$Horizontal = (Arrangement$Horizontal) obj3;
                Density density = (Density) obj;
                Constraints constraints2 = (Constraints) obj2;
                if (Constraints.m734getMaxWidthimpl(constraints2.value) == Integer.MAX_VALUE) {
                    InlineClassHelperKt.throwIllegalArgumentException("LazyVerticalGrid's width should be bound by parent.");
                }
                int m734getMaxWidthimpl = Constraints.m734getMaxWidthimpl(constraints2.value);
                int mo171roundToPx0680j_4 = density.mo171roundToPx0680j_4(arrangement$Horizontal.mo200getSpacingD9Ej5fM());
                int max = Math.max((m734getMaxWidthimpl + mo171roundToPx0680j_4) / (density.mo171roundToPx0680j_4(gridCells$Adaptive.minSize) + mo171roundToPx0680j_4), 1);
                int i2 = m734getMaxWidthimpl - ((max - 1) * mo171roundToPx0680j_4);
                int i3 = i2 / max;
                int i4 = i2 % max;
                ArrayList arrayList = new ArrayList(max);
                int i5 = 0;
                while (i5 < max) {
                    arrayList.add(Integer.valueOf((i5 < i4 ? 1 : 0) + i3));
                    i5++;
                }
                int[] intArray = CollectionsKt.toIntArray(arrayList);
                int[] iArr = new int[intArray.length];
                arrangement$Horizontal.arrange(density, m734getMaxWidthimpl, intArray, LayoutDirection.Ltr, iArr);
                break;
            case 5:
                LazyLayoutItemContentFactory lazyLayoutItemContentFactory = (LazyLayoutItemContentFactory) obj4;
                LazyLayoutItemContentFactory.CachedItemContent cachedItemContent = (LazyLayoutItemContentFactory.CachedItemContent) obj3;
                Composer composer3 = (Composer) obj;
                int intValue3 = ((Integer) obj2).intValue();
                GapComposer gapComposer3 = (GapComposer) composer3;
                if (!gapComposer3.shouldExecute(intValue3 & 1, (intValue3 & 3) != 2)) {
                    gapComposer3.skipToGroupEnd();
                    break;
                } else {
                    LazyLayoutItemProvider lazyLayoutItemProvider = (LazyLayoutItemProvider) lazyLayoutItemContentFactory.itemProvider.invoke();
                    int i6 = cachedItemContent.index;
                    Object obj5 = cachedItemContent.key;
                    if ((i6 >= lazyLayoutItemProvider.getItemCount() || !lazyLayoutItemProvider.getKey(i6).equals(obj5)) && (i6 = lazyLayoutItemProvider.getIndex(obj5)) != -1) {
                        cachedItemContent.index = i6;
                    }
                    if (i6 != -1) {
                        gapComposer3.startReplaceGroup(-1664741271);
                        LazyLayoutKt.m255SkippableItemJVlU9Rs(lazyLayoutItemProvider, lazyLayoutItemContentFactory.saveableStateHolder, i6, cachedItemContent.key, gapComposer3, 0);
                        gapComposer3.end(false);
                    } else {
                        gapComposer3.startReplaceGroup(-1664505826);
                        gapComposer3.end(false);
                    }
                    boolean changedInstance = gapComposer3.changedInstance(cachedItemContent);
                    Object rememberedValue = gapComposer3.rememberedValue();
                    if (changedInstance || rememberedValue == neverEqualPolicy) {
                        rememberedValue = new TorchControl$$ExternalSyntheticLambda1(18, cachedItemContent);
                        gapComposer3.updateRememberedValue(rememberedValue);
                    }
                    Updater.DisposableEffect(obj5, (Function1) rememberedValue, gapComposer3);
                    break;
                }
                break;
            case 6:
                break;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                ComposableLambdaImpl composableLambdaImpl2 = (ComposableLambdaImpl) obj4;
                LazySaveableStateHolder lazySaveableStateHolder = (LazySaveableStateHolder) obj3;
                Composer composer4 = (Composer) obj;
                int intValue4 = ((Integer) obj2).intValue();
                GapComposer gapComposer4 = (GapComposer) composer4;
                if (!gapComposer4.shouldExecute(intValue4 & 1, (intValue4 & 3) != 2)) {
                    gapComposer4.skipToGroupEnd();
                    break;
                } else {
                    composableLambdaImpl2.invoke((Object) lazySaveableStateHolder, (Object) gapComposer4, (Object) 0);
                    break;
                }
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                TextContextMenuDataProvider textContextMenuDataProvider = (TextContextMenuDataProvider) obj4;
                TextContextMenuSession textContextMenuSession = (TextContextMenuSession) obj3;
                Composer composer5 = (Composer) obj;
                int intValue5 = ((Integer) obj2).intValue();
                GapComposer gapComposer5 = (GapComposer) composer5;
                if (!gapComposer5.shouldExecute(intValue5 & 1, (intValue5 & 3) != 2)) {
                    gapComposer5.skipToGroupEnd();
                    break;
                } else {
                    boolean changed = gapComposer5.changed(textContextMenuDataProvider);
                    Object rememberedValue2 = gapComposer5.rememberedValue();
                    if (changed || rememberedValue2 == neverEqualPolicy) {
                        rememberedValue2 = Updater.derivedStateOf(new RoomDatabase$closeBarrier$1(0, textContextMenuDataProvider, TextContextMenuDataProvider.class, "data", "data()Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuData;", 0, 2));
                        gapComposer5.updateRememberedValue(rememberedValue2);
                    }
                    DefaultTextContextMenuDropdownProvider_androidKt.DefaultTextContextMenuDropdown(textContextMenuSession, (TextContextMenuData) ((State) rememberedValue2).getValue(), gapComposer5, 0);
                    break;
                }
            case 9:
                ((Integer) obj2).getClass();
                DefaultTextContextMenuDropdownProvider_androidKt.DefaultTextContextMenuDropdown((TextContextMenuSession) obj4, (TextContextMenuData) obj3, (Composer) obj, Updater.updateChangedFlags(1));
                break;
            case 10:
                ((Integer) obj2).getClass();
                ((TextContextMenuHelperApi28) obj4).IconBox((Drawable) obj3, (Composer) obj, Updater.updateChangedFlags(49));
                break;
            case 11:
                ((Integer) obj2).getClass();
                SchemaInfoUtilKt.SimpleLayout((Modifier) obj4, (ComposableLambdaImpl) obj3, (Composer) obj, Updater.updateChangedFlags(49));
                break;
            case BasicTextKt.ShiftMeta /* 12 */:
                TextFieldSelectionManager textFieldSelectionManager = (TextFieldSelectionManager) obj4;
                CoroutineScope coroutineScope = (CoroutineScope) obj3;
                TextContextMenuBuilderScope textContextMenuBuilderScope = (TextContextMenuBuilderScope) obj;
                Context context = (Context) obj2;
                boolean editable = textFieldSelectionManager.getEditable();
                AnnotatedString transformedText$foundation = textFieldSelectionManager.getTransformedText$foundation();
                String str = transformedText$foundation != null ? transformedText$foundation.text : null;
                TextRange textRange2 = textFieldSelectionManager.latestSelection;
                if (textRange2 != null) {
                    long j = textRange2.packedValue;
                    OffsetMapping offsetMapping = textFieldSelectionManager.offsetMapping;
                    textRange = new TextRange(ParagraphKt.TextRange(offsetMapping.originalToTransformed((int) (j >> 32)), offsetMapping.originalToTransformed((int) (j & 4294967295L))));
                }
                PlatformSelectionBehaviors platformSelectionBehaviors = textFieldSelectionManager.platformSelectionBehaviors;
                SimpleActor$$ExternalSyntheticLambda0 simpleActor$$ExternalSyntheticLambda0 = new SimpleActor$$ExternalSyntheticLambda0(textFieldSelectionManager, coroutineScope, context, 12);
                StaticProvidableCompositionLocal staticProvidableCompositionLocal = PlatformSelectionBehaviors_androidKt.LocalTextClassifierCoroutineContext;
                if (Build.VERSION.SDK_INT >= 28 && str != null && textRange != null && platformSelectionBehaviors != null && (platformSelectionBehaviors instanceof PlatformSelectionBehaviorsImpl)) {
                    String str2 = str;
                    ((PlatformSelectionBehaviorsImpl) platformSelectionBehaviors).m305addSmartSelectionTextContextMenuItemsYmzfRxQ$foundation(textContextMenuBuilderScope, str2, textRange.packedValue, simpleActor$$ExternalSyntheticLambda0);
                    ProcessTextApi23Impl.m285addProcessedTextContextMenuItemsUAq72N0(textContextMenuBuilderScope, context, editable, str2, textRange.packedValue);
                    break;
                } else {
                    simpleActor$$ExternalSyntheticLambda0.invoke(textContextMenuBuilderScope);
                    if (str != null && textRange != null) {
                        ProcessTextApi23Impl.m285addProcessedTextContextMenuItemsUAq72N0(textContextMenuBuilderScope, context, editable, str, textRange.packedValue);
                        break;
                    }
                }
                break;
            case 13:
                ((Integer) obj2).getClass();
                ((DefaultBasicAlertDialogOverride) obj4).BasicAlertDialog((MenuHostHelper) obj3, (Composer) obj, Updater.updateChangedFlags(1));
                break;
            case 14:
                ((Integer) obj2).getClass();
                ((DefaultSingleRowTopAppBarOverride) obj4).SingleRowTopAppBar((SingleRowTopAppBarOverrideScope) obj3, (Composer) obj, Updater.updateChangedFlags(1));
                break;
            case OffsetKt.Horizontal /* 15 */:
                AuthorizationRequest.Builder builder = (AuthorizationRequest.Builder) obj4;
                SlotWriter slotWriter = (SlotWriter) obj3;
                int intValue6 = ((Integer) obj).intValue();
                if (!(obj2 instanceof ComposeNodeLifecycleCallback)) {
                    if (!(obj2 instanceof ReusableGapRememberObserverHolder)) {
                        if (!(obj2 instanceof GapRememberObserverHolder)) {
                            if (obj2 instanceof RecomposeScopeImpl) {
                                Updater.removeData(slotWriter, intValue6, obj2);
                                ((RecomposeScopeImpl) obj2).release();
                                break;
                            }
                        } else {
                            Updater.removeData(slotWriter, intValue6, obj2);
                            builder.forgetting((GapRememberObserverHolder) obj2);
                            break;
                        }
                    }
                } else {
                    ((MutableVector) builder.mState).add((ComposeNodeLifecycleCallback) obj2);
                    break;
                }
                break;
            case 16:
                ((Integer) obj2).getClass();
                DebugUtils.PopulateVisibleList((List) obj4, (Collection) obj3, (Composer) obj, Updater.updateChangedFlags(1));
                break;
            case 17:
                ((Integer) obj2).getClass();
                RelationUtil.SaveableStateProvider((SaveableStateHolder) obj4, (ComposableLambdaImpl) obj3, (Composer) obj, Updater.updateChangedFlags(1));
                break;
            case 18:
                String str3 = (String) obj4;
                Function0 function0 = (Function0) obj3;
                Composer composer6 = (Composer) obj;
                int intValue7 = ((Integer) obj2).intValue();
                GapComposer gapComposer6 = (GapComposer) composer6;
                if (!gapComposer6.shouldExecute(intValue7 & 1, (intValue7 & 3) != 2)) {
                    gapComposer6.skipToGroupEnd();
                    break;
                } else {
                    Util.m1089ButtonTextjM_yU8I(str3, function0, null, false, null, null, gapComposer6, 0, 60);
                    break;
                }
            case 19:
                String str4 = (String) obj4;
                String str5 = (String) obj3;
                Composer composer7 = (Composer) obj;
                int intValue8 = ((Integer) obj2).intValue();
                GapComposer gapComposer7 = (GapComposer) composer7;
                if (!gapComposer7.shouldExecute(intValue8 & 1, (intValue8 & 3) != 2)) {
                    gapComposer7.skipToGroupEnd();
                    break;
                } else {
                    ((ThemeSpacings) gapComposer7.consume(ThemeSpacingsKt.LocalThemeSpacings)).getClass();
                    Modifier m222paddingqDBjuR0$default = OffsetKt.m222paddingqDBjuR0$default(Modifier.Companion.$$INSTANCE, 0.0f, 0.0f, 16.0f, 0.0f, 11);
                    ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(OffsetKt.Top, Alignment.Companion.Start, gapComposer7, 0);
                    long j2 = gapComposer7.compositeKeyHashCode;
                    int i7 = (int) (j2 ^ (j2 >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer7.currentCompositionLocalScope();
                    Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer7, m222paddingqDBjuR0$default);
                    ComposeUiNode.Companion.getClass();
                    LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
                    gapComposer7.startReusableNode();
                    if (gapComposer7.inserting) {
                        gapComposer7.createNode(layoutNode$Companion$Constructor$1);
                    } else {
                        gapComposer7.useNode();
                    }
                    Updater.m380setimpl(gapComposer7, columnMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
                    Updater.m380setimpl(gapComposer7, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                    Updater.m380setimpl(gapComposer7, Integer.valueOf(i7), ComposeUiNode.Companion.SetCompositeKeyHash);
                    Updater.m379reconcileimpl(gapComposer7, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                    Updater.m380setimpl(gapComposer7, materializeModifier, ComposeUiNode.Companion.SetModifier);
                    DebugUtils.m787TextTitleMediumXl4FiYE(str4, null, 0L, null, 0, 0, gapComposer7, 0, 62);
                    Data.Companion.m825TextBodyMediumZHfKjFs(str5, (Modifier) null, 0L, 2, 1, (Function1) null, gapComposer7, 221184, 78);
                    gapComposer7.end(true);
                    break;
                }
            case 20:
                ComposableLambdaImpl composableLambdaImpl3 = (ComposableLambdaImpl) obj4;
                ComposableLambdaImpl composableLambdaImpl4 = (ComposableLambdaImpl) obj3;
                Composer composer8 = (Composer) obj;
                int intValue9 = ((Integer) obj2).intValue();
                GapComposer gapComposer8 = (GapComposer) composer8;
                if (!gapComposer8.shouldExecute(intValue9 & 1, (intValue9 & 3) != 2)) {
                    gapComposer8.skipToGroupEnd();
                    break;
                } else {
                    BannerInlineNotificationCardKt.f20lambda$549760761.invoke((Object) gapComposer8, (Object) 0);
                    ((ThemeSpacings) gapComposer8.consume(ThemeSpacingsKt.LocalThemeSpacings)).getClass();
                    ColumnMeasurePolicy columnMeasurePolicy2 = ColumnKt.columnMeasurePolicy(new Arrangement$SpacedAligned(2.0f, true, new StreamSharing$$ExternalSyntheticLambda0(7)), Alignment.Companion.Start, gapComposer8, 0);
                    long j3 = gapComposer8.compositeKeyHashCode;
                    int i8 = (int) (j3 ^ (j3 >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer8.currentCompositionLocalScope();
                    Modifier materializeModifier2 = AbsoluteAlignment.materializeModifier(gapComposer8, companion);
                    ComposeUiNode.Companion.getClass();
                    LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$12 = ComposeUiNode.Companion.Constructor;
                    gapComposer8.startReusableNode();
                    if (gapComposer8.inserting) {
                        gapComposer8.createNode(layoutNode$Companion$Constructor$12);
                    } else {
                        gapComposer8.useNode();
                    }
                    Updater.m380setimpl(gapComposer8, columnMeasurePolicy2, ComposeUiNode.Companion.SetMeasurePolicy);
                    Updater.m380setimpl(gapComposer8, currentCompositionLocalScope2, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                    Updater.m380setimpl(gapComposer8, Integer.valueOf(i8), ComposeUiNode.Companion.SetCompositeKeyHash);
                    Updater.m379reconcileimpl(gapComposer8, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                    Updater.m380setimpl(gapComposer8, materializeModifier2, ComposeUiNode.Companion.SetModifier);
                    composableLambdaImpl3.invoke((Object) gapComposer8, (Object) 0);
                    composableLambdaImpl4.invoke((Object) gapComposer8, (Object) 0);
                    gapComposer8.end(true);
                    break;
                }
            case 21:
                ((Integer) obj2).getClass();
                OperationKt.SnackbarHost((Material3BackedSnackbarHostState) obj4, (Modifier) obj3, (Composer) obj, Updater.updateChangedFlags(49));
                break;
            case 22:
                ((Integer) obj2).getClass();
                OperationKt.CertificateErrorDescription((FormattedServerCertificateError) obj4, (DefaultServerNameFormatter) obj3, (Composer) obj, Updater.updateChangedFlags(9));
                break;
            case 23:
                Function1 function1 = (Function1) obj4;
                ServerCertificateErrorContract$State serverCertificateErrorContract$State = (ServerCertificateErrorContract$State) obj3;
                Composer composer9 = (Composer) obj;
                int intValue10 = ((Integer) obj2).intValue();
                GapComposer gapComposer9 = (GapComposer) composer9;
                if (!gapComposer9.shouldExecute(intValue10 & 1, (intValue10 & 3) != 2)) {
                    gapComposer9.skipToGroupEnd();
                    break;
                } else {
                    StaticProvidableCompositionLocal staticProvidableCompositionLocal2 = ThemeSpacingsKt.LocalThemeSpacings;
                    ((ThemeSpacings) gapComposer9.consume(staticProvidableCompositionLocal2)).getClass();
                    ((ThemeSpacings) gapComposer9.consume(staticProvidableCompositionLocal2)).getClass();
                    ((ThemeSpacings) gapComposer9.consume(staticProvidableCompositionLocal2)).getClass();
                    ((ThemeSpacings) gapComposer9.consume(staticProvidableCompositionLocal2)).getClass();
                    ScaffoldKt.ResponsiveWidthContainer(OffsetKt.m221paddingqDBjuR0(companion, 16.0f, 4.0f, 16.0f, 4.0f), Expect_jvmKt.rememberComposableLambda(1375982604, new BufferedChannel$$ExternalSyntheticLambda1(11, function1, serverCertificateErrorContract$State), gapComposer9), gapComposer9, 48, 0);
                    break;
                }
            case 24:
                IncomingServerSettingsViewModel incomingServerSettingsViewModel = (IncomingServerSettingsViewModel) obj4;
                Function1 function12 = (Function1) obj3;
                Composer composer10 = (Composer) obj;
                int intValue11 = ((Integer) obj2).intValue();
                GapComposer gapComposer10 = (GapComposer) composer10;
                if (!gapComposer10.shouldExecute(intValue11 & 1, (intValue11 & 3) != 2)) {
                    gapComposer10.skipToGroupEnd();
                    break;
                } else if (incomingServerSettingsViewModel.mode != interactionMode) {
                    gapComposer10.startReplaceGroup(1991376562);
                    Util.AccountTopAppBar(Operation$State.stringResource(gapComposer10, R.string.account_server_settings_incoming_top_bar_title), null, gapComposer10, 0);
                    gapComposer10.end(false);
                    break;
                } else {
                    gapComposer10.startReplaceGroup(1991125958);
                    String stringResource = Operation$State.stringResource(gapComposer10, R.string.account_server_settings_incoming_top_bar_title);
                    boolean changed2 = gapComposer10.changed(function12);
                    Object rememberedValue3 = gapComposer10.rememberedValue();
                    if (changed2 || rememberedValue3 == neverEqualPolicy) {
                        rememberedValue3 = new ExposedDropdownMenuKt$$ExternalSyntheticLambda3(14, function12);
                        gapComposer10.updateRememberedValue(rememberedValue3);
                    }
                    TopAppBarKt.TopAppBarWithBackButton(stringResource, (Function0) rememberedValue3, null, null, gapComposer10, 0);
                    gapComposer10.end(false);
                    break;
                }
            case 25:
                OutgoingServerSettingsViewModel outgoingServerSettingsViewModel = (OutgoingServerSettingsViewModel) obj4;
                Function1 function13 = (Function1) obj3;
                Composer composer11 = (Composer) obj;
                int intValue12 = ((Integer) obj2).intValue();
                GapComposer gapComposer11 = (GapComposer) composer11;
                if (!gapComposer11.shouldExecute(intValue12 & 1, (intValue12 & 3) != 2)) {
                    gapComposer11.skipToGroupEnd();
                    break;
                } else if (outgoingServerSettingsViewModel.mode != interactionMode) {
                    gapComposer11.startReplaceGroup(927257113);
                    Util.AccountTopAppBar(Operation$State.stringResource(gapComposer11, R.string.account_server_settings_outgoing_top_bar_title), null, gapComposer11, 0);
                    gapComposer11.end(false);
                    break;
                } else {
                    gapComposer11.startReplaceGroup(927006509);
                    String stringResource2 = Operation$State.stringResource(gapComposer11, R.string.account_server_settings_outgoing_top_bar_title);
                    boolean changed3 = gapComposer11.changed(function13);
                    Object rememberedValue4 = gapComposer11.rememberedValue();
                    if (changed3 || rememberedValue4 == neverEqualPolicy) {
                        rememberedValue4 = new ExposedDropdownMenuKt$$ExternalSyntheticLambda3(16, function13);
                        gapComposer11.updateRememberedValue(rememberedValue4);
                    }
                    TopAppBarKt.TopAppBarWithBackButton(stringResource2, (Function0) rememberedValue4, null, null, gapComposer11, 0);
                    gapComposer11.end(false);
                    break;
                }
            case 26:
                Function1 function14 = (Function1) obj4;
                AccountOAuthContract$ViewModel accountOAuthContract$ViewModel = (AccountOAuthContract$ViewModel) obj3;
                Composer composer12 = (Composer) obj;
                int intValue13 = ((Integer) obj2).intValue();
                GapComposer gapComposer12 = (GapComposer) composer12;
                if (!gapComposer12.shouldExecute(intValue13 & 1, (intValue13 & 3) != 2)) {
                    gapComposer12.skipToGroupEnd();
                    break;
                } else {
                    FillElement fillElement = SizeKt.FillWholeMaxWidth;
                    ColumnMeasurePolicy columnMeasurePolicy3 = ColumnKt.columnMeasurePolicy(OffsetKt.Top, Alignment.Companion.CenterHorizontally, gapComposer12, 48);
                    long j4 = gapComposer12.compositeKeyHashCode;
                    int i9 = (int) (j4 ^ (j4 >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope3 = gapComposer12.currentCompositionLocalScope();
                    Modifier materializeModifier3 = AbsoluteAlignment.materializeModifier(gapComposer12, fillElement);
                    ComposeUiNode.Companion.getClass();
                    LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$13 = ComposeUiNode.Companion.Constructor;
                    gapComposer12.startReusableNode();
                    if (gapComposer12.inserting) {
                        gapComposer12.createNode(layoutNode$Companion$Constructor$13);
                    } else {
                        gapComposer12.useNode();
                    }
                    Updater.m380setimpl(gapComposer12, columnMeasurePolicy3, ComposeUiNode.Companion.SetMeasurePolicy);
                    Updater.m380setimpl(gapComposer12, currentCompositionLocalScope3, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                    Updater.m380setimpl(gapComposer12, Integer.valueOf(i9), ComposeUiNode.Companion.SetCompositeKeyHash);
                    Updater.m379reconcileimpl(gapComposer12, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                    Updater.m380setimpl(gapComposer12, materializeModifier3, ComposeUiNode.Companion.SetModifier);
                    DebugUtils.m787TextTitleMediumXl4FiYE(Operation$State.stringResource(gapComposer12, R.string.account_server_validation_sign_in), null, 0L, null, 0, 0, gapComposer12, 0, 62);
                    ((ThemeSpacings) gapComposer12.consume(ThemeSpacingsKt.LocalThemeSpacings)).getClass();
                    OffsetKt.Spacer(gapComposer12, OffsetKt.m218padding3ABfNKs(companion, 8.0f));
                    boolean changed4 = gapComposer12.changed(function14);
                    Object rememberedValue5 = gapComposer12.rememberedValue();
                    if (changed4 || rememberedValue5 == neverEqualPolicy) {
                        rememberedValue5 = new NavHostKt$$ExternalSyntheticLambda14(29, function14);
                        gapComposer12.updateRememberedValue(rememberedValue5);
                    }
                    Operation$State.AccountOAuthView((Function1) rememberedValue5, accountOAuthContract$ViewModel, null, false, gapComposer12, 0, 12);
                    gapComposer12.end(true);
                    break;
                }
            case 27:
                ((Integer) obj2).getClass();
                ActionBar.AutoDiscoveryResultApprovalView((BooleanInputField) obj4, (Function1) obj3, (Composer) obj, Updater.updateChangedFlags(1));
                break;
            case 28:
                Modifier modifier = (Modifier) obj4;
                NavHostController navHostController = (NavHostController) obj3;
                Composer composer13 = (Composer) obj;
                int intValue14 = ((Integer) obj2).intValue();
                GapComposer gapComposer13 = (GapComposer) composer13;
                if (!gapComposer13.shouldExecute(intValue14 & 1, (intValue14 & 3) != 2)) {
                    gapComposer13.skipToGroupEnd();
                    break;
                } else {
                    MathKt.m983Surface_UMDTes(SizeKt.FillWholeMaxSize.then(modifier), null, 0L, 0L, 0.0f, Expect_jvmKt.rememberComposableLambda(-2009108214, new ComposerKt$$ExternalSyntheticLambda0(23, navHostController), gapComposer13), gapComposer13, 196608, 30);
                    break;
                }
            default:
                ((Integer) obj2).getClass();
                OperationKt.FeatureLauncherApp((Modifier) obj4, (FeatureThemeProvider) obj3, (Composer) obj, Updater.updateChangedFlags(1));
                break;
        }
        return unit;
    }

    public /* synthetic */ GapComposer$$ExternalSyntheticLambda3(int i, Object obj, Object obj2) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = obj2;
    }
}
