package androidx.navigation.internal;

import android.content.res.Resources;
import android.os.Bundle;
import androidx.activity.compose.BackHandlerKt$BackHandler$lambda$3$0$$inlined$onStopOrDispose$1;
import androidx.camera.core.impl.Config;
import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimationScope;
import androidx.compose.animation.core.AnimationState;
import androidx.compose.animation.core.ArcSplineKt;
import androidx.compose.animation.core.InfiniteTransition;
import androidx.compose.animation.core.TargetBasedAnimation;
import androidx.compose.foundation.gestures.DefaultFlingBehavior;
import androidx.compose.foundation.gestures.MouseWheelScrollingLogic;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.gestures.ScrollableKt;
import androidx.compose.foundation.gestures.ScrollingLogic$nestedScrollScope$1;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.foundation.lazy.LazyItemScopeImpl;
import androidx.compose.foundation.lazy.LazyListIntervalContent;
import androidx.compose.foundation.lazy.LazyListScrollScopeKt$LazyLayoutScrollScope$1;
import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.foundation.lazy.grid.LazyGridMeasureResult;
import androidx.compose.foundation.lazy.layout.PrefetchHandleProvider$HandleAndRequestImpl;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.foundation.text.CoreTextFieldKt$$ExternalSyntheticLambda1;
import androidx.compose.foundation.text.CoreTextFieldKt$CoreTextField$lambda$18$0$$inlined$onDispose$1;
import androidx.compose.foundation.text.LegacyTextFieldState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.compose.runtime.State;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.SubcomposeLayoutState;
import androidx.compose.ui.platform.TestTagKt;
import androidx.compose.ui.platform.WeakCache;
import androidx.compose.ui.text.input.ImeOptions;
import androidx.compose.ui.text.input.PlatformTextInputService;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.compose.ui.text.input.TextInputService;
import androidx.compose.ui.text.input.TextInputSession;
import androidx.datastore.core.SimpleActor$$ExternalSyntheticLambda0;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.lifecycle.compose.LifecycleStartStopEffectScope;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavDestination;
import androidx.navigation.NavGraphBuilder;
import androidx.navigation.NavHostController;
import androidx.navigation.compose.NavHostKt$$ExternalSyntheticLambda14;
import androidx.work.Operation$State;
import app.k9mail.autodiscovery.api.ImapServerSettings;
import app.k9mail.autodiscovery.api.SmtpServerSettings;
import app.k9mail.autodiscovery.autoconfig.ClientConfigParser;
import app.k9mail.autodiscovery.autoconfig.ClientConfigParser$parseEmailProvider$1$1;
import app.k9mail.core.ui.compose.designsystem.molecule.input.TextInputKt;
import app.k9mail.core.ui.compose.designsystem.organism.BasicDialogKt$$ExternalSyntheticLambda0;
import app.k9mail.feature.account.common.domain.entity.AuthenticationType;
import app.k9mail.feature.account.common.domain.entity.IncomingProtocolType;
import app.k9mail.feature.account.common.domain.entity.InteractionMode;
import app.k9mail.feature.account.server.settings.ui.incoming.IncomingServerSettingsContract$State;
import app.k9mail.feature.account.server.settings.ui.incoming.content.ComposableSingletons$IncomingFormItemsKt;
import app.k9mail.feature.account.server.settings.ui.incoming.content.ImapFormItemsKt$$ExternalSyntheticLambda1;
import app.k9mail.feature.account.server.settings.ui.incoming.content.IncomingFormItemsKt$$ExternalSyntheticLambda6;
import app.k9mail.feature.account.server.settings.ui.outgoing.OutgoingServerSettingsContract$State;
import app.k9mail.feature.account.server.settings.ui.outgoing.content.ComposableSingletons$OutgoingFormItemsKt;
import app.k9mail.feature.account.server.settings.ui.outgoing.content.OutgoingFormItemsKt$$ExternalSyntheticLambda0;
import app.k9mail.feature.account.server.settings.ui.outgoing.content.OutgoingFormItemsKt$$ExternalSyntheticLambda5;
import app.k9mail.feature.account.setup.domain.entity.EmailCheckFrequency;
import app.k9mail.feature.account.setup.domain.entity.EmailDisplayCount;
import app.k9mail.feature.account.setup.navigation.AccountSetupNavHostKt$$ExternalSyntheticLambda3;
import app.k9mail.feature.account.setup.navigation.AccountSetupNavHostKt$$ExternalSyntheticLambda4;
import app.k9mail.feature.account.setup.navigation.AccountSetupNavHostKt$$ExternalSyntheticLambda8;
import app.k9mail.feature.account.setup.ui.options.display.DisplayOptionsContract$State;
import app.k9mail.feature.account.setup.ui.options.display.DisplayOptionsScreenKt;
import app.k9mail.feature.account.setup.ui.options.sync.SyncOptionsContract$State;
import app.k9mail.feature.account.setup.ui.options.sync.SyncOptionsScreenKt;
import app.k9mail.feature.launcher.navigation.FeatureLauncherNavHostKt$$ExternalSyntheticLambda2;
import app.k9mail.feature.onboarding.migration.noop.NoOpOnboardingMigrationManager;
import com.fsck.k9.R;
import com.fsck.k9.preferences.XmlSettingsParser$$ExternalSyntheticLambda7;
import com.fsck.k9.sasl.OAuthBearer;
import java.util.ArrayList;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.EmptyList;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlin.jvm.internal.Ref$FloatRef;
import kotlin.jvm.internal.Ref$IntRef;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.sequences.SequencesKt___SequencesKt$$ExternalSyntheticLambda0;
import kotlinx.collections.immutable.ImmutableList;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.channels.BufferedChannel$$ExternalSyntheticLambda1;
import net.thunderbird.core.validation.ValidationError;
import net.thunderbird.core.validation.input.StringInputField;
import net.thunderbird.feature.mail.message.list.ui.component.DefaultMessageListScope;
import okio.Okio;
import org.jetbrains.compose.resources.StringResourcesKt$stringResource$str$3$1;
import org.jsoup.helper.Validate;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class NavControllerImpl$$ExternalSyntheticLambda0 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ Object f$2;
    public final /* synthetic */ Object f$3;

    public /* synthetic */ NavControllerImpl$$ExternalSyntheticLambda0(Animatable animatable, AnimationState animationState, Function1 function1, Ref$BooleanRef ref$BooleanRef) {
        this.$r8$classId = 1;
        this.f$1 = animatable;
        this.f$2 = animationState;
        this.f$3 = function1;
        this.f$0 = ref$BooleanRef;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        final int i2 = 4;
        final int i3 = 0;
        final int i4 = 2;
        final int i5 = 3;
        Unit unit = Unit.INSTANCE;
        Object obj2 = this.f$3;
        Object obj3 = this.f$2;
        Object obj4 = this.f$1;
        Object obj5 = this.f$0;
        final int i6 = 1;
        switch (i) {
            case 0:
                NavBackStackEntry navBackStackEntry = (NavBackStackEntry) obj;
                navBackStackEntry.getClass();
                ((Ref$BooleanRef) obj5).element = true;
                ((NavControllerImpl) obj4).addEntryToBackStack((NavDestination) obj3, (Bundle) obj2, navBackStackEntry, EmptyList.INSTANCE);
                return unit;
            case 1:
                Animatable animatable = (Animatable) obj4;
                AnimationState animationState = (AnimationState) obj3;
                Function1 function1 = (Function1) obj2;
                Ref$BooleanRef ref$BooleanRef = (Ref$BooleanRef) obj5;
                AnimationScope animationScope = (AnimationScope) obj;
                ArcSplineKt.updateState(animationScope, animatable.internalState);
                ParcelableSnapshotMutableState parcelableSnapshotMutableState = animationScope.value$delegate;
                Object access$clampToBounds = Animatable.access$clampToBounds(animatable, parcelableSnapshotMutableState.getValue());
                if (!Intrinsics.areEqual(access$clampToBounds, parcelableSnapshotMutableState.getValue())) {
                    animatable.internalState.value$delegate.setValue(access$clampToBounds);
                    animationState.value$delegate.setValue(access$clampToBounds);
                    if (function1 != null) {
                        function1.invoke(animatable);
                    }
                    animationScope.cancelAnimation();
                    ref$BooleanRef.element = true;
                } else if (function1 != null) {
                    function1.invoke(animatable);
                }
                return unit;
            case 2:
                InfiniteTransition infiniteTransition = (InfiniteTransition) obj4;
                Ref$FloatRef ref$FloatRef = (Ref$FloatRef) obj3;
                CoroutineScope coroutineScope = (CoroutineScope) obj2;
                long longValue = ((Long) obj).longValue();
                State state = (State) ((MutableState) obj5).getValue();
                long longValue2 = state != null ? ((Number) state.getValue()).longValue() : longValue;
                long j = infiniteTransition.startTimeNanos;
                MutableVector mutableVector = infiniteTransition._animations;
                if (j == Long.MIN_VALUE || ref$FloatRef.element != ArcSplineKt.getDurationScale(coroutineScope.getCoroutineContext())) {
                    infiniteTransition.startTimeNanos = longValue;
                    Object[] objArr = mutableVector.content;
                    int i7 = mutableVector.size;
                    for (int i8 = 0; i8 < i7; i8++) {
                        ((InfiniteTransition.TransitionAnimationState) objArr[i8]).startOnTheNextFrame = true;
                    }
                    ref$FloatRef.element = ArcSplineKt.getDurationScale(coroutineScope.getCoroutineContext());
                }
                float f = ref$FloatRef.element;
                if (f == 0.0f) {
                    Object[] objArr2 = mutableVector.content;
                    int i9 = mutableVector.size;
                    while (i3 < i9) {
                        InfiniteTransition.TransitionAnimationState transitionAnimationState = (InfiniteTransition.TransitionAnimationState) objArr2[i3];
                        transitionAnimationState.value$delegate.setValue(transitionAnimationState.animation.mutableTargetValue);
                        transitionAnimationState.startOnTheNextFrame = true;
                        i3++;
                    }
                } else {
                    long j2 = (long) ((longValue2 - infiniteTransition.startTimeNanos) / f);
                    Object[] objArr3 = mutableVector.content;
                    int i10 = mutableVector.size;
                    boolean z = true;
                    for (int i11 = 0; i11 < i10; i11++) {
                        InfiniteTransition.TransitionAnimationState transitionAnimationState2 = (InfiniteTransition.TransitionAnimationState) objArr3[i11];
                        if (!transitionAnimationState2.isFinished) {
                            transitionAnimationState2.this$0.refreshChildNeeded$delegate.setValue(Boolean.FALSE);
                            if (transitionAnimationState2.startOnTheNextFrame) {
                                transitionAnimationState2.startOnTheNextFrame = false;
                                transitionAnimationState2.playTimeNanosOffset = j2;
                            }
                            long j3 = j2 - transitionAnimationState2.playTimeNanosOffset;
                            transitionAnimationState2.value$delegate.setValue(transitionAnimationState2.animation.getValueFromNanos(j3));
                            TargetBasedAnimation targetBasedAnimation = transitionAnimationState2.animation;
                            targetBasedAnimation.getClass();
                            transitionAnimationState2.isFinished = Config.CC.$default$isFinishedFromNanos(targetBasedAnimation, j3);
                        }
                        if (!transitionAnimationState2.isFinished) {
                            z = false;
                        }
                    }
                    infiniteTransition.isRunning$delegate.setValue(Boolean.valueOf(!z));
                }
                return unit;
            case 3:
                Ref$FloatRef ref$FloatRef2 = (Ref$FloatRef) obj5;
                DefaultFlingBehavior defaultFlingBehavior = (DefaultFlingBehavior) obj2;
                AnimationScope animationScope2 = (AnimationScope) obj;
                float floatValue = ((Number) animationScope2.value$delegate.getValue()).floatValue() - ref$FloatRef2.element;
                float scrollBy = ((LazyListScrollScopeKt$LazyLayoutScrollScope$1) obj4).scrollBy(floatValue);
                ref$FloatRef2.element = ((Number) animationScope2.value$delegate.getValue()).floatValue();
                ((Ref$FloatRef) obj3).element = ((Number) animationScope2.typeConverter.convertFromVector.invoke(animationScope2.velocityVector)).floatValue();
                if (Math.abs(floatValue - scrollBy) > 0.5f) {
                    animationScope2.cancelAnimation();
                }
                defaultFlingBehavior.getClass();
                return unit;
            case 4:
                Ref$FloatRef ref$FloatRef3 = (Ref$FloatRef) obj5;
                MouseWheelScrollingLogic mouseWheelScrollingLogic = (MouseWheelScrollingLogic) obj4;
                ScrollingLogic$nestedScrollScope$1 scrollingLogic$nestedScrollScope$1 = (ScrollingLogic$nestedScrollScope$1) obj3;
                XmlSettingsParser$$ExternalSyntheticLambda7 xmlSettingsParser$$ExternalSyntheticLambda7 = (XmlSettingsParser$$ExternalSyntheticLambda7) obj2;
                AnimationScope animationScope3 = (AnimationScope) obj;
                float floatValue2 = ((Number) animationScope3.value$delegate.getValue()).floatValue() - ref$FloatRef3.element;
                if (!ScrollableKt.access$isLowScrollingDelta(floatValue2)) {
                    if (!ScrollableKt.access$isLowScrollingDelta(floatValue2 - mouseWheelScrollingLogic.dispatchMouseWheelScroll(scrollingLogic$nestedScrollScope$1, floatValue2))) {
                        animationScope3.cancelAnimation();
                        return unit;
                    }
                    ref$FloatRef3.element += floatValue2;
                }
                if (((Boolean) xmlSettingsParser$$ExternalSyntheticLambda7.invoke(Float.valueOf(ref$FloatRef3.element))).booleanValue()) {
                    animationScope3.cancelAnimation();
                }
                return unit;
            case 5:
                List list = (List) obj5;
                Ref$IntRef ref$IntRef = (Ref$IntRef) obj4;
                List list2 = (List) obj3;
                LazyGridMeasureResult lazyGridMeasureResult = (LazyGridMeasureResult) obj2;
                PrefetchHandleProvider$HandleAndRequestImpl prefetchHandleProvider$HandleAndRequestImpl = (PrefetchHandleProvider$HandleAndRequestImpl) obj;
                SubcomposeLayoutState.PrecomposedSlotHandle precomposedSlotHandle = prefetchHandleProvider$HandleAndRequestImpl.precomposeHandle;
                int placeablesCount = precomposedSlotHandle != null ? precomposedSlotHandle.getPlaceablesCount() : 0;
                int i12 = 0;
                while (i3 < placeablesCount) {
                    Orientation orientation = lazyGridMeasureResult.orientation;
                    SubcomposeLayoutState.PrecomposedSlotHandle precomposedSlotHandle2 = prefetchHandleProvider$HandleAndRequestImpl.precomposeHandle;
                    i12 += (int) (orientation == Orientation.Vertical ? 4294967295L & (precomposedSlotHandle2 != null ? precomposedSlotHandle2.mo586getSizeYEO4UFw(i3) : 0L) : (precomposedSlotHandle2 != null ? precomposedSlotHandle2.mo586getSizeYEO4UFw(i3) : 0L) >> 32);
                    i3++;
                }
                if (list != null) {
                    list.add(Integer.valueOf(i12));
                }
                if (ref$IntRef.element != list2.size()) {
                    ref$IntRef.element++;
                }
                return unit;
            case 6:
                LegacyTextFieldState legacyTextFieldState = (LegacyTextFieldState) obj5;
                TextInputService textInputService = (TextInputService) obj4;
                TextFieldValue textFieldValue = (TextFieldValue) obj3;
                ImeOptions imeOptions = (ImeOptions) obj2;
                if (legacyTextFieldState.getHasFocus()) {
                    WeakCache weakCache = legacyTextFieldState.processor;
                    CoreTextFieldKt$$ExternalSyntheticLambda1 coreTextFieldKt$$ExternalSyntheticLambda1 = legacyTextFieldState.onValueChange;
                    CoreTextFieldKt$$ExternalSyntheticLambda1 coreTextFieldKt$$ExternalSyntheticLambda12 = legacyTextFieldState.onImeActionPerformed;
                    Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
                    SimpleActor$$ExternalSyntheticLambda0 simpleActor$$ExternalSyntheticLambda0 = new SimpleActor$$ExternalSyntheticLambda0(weakCache, coreTextFieldKt$$ExternalSyntheticLambda1, ref$ObjectRef, 8);
                    PlatformTextInputService platformTextInputService = textInputService.platformTextInputService;
                    platformTextInputService.startInput(textFieldValue, imeOptions, simpleActor$$ExternalSyntheticLambda0, coreTextFieldKt$$ExternalSyntheticLambda12);
                    TextInputSession textInputSession = new TextInputSession(textInputService, platformTextInputService);
                    textInputService._currentInputSession.set(textInputSession);
                    ref$ObjectRef.element = textInputSession;
                    legacyTextFieldState.inputSession = textInputSession;
                }
                return new CoreTextFieldKt$CoreTextField$lambda$18$0$$inlined$onDispose$1();
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                ClientConfigParser clientConfigParser = (ClientConfigParser) obj4;
                Ref$BooleanRef ref$BooleanRef2 = (Ref$BooleanRef) obj5;
                ArrayList arrayList = (ArrayList) obj3;
                ArrayList arrayList2 = (ArrayList) obj2;
                if (((Integer) obj).intValue() == 2) {
                    String name = clientConfigParser.pullParser.getName();
                    if (name != null) {
                        int hashCode = name.hashCode();
                        if (hashCode != -1874653745) {
                            if (hashCode != -1326197564) {
                                if (hashCode == -79569143 && name.equals("incomingServer")) {
                                    ImapServerSettings imapServerSettings = (ImapServerSettings) clientConfigParser.parseServer("imap", new ClientConfigParser$parseEmailProvider$1$1(5, clientConfigParser, ClientConfigParser.class, "createImapServerSettings", "createImapServerSettings-06oWq0Q(Ljava/lang/String;ILapp/k9mail/autodiscovery/api/ConnectionSecurity;Ljava/util/List;Ljava/lang/String;)Lapp/k9mail/autodiscovery/api/ImapServerSettings;", 0, 0));
                                    if (imapServerSettings != null) {
                                        arrayList.add(imapServerSettings);
                                    }
                                }
                            } else if (name.equals("domain")) {
                                if (ClientConfigParser.isValidHostname(clientConfigParser.replaceVariables(clientConfigParser.readText()))) {
                                    ref$BooleanRef2.element = true;
                                }
                            }
                        } else if (name.equals("outgoingServer")) {
                            SmtpServerSettings smtpServerSettings = (SmtpServerSettings) clientConfigParser.parseServer("smtp", new ClientConfigParser$parseEmailProvider$1$1(5, clientConfigParser, ClientConfigParser.class, "createSmtpServerSettings", "createSmtpServerSettings-06oWq0Q(Ljava/lang/String;ILapp/k9mail/autodiscovery/api/ConnectionSecurity;Ljava/util/List;Ljava/lang/String;)Lapp/k9mail/autodiscovery/api/SmtpServerSettings;", 0, 1));
                            if (smtpServerSettings != null) {
                                arrayList2.add(smtpServerSettings);
                            }
                        }
                    }
                    clientConfigParser.skipElement();
                }
                return unit;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                InteractionMode interactionMode = (InteractionMode) obj5;
                final IncomingServerSettingsContract$State incomingServerSettingsContract$State = (IncomingServerSettingsContract$State) obj4;
                final Function1 function12 = (Function1) obj3;
                Resources resources = (Resources) obj2;
                LazyListIntervalContent lazyListIntervalContent = (LazyListIntervalContent) obj;
                lazyListIntervalContent.getClass();
                interactionMode.getClass();
                incomingServerSettingsContract$State.getClass();
                function12.getClass();
                resources.getClass();
                Config.CC.item$default(lazyListIntervalContent, null, ComposableSingletons$IncomingFormItemsKt.lambda$1594426353, 3);
                if (interactionMode == InteractionMode.Create) {
                    Config.CC.item$default(lazyListIntervalContent, null, new ComposableLambdaImpl(402511692, new Function3() { // from class: app.k9mail.feature.account.server.settings.ui.incoming.content.ImapFormItemsKt$$ExternalSyntheticLambda0
                        @Override // kotlin.jvm.functions.Function3
                        public final Object invoke(Object obj6, Object obj7, Object obj8) {
                            int i13 = i5;
                            Unit unit2 = Unit.INSTANCE;
                            NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
                            Function1 function13 = function12;
                            IncomingServerSettingsContract$State incomingServerSettingsContract$State2 = incomingServerSettingsContract$State;
                            int i14 = 16;
                            switch (i13) {
                                case 0:
                                    Composer composer = (Composer) obj7;
                                    int intValue = ((Integer) obj8).intValue();
                                    ((LazyItemScopeImpl) obj6).getClass();
                                    GapComposer gapComposer = (GapComposer) composer;
                                    if (!gapComposer.shouldExecute(intValue & 1, (intValue & 17) != 16)) {
                                        gapComposer.skipToGroupEnd();
                                        break;
                                    } else {
                                        String stringResource = Operation$State.stringResource(gapComposer, R.string.account_server_settings_incoming_imap_namespace_label);
                                        boolean z2 = incomingServerSettingsContract$State2.imapAutodetectNamespaceEnabled;
                                        boolean changed = gapComposer.changed(function13);
                                        Object rememberedValue = gapComposer.rememberedValue();
                                        if (changed || rememberedValue == neverEqualPolicy) {
                                            rememberedValue = new NavHostKt$$ExternalSyntheticLambda14(11, function13);
                                            gapComposer.updateRememberedValue(rememberedValue);
                                        }
                                        TextInputKt.CheckboxInput(0, 24, OAuthBearer.defaultItemPadding(gapComposer), gapComposer, null, stringResource, null, (Function1) rememberedValue, z2);
                                        break;
                                    }
                                case 1:
                                    Composer composer2 = (Composer) obj7;
                                    int intValue2 = ((Integer) obj8).intValue();
                                    ((LazyItemScopeImpl) obj6).getClass();
                                    GapComposer gapComposer2 = (GapComposer) composer2;
                                    if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 17) != 16)) {
                                        gapComposer2.skipToGroupEnd();
                                        break;
                                    } else {
                                        String stringResource2 = Operation$State.stringResource(gapComposer2, R.string.account_server_settings_incoming_imap_compression_label);
                                        boolean z3 = incomingServerSettingsContract$State2.imapUseCompression;
                                        boolean changed2 = gapComposer2.changed(function13);
                                        Object rememberedValue2 = gapComposer2.rememberedValue();
                                        if (changed2 || rememberedValue2 == neverEqualPolicy) {
                                            rememberedValue2 = new NavHostKt$$ExternalSyntheticLambda14(9, function13);
                                            gapComposer2.updateRememberedValue(rememberedValue2);
                                        }
                                        TextInputKt.CheckboxInput(0, 24, OAuthBearer.defaultItemPadding(gapComposer2), gapComposer2, null, stringResource2, null, (Function1) rememberedValue2, z3);
                                        break;
                                    }
                                case 2:
                                    Composer composer3 = (Composer) obj7;
                                    int intValue3 = ((Integer) obj8).intValue();
                                    ((LazyItemScopeImpl) obj6).getClass();
                                    GapComposer gapComposer3 = (GapComposer) composer3;
                                    if (!gapComposer3.shouldExecute(intValue3 & 1, (intValue3 & 17) != 16)) {
                                        gapComposer3.skipToGroupEnd();
                                        break;
                                    } else {
                                        String stringResource3 = Operation$State.stringResource(gapComposer3, R.string.account_server_settings_incoming_imap_send_client_info_label);
                                        boolean z4 = incomingServerSettingsContract$State2.imapSendClientInfo;
                                        boolean changed3 = gapComposer3.changed(function13);
                                        Object rememberedValue3 = gapComposer3.rememberedValue();
                                        if (changed3 || rememberedValue3 == neverEqualPolicy) {
                                            rememberedValue3 = new NavHostKt$$ExternalSyntheticLambda14(10, function13);
                                            gapComposer3.updateRememberedValue(rememberedValue3);
                                        }
                                        TextInputKt.CheckboxInput(0, 24, OAuthBearer.defaultItemPadding(gapComposer3), gapComposer3, null, stringResource3, null, (Function1) rememberedValue3, z4);
                                        break;
                                    }
                                case 3:
                                    Composer composer4 = (Composer) obj7;
                                    int intValue4 = ((Integer) obj8).intValue();
                                    ((LazyItemScopeImpl) obj6).getClass();
                                    GapComposer gapComposer4 = (GapComposer) composer4;
                                    if (!gapComposer4.shouldExecute(intValue4 & 1, (intValue4 & 17) != 16)) {
                                        gapComposer4.skipToGroupEnd();
                                        break;
                                    } else {
                                        IncomingProtocolType.Companion.getClass();
                                        ImmutableList immutableList = Okio.toImmutableList(IncomingProtocolType.$ENTRIES);
                                        IncomingProtocolType incomingProtocolType = incomingServerSettingsContract$State2.protocolType;
                                        boolean changed4 = gapComposer4.changed(function13);
                                        Object rememberedValue4 = gapComposer4.rememberedValue();
                                        if (changed4 || rememberedValue4 == neverEqualPolicy) {
                                            rememberedValue4 = new NavHostKt$$ExternalSyntheticLambda14(15, function13);
                                            gapComposer4.updateRememberedValue(rememberedValue4);
                                        }
                                        TextInputKt.SelectInput(immutableList, incomingProtocolType, (Function1) rememberedValue4, null, null, Operation$State.stringResource(gapComposer4, R.string.account_server_settings_protocol_type_label), OAuthBearer.defaultItemPadding(gapComposer4), gapComposer4, 0, 24);
                                        break;
                                    }
                                default:
                                    Composer composer5 = (Composer) obj7;
                                    int intValue5 = ((Integer) obj8).intValue();
                                    ((LazyItemScopeImpl) obj6).getClass();
                                    GapComposer gapComposer5 = (GapComposer) composer5;
                                    if (!gapComposer5.shouldExecute(intValue5 & 1, (intValue5 & 17) != 16)) {
                                        gapComposer5.skipToGroupEnd();
                                        break;
                                    } else {
                                        String str = incomingServerSettingsContract$State2.clientCertificateAlias;
                                        boolean changed5 = gapComposer5.changed(function13);
                                        Object rememberedValue5 = gapComposer5.rememberedValue();
                                        if (changed5 || rememberedValue5 == neverEqualPolicy) {
                                            rememberedValue5 = new NavHostKt$$ExternalSyntheticLambda14(i14, function13);
                                            gapComposer5.updateRememberedValue(rememberedValue5);
                                        }
                                        Validate.ClientCertificateInput(str, (Function1) rememberedValue5, null, Operation$State.stringResource(gapComposer5, R.string.account_server_settings_client_certificate_label), OAuthBearer.defaultItemPadding(gapComposer5), gapComposer5, 0);
                                        break;
                                    }
                            }
                            return unit2;
                        }
                    }, true), 3);
                }
                Config.CC.item$default(lazyListIntervalContent, null, new ComposableLambdaImpl(611140904, new ImapFormItemsKt$$ExternalSyntheticLambda1(incomingServerSettingsContract$State, resources, function12, i6), true), 3);
                Config.CC.item$default(lazyListIntervalContent, null, new ComposableLambdaImpl(1410715433, new ImapFormItemsKt$$ExternalSyntheticLambda1(incomingServerSettingsContract$State, function12, resources, i4), true), 3);
                Config.CC.item$default(lazyListIntervalContent, null, new ComposableLambdaImpl(-2084677334, new ImapFormItemsKt$$ExternalSyntheticLambda1(incomingServerSettingsContract$State, resources, function12, i5), true), 3);
                Config.CC.item$default(lazyListIntervalContent, null, new ComposableLambdaImpl(-1285102805, new ImapFormItemsKt$$ExternalSyntheticLambda1(incomingServerSettingsContract$State, function12, resources, i2), true), 3);
                Config.CC.item$default(lazyListIntervalContent, null, new ComposableLambdaImpl(-485528276, new ImapFormItemsKt$$ExternalSyntheticLambda1(incomingServerSettingsContract$State, resources, function12, 5), true), 3);
                if (incomingServerSettingsContract$State.authenticationType.isPasswordRequired) {
                    Config.CC.item$default(lazyListIntervalContent, null, new ComposableLambdaImpl(1937419715, new IncomingFormItemsKt$$ExternalSyntheticLambda6(incomingServerSettingsContract$State, resources, interactionMode, function12), true), 3);
                }
                Config.CC.item$default(lazyListIntervalContent, null, new ComposableLambdaImpl(314046253, new Function3() { // from class: app.k9mail.feature.account.server.settings.ui.incoming.content.ImapFormItemsKt$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function3
                    public final Object invoke(Object obj6, Object obj7, Object obj8) {
                        int i13 = i2;
                        Unit unit2 = Unit.INSTANCE;
                        NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
                        Function1 function13 = function12;
                        IncomingServerSettingsContract$State incomingServerSettingsContract$State2 = incomingServerSettingsContract$State;
                        int i14 = 16;
                        switch (i13) {
                            case 0:
                                Composer composer = (Composer) obj7;
                                int intValue = ((Integer) obj8).intValue();
                                ((LazyItemScopeImpl) obj6).getClass();
                                GapComposer gapComposer = (GapComposer) composer;
                                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 17) != 16)) {
                                    gapComposer.skipToGroupEnd();
                                    break;
                                } else {
                                    String stringResource = Operation$State.stringResource(gapComposer, R.string.account_server_settings_incoming_imap_namespace_label);
                                    boolean z2 = incomingServerSettingsContract$State2.imapAutodetectNamespaceEnabled;
                                    boolean changed = gapComposer.changed(function13);
                                    Object rememberedValue = gapComposer.rememberedValue();
                                    if (changed || rememberedValue == neverEqualPolicy) {
                                        rememberedValue = new NavHostKt$$ExternalSyntheticLambda14(11, function13);
                                        gapComposer.updateRememberedValue(rememberedValue);
                                    }
                                    TextInputKt.CheckboxInput(0, 24, OAuthBearer.defaultItemPadding(gapComposer), gapComposer, null, stringResource, null, (Function1) rememberedValue, z2);
                                    break;
                                }
                            case 1:
                                Composer composer2 = (Composer) obj7;
                                int intValue2 = ((Integer) obj8).intValue();
                                ((LazyItemScopeImpl) obj6).getClass();
                                GapComposer gapComposer2 = (GapComposer) composer2;
                                if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 17) != 16)) {
                                    gapComposer2.skipToGroupEnd();
                                    break;
                                } else {
                                    String stringResource2 = Operation$State.stringResource(gapComposer2, R.string.account_server_settings_incoming_imap_compression_label);
                                    boolean z3 = incomingServerSettingsContract$State2.imapUseCompression;
                                    boolean changed2 = gapComposer2.changed(function13);
                                    Object rememberedValue2 = gapComposer2.rememberedValue();
                                    if (changed2 || rememberedValue2 == neverEqualPolicy) {
                                        rememberedValue2 = new NavHostKt$$ExternalSyntheticLambda14(9, function13);
                                        gapComposer2.updateRememberedValue(rememberedValue2);
                                    }
                                    TextInputKt.CheckboxInput(0, 24, OAuthBearer.defaultItemPadding(gapComposer2), gapComposer2, null, stringResource2, null, (Function1) rememberedValue2, z3);
                                    break;
                                }
                            case 2:
                                Composer composer3 = (Composer) obj7;
                                int intValue3 = ((Integer) obj8).intValue();
                                ((LazyItemScopeImpl) obj6).getClass();
                                GapComposer gapComposer3 = (GapComposer) composer3;
                                if (!gapComposer3.shouldExecute(intValue3 & 1, (intValue3 & 17) != 16)) {
                                    gapComposer3.skipToGroupEnd();
                                    break;
                                } else {
                                    String stringResource3 = Operation$State.stringResource(gapComposer3, R.string.account_server_settings_incoming_imap_send_client_info_label);
                                    boolean z4 = incomingServerSettingsContract$State2.imapSendClientInfo;
                                    boolean changed3 = gapComposer3.changed(function13);
                                    Object rememberedValue3 = gapComposer3.rememberedValue();
                                    if (changed3 || rememberedValue3 == neverEqualPolicy) {
                                        rememberedValue3 = new NavHostKt$$ExternalSyntheticLambda14(10, function13);
                                        gapComposer3.updateRememberedValue(rememberedValue3);
                                    }
                                    TextInputKt.CheckboxInput(0, 24, OAuthBearer.defaultItemPadding(gapComposer3), gapComposer3, null, stringResource3, null, (Function1) rememberedValue3, z4);
                                    break;
                                }
                            case 3:
                                Composer composer4 = (Composer) obj7;
                                int intValue4 = ((Integer) obj8).intValue();
                                ((LazyItemScopeImpl) obj6).getClass();
                                GapComposer gapComposer4 = (GapComposer) composer4;
                                if (!gapComposer4.shouldExecute(intValue4 & 1, (intValue4 & 17) != 16)) {
                                    gapComposer4.skipToGroupEnd();
                                    break;
                                } else {
                                    IncomingProtocolType.Companion.getClass();
                                    ImmutableList immutableList = Okio.toImmutableList(IncomingProtocolType.$ENTRIES);
                                    IncomingProtocolType incomingProtocolType = incomingServerSettingsContract$State2.protocolType;
                                    boolean changed4 = gapComposer4.changed(function13);
                                    Object rememberedValue4 = gapComposer4.rememberedValue();
                                    if (changed4 || rememberedValue4 == neverEqualPolicy) {
                                        rememberedValue4 = new NavHostKt$$ExternalSyntheticLambda14(15, function13);
                                        gapComposer4.updateRememberedValue(rememberedValue4);
                                    }
                                    TextInputKt.SelectInput(immutableList, incomingProtocolType, (Function1) rememberedValue4, null, null, Operation$State.stringResource(gapComposer4, R.string.account_server_settings_protocol_type_label), OAuthBearer.defaultItemPadding(gapComposer4), gapComposer4, 0, 24);
                                    break;
                                }
                            default:
                                Composer composer5 = (Composer) obj7;
                                int intValue5 = ((Integer) obj8).intValue();
                                ((LazyItemScopeImpl) obj6).getClass();
                                GapComposer gapComposer5 = (GapComposer) composer5;
                                if (!gapComposer5.shouldExecute(intValue5 & 1, (intValue5 & 17) != 16)) {
                                    gapComposer5.skipToGroupEnd();
                                    break;
                                } else {
                                    String str = incomingServerSettingsContract$State2.clientCertificateAlias;
                                    boolean changed5 = gapComposer5.changed(function13);
                                    Object rememberedValue5 = gapComposer5.rememberedValue();
                                    if (changed5 || rememberedValue5 == neverEqualPolicy) {
                                        rememberedValue5 = new NavHostKt$$ExternalSyntheticLambda14(i14, function13);
                                        gapComposer5.updateRememberedValue(rememberedValue5);
                                    }
                                    Validate.ClientCertificateInput(str, (Function1) rememberedValue5, null, Operation$State.stringResource(gapComposer5, R.string.account_server_settings_client_certificate_label), OAuthBearer.defaultItemPadding(gapComposer5), gapComposer5, 0);
                                    break;
                                }
                        }
                        return unit2;
                    }
                }, true), 3);
                if (incomingServerSettingsContract$State.protocolType == IncomingProtocolType.IMAP) {
                    Config.CC.item$default(lazyListIntervalContent, null, new ComposableLambdaImpl(747318664, new Function3() { // from class: app.k9mail.feature.account.server.settings.ui.incoming.content.ImapFormItemsKt$$ExternalSyntheticLambda0
                        @Override // kotlin.jvm.functions.Function3
                        public final Object invoke(Object obj6, Object obj7, Object obj8) {
                            int i13 = i3;
                            Unit unit2 = Unit.INSTANCE;
                            NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
                            Function1 function13 = function12;
                            IncomingServerSettingsContract$State incomingServerSettingsContract$State2 = incomingServerSettingsContract$State;
                            int i14 = 16;
                            switch (i13) {
                                case 0:
                                    Composer composer = (Composer) obj7;
                                    int intValue = ((Integer) obj8).intValue();
                                    ((LazyItemScopeImpl) obj6).getClass();
                                    GapComposer gapComposer = (GapComposer) composer;
                                    if (!gapComposer.shouldExecute(intValue & 1, (intValue & 17) != 16)) {
                                        gapComposer.skipToGroupEnd();
                                        break;
                                    } else {
                                        String stringResource = Operation$State.stringResource(gapComposer, R.string.account_server_settings_incoming_imap_namespace_label);
                                        boolean z2 = incomingServerSettingsContract$State2.imapAutodetectNamespaceEnabled;
                                        boolean changed = gapComposer.changed(function13);
                                        Object rememberedValue = gapComposer.rememberedValue();
                                        if (changed || rememberedValue == neverEqualPolicy) {
                                            rememberedValue = new NavHostKt$$ExternalSyntheticLambda14(11, function13);
                                            gapComposer.updateRememberedValue(rememberedValue);
                                        }
                                        TextInputKt.CheckboxInput(0, 24, OAuthBearer.defaultItemPadding(gapComposer), gapComposer, null, stringResource, null, (Function1) rememberedValue, z2);
                                        break;
                                    }
                                case 1:
                                    Composer composer2 = (Composer) obj7;
                                    int intValue2 = ((Integer) obj8).intValue();
                                    ((LazyItemScopeImpl) obj6).getClass();
                                    GapComposer gapComposer2 = (GapComposer) composer2;
                                    if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 17) != 16)) {
                                        gapComposer2.skipToGroupEnd();
                                        break;
                                    } else {
                                        String stringResource2 = Operation$State.stringResource(gapComposer2, R.string.account_server_settings_incoming_imap_compression_label);
                                        boolean z3 = incomingServerSettingsContract$State2.imapUseCompression;
                                        boolean changed2 = gapComposer2.changed(function13);
                                        Object rememberedValue2 = gapComposer2.rememberedValue();
                                        if (changed2 || rememberedValue2 == neverEqualPolicy) {
                                            rememberedValue2 = new NavHostKt$$ExternalSyntheticLambda14(9, function13);
                                            gapComposer2.updateRememberedValue(rememberedValue2);
                                        }
                                        TextInputKt.CheckboxInput(0, 24, OAuthBearer.defaultItemPadding(gapComposer2), gapComposer2, null, stringResource2, null, (Function1) rememberedValue2, z3);
                                        break;
                                    }
                                case 2:
                                    Composer composer3 = (Composer) obj7;
                                    int intValue3 = ((Integer) obj8).intValue();
                                    ((LazyItemScopeImpl) obj6).getClass();
                                    GapComposer gapComposer3 = (GapComposer) composer3;
                                    if (!gapComposer3.shouldExecute(intValue3 & 1, (intValue3 & 17) != 16)) {
                                        gapComposer3.skipToGroupEnd();
                                        break;
                                    } else {
                                        String stringResource3 = Operation$State.stringResource(gapComposer3, R.string.account_server_settings_incoming_imap_send_client_info_label);
                                        boolean z4 = incomingServerSettingsContract$State2.imapSendClientInfo;
                                        boolean changed3 = gapComposer3.changed(function13);
                                        Object rememberedValue3 = gapComposer3.rememberedValue();
                                        if (changed3 || rememberedValue3 == neverEqualPolicy) {
                                            rememberedValue3 = new NavHostKt$$ExternalSyntheticLambda14(10, function13);
                                            gapComposer3.updateRememberedValue(rememberedValue3);
                                        }
                                        TextInputKt.CheckboxInput(0, 24, OAuthBearer.defaultItemPadding(gapComposer3), gapComposer3, null, stringResource3, null, (Function1) rememberedValue3, z4);
                                        break;
                                    }
                                case 3:
                                    Composer composer4 = (Composer) obj7;
                                    int intValue4 = ((Integer) obj8).intValue();
                                    ((LazyItemScopeImpl) obj6).getClass();
                                    GapComposer gapComposer4 = (GapComposer) composer4;
                                    if (!gapComposer4.shouldExecute(intValue4 & 1, (intValue4 & 17) != 16)) {
                                        gapComposer4.skipToGroupEnd();
                                        break;
                                    } else {
                                        IncomingProtocolType.Companion.getClass();
                                        ImmutableList immutableList = Okio.toImmutableList(IncomingProtocolType.$ENTRIES);
                                        IncomingProtocolType incomingProtocolType = incomingServerSettingsContract$State2.protocolType;
                                        boolean changed4 = gapComposer4.changed(function13);
                                        Object rememberedValue4 = gapComposer4.rememberedValue();
                                        if (changed4 || rememberedValue4 == neverEqualPolicy) {
                                            rememberedValue4 = new NavHostKt$$ExternalSyntheticLambda14(15, function13);
                                            gapComposer4.updateRememberedValue(rememberedValue4);
                                        }
                                        TextInputKt.SelectInput(immutableList, incomingProtocolType, (Function1) rememberedValue4, null, null, Operation$State.stringResource(gapComposer4, R.string.account_server_settings_protocol_type_label), OAuthBearer.defaultItemPadding(gapComposer4), gapComposer4, 0, 24);
                                        break;
                                    }
                                default:
                                    Composer composer5 = (Composer) obj7;
                                    int intValue5 = ((Integer) obj8).intValue();
                                    ((LazyItemScopeImpl) obj6).getClass();
                                    GapComposer gapComposer5 = (GapComposer) composer5;
                                    if (!gapComposer5.shouldExecute(intValue5 & 1, (intValue5 & 17) != 16)) {
                                        gapComposer5.skipToGroupEnd();
                                        break;
                                    } else {
                                        String str = incomingServerSettingsContract$State2.clientCertificateAlias;
                                        boolean changed5 = gapComposer5.changed(function13);
                                        Object rememberedValue5 = gapComposer5.rememberedValue();
                                        if (changed5 || rememberedValue5 == neverEqualPolicy) {
                                            rememberedValue5 = new NavHostKt$$ExternalSyntheticLambda14(i14, function13);
                                            gapComposer5.updateRememberedValue(rememberedValue5);
                                        }
                                        Validate.ClientCertificateInput(str, (Function1) rememberedValue5, null, Operation$State.stringResource(gapComposer5, R.string.account_server_settings_client_certificate_label), OAuthBearer.defaultItemPadding(gapComposer5), gapComposer5, 0);
                                        break;
                                    }
                            }
                            return unit2;
                        }
                    }, true), 3);
                    Config.CC.item$default(lazyListIntervalContent, null, new ComposableLambdaImpl(1943069631, new ImapFormItemsKt$$ExternalSyntheticLambda1(incomingServerSettingsContract$State, resources, function12, i3), true), 3);
                    Config.CC.item$default(lazyListIntervalContent, null, new ComposableLambdaImpl(1240473792, new Function3() { // from class: app.k9mail.feature.account.server.settings.ui.incoming.content.ImapFormItemsKt$$ExternalSyntheticLambda0
                        @Override // kotlin.jvm.functions.Function3
                        public final Object invoke(Object obj6, Object obj7, Object obj8) {
                            int i13 = i6;
                            Unit unit2 = Unit.INSTANCE;
                            NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
                            Function1 function13 = function12;
                            IncomingServerSettingsContract$State incomingServerSettingsContract$State2 = incomingServerSettingsContract$State;
                            int i14 = 16;
                            switch (i13) {
                                case 0:
                                    Composer composer = (Composer) obj7;
                                    int intValue = ((Integer) obj8).intValue();
                                    ((LazyItemScopeImpl) obj6).getClass();
                                    GapComposer gapComposer = (GapComposer) composer;
                                    if (!gapComposer.shouldExecute(intValue & 1, (intValue & 17) != 16)) {
                                        gapComposer.skipToGroupEnd();
                                        break;
                                    } else {
                                        String stringResource = Operation$State.stringResource(gapComposer, R.string.account_server_settings_incoming_imap_namespace_label);
                                        boolean z2 = incomingServerSettingsContract$State2.imapAutodetectNamespaceEnabled;
                                        boolean changed = gapComposer.changed(function13);
                                        Object rememberedValue = gapComposer.rememberedValue();
                                        if (changed || rememberedValue == neverEqualPolicy) {
                                            rememberedValue = new NavHostKt$$ExternalSyntheticLambda14(11, function13);
                                            gapComposer.updateRememberedValue(rememberedValue);
                                        }
                                        TextInputKt.CheckboxInput(0, 24, OAuthBearer.defaultItemPadding(gapComposer), gapComposer, null, stringResource, null, (Function1) rememberedValue, z2);
                                        break;
                                    }
                                case 1:
                                    Composer composer2 = (Composer) obj7;
                                    int intValue2 = ((Integer) obj8).intValue();
                                    ((LazyItemScopeImpl) obj6).getClass();
                                    GapComposer gapComposer2 = (GapComposer) composer2;
                                    if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 17) != 16)) {
                                        gapComposer2.skipToGroupEnd();
                                        break;
                                    } else {
                                        String stringResource2 = Operation$State.stringResource(gapComposer2, R.string.account_server_settings_incoming_imap_compression_label);
                                        boolean z3 = incomingServerSettingsContract$State2.imapUseCompression;
                                        boolean changed2 = gapComposer2.changed(function13);
                                        Object rememberedValue2 = gapComposer2.rememberedValue();
                                        if (changed2 || rememberedValue2 == neverEqualPolicy) {
                                            rememberedValue2 = new NavHostKt$$ExternalSyntheticLambda14(9, function13);
                                            gapComposer2.updateRememberedValue(rememberedValue2);
                                        }
                                        TextInputKt.CheckboxInput(0, 24, OAuthBearer.defaultItemPadding(gapComposer2), gapComposer2, null, stringResource2, null, (Function1) rememberedValue2, z3);
                                        break;
                                    }
                                case 2:
                                    Composer composer3 = (Composer) obj7;
                                    int intValue3 = ((Integer) obj8).intValue();
                                    ((LazyItemScopeImpl) obj6).getClass();
                                    GapComposer gapComposer3 = (GapComposer) composer3;
                                    if (!gapComposer3.shouldExecute(intValue3 & 1, (intValue3 & 17) != 16)) {
                                        gapComposer3.skipToGroupEnd();
                                        break;
                                    } else {
                                        String stringResource3 = Operation$State.stringResource(gapComposer3, R.string.account_server_settings_incoming_imap_send_client_info_label);
                                        boolean z4 = incomingServerSettingsContract$State2.imapSendClientInfo;
                                        boolean changed3 = gapComposer3.changed(function13);
                                        Object rememberedValue3 = gapComposer3.rememberedValue();
                                        if (changed3 || rememberedValue3 == neverEqualPolicy) {
                                            rememberedValue3 = new NavHostKt$$ExternalSyntheticLambda14(10, function13);
                                            gapComposer3.updateRememberedValue(rememberedValue3);
                                        }
                                        TextInputKt.CheckboxInput(0, 24, OAuthBearer.defaultItemPadding(gapComposer3), gapComposer3, null, stringResource3, null, (Function1) rememberedValue3, z4);
                                        break;
                                    }
                                case 3:
                                    Composer composer4 = (Composer) obj7;
                                    int intValue4 = ((Integer) obj8).intValue();
                                    ((LazyItemScopeImpl) obj6).getClass();
                                    GapComposer gapComposer4 = (GapComposer) composer4;
                                    if (!gapComposer4.shouldExecute(intValue4 & 1, (intValue4 & 17) != 16)) {
                                        gapComposer4.skipToGroupEnd();
                                        break;
                                    } else {
                                        IncomingProtocolType.Companion.getClass();
                                        ImmutableList immutableList = Okio.toImmutableList(IncomingProtocolType.$ENTRIES);
                                        IncomingProtocolType incomingProtocolType = incomingServerSettingsContract$State2.protocolType;
                                        boolean changed4 = gapComposer4.changed(function13);
                                        Object rememberedValue4 = gapComposer4.rememberedValue();
                                        if (changed4 || rememberedValue4 == neverEqualPolicy) {
                                            rememberedValue4 = new NavHostKt$$ExternalSyntheticLambda14(15, function13);
                                            gapComposer4.updateRememberedValue(rememberedValue4);
                                        }
                                        TextInputKt.SelectInput(immutableList, incomingProtocolType, (Function1) rememberedValue4, null, null, Operation$State.stringResource(gapComposer4, R.string.account_server_settings_protocol_type_label), OAuthBearer.defaultItemPadding(gapComposer4), gapComposer4, 0, 24);
                                        break;
                                    }
                                default:
                                    Composer composer5 = (Composer) obj7;
                                    int intValue5 = ((Integer) obj8).intValue();
                                    ((LazyItemScopeImpl) obj6).getClass();
                                    GapComposer gapComposer5 = (GapComposer) composer5;
                                    if (!gapComposer5.shouldExecute(intValue5 & 1, (intValue5 & 17) != 16)) {
                                        gapComposer5.skipToGroupEnd();
                                        break;
                                    } else {
                                        String str = incomingServerSettingsContract$State2.clientCertificateAlias;
                                        boolean changed5 = gapComposer5.changed(function13);
                                        Object rememberedValue5 = gapComposer5.rememberedValue();
                                        if (changed5 || rememberedValue5 == neverEqualPolicy) {
                                            rememberedValue5 = new NavHostKt$$ExternalSyntheticLambda14(i14, function13);
                                            gapComposer5.updateRememberedValue(rememberedValue5);
                                        }
                                        Validate.ClientCertificateInput(str, (Function1) rememberedValue5, null, Operation$State.stringResource(gapComposer5, R.string.account_server_settings_client_certificate_label), OAuthBearer.defaultItemPadding(gapComposer5), gapComposer5, 0);
                                        break;
                                    }
                            }
                            return unit2;
                        }
                    }, true), 3);
                    Config.CC.item$default(lazyListIntervalContent, null, new ComposableLambdaImpl(537877953, new Function3() { // from class: app.k9mail.feature.account.server.settings.ui.incoming.content.ImapFormItemsKt$$ExternalSyntheticLambda0
                        @Override // kotlin.jvm.functions.Function3
                        public final Object invoke(Object obj6, Object obj7, Object obj8) {
                            int i13 = i4;
                            Unit unit2 = Unit.INSTANCE;
                            NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
                            Function1 function13 = function12;
                            IncomingServerSettingsContract$State incomingServerSettingsContract$State2 = incomingServerSettingsContract$State;
                            int i14 = 16;
                            switch (i13) {
                                case 0:
                                    Composer composer = (Composer) obj7;
                                    int intValue = ((Integer) obj8).intValue();
                                    ((LazyItemScopeImpl) obj6).getClass();
                                    GapComposer gapComposer = (GapComposer) composer;
                                    if (!gapComposer.shouldExecute(intValue & 1, (intValue & 17) != 16)) {
                                        gapComposer.skipToGroupEnd();
                                        break;
                                    } else {
                                        String stringResource = Operation$State.stringResource(gapComposer, R.string.account_server_settings_incoming_imap_namespace_label);
                                        boolean z2 = incomingServerSettingsContract$State2.imapAutodetectNamespaceEnabled;
                                        boolean changed = gapComposer.changed(function13);
                                        Object rememberedValue = gapComposer.rememberedValue();
                                        if (changed || rememberedValue == neverEqualPolicy) {
                                            rememberedValue = new NavHostKt$$ExternalSyntheticLambda14(11, function13);
                                            gapComposer.updateRememberedValue(rememberedValue);
                                        }
                                        TextInputKt.CheckboxInput(0, 24, OAuthBearer.defaultItemPadding(gapComposer), gapComposer, null, stringResource, null, (Function1) rememberedValue, z2);
                                        break;
                                    }
                                case 1:
                                    Composer composer2 = (Composer) obj7;
                                    int intValue2 = ((Integer) obj8).intValue();
                                    ((LazyItemScopeImpl) obj6).getClass();
                                    GapComposer gapComposer2 = (GapComposer) composer2;
                                    if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 17) != 16)) {
                                        gapComposer2.skipToGroupEnd();
                                        break;
                                    } else {
                                        String stringResource2 = Operation$State.stringResource(gapComposer2, R.string.account_server_settings_incoming_imap_compression_label);
                                        boolean z3 = incomingServerSettingsContract$State2.imapUseCompression;
                                        boolean changed2 = gapComposer2.changed(function13);
                                        Object rememberedValue2 = gapComposer2.rememberedValue();
                                        if (changed2 || rememberedValue2 == neverEqualPolicy) {
                                            rememberedValue2 = new NavHostKt$$ExternalSyntheticLambda14(9, function13);
                                            gapComposer2.updateRememberedValue(rememberedValue2);
                                        }
                                        TextInputKt.CheckboxInput(0, 24, OAuthBearer.defaultItemPadding(gapComposer2), gapComposer2, null, stringResource2, null, (Function1) rememberedValue2, z3);
                                        break;
                                    }
                                case 2:
                                    Composer composer3 = (Composer) obj7;
                                    int intValue3 = ((Integer) obj8).intValue();
                                    ((LazyItemScopeImpl) obj6).getClass();
                                    GapComposer gapComposer3 = (GapComposer) composer3;
                                    if (!gapComposer3.shouldExecute(intValue3 & 1, (intValue3 & 17) != 16)) {
                                        gapComposer3.skipToGroupEnd();
                                        break;
                                    } else {
                                        String stringResource3 = Operation$State.stringResource(gapComposer3, R.string.account_server_settings_incoming_imap_send_client_info_label);
                                        boolean z4 = incomingServerSettingsContract$State2.imapSendClientInfo;
                                        boolean changed3 = gapComposer3.changed(function13);
                                        Object rememberedValue3 = gapComposer3.rememberedValue();
                                        if (changed3 || rememberedValue3 == neverEqualPolicy) {
                                            rememberedValue3 = new NavHostKt$$ExternalSyntheticLambda14(10, function13);
                                            gapComposer3.updateRememberedValue(rememberedValue3);
                                        }
                                        TextInputKt.CheckboxInput(0, 24, OAuthBearer.defaultItemPadding(gapComposer3), gapComposer3, null, stringResource3, null, (Function1) rememberedValue3, z4);
                                        break;
                                    }
                                case 3:
                                    Composer composer4 = (Composer) obj7;
                                    int intValue4 = ((Integer) obj8).intValue();
                                    ((LazyItemScopeImpl) obj6).getClass();
                                    GapComposer gapComposer4 = (GapComposer) composer4;
                                    if (!gapComposer4.shouldExecute(intValue4 & 1, (intValue4 & 17) != 16)) {
                                        gapComposer4.skipToGroupEnd();
                                        break;
                                    } else {
                                        IncomingProtocolType.Companion.getClass();
                                        ImmutableList immutableList = Okio.toImmutableList(IncomingProtocolType.$ENTRIES);
                                        IncomingProtocolType incomingProtocolType = incomingServerSettingsContract$State2.protocolType;
                                        boolean changed4 = gapComposer4.changed(function13);
                                        Object rememberedValue4 = gapComposer4.rememberedValue();
                                        if (changed4 || rememberedValue4 == neverEqualPolicy) {
                                            rememberedValue4 = new NavHostKt$$ExternalSyntheticLambda14(15, function13);
                                            gapComposer4.updateRememberedValue(rememberedValue4);
                                        }
                                        TextInputKt.SelectInput(immutableList, incomingProtocolType, (Function1) rememberedValue4, null, null, Operation$State.stringResource(gapComposer4, R.string.account_server_settings_protocol_type_label), OAuthBearer.defaultItemPadding(gapComposer4), gapComposer4, 0, 24);
                                        break;
                                    }
                                default:
                                    Composer composer5 = (Composer) obj7;
                                    int intValue5 = ((Integer) obj8).intValue();
                                    ((LazyItemScopeImpl) obj6).getClass();
                                    GapComposer gapComposer5 = (GapComposer) composer5;
                                    if (!gapComposer5.shouldExecute(intValue5 & 1, (intValue5 & 17) != 16)) {
                                        gapComposer5.skipToGroupEnd();
                                        break;
                                    } else {
                                        String str = incomingServerSettingsContract$State2.clientCertificateAlias;
                                        boolean changed5 = gapComposer5.changed(function13);
                                        Object rememberedValue5 = gapComposer5.rememberedValue();
                                        if (changed5 || rememberedValue5 == neverEqualPolicy) {
                                            rememberedValue5 = new NavHostKt$$ExternalSyntheticLambda14(i14, function13);
                                            gapComposer5.updateRememberedValue(rememberedValue5);
                                        }
                                        Validate.ClientCertificateInput(str, (Function1) rememberedValue5, null, Operation$State.stringResource(gapComposer5, R.string.account_server_settings_client_certificate_label), OAuthBearer.defaultItemPadding(gapComposer5), gapComposer5, 0);
                                        break;
                                    }
                            }
                            return unit2;
                        }
                    }, true), 3);
                }
                Config.CC.item$default(lazyListIntervalContent, null, ComposableSingletons$IncomingFormItemsKt.lambda$1113620782, 3);
                return unit;
            case 9:
                InteractionMode interactionMode2 = (InteractionMode) obj5;
                OutgoingServerSettingsContract$State outgoingServerSettingsContract$State = (OutgoingServerSettingsContract$State) obj4;
                Function1 function13 = (Function1) obj3;
                Resources resources2 = (Resources) obj2;
                LazyListIntervalContent lazyListIntervalContent2 = (LazyListIntervalContent) obj;
                lazyListIntervalContent2.getClass();
                interactionMode2.getClass();
                outgoingServerSettingsContract$State.getClass();
                function13.getClass();
                resources2.getClass();
                Config.CC.item$default(lazyListIntervalContent2, null, ComposableSingletons$OutgoingFormItemsKt.lambda$1210678391, 3);
                Config.CC.item$default(lazyListIntervalContent2, null, new ComposableLambdaImpl(227392942, new OutgoingFormItemsKt$$ExternalSyntheticLambda0(outgoingServerSettingsContract$State, resources2, function13, i3), true), 3);
                Config.CC.item$default(lazyListIntervalContent2, null, new ComposableLambdaImpl(1026967471, new OutgoingFormItemsKt$$ExternalSyntheticLambda0(outgoingServerSettingsContract$State, function13, resources2, i6), true), 3);
                Config.CC.item$default(lazyListIntervalContent2, null, new ComposableLambdaImpl(1826542000, new OutgoingFormItemsKt$$ExternalSyntheticLambda0(outgoingServerSettingsContract$State, resources2, function13, i4), true), 3);
                Config.CC.item$default(lazyListIntervalContent2, null, new ComposableLambdaImpl(-1668850767, new OutgoingFormItemsKt$$ExternalSyntheticLambda0(outgoingServerSettingsContract$State, function13, resources2, i5), true), 3);
                AuthenticationType authenticationType = outgoingServerSettingsContract$State.authenticationType;
                if (authenticationType.isUsernameRequired) {
                    Config.CC.item$default(lazyListIntervalContent2, null, new ComposableLambdaImpl(18763730, new OutgoingFormItemsKt$$ExternalSyntheticLambda0(outgoingServerSettingsContract$State, resources2, function13, i2), true), 3);
                }
                if (authenticationType.isPasswordRequired) {
                    Config.CC.item$default(lazyListIntervalContent2, null, new ComposableLambdaImpl(1553671753, new OutgoingFormItemsKt$$ExternalSyntheticLambda5(outgoingServerSettingsContract$State, resources2, interactionMode2, function13), true), 3);
                }
                Config.CC.item$default(lazyListIntervalContent2, null, new ComposableLambdaImpl(-869276238, new BufferedChannel$$ExternalSyntheticLambda1(12, (Object) outgoingServerSettingsContract$State, function13), true), 3);
                Config.CC.item$default(lazyListIntervalContent2, null, ComposableSingletons$OutgoingFormItemsKt.f24lambda$69701709, 3);
                return unit;
            case 10:
                final DisplayOptionsContract$State displayOptionsContract$State = (DisplayOptionsContract$State) obj4;
                final Resources resources3 = (Resources) obj3;
                final Function1 function14 = (Function1) obj2;
                LazyListIntervalContent lazyListIntervalContent3 = (LazyListIntervalContent) obj;
                lazyListIntervalContent3.getClass();
                Config.CC.item$default(lazyListIntervalContent3, null, new ComposableLambdaImpl(-1362136934, new BasicDialogKt$$ExternalSyntheticLambda0((String) obj5, i5), true), 3);
                Config.CC.item$default(lazyListIntervalContent3, null, DisplayOptionsScreenKt.f27lambda$601351087, 3);
                Config.CC.item$default(lazyListIntervalContent3, null, new ComposableLambdaImpl(-153235502, new Function3() { // from class: app.k9mail.feature.account.setup.ui.options.display.DisplayOptionsContentKt$$ExternalSyntheticLambda4
                    @Override // kotlin.jvm.functions.Function3
                    public final Object invoke(Object obj6, Object obj7, Object obj8) {
                        int i13 = i3;
                        Unit unit2 = Unit.INSTANCE;
                        NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
                        Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
                        Function1 function15 = function14;
                        Resources resources4 = resources3;
                        DisplayOptionsContract$State displayOptionsContract$State2 = displayOptionsContract$State;
                        switch (i13) {
                            case 0:
                                Composer composer = (Composer) obj7;
                                int intValue = ((Integer) obj8).intValue();
                                ((LazyItemScopeImpl) obj6).getClass();
                                GapComposer gapComposer = (GapComposer) composer;
                                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 17) != 16)) {
                                    gapComposer.skipToGroupEnd();
                                    break;
                                } else {
                                    StringInputField stringInputField = displayOptionsContract$State2.accountName;
                                    String str = stringInputField.value;
                                    ValidationError validationError = stringInputField.error;
                                    String resourceString = validationError != null ? DisplayOptionsScreenKt.toResourceString(validationError, resources4) : null;
                                    String stringResource = Operation$State.stringResource(gapComposer, R.string.account_setup_options_account_name_label);
                                    PaddingValuesImpl defaultItemPadding = OAuthBearer.defaultItemPadding(gapComposer);
                                    Modifier testTag = TestTagKt.testTag(companion, "account_setup_display_options_account_name_input");
                                    boolean changed = gapComposer.changed(function15);
                                    Object rememberedValue = gapComposer.rememberedValue();
                                    if (changed || rememberedValue == neverEqualPolicy) {
                                        rememberedValue = new SequencesKt___SequencesKt$$ExternalSyntheticLambda0(9, function15);
                                        gapComposer.updateRememberedValue(rememberedValue);
                                    }
                                    TextInputKt.TextInput((Function1) rememberedValue, testTag, str, stringResource, false, resourceString, defaultItemPadding, false, false, null, null, gapComposer, 48, 1936);
                                    break;
                                }
                            case 1:
                                Composer composer2 = (Composer) obj7;
                                int intValue2 = ((Integer) obj8).intValue();
                                ((LazyItemScopeImpl) obj6).getClass();
                                GapComposer gapComposer2 = (GapComposer) composer2;
                                if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 17) != 16)) {
                                    gapComposer2.skipToGroupEnd();
                                    break;
                                } else {
                                    StringInputField stringInputField2 = displayOptionsContract$State2.displayName;
                                    String str2 = stringInputField2.value;
                                    ValidationError validationError2 = stringInputField2.error;
                                    String resourceString2 = validationError2 != null ? DisplayOptionsScreenKt.toResourceString(validationError2, resources4) : null;
                                    String stringResource2 = Operation$State.stringResource(gapComposer2, R.string.account_setup_options_your_name_label);
                                    PaddingValuesImpl defaultItemPadding2 = OAuthBearer.defaultItemPadding(gapComposer2);
                                    Modifier testTag2 = TestTagKt.testTag(companion, "account_setup_display_options_display_name_input");
                                    boolean changed2 = gapComposer2.changed(function15);
                                    Object rememberedValue2 = gapComposer2.rememberedValue();
                                    if (changed2 || rememberedValue2 == neverEqualPolicy) {
                                        rememberedValue2 = new SequencesKt___SequencesKt$$ExternalSyntheticLambda0(10, function15);
                                        gapComposer2.updateRememberedValue(rememberedValue2);
                                    }
                                    TextInputKt.TextInput((Function1) rememberedValue2, testTag2, str2, stringResource2, true, resourceString2, defaultItemPadding2, false, false, null, null, gapComposer2, 24624, 1920);
                                    break;
                                }
                            default:
                                Composer composer3 = (Composer) obj7;
                                int intValue3 = ((Integer) obj8).intValue();
                                ((LazyItemScopeImpl) obj6).getClass();
                                GapComposer gapComposer3 = (GapComposer) composer3;
                                if (!gapComposer3.shouldExecute(intValue3 & 1, (intValue3 & 17) != 16)) {
                                    gapComposer3.skipToGroupEnd();
                                    break;
                                } else {
                                    StringInputField stringInputField3 = displayOptionsContract$State2.emailSignature;
                                    String str3 = stringInputField3.value;
                                    ValidationError validationError3 = stringInputField3.error;
                                    String resourceString3 = validationError3 != null ? DisplayOptionsScreenKt.toResourceString(validationError3, resources4) : null;
                                    String stringResource3 = Operation$State.stringResource(gapComposer3, R.string.account_setup_options_email_signature_label);
                                    PaddingValuesImpl defaultItemPadding3 = OAuthBearer.defaultItemPadding(gapComposer3);
                                    Modifier testTag3 = TestTagKt.testTag(companion, "account_setup_display_options_signature_input");
                                    boolean changed3 = gapComposer3.changed(function15);
                                    Object rememberedValue3 = gapComposer3.rememberedValue();
                                    if (changed3 || rememberedValue3 == neverEqualPolicy) {
                                        rememberedValue3 = new SequencesKt___SequencesKt$$ExternalSyntheticLambda0(8, function15);
                                        gapComposer3.updateRememberedValue(rememberedValue3);
                                    }
                                    TextInputKt.TextInput((Function1) rememberedValue3, testTag3, str3, stringResource3, false, resourceString3, defaultItemPadding3, false, false, null, null, gapComposer3, 12582960, 1808);
                                    break;
                                }
                        }
                        return unit2;
                    }
                }, true), 3);
                Config.CC.item$default(lazyListIntervalContent3, null, new ComposableLambdaImpl(294880083, new Function3() { // from class: app.k9mail.feature.account.setup.ui.options.display.DisplayOptionsContentKt$$ExternalSyntheticLambda4
                    @Override // kotlin.jvm.functions.Function3
                    public final Object invoke(Object obj6, Object obj7, Object obj8) {
                        int i13 = i6;
                        Unit unit2 = Unit.INSTANCE;
                        NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
                        Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
                        Function1 function15 = function14;
                        Resources resources4 = resources3;
                        DisplayOptionsContract$State displayOptionsContract$State2 = displayOptionsContract$State;
                        switch (i13) {
                            case 0:
                                Composer composer = (Composer) obj7;
                                int intValue = ((Integer) obj8).intValue();
                                ((LazyItemScopeImpl) obj6).getClass();
                                GapComposer gapComposer = (GapComposer) composer;
                                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 17) != 16)) {
                                    gapComposer.skipToGroupEnd();
                                    break;
                                } else {
                                    StringInputField stringInputField = displayOptionsContract$State2.accountName;
                                    String str = stringInputField.value;
                                    ValidationError validationError = stringInputField.error;
                                    String resourceString = validationError != null ? DisplayOptionsScreenKt.toResourceString(validationError, resources4) : null;
                                    String stringResource = Operation$State.stringResource(gapComposer, R.string.account_setup_options_account_name_label);
                                    PaddingValuesImpl defaultItemPadding = OAuthBearer.defaultItemPadding(gapComposer);
                                    Modifier testTag = TestTagKt.testTag(companion, "account_setup_display_options_account_name_input");
                                    boolean changed = gapComposer.changed(function15);
                                    Object rememberedValue = gapComposer.rememberedValue();
                                    if (changed || rememberedValue == neverEqualPolicy) {
                                        rememberedValue = new SequencesKt___SequencesKt$$ExternalSyntheticLambda0(9, function15);
                                        gapComposer.updateRememberedValue(rememberedValue);
                                    }
                                    TextInputKt.TextInput((Function1) rememberedValue, testTag, str, stringResource, false, resourceString, defaultItemPadding, false, false, null, null, gapComposer, 48, 1936);
                                    break;
                                }
                            case 1:
                                Composer composer2 = (Composer) obj7;
                                int intValue2 = ((Integer) obj8).intValue();
                                ((LazyItemScopeImpl) obj6).getClass();
                                GapComposer gapComposer2 = (GapComposer) composer2;
                                if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 17) != 16)) {
                                    gapComposer2.skipToGroupEnd();
                                    break;
                                } else {
                                    StringInputField stringInputField2 = displayOptionsContract$State2.displayName;
                                    String str2 = stringInputField2.value;
                                    ValidationError validationError2 = stringInputField2.error;
                                    String resourceString2 = validationError2 != null ? DisplayOptionsScreenKt.toResourceString(validationError2, resources4) : null;
                                    String stringResource2 = Operation$State.stringResource(gapComposer2, R.string.account_setup_options_your_name_label);
                                    PaddingValuesImpl defaultItemPadding2 = OAuthBearer.defaultItemPadding(gapComposer2);
                                    Modifier testTag2 = TestTagKt.testTag(companion, "account_setup_display_options_display_name_input");
                                    boolean changed2 = gapComposer2.changed(function15);
                                    Object rememberedValue2 = gapComposer2.rememberedValue();
                                    if (changed2 || rememberedValue2 == neverEqualPolicy) {
                                        rememberedValue2 = new SequencesKt___SequencesKt$$ExternalSyntheticLambda0(10, function15);
                                        gapComposer2.updateRememberedValue(rememberedValue2);
                                    }
                                    TextInputKt.TextInput((Function1) rememberedValue2, testTag2, str2, stringResource2, true, resourceString2, defaultItemPadding2, false, false, null, null, gapComposer2, 24624, 1920);
                                    break;
                                }
                            default:
                                Composer composer3 = (Composer) obj7;
                                int intValue3 = ((Integer) obj8).intValue();
                                ((LazyItemScopeImpl) obj6).getClass();
                                GapComposer gapComposer3 = (GapComposer) composer3;
                                if (!gapComposer3.shouldExecute(intValue3 & 1, (intValue3 & 17) != 16)) {
                                    gapComposer3.skipToGroupEnd();
                                    break;
                                } else {
                                    StringInputField stringInputField3 = displayOptionsContract$State2.emailSignature;
                                    String str3 = stringInputField3.value;
                                    ValidationError validationError3 = stringInputField3.error;
                                    String resourceString3 = validationError3 != null ? DisplayOptionsScreenKt.toResourceString(validationError3, resources4) : null;
                                    String stringResource3 = Operation$State.stringResource(gapComposer3, R.string.account_setup_options_email_signature_label);
                                    PaddingValuesImpl defaultItemPadding3 = OAuthBearer.defaultItemPadding(gapComposer3);
                                    Modifier testTag3 = TestTagKt.testTag(companion, "account_setup_display_options_signature_input");
                                    boolean changed3 = gapComposer3.changed(function15);
                                    Object rememberedValue3 = gapComposer3.rememberedValue();
                                    if (changed3 || rememberedValue3 == neverEqualPolicy) {
                                        rememberedValue3 = new SequencesKt___SequencesKt$$ExternalSyntheticLambda0(8, function15);
                                        gapComposer3.updateRememberedValue(rememberedValue3);
                                    }
                                    TextInputKt.TextInput((Function1) rememberedValue3, testTag3, str3, stringResource3, false, resourceString3, defaultItemPadding3, false, false, null, null, gapComposer3, 12582960, 1808);
                                    break;
                                }
                        }
                        return unit2;
                    }
                }, true), 3);
                Config.CC.item$default(lazyListIntervalContent3, null, new ComposableLambdaImpl(742995668, new Function3() { // from class: app.k9mail.feature.account.setup.ui.options.display.DisplayOptionsContentKt$$ExternalSyntheticLambda4
                    @Override // kotlin.jvm.functions.Function3
                    public final Object invoke(Object obj6, Object obj7, Object obj8) {
                        int i13 = i4;
                        Unit unit2 = Unit.INSTANCE;
                        NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
                        Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
                        Function1 function15 = function14;
                        Resources resources4 = resources3;
                        DisplayOptionsContract$State displayOptionsContract$State2 = displayOptionsContract$State;
                        switch (i13) {
                            case 0:
                                Composer composer = (Composer) obj7;
                                int intValue = ((Integer) obj8).intValue();
                                ((LazyItemScopeImpl) obj6).getClass();
                                GapComposer gapComposer = (GapComposer) composer;
                                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 17) != 16)) {
                                    gapComposer.skipToGroupEnd();
                                    break;
                                } else {
                                    StringInputField stringInputField = displayOptionsContract$State2.accountName;
                                    String str = stringInputField.value;
                                    ValidationError validationError = stringInputField.error;
                                    String resourceString = validationError != null ? DisplayOptionsScreenKt.toResourceString(validationError, resources4) : null;
                                    String stringResource = Operation$State.stringResource(gapComposer, R.string.account_setup_options_account_name_label);
                                    PaddingValuesImpl defaultItemPadding = OAuthBearer.defaultItemPadding(gapComposer);
                                    Modifier testTag = TestTagKt.testTag(companion, "account_setup_display_options_account_name_input");
                                    boolean changed = gapComposer.changed(function15);
                                    Object rememberedValue = gapComposer.rememberedValue();
                                    if (changed || rememberedValue == neverEqualPolicy) {
                                        rememberedValue = new SequencesKt___SequencesKt$$ExternalSyntheticLambda0(9, function15);
                                        gapComposer.updateRememberedValue(rememberedValue);
                                    }
                                    TextInputKt.TextInput((Function1) rememberedValue, testTag, str, stringResource, false, resourceString, defaultItemPadding, false, false, null, null, gapComposer, 48, 1936);
                                    break;
                                }
                            case 1:
                                Composer composer2 = (Composer) obj7;
                                int intValue2 = ((Integer) obj8).intValue();
                                ((LazyItemScopeImpl) obj6).getClass();
                                GapComposer gapComposer2 = (GapComposer) composer2;
                                if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 17) != 16)) {
                                    gapComposer2.skipToGroupEnd();
                                    break;
                                } else {
                                    StringInputField stringInputField2 = displayOptionsContract$State2.displayName;
                                    String str2 = stringInputField2.value;
                                    ValidationError validationError2 = stringInputField2.error;
                                    String resourceString2 = validationError2 != null ? DisplayOptionsScreenKt.toResourceString(validationError2, resources4) : null;
                                    String stringResource2 = Operation$State.stringResource(gapComposer2, R.string.account_setup_options_your_name_label);
                                    PaddingValuesImpl defaultItemPadding2 = OAuthBearer.defaultItemPadding(gapComposer2);
                                    Modifier testTag2 = TestTagKt.testTag(companion, "account_setup_display_options_display_name_input");
                                    boolean changed2 = gapComposer2.changed(function15);
                                    Object rememberedValue2 = gapComposer2.rememberedValue();
                                    if (changed2 || rememberedValue2 == neverEqualPolicy) {
                                        rememberedValue2 = new SequencesKt___SequencesKt$$ExternalSyntheticLambda0(10, function15);
                                        gapComposer2.updateRememberedValue(rememberedValue2);
                                    }
                                    TextInputKt.TextInput((Function1) rememberedValue2, testTag2, str2, stringResource2, true, resourceString2, defaultItemPadding2, false, false, null, null, gapComposer2, 24624, 1920);
                                    break;
                                }
                            default:
                                Composer composer3 = (Composer) obj7;
                                int intValue3 = ((Integer) obj8).intValue();
                                ((LazyItemScopeImpl) obj6).getClass();
                                GapComposer gapComposer3 = (GapComposer) composer3;
                                if (!gapComposer3.shouldExecute(intValue3 & 1, (intValue3 & 17) != 16)) {
                                    gapComposer3.skipToGroupEnd();
                                    break;
                                } else {
                                    StringInputField stringInputField3 = displayOptionsContract$State2.emailSignature;
                                    String str3 = stringInputField3.value;
                                    ValidationError validationError3 = stringInputField3.error;
                                    String resourceString3 = validationError3 != null ? DisplayOptionsScreenKt.toResourceString(validationError3, resources4) : null;
                                    String stringResource3 = Operation$State.stringResource(gapComposer3, R.string.account_setup_options_email_signature_label);
                                    PaddingValuesImpl defaultItemPadding3 = OAuthBearer.defaultItemPadding(gapComposer3);
                                    Modifier testTag3 = TestTagKt.testTag(companion, "account_setup_display_options_signature_input");
                                    boolean changed3 = gapComposer3.changed(function15);
                                    Object rememberedValue3 = gapComposer3.rememberedValue();
                                    if (changed3 || rememberedValue3 == neverEqualPolicy) {
                                        rememberedValue3 = new SequencesKt___SequencesKt$$ExternalSyntheticLambda0(8, function15);
                                        gapComposer3.updateRememberedValue(rememberedValue3);
                                    }
                                    TextInputKt.TextInput((Function1) rememberedValue3, testTag3, str3, stringResource3, false, resourceString3, defaultItemPadding3, false, false, null, null, gapComposer3, 12582960, 1808);
                                    break;
                                }
                        }
                        return unit2;
                    }
                }, true), 3);
                Config.CC.item$default(lazyListIntervalContent3, null, DisplayOptionsScreenKt.lambda$1191111253, 3);
                return unit;
            case 11:
                final SyncOptionsContract$State syncOptionsContract$State = (SyncOptionsContract$State) obj4;
                final Function1 function15 = (Function1) obj3;
                final Resources resources4 = (Resources) obj2;
                LazyListIntervalContent lazyListIntervalContent4 = (LazyListIntervalContent) obj;
                lazyListIntervalContent4.getClass();
                Config.CC.item$default(lazyListIntervalContent4, null, new ComposableLambdaImpl(-905278975, new BasicDialogKt$$ExternalSyntheticLambda0((String) obj5, i2), true), 3);
                Config.CC.item$default(lazyListIntervalContent4, null, SyncOptionsScreenKt.lambda$975864938, 3);
                Config.CC.item$default(lazyListIntervalContent4, null, new ComposableLambdaImpl(-1026446391, new Function3() { // from class: app.k9mail.feature.account.setup.ui.options.sync.SyncOptionsContentKt$$ExternalSyntheticLambda4
                    /* JADX WARN: Multi-variable type inference failed */
                    @Override // kotlin.jvm.functions.Function3
                    public final Object invoke(Object obj6, Object obj7, Object obj8) {
                        int i13 = i3;
                        Unit unit2 = Unit.INSTANCE;
                        NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
                        Resources resources5 = resources4;
                        Function1 function16 = function15;
                        SyncOptionsContract$State syncOptionsContract$State2 = syncOptionsContract$State;
                        Object[] objArr4 = 0;
                        switch (i13) {
                            case 0:
                                Composer composer = (Composer) obj7;
                                int intValue = ((Integer) obj8).intValue();
                                ((LazyItemScopeImpl) obj6).getClass();
                                GapComposer gapComposer = (GapComposer) composer;
                                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 17) != 16)) {
                                    gapComposer.skipToGroupEnd();
                                    break;
                                } else {
                                    EmailCheckFrequency.Companion.getClass();
                                    ImmutableList immutableList = Okio.toImmutableList(EmailCheckFrequency.$ENTRIES);
                                    EmailCheckFrequency emailCheckFrequency = syncOptionsContract$State2.checkFrequency;
                                    String stringResource = Operation$State.stringResource(gapComposer, R.string.account_setup_options_account_check_frequency_label);
                                    PaddingValuesImpl defaultItemPadding = OAuthBearer.defaultItemPadding(gapComposer);
                                    boolean changed = gapComposer.changed(function16);
                                    Object rememberedValue = gapComposer.rememberedValue();
                                    if (changed || rememberedValue == neverEqualPolicy) {
                                        rememberedValue = new SequencesKt___SequencesKt$$ExternalSyntheticLambda0(12, function16);
                                        gapComposer.updateRememberedValue(rememberedValue);
                                    }
                                    Function1 function17 = (Function1) rememberedValue;
                                    boolean changedInstance = gapComposer.changedInstance(resources5);
                                    Object rememberedValue2 = gapComposer.rememberedValue();
                                    if (changedInstance || rememberedValue2 == neverEqualPolicy) {
                                        rememberedValue2 = new SyncOptionsContentKt$$ExternalSyntheticLambda8(5, resources5);
                                        gapComposer.updateRememberedValue(rememberedValue2);
                                    }
                                    TextInputKt.SelectInput(immutableList, emailCheckFrequency, function17, null, (Function1) rememberedValue2, stringResource, defaultItemPadding, gapComposer, 0, 8);
                                    break;
                                }
                            default:
                                Composer composer2 = (Composer) obj7;
                                int intValue2 = ((Integer) obj8).intValue();
                                ((LazyItemScopeImpl) obj6).getClass();
                                GapComposer gapComposer2 = (GapComposer) composer2;
                                if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 17) != 16)) {
                                    gapComposer2.skipToGroupEnd();
                                    break;
                                } else {
                                    EmailDisplayCount.Companion.getClass();
                                    ImmutableList immutableList2 = Okio.toImmutableList(EmailDisplayCount.$ENTRIES);
                                    EmailDisplayCount emailDisplayCount = syncOptionsContract$State2.messageDisplayCount;
                                    String stringResource2 = Operation$State.stringResource(gapComposer2, R.string.account_setup_options_email_display_count_label);
                                    PaddingValuesImpl defaultItemPadding2 = OAuthBearer.defaultItemPadding(gapComposer2);
                                    boolean changed2 = gapComposer2.changed(function16);
                                    Object rememberedValue3 = gapComposer2.rememberedValue();
                                    if (changed2 || rememberedValue3 == neverEqualPolicy) {
                                        rememberedValue3 = new SequencesKt___SequencesKt$$ExternalSyntheticLambda0(13, function16);
                                        gapComposer2.updateRememberedValue(rememberedValue3);
                                    }
                                    Function1 function18 = (Function1) rememberedValue3;
                                    boolean changedInstance2 = gapComposer2.changedInstance(resources5);
                                    Object rememberedValue4 = gapComposer2.rememberedValue();
                                    if (changedInstance2 || rememberedValue4 == neverEqualPolicy) {
                                        rememberedValue4 = new SyncOptionsContentKt$$ExternalSyntheticLambda8(objArr4 == true ? 1 : 0, resources5);
                                        gapComposer2.updateRememberedValue(rememberedValue4);
                                    }
                                    TextInputKt.SelectInput(immutableList2, emailDisplayCount, function18, null, (Function1) rememberedValue4, stringResource2, defaultItemPadding2, gapComposer2, 0, 8);
                                    break;
                                }
                        }
                        return unit2;
                    }
                }, true), 3);
                Config.CC.item$default(lazyListIntervalContent4, null, new ComposableLambdaImpl(1266209576, new Function3() { // from class: app.k9mail.feature.account.setup.ui.options.sync.SyncOptionsContentKt$$ExternalSyntheticLambda4
                    /* JADX WARN: Multi-variable type inference failed */
                    @Override // kotlin.jvm.functions.Function3
                    public final Object invoke(Object obj6, Object obj7, Object obj8) {
                        int i13 = i6;
                        Unit unit2 = Unit.INSTANCE;
                        NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
                        Resources resources5 = resources4;
                        Function1 function16 = function15;
                        SyncOptionsContract$State syncOptionsContract$State2 = syncOptionsContract$State;
                        Object[] objArr4 = 0;
                        switch (i13) {
                            case 0:
                                Composer composer = (Composer) obj7;
                                int intValue = ((Integer) obj8).intValue();
                                ((LazyItemScopeImpl) obj6).getClass();
                                GapComposer gapComposer = (GapComposer) composer;
                                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 17) != 16)) {
                                    gapComposer.skipToGroupEnd();
                                    break;
                                } else {
                                    EmailCheckFrequency.Companion.getClass();
                                    ImmutableList immutableList = Okio.toImmutableList(EmailCheckFrequency.$ENTRIES);
                                    EmailCheckFrequency emailCheckFrequency = syncOptionsContract$State2.checkFrequency;
                                    String stringResource = Operation$State.stringResource(gapComposer, R.string.account_setup_options_account_check_frequency_label);
                                    PaddingValuesImpl defaultItemPadding = OAuthBearer.defaultItemPadding(gapComposer);
                                    boolean changed = gapComposer.changed(function16);
                                    Object rememberedValue = gapComposer.rememberedValue();
                                    if (changed || rememberedValue == neverEqualPolicy) {
                                        rememberedValue = new SequencesKt___SequencesKt$$ExternalSyntheticLambda0(12, function16);
                                        gapComposer.updateRememberedValue(rememberedValue);
                                    }
                                    Function1 function17 = (Function1) rememberedValue;
                                    boolean changedInstance = gapComposer.changedInstance(resources5);
                                    Object rememberedValue2 = gapComposer.rememberedValue();
                                    if (changedInstance || rememberedValue2 == neverEqualPolicy) {
                                        rememberedValue2 = new SyncOptionsContentKt$$ExternalSyntheticLambda8(5, resources5);
                                        gapComposer.updateRememberedValue(rememberedValue2);
                                    }
                                    TextInputKt.SelectInput(immutableList, emailCheckFrequency, function17, null, (Function1) rememberedValue2, stringResource, defaultItemPadding, gapComposer, 0, 8);
                                    break;
                                }
                            default:
                                Composer composer2 = (Composer) obj7;
                                int intValue2 = ((Integer) obj8).intValue();
                                ((LazyItemScopeImpl) obj6).getClass();
                                GapComposer gapComposer2 = (GapComposer) composer2;
                                if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 17) != 16)) {
                                    gapComposer2.skipToGroupEnd();
                                    break;
                                } else {
                                    EmailDisplayCount.Companion.getClass();
                                    ImmutableList immutableList2 = Okio.toImmutableList(EmailDisplayCount.$ENTRIES);
                                    EmailDisplayCount emailDisplayCount = syncOptionsContract$State2.messageDisplayCount;
                                    String stringResource2 = Operation$State.stringResource(gapComposer2, R.string.account_setup_options_email_display_count_label);
                                    PaddingValuesImpl defaultItemPadding2 = OAuthBearer.defaultItemPadding(gapComposer2);
                                    boolean changed2 = gapComposer2.changed(function16);
                                    Object rememberedValue3 = gapComposer2.rememberedValue();
                                    if (changed2 || rememberedValue3 == neverEqualPolicy) {
                                        rememberedValue3 = new SequencesKt___SequencesKt$$ExternalSyntheticLambda0(13, function16);
                                        gapComposer2.updateRememberedValue(rememberedValue3);
                                    }
                                    Function1 function18 = (Function1) rememberedValue3;
                                    boolean changedInstance2 = gapComposer2.changedInstance(resources5);
                                    Object rememberedValue4 = gapComposer2.rememberedValue();
                                    if (changedInstance2 || rememberedValue4 == neverEqualPolicy) {
                                        rememberedValue4 = new SyncOptionsContentKt$$ExternalSyntheticLambda8(objArr4 == true ? 1 : 0, resources5);
                                        gapComposer2.updateRememberedValue(rememberedValue4);
                                    }
                                    TextInputKt.SelectInput(immutableList2, emailDisplayCount, function18, null, (Function1) rememberedValue4, stringResource2, defaultItemPadding2, gapComposer2, 0, 8);
                                    break;
                                }
                        }
                        return unit2;
                    }
                }, true), 3);
                Config.CC.item$default(lazyListIntervalContent4, null, new ComposableLambdaImpl(-736101753, new BufferedChannel$$ExternalSyntheticLambda1(16, (Object) syncOptionsContract$State, function15), true), 3);
                Config.CC.item$default(lazyListIntervalContent4, null, SyncOptionsScreenKt.lambda$1556554214, 3);
                return unit;
            case BasicTextKt.ShiftMeta /* 12 */:
                NoOpOnboardingMigrationManager noOpOnboardingMigrationManager = (NoOpOnboardingMigrationManager) obj5;
                NavHostController navHostController = (NavHostController) obj4;
                FeatureLauncherNavHostKt$$ExternalSyntheticLambda2 featureLauncherNavHostKt$$ExternalSyntheticLambda2 = (FeatureLauncherNavHostKt$$ExternalSyntheticLambda2) obj3;
                NavGraphBuilder navGraphBuilder = (NavGraphBuilder) obj;
                navGraphBuilder.getClass();
                OAuthBearer.composable$default(navGraphBuilder, "welcome", new ComposableLambdaImpl(1944408640, new AccountSetupNavHostKt$$ExternalSyntheticLambda8(i4, noOpOnboardingMigrationManager, navHostController), true));
                OAuthBearer.composable$default(navGraphBuilder, "migration", new ComposableLambdaImpl(893187703, new AccountSetupNavHostKt$$ExternalSyntheticLambda4(noOpOnboardingMigrationManager, navHostController, featureLauncherNavHostKt$$ExternalSyntheticLambda2), true));
                OAuthBearer.composable$default(navGraphBuilder, "account_setup", new ComposableLambdaImpl(-1112303176, new AccountSetupNavHostKt$$ExternalSyntheticLambda8(i5, (Object) navHostController, (Function1) featureLauncherNavHostKt$$ExternalSyntheticLambda2), true));
                OAuthBearer.composable$default(navGraphBuilder, "settings_import", new ComposableLambdaImpl(1177173241, new AccountSetupNavHostKt$$ExternalSyntheticLambda3(navHostController, i5), true));
                OAuthBearer.composable$default(navGraphBuilder, "settings_import_qr_code", new ComposableLambdaImpl(-828317638, new AccountSetupNavHostKt$$ExternalSyntheticLambda3(navHostController, i2), true));
                OAuthBearer.composable$default(navGraphBuilder, "permissions", new ComposableLambdaImpl(1461158779, new AccountSetupNavHostKt$$ExternalSyntheticLambda8(i2, featureLauncherNavHostKt$$ExternalSyntheticLambda2, (MutableState) obj2), true));
                return unit;
            default:
                LifecycleStartStopEffectScope lifecycleStartStopEffectScope = (LifecycleStartStopEffectScope) obj;
                lifecycleStartStopEffectScope.getClass();
                return new BackHandlerKt$BackHandler$lambda$3$0$$inlined$onStopOrDispose$1(lifecycleStartStopEffectScope, JobKt.launch$default((CoroutineScope) obj5, null, null, new StringResourcesKt$stringResource$str$3$1((DefaultMessageListScope) obj4, (LazyListState) obj3, (MutableState) obj2, (Continuation) null, 4), 3), i4);
        }
    }

    public /* synthetic */ NavControllerImpl$$ExternalSyntheticLambda0(ClientConfigParser clientConfigParser, Ref$BooleanRef ref$BooleanRef, ArrayList arrayList, ArrayList arrayList2) {
        this.$r8$classId = 7;
        this.f$1 = clientConfigParser;
        this.f$0 = ref$BooleanRef;
        this.f$2 = arrayList;
        this.f$3 = arrayList2;
    }

    public /* synthetic */ NavControllerImpl$$ExternalSyntheticLambda0(Object obj, Object obj2, Object obj3, Object obj4, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = obj2;
        this.f$2 = obj3;
        this.f$3 = obj4;
    }

    public /* synthetic */ NavControllerImpl$$ExternalSyntheticLambda0(ArrayList arrayList, Ref$IntRef ref$IntRef, List list, int i, LazyGridMeasureResult lazyGridMeasureResult) {
        this.$r8$classId = 5;
        this.f$0 = arrayList;
        this.f$1 = ref$IntRef;
        this.f$2 = list;
        this.f$3 = lazyGridMeasureResult;
    }
}
