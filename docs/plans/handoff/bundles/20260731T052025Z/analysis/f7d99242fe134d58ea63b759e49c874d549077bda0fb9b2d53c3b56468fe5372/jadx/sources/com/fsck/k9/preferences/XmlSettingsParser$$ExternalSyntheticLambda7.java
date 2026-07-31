package com.fsck.k9.preferences;

import android.graphics.Paint;
import android.os.Bundle;
import androidx.activity.ComponentActivity$activityResultRegistry$1;
import androidx.activity.compose.ActivityResultLauncherHolder;
import androidx.activity.compose.ActivityResultRegistryKt$$ExternalSyntheticLambda2;
import androidx.cardview.widget.CardView;
import androidx.compose.animation.AnimatedContentScopeImpl;
import androidx.compose.foundation.gestures.MouseWheelScrollingLogic;
import androidx.compose.foundation.gestures.ScrollableKt;
import androidx.compose.foundation.gestures.ScrollingLogic;
import androidx.compose.foundation.text.LegacyTextFieldState;
import androidx.compose.foundation.text.TextLayoutResultProxy;
import androidx.compose.foundation.text.input.internal.AndroidLegacyPlatformTextInputServiceAdapter;
import androidx.compose.foundation.text.input.internal.CursorAnimationState;
import androidx.compose.foundation.text.input.internal.LegacyAdaptingPlatformTextInputModifierNode;
import androidx.compose.foundation.text.input.internal.LegacyTextInputMethodRequest;
import androidx.compose.material.ripple.StateLayer;
import androidx.compose.material3.ExposedDropdownMenuKt$$ExternalSyntheticLambda3;
import androidx.compose.material3.SheetDefaultsKt$DragHandleWithTooltip$1$1$1;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MovableContentKt$$ExternalSyntheticLambda0;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.graphics.AndroidPaint;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import androidx.compose.ui.input.pointer.util.VelocityTracker1D;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.node.LayoutNodeDrawScope;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.input.ImeOptions;
import androidx.compose.ui.text.input.OffsetMapping;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.window.AndroidPopup_androidKt$Popup$2$1$invoke$$inlined$onDispose$1;
import androidx.datastore.core.SimpleActor$$ExternalSyntheticLambda0;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.compose.LocalViewModelStoreOwner;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavGraphBuilder;
import androidx.navigation.NavHostController;
import androidx.navigation.internal.NavControllerImpl;
import androidx.room.InvalidationTracker$implementation$1;
import app.k9mail.feature.account.server.settings.ui.incoming.IncomingServerSettingsContract$State;
import app.k9mail.feature.account.setup.navigation.AccountSetupNavHostKt$$ExternalSyntheticLambda1;
import app.k9mail.feature.account.setup.navigation.AccountSetupNavHostKt$$ExternalSyntheticLambda3;
import app.k9mail.feature.account.setup.navigation.AccountSetupNavHostKt$$ExternalSyntheticLambda4;
import app.k9mail.feature.account.setup.navigation.AccountSetupNavHostKt$$ExternalSyntheticLambda8;
import app.k9mail.feature.account.setup.ui.autodiscovery.AccountAutoDiscoveryViewModel;
import app.k9mail.feature.account.setup.ui.autodiscovery.AutoDiscoveryStringMapperKt;
import coil3.size.ViewSizeResolver;
import com.fsck.k9.sasl.OAuthBearer;
import java.util.ArrayList;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlin.jvm.internal.Ref$FloatRef;
import kotlin.jvm.internal.Ref$IntRef;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.jvm.internal.Reflection;
import kotlin.text.StringsKt__StringsKt$$ExternalSyntheticLambda0;
import kotlin.time.Clock;
import kotlinx.collections.immutable.ImmutableList;
import kotlinx.collections.immutable.implementations.immutableList.SmallPersistentVector;
import kotlinx.collections.immutable.implementations.persistentOrderedMap.PersistentOrderedMap;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.serialization.internal.MapEntrySerializer$$ExternalSyntheticLambda0;
import net.thunderbird.core.common.provider.BrandNameProvider;
import net.thunderbird.core.common.state.builder.InternalStateBuilder;
import net.thunderbird.core.common.state.builder.StateMachineBuilder;
import net.thunderbird.core.logging.Logger;
import net.thunderbird.core.outcome.Outcome;
import net.thunderbird.core.preference.debugging.DebuggingSettings;
import net.thunderbird.core.preference.debugging.DefaultDebuggingSettingsPreferenceManager;
import net.thunderbird.core.ui.compose.designsystem.molecule.swipe.SwipeBehaviour;
import net.thunderbird.core.ui.compose.designsystem.molecule.swipe.SwipeState;
import net.thunderbird.core.ui.compose.designsystem.molecule.swipe.SwipeableRowState;
import net.thunderbird.feature.changelog.internal.KoinModuleKt$$ExternalSyntheticLambda0;
import net.thunderbird.feature.funding.FeatureFundingModuleKt$$ExternalSyntheticLambda0;
import net.thunderbird.feature.mail.message.list.domain.model.SortCriteria;
import net.thunderbird.feature.mail.message.list.domain.model.SortType;
import net.thunderbird.feature.mail.message.list.ui.event.MessageListEvent;
import net.thunderbird.feature.mail.message.list.ui.state.MessageListFooter;
import net.thunderbird.feature.mail.message.list.ui.state.MessageListMetadata;
import net.thunderbird.feature.mail.message.list.ui.state.MessageListState;
import net.thunderbird.feature.mail.message.list.ui.state.PaginationUi;
import net.thunderbird.feature.mail.message.reader.impl.inject.FeatureMessageReaderModuleKt$$ExternalSyntheticLambda1;
import okhttp3.ConnectionPool;
import okhttp3.Cookie;
import okhttp3.Handshake;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.Okio;
import org.koin.compose.KoinApplicationKt;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.scope.Scope;
import org.xmlpull.v1.XmlPullParser;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class XmlSettingsParser$$ExternalSyntheticLambda7 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ Object f$2;
    public final /* synthetic */ Object f$3;
    public final /* synthetic */ Object f$4;

    public /* synthetic */ XmlSettingsParser$$ExternalSyntheticLambda7(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = obj2;
        this.f$2 = obj3;
        this.f$3 = obj4;
        this.f$4 = obj5;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue
    java.lang.NullPointerException: Cannot invoke "java.util.List.iterator()" because the return value of "jadx.core.dex.visitors.regions.SwitchOverStringVisitor$SwitchData.getNewCases()" is null
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.restoreSwitchOverString(SwitchOverStringVisitor.java:109)
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.visitRegion(SwitchOverStringVisitor.java:66)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:77)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:82)
     */
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        boolean z;
        List list;
        int i = this.$r8$classId;
        int i2 = 2;
        Unit unit = Unit.INSTANCE;
        final int i3 = 0;
        final int i4 = 1;
        Object obj2 = this.f$4;
        Object obj3 = this.f$3;
        Object obj4 = this.f$2;
        Object obj5 = this.f$1;
        Object obj6 = this.f$0;
        switch (i) {
            case 0:
                ConnectionPool connectionPool = (ConnectionPool) obj6;
                Ref$ObjectRef ref$ObjectRef = (Ref$ObjectRef) obj5;
                Ref$ObjectRef ref$ObjectRef2 = (Ref$ObjectRef) obj4;
                Ref$ObjectRef ref$ObjectRef3 = (Ref$ObjectRef) obj3;
                Ref$ObjectRef ref$ObjectRef4 = (Ref$ObjectRef) obj2;
                if (((Integer) obj).intValue() == 2) {
                    String name = ((XmlPullParser) connectionPool.delegate).getName();
                    if (name != null) {
                        switch (name.hashCode()) {
                            case -1724546052:
                                if (name.equals("description")) {
                                    ref$ObjectRef3.element = connectionPool.readText();
                                    break;
                                }
                                break;
                            case 3373707:
                                if (name.equals("name")) {
                                    ref$ObjectRef.element = connectionPool.readText();
                                    break;
                                }
                                break;
                            case 96619420:
                                if (name.equals("email")) {
                                    ref$ObjectRef2.element = connectionPool.readText();
                                    break;
                                }
                                break;
                            case 1434631203:
                                if (name.equals("settings")) {
                                    ref$ObjectRef4.element = connectionPool.readSettingsContainer();
                                    break;
                                }
                                break;
                        }
                    }
                    connectionPool.skipElement();
                }
                return unit;
            case 1:
                ActivityResultLauncherHolder activityResultLauncherHolder = (ActivityResultLauncherHolder) obj6;
                activityResultLauncherHolder.launcher = ((ComponentActivity$activityResultRegistry$1) obj5).register((String) obj4, (OAuthBearer) obj3, new ActivityResultRegistryKt$$ExternalSyntheticLambda2(0, (MutableState) obj2));
                return new AndroidPopup_androidKt$Popup$2$1$invoke$$inlined$onDispose$1(i4, activityResultLauncherHolder);
            case 2:
                MouseWheelScrollingLogic mouseWheelScrollingLogic = (MouseWheelScrollingLogic) obj6;
                Ref$ObjectRef ref$ObjectRef5 = (Ref$ObjectRef) obj5;
                Ref$FloatRef ref$FloatRef = (Ref$FloatRef) obj4;
                ScrollingLogic scrollingLogic = (ScrollingLogic) obj3;
                Ref$BooleanRef ref$BooleanRef = (Ref$BooleanRef) obj2;
                float floatValue = ((Float) obj).floatValue();
                MouseWheelScrollingLogic.MouseWheelScrollDelta sumOrNull = MouseWheelScrollingLogic.sumOrNull(mouseWheelScrollingLogic.channel);
                if (sumOrNull != null) {
                    CardView.AnonymousClass1 anonymousClass1 = mouseWheelScrollingLogic.velocityTracker;
                    long j = sumOrNull.timeMillis;
                    long j2 = sumOrNull.value;
                    z = true;
                    ((VelocityTracker1D) anonymousClass1.mCardBackground).addDataPoint(Float.intBitsToFloat((int) (j2 >> 32)), j);
                    ((VelocityTracker1D) anonymousClass1.this$0).addDataPoint(Float.intBitsToFloat((int) (j2 & 4294967295L)), j);
                    MouseWheelScrollingLogic.MouseWheelScrollDelta plus = ((MouseWheelScrollingLogic.MouseWheelScrollDelta) ref$ObjectRef5.element).plus(sumOrNull);
                    ref$ObjectRef5.element = plus;
                    ref$FloatRef.element = scrollingLogic.m195toSingleAxisDeltaFromAnglek4lQ0M(scrollingLogic.m192reverseIfNeededMKHz9U(plus.value));
                    ref$BooleanRef.element = !ScrollableKt.access$isLowScrollingDelta(r0 - floatValue);
                } else {
                    z = true;
                }
                return Boolean.valueOf(sumOrNull != null ? z : false);
            case 3:
                OffsetMapping offsetMapping = (OffsetMapping) obj5;
                TextFieldValue textFieldValue = (TextFieldValue) obj4;
                LegacyTextFieldState legacyTextFieldState = (LegacyTextFieldState) obj3;
                SolidColor solidColor = (SolidColor) obj2;
                LayoutNodeDrawScope layoutNodeDrawScope = (LayoutNodeDrawScope) obj;
                layoutNodeDrawScope.drawContent();
                CanvasDrawScope canvasDrawScope = layoutNodeDrawScope.canvasDrawScope;
                float floatValue2 = ((CursorAnimationState) obj6).cursorAlpha$delegate.getFloatValue();
                if (floatValue2 != 0.0f) {
                    long j3 = textFieldValue.selection;
                    int i5 = TextRange.$r8$clinit;
                    int originalToTransformed = offsetMapping.originalToTransformed((int) (j3 >> 32));
                    TextLayoutResultProxy layoutResult = legacyTextFieldState.getLayoutResult();
                    Rect cursorRect = layoutResult != null ? layoutResult.value.getCursorRect(originalToTransformed) : new Rect(0.0f, 0.0f, 0.0f, 0.0f);
                    float floor = (float) Math.floor(layoutNodeDrawScope.mo177toPx0680j_4(2.0f));
                    if (floor < 1.0f) {
                        floor = 1.0f;
                    }
                    float f = floor / 2.0f;
                    float f2 = cursorRect.left + f;
                    float intBitsToFloat = Float.intBitsToFloat((int) (canvasDrawScope.drawContext.m795getSizeNHjbRc() >> 32)) - f;
                    if (f2 > intBitsToFloat) {
                        f2 = intBitsToFloat;
                    }
                    if (f2 >= f) {
                        f = f2;
                    }
                    float floor2 = ((int) floor) % 2 == 1 ? ((float) Math.floor(f)) + 0.5f : (float) Math.rint(f);
                    long floatToRawIntBits = (Float.floatToRawIntBits(floor2) << 32) | (Float.floatToRawIntBits(cursorRect.top) & 4294967295L);
                    long floatToRawIntBits2 = (Float.floatToRawIntBits(floor2) << 32) | (Float.floatToRawIntBits(cursorRect.bottom) & 4294967295L);
                    Canvas canvas = canvasDrawScope.drawParams.canvas;
                    AndroidPaint androidPaint = canvasDrawScope.strokePaint;
                    if (androidPaint == null) {
                        androidPaint = ColorKt.Paint();
                        androidPaint.m468setStylek9PVt8s(1);
                        canvasDrawScope.strokePaint = androidPaint;
                    }
                    Paint paint = androidPaint.internalPaint;
                    solidColor.mo475applyToPq9zytI(floatValue2, canvasDrawScope.drawContext.m795getSizeNHjbRc(), androidPaint);
                    if (!Intrinsics.areEqual(androidPaint.internalColorFilter, null)) {
                        androidPaint.setColorFilter(null);
                    }
                    if (androidPaint._blendMode != 3) {
                        androidPaint.m463setBlendModes9anfk8(3);
                    }
                    if (paint.getStrokeWidth() != floor) {
                        androidPaint.setStrokeWidth(floor);
                    }
                    if (paint.getStrokeMiter() != 4.0f) {
                        paint.setStrokeMiter(4.0f);
                    }
                    if (androidPaint.m461getStrokeCapKaPHkGw() != 0) {
                        androidPaint.m466setStrokeCapBeK7IIE(0);
                    }
                    if (androidPaint.m462getStrokeJoinLxFBmk8() != 0) {
                        androidPaint.m467setStrokeJoinWw9F2mQ(0);
                    }
                    if (!paint.isFilterBitmap()) {
                        androidPaint.m465setFilterQualityvDHp3xo(1);
                    }
                    canvas.mo460drawLineWko1d7g(floatToRawIntBits, floatToRawIntBits2, androidPaint);
                }
                return unit;
            case 4:
                LegacyTextInputMethodRequest legacyTextInputMethodRequest = (LegacyTextInputMethodRequest) obj;
                LegacyAdaptingPlatformTextInputModifierNode legacyAdaptingPlatformTextInputModifierNode = ((AndroidLegacyPlatformTextInputServiceAdapter) obj5).textInputModifierNode;
                legacyTextInputMethodRequest.state = (TextFieldValue) obj6;
                legacyTextInputMethodRequest.imeOptions = (ImeOptions) obj4;
                legacyTextInputMethodRequest.onEditCommand = (SimpleActor$$ExternalSyntheticLambda0) obj3;
                legacyTextInputMethodRequest.onImeActionPerformed = (Function1) obj2;
                legacyTextInputMethodRequest.legacyTextFieldState = legacyAdaptingPlatformTextInputModifierNode != null ? legacyAdaptingPlatformTextInputModifierNode.legacyTextFieldState : null;
                legacyTextInputMethodRequest.textFieldSelectionManager = legacyAdaptingPlatformTextInputModifierNode != null ? legacyAdaptingPlatformTextInputModifierNode.textFieldSelectionManager : null;
                legacyTextInputMethodRequest.viewConfiguration = legacyAdaptingPlatformTextInputModifierNode != null ? (ViewConfiguration) HitTestResultKt.currentValueOf(legacyAdaptingPlatformTextInputModifierNode, CompositionLocalsKt.LocalViewConfiguration) : null;
                return unit;
            case 5:
                ArrayList arrayList = (ArrayList) obj5;
                Ref$IntRef ref$IntRef = (Ref$IntRef) obj4;
                NavControllerImpl navControllerImpl = (NavControllerImpl) obj3;
                Bundle bundle = (Bundle) obj2;
                NavBackStackEntry navBackStackEntry = (NavBackStackEntry) obj;
                navBackStackEntry.getClass();
                ((Ref$BooleanRef) obj6).element = true;
                int indexOf = arrayList.indexOf(navBackStackEntry);
                if (indexOf != -1) {
                    int i6 = indexOf + 1;
                    list = arrayList.subList(ref$IntRef.element, i6);
                    ref$IntRef.element = i6;
                } else {
                    list = EmptyList.INSTANCE;
                }
                navControllerImpl.addEntryToBackStack(navBackStackEntry.destination, bundle, navBackStackEntry, list);
                return unit;
            case 6:
                IncomingServerSettingsContract$State incomingServerSettingsContract$State = (IncomingServerSettingsContract$State) obj;
                incomingServerSettingsContract$State.getClass();
                return IncomingServerSettingsContract$State.copy$default(incomingServerSettingsContract$State, null, incomingServerSettingsContract$State.server.updateFromValidationOutcome((Outcome) obj6), null, incomingServerSettingsContract$State.port.updateFromValidationOutcome((Outcome) obj5), null, incomingServerSettingsContract$State.username.updateFromValidationOutcome((Outcome) obj4), incomingServerSettingsContract$State.password.updateFromValidationOutcome((Outcome) obj3), null, false, incomingServerSettingsContract$State.imapPrefix.updateFromValidationOutcome((Outcome) obj2), false, false, 3477);
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                final MutableState mutableState = (MutableState) obj6;
                final MutableState mutableState2 = (MutableState) obj5;
                final NavHostController navHostController = (NavHostController) obj4;
                final Function0 function0 = (Function0) obj3;
                final Function1 function1 = (Function1) obj2;
                NavGraphBuilder navGraphBuilder = (NavGraphBuilder) obj;
                navGraphBuilder.getClass();
                OAuthBearer.composable$default(navGraphBuilder, "autoconfig", new ComposableLambdaImpl(-1173353332, new Function4() { // from class: app.k9mail.feature.account.setup.navigation.AccountSetupNavHostKt$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function4
                    public final Object invoke(Object obj7, Object obj8, Object obj9, Object obj10) {
                        ((Integer) obj10).getClass();
                        ((AnimatedContentScopeImpl) obj7).getClass();
                        ((NavBackStackEntry) obj8).getClass();
                        GapComposer gapComposer = (GapComposer) ((Composer) obj9);
                        Object obj11 = MutableState.this;
                        boolean changed = gapComposer.changed(obj11);
                        Object obj12 = mutableState2;
                        boolean changed2 = changed | gapComposer.changed(obj12);
                        Object obj13 = navHostController;
                        boolean changedInstance = changed2 | gapComposer.changedInstance(obj13);
                        Object rememberedValue = gapComposer.rememberedValue();
                        Object obj14 = Composer.Companion.Empty;
                        if (changedInstance || rememberedValue == obj14) {
                            rememberedValue = new SimpleActor$$ExternalSyntheticLambda0(obj13, obj11, obj12, 25);
                            gapComposer.updateRememberedValue(rememberedValue);
                        }
                        Function1 function12 = (Function1) rememberedValue;
                        Function1 function13 = function1;
                        boolean changed3 = gapComposer.changed(function13);
                        Object rememberedValue2 = gapComposer.rememberedValue();
                        if (changed3 || rememberedValue2 == obj14) {
                            rememberedValue2 = new ExposedDropdownMenuKt$$ExternalSyntheticLambda3(26, function13);
                            gapComposer.updateRememberedValue(rememberedValue2);
                        }
                        Function0 function02 = (Function0) rememberedValue2;
                        boolean changed4 = gapComposer.changed(function13);
                        Object rememberedValue3 = gapComposer.rememberedValue();
                        if (changed4 || rememberedValue3 == obj14) {
                            rememberedValue3 = new ExposedDropdownMenuKt$$ExternalSyntheticLambda3(27, function13);
                            gapComposer.updateRememberedValue(rememberedValue3);
                        }
                        Function0 function03 = (Function0) rememberedValue3;
                        ViewModelStoreOwner current = LocalViewModelStoreOwner.getCurrent(gapComposer);
                        if (current == null) {
                            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("No ViewModelStoreOwner was provided via LocalViewModelStoreOwner");
                            return null;
                        }
                        AccountAutoDiscoveryViewModel accountAutoDiscoveryViewModel = (AccountAutoDiscoveryViewModel) Handshake.Companion.resolveViewModel(Reflection.getOrCreateKotlinClass(AccountAutoDiscoveryViewModel.class), current.getViewModelStore(), Cookie.Companion.defaultExtras(current), null, KoinApplicationKt.currentKoinScope(gapComposer), null);
                        Scope currentKoinScope = KoinApplicationKt.currentKoinScope(gapComposer);
                        boolean changed5 = gapComposer.changed((Object) null) | gapComposer.changed(currentKoinScope);
                        Object rememberedValue4 = gapComposer.rememberedValue();
                        if (changed5 || rememberedValue4 == obj14) {
                            rememberedValue4 = ViewSizeResolver.CC.m(BrandNameProvider.class, currentKoinScope, (Qualifier) null, (ParametersHolder) null, gapComposer);
                        }
                        AutoDiscoveryStringMapperKt.AccountAutoDiscoveryScreen(function12, function0, function02, function03, accountAutoDiscoveryViewModel, (BrandNameProvider) rememberedValue4, null, gapComposer, 32768);
                        return Unit.INSTANCE;
                    }
                }, true));
                OAuthBearer.composable$default(navGraphBuilder, "incoming-server/config", new ComposableLambdaImpl(-1387616203, new AccountSetupNavHostKt$$ExternalSyntheticLambda1(i3, mutableState2, navHostController), true));
                OAuthBearer.composable$default(navGraphBuilder, "incoming-server/validation", new ComposableLambdaImpl(-1144079340, new AccountSetupNavHostKt$$ExternalSyntheticLambda1(i4, mutableState, navHostController), true));
                OAuthBearer.composable$default(navGraphBuilder, "outgoing-server/config", new ComposableLambdaImpl(-900542477, new AccountSetupNavHostKt$$ExternalSyntheticLambda3(navHostController, i3), true));
                OAuthBearer.composable$default(navGraphBuilder, "outgoing-server/validation", new ComposableLambdaImpl(-657005614, new AccountSetupNavHostKt$$ExternalSyntheticLambda4(navHostController, mutableState2, mutableState, i3), true));
                OAuthBearer.composable$default(navGraphBuilder, "special-folders", new ComposableLambdaImpl(-413468751, new AccountSetupNavHostKt$$ExternalSyntheticLambda1(navHostController, mutableState), true));
                OAuthBearer.composable$default(navGraphBuilder, "display-options", new ComposableLambdaImpl(-169931888, new AccountSetupNavHostKt$$ExternalSyntheticLambda3(navHostController, i4), true));
                OAuthBearer.composable$default(navGraphBuilder, "sync-options", new ComposableLambdaImpl(73604975, new AccountSetupNavHostKt$$ExternalSyntheticLambda3(navHostController, i2), true));
                OAuthBearer.composable$default(navGraphBuilder, "create-account", new ComposableLambdaImpl(317141838, new AccountSetupNavHostKt$$ExternalSyntheticLambda8(i3, function1, navHostController), true));
                return unit;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                List list2 = (List) obj;
                list2.getClass();
                Object obj7 = list2.get(0);
                obj7.getClass();
                float floatValue3 = ((Float) obj7).floatValue();
                Object obj8 = list2.get(1);
                obj8.getClass();
                SwipeState valueOf = SwipeState.valueOf((String) obj8);
                Object obj9 = list2.get(2);
                obj9.getClass();
                float floatValue4 = ((Float) obj9).floatValue();
                Object obj10 = list2.get(3);
                obj10.getClass();
                return new SwipeableRowState((CoroutineScope) obj6, (Density) obj5, (SwipeBehaviour) obj4, (SwipeBehaviour) obj3, (ImmutableList) obj2, floatValue3, valueOf, floatValue4, ((Float) obj10).floatValue());
            default:
                final InvalidationTracker$implementation$1 invalidationTracker$implementation$1 = (InvalidationTracker$implementation$1) obj4;
                InvalidationTracker$implementation$1 invalidationTracker$implementation$12 = (InvalidationTracker$implementation$1) obj3;
                Clock clock = (Clock) obj2;
                StateMachineBuilder stateMachineBuilder = (StateMachineBuilder) obj;
                stateMachineBuilder.getClass();
                stateMachineBuilder.logger = (Logger) obj6;
                stateMachineBuilder.logTag = "MessageListStateMachine";
                if (((DebuggingSettings) ((DefaultDebuggingSettingsPreferenceManager) obj5).configState.getValue()).isDebugLoggingEnabled) {
                    StateLayer stateLayer = new StateLayer();
                    stateLayer.interactions = clock;
                    stateLayer.currentInteraction = new FeatureFundingModuleKt$$ExternalSyntheticLambda0(24);
                    stateLayer.bounded = true;
                    stateLayer.rippleAlpha = stateMachineBuilder.logger;
                    stateLayer.animatedAlpha = stateMachineBuilder.logTag;
                    stateMachineBuilder.debuggerBuilder = stateLayer;
                }
                PersistentOrderedMap persistentOrderedMap = PersistentOrderedMap.EMPTY;
                persistentOrderedMap.getClass();
                persistentOrderedMap.getClass();
                MessageListState.WarmingUp warmingUp = new MessageListState.WarmingUp(new MessageListMetadata(null, persistentOrderedMap, persistentOrderedMap, null, null, Okio.toPersistentSet(SortType.$ENTRIES), Okio.toPersistentSet(SortCriteria.DateSortTypeOnly), new MessageListFooter("", true), false, new PaginationUi()), null, SmallPersistentVector.EMPTY);
                stateMachineBuilder.state(Reflection.getOrCreateKotlinClass(MessageListState.WarmingUp.class), new Function1() { // from class: net.thunderbird.feature.mail.message.list.internal.ui.state.machine.SetupLoadingMessagesStateKt$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj11) {
                        int i7 = i4;
                        Unit unit2 = Unit.INSTANCE;
                        int i8 = 18;
                        int i9 = 17;
                        InvalidationTracker$implementation$1 invalidationTracker$implementation$13 = invalidationTracker$implementation$1;
                        int i10 = 16;
                        InternalStateBuilder internalStateBuilder = (InternalStateBuilder) obj11;
                        internalStateBuilder.getClass();
                        switch (i7) {
                            case 0:
                                StringsKt__StringsKt$$ExternalSyntheticLambda0 stringsKt__StringsKt$$ExternalSyntheticLambda0 = new StringsKt__StringsKt$$ExternalSyntheticLambda0(4, invalidationTracker$implementation$13);
                                ClassReference classReference = internalStateBuilder.stateClass;
                                internalStateBuilder.transition(classReference, Reflection.getOrCreateKotlinClass(MessageListEvent.UpdateLoadingProgress.class), new SetupGlobalStateKt$globalState$lambda$0$$inlined$transition$default$2(16), new SheetDefaultsKt$DragHandleWithTooltip$1$1$1(i8, stringsKt__StringsKt$$ExternalSyntheticLambda0));
                                internalStateBuilder.transition(classReference, Reflection.getOrCreateKotlinClass(MessageListEvent.MessagesLoaded.class), new SheetDefaultsKt$DragHandleWithTooltip$1$1$1(i10, new FeatureMessageReaderModuleKt$$ExternalSyntheticLambda1(10)), new SheetDefaultsKt$DragHandleWithTooltip$1$1$1(i9, new FeatureMessageReaderModuleKt$$ExternalSyntheticLambda1(11)));
                                break;
                            default:
                                internalStateBuilder.onEnter = new MovableContentKt$$ExternalSyntheticLambda0(14, invalidationTracker$implementation$13);
                                FeatureMessageReaderModuleKt$$ExternalSyntheticLambda1 featureMessageReaderModuleKt$$ExternalSyntheticLambda1 = new FeatureMessageReaderModuleKt$$ExternalSyntheticLambda1(15);
                                ClassReference classReference2 = internalStateBuilder.stateClass;
                                internalStateBuilder.transition(classReference2, Reflection.getOrCreateKotlinClass(MessageListEvent.UpdatePreferences.class), new SetupGlobalStateKt$globalState$lambda$0$$inlined$transition$default$2(26), new SheetDefaultsKt$DragHandleWithTooltip$1$1$1(24, featureMessageReaderModuleKt$$ExternalSyntheticLambda1));
                                internalStateBuilder.transition(classReference2, Reflection.getOrCreateKotlinClass(MessageListEvent.SortCriteriaLoaded.class), new SetupGlobalStateKt$globalState$lambda$0$$inlined$transition$default$2(27), new SheetDefaultsKt$DragHandleWithTooltip$1$1$1(25, new FeatureMessageReaderModuleKt$$ExternalSyntheticLambda1(i10)));
                                internalStateBuilder.transition(classReference2, Reflection.getOrCreateKotlinClass(MessageListEvent.AllConfigsReady.class), new SheetDefaultsKt$DragHandleWithTooltip$1$1$1(22, new FeatureMessageReaderModuleKt$$ExternalSyntheticLambda1(i9)), new SheetDefaultsKt$DragHandleWithTooltip$1$1$1(23, new FeatureMessageReaderModuleKt$$ExternalSyntheticLambda1(i8)));
                                break;
                        }
                        return unit2;
                    }
                });
                stateMachineBuilder.initialState = warmingUp;
                int i7 = 9;
                stateMachineBuilder.state(Reflection.getOrCreateKotlinClass(MessageListState.class), new KoinModuleKt$$ExternalSyntheticLambda0(i7));
                stateMachineBuilder.state(Reflection.getOrCreateKotlinClass(MessageListState.LoadingMessages.class), new Function1() { // from class: net.thunderbird.feature.mail.message.list.internal.ui.state.machine.SetupLoadingMessagesStateKt$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj11) {
                        int i72 = i3;
                        Unit unit2 = Unit.INSTANCE;
                        int i8 = 18;
                        int i9 = 17;
                        InvalidationTracker$implementation$1 invalidationTracker$implementation$13 = invalidationTracker$implementation$1;
                        int i10 = 16;
                        InternalStateBuilder internalStateBuilder = (InternalStateBuilder) obj11;
                        internalStateBuilder.getClass();
                        switch (i72) {
                            case 0:
                                StringsKt__StringsKt$$ExternalSyntheticLambda0 stringsKt__StringsKt$$ExternalSyntheticLambda0 = new StringsKt__StringsKt$$ExternalSyntheticLambda0(4, invalidationTracker$implementation$13);
                                ClassReference classReference = internalStateBuilder.stateClass;
                                internalStateBuilder.transition(classReference, Reflection.getOrCreateKotlinClass(MessageListEvent.UpdateLoadingProgress.class), new SetupGlobalStateKt$globalState$lambda$0$$inlined$transition$default$2(16), new SheetDefaultsKt$DragHandleWithTooltip$1$1$1(i8, stringsKt__StringsKt$$ExternalSyntheticLambda0));
                                internalStateBuilder.transition(classReference, Reflection.getOrCreateKotlinClass(MessageListEvent.MessagesLoaded.class), new SheetDefaultsKt$DragHandleWithTooltip$1$1$1(i10, new FeatureMessageReaderModuleKt$$ExternalSyntheticLambda1(10)), new SheetDefaultsKt$DragHandleWithTooltip$1$1$1(i9, new FeatureMessageReaderModuleKt$$ExternalSyntheticLambda1(11)));
                                break;
                            default:
                                internalStateBuilder.onEnter = new MovableContentKt$$ExternalSyntheticLambda0(14, invalidationTracker$implementation$13);
                                FeatureMessageReaderModuleKt$$ExternalSyntheticLambda1 featureMessageReaderModuleKt$$ExternalSyntheticLambda1 = new FeatureMessageReaderModuleKt$$ExternalSyntheticLambda1(15);
                                ClassReference classReference2 = internalStateBuilder.stateClass;
                                internalStateBuilder.transition(classReference2, Reflection.getOrCreateKotlinClass(MessageListEvent.UpdatePreferences.class), new SetupGlobalStateKt$globalState$lambda$0$$inlined$transition$default$2(26), new SheetDefaultsKt$DragHandleWithTooltip$1$1$1(24, featureMessageReaderModuleKt$$ExternalSyntheticLambda1));
                                internalStateBuilder.transition(classReference2, Reflection.getOrCreateKotlinClass(MessageListEvent.SortCriteriaLoaded.class), new SetupGlobalStateKt$globalState$lambda$0$$inlined$transition$default$2(27), new SheetDefaultsKt$DragHandleWithTooltip$1$1$1(25, new FeatureMessageReaderModuleKt$$ExternalSyntheticLambda1(i10)));
                                internalStateBuilder.transition(classReference2, Reflection.getOrCreateKotlinClass(MessageListEvent.AllConfigsReady.class), new SheetDefaultsKt$DragHandleWithTooltip$1$1$1(22, new FeatureMessageReaderModuleKt$$ExternalSyntheticLambda1(i9)), new SheetDefaultsKt$DragHandleWithTooltip$1$1$1(23, new FeatureMessageReaderModuleKt$$ExternalSyntheticLambda1(i8)));
                                break;
                        }
                        return unit2;
                    }
                });
                stateMachineBuilder.state(Reflection.getOrCreateKotlinClass(MessageListState.LoadedMessages.class), new KoinModuleKt$$ExternalSyntheticLambda0(11));
                stateMachineBuilder.state(Reflection.getOrCreateKotlinClass(MessageListState.SelectingMessages.class), new MapEntrySerializer$$ExternalSyntheticLambda0(i7, invalidationTracker$implementation$1, invalidationTracker$implementation$12));
                stateMachineBuilder.state(Reflection.getOrCreateKotlinClass(MessageListState.SearchingMessages.class), new KoinModuleKt$$ExternalSyntheticLambda0(12));
                return unit;
        }
    }
}
