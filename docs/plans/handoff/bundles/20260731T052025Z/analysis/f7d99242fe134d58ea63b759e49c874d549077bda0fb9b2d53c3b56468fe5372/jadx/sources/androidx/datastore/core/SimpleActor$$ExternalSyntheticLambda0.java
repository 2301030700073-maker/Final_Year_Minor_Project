package androidx.datastore.core;

import android.content.Context;
import android.content.res.Resources;
import android.os.Build;
import androidx.activity.compose.BackHandlerKt$BackHandler$lambda$3$0$$inlined$onStopOrDispose$1;
import androidx.activity.compose.BackHandlerKt$BackHandler$lambda$4$0$$inlined$onDispose$1;
import androidx.camera.camera2.impl.StillCaptureRequestControl;
import androidx.camera.camera2.impl.UseCaseCameraRequestControl;
import androidx.camera.core.CameraX;
import androidx.camera.core.ImageCaptureException;
import androidx.camera.core.impl.Config;
import androidx.camera.core.impl.utils.ContextUtil;
import androidx.camera.core.streamsharing.StreamSharing$$ExternalSyntheticLambda0;
import androidx.camera.view.PreviewView;
import androidx.cardview.widget.CardView;
import androidx.collection.ArrayMap;
import androidx.collection.MutableObjectList;
import androidx.collection.MutableScatterMap;
import androidx.compose.animation.AnimatedContentKt$AnimatedContent$6$1$5$1$1$invoke$$inlined$onDispose$1;
import androidx.compose.animation.core.MutatorMutex$mutate$2;
import androidx.compose.foundation.BorderKt$$ExternalSyntheticLambda1;
import androidx.compose.foundation.ScrollState$$ExternalSyntheticLambda4;
import androidx.compose.foundation.contextmenu.ContextMenuPopupPositionProviderKt;
import androidx.compose.foundation.contextmenu.ContextMenuScope;
import androidx.compose.foundation.gestures.ContentInViewNode;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.gestures.ScrollingLogic;
import androidx.compose.foundation.gestures.ScrollingLogic$nestedScrollScope$1;
import androidx.compose.foundation.gestures.UpdatableAnimationState;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.lazy.LazyItemScopeImpl;
import androidx.compose.foundation.lazy.LazyListIntervalContent;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.foundation.text.KeyCommand;
import androidx.compose.foundation.text.LegacyTextFieldState;
import androidx.compose.foundation.text.TextContextMenuItems;
import androidx.compose.foundation.text.TextFieldKeyInput;
import androidx.compose.foundation.text.TextLayoutResultProxy;
import androidx.compose.foundation.text.UndoManager;
import androidx.compose.foundation.text.contextmenu.builder.TextContextMenuBuilderScope;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuComponent;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuData;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuItem;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuKeys;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuSeparator;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuSession;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuTextClassificationItem;
import androidx.compose.foundation.text.contextmenu.internal.TextContextMenuHelperApi28;
import androidx.compose.foundation.text.selection.TextFieldPreparedSelection;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager$contextMenuAreaModifier$3;
import androidx.compose.foundation.text.selection.TextPreparedSelectionState;
import androidx.compose.material3.ModalBottomSheetKt$$ExternalSyntheticLambda7;
import androidx.compose.material3.SheetState;
import androidx.compose.material3.SheetValue;
import androidx.compose.material3.TooltipKt$animateTooltip$2;
import androidx.compose.material3.TooltipStateImpl;
import androidx.compose.material3.internal.AnchoredDraggableState;
import androidx.compose.material3.internal.DraggableAnchorsNode;
import androidx.compose.material3.internal.TextFieldImplKt$CommonDecorationBox$3$borderContainerWithId$1;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt$$ExternalSyntheticLambda0;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.Recomposer$$ExternalSyntheticLambda6;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.saveable.SaveableStateHolderImpl;
import androidx.compose.runtime.saveable.SaveableStateRegistryWrapper;
import androidx.compose.runtime.snapshots.SnapshotStateList;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.AndroidPaint;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.drawscope.DrawStyle;
import androidx.compose.ui.graphics.drawscope.Fill;
import androidx.compose.ui.hapticfeedback.HapticFeedback;
import androidx.compose.ui.hapticfeedback.PlatformHapticFeedback;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.LayoutNodeDrawScope;
import androidx.compose.ui.platform.WeakCache;
import androidx.compose.ui.scrollcapture.ComposeScrollCaptureCallback$scrollTracker$1;
import androidx.compose.ui.semantics.AccessibilityAction;
import androidx.compose.ui.semantics.SemanticsActions;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.MultiParagraph;
import androidx.compose.ui.text.ParagraphKt;
import androidx.compose.ui.text.SpanStyle;
import androidx.compose.ui.text.TextLayoutInput;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.font.SystemFontFamily;
import androidx.compose.ui.text.input.CommitTextCommand;
import androidx.compose.ui.text.input.OffsetMapping;
import androidx.compose.ui.text.input.PasswordVisualTransformation;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.compose.ui.text.input.TextInputSession;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextForegroundStyle;
import androidx.compose.ui.text.style.TextGeometricTransform;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.core.view.MenuHostHelper;
import androidx.core.view.MenuHostHelper$$ExternalSyntheticLambda0;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentViewLifecycleOwner;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LifecycleRegistry;
import androidx.lifecycle.compose.LifecycleStartStopEffectScope;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavHostController;
import androidx.navigation.Navigator$$ExternalSyntheticLambda1;
import androidx.navigation.compose.DialogNavigator;
import androidx.navigation.fragment.FragmentNavigator;
import androidx.room.util.DBUtil$$ExternalSyntheticBUOutline0;
import androidx.sqlite.SQLite;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import androidx.work.BackoffPolicy;
import androidx.work.Constraints;
import androidx.work.Data;
import androidx.work.Operation$State;
import androidx.work.WorkInfo;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecDao_Impl;
import app.k9mail.K9KoinModuleKt$$ExternalSyntheticLambda2;
import app.k9mail.core.ui.compose.designsystem.molecule.input.TextInputKt;
import app.k9mail.feature.account.common.domain.entity.IncomingProtocolType;
import app.k9mail.feature.account.common.domain.entity.SpecialFolderOption;
import app.k9mail.feature.account.setup.ui.autodiscovery.AccountAutoDiscoveryContract$AutoDiscoveryUiResult;
import app.k9mail.feature.account.setup.ui.autodiscovery.AccountAutoDiscoveryContract$State;
import app.k9mail.feature.account.setup.ui.options.sync.SyncOptionsContentKt$$ExternalSyntheticLambda8;
import app.k9mail.feature.account.setup.ui.specialfolders.SpecialFoldersContract$FormState;
import app.k9mail.feature.account.setup.ui.specialfolders.SpecialFoldersScreenKt;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import coil3.disk.DiskLruCache$$ExternalSyntheticLambda0;
import com.fsck.k9.R;
import com.fsck.k9.mailstore.LocalFolder;
import com.fsck.k9.mailstore.LockableDatabase;
import com.fsck.k9.preferences.XmlSettingsParser$$ExternalSyntheticLambda2;
import com.fsck.k9.sasl.OAuthBearer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CancellationException;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.math.MathKt;
import kotlin.reflect.KProperty;
import kotlin.sequences.SequencesKt___SequencesKt$$ExternalSyntheticLambda0;
import kotlinx.collections.immutable.ImmutableList;
import kotlinx.coroutines.CompletableDeferredImpl;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Deferred;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.channels.ChannelResult;
import net.thunderbird.core.logging.legacy.Log;
import net.thunderbird.core.outcome.Outcome;
import net.thunderbird.core.ui.compose.designsystem.molecule.swipe.SwipeBehaviour;
import net.thunderbird.core.ui.compose.designsystem.molecule.swipe.SwipeDirection;
import net.thunderbird.core.ui.compose.designsystem.molecule.swipe.SwipeableRowState;
import net.thunderbird.core.ui.compose.designsystem.molecule.swipe.SwipeableRowState$updateOffset$1;
import net.thunderbird.core.validation.ValidationError;
import net.thunderbird.core.validation.input.BooleanInputField;
import net.thunderbird.core.validation.input.StringInputField;
import okhttp3.ConnectionPool;
import okhttp3.Dispatcher;
import okio.Okio;
import org.slf4j.helpers.Util;
import org.xmlpull.v1.XmlPullParser;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class SimpleActor$$ExternalSyntheticLambda0 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ Object f$2;

    public /* synthetic */ SimpleActor$$ExternalSyntheticLambda0(StillCaptureRequestControl stillCaptureRequestControl, Deferred deferred, StillCaptureRequestControl.CaptureRequest captureRequest, UseCaseCameraRequestControl useCaseCameraRequestControl) {
        this.$r8$classId = 2;
        this.f$0 = stillCaptureRequestControl;
        this.f$1 = deferred;
        this.f$2 = useCaseCameraRequestControl;
    }

    private final Object invoke$androidx$lifecycle$compose$LifecycleEffectKt$$ExternalSyntheticLambda4(Object obj) {
        LifecycleOwner lifecycleOwner = (LifecycleOwner) this.f$0;
        MenuHostHelper$$ExternalSyntheticLambda0 menuHostHelper$$ExternalSyntheticLambda0 = new MenuHostHelper$$ExternalSyntheticLambda0(2, (Lifecycle.Event) this.f$1, (MutableState) this.f$2);
        lifecycleOwner.getLifecycle().addObserver(menuHostHelper$$ExternalSyntheticLambda0);
        return new BackHandlerKt$BackHandler$lambda$4$0$$inlined$onDispose$1(10, lifecycleOwner, menuHostHelper$$ExternalSyntheticLambda0);
    }

    private final Object invoke$androidx$navigation$compose$DialogHostKt$DialogHost$1$2$$ExternalSyntheticLambda0(Object obj) {
        SnapshotStateList snapshotStateList = (SnapshotStateList) this.f$0;
        NavBackStackEntry navBackStackEntry = (NavBackStackEntry) this.f$1;
        DialogNavigator dialogNavigator = (DialogNavigator) this.f$2;
        snapshotStateList.add(navBackStackEntry);
        return new AnimatedContentKt$AnimatedContent$6$1$5$1$1$invoke$$inlined$onDispose$1(dialogNavigator, navBackStackEntry, snapshotStateList);
    }

    private final Object invoke$androidx$navigation$fragment$FragmentNavigator$$ExternalSyntheticLambda4(Object obj) {
        FragmentNavigator fragmentNavigator = (FragmentNavigator) this.f$0;
        Fragment fragment = (Fragment) this.f$1;
        NavBackStackEntry navBackStackEntry = (NavBackStackEntry) this.f$2;
        LifecycleOwner lifecycleOwner = (LifecycleOwner) obj;
        ArrayList arrayList = fragmentNavigator.pendingOps;
        boolean z = false;
        if (arrayList == null || !arrayList.isEmpty()) {
            Iterator it = arrayList.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                if (Intrinsics.areEqual(((Pair) it.next()).first, fragment.mTag)) {
                    z = true;
                    break;
                }
            }
        }
        if (lifecycleOwner != null && !z) {
            FragmentViewLifecycleOwner viewLifecycleOwner = fragment.getViewLifecycleOwner();
            viewLifecycleOwner.initialize();
            LifecycleRegistry lifecycleRegistry = viewLifecycleOwner.mLifecycleRegistry;
            if (lifecycleRegistry.state.compareTo(Lifecycle.State.CREATED) >= 0) {
                lifecycleRegistry.addObserver((LifecycleObserver) fragmentNavigator.fragmentViewObserver.invoke(navBackStackEntry));
            }
        }
        return Unit.INSTANCE;
    }

    private final Object invoke$androidx$work$impl$model$WorkSpecDao_Impl$$ExternalSyntheticLambda28(Object obj) {
        String str = (String) this.f$0;
        List list = (List) this.f$1;
        WorkSpecDao_Impl workSpecDao_Impl = (WorkSpecDao_Impl) this.f$2;
        SQLiteConnection sQLiteConnection = (SQLiteConnection) obj;
        sQLiteConnection.getClass();
        SQLiteStatement prepare = sQLiteConnection.prepare(str);
        try {
            Iterator it = list.iterator();
            int i = 1;
            int i2 = 1;
            while (it.hasNext()) {
                prepare.bindText((String) it.next(), i2);
                i2++;
            }
            int i3 = 0;
            ArrayMap arrayMap = new ArrayMap(0);
            ArrayMap arrayMap2 = new ArrayMap(0);
            while (prepare.step()) {
                String text = prepare.getText(0);
                if (!arrayMap.containsKey(text)) {
                    arrayMap.put(text, new ArrayList());
                }
                String text2 = prepare.getText(0);
                if (!arrayMap2.containsKey(text2)) {
                    arrayMap2.put(text2, new ArrayList());
                }
            }
            prepare.reset();
            workSpecDao_Impl.__fetchRelationshipWorkTagAsjavaLangString(sQLiteConnection, arrayMap);
            workSpecDao_Impl.__fetchRelationshipWorkProgressAsandroidxWorkData(sQLiteConnection, arrayMap2);
            ArrayList arrayList = new ArrayList();
            while (prepare.step()) {
                String text3 = prepare.getText(i3);
                WorkInfo.State intToState = SQLite.intToState((int) prepare.getLong(i));
                byte[] blob = prepare.getBlob(2);
                androidx.work.Data data = androidx.work.Data.EMPTY;
                androidx.work.Data fromByteArray = Data.Companion.fromByteArray(blob);
                int i4 = (int) prepare.getLong(3);
                int i5 = (int) prepare.getLong(4);
                long j = prepare.getLong(14);
                long j2 = prepare.getLong(15);
                long j3 = prepare.getLong(16);
                ArrayMap arrayMap3 = arrayMap2;
                BackoffPolicy intToBackoffPolicy = SQLite.intToBackoffPolicy((int) prepare.getLong(17));
                long j4 = prepare.getLong(18);
                long j5 = prepare.getLong(19);
                int i6 = (int) prepare.getLong(20);
                long j6 = prepare.getLong(21);
                int i7 = (int) prepare.getLong(22);
                Constraints constraints = new Constraints(SQLite.toNetworkRequest$work_runtime_release(prepare.getBlob(6)), SQLite.intToNetworkType((int) prepare.getLong(5)), ((int) prepare.getLong(7)) != 0, ((int) prepare.getLong(8)) != 0, ((int) prepare.getLong(9)) != 0, ((int) prepare.getLong(10)) != 0, prepare.getLong(11), prepare.getLong(12), SQLite.byteArrayToSetOfTriggers(prepare.getBlob(13)));
                Object value = MapsKt__MapsKt.getValue(arrayMap, prepare.getText(0));
                value.getClass();
                List list2 = (List) value;
                arrayMap2 = arrayMap3;
                Object value2 = MapsKt__MapsKt.getValue(arrayMap2, prepare.getText(0));
                value2.getClass();
                arrayList.add(new WorkSpec.WorkInfoPojo(text3, intToState, fromByteArray, j, j2, j3, constraints, i4, intToBackoffPolicy, j4, j5, i6, i5, j6, i7, list2, (List) value2));
                i3 = 0;
                i = 1;
            }
            prepare.close();
            return arrayList;
        } catch (Throwable th) {
            prepare.close();
            throw th;
        }
    }

    private final Object invoke$app$k9mail$core$ui$compose$designsystem$template$LazyColumnWithHeaderFooterKt$$ExternalSyntheticLambda0(Object obj) {
        Function1 function1 = (Function1) this.f$0;
        final ComposableLambdaImpl composableLambdaImpl = (ComposableLambdaImpl) this.f$1;
        final ComposableLambdaImpl composableLambdaImpl2 = (ComposableLambdaImpl) this.f$2;
        LazyListIntervalContent lazyListIntervalContent = (LazyListIntervalContent) obj;
        lazyListIntervalContent.getClass();
        final int i = 0;
        final int i2 = 1;
        Config.CC.item$default(lazyListIntervalContent, null, new ComposableLambdaImpl(-896961343, new Function3() { // from class: app.k9mail.core.ui.compose.designsystem.template.LazyColumnWithHeaderFooterKt$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function3
            public final Object invoke(Object obj2, Object obj3, Object obj4) {
                int i3 = i;
                Unit unit = Unit.INSTANCE;
                ComposableLambdaImpl composableLambdaImpl3 = composableLambdaImpl;
                LazyItemScopeImpl lazyItemScopeImpl = (LazyItemScopeImpl) obj2;
                Composer composer = (Composer) obj3;
                int intValue = ((Integer) obj4).intValue();
                switch (i3) {
                    case 0:
                        lazyItemScopeImpl.getClass();
                        GapComposer gapComposer = (GapComposer) composer;
                        if (!gapComposer.shouldExecute(intValue & 1, (intValue & 17) != 16)) {
                            gapComposer.skipToGroupEnd();
                            break;
                        } else {
                            composableLambdaImpl3.invoke((Object) gapComposer, (Object) 0);
                            break;
                        }
                    default:
                        lazyItemScopeImpl.getClass();
                        GapComposer gapComposer2 = (GapComposer) composer;
                        if (!gapComposer2.shouldExecute(intValue & 1, (intValue & 17) != 16)) {
                            gapComposer2.skipToGroupEnd();
                            break;
                        } else {
                            composableLambdaImpl3.invoke((Object) gapComposer2, (Object) 0);
                            break;
                        }
                }
                return unit;
            }
        }, true), 3);
        function1.invoke(lazyListIntervalContent);
        Config.CC.item$default(lazyListIntervalContent, null, new ComposableLambdaImpl(-273400726, new Function3() { // from class: app.k9mail.core.ui.compose.designsystem.template.LazyColumnWithHeaderFooterKt$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function3
            public final Object invoke(Object obj2, Object obj3, Object obj4) {
                int i3 = i2;
                Unit unit = Unit.INSTANCE;
                ComposableLambdaImpl composableLambdaImpl3 = composableLambdaImpl2;
                LazyItemScopeImpl lazyItemScopeImpl = (LazyItemScopeImpl) obj2;
                Composer composer = (Composer) obj3;
                int intValue = ((Integer) obj4).intValue();
                switch (i3) {
                    case 0:
                        lazyItemScopeImpl.getClass();
                        GapComposer gapComposer = (GapComposer) composer;
                        if (!gapComposer.shouldExecute(intValue & 1, (intValue & 17) != 16)) {
                            gapComposer.skipToGroupEnd();
                            break;
                        } else {
                            composableLambdaImpl3.invoke((Object) gapComposer, (Object) 0);
                            break;
                        }
                    default:
                        lazyItemScopeImpl.getClass();
                        GapComposer gapComposer2 = (GapComposer) composer;
                        if (!gapComposer2.shouldExecute(intValue & 1, (intValue & 17) != 16)) {
                            gapComposer2.skipToGroupEnd();
                            break;
                        } else {
                            composableLambdaImpl3.invoke((Object) gapComposer2, (Object) 0);
                            break;
                        }
                }
                return unit;
            }
        }, true), 3);
        return Unit.INSTANCE;
    }

    private final Object invoke$app$k9mail$feature$account$setup$navigation$AccountSetupNavHostKt$$ExternalSyntheticLambda16(Object obj) {
        NavHostController navHostController = (NavHostController) this.f$0;
        MutableState mutableState = (MutableState) this.f$1;
        MutableState mutableState2 = (MutableState) this.f$2;
        AccountAutoDiscoveryContract$AutoDiscoveryUiResult accountAutoDiscoveryContract$AutoDiscoveryUiResult = (AccountAutoDiscoveryContract$AutoDiscoveryUiResult) obj;
        accountAutoDiscoveryContract$AutoDiscoveryUiResult.getClass();
        mutableState.setValue(Boolean.valueOf(accountAutoDiscoveryContract$AutoDiscoveryUiResult.isAutomaticConfig));
        if (((Boolean) mutableState.getValue()).booleanValue()) {
            mutableState2.setValue(Boolean.valueOf(accountAutoDiscoveryContract$AutoDiscoveryUiResult.incomingProtocolType == IncomingProtocolType.IMAP));
            NavHostController.navigate$default(navHostController, "incoming-server/validation");
        } else {
            NavHostController.navigate$default(navHostController, "incoming-server/config");
        }
        return Unit.INSTANCE;
    }

    private final Object invoke$app$k9mail$feature$account$setup$ui$autodiscovery$AccountAutoDiscoveryViewModel$$ExternalSyntheticLambda0(Object obj) {
        BooleanInputField booleanInputField;
        Outcome outcome = (Outcome) this.f$0;
        Outcome outcome2 = (Outcome) this.f$1;
        Outcome outcome3 = (Outcome) this.f$2;
        AccountAutoDiscoveryContract$State accountAutoDiscoveryContract$State = (AccountAutoDiscoveryContract$State) obj;
        accountAutoDiscoveryContract$State.getClass();
        StringInputField updateFromValidationOutcome = accountAutoDiscoveryContract$State.emailAddress.updateFromValidationOutcome(outcome);
        StringInputField updateFromValidationOutcome2 = accountAutoDiscoveryContract$State.password.updateFromValidationOutcome(outcome2);
        Boolean bool = accountAutoDiscoveryContract$State.configurationApproved.value;
        if (outcome3 instanceof Outcome.Success) {
            booleanInputField = new BooleanInputField(bool, null, true);
        } else {
            if (!(outcome3 instanceof Outcome.Failure)) {
                UriKt$$ExternalSyntheticBUOutline0.m857m();
                return null;
            }
            booleanInputField = new BooleanInputField(bool, (ValidationError) ((Outcome.Failure) outcome3).error, false);
        }
        return AccountAutoDiscoveryContract$State.copy$default(accountAutoDiscoveryContract$State, null, updateFromValidationOutcome, updateFromValidationOutcome2, null, booleanInputField, null, null, false, false, 1001);
    }

    private final Object invoke$app$k9mail$feature$account$setup$ui$specialfolders$SpecialFoldersFormContentKt$$ExternalSyntheticLambda0(Object obj) {
        final SpecialFoldersContract$FormState specialFoldersContract$FormState = (SpecialFoldersContract$FormState) this.f$0;
        final Function1 function1 = (Function1) this.f$1;
        final Resources resources = (Resources) this.f$2;
        LazyListIntervalContent lazyListIntervalContent = (LazyListIntervalContent) obj;
        lazyListIntervalContent.getClass();
        final int i = 3;
        Config.CC.item$default(lazyListIntervalContent, null, SpecialFoldersScreenKt.lambda$446464532, 3);
        Config.CC.item$default(lazyListIntervalContent, null, SpecialFoldersScreenKt.lambda$1100856701, 3);
        final int i2 = 0;
        final int i3 = 1;
        Config.CC.item$default(lazyListIntervalContent, null, new ComposableLambdaImpl(966274012, new Function3() { // from class: app.k9mail.feature.account.setup.ui.specialfolders.SpecialFoldersFormContentKt$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function3
            public final Object invoke(Object obj2, Object obj3, Object obj4) {
                int i4 = i2;
                Unit unit = Unit.INSTANCE;
                NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
                Resources resources2 = resources;
                Function1 function12 = function1;
                SpecialFoldersContract$FormState specialFoldersContract$FormState2 = specialFoldersContract$FormState;
                switch (i4) {
                    case 0:
                        Composer composer = (Composer) obj3;
                        int intValue = ((Integer) obj4).intValue();
                        ((LazyItemScopeImpl) obj2).getClass();
                        GapComposer gapComposer = (GapComposer) composer;
                        if (!gapComposer.shouldExecute(intValue & 1, (intValue & 17) != 16)) {
                            gapComposer.skipToGroupEnd();
                            break;
                        } else {
                            ImmutableList immutableList = Okio.toImmutableList(specialFoldersContract$FormState2.archiveSpecialFolderOptions);
                            SpecialFolderOption specialFolderOption = specialFoldersContract$FormState2.selectedArchiveSpecialFolderOption;
                            boolean changed = gapComposer.changed(function12);
                            Object rememberedValue = gapComposer.rememberedValue();
                            if (changed || rememberedValue == neverEqualPolicy) {
                                rememberedValue = new SequencesKt___SequencesKt$$ExternalSyntheticLambda0(18, function12);
                                gapComposer.updateRememberedValue(rememberedValue);
                            }
                            Function1 function13 = (Function1) rememberedValue;
                            boolean changedInstance = gapComposer.changedInstance(resources2);
                            Object rememberedValue2 = gapComposer.rememberedValue();
                            if (changedInstance || rememberedValue2 == neverEqualPolicy) {
                                rememberedValue2 = new SyncOptionsContentKt$$ExternalSyntheticLambda8(9, resources2);
                                gapComposer.updateRememberedValue(rememberedValue2);
                            }
                            TextInputKt.SelectInput(immutableList, specialFolderOption, function13, null, (Function1) rememberedValue2, Operation$State.stringResource(gapComposer, R.string.account_setup_special_folders_archive_folder_label), OAuthBearer.defaultItemPadding(gapComposer), gapComposer, 0, 8);
                            break;
                        }
                    case 1:
                        Composer composer2 = (Composer) obj3;
                        int intValue2 = ((Integer) obj4).intValue();
                        ((LazyItemScopeImpl) obj2).getClass();
                        GapComposer gapComposer2 = (GapComposer) composer2;
                        if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 17) != 16)) {
                            gapComposer2.skipToGroupEnd();
                            break;
                        } else {
                            ImmutableList immutableList2 = Okio.toImmutableList(specialFoldersContract$FormState2.draftsSpecialFolderOptions);
                            SpecialFolderOption specialFolderOption2 = specialFoldersContract$FormState2.selectedDraftsSpecialFolderOption;
                            boolean changed2 = gapComposer2.changed(function12);
                            Object rememberedValue3 = gapComposer2.rememberedValue();
                            if (changed2 || rememberedValue3 == neverEqualPolicy) {
                                rememberedValue3 = new SequencesKt___SequencesKt$$ExternalSyntheticLambda0(20, function12);
                                gapComposer2.updateRememberedValue(rememberedValue3);
                            }
                            Function1 function14 = (Function1) rememberedValue3;
                            boolean changedInstance2 = gapComposer2.changedInstance(resources2);
                            Object rememberedValue4 = gapComposer2.rememberedValue();
                            if (changedInstance2 || rememberedValue4 == neverEqualPolicy) {
                                rememberedValue4 = new SyncOptionsContentKt$$ExternalSyntheticLambda8(6, resources2);
                                gapComposer2.updateRememberedValue(rememberedValue4);
                            }
                            TextInputKt.SelectInput(immutableList2, specialFolderOption2, function14, null, (Function1) rememberedValue4, Operation$State.stringResource(gapComposer2, R.string.account_setup_special_folders_drafts_folder_label), OAuthBearer.defaultItemPadding(gapComposer2), gapComposer2, 0, 8);
                            break;
                        }
                    case 2:
                        Composer composer3 = (Composer) obj3;
                        int intValue3 = ((Integer) obj4).intValue();
                        ((LazyItemScopeImpl) obj2).getClass();
                        GapComposer gapComposer3 = (GapComposer) composer3;
                        if (!gapComposer3.shouldExecute(intValue3 & 1, (intValue3 & 17) != 16)) {
                            gapComposer3.skipToGroupEnd();
                            break;
                        } else {
                            ImmutableList immutableList3 = Okio.toImmutableList(specialFoldersContract$FormState2.sentSpecialFolderOptions);
                            SpecialFolderOption specialFolderOption3 = specialFoldersContract$FormState2.selectedSentSpecialFolderOption;
                            boolean changed3 = gapComposer3.changed(function12);
                            Object rememberedValue5 = gapComposer3.rememberedValue();
                            if (changed3 || rememberedValue5 == neverEqualPolicy) {
                                rememberedValue5 = new SequencesKt___SequencesKt$$ExternalSyntheticLambda0(17, function12);
                                gapComposer3.updateRememberedValue(rememberedValue5);
                            }
                            Function1 function15 = (Function1) rememberedValue5;
                            boolean changedInstance3 = gapComposer3.changedInstance(resources2);
                            Object rememberedValue6 = gapComposer3.rememberedValue();
                            if (changedInstance3 || rememberedValue6 == neverEqualPolicy) {
                                rememberedValue6 = new SyncOptionsContentKt$$ExternalSyntheticLambda8(8, resources2);
                                gapComposer3.updateRememberedValue(rememberedValue6);
                            }
                            TextInputKt.SelectInput(immutableList3, specialFolderOption3, function15, null, (Function1) rememberedValue6, Operation$State.stringResource(gapComposer3, R.string.account_setup_special_folders_sent_folder_label), OAuthBearer.defaultItemPadding(gapComposer3), gapComposer3, 0, 8);
                            break;
                        }
                    case 3:
                        Composer composer4 = (Composer) obj3;
                        int intValue4 = ((Integer) obj4).intValue();
                        ((LazyItemScopeImpl) obj2).getClass();
                        GapComposer gapComposer4 = (GapComposer) composer4;
                        if (!gapComposer4.shouldExecute(intValue4 & 1, (intValue4 & 17) != 16)) {
                            gapComposer4.skipToGroupEnd();
                            break;
                        } else {
                            ImmutableList immutableList4 = Okio.toImmutableList(specialFoldersContract$FormState2.spamSpecialFolderOptions);
                            SpecialFolderOption specialFolderOption4 = specialFoldersContract$FormState2.selectedSpamSpecialFolderOption;
                            boolean changed4 = gapComposer4.changed(function12);
                            Object rememberedValue7 = gapComposer4.rememberedValue();
                            if (changed4 || rememberedValue7 == neverEqualPolicy) {
                                rememberedValue7 = new SequencesKt___SequencesKt$$ExternalSyntheticLambda0(19, function12);
                                gapComposer4.updateRememberedValue(rememberedValue7);
                            }
                            Function1 function16 = (Function1) rememberedValue7;
                            boolean changedInstance4 = gapComposer4.changedInstance(resources2);
                            Object rememberedValue8 = gapComposer4.rememberedValue();
                            if (changedInstance4 || rememberedValue8 == neverEqualPolicy) {
                                rememberedValue8 = new SyncOptionsContentKt$$ExternalSyntheticLambda8(10, resources2);
                                gapComposer4.updateRememberedValue(rememberedValue8);
                            }
                            TextInputKt.SelectInput(immutableList4, specialFolderOption4, function16, null, (Function1) rememberedValue8, Operation$State.stringResource(gapComposer4, R.string.account_setup_special_folders_spam_folder_label), OAuthBearer.defaultItemPadding(gapComposer4), gapComposer4, 0, 8);
                            break;
                        }
                    default:
                        Composer composer5 = (Composer) obj3;
                        int intValue5 = ((Integer) obj4).intValue();
                        ((LazyItemScopeImpl) obj2).getClass();
                        GapComposer gapComposer5 = (GapComposer) composer5;
                        if (!gapComposer5.shouldExecute(intValue5 & 1, (intValue5 & 17) != 16)) {
                            gapComposer5.skipToGroupEnd();
                            break;
                        } else {
                            ImmutableList immutableList5 = Okio.toImmutableList(specialFoldersContract$FormState2.trashSpecialFolderOptions);
                            SpecialFolderOption specialFolderOption5 = specialFoldersContract$FormState2.selectedTrashSpecialFolderOption;
                            boolean changed5 = gapComposer5.changed(function12);
                            Object rememberedValue9 = gapComposer5.rememberedValue();
                            if (changed5 || rememberedValue9 == neverEqualPolicy) {
                                rememberedValue9 = new SequencesKt___SequencesKt$$ExternalSyntheticLambda0(16, function12);
                                gapComposer5.updateRememberedValue(rememberedValue9);
                            }
                            Function1 function17 = (Function1) rememberedValue9;
                            boolean changedInstance5 = gapComposer5.changedInstance(resources2);
                            Object rememberedValue10 = gapComposer5.rememberedValue();
                            if (changedInstance5 || rememberedValue10 == neverEqualPolicy) {
                                rememberedValue10 = new SyncOptionsContentKt$$ExternalSyntheticLambda8(7, resources2);
                                gapComposer5.updateRememberedValue(rememberedValue10);
                            }
                            TextInputKt.SelectInput(immutableList5, specialFolderOption5, function17, null, (Function1) rememberedValue10, Operation$State.stringResource(gapComposer5, R.string.account_setup_special_folders_trash_folder_label), OAuthBearer.defaultItemPadding(gapComposer5), gapComposer5, 0, 8);
                            break;
                        }
                }
                return unit;
            }
        }, true), 3);
        Config.CC.item$default(lazyListIntervalContent, null, new ComposableLambdaImpl(831691323, new Function3() { // from class: app.k9mail.feature.account.setup.ui.specialfolders.SpecialFoldersFormContentKt$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function3
            public final Object invoke(Object obj2, Object obj3, Object obj4) {
                int i4 = i3;
                Unit unit = Unit.INSTANCE;
                NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
                Resources resources2 = resources;
                Function1 function12 = function1;
                SpecialFoldersContract$FormState specialFoldersContract$FormState2 = specialFoldersContract$FormState;
                switch (i4) {
                    case 0:
                        Composer composer = (Composer) obj3;
                        int intValue = ((Integer) obj4).intValue();
                        ((LazyItemScopeImpl) obj2).getClass();
                        GapComposer gapComposer = (GapComposer) composer;
                        if (!gapComposer.shouldExecute(intValue & 1, (intValue & 17) != 16)) {
                            gapComposer.skipToGroupEnd();
                            break;
                        } else {
                            ImmutableList immutableList = Okio.toImmutableList(specialFoldersContract$FormState2.archiveSpecialFolderOptions);
                            SpecialFolderOption specialFolderOption = specialFoldersContract$FormState2.selectedArchiveSpecialFolderOption;
                            boolean changed = gapComposer.changed(function12);
                            Object rememberedValue = gapComposer.rememberedValue();
                            if (changed || rememberedValue == neverEqualPolicy) {
                                rememberedValue = new SequencesKt___SequencesKt$$ExternalSyntheticLambda0(18, function12);
                                gapComposer.updateRememberedValue(rememberedValue);
                            }
                            Function1 function13 = (Function1) rememberedValue;
                            boolean changedInstance = gapComposer.changedInstance(resources2);
                            Object rememberedValue2 = gapComposer.rememberedValue();
                            if (changedInstance || rememberedValue2 == neverEqualPolicy) {
                                rememberedValue2 = new SyncOptionsContentKt$$ExternalSyntheticLambda8(9, resources2);
                                gapComposer.updateRememberedValue(rememberedValue2);
                            }
                            TextInputKt.SelectInput(immutableList, specialFolderOption, function13, null, (Function1) rememberedValue2, Operation$State.stringResource(gapComposer, R.string.account_setup_special_folders_archive_folder_label), OAuthBearer.defaultItemPadding(gapComposer), gapComposer, 0, 8);
                            break;
                        }
                    case 1:
                        Composer composer2 = (Composer) obj3;
                        int intValue2 = ((Integer) obj4).intValue();
                        ((LazyItemScopeImpl) obj2).getClass();
                        GapComposer gapComposer2 = (GapComposer) composer2;
                        if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 17) != 16)) {
                            gapComposer2.skipToGroupEnd();
                            break;
                        } else {
                            ImmutableList immutableList2 = Okio.toImmutableList(specialFoldersContract$FormState2.draftsSpecialFolderOptions);
                            SpecialFolderOption specialFolderOption2 = specialFoldersContract$FormState2.selectedDraftsSpecialFolderOption;
                            boolean changed2 = gapComposer2.changed(function12);
                            Object rememberedValue3 = gapComposer2.rememberedValue();
                            if (changed2 || rememberedValue3 == neverEqualPolicy) {
                                rememberedValue3 = new SequencesKt___SequencesKt$$ExternalSyntheticLambda0(20, function12);
                                gapComposer2.updateRememberedValue(rememberedValue3);
                            }
                            Function1 function14 = (Function1) rememberedValue3;
                            boolean changedInstance2 = gapComposer2.changedInstance(resources2);
                            Object rememberedValue4 = gapComposer2.rememberedValue();
                            if (changedInstance2 || rememberedValue4 == neverEqualPolicy) {
                                rememberedValue4 = new SyncOptionsContentKt$$ExternalSyntheticLambda8(6, resources2);
                                gapComposer2.updateRememberedValue(rememberedValue4);
                            }
                            TextInputKt.SelectInput(immutableList2, specialFolderOption2, function14, null, (Function1) rememberedValue4, Operation$State.stringResource(gapComposer2, R.string.account_setup_special_folders_drafts_folder_label), OAuthBearer.defaultItemPadding(gapComposer2), gapComposer2, 0, 8);
                            break;
                        }
                    case 2:
                        Composer composer3 = (Composer) obj3;
                        int intValue3 = ((Integer) obj4).intValue();
                        ((LazyItemScopeImpl) obj2).getClass();
                        GapComposer gapComposer3 = (GapComposer) composer3;
                        if (!gapComposer3.shouldExecute(intValue3 & 1, (intValue3 & 17) != 16)) {
                            gapComposer3.skipToGroupEnd();
                            break;
                        } else {
                            ImmutableList immutableList3 = Okio.toImmutableList(specialFoldersContract$FormState2.sentSpecialFolderOptions);
                            SpecialFolderOption specialFolderOption3 = specialFoldersContract$FormState2.selectedSentSpecialFolderOption;
                            boolean changed3 = gapComposer3.changed(function12);
                            Object rememberedValue5 = gapComposer3.rememberedValue();
                            if (changed3 || rememberedValue5 == neverEqualPolicy) {
                                rememberedValue5 = new SequencesKt___SequencesKt$$ExternalSyntheticLambda0(17, function12);
                                gapComposer3.updateRememberedValue(rememberedValue5);
                            }
                            Function1 function15 = (Function1) rememberedValue5;
                            boolean changedInstance3 = gapComposer3.changedInstance(resources2);
                            Object rememberedValue6 = gapComposer3.rememberedValue();
                            if (changedInstance3 || rememberedValue6 == neverEqualPolicy) {
                                rememberedValue6 = new SyncOptionsContentKt$$ExternalSyntheticLambda8(8, resources2);
                                gapComposer3.updateRememberedValue(rememberedValue6);
                            }
                            TextInputKt.SelectInput(immutableList3, specialFolderOption3, function15, null, (Function1) rememberedValue6, Operation$State.stringResource(gapComposer3, R.string.account_setup_special_folders_sent_folder_label), OAuthBearer.defaultItemPadding(gapComposer3), gapComposer3, 0, 8);
                            break;
                        }
                    case 3:
                        Composer composer4 = (Composer) obj3;
                        int intValue4 = ((Integer) obj4).intValue();
                        ((LazyItemScopeImpl) obj2).getClass();
                        GapComposer gapComposer4 = (GapComposer) composer4;
                        if (!gapComposer4.shouldExecute(intValue4 & 1, (intValue4 & 17) != 16)) {
                            gapComposer4.skipToGroupEnd();
                            break;
                        } else {
                            ImmutableList immutableList4 = Okio.toImmutableList(specialFoldersContract$FormState2.spamSpecialFolderOptions);
                            SpecialFolderOption specialFolderOption4 = specialFoldersContract$FormState2.selectedSpamSpecialFolderOption;
                            boolean changed4 = gapComposer4.changed(function12);
                            Object rememberedValue7 = gapComposer4.rememberedValue();
                            if (changed4 || rememberedValue7 == neverEqualPolicy) {
                                rememberedValue7 = new SequencesKt___SequencesKt$$ExternalSyntheticLambda0(19, function12);
                                gapComposer4.updateRememberedValue(rememberedValue7);
                            }
                            Function1 function16 = (Function1) rememberedValue7;
                            boolean changedInstance4 = gapComposer4.changedInstance(resources2);
                            Object rememberedValue8 = gapComposer4.rememberedValue();
                            if (changedInstance4 || rememberedValue8 == neverEqualPolicy) {
                                rememberedValue8 = new SyncOptionsContentKt$$ExternalSyntheticLambda8(10, resources2);
                                gapComposer4.updateRememberedValue(rememberedValue8);
                            }
                            TextInputKt.SelectInput(immutableList4, specialFolderOption4, function16, null, (Function1) rememberedValue8, Operation$State.stringResource(gapComposer4, R.string.account_setup_special_folders_spam_folder_label), OAuthBearer.defaultItemPadding(gapComposer4), gapComposer4, 0, 8);
                            break;
                        }
                    default:
                        Composer composer5 = (Composer) obj3;
                        int intValue5 = ((Integer) obj4).intValue();
                        ((LazyItemScopeImpl) obj2).getClass();
                        GapComposer gapComposer5 = (GapComposer) composer5;
                        if (!gapComposer5.shouldExecute(intValue5 & 1, (intValue5 & 17) != 16)) {
                            gapComposer5.skipToGroupEnd();
                            break;
                        } else {
                            ImmutableList immutableList5 = Okio.toImmutableList(specialFoldersContract$FormState2.trashSpecialFolderOptions);
                            SpecialFolderOption specialFolderOption5 = specialFoldersContract$FormState2.selectedTrashSpecialFolderOption;
                            boolean changed5 = gapComposer5.changed(function12);
                            Object rememberedValue9 = gapComposer5.rememberedValue();
                            if (changed5 || rememberedValue9 == neverEqualPolicy) {
                                rememberedValue9 = new SequencesKt___SequencesKt$$ExternalSyntheticLambda0(16, function12);
                                gapComposer5.updateRememberedValue(rememberedValue9);
                            }
                            Function1 function17 = (Function1) rememberedValue9;
                            boolean changedInstance5 = gapComposer5.changedInstance(resources2);
                            Object rememberedValue10 = gapComposer5.rememberedValue();
                            if (changedInstance5 || rememberedValue10 == neverEqualPolicy) {
                                rememberedValue10 = new SyncOptionsContentKt$$ExternalSyntheticLambda8(7, resources2);
                                gapComposer5.updateRememberedValue(rememberedValue10);
                            }
                            TextInputKt.SelectInput(immutableList5, specialFolderOption5, function17, null, (Function1) rememberedValue10, Operation$State.stringResource(gapComposer5, R.string.account_setup_special_folders_trash_folder_label), OAuthBearer.defaultItemPadding(gapComposer5), gapComposer5, 0, 8);
                            break;
                        }
                }
                return unit;
            }
        }, true), 3);
        final int i4 = 2;
        Config.CC.item$default(lazyListIntervalContent, null, new ComposableLambdaImpl(697108634, new Function3() { // from class: app.k9mail.feature.account.setup.ui.specialfolders.SpecialFoldersFormContentKt$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function3
            public final Object invoke(Object obj2, Object obj3, Object obj4) {
                int i42 = i4;
                Unit unit = Unit.INSTANCE;
                NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
                Resources resources2 = resources;
                Function1 function12 = function1;
                SpecialFoldersContract$FormState specialFoldersContract$FormState2 = specialFoldersContract$FormState;
                switch (i42) {
                    case 0:
                        Composer composer = (Composer) obj3;
                        int intValue = ((Integer) obj4).intValue();
                        ((LazyItemScopeImpl) obj2).getClass();
                        GapComposer gapComposer = (GapComposer) composer;
                        if (!gapComposer.shouldExecute(intValue & 1, (intValue & 17) != 16)) {
                            gapComposer.skipToGroupEnd();
                            break;
                        } else {
                            ImmutableList immutableList = Okio.toImmutableList(specialFoldersContract$FormState2.archiveSpecialFolderOptions);
                            SpecialFolderOption specialFolderOption = specialFoldersContract$FormState2.selectedArchiveSpecialFolderOption;
                            boolean changed = gapComposer.changed(function12);
                            Object rememberedValue = gapComposer.rememberedValue();
                            if (changed || rememberedValue == neverEqualPolicy) {
                                rememberedValue = new SequencesKt___SequencesKt$$ExternalSyntheticLambda0(18, function12);
                                gapComposer.updateRememberedValue(rememberedValue);
                            }
                            Function1 function13 = (Function1) rememberedValue;
                            boolean changedInstance = gapComposer.changedInstance(resources2);
                            Object rememberedValue2 = gapComposer.rememberedValue();
                            if (changedInstance || rememberedValue2 == neverEqualPolicy) {
                                rememberedValue2 = new SyncOptionsContentKt$$ExternalSyntheticLambda8(9, resources2);
                                gapComposer.updateRememberedValue(rememberedValue2);
                            }
                            TextInputKt.SelectInput(immutableList, specialFolderOption, function13, null, (Function1) rememberedValue2, Operation$State.stringResource(gapComposer, R.string.account_setup_special_folders_archive_folder_label), OAuthBearer.defaultItemPadding(gapComposer), gapComposer, 0, 8);
                            break;
                        }
                    case 1:
                        Composer composer2 = (Composer) obj3;
                        int intValue2 = ((Integer) obj4).intValue();
                        ((LazyItemScopeImpl) obj2).getClass();
                        GapComposer gapComposer2 = (GapComposer) composer2;
                        if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 17) != 16)) {
                            gapComposer2.skipToGroupEnd();
                            break;
                        } else {
                            ImmutableList immutableList2 = Okio.toImmutableList(specialFoldersContract$FormState2.draftsSpecialFolderOptions);
                            SpecialFolderOption specialFolderOption2 = specialFoldersContract$FormState2.selectedDraftsSpecialFolderOption;
                            boolean changed2 = gapComposer2.changed(function12);
                            Object rememberedValue3 = gapComposer2.rememberedValue();
                            if (changed2 || rememberedValue3 == neverEqualPolicy) {
                                rememberedValue3 = new SequencesKt___SequencesKt$$ExternalSyntheticLambda0(20, function12);
                                gapComposer2.updateRememberedValue(rememberedValue3);
                            }
                            Function1 function14 = (Function1) rememberedValue3;
                            boolean changedInstance2 = gapComposer2.changedInstance(resources2);
                            Object rememberedValue4 = gapComposer2.rememberedValue();
                            if (changedInstance2 || rememberedValue4 == neverEqualPolicy) {
                                rememberedValue4 = new SyncOptionsContentKt$$ExternalSyntheticLambda8(6, resources2);
                                gapComposer2.updateRememberedValue(rememberedValue4);
                            }
                            TextInputKt.SelectInput(immutableList2, specialFolderOption2, function14, null, (Function1) rememberedValue4, Operation$State.stringResource(gapComposer2, R.string.account_setup_special_folders_drafts_folder_label), OAuthBearer.defaultItemPadding(gapComposer2), gapComposer2, 0, 8);
                            break;
                        }
                    case 2:
                        Composer composer3 = (Composer) obj3;
                        int intValue3 = ((Integer) obj4).intValue();
                        ((LazyItemScopeImpl) obj2).getClass();
                        GapComposer gapComposer3 = (GapComposer) composer3;
                        if (!gapComposer3.shouldExecute(intValue3 & 1, (intValue3 & 17) != 16)) {
                            gapComposer3.skipToGroupEnd();
                            break;
                        } else {
                            ImmutableList immutableList3 = Okio.toImmutableList(specialFoldersContract$FormState2.sentSpecialFolderOptions);
                            SpecialFolderOption specialFolderOption3 = specialFoldersContract$FormState2.selectedSentSpecialFolderOption;
                            boolean changed3 = gapComposer3.changed(function12);
                            Object rememberedValue5 = gapComposer3.rememberedValue();
                            if (changed3 || rememberedValue5 == neverEqualPolicy) {
                                rememberedValue5 = new SequencesKt___SequencesKt$$ExternalSyntheticLambda0(17, function12);
                                gapComposer3.updateRememberedValue(rememberedValue5);
                            }
                            Function1 function15 = (Function1) rememberedValue5;
                            boolean changedInstance3 = gapComposer3.changedInstance(resources2);
                            Object rememberedValue6 = gapComposer3.rememberedValue();
                            if (changedInstance3 || rememberedValue6 == neverEqualPolicy) {
                                rememberedValue6 = new SyncOptionsContentKt$$ExternalSyntheticLambda8(8, resources2);
                                gapComposer3.updateRememberedValue(rememberedValue6);
                            }
                            TextInputKt.SelectInput(immutableList3, specialFolderOption3, function15, null, (Function1) rememberedValue6, Operation$State.stringResource(gapComposer3, R.string.account_setup_special_folders_sent_folder_label), OAuthBearer.defaultItemPadding(gapComposer3), gapComposer3, 0, 8);
                            break;
                        }
                    case 3:
                        Composer composer4 = (Composer) obj3;
                        int intValue4 = ((Integer) obj4).intValue();
                        ((LazyItemScopeImpl) obj2).getClass();
                        GapComposer gapComposer4 = (GapComposer) composer4;
                        if (!gapComposer4.shouldExecute(intValue4 & 1, (intValue4 & 17) != 16)) {
                            gapComposer4.skipToGroupEnd();
                            break;
                        } else {
                            ImmutableList immutableList4 = Okio.toImmutableList(specialFoldersContract$FormState2.spamSpecialFolderOptions);
                            SpecialFolderOption specialFolderOption4 = specialFoldersContract$FormState2.selectedSpamSpecialFolderOption;
                            boolean changed4 = gapComposer4.changed(function12);
                            Object rememberedValue7 = gapComposer4.rememberedValue();
                            if (changed4 || rememberedValue7 == neverEqualPolicy) {
                                rememberedValue7 = new SequencesKt___SequencesKt$$ExternalSyntheticLambda0(19, function12);
                                gapComposer4.updateRememberedValue(rememberedValue7);
                            }
                            Function1 function16 = (Function1) rememberedValue7;
                            boolean changedInstance4 = gapComposer4.changedInstance(resources2);
                            Object rememberedValue8 = gapComposer4.rememberedValue();
                            if (changedInstance4 || rememberedValue8 == neverEqualPolicy) {
                                rememberedValue8 = new SyncOptionsContentKt$$ExternalSyntheticLambda8(10, resources2);
                                gapComposer4.updateRememberedValue(rememberedValue8);
                            }
                            TextInputKt.SelectInput(immutableList4, specialFolderOption4, function16, null, (Function1) rememberedValue8, Operation$State.stringResource(gapComposer4, R.string.account_setup_special_folders_spam_folder_label), OAuthBearer.defaultItemPadding(gapComposer4), gapComposer4, 0, 8);
                            break;
                        }
                    default:
                        Composer composer5 = (Composer) obj3;
                        int intValue5 = ((Integer) obj4).intValue();
                        ((LazyItemScopeImpl) obj2).getClass();
                        GapComposer gapComposer5 = (GapComposer) composer5;
                        if (!gapComposer5.shouldExecute(intValue5 & 1, (intValue5 & 17) != 16)) {
                            gapComposer5.skipToGroupEnd();
                            break;
                        } else {
                            ImmutableList immutableList5 = Okio.toImmutableList(specialFoldersContract$FormState2.trashSpecialFolderOptions);
                            SpecialFolderOption specialFolderOption5 = specialFoldersContract$FormState2.selectedTrashSpecialFolderOption;
                            boolean changed5 = gapComposer5.changed(function12);
                            Object rememberedValue9 = gapComposer5.rememberedValue();
                            if (changed5 || rememberedValue9 == neverEqualPolicy) {
                                rememberedValue9 = new SequencesKt___SequencesKt$$ExternalSyntheticLambda0(16, function12);
                                gapComposer5.updateRememberedValue(rememberedValue9);
                            }
                            Function1 function17 = (Function1) rememberedValue9;
                            boolean changedInstance5 = gapComposer5.changedInstance(resources2);
                            Object rememberedValue10 = gapComposer5.rememberedValue();
                            if (changedInstance5 || rememberedValue10 == neverEqualPolicy) {
                                rememberedValue10 = new SyncOptionsContentKt$$ExternalSyntheticLambda8(7, resources2);
                                gapComposer5.updateRememberedValue(rememberedValue10);
                            }
                            TextInputKt.SelectInput(immutableList5, specialFolderOption5, function17, null, (Function1) rememberedValue10, Operation$State.stringResource(gapComposer5, R.string.account_setup_special_folders_trash_folder_label), OAuthBearer.defaultItemPadding(gapComposer5), gapComposer5, 0, 8);
                            break;
                        }
                }
                return unit;
            }
        }, true), 3);
        Config.CC.item$default(lazyListIntervalContent, null, new ComposableLambdaImpl(562525945, new Function3() { // from class: app.k9mail.feature.account.setup.ui.specialfolders.SpecialFoldersFormContentKt$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function3
            public final Object invoke(Object obj2, Object obj3, Object obj4) {
                int i42 = i;
                Unit unit = Unit.INSTANCE;
                NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
                Resources resources2 = resources;
                Function1 function12 = function1;
                SpecialFoldersContract$FormState specialFoldersContract$FormState2 = specialFoldersContract$FormState;
                switch (i42) {
                    case 0:
                        Composer composer = (Composer) obj3;
                        int intValue = ((Integer) obj4).intValue();
                        ((LazyItemScopeImpl) obj2).getClass();
                        GapComposer gapComposer = (GapComposer) composer;
                        if (!gapComposer.shouldExecute(intValue & 1, (intValue & 17) != 16)) {
                            gapComposer.skipToGroupEnd();
                            break;
                        } else {
                            ImmutableList immutableList = Okio.toImmutableList(specialFoldersContract$FormState2.archiveSpecialFolderOptions);
                            SpecialFolderOption specialFolderOption = specialFoldersContract$FormState2.selectedArchiveSpecialFolderOption;
                            boolean changed = gapComposer.changed(function12);
                            Object rememberedValue = gapComposer.rememberedValue();
                            if (changed || rememberedValue == neverEqualPolicy) {
                                rememberedValue = new SequencesKt___SequencesKt$$ExternalSyntheticLambda0(18, function12);
                                gapComposer.updateRememberedValue(rememberedValue);
                            }
                            Function1 function13 = (Function1) rememberedValue;
                            boolean changedInstance = gapComposer.changedInstance(resources2);
                            Object rememberedValue2 = gapComposer.rememberedValue();
                            if (changedInstance || rememberedValue2 == neverEqualPolicy) {
                                rememberedValue2 = new SyncOptionsContentKt$$ExternalSyntheticLambda8(9, resources2);
                                gapComposer.updateRememberedValue(rememberedValue2);
                            }
                            TextInputKt.SelectInput(immutableList, specialFolderOption, function13, null, (Function1) rememberedValue2, Operation$State.stringResource(gapComposer, R.string.account_setup_special_folders_archive_folder_label), OAuthBearer.defaultItemPadding(gapComposer), gapComposer, 0, 8);
                            break;
                        }
                    case 1:
                        Composer composer2 = (Composer) obj3;
                        int intValue2 = ((Integer) obj4).intValue();
                        ((LazyItemScopeImpl) obj2).getClass();
                        GapComposer gapComposer2 = (GapComposer) composer2;
                        if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 17) != 16)) {
                            gapComposer2.skipToGroupEnd();
                            break;
                        } else {
                            ImmutableList immutableList2 = Okio.toImmutableList(specialFoldersContract$FormState2.draftsSpecialFolderOptions);
                            SpecialFolderOption specialFolderOption2 = specialFoldersContract$FormState2.selectedDraftsSpecialFolderOption;
                            boolean changed2 = gapComposer2.changed(function12);
                            Object rememberedValue3 = gapComposer2.rememberedValue();
                            if (changed2 || rememberedValue3 == neverEqualPolicy) {
                                rememberedValue3 = new SequencesKt___SequencesKt$$ExternalSyntheticLambda0(20, function12);
                                gapComposer2.updateRememberedValue(rememberedValue3);
                            }
                            Function1 function14 = (Function1) rememberedValue3;
                            boolean changedInstance2 = gapComposer2.changedInstance(resources2);
                            Object rememberedValue4 = gapComposer2.rememberedValue();
                            if (changedInstance2 || rememberedValue4 == neverEqualPolicy) {
                                rememberedValue4 = new SyncOptionsContentKt$$ExternalSyntheticLambda8(6, resources2);
                                gapComposer2.updateRememberedValue(rememberedValue4);
                            }
                            TextInputKt.SelectInput(immutableList2, specialFolderOption2, function14, null, (Function1) rememberedValue4, Operation$State.stringResource(gapComposer2, R.string.account_setup_special_folders_drafts_folder_label), OAuthBearer.defaultItemPadding(gapComposer2), gapComposer2, 0, 8);
                            break;
                        }
                    case 2:
                        Composer composer3 = (Composer) obj3;
                        int intValue3 = ((Integer) obj4).intValue();
                        ((LazyItemScopeImpl) obj2).getClass();
                        GapComposer gapComposer3 = (GapComposer) composer3;
                        if (!gapComposer3.shouldExecute(intValue3 & 1, (intValue3 & 17) != 16)) {
                            gapComposer3.skipToGroupEnd();
                            break;
                        } else {
                            ImmutableList immutableList3 = Okio.toImmutableList(specialFoldersContract$FormState2.sentSpecialFolderOptions);
                            SpecialFolderOption specialFolderOption3 = specialFoldersContract$FormState2.selectedSentSpecialFolderOption;
                            boolean changed3 = gapComposer3.changed(function12);
                            Object rememberedValue5 = gapComposer3.rememberedValue();
                            if (changed3 || rememberedValue5 == neverEqualPolicy) {
                                rememberedValue5 = new SequencesKt___SequencesKt$$ExternalSyntheticLambda0(17, function12);
                                gapComposer3.updateRememberedValue(rememberedValue5);
                            }
                            Function1 function15 = (Function1) rememberedValue5;
                            boolean changedInstance3 = gapComposer3.changedInstance(resources2);
                            Object rememberedValue6 = gapComposer3.rememberedValue();
                            if (changedInstance3 || rememberedValue6 == neverEqualPolicy) {
                                rememberedValue6 = new SyncOptionsContentKt$$ExternalSyntheticLambda8(8, resources2);
                                gapComposer3.updateRememberedValue(rememberedValue6);
                            }
                            TextInputKt.SelectInput(immutableList3, specialFolderOption3, function15, null, (Function1) rememberedValue6, Operation$State.stringResource(gapComposer3, R.string.account_setup_special_folders_sent_folder_label), OAuthBearer.defaultItemPadding(gapComposer3), gapComposer3, 0, 8);
                            break;
                        }
                    case 3:
                        Composer composer4 = (Composer) obj3;
                        int intValue4 = ((Integer) obj4).intValue();
                        ((LazyItemScopeImpl) obj2).getClass();
                        GapComposer gapComposer4 = (GapComposer) composer4;
                        if (!gapComposer4.shouldExecute(intValue4 & 1, (intValue4 & 17) != 16)) {
                            gapComposer4.skipToGroupEnd();
                            break;
                        } else {
                            ImmutableList immutableList4 = Okio.toImmutableList(specialFoldersContract$FormState2.spamSpecialFolderOptions);
                            SpecialFolderOption specialFolderOption4 = specialFoldersContract$FormState2.selectedSpamSpecialFolderOption;
                            boolean changed4 = gapComposer4.changed(function12);
                            Object rememberedValue7 = gapComposer4.rememberedValue();
                            if (changed4 || rememberedValue7 == neverEqualPolicy) {
                                rememberedValue7 = new SequencesKt___SequencesKt$$ExternalSyntheticLambda0(19, function12);
                                gapComposer4.updateRememberedValue(rememberedValue7);
                            }
                            Function1 function16 = (Function1) rememberedValue7;
                            boolean changedInstance4 = gapComposer4.changedInstance(resources2);
                            Object rememberedValue8 = gapComposer4.rememberedValue();
                            if (changedInstance4 || rememberedValue8 == neverEqualPolicy) {
                                rememberedValue8 = new SyncOptionsContentKt$$ExternalSyntheticLambda8(10, resources2);
                                gapComposer4.updateRememberedValue(rememberedValue8);
                            }
                            TextInputKt.SelectInput(immutableList4, specialFolderOption4, function16, null, (Function1) rememberedValue8, Operation$State.stringResource(gapComposer4, R.string.account_setup_special_folders_spam_folder_label), OAuthBearer.defaultItemPadding(gapComposer4), gapComposer4, 0, 8);
                            break;
                        }
                    default:
                        Composer composer5 = (Composer) obj3;
                        int intValue5 = ((Integer) obj4).intValue();
                        ((LazyItemScopeImpl) obj2).getClass();
                        GapComposer gapComposer5 = (GapComposer) composer5;
                        if (!gapComposer5.shouldExecute(intValue5 & 1, (intValue5 & 17) != 16)) {
                            gapComposer5.skipToGroupEnd();
                            break;
                        } else {
                            ImmutableList immutableList5 = Okio.toImmutableList(specialFoldersContract$FormState2.trashSpecialFolderOptions);
                            SpecialFolderOption specialFolderOption5 = specialFoldersContract$FormState2.selectedTrashSpecialFolderOption;
                            boolean changed5 = gapComposer5.changed(function12);
                            Object rememberedValue9 = gapComposer5.rememberedValue();
                            if (changed5 || rememberedValue9 == neverEqualPolicy) {
                                rememberedValue9 = new SequencesKt___SequencesKt$$ExternalSyntheticLambda0(16, function12);
                                gapComposer5.updateRememberedValue(rememberedValue9);
                            }
                            Function1 function17 = (Function1) rememberedValue9;
                            boolean changedInstance5 = gapComposer5.changedInstance(resources2);
                            Object rememberedValue10 = gapComposer5.rememberedValue();
                            if (changedInstance5 || rememberedValue10 == neverEqualPolicy) {
                                rememberedValue10 = new SyncOptionsContentKt$$ExternalSyntheticLambda8(7, resources2);
                                gapComposer5.updateRememberedValue(rememberedValue10);
                            }
                            TextInputKt.SelectInput(immutableList5, specialFolderOption5, function17, null, (Function1) rememberedValue10, Operation$State.stringResource(gapComposer5, R.string.account_setup_special_folders_trash_folder_label), OAuthBearer.defaultItemPadding(gapComposer5), gapComposer5, 0, 8);
                            break;
                        }
                }
                return unit;
            }
        }, true), 3);
        final int i5 = 4;
        Config.CC.item$default(lazyListIntervalContent, null, new ComposableLambdaImpl(427943256, new Function3() { // from class: app.k9mail.feature.account.setup.ui.specialfolders.SpecialFoldersFormContentKt$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function3
            public final Object invoke(Object obj2, Object obj3, Object obj4) {
                int i42 = i5;
                Unit unit = Unit.INSTANCE;
                NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
                Resources resources2 = resources;
                Function1 function12 = function1;
                SpecialFoldersContract$FormState specialFoldersContract$FormState2 = specialFoldersContract$FormState;
                switch (i42) {
                    case 0:
                        Composer composer = (Composer) obj3;
                        int intValue = ((Integer) obj4).intValue();
                        ((LazyItemScopeImpl) obj2).getClass();
                        GapComposer gapComposer = (GapComposer) composer;
                        if (!gapComposer.shouldExecute(intValue & 1, (intValue & 17) != 16)) {
                            gapComposer.skipToGroupEnd();
                            break;
                        } else {
                            ImmutableList immutableList = Okio.toImmutableList(specialFoldersContract$FormState2.archiveSpecialFolderOptions);
                            SpecialFolderOption specialFolderOption = specialFoldersContract$FormState2.selectedArchiveSpecialFolderOption;
                            boolean changed = gapComposer.changed(function12);
                            Object rememberedValue = gapComposer.rememberedValue();
                            if (changed || rememberedValue == neverEqualPolicy) {
                                rememberedValue = new SequencesKt___SequencesKt$$ExternalSyntheticLambda0(18, function12);
                                gapComposer.updateRememberedValue(rememberedValue);
                            }
                            Function1 function13 = (Function1) rememberedValue;
                            boolean changedInstance = gapComposer.changedInstance(resources2);
                            Object rememberedValue2 = gapComposer.rememberedValue();
                            if (changedInstance || rememberedValue2 == neverEqualPolicy) {
                                rememberedValue2 = new SyncOptionsContentKt$$ExternalSyntheticLambda8(9, resources2);
                                gapComposer.updateRememberedValue(rememberedValue2);
                            }
                            TextInputKt.SelectInput(immutableList, specialFolderOption, function13, null, (Function1) rememberedValue2, Operation$State.stringResource(gapComposer, R.string.account_setup_special_folders_archive_folder_label), OAuthBearer.defaultItemPadding(gapComposer), gapComposer, 0, 8);
                            break;
                        }
                    case 1:
                        Composer composer2 = (Composer) obj3;
                        int intValue2 = ((Integer) obj4).intValue();
                        ((LazyItemScopeImpl) obj2).getClass();
                        GapComposer gapComposer2 = (GapComposer) composer2;
                        if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 17) != 16)) {
                            gapComposer2.skipToGroupEnd();
                            break;
                        } else {
                            ImmutableList immutableList2 = Okio.toImmutableList(specialFoldersContract$FormState2.draftsSpecialFolderOptions);
                            SpecialFolderOption specialFolderOption2 = specialFoldersContract$FormState2.selectedDraftsSpecialFolderOption;
                            boolean changed2 = gapComposer2.changed(function12);
                            Object rememberedValue3 = gapComposer2.rememberedValue();
                            if (changed2 || rememberedValue3 == neverEqualPolicy) {
                                rememberedValue3 = new SequencesKt___SequencesKt$$ExternalSyntheticLambda0(20, function12);
                                gapComposer2.updateRememberedValue(rememberedValue3);
                            }
                            Function1 function14 = (Function1) rememberedValue3;
                            boolean changedInstance2 = gapComposer2.changedInstance(resources2);
                            Object rememberedValue4 = gapComposer2.rememberedValue();
                            if (changedInstance2 || rememberedValue4 == neverEqualPolicy) {
                                rememberedValue4 = new SyncOptionsContentKt$$ExternalSyntheticLambda8(6, resources2);
                                gapComposer2.updateRememberedValue(rememberedValue4);
                            }
                            TextInputKt.SelectInput(immutableList2, specialFolderOption2, function14, null, (Function1) rememberedValue4, Operation$State.stringResource(gapComposer2, R.string.account_setup_special_folders_drafts_folder_label), OAuthBearer.defaultItemPadding(gapComposer2), gapComposer2, 0, 8);
                            break;
                        }
                    case 2:
                        Composer composer3 = (Composer) obj3;
                        int intValue3 = ((Integer) obj4).intValue();
                        ((LazyItemScopeImpl) obj2).getClass();
                        GapComposer gapComposer3 = (GapComposer) composer3;
                        if (!gapComposer3.shouldExecute(intValue3 & 1, (intValue3 & 17) != 16)) {
                            gapComposer3.skipToGroupEnd();
                            break;
                        } else {
                            ImmutableList immutableList3 = Okio.toImmutableList(specialFoldersContract$FormState2.sentSpecialFolderOptions);
                            SpecialFolderOption specialFolderOption3 = specialFoldersContract$FormState2.selectedSentSpecialFolderOption;
                            boolean changed3 = gapComposer3.changed(function12);
                            Object rememberedValue5 = gapComposer3.rememberedValue();
                            if (changed3 || rememberedValue5 == neverEqualPolicy) {
                                rememberedValue5 = new SequencesKt___SequencesKt$$ExternalSyntheticLambda0(17, function12);
                                gapComposer3.updateRememberedValue(rememberedValue5);
                            }
                            Function1 function15 = (Function1) rememberedValue5;
                            boolean changedInstance3 = gapComposer3.changedInstance(resources2);
                            Object rememberedValue6 = gapComposer3.rememberedValue();
                            if (changedInstance3 || rememberedValue6 == neverEqualPolicy) {
                                rememberedValue6 = new SyncOptionsContentKt$$ExternalSyntheticLambda8(8, resources2);
                                gapComposer3.updateRememberedValue(rememberedValue6);
                            }
                            TextInputKt.SelectInput(immutableList3, specialFolderOption3, function15, null, (Function1) rememberedValue6, Operation$State.stringResource(gapComposer3, R.string.account_setup_special_folders_sent_folder_label), OAuthBearer.defaultItemPadding(gapComposer3), gapComposer3, 0, 8);
                            break;
                        }
                    case 3:
                        Composer composer4 = (Composer) obj3;
                        int intValue4 = ((Integer) obj4).intValue();
                        ((LazyItemScopeImpl) obj2).getClass();
                        GapComposer gapComposer4 = (GapComposer) composer4;
                        if (!gapComposer4.shouldExecute(intValue4 & 1, (intValue4 & 17) != 16)) {
                            gapComposer4.skipToGroupEnd();
                            break;
                        } else {
                            ImmutableList immutableList4 = Okio.toImmutableList(specialFoldersContract$FormState2.spamSpecialFolderOptions);
                            SpecialFolderOption specialFolderOption4 = specialFoldersContract$FormState2.selectedSpamSpecialFolderOption;
                            boolean changed4 = gapComposer4.changed(function12);
                            Object rememberedValue7 = gapComposer4.rememberedValue();
                            if (changed4 || rememberedValue7 == neverEqualPolicy) {
                                rememberedValue7 = new SequencesKt___SequencesKt$$ExternalSyntheticLambda0(19, function12);
                                gapComposer4.updateRememberedValue(rememberedValue7);
                            }
                            Function1 function16 = (Function1) rememberedValue7;
                            boolean changedInstance4 = gapComposer4.changedInstance(resources2);
                            Object rememberedValue8 = gapComposer4.rememberedValue();
                            if (changedInstance4 || rememberedValue8 == neverEqualPolicy) {
                                rememberedValue8 = new SyncOptionsContentKt$$ExternalSyntheticLambda8(10, resources2);
                                gapComposer4.updateRememberedValue(rememberedValue8);
                            }
                            TextInputKt.SelectInput(immutableList4, specialFolderOption4, function16, null, (Function1) rememberedValue8, Operation$State.stringResource(gapComposer4, R.string.account_setup_special_folders_spam_folder_label), OAuthBearer.defaultItemPadding(gapComposer4), gapComposer4, 0, 8);
                            break;
                        }
                    default:
                        Composer composer5 = (Composer) obj3;
                        int intValue5 = ((Integer) obj4).intValue();
                        ((LazyItemScopeImpl) obj2).getClass();
                        GapComposer gapComposer5 = (GapComposer) composer5;
                        if (!gapComposer5.shouldExecute(intValue5 & 1, (intValue5 & 17) != 16)) {
                            gapComposer5.skipToGroupEnd();
                            break;
                        } else {
                            ImmutableList immutableList5 = Okio.toImmutableList(specialFoldersContract$FormState2.trashSpecialFolderOptions);
                            SpecialFolderOption specialFolderOption5 = specialFoldersContract$FormState2.selectedTrashSpecialFolderOption;
                            boolean changed5 = gapComposer5.changed(function12);
                            Object rememberedValue9 = gapComposer5.rememberedValue();
                            if (changed5 || rememberedValue9 == neverEqualPolicy) {
                                rememberedValue9 = new SequencesKt___SequencesKt$$ExternalSyntheticLambda0(16, function12);
                                gapComposer5.updateRememberedValue(rememberedValue9);
                            }
                            Function1 function17 = (Function1) rememberedValue9;
                            boolean changedInstance5 = gapComposer5.changedInstance(resources2);
                            Object rememberedValue10 = gapComposer5.rememberedValue();
                            if (changedInstance5 || rememberedValue10 == neverEqualPolicy) {
                                rememberedValue10 = new SyncOptionsContentKt$$ExternalSyntheticLambda8(7, resources2);
                                gapComposer5.updateRememberedValue(rememberedValue10);
                            }
                            TextInputKt.SelectInput(immutableList5, specialFolderOption5, function17, null, (Function1) rememberedValue10, Operation$State.stringResource(gapComposer5, R.string.account_setup_special_folders_trash_folder_label), OAuthBearer.defaultItemPadding(gapComposer5), gapComposer5, 0, 8);
                            break;
                        }
                }
                return unit;
            }
        }, true), 3);
        Config.CC.item$default(lazyListIntervalContent, null, SpecialFoldersScreenKt.lambda$293360567, 3);
        return Unit.INSTANCE;
    }

    private final Object invoke$com$fsck$k9$preferences$XmlSettingsParser$$ExternalSyntheticLambda0(Object obj) {
        ConnectionPool connectionPool = (ConnectionPool) this.f$0;
        Ref$ObjectRef ref$ObjectRef = (Ref$ObjectRef) this.f$1;
        Ref$ObjectRef ref$ObjectRef2 = (Ref$ObjectRef) this.f$2;
        if (((Integer) obj).intValue() == 2) {
            String name = ((XmlPullParser) connectionPool.delegate).getName();
            int i = 0;
            if (Intrinsics.areEqual(name, "global")) {
                if (ref$ObjectRef.element == null) {
                    ref$ObjectRef.element = connectionPool.readSettingsContainer();
                } else {
                    Log.w("More than one 'global' element!", new Object[0]);
                    connectionPool.skipElement();
                }
            } else if (!Intrinsics.areEqual(name, "accounts")) {
                connectionPool.skipElement();
            } else if (ref$ObjectRef2.element == null) {
                ArrayList arrayList = new ArrayList();
                connectionPool.readElement(new XmlSettingsParser$$ExternalSyntheticLambda2(connectionPool, arrayList, i));
                ref$ObjectRef2.element = arrayList;
            } else {
                Log.w("More than one 'accounts' element!", new Object[0]);
                connectionPool.skipElement();
            }
        }
        return Unit.INSTANCE;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v6, types: [androidx.compose.ui.text.input.TextFieldValue] */
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        long Color;
        Canvas canvas;
        AnnotatedString.Range range;
        Integer previousWordOffset;
        Integer nextWordOffset;
        Integer nextWordOffset2;
        Integer previousWordOffset2;
        TextLayoutResult textLayoutResult;
        TextLayoutResult textLayoutResult2;
        TextLayoutResultProxy textLayoutResultProxy;
        TextLayoutResultProxy textLayoutResultProxy2;
        TextLayoutResult textLayoutResult3;
        TextLayoutResult textLayoutResult4;
        TextLayoutResultProxy textLayoutResultProxy3;
        TextLayoutResultProxy textLayoutResultProxy4;
        Integer nextWordOffset3;
        Integer previousWordOffset3;
        Integer previousWordOffset4;
        Integer nextWordOffset4;
        CardView.AnonymousClass1 anonymousClass1;
        boolean z;
        LegacyTextFieldState legacyTextFieldState;
        int i = this.$r8$classId;
        final int i2 = 2;
        int i3 = 23;
        int i4 = 20;
        int i5 = 3;
        Continuation continuation = null;
        TextFieldValue textFieldValue = null;
        continuation = null;
        Unit unit = Unit.INSTANCE;
        int i6 = 1;
        Object obj2 = this.f$1;
        Object obj3 = this.f$2;
        Object obj4 = this.f$0;
        switch (i) {
            case 0:
                K9KoinModuleKt$$ExternalSyntheticLambda2 k9KoinModuleKt$$ExternalSyntheticLambda2 = (K9KoinModuleKt$$ExternalSyntheticLambda2) obj3;
                Throwable th = (Throwable) obj;
                ((DiskLruCache$$ExternalSyntheticLambda0) obj4).invoke(th);
                BufferedChannel bufferedChannel = (BufferedChannel) ((Dispatcher) obj2).runningAsyncCalls;
                bufferedChannel.closeOrCancelImpl(th, false);
                while (true) {
                    Object m1017getOrNullimpl = ChannelResult.m1017getOrNullimpl(bufferedChannel.mo1015tryReceivePtdJZtk());
                    if (m1017getOrNullimpl == null) {
                        return unit;
                    }
                    k9KoinModuleKt$$ExternalSyntheticLambda2.invoke(m1017getOrNullimpl, th);
                }
            case 1:
                Deferred deferred = (Deferred) obj4;
                CompletableDeferredImpl completableDeferredImpl = (CompletableDeferredImpl) obj2;
                BorderKt$$ExternalSyntheticLambda1 borderKt$$ExternalSyntheticLambda1 = (BorderKt$$ExternalSyntheticLambda1) obj3;
                Throwable th2 = (Throwable) obj;
                if (th2 == null) {
                    borderKt$$ExternalSyntheticLambda1.invoke(deferred.getCompleted());
                    completableDeferredImpl.makeCompleting$kotlinx_coroutines_core(unit);
                } else if (th2 instanceof CancellationException) {
                    completableDeferredImpl.cancelInternal((CancellationException) th2);
                } else {
                    completableDeferredImpl.completeExceptionally(th2);
                }
                return unit;
            case 2:
                StillCaptureRequestControl stillCaptureRequestControl = (StillCaptureRequestControl) obj4;
                UseCaseCameraRequestControl useCaseCameraRequestControl = (UseCaseCameraRequestControl) obj3;
                Throwable th3 = (Throwable) obj;
                if (!(th3 instanceof ImageCaptureException) || ((ImageCaptureException) th3).mImageCaptureError != 3) {
                    throw null;
                }
                JobKt.launch$default(stillCaptureRequestControl.threads.sequentialScope, null, null, new MutatorMutex$mutate$2(stillCaptureRequestControl, useCaseCameraRequestControl, (StillCaptureRequestControl.CaptureRequest) null, (Continuation) null), 3);
                return unit;
            case 3:
                Void r0 = (Void) obj;
                ((LockableDatabase) obj4).initInternal((CameraX) obj2, ContextUtil.getPersistentApplicationContext((Context) obj3));
                return r0;
            case 4:
                ContentInViewNode contentInViewNode = (ContentInViewNode) obj4;
                Job job = (Job) obj2;
                ScrollingLogic$nestedScrollScope$1 scrollingLogic$nestedScrollScope$1 = (ScrollingLogic$nestedScrollScope$1) obj3;
                float floatValue = ((Float) obj).floatValue();
                float f = contentInViewNode.reverseDirection ? 1.0f : -1.0f;
                ScrollingLogic scrollingLogic = contentInViewNode.scrollingLogic;
                long m192reverseIfNeededMKHz9U = scrollingLogic.m192reverseIfNeededMKHz9U(scrollingLogic.m194toOffsettuRUvjQ(f * floatValue));
                ScrollingLogic scrollingLogic2 = scrollingLogic$nestedScrollScope$1.this$0;
                float m193toFloatk4lQ0M = scrollingLogic.m193toFloatk4lQ0M(scrollingLogic.m192reverseIfNeededMKHz9U(scrollingLogic2.m191performScroll3eAAhYA(scrollingLogic2.outerStateScope, m192reverseIfNeededMKHz9U, 1))) * f;
                if (Math.abs(m193toFloatk4lQ0M) < Math.abs(floatValue)) {
                    job.cancel(JobKt.CancellationException("Scroll animation cancelled because scroll was not consumed (" + m193toFloatk4lQ0M + " < " + floatValue + ')', null));
                }
                return unit;
            case 5:
                Function1 function1 = (Function1) obj4;
                MutableState mutableState = (MutableState) obj3;
                TextFieldValue textFieldValue2 = (TextFieldValue) obj;
                ((MutableState) obj2).setValue(textFieldValue2);
                boolean areEqual = Intrinsics.areEqual((String) mutableState.getValue(), textFieldValue2.annotatedString.text);
                AnnotatedString annotatedString = textFieldValue2.annotatedString;
                mutableState.setValue(annotatedString.text);
                if (!areEqual) {
                    function1.invoke(annotatedString.text);
                }
                return unit;
            case 6:
                LegacyTextFieldState legacyTextFieldState2 = (LegacyTextFieldState) obj4;
                TextFieldValue textFieldValue3 = (TextFieldValue) obj2;
                OffsetMapping offsetMapping = (OffsetMapping) obj3;
                DrawScope drawScope = (DrawScope) obj;
                TextLayoutResultProxy layoutResult = legacyTextFieldState2.getLayoutResult();
                if (layoutResult != null) {
                    Canvas canvas2 = drawScope.getDrawContext().getCanvas();
                    long j = ((TextRange) legacyTextFieldState2.selectionPreviewHighlightRange$delegate.getValue()).packedValue;
                    long j2 = ((TextRange) legacyTextFieldState2.deletionPreviewHighlightRange$delegate.getValue()).packedValue;
                    TextLayoutResult textLayoutResult5 = layoutResult.value;
                    MultiParagraph multiParagraph = textLayoutResult5.multiParagraph;
                    TextLayoutInput textLayoutInput = textLayoutResult5.layoutInput;
                    AndroidPaint androidPaint = legacyTextFieldState2.highlightPaint;
                    long j3 = legacyTextFieldState2.selectionBackgroundColor;
                    if (!TextRange.m699getCollapsedimpl(j)) {
                        androidPaint.m464setColor8_81llA(j3);
                        int originalToTransformed = offsetMapping.originalToTransformed(TextRange.m702getMinimpl(j));
                        int originalToTransformed2 = offsetMapping.originalToTransformed(TextRange.m701getMaximpl(j));
                        if (originalToTransformed != originalToTransformed2) {
                            canvas2.drawPath(textLayoutResult5.getPathForRange(originalToTransformed, originalToTransformed2), androidPaint);
                        }
                    } else if (!TextRange.m699getCollapsedimpl(j2)) {
                        long m707getColor0d7_KjU = textLayoutInput.style.m707getColor0d7_KjU();
                        Color color = m707getColor0d7_KjU == 16 ? null : new Color(m707getColor0d7_KjU);
                        long j4 = color != null ? color.value : Color.Black;
                        Color = ColorKt.Color(Color.m487getRedimpl(j4), Color.m486getGreenimpl(j4), Color.m484getBlueimpl(j4), Color.m483getAlphaimpl(j4) * 0.2f, Color.m485getColorSpaceimpl(j4));
                        androidPaint.m464setColor8_81llA(Color);
                        int originalToTransformed3 = offsetMapping.originalToTransformed(TextRange.m702getMinimpl(j2));
                        int originalToTransformed4 = offsetMapping.originalToTransformed(TextRange.m701getMaximpl(j2));
                        if (originalToTransformed3 != originalToTransformed4) {
                            canvas2.drawPath(textLayoutResult5.getPathForRange(originalToTransformed3, originalToTransformed4), androidPaint);
                        }
                    } else if (!TextRange.m699getCollapsedimpl(textFieldValue3.selection)) {
                        androidPaint.m464setColor8_81llA(j3);
                        long j5 = textFieldValue3.selection;
                        int originalToTransformed5 = offsetMapping.originalToTransformed(TextRange.m702getMinimpl(j5));
                        int originalToTransformed6 = offsetMapping.originalToTransformed(TextRange.m701getMaximpl(j5));
                        if (originalToTransformed5 != originalToTransformed6) {
                            canvas2.drawPath(textLayoutResult5.getPathForRange(originalToTransformed5, originalToTransformed6), androidPaint);
                        }
                    }
                    boolean z2 = textLayoutResult5.getHasVisualOverflow() && textLayoutInput.overflow != 3;
                    if (z2) {
                        long j6 = textLayoutResult5.size;
                        Rect m1090Recttz77jQw = Util.m1090Recttz77jQw(0L, (Float.floatToRawIntBits((int) (j6 & 4294967295L)) & 4294967295L) | (Float.floatToRawIntBits((int) (j6 >> 32)) << 32));
                        canvas2.save();
                        canvas2.mo455clipRectmtrdDE(m1090Recttz77jQw);
                    }
                    SpanStyle spanStyle = textLayoutInput.style.spanStyle;
                    TextDecoration textDecoration = spanStyle.textDecoration;
                    TextForegroundStyle textForegroundStyle = spanStyle.textForegroundStyle;
                    if (textDecoration == null) {
                        textDecoration = TextDecoration.None;
                    }
                    TextDecoration textDecoration2 = textDecoration;
                    Shadow shadow = spanStyle.shadow;
                    if (shadow == null) {
                        shadow = Shadow.None;
                    }
                    Shadow shadow2 = shadow;
                    DrawStyle drawStyle = spanStyle.drawStyle;
                    if (drawStyle == null) {
                        drawStyle = Fill.INSTANCE;
                    }
                    DrawStyle drawStyle2 = drawStyle;
                    try {
                        Brush brush = textForegroundStyle.getBrush();
                        TextForegroundStyle.Unspecified unspecified = TextForegroundStyle.Unspecified.INSTANCE;
                        try {
                            if (brush != null) {
                                canvas = canvas2;
                                MultiParagraph.m685painthn5TExg$default(multiParagraph, canvas, brush, textForegroundStyle != unspecified ? textForegroundStyle.getAlpha() : 1.0f, shadow2, textDecoration2, drawStyle2);
                            } else {
                                canvas = canvas2;
                                MultiParagraph.m684paintLG529CI$default(multiParagraph, canvas, textForegroundStyle != unspecified ? textForegroundStyle.mo720getColor0d7_KjU() : Color.Black, shadow2, textDecoration2, drawStyle2);
                            }
                            if (z2) {
                                canvas.restore();
                            }
                        } catch (Throwable th4) {
                            th = th4;
                            if (z2) {
                                canvas2.restore();
                            }
                            throw th;
                        }
                    } catch (Throwable th5) {
                        th = th5;
                    }
                }
                return unit;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                Ref$BooleanRef ref$BooleanRef = (Ref$BooleanRef) obj4;
                AnnotatedString.Range range2 = (AnnotatedString.Range) obj2;
                SpanStyle spanStyle2 = (SpanStyle) obj3;
                AnnotatedString.Range range3 = (AnnotatedString.Range) obj;
                if (ref$BooleanRef.element) {
                    Object obj5 = range3.item;
                    int i7 = range3.end;
                    int i8 = range3.start;
                    if ((obj5 instanceof SpanStyle) && i8 == range2.start && i7 == range2.end) {
                        if (spanStyle2 == null) {
                            spanStyle2 = new SpanStyle(0L, 0L, (FontWeight) null, (FontStyle) null, (FontSynthesis) null, (SystemFontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, 65535);
                        }
                        range = new AnnotatedString.Range(i8, i7, spanStyle2);
                        ref$BooleanRef.element = range2.equals(range3);
                        return range;
                    }
                }
                range = range3;
                ref$BooleanRef.element = range2.equals(range3);
                return range;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                Function1 function12 = (Function1) obj2;
                TextInputSession textInputSession = (TextInputSession) ((Ref$ObjectRef) obj3).element;
                TextFieldValue apply = ((WeakCache) obj4).apply((List) obj);
                if (textInputSession != null) {
                    textInputSession.updateState(null, apply);
                }
                function12.invoke(apply);
                return unit;
            case 9:
                TextFieldKeyInput textFieldKeyInput = (TextFieldKeyInput) obj2;
                Ref$BooleanRef ref$BooleanRef2 = (Ref$BooleanRef) obj3;
                TextFieldPreparedSelection textFieldPreparedSelection = (TextFieldPreparedSelection) obj;
                int ordinal = ((KeyCommand) obj4).ordinal();
                int i9 = 24;
                switch (ordinal) {
                    case 0:
                        textFieldPreparedSelection.state.cachedX = null;
                        if (textFieldPreparedSelection.annotatedString.text.length() > 0) {
                            if (TextRange.m699getCollapsedimpl(textFieldPreparedSelection.selection)) {
                                textFieldPreparedSelection.moveCursorLeft();
                                break;
                            } else {
                                boolean isLtr = textFieldPreparedSelection.isLtr();
                                long j7 = textFieldPreparedSelection.selection;
                                if (isLtr) {
                                    int m702getMinimpl = TextRange.m702getMinimpl(j7);
                                    textFieldPreparedSelection.setSelection(m702getMinimpl, m702getMinimpl);
                                    break;
                                } else {
                                    int m701getMaximpl = TextRange.m701getMaximpl(j7);
                                    textFieldPreparedSelection.setSelection(m701getMaximpl, m701getMaximpl);
                                    break;
                                }
                            }
                        }
                        break;
                    case 1:
                        textFieldPreparedSelection.state.cachedX = null;
                        if (textFieldPreparedSelection.annotatedString.text.length() > 0) {
                            if (TextRange.m699getCollapsedimpl(textFieldPreparedSelection.selection)) {
                                textFieldPreparedSelection.moveCursorRight();
                                break;
                            } else {
                                boolean isLtr2 = textFieldPreparedSelection.isLtr();
                                long j8 = textFieldPreparedSelection.selection;
                                if (isLtr2) {
                                    int m701getMaximpl2 = TextRange.m701getMaximpl(j8);
                                    textFieldPreparedSelection.setSelection(m701getMaximpl2, m701getMaximpl2);
                                    break;
                                } else {
                                    int m702getMinimpl2 = TextRange.m702getMinimpl(j8);
                                    textFieldPreparedSelection.setSelection(m702getMinimpl2, m702getMinimpl2);
                                    break;
                                }
                            }
                        }
                        break;
                    case 2:
                        TextPreparedSelectionState textPreparedSelectionState = textFieldPreparedSelection.state;
                        textPreparedSelectionState.cachedX = null;
                        AnnotatedString annotatedString2 = textFieldPreparedSelection.annotatedString;
                        String str = annotatedString2.text;
                        String str2 = annotatedString2.text;
                        if (str.length() > 0) {
                            if (textFieldPreparedSelection.isLtr()) {
                                textPreparedSelectionState.cachedX = null;
                                if (str2.length() > 0 && (nextWordOffset = textFieldPreparedSelection.getNextWordOffset()) != null) {
                                    int intValue = nextWordOffset.intValue();
                                    textFieldPreparedSelection.setSelection(intValue, intValue);
                                    break;
                                }
                            } else {
                                textPreparedSelectionState.cachedX = null;
                                if (str2.length() > 0 && (previousWordOffset = textFieldPreparedSelection.getPreviousWordOffset()) != null) {
                                    int intValue2 = previousWordOffset.intValue();
                                    textFieldPreparedSelection.setSelection(intValue2, intValue2);
                                    break;
                                }
                            }
                        }
                        break;
                    case 3:
                        TextPreparedSelectionState textPreparedSelectionState2 = textFieldPreparedSelection.state;
                        textPreparedSelectionState2.cachedX = null;
                        AnnotatedString annotatedString3 = textFieldPreparedSelection.annotatedString;
                        String str3 = annotatedString3.text;
                        String str4 = annotatedString3.text;
                        if (str3.length() > 0) {
                            if (textFieldPreparedSelection.isLtr()) {
                                textPreparedSelectionState2.cachedX = null;
                                if (str4.length() > 0 && (previousWordOffset2 = textFieldPreparedSelection.getPreviousWordOffset()) != null) {
                                    int intValue3 = previousWordOffset2.intValue();
                                    textFieldPreparedSelection.setSelection(intValue3, intValue3);
                                    break;
                                }
                            } else {
                                textPreparedSelectionState2.cachedX = null;
                                if (str4.length() > 0 && (nextWordOffset2 = textFieldPreparedSelection.getNextWordOffset()) != null) {
                                    int intValue4 = nextWordOffset2.intValue();
                                    textFieldPreparedSelection.setSelection(intValue4, intValue4);
                                    break;
                                }
                            }
                        }
                        break;
                    case 4:
                        textFieldPreparedSelection.moveCursorNextByParagraph();
                        break;
                    case 5:
                        textFieldPreparedSelection.moveCursorPrevByParagraph();
                        break;
                    case 6:
                        textFieldPreparedSelection.moveCursorToLineStart();
                        break;
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        textFieldPreparedSelection.moveCursorToLineEnd();
                        break;
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        textFieldPreparedSelection.state.cachedX = null;
                        if (textFieldPreparedSelection.annotatedString.text.length() > 0) {
                            if (textFieldPreparedSelection.isLtr()) {
                                textFieldPreparedSelection.moveCursorToLineStart();
                                break;
                            } else {
                                textFieldPreparedSelection.moveCursorToLineEnd();
                                break;
                            }
                        }
                        break;
                    case 9:
                        textFieldPreparedSelection.state.cachedX = null;
                        if (textFieldPreparedSelection.annotatedString.text.length() > 0) {
                            if (textFieldPreparedSelection.isLtr()) {
                                textFieldPreparedSelection.moveCursorToLineEnd();
                                break;
                            } else {
                                textFieldPreparedSelection.moveCursorToLineStart();
                                break;
                            }
                        }
                        break;
                    case 10:
                        if (textFieldPreparedSelection.annotatedString.text.length() > 0 && (textLayoutResult = textFieldPreparedSelection.layoutResult) != null) {
                            int jumpByLinesOffset = textFieldPreparedSelection.jumpByLinesOffset(textLayoutResult, -1);
                            textFieldPreparedSelection.setSelection(jumpByLinesOffset, jumpByLinesOffset);
                            break;
                        }
                        break;
                    case 11:
                        if (textFieldPreparedSelection.annotatedString.text.length() > 0 && (textLayoutResult2 = textFieldPreparedSelection.layoutResult) != null) {
                            int jumpByLinesOffset2 = textFieldPreparedSelection.jumpByLinesOffset(textLayoutResult2, 1);
                            textFieldPreparedSelection.setSelection(jumpByLinesOffset2, jumpByLinesOffset2);
                            break;
                        }
                        break;
                    case BasicTextKt.ShiftMeta /* 12 */:
                    case 48:
                        break;
                    case 13:
                        if (textFieldPreparedSelection.annotatedString.text.length() > 0 && (textLayoutResultProxy = textFieldPreparedSelection.layoutResultProxy) != null) {
                            int jumpByPagesOffset = textFieldPreparedSelection.jumpByPagesOffset(textLayoutResultProxy, -1);
                            textFieldPreparedSelection.setSelection(jumpByPagesOffset, jumpByPagesOffset);
                            break;
                        }
                        break;
                    case 14:
                        if (textFieldPreparedSelection.annotatedString.text.length() > 0 && (textLayoutResultProxy2 = textFieldPreparedSelection.layoutResultProxy) != null) {
                            int jumpByPagesOffset2 = textFieldPreparedSelection.jumpByPagesOffset(textLayoutResultProxy2, 1);
                            textFieldPreparedSelection.setSelection(jumpByPagesOffset2, jumpByPagesOffset2);
                            break;
                        }
                        break;
                    case OffsetKt.Horizontal /* 15 */:
                        textFieldPreparedSelection.state.cachedX = null;
                        if (textFieldPreparedSelection.annotatedString.text.length() > 0) {
                            textFieldPreparedSelection.setSelection(0, 0);
                            break;
                        }
                        break;
                    case 16:
                        textFieldPreparedSelection.state.cachedX = null;
                        AnnotatedString annotatedString4 = textFieldPreparedSelection.annotatedString;
                        if (annotatedString4.text.length() > 0) {
                            int length = annotatedString4.text.length();
                            textFieldPreparedSelection.setSelection(length, length);
                            break;
                        }
                        break;
                    case 17:
                        textFieldKeyInput.selectionManager.copy$foundation(false);
                        break;
                    case 18:
                        textFieldKeyInput.selectionManager.paste$foundation();
                        break;
                    case 19:
                        textFieldKeyInput.selectionManager.cut$foundation();
                        break;
                    case 20:
                        List deleteIfSelectedOr = textFieldPreparedSelection.deleteIfSelectedOr(new ScrollState$$ExternalSyntheticLambda4(19));
                        if (deleteIfSelectedOr != null) {
                            textFieldKeyInput.apply(deleteIfSelectedOr);
                            break;
                        }
                        break;
                    case 21:
                        List deleteIfSelectedOr2 = textFieldPreparedSelection.deleteIfSelectedOr(new ScrollState$$ExternalSyntheticLambda4(i4));
                        if (deleteIfSelectedOr2 != null) {
                            textFieldKeyInput.apply(deleteIfSelectedOr2);
                            break;
                        }
                        break;
                    case 22:
                        List deleteIfSelectedOr3 = textFieldPreparedSelection.deleteIfSelectedOr(new ScrollState$$ExternalSyntheticLambda4(21));
                        if (deleteIfSelectedOr3 != null) {
                            textFieldKeyInput.apply(deleteIfSelectedOr3);
                            break;
                        }
                        break;
                    case 23:
                        List deleteIfSelectedOr4 = textFieldPreparedSelection.deleteIfSelectedOr(new ScrollState$$ExternalSyntheticLambda4(22));
                        if (deleteIfSelectedOr4 != null) {
                            textFieldKeyInput.apply(deleteIfSelectedOr4);
                            break;
                        }
                        break;
                    case 24:
                        List deleteIfSelectedOr5 = textFieldPreparedSelection.deleteIfSelectedOr(new ScrollState$$ExternalSyntheticLambda4(i3));
                        if (deleteIfSelectedOr5 != null) {
                            textFieldKeyInput.apply(deleteIfSelectedOr5);
                            break;
                        }
                        break;
                    case 25:
                        List deleteIfSelectedOr6 = textFieldPreparedSelection.deleteIfSelectedOr(new ScrollState$$ExternalSyntheticLambda4(i9));
                        if (deleteIfSelectedOr6 != null) {
                            textFieldKeyInput.apply(deleteIfSelectedOr6);
                            break;
                        }
                        break;
                    case 26:
                        textFieldPreparedSelection.state.cachedX = null;
                        AnnotatedString annotatedString5 = textFieldPreparedSelection.annotatedString;
                        if (annotatedString5.text.length() > 0) {
                            textFieldPreparedSelection.setSelection(0, annotatedString5.text.length());
                            break;
                        }
                        break;
                    case 27:
                        textFieldPreparedSelection.moveCursorLeft();
                        textFieldPreparedSelection.selectMovement();
                        break;
                    case 28:
                        textFieldPreparedSelection.moveCursorRight();
                        textFieldPreparedSelection.selectMovement();
                        break;
                    case 29:
                        if (textFieldPreparedSelection.annotatedString.text.length() > 0 && (textLayoutResult3 = textFieldPreparedSelection.layoutResult) != null) {
                            int jumpByLinesOffset3 = textFieldPreparedSelection.jumpByLinesOffset(textLayoutResult3, -1);
                            textFieldPreparedSelection.setSelection(jumpByLinesOffset3, jumpByLinesOffset3);
                        }
                        textFieldPreparedSelection.selectMovement();
                        break;
                    case 30:
                        if (textFieldPreparedSelection.annotatedString.text.length() > 0 && (textLayoutResult4 = textFieldPreparedSelection.layoutResult) != null) {
                            int jumpByLinesOffset4 = textFieldPreparedSelection.jumpByLinesOffset(textLayoutResult4, 1);
                            textFieldPreparedSelection.setSelection(jumpByLinesOffset4, jumpByLinesOffset4);
                        }
                        textFieldPreparedSelection.selectMovement();
                        break;
                    case 31:
                        if (textFieldPreparedSelection.annotatedString.text.length() > 0 && (textLayoutResultProxy3 = textFieldPreparedSelection.layoutResultProxy) != null) {
                            int jumpByPagesOffset3 = textFieldPreparedSelection.jumpByPagesOffset(textLayoutResultProxy3, -1);
                            textFieldPreparedSelection.setSelection(jumpByPagesOffset3, jumpByPagesOffset3);
                        }
                        textFieldPreparedSelection.selectMovement();
                        break;
                    case 32:
                        if (textFieldPreparedSelection.annotatedString.text.length() > 0 && (textLayoutResultProxy4 = textFieldPreparedSelection.layoutResultProxy) != null) {
                            int jumpByPagesOffset4 = textFieldPreparedSelection.jumpByPagesOffset(textLayoutResultProxy4, 1);
                            textFieldPreparedSelection.setSelection(jumpByPagesOffset4, jumpByPagesOffset4);
                        }
                        textFieldPreparedSelection.selectMovement();
                        break;
                    case 33:
                        textFieldPreparedSelection.state.cachedX = null;
                        if (textFieldPreparedSelection.annotatedString.text.length() > 0) {
                            textFieldPreparedSelection.setSelection(0, 0);
                        }
                        textFieldPreparedSelection.selectMovement();
                        break;
                    case 34:
                        textFieldPreparedSelection.state.cachedX = null;
                        AnnotatedString annotatedString6 = textFieldPreparedSelection.annotatedString;
                        if (annotatedString6.text.length() > 0) {
                            int length2 = annotatedString6.text.length();
                            textFieldPreparedSelection.setSelection(length2, length2);
                        }
                        textFieldPreparedSelection.selectMovement();
                        break;
                    case 35:
                        TextPreparedSelectionState textPreparedSelectionState3 = textFieldPreparedSelection.state;
                        textPreparedSelectionState3.cachedX = null;
                        AnnotatedString annotatedString7 = textFieldPreparedSelection.annotatedString;
                        String str5 = annotatedString7.text;
                        String str6 = annotatedString7.text;
                        if (str5.length() > 0) {
                            if (textFieldPreparedSelection.isLtr()) {
                                textPreparedSelectionState3.cachedX = null;
                                if (str6.length() > 0 && (previousWordOffset3 = textFieldPreparedSelection.getPreviousWordOffset()) != null) {
                                    int intValue5 = previousWordOffset3.intValue();
                                    textFieldPreparedSelection.setSelection(intValue5, intValue5);
                                }
                            } else {
                                textPreparedSelectionState3.cachedX = null;
                                if (str6.length() > 0 && (nextWordOffset3 = textFieldPreparedSelection.getNextWordOffset()) != null) {
                                    int intValue6 = nextWordOffset3.intValue();
                                    textFieldPreparedSelection.setSelection(intValue6, intValue6);
                                }
                            }
                        }
                        textFieldPreparedSelection.selectMovement();
                        break;
                    case 36:
                        TextPreparedSelectionState textPreparedSelectionState4 = textFieldPreparedSelection.state;
                        textPreparedSelectionState4.cachedX = null;
                        AnnotatedString annotatedString8 = textFieldPreparedSelection.annotatedString;
                        String str7 = annotatedString8.text;
                        String str8 = annotatedString8.text;
                        if (str7.length() > 0) {
                            if (textFieldPreparedSelection.isLtr()) {
                                textPreparedSelectionState4.cachedX = null;
                                if (str8.length() > 0 && (nextWordOffset4 = textFieldPreparedSelection.getNextWordOffset()) != null) {
                                    int intValue7 = nextWordOffset4.intValue();
                                    textFieldPreparedSelection.setSelection(intValue7, intValue7);
                                }
                            } else {
                                textPreparedSelectionState4.cachedX = null;
                                if (str8.length() > 0 && (previousWordOffset4 = textFieldPreparedSelection.getPreviousWordOffset()) != null) {
                                    int intValue8 = previousWordOffset4.intValue();
                                    textFieldPreparedSelection.setSelection(intValue8, intValue8);
                                }
                            }
                        }
                        textFieldPreparedSelection.selectMovement();
                        break;
                    case 37:
                        textFieldPreparedSelection.moveCursorNextByParagraph();
                        textFieldPreparedSelection.selectMovement();
                        break;
                    case 38:
                        textFieldPreparedSelection.moveCursorPrevByParagraph();
                        textFieldPreparedSelection.selectMovement();
                        break;
                    case 39:
                        textFieldPreparedSelection.moveCursorToLineStart();
                        textFieldPreparedSelection.selectMovement();
                        break;
                    case 40:
                        textFieldPreparedSelection.moveCursorToLineEnd();
                        textFieldPreparedSelection.selectMovement();
                        break;
                    case 41:
                        textFieldPreparedSelection.state.cachedX = null;
                        if (textFieldPreparedSelection.annotatedString.text.length() > 0) {
                            if (textFieldPreparedSelection.isLtr()) {
                                textFieldPreparedSelection.moveCursorToLineStart();
                            } else {
                                textFieldPreparedSelection.moveCursorToLineEnd();
                            }
                        }
                        textFieldPreparedSelection.selectMovement();
                        break;
                    case 42:
                        textFieldPreparedSelection.state.cachedX = null;
                        if (textFieldPreparedSelection.annotatedString.text.length() > 0) {
                            if (textFieldPreparedSelection.isLtr()) {
                                textFieldPreparedSelection.moveCursorToLineEnd();
                            } else {
                                textFieldPreparedSelection.moveCursorToLineStart();
                            }
                        }
                        textFieldPreparedSelection.selectMovement();
                        break;
                    case 43:
                        textFieldPreparedSelection.state.cachedX = null;
                        if (textFieldPreparedSelection.annotatedString.text.length() > 0) {
                            long j9 = textFieldPreparedSelection.selection;
                            int i10 = TextRange.$r8$clinit;
                            int i11 = (int) (j9 & 4294967295L);
                            textFieldPreparedSelection.setSelection(i11, i11);
                            break;
                        }
                        break;
                    case 44:
                        if (textFieldKeyInput.singleLine) {
                            ref$BooleanRef2.element = textFieldKeyInput.state.onImeActionPerformedWithResult.f$0.keyboardActionRunner.m796runActionKlQnJC8(textFieldKeyInput.imeAction);
                            break;
                        } else {
                            textFieldKeyInput.apply(IntOffsetKt.listOf(new CommitTextCommand("\n", 1)));
                            break;
                        }
                    case 45:
                        if (textFieldKeyInput.singleLine) {
                            ref$BooleanRef2.element = false;
                            break;
                        } else {
                            textFieldKeyInput.apply(IntOffsetKt.listOf(new CommitTextCommand("\t", 1)));
                            break;
                        }
                    case 46:
                        UndoManager undoManager = textFieldKeyInput.undoManager;
                        if (undoManager != null) {
                            undoManager.makeSnapshot(TextFieldValue.m714copy3r_uNRQ$default(textFieldPreparedSelection.currentValue, textFieldPreparedSelection.annotatedString, textFieldPreparedSelection.selection, 4));
                        }
                        UndoManager undoManager2 = textFieldKeyInput.undoManager;
                        if (undoManager2 != null) {
                            CardView.AnonymousClass1 anonymousClass12 = undoManager2.undoStack;
                            if (anonymousClass12 != null && (anonymousClass1 = (CardView.AnonymousClass1) anonymousClass12.mCardBackground) != null) {
                                undoManager2.undoStack = anonymousClass1;
                                undoManager2.storedCharacters -= ((TextFieldValue) anonymousClass12.this$0).annotatedString.text.length();
                                undoManager2.redoStack = new CardView.AnonymousClass1(i9, undoManager2.redoStack, (TextFieldValue) anonymousClass12.this$0, false);
                                continuation = (TextFieldValue) anonymousClass1.this$0;
                            }
                            if (continuation != null) {
                                textFieldKeyInput.onValueChange.invoke(continuation);
                                break;
                            }
                        }
                        break;
                    case 47:
                        UndoManager undoManager3 = textFieldKeyInput.undoManager;
                        if (undoManager3 != null) {
                            CardView.AnonymousClass1 anonymousClass13 = undoManager3.redoStack;
                            if (anonymousClass13 != null) {
                                undoManager3.redoStack = (CardView.AnonymousClass1) anonymousClass13.mCardBackground;
                                TextFieldValue textFieldValue4 = (TextFieldValue) anonymousClass13.this$0;
                                undoManager3.undoStack = new CardView.AnonymousClass1(i9, undoManager3.undoStack, textFieldValue4, false);
                                undoManager3.storedCharacters = textFieldValue4.annotatedString.text.length() + undoManager3.storedCharacters;
                                textFieldValue = (TextFieldValue) anonymousClass13.this$0;
                            }
                            if (textFieldValue != null) {
                                textFieldKeyInput.onValueChange.invoke(textFieldValue);
                                break;
                            }
                        }
                        break;
                    default:
                        UriKt$$ExternalSyntheticBUOutline0.m857m();
                        return null;
                }
                return unit;
            case 10:
                Context context = (Context) obj2;
                TextContextMenuSession textContextMenuSession = (TextContextMenuSession) obj3;
                ContextMenuScope contextMenuScope = (ContextMenuScope) obj;
                List list = ((TextContextMenuData) obj4).components;
                int size = list.size();
                for (int i12 = 0; i12 < size; i12++) {
                    TextContextMenuComponent textContextMenuComponent = (TextContextMenuComponent) list.get(i12);
                    if (textContextMenuComponent instanceof TextContextMenuItem) {
                        TextContextMenuItem textContextMenuItem = (TextContextMenuItem) textContextMenuComponent;
                        ContextMenuScope.item$default(contextMenuScope, new ComposerKt$$ExternalSyntheticLambda0(8, textContextMenuItem), textContextMenuItem.leadingIcon == 0 ? null : new ComposableLambdaImpl(-1930700965, new TooltipKt$animateTooltip$2(1, textContextMenuItem), true), new Recomposer$$ExternalSyntheticLambda6(18, textContextMenuItem, textContextMenuSession), 6);
                    } else if (textContextMenuComponent instanceof TextContextMenuTextClassificationItem) {
                        if (Build.VERSION.SDK_INT >= 28) {
                            TextContextMenuHelperApi28.textClassificationItem(contextMenuScope, context, (TextContextMenuTextClassificationItem) textContextMenuComponent);
                        }
                    } else if (textContextMenuComponent instanceof TextContextMenuSeparator) {
                        contextMenuScope.composables.add(ContextMenuPopupPositionProviderKt.f2lambda$1455401925);
                    }
                }
                return unit;
            case 11:
                LocalFolder.AnonymousClass12 anonymousClass122 = (LocalFolder.AnonymousClass12) obj4;
                StreamSharing$$ExternalSyntheticLambda0 streamSharing$$ExternalSyntheticLambda0 = (StreamSharing$$ExternalSyntheticLambda0) obj2;
                Ref$BooleanRef ref$BooleanRef3 = (Ref$BooleanRef) obj3;
                PointerInputChange pointerInputChange = (PointerInputChange) obj;
                long j10 = pointerInputChange.position;
                TextFieldSelectionManager textFieldSelectionManager = (TextFieldSelectionManager) anonymousClass122.val$flags;
                if (!textFieldSelectionManager.getEnabled() || textFieldSelectionManager.getValue$foundation().annotatedString.text.length() == 0 || (legacyTextFieldState = textFieldSelectionManager.state) == null || legacyTextFieldState.getLayoutResult() == null) {
                    z = false;
                } else {
                    anonymousClass122.updateMouseSelection(textFieldSelectionManager.getValue$foundation(), j10, false, streamSharing$$ExternalSyntheticLambda0);
                    z = true;
                }
                if (z) {
                    pointerInputChange.consume();
                    ref$BooleanRef3.element = true;
                }
                return unit;
            case BasicTextKt.ShiftMeta /* 12 */:
                final TextFieldSelectionManager textFieldSelectionManager2 = (TextFieldSelectionManager) obj4;
                CoroutineScope coroutineScope = (CoroutineScope) obj2;
                Context context2 = (Context) obj3;
                TextContextMenuBuilderScope textContextMenuBuilderScope = (TextContextMenuBuilderScope) obj;
                MutableObjectList mutableObjectList = textContextMenuBuilderScope.components;
                MutableObjectList mutableObjectList2 = textContextMenuBuilderScope.components;
                TextContextMenuSeparator textContextMenuSeparator = TextContextMenuSeparator.INSTANCE;
                mutableObjectList.add(textContextMenuSeparator);
                TextContextMenuItems textContextMenuItems = TextContextMenuItems.Autofill;
                boolean z3 = (TextRange.m699getCollapsedimpl(textFieldSelectionManager2.getValue$foundation().selection) || !textFieldSelectionManager2.getEditable() || (textFieldSelectionManager2.visualTransformation instanceof PasswordVisualTransformation) || textFieldSelectionManager2.clipboard == null) ? false : true;
                Recomposer$$ExternalSyntheticLambda6 recomposer$$ExternalSyntheticLambda6 = new Recomposer$$ExternalSyntheticLambda6(i4, coroutineScope, new TextFieldSelectionManager$contextMenuAreaModifier$3(textFieldSelectionManager2, continuation, i6));
                Resources resources = context2.getResources();
                int i13 = 12;
                Navigator$$ExternalSyntheticLambda1 navigator$$ExternalSyntheticLambda1 = new Navigator$$ExternalSyntheticLambda1(i13, recomposer$$ExternalSyntheticLambda6, continuation);
                if (z3) {
                    mutableObjectList2.add(new TextContextMenuItem(TextContextMenuKeys.CutKey, resources.getString(android.R.string.cut), android.R.attr.actionModeCutDrawable, navigator$$ExternalSyntheticLambda1));
                }
                TextContextMenuItems textContextMenuItems2 = TextContextMenuItems.Autofill;
                boolean z4 = (TextRange.m699getCollapsedimpl(textFieldSelectionManager2.getValue$foundation().selection) || (textFieldSelectionManager2.visualTransformation instanceof PasswordVisualTransformation) || textFieldSelectionManager2.clipboard == null) ? false : true;
                Recomposer$$ExternalSyntheticLambda6 recomposer$$ExternalSyntheticLambda62 = new Recomposer$$ExternalSyntheticLambda6(i4, coroutineScope, new TextFieldSelectionManager$contextMenuAreaModifier$3(textFieldSelectionManager2, continuation, i2));
                Resources resources2 = context2.getResources();
                Navigator$$ExternalSyntheticLambda1 navigator$$ExternalSyntheticLambda12 = new Navigator$$ExternalSyntheticLambda1(i13, recomposer$$ExternalSyntheticLambda62, continuation);
                if (z4) {
                    mutableObjectList2.add(new TextContextMenuItem(TextContextMenuKeys.CopyKey, resources2.getString(android.R.string.copy), android.R.attr.actionModeCopyDrawable, navigator$$ExternalSyntheticLambda12));
                }
                TextContextMenuItems textContextMenuItems3 = TextContextMenuItems.Autofill;
                boolean z5 = textFieldSelectionManager2.getEditable() && ((Boolean) textFieldSelectionManager2.hasAvailableTextToPaste$delegate.getValue()).booleanValue() && textFieldSelectionManager2.clipboard != null;
                Recomposer$$ExternalSyntheticLambda6 recomposer$$ExternalSyntheticLambda63 = new Recomposer$$ExternalSyntheticLambda6(i4, coroutineScope, new TextFieldSelectionManager$contextMenuAreaModifier$3(textFieldSelectionManager2, continuation, i5));
                Resources resources3 = context2.getResources();
                Navigator$$ExternalSyntheticLambda1 navigator$$ExternalSyntheticLambda13 = new Navigator$$ExternalSyntheticLambda1(i13, recomposer$$ExternalSyntheticLambda63, continuation);
                if (z5) {
                    mutableObjectList2.add(new TextContextMenuItem(TextContextMenuKeys.PasteKey, resources3.getString(android.R.string.paste), android.R.attr.actionModePasteDrawable, navigator$$ExternalSyntheticLambda13));
                }
                TextContextMenuItems textContextMenuItems4 = TextContextMenuItems.Autofill;
                boolean z6 = TextRange.m700getLengthimpl(textFieldSelectionManager2.getValue$foundation().selection) != textFieldSelectionManager2.getValue$foundation().annotatedString.text.length();
                final int i14 = 0;
                Function0 function0 = new Function0() { // from class: androidx.compose.foundation.text.selection.TextFieldSelectionManager_androidKt$$ExternalSyntheticLambda5
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        int i15 = i14;
                        Unit unit2 = Unit.INSTANCE;
                        TextFieldSelectionManager textFieldSelectionManager3 = textFieldSelectionManager2;
                        switch (i15) {
                            case 0:
                                break;
                            case 1:
                                TextFieldValue m309createTextFieldValueFDrldGo = TextFieldSelectionManager.m309createTextFieldValueFDrldGo(textFieldSelectionManager3.getValue$foundation().annotatedString, ParagraphKt.TextRange(0, textFieldSelectionManager3.getValue$foundation().annotatedString.text.length()));
                                textFieldSelectionManager3.onValueChange.invoke(m309createTextFieldValueFDrldGo);
                                long j11 = m309createTextFieldValueFDrldGo.selection;
                                textFieldSelectionManager3.latestSelection = new TextRange(j11);
                                textFieldSelectionManager3.oldValue = TextFieldValue.m714copy3r_uNRQ$default(textFieldSelectionManager3.oldValue, null, j11, 5);
                                textFieldSelectionManager3.enterSelectionMode$foundation(true);
                                break;
                            default:
                                Function0 function02 = textFieldSelectionManager3.requestAutofillAction;
                                if (function02 != null) {
                                    function02.invoke();
                                    break;
                                }
                                break;
                        }
                        return unit2;
                    }
                };
                final int i15 = 1;
                Function0 function02 = new Function0() { // from class: androidx.compose.foundation.text.selection.TextFieldSelectionManager_androidKt$$ExternalSyntheticLambda5
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        int i152 = i15;
                        Unit unit2 = Unit.INSTANCE;
                        TextFieldSelectionManager textFieldSelectionManager3 = textFieldSelectionManager2;
                        switch (i152) {
                            case 0:
                                break;
                            case 1:
                                TextFieldValue m309createTextFieldValueFDrldGo = TextFieldSelectionManager.m309createTextFieldValueFDrldGo(textFieldSelectionManager3.getValue$foundation().annotatedString, ParagraphKt.TextRange(0, textFieldSelectionManager3.getValue$foundation().annotatedString.text.length()));
                                textFieldSelectionManager3.onValueChange.invoke(m309createTextFieldValueFDrldGo);
                                long j11 = m309createTextFieldValueFDrldGo.selection;
                                textFieldSelectionManager3.latestSelection = new TextRange(j11);
                                textFieldSelectionManager3.oldValue = TextFieldValue.m714copy3r_uNRQ$default(textFieldSelectionManager3.oldValue, null, j11, 5);
                                textFieldSelectionManager3.enterSelectionMode$foundation(true);
                                break;
                            default:
                                Function0 function022 = textFieldSelectionManager3.requestAutofillAction;
                                if (function022 != null) {
                                    function022.invoke();
                                    break;
                                }
                                break;
                        }
                        return unit2;
                    }
                };
                Resources resources4 = context2.getResources();
                Navigator$$ExternalSyntheticLambda1 navigator$$ExternalSyntheticLambda14 = new Navigator$$ExternalSyntheticLambda1(i13, function02, function0);
                if (z6) {
                    mutableObjectList2.add(new TextContextMenuItem(TextContextMenuKeys.SelectAllKey, resources4.getString(android.R.string.selectAll), android.R.attr.actionModeSelectAllDrawable, navigator$$ExternalSyntheticLambda14));
                }
                if (Build.VERSION.SDK_INT >= 26) {
                    TextContextMenuItems textContextMenuItems5 = TextContextMenuItems.Autofill;
                    boolean z7 = textFieldSelectionManager2.getEditable() && TextRange.m699getCollapsedimpl(textFieldSelectionManager2.getValue$foundation().selection);
                    Function0 function03 = new Function0() { // from class: androidx.compose.foundation.text.selection.TextFieldSelectionManager_androidKt$$ExternalSyntheticLambda5
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            int i152 = i2;
                            Unit unit2 = Unit.INSTANCE;
                            TextFieldSelectionManager textFieldSelectionManager3 = textFieldSelectionManager2;
                            switch (i152) {
                                case 0:
                                    break;
                                case 1:
                                    TextFieldValue m309createTextFieldValueFDrldGo = TextFieldSelectionManager.m309createTextFieldValueFDrldGo(textFieldSelectionManager3.getValue$foundation().annotatedString, ParagraphKt.TextRange(0, textFieldSelectionManager3.getValue$foundation().annotatedString.text.length()));
                                    textFieldSelectionManager3.onValueChange.invoke(m309createTextFieldValueFDrldGo);
                                    long j11 = m309createTextFieldValueFDrldGo.selection;
                                    textFieldSelectionManager3.latestSelection = new TextRange(j11);
                                    textFieldSelectionManager3.oldValue = TextFieldValue.m714copy3r_uNRQ$default(textFieldSelectionManager3.oldValue, null, j11, 5);
                                    textFieldSelectionManager3.enterSelectionMode$foundation(true);
                                    break;
                                default:
                                    Function0 function022 = textFieldSelectionManager3.requestAutofillAction;
                                    if (function022 != null) {
                                        function022.invoke();
                                        break;
                                    }
                                    break;
                            }
                            return unit2;
                        }
                    };
                    Resources resources5 = context2.getResources();
                    Navigator$$ExternalSyntheticLambda1 navigator$$ExternalSyntheticLambda15 = new Navigator$$ExternalSyntheticLambda1(i13, function03, continuation);
                    if (z7) {
                        mutableObjectList2.add(new TextContextMenuItem(textContextMenuItems5.key, resources5.getString(textContextMenuItems5.stringId), textContextMenuItems5.drawableId, navigator$$ExternalSyntheticLambda15));
                    }
                }
                mutableObjectList2.add(textContextMenuSeparator);
                return unit;
            case 13:
                SheetState sheetState = (SheetState) obj2;
                JobKt.launch$default((CoroutineScope) obj4, null, null, new ComposeScrollCaptureCallback$scrollTracker$1(sheetState, ((Float) obj).floatValue(), null), 3).invokeOnCompletion(new ModalBottomSheetKt$$ExternalSyntheticLambda7(sheetState, (Function0) obj3, i6));
                return unit;
            case 14:
                PaddingValues paddingValues = (PaddingValues) obj2;
                Alignment.Horizontal horizontal = (Alignment.Horizontal) obj3;
                LayoutNodeDrawScope layoutNodeDrawScope = (LayoutNodeDrawScope) obj;
                long j11 = ((Size) ((TextFieldImplKt$CommonDecorationBox$3$borderContainerWithId$1.AnonymousClass1) obj4).get()).packedValue;
                float intBitsToFloat = Float.intBitsToFloat((int) (j11 >> 32));
                if (intBitsToFloat > 0.0f) {
                    float mo177toPx0680j_4 = layoutNodeDrawScope.mo177toPx0680j_4(4.0f);
                    CanvasDrawScope canvasDrawScope = layoutNodeDrawScope.canvasDrawScope;
                    float align = horizontal.align(MathKt.roundToInt(intBitsToFloat), MathKt.roundToInt((Float.intBitsToFloat((int) (canvasDrawScope.drawContext.m795getSizeNHjbRc() >> 32)) - r10) - layoutNodeDrawScope.mo177toPx0680j_4(paddingValues.mo210calculateRightPaddingu2uoSUM(layoutNodeDrawScope.getLayoutDirection()))), layoutNodeDrawScope.getLayoutDirection()) + layoutNodeDrawScope.mo177toPx0680j_4(paddingValues.mo209calculateLeftPaddingu2uoSUM(layoutNodeDrawScope.getLayoutDirection()));
                    float f2 = intBitsToFloat / 2.0f;
                    float f3 = align + f2;
                    float f4 = (f3 - f2) - mo177toPx0680j_4;
                    float f5 = f4 < 0.0f ? 0.0f : f4;
                    float f6 = f3 + f2 + mo177toPx0680j_4;
                    float intBitsToFloat2 = Float.intBitsToFloat((int) (canvasDrawScope.drawContext.m795getSizeNHjbRc() >> 32));
                    float f7 = f6 > intBitsToFloat2 ? intBitsToFloat2 : f6;
                    float intBitsToFloat3 = Float.intBitsToFloat((int) (j11 & 4294967295L));
                    float f8 = (-intBitsToFloat3) / 2.0f;
                    float f9 = intBitsToFloat3 / 2.0f;
                    MenuHostHelper menuHostHelper = canvasDrawScope.drawContext;
                    long m795getSizeNHjbRc = menuHostHelper.m795getSizeNHjbRc();
                    menuHostHelper.getCanvas().save();
                    try {
                        ((MenuHostHelper) ((PreviewView.AnonymousClass1) menuHostHelper.mOnInvalidateMenuCallback).this$0).getCanvas().mo454clipRectN_I0leg(f5, f8, f7, f9, 0);
                        layoutNodeDrawScope.drawContent();
                    } finally {
                        Config.CC.m(menuHostHelper, m795getSizeNHjbRc);
                    }
                } else {
                    layoutNodeDrawScope.drawContent();
                }
                return unit;
            case OffsetKt.Horizontal /* 15 */:
                return new SheetState((Function0) obj4, (Function0) obj2, (SheetValue) obj, (Function1) obj3);
            case 16:
                Recomposer$$ExternalSyntheticLambda6 recomposer$$ExternalSyntheticLambda64 = new Recomposer$$ExternalSyntheticLambda6(i3, (CoroutineScope) obj2, (TooltipStateImpl) obj3);
                KProperty[] kPropertyArr = SemanticsPropertiesKt.$$delegatedProperties;
                ((SemanticsPropertyReceiver) obj).set(SemanticsActions.OnLongClick, new AccessibilityAction((String) obj4, recomposer$$ExternalSyntheticLambda64));
                return unit;
            case 17:
                DraggableAnchorsNode draggableAnchorsNode = (DraggableAnchorsNode) obj2;
                Placeable placeable = (Placeable) obj3;
                Placeable.PlacementScope placementScope = (Placeable.PlacementScope) obj;
                boolean isLookingAhead = ((MeasureScope) obj4).isLookingAhead();
                AnchoredDraggableState anchoredDraggableState = draggableAnchorsNode.state;
                float positionOf = isLookingAhead ? anchoredDraggableState.getAnchors().positionOf(draggableAnchorsNode.state.targetValue$delegate.getValue()) : anchoredDraggableState.requireOffset();
                Orientation orientation = draggableAnchorsNode.orientation;
                float f10 = orientation == Orientation.Horizontal ? positionOf : 0.0f;
                if (orientation != Orientation.Vertical) {
                    positionOf = 0.0f;
                }
                placementScope.motionFrameOfReferencePlacement = true;
                placementScope.place(placeable, MathKt.roundToInt(f10), MathKt.roundToInt(positionOf), 0.0f);
                placementScope.motionFrameOfReferencePlacement = false;
                return unit;
            case 18:
                SaveableStateHolderImpl saveableStateHolderImpl = (SaveableStateHolderImpl) obj4;
                SaveableStateRegistryWrapper saveableStateRegistryWrapper = (SaveableStateRegistryWrapper) obj3;
                MutableScatterMap mutableScatterMap = saveableStateHolderImpl.registries;
                if (mutableScatterMap.contains(obj2)) {
                    DBUtil$$ExternalSyntheticBUOutline0.m(obj2, " was used multiple times ", "Key ");
                    return null;
                }
                saveableStateHolderImpl.savedStates.remove(obj2);
                mutableScatterMap.set(obj2, saveableStateRegistryWrapper);
                return new AnimatedContentKt$AnimatedContent$6$1$5$1$1$invoke$$inlined$onDispose$1(saveableStateHolderImpl, obj2, saveableStateRegistryWrapper, i6);
            case 19:
                LifecycleOwner lifecycleOwner = (LifecycleOwner) obj4;
                final LifecycleStartStopEffectScope lifecycleStartStopEffectScope = (LifecycleStartStopEffectScope) obj2;
                final Function1 function13 = (Function1) obj3;
                final Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
                LifecycleEventObserver lifecycleEventObserver = new LifecycleEventObserver() { // from class: androidx.lifecycle.compose.LifecycleEffectKt$$ExternalSyntheticLambda3
                    @Override // androidx.lifecycle.LifecycleEventObserver
                    public final void onStateChanged(LifecycleOwner lifecycleOwner2, Lifecycle.Event event) {
                        int i16 = LifecycleEffectKt$WhenMappings.$EnumSwitchMapping$0[event.ordinal()];
                        Ref$ObjectRef ref$ObjectRef2 = ref$ObjectRef;
                        if (i16 == 1) {
                            ref$ObjectRef2.element = function13.invoke(LifecycleStartStopEffectScope.this);
                        } else {
                            if (i16 != 2) {
                                return;
                            }
                            BackHandlerKt$BackHandler$lambda$3$0$$inlined$onStopOrDispose$1 backHandlerKt$BackHandler$lambda$3$0$$inlined$onStopOrDispose$1 = (BackHandlerKt$BackHandler$lambda$3$0$$inlined$onStopOrDispose$1) ref$ObjectRef2.element;
                            if (backHandlerKt$BackHandler$lambda$3$0$$inlined$onStopOrDispose$1 != null) {
                                backHandlerKt$BackHandler$lambda$3$0$$inlined$onStopOrDispose$1.runStopOrDisposeEffect();
                            }
                            ref$ObjectRef2.element = null;
                        }
                    }
                };
                lifecycleOwner.getLifecycle().addObserver(lifecycleEventObserver);
                return new AnimatedContentKt$AnimatedContent$6$1$5$1$1$invoke$$inlined$onDispose$1(lifecycleOwner, lifecycleEventObserver, ref$ObjectRef, i2);
            case 20:
                return invoke$androidx$lifecycle$compose$LifecycleEffectKt$$ExternalSyntheticLambda4(obj);
            case 21:
                return invoke$androidx$navigation$compose$DialogHostKt$DialogHost$1$2$$ExternalSyntheticLambda0(obj);
            case 22:
                return invoke$androidx$navigation$fragment$FragmentNavigator$$ExternalSyntheticLambda4(obj);
            case 23:
                return invoke$androidx$work$impl$model$WorkSpecDao_Impl$$ExternalSyntheticLambda28(obj);
            case 24:
                return invoke$app$k9mail$core$ui$compose$designsystem$template$LazyColumnWithHeaderFooterKt$$ExternalSyntheticLambda0(obj);
            case 25:
                return invoke$app$k9mail$feature$account$setup$navigation$AccountSetupNavHostKt$$ExternalSyntheticLambda16(obj);
            case 26:
                return invoke$app$k9mail$feature$account$setup$ui$autodiscovery$AccountAutoDiscoveryViewModel$$ExternalSyntheticLambda0(obj);
            case 27:
                return invoke$app$k9mail$feature$account$setup$ui$specialfolders$SpecialFoldersFormContentKt$$ExternalSyntheticLambda0(obj);
            case 28:
                return invoke$com$fsck$k9$preferences$XmlSettingsParser$$ExternalSyntheticLambda0(obj);
            default:
                SwipeableRowState swipeableRowState = (SwipeableRowState) obj4;
                HapticFeedback hapticFeedback = (HapticFeedback) obj2;
                Function1 function14 = (Function1) obj3;
                SwipeDirection swipeDirection = (SwipeDirection) obj;
                swipeDirection.getClass();
                ConnectionPool connectionPool = swipeableRowState.accessibilityState;
                connectionPool.getClass();
                SwipeableRowState swipeableRowState2 = (SwipeableRowState) connectionPool.delegate;
                float calculateFinalOffset = swipeableRowState2.calculateFinalOffset(true, swipeDirection, swipeableRowState2.getBehaviour(swipeDirection));
                SwipeBehaviour behaviour = swipeableRowState2.getBehaviour(swipeDirection);
                swipeableRowState2.pendingOffset$delegate.setFloatValue(calculateFinalOffset);
                JobKt.launch$default(swipeableRowState2.coroutineScope, null, null, new SwipeableRowState$updateOffset$1(swipeableRowState2, calculateFinalOffset, behaviour, true, null), 3);
                if (swipeableRowState.getActiveBehaviour$tfa_core_ui_compose_designsystem().getEnableHapticFeedback()) {
                    ((PlatformHapticFeedback) hapticFeedback).m555performHapticFeedbackCdsT49E(23);
                }
                function14.invoke(swipeDirection);
                return unit;
        }
    }

    public /* synthetic */ SimpleActor$$ExternalSyntheticLambda0(ContentInViewNode contentInViewNode, UpdatableAnimationState updatableAnimationState, Job job, ScrollingLogic$nestedScrollScope$1 scrollingLogic$nestedScrollScope$1) {
        this.$r8$classId = 4;
        this.f$0 = contentInViewNode;
        this.f$1 = job;
        this.f$2 = scrollingLogic$nestedScrollScope$1;
    }

    public /* synthetic */ SimpleActor$$ExternalSyntheticLambda0(Object obj, Object obj2, Object obj3, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = obj2;
        this.f$2 = obj3;
    }
}
