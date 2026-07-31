package androidx.work.impl;

import android.os.Build;
import android.os.Trace;
import androidx.camera.core.impl.Config;
import androidx.camera.view.PreviewView;
import androidx.compose.foundation.layout.FillElement;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.lazy.LazyItemScopeImpl;
import androidx.compose.foundation.lazy.LazyListIntervalContent;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Latch$await$2$2;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.focus.FocusTraversalKt;
import androidx.compose.ui.graphics.BlendModeColorFilter;
import androidx.compose.ui.graphics.ImageBitmap;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import androidx.compose.ui.node.LayoutNodeDrawScope;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.core.view.MenuHostHelper;
import androidx.tracing.TraceApi29Impl;
import androidx.work.ListenableWorker;
import androidx.work.SystemClock;
import java.lang.reflect.Method;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.AbstractCollection;
import kotlin.io.ByteStreamsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.collections.immutable.ImmutableList;
import kotlinx.collections.immutable.PersistentMap;
import kotlinx.coroutines.channels.BufferedChannel$$ExternalSyntheticLambda1;
import kotlinx.coroutines.channels.ProduceKt$awaitClose$4$1;
import net.thunderbird.core.common.action.SwipeActions;
import net.thunderbird.feature.changelog.internal.ChangelogScreenKt$ChangelogScreen$lambda$1$0$0$0$0$$inlined$items$default$3;
import net.thunderbird.feature.changelog.internal.KoinModuleKt$$ExternalSyntheticLambda0;
import net.thunderbird.feature.mail.message.list.internal.ui.MessageListScreenAccessibilityState;
import net.thunderbird.feature.mail.message.list.preferences.MessageListPreferences;
import net.thunderbird.feature.mail.message.list.ui.event.MessageItemEvent$OnMessageClick;
import net.thunderbird.feature.mail.message.list.ui.event.MessageItemEvent$ToggleSelectMessages;
import net.thunderbird.feature.mail.message.list.ui.event.MessageListEvent;
import net.thunderbird.feature.mail.message.list.ui.state.MessageItemUi;
import net.thunderbird.feature.mail.message.list.ui.state.MessageListState;
import net.thunderbird.feature.navigation.drawer.dropdown.domain.entity.DisplayAccount;
import okhttp3.CacheControl;
import org.minidns.util.Hex;
import org.slf4j.helpers.Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class WorkerWrapper$$ExternalSyntheticLambda1 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ boolean f$1;
    public final /* synthetic */ Object f$2;
    public final /* synthetic */ Object f$3;

    public /* synthetic */ WorkerWrapper$$ExternalSyntheticLambda1(Object obj, Object obj2, Object obj3, boolean z, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$2 = obj2;
        this.f$3 = obj3;
        this.f$1 = z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        final boolean z = this.f$1;
        Unit unit = Unit.INSTANCE;
        Object obj2 = this.f$3;
        Object obj3 = this.f$2;
        Object obj4 = this.f$0;
        switch (i) {
            case 0:
                ListenableWorker listenableWorker = (ListenableWorker) obj4;
                String str = (String) obj3;
                WorkerWrapper workerWrapper = (WorkerWrapper) obj2;
                Throwable th = (Throwable) obj;
                if (th instanceof WorkerStoppedException) {
                    listenableWorker.mStopReason.compareAndSet(-256, ((WorkerStoppedException) th).reason);
                }
                if (z && str != null) {
                    SystemClock systemClock = workerWrapper.configuration.tracer;
                    int hashCode = workerWrapper.workSpec.hashCode();
                    systemClock.getClass();
                    if (Build.VERSION.SDK_INT >= 29) {
                        TraceApi29Impl.endAsyncSection(Util.truncatedTraceSectionLabel(str), hashCode);
                    } else {
                        String truncatedTraceSectionLabel = Util.truncatedTraceSectionLabel(str);
                        try {
                            if (Util.asyncTraceEndMethod == null) {
                                Util.asyncTraceEndMethod = Trace.class.getMethod("asyncTraceEnd", Long.TYPE, String.class, Integer.TYPE);
                            }
                            Method method = Util.asyncTraceEndMethod;
                            if (method == null) {
                                throw new IllegalArgumentException("Required value was null.");
                            }
                            method.invoke(null, Long.valueOf(Util.traceTagApp), truncatedTraceSectionLabel, Integer.valueOf(hashCode));
                        } catch (Exception e) {
                            Util.handleException(e, "asyncTraceEnd");
                        }
                    }
                }
                return unit;
            case 1:
                ImageBitmap imageBitmap = (ImageBitmap) obj3;
                BlendModeColorFilter blendModeColorFilter = (BlendModeColorFilter) obj2;
                LayoutNodeDrawScope layoutNodeDrawScope = (LayoutNodeDrawScope) obj;
                layoutNodeDrawScope.drawContent();
                CanvasDrawScope canvasDrawScope = layoutNodeDrawScope.canvasDrawScope;
                if (((Boolean) ((Function0) obj4).invoke()).booleanValue()) {
                    if (z) {
                        long mo533getCenterF1C5BW0 = canvasDrawScope.mo533getCenterF1C5BW0();
                        MenuHostHelper menuHostHelper = canvasDrawScope.drawContext;
                        long m795getSizeNHjbRc = menuHostHelper.m795getSizeNHjbRc();
                        menuHostHelper.getCanvas().save();
                        try {
                            ((PreviewView.AnonymousClass1) menuHostHelper.mOnInvalidateMenuCallback).m99scale0AR0LA0(-1.0f, 1.0f, mo533getCenterF1C5BW0);
                            canvasDrawScope.m526drawImagegbVJVH8(imageBitmap, blendModeColorFilter);
                        } finally {
                            Config.CC.m(menuHostHelper, m795getSizeNHjbRc);
                        }
                    } else {
                        canvasDrawScope.m526drawImagegbVJVH8(imageBitmap, blendModeColorFilter);
                    }
                }
                return unit;
            case 2:
                final MessageListState messageListState = (MessageListState) obj4;
                final PersistentMap persistentMap = (PersistentMap) obj3;
                final Function1 function1 = (Function1) obj2;
                LazyListIntervalContent lazyListIntervalContent = (LazyListIntervalContent) obj;
                lazyListIntervalContent.getClass();
                final ImmutableList messages = messageListState.getMessages();
                KoinModuleKt$$ExternalSyntheticLambda0 koinModuleKt$$ExternalSyntheticLambda0 = new KoinModuleKt$$ExternalSyntheticLambda0(5);
                int size = ((AbstractCollection) messages).getSize();
                Latch$await$2$2 latch$await$2$2 = new Latch$await$2$2(11, koinModuleKt$$ExternalSyntheticLambda0, messages);
                ProduceKt$awaitClose$4$1 produceKt$awaitClose$4$1 = new ProduceKt$awaitClose$4$1(14, messages);
                final boolean z2 = this.f$1;
                lazyListIntervalContent.items(size, latch$await$2$2, produceKt$awaitClose$4$1, new ComposableLambdaImpl(802480018, new Function4() { // from class: net.thunderbird.feature.mail.message.list.internal.ui.component.template.MessageListKt$MessageList$lambda$0$0$$inlined$items$default$4
                    @Override // kotlin.jvm.functions.Function4
                    public final Object invoke(Object obj5, Object obj6, Object obj7, Object obj8) {
                        int i2;
                        LazyItemScopeImpl lazyItemScopeImpl = (LazyItemScopeImpl) obj5;
                        int intValue = ((Number) obj6).intValue();
                        Composer composer = (Composer) obj7;
                        int intValue2 = ((Number) obj8).intValue();
                        if ((intValue2 & 6) == 0) {
                            i2 = (((GapComposer) composer).changed(lazyItemScopeImpl) ? 4 : 2) | intValue2;
                        } else {
                            i2 = intValue2;
                        }
                        if ((intValue2 & 48) == 0) {
                            i2 |= ((GapComposer) composer).changed(intValue) ? 32 : 16;
                        }
                        GapComposer gapComposer = (GapComposer) composer;
                        if (gapComposer.shouldExecute(i2 & 1, (i2 & 147) != 146)) {
                            final MessageItemUi messageItemUi = (MessageItemUi) ImmutableList.this.get(intValue);
                            gapComposer.startReplaceGroup(-143251999);
                            SwipeActions swipeActions = (SwipeActions) persistentMap.get(messageItemUi.account.id);
                            final MessageListPreferences preferences = messageListState.getPreferences();
                            if (preferences != null) {
                                final boolean z3 = z2;
                                final Function1 function12 = function1;
                                CacheControl.Companion.MessageListSwipeableItem(messageItemUi, swipeActions, function12, null, Expect_jvmKt.rememberComposableLambda(-838516325, new Function3() { // from class: net.thunderbird.feature.mail.message.list.internal.ui.component.template.MessageListKt$MessageList$1$1$2$1
                                    @Override // kotlin.jvm.functions.Function3
                                    public final Object invoke(Object obj9, Object obj10, Object obj11) {
                                        MessageListScreenAccessibilityState messageListScreenAccessibilityState = (MessageListScreenAccessibilityState) obj9;
                                        Composer composer2 = (Composer) obj10;
                                        int intValue3 = ((Number) obj11).intValue();
                                        messageListScreenAccessibilityState.getClass();
                                        final int i3 = 2;
                                        if ((intValue3 & 6) == 0) {
                                            intValue3 |= ((GapComposer) composer2).changed(messageListScreenAccessibilityState) ? 4 : 2;
                                        }
                                        final int i4 = 0;
                                        final int i5 = 1;
                                        GapComposer gapComposer2 = (GapComposer) composer2;
                                        if (gapComposer2.shouldExecute(intValue3 & 1, (intValue3 & 19) != 18)) {
                                            FillElement fillElement = SizeKt.FillWholeMaxWidth;
                                            boolean z4 = (intValue3 & 14) == 4;
                                            final MessageItemUi messageItemUi2 = MessageItemUi.this;
                                            boolean changed = z4 | gapComposer2.changed(messageItemUi2);
                                            Object rememberedValue = gapComposer2.rememberedValue();
                                            Object obj12 = Composer.Companion.Empty;
                                            if (changed || rememberedValue == obj12) {
                                                rememberedValue = new Latch$await$2$2(10, messageListScreenAccessibilityState, messageItemUi2);
                                                gapComposer2.updateRememberedValue(rememberedValue);
                                            }
                                            Modifier semantics = SemanticsModifierKt.semantics(fillElement, true, (Function1) rememberedValue);
                                            final Function1 function13 = function12;
                                            boolean changed2 = gapComposer2.changed(function13) | gapComposer2.changed(messageItemUi2);
                                            Object rememberedValue2 = gapComposer2.rememberedValue();
                                            if (changed2 || rememberedValue2 == obj12) {
                                                rememberedValue2 = new MessageListKt$MessageList$1$1$2$1$2$1(function13, messageItemUi2, 0);
                                                gapComposer2.updateRememberedValue(rememberedValue2);
                                            }
                                            Modifier focusProperties = FocusTraversalKt.focusProperties(semantics, (Function1) rememberedValue2);
                                            boolean changed3 = gapComposer2.changed(function13) | gapComposer2.changed(messageItemUi2);
                                            Object rememberedValue3 = gapComposer2.rememberedValue();
                                            if (changed3 || rememberedValue3 == obj12) {
                                                rememberedValue3 = new Function0() { // from class: net.thunderbird.feature.mail.message.list.internal.ui.component.template.MessageListKt$MessageList$1$1$2$1$3$1
                                                    @Override // kotlin.jvm.functions.Function0
                                                    public final Object invoke() {
                                                        int i6 = i4;
                                                        Unit unit2 = Unit.INSTANCE;
                                                        final MessageItemUi messageItemUi3 = messageItemUi2;
                                                        Function1 function14 = function13;
                                                        switch (i6) {
                                                            case 0:
                                                                function14.invoke(new MessageItemEvent$OnMessageClick(messageItemUi3));
                                                                break;
                                                            case 1:
                                                                function14.invoke(new MessageItemEvent$ToggleSelectMessages(messageItemUi3));
                                                                break;
                                                            case 2:
                                                                function14.invoke(new MessageItemEvent$ToggleSelectMessages(messageItemUi3));
                                                                break;
                                                            default:
                                                                function14.invoke(new MessageListEvent(messageItemUi3) { // from class: net.thunderbird.feature.mail.message.list.ui.event.MessageItemEvent$ToggleFavourite
                                                                    public final List messages;

                                                                    {
                                                                        this.messages = IntOffsetKt.listOf(messageItemUi3);
                                                                    }

                                                                    public final boolean equals(Object obj13) {
                                                                        if (this == obj13) {
                                                                            return true;
                                                                        }
                                                                        return (obj13 instanceof MessageItemEvent$ToggleFavourite) && Intrinsics.areEqual(this.messages, ((MessageItemEvent$ToggleFavourite) obj13).messages);
                                                                    }

                                                                    public final int hashCode() {
                                                                        return this.messages.hashCode();
                                                                    }

                                                                    public final String toString() {
                                                                        return "ToggleFavourite(messages=" + this.messages + ")";
                                                                    }
                                                                });
                                                                break;
                                                        }
                                                        return unit2;
                                                    }
                                                };
                                                gapComposer2.updateRememberedValue(rememberedValue3);
                                            }
                                            Function0 function0 = (Function0) rememberedValue3;
                                            boolean changed4 = gapComposer2.changed(function13) | gapComposer2.changed(messageItemUi2);
                                            Object rememberedValue4 = gapComposer2.rememberedValue();
                                            if (changed4 || rememberedValue4 == obj12) {
                                                rememberedValue4 = new Function0() { // from class: net.thunderbird.feature.mail.message.list.internal.ui.component.template.MessageListKt$MessageList$1$1$2$1$3$1
                                                    @Override // kotlin.jvm.functions.Function0
                                                    public final Object invoke() {
                                                        int i6 = i5;
                                                        Unit unit2 = Unit.INSTANCE;
                                                        final MessageItemUi messageItemUi3 = messageItemUi2;
                                                        Function1 function14 = function13;
                                                        switch (i6) {
                                                            case 0:
                                                                function14.invoke(new MessageItemEvent$OnMessageClick(messageItemUi3));
                                                                break;
                                                            case 1:
                                                                function14.invoke(new MessageItemEvent$ToggleSelectMessages(messageItemUi3));
                                                                break;
                                                            case 2:
                                                                function14.invoke(new MessageItemEvent$ToggleSelectMessages(messageItemUi3));
                                                                break;
                                                            default:
                                                                function14.invoke(new MessageListEvent(messageItemUi3) { // from class: net.thunderbird.feature.mail.message.list.ui.event.MessageItemEvent$ToggleFavourite
                                                                    public final List messages;

                                                                    {
                                                                        this.messages = IntOffsetKt.listOf(messageItemUi3);
                                                                    }

                                                                    public final boolean equals(Object obj13) {
                                                                        if (this == obj13) {
                                                                            return true;
                                                                        }
                                                                        return (obj13 instanceof MessageItemEvent$ToggleFavourite) && Intrinsics.areEqual(this.messages, ((MessageItemEvent$ToggleFavourite) obj13).messages);
                                                                    }

                                                                    public final int hashCode() {
                                                                        return this.messages.hashCode();
                                                                    }

                                                                    public final String toString() {
                                                                        return "ToggleFavourite(messages=" + this.messages + ")";
                                                                    }
                                                                });
                                                                break;
                                                        }
                                                        return unit2;
                                                    }
                                                };
                                                gapComposer2.updateRememberedValue(rememberedValue4);
                                            }
                                            Function0 function02 = (Function0) rememberedValue4;
                                            boolean changed5 = gapComposer2.changed(function13) | gapComposer2.changed(messageItemUi2);
                                            Object rememberedValue5 = gapComposer2.rememberedValue();
                                            if (changed5 || rememberedValue5 == obj12) {
                                                rememberedValue5 = new Function0() { // from class: net.thunderbird.feature.mail.message.list.internal.ui.component.template.MessageListKt$MessageList$1$1$2$1$3$1
                                                    @Override // kotlin.jvm.functions.Function0
                                                    public final Object invoke() {
                                                        int i6 = i3;
                                                        Unit unit2 = Unit.INSTANCE;
                                                        final MessageItemUi messageItemUi3 = messageItemUi2;
                                                        Function1 function14 = function13;
                                                        switch (i6) {
                                                            case 0:
                                                                function14.invoke(new MessageItemEvent$OnMessageClick(messageItemUi3));
                                                                break;
                                                            case 1:
                                                                function14.invoke(new MessageItemEvent$ToggleSelectMessages(messageItemUi3));
                                                                break;
                                                            case 2:
                                                                function14.invoke(new MessageItemEvent$ToggleSelectMessages(messageItemUi3));
                                                                break;
                                                            default:
                                                                function14.invoke(new MessageListEvent(messageItemUi3) { // from class: net.thunderbird.feature.mail.message.list.ui.event.MessageItemEvent$ToggleFavourite
                                                                    public final List messages;

                                                                    {
                                                                        this.messages = IntOffsetKt.listOf(messageItemUi3);
                                                                    }

                                                                    public final boolean equals(Object obj13) {
                                                                        if (this == obj13) {
                                                                            return true;
                                                                        }
                                                                        return (obj13 instanceof MessageItemEvent$ToggleFavourite) && Intrinsics.areEqual(this.messages, ((MessageItemEvent$ToggleFavourite) obj13).messages);
                                                                    }

                                                                    public final int hashCode() {
                                                                        return this.messages.hashCode();
                                                                    }

                                                                    public final String toString() {
                                                                        return "ToggleFavourite(messages=" + this.messages + ")";
                                                                    }
                                                                });
                                                                break;
                                                        }
                                                        return unit2;
                                                    }
                                                };
                                                gapComposer2.updateRememberedValue(rememberedValue5);
                                            }
                                            Function0 function03 = (Function0) rememberedValue5;
                                            boolean changed6 = gapComposer2.changed(function13) | gapComposer2.changed(messageItemUi2);
                                            Object rememberedValue6 = gapComposer2.rememberedValue();
                                            if (changed6 || rememberedValue6 == obj12) {
                                                final int i6 = 3;
                                                rememberedValue6 = new Function0() { // from class: net.thunderbird.feature.mail.message.list.internal.ui.component.template.MessageListKt$MessageList$1$1$2$1$3$1
                                                    @Override // kotlin.jvm.functions.Function0
                                                    public final Object invoke() {
                                                        int i62 = i6;
                                                        Unit unit2 = Unit.INSTANCE;
                                                        final MessageItemUi messageItemUi3 = messageItemUi2;
                                                        Function1 function14 = function13;
                                                        switch (i62) {
                                                            case 0:
                                                                function14.invoke(new MessageItemEvent$OnMessageClick(messageItemUi3));
                                                                break;
                                                            case 1:
                                                                function14.invoke(new MessageItemEvent$ToggleSelectMessages(messageItemUi3));
                                                                break;
                                                            case 2:
                                                                function14.invoke(new MessageItemEvent$ToggleSelectMessages(messageItemUi3));
                                                                break;
                                                            default:
                                                                function14.invoke(new MessageListEvent(messageItemUi3) { // from class: net.thunderbird.feature.mail.message.list.ui.event.MessageItemEvent$ToggleFavourite
                                                                    public final List messages;

                                                                    {
                                                                        this.messages = IntOffsetKt.listOf(messageItemUi3);
                                                                    }

                                                                    public final boolean equals(Object obj13) {
                                                                        if (this == obj13) {
                                                                            return true;
                                                                        }
                                                                        return (obj13 instanceof MessageItemEvent$ToggleFavourite) && Intrinsics.areEqual(this.messages, ((MessageItemEvent$ToggleFavourite) obj13).messages);
                                                                    }

                                                                    public final int hashCode() {
                                                                        return this.messages.hashCode();
                                                                    }

                                                                    public final String toString() {
                                                                        return "ToggleFavourite(messages=" + this.messages + ")";
                                                                    }
                                                                });
                                                                break;
                                                        }
                                                        return unit2;
                                                    }
                                                };
                                                gapComposer2.updateRememberedValue(rememberedValue6);
                                            }
                                            ByteStreamsKt.MessageListItem(messageItemUi2, z3, preferences, focusProperties, function0, function02, function03, (Function0) rememberedValue6, gapComposer2, 0);
                                        } else {
                                            gapComposer2.skipToGroupEnd();
                                        }
                                        return Unit.INSTANCE;
                                    }
                                }, gapComposer), gapComposer, 24576);
                            }
                            gapComposer.end(false);
                        } else {
                            gapComposer.skipToGroupEnd();
                        }
                        return Unit.INSTANCE;
                    }
                }, true));
                if (!StringsKt.isBlank(messageListState.getMetadata().footer.text)) {
                    Config.CC.item$default(lazyListIntervalContent, null, new ComposableLambdaImpl(900049149, new BufferedChannel$$ExternalSyntheticLambda1(23, (Object) messageListState, function1), true), 3);
                }
                return unit;
            default:
                final ImmutableList immutableList = (ImmutableList) obj4;
                final Function1 function12 = (Function1) obj3;
                final DisplayAccount displayAccount = (DisplayAccount) obj2;
                LazyListIntervalContent lazyListIntervalContent2 = (LazyListIntervalContent) obj;
                lazyListIntervalContent2.getClass();
                lazyListIntervalContent2.items(((AbstractCollection) immutableList).getSize(), new Latch$await$2$2(13, new KoinModuleKt$$ExternalSyntheticLambda0(19), immutableList), new ChangelogScreenKt$ChangelogScreen$lambda$1$0$0$0$0$$inlined$items$default$3(6, immutableList), new ComposableLambdaImpl(802480018, new Function4() { // from class: net.thunderbird.feature.navigation.drawer.dropdown.ui.account.AccountListKt$AccountList$lambda$0$0$$inlined$items$default$4
                    @Override // kotlin.jvm.functions.Function4
                    public final Object invoke(Object obj5, Object obj6, Object obj7, Object obj8) {
                        int i2;
                        LazyItemScopeImpl lazyItemScopeImpl = (LazyItemScopeImpl) obj5;
                        int intValue = ((Number) obj6).intValue();
                        Composer composer = (Composer) obj7;
                        int intValue2 = ((Number) obj8).intValue();
                        if ((intValue2 & 6) == 0) {
                            i2 = (((GapComposer) composer).changed(lazyItemScopeImpl) ? 4 : 2) | intValue2;
                        } else {
                            i2 = intValue2;
                        }
                        if ((intValue2 & 48) == 0) {
                            i2 |= ((GapComposer) composer).changed(intValue) ? 32 : 16;
                        }
                        GapComposer gapComposer = (GapComposer) composer;
                        if (gapComposer.shouldExecute(i2 & 1, (i2 & 147) != 146)) {
                            DisplayAccount displayAccount2 = (DisplayAccount) immutableList.get(intValue);
                            gapComposer.startReplaceGroup(2142423915);
                            Object obj9 = function12;
                            boolean changed = gapComposer.changed(obj9) | gapComposer.changedInstance(displayAccount2);
                            Object rememberedValue = gapComposer.rememberedValue();
                            if (changed || rememberedValue == Composer.Companion.Empty) {
                                rememberedValue = new Latch$await$2$2(12, obj9, displayAccount2);
                                gapComposer.updateRememberedValue(rememberedValue);
                            }
                            Hex.AccountListItem(displayAccount2, (Function1) rememberedValue, Intrinsics.areEqual(displayAccount, displayAccount2), z, null, gapComposer, 0);
                            gapComposer.end(false);
                        } else {
                            gapComposer.skipToGroupEnd();
                        }
                        return Unit.INSTANCE;
                    }
                }, true));
                return unit;
        }
    }

    public /* synthetic */ WorkerWrapper$$ExternalSyntheticLambda1(Object obj, boolean z, Object obj2, Object obj3, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = z;
        this.f$2 = obj2;
        this.f$3 = obj3;
    }
}
