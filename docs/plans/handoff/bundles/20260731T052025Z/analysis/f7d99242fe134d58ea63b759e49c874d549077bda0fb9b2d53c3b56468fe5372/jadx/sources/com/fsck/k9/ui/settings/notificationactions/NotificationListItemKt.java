package com.fsck.k9.ui.settings.notificationactions;

import androidx.appcompat.app.ActionBar;
import androidx.compose.animation.core.AnimateAsStateKt;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.gestures.DragGestureDetectorKt;
import androidx.compose.foundation.layout.FillElement;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.foundation.lazy.LazyListStateKt;
import androidx.compose.material3.AlertDialogKt$$ExternalSyntheticLambda3;
import androidx.compose.material3.AppBarKt$$ExternalSyntheticLambda0;
import androidx.compose.material3.CardKt$$ExternalSyntheticLambda1;
import androidx.compose.material3.ThumbNode$$ExternalSyntheticLambda0;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt$$ExternalSyntheticLambda0;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.Updater$$ExternalSyntheticLambda0;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.ZIndexElement;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.compose.ui.input.pointer.PointerInputEventHandler;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntRectKt;
import androidx.lifecycle.compose.LifecycleEffectKt$$ExternalSyntheticLambda0;
import androidx.room.RoomDatabase$closeBarrier$1;
import androidx.work.Operation$State;
import app.k9mail.feature.account.common.ui.WizardNavigationBarKt$$ExternalSyntheticLambda0;
import app.k9mail.feature.account.common.ui.item.ListItemKt$$ExternalSyntheticLambda0;
import app.k9mail.feature.onboarding.welcome.ui.WelcomeContentKt$$ExternalSyntheticLambda9;
import app.k9mail.legacy.di.DI$$ExternalSyntheticLambda0;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import coil3.size.ViewSizeResolver;
import com.fsck.k9.Preferences$getAccountsFlow$1;
import com.fsck.k9.R;
import com.fsck.k9.ui.messagelist.MessageListFragmentKt$$ExternalSyntheticLambda8;
import com.fsck.k9.ui.settings.AboutFragmentKt$$ExternalSyntheticLambda7;
import com.fsck.k9.ui.settings.notificationactions.NotificationListItem;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;
import kotlin.reflect.KFunction;
import kotlinx.collections.immutable.ImmutableList;
import net.thunderbird.core.ui.compose.theme2.ThemeColorScheme;
import net.thunderbird.core.ui.compose.theme2.ThemeColorSchemeKt;
import net.thunderbird.core.ui.compose.theme2.ThemeSizes;
import net.thunderbird.core.ui.compose.theme2.ThemeSizesKt;
import net.thunderbird.core.ui.compose.theme2.ThemeSpacings;
import net.thunderbird.core.ui.compose.theme2.ThemeSpacingsKt;
import okhttp3.Handshake$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class NotificationListItemKt {

    /* renamed from: lambda$-594985951, reason: not valid java name */
    public static final ComposableLambdaImpl f33lambda$594985951 = new ComposableLambdaImpl(-594985951, new WelcomeContentKt$$ExternalSyntheticLambda9(22), false);

    public static final void ArrowButton(ImageVector imageVector, String str, boolean z, Function0 function0, Modifier modifier, Composer composer, int i) {
        boolean z2;
        String str2;
        ImageVector imageVector2;
        Modifier modifier2;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(2034854529);
        int i2 = (gapComposer.changed(imageVector) ? 4 : 2) | i | (gapComposer.changed(str) ? 32 : 16) | (gapComposer.changed(z) ? 256 : 128) | (gapComposer.changedInstance(function0) ? 2048 : 1024) | 24576;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 9363) != 9362)) {
            boolean z3 = (i2 & 7168) == 2048;
            Object rememberedValue = gapComposer.rememberedValue();
            if (z3 || rememberedValue == Composer.Companion.Empty) {
                rememberedValue = new Handshake$$ExternalSyntheticLambda0(10, function0);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            Function0 function02 = (Function0) rememberedValue;
            int i3 = i2 << 3;
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            z2 = z;
            IntRectKt.ButtonIcon(function02, imageVector, companion, z2, str, null, gapComposer, (i3 & 7168) | (i3 & 112) | 384 | ((i2 << 9) & 57344), 32);
            imageVector2 = imageVector;
            str2 = str;
            modifier2 = companion;
        } else {
            z2 = z;
            str2 = str;
            imageVector2 = imageVector;
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new MessageListFragmentKt$$ExternalSyntheticLambda8(imageVector2, str2, z2, function0, modifier2, i);
        }
    }

    public static final void NotificationActionRow(MessageNotificationAction messageNotificationAction, String str, ActionRowState actionRowState, MoveActions moveActions, DragCallbacks dragCallbacks, Modifier modifier, Composer composer, int i) {
        int i2;
        GapComposer gapComposer;
        GapComposer gapComposer2 = (GapComposer) composer;
        gapComposer2.startRestartGroup(650018388);
        if ((i & 6) == 0) {
            i2 = (gapComposer2.changed(messageNotificationAction.ordinal()) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer2.changed(str) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= gapComposer2.changed(actionRowState) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= gapComposer2.changed(moveActions) ? 2048 : 1024;
        }
        if ((i & 24576) == 0) {
            i2 |= gapComposer2.changed(dragCallbacks) ? 16384 : 8192;
        }
        if ((196608 & i) == 0) {
            i2 |= gapComposer2.changed(modifier) ? 131072 : 65536;
        }
        int i3 = i2;
        if (gapComposer2.shouldExecute(i3 & 1, (74899 & i3) != 74898)) {
            RowDragState rowDragState = actionRowState.dragState;
            boolean z = actionRowState.isDimmed;
            boolean z2 = rowDragState.isDragged;
            RowDragState rowDragState2 = new RowDragState(rowDragState.draggedOffsetY, (z2 || !z) ? 1.0f : 0.6f, z2);
            String stringResource = Operation$State.stringResource(gapComposer2, z ? R.string.notification_actions_hidden_state : R.string.notification_actions_shown_state);
            ((ThemeSpacings) gapComposer2.consume(ThemeSpacingsKt.LocalThemeSpacings)).getClass();
            ((ThemeSizes) gapComposer2.consume(ThemeSizesKt.LocalThemeSizes)).getClass();
            gapComposer = gapComposer2;
            m947NotificationReorderRowEUb7tLY(rowDragState2, 8.0f, dragCallbacks, SizeKt.m228heightInVpY3zN4$default(modifier, 48.0f, 2), Expect_jvmKt.rememberComposableLambda(1103424567, new WizardNavigationBarKt$$ExternalSyntheticLambda0(messageNotificationAction, str, stringResource, moveActions, actionRowState, 4), gapComposer2), gapComposer, ((i3 >> 6) & 896) | 24576);
        } else {
            gapComposer = gapComposer2;
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new CardKt$$ExternalSyntheticLambda1(messageNotificationAction, str, actionRowState, moveActions, dragCallbacks, modifier, i);
        }
    }

    public static final void NotificationActionsContent(String str, NotificationActionsReorderController notificationActionsReorderController, Modifier modifier, Composer composer, int i) {
        int i2;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-1025549748);
        if ((i & 6) == 0) {
            i2 = (gapComposer.changed(str) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= (i & 64) == 0 ? gapComposer.changed(notificationActionsReorderController) : gapComposer.changedInstance(notificationActionsReorderController) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= gapComposer.changed(modifier) ? 256 : 128;
        }
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 147) != 146)) {
            MathKt.m983Surface_UMDTes(modifier.then(SizeKt.FillWholeMaxSize), null, 0L, 0L, 0.0f, Expect_jvmKt.rememberComposableLambda(-1776419441, new AboutFragmentKt$$ExternalSyntheticLambda7(9, str, notificationActionsReorderController), gapComposer), gapComposer, 196608, 30);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new AlertDialogKt$$ExternalSyntheticLambda3(str, notificationActionsReorderController, modifier, i, 26);
        }
    }

    public static final void NotificationActionsList(NotificationActionsReorderController notificationActionsReorderController, Composer composer, int i) {
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-500148233);
        int i2 = (gapComposer.changedInstance(notificationActionsReorderController) ? 4 : 2) | i;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 3) != 2)) {
            LazyListState rememberLazyListState = LazyListStateKt.rememberLazyListState(gapComposer);
            int i3 = i2 & 14;
            boolean changed = (i3 == 4 || gapComposer.changedInstance(notificationActionsReorderController)) | gapComposer.changed(rememberLazyListState);
            Object rememberedValue = gapComposer.rememberedValue();
            Object obj = Composer.Companion.Empty;
            if (changed || rememberedValue == obj) {
                rememberedValue = new DI$$ExternalSyntheticLambda0(26, notificationActionsReorderController, rememberLazyListState);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            Object obj2 = (Function1) rememberedValue;
            FillElement fillElement = SizeKt.FillWholeMaxSize;
            ((ThemeSpacings) gapComposer.consume(ThemeSpacingsKt.LocalThemeSpacings)).getClass();
            PaddingValuesImpl m213PaddingValuesYgX7TsA$default = OffsetKt.m213PaddingValuesYgX7TsA$default(1, 0.0f);
            boolean changed2 = gapComposer.changed(obj2) | (i3 == 4 || gapComposer.changedInstance(notificationActionsReorderController));
            Object rememberedValue2 = gapComposer.rememberedValue();
            if (changed2 || rememberedValue2 == obj) {
                rememberedValue2 = new DI$$ExternalSyntheticLambda0(27, notificationActionsReorderController, obj2);
                gapComposer.updateRememberedValue(rememberedValue2);
            }
            ActionBar.LazyColumn(6, 504, null, null, null, m213PaddingValuesYgX7TsA$default, rememberLazyListState, gapComposer, null, fillElement, (Function1) rememberedValue2, false);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new ComposerKt$$ExternalSyntheticLambda0(i, 29, notificationActionsReorderController);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void NotificationActionsListItem(final NotificationListItem notificationListItem, int i, final NotificationActionsReorderController notificationActionsReorderController, Function1 function1, Modifier modifier, Composer composer, int i2) {
        int i3;
        GapComposer gapComposer;
        int i4;
        int i5;
        RowDragState rowDragState;
        int i6;
        int i7;
        final NotificationActionsReorderController notificationActionsReorderController2;
        int i8;
        boolean z;
        boolean z2;
        Object rememberedValue;
        boolean z3;
        Object rememberedValue2;
        Modifier modifier2 = modifier;
        GapComposer gapComposer2 = (GapComposer) composer;
        gapComposer2.startRestartGroup(-897347317);
        if ((i2 & 6) == 0) {
            i3 = ((i2 & 8) == 0 ? gapComposer2.changed(notificationListItem) : gapComposer2.changedInstance(notificationListItem) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposer2.changed(i) ? 32 : 16;
        }
        if ((i2 & 384) == 0) {
            i3 |= (i2 & 512) == 0 ? gapComposer2.changed(notificationActionsReorderController) : gapComposer2.changedInstance(notificationActionsReorderController) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposer2.changedInstance(function1) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i3 |= gapComposer2.changed(modifier2) ? 16384 : 8192;
        }
        final int i9 = 0;
        if (gapComposer2.shouldExecute(i3 & 1, (i3 & 9363) != 9362)) {
            RowDragState rowDragState2 = new RowDragState(notificationActionsReorderController.draggedOffsetY$delegate.getFloatValue(), 1.0f, Intrinsics.areEqual((String) notificationActionsReorderController.draggedKey$delegate.getValue(), getKey(notificationListItem)));
            int i10 = i3 & 896;
            int i11 = i3 & 14;
            boolean z4 = (i10 == 256 || ((i3 & 512) != 0 && gapComposer2.changedInstance(notificationActionsReorderController))) | (i11 == 4 || ((i3 & 8) != 0 && gapComposer2.changedInstance(notificationListItem)));
            Object rememberedValue3 = gapComposer2.rememberedValue();
            NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
            if (z4 || rememberedValue3 == neverEqualPolicy) {
                rememberedValue3 = new Function0() { // from class: com.fsck.k9.ui.settings.notificationactions.NotificationActionsSettingsScreenKt$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        int i12 = i9;
                        NotificationListItem notificationListItem2 = notificationListItem;
                        NotificationActionsReorderController notificationActionsReorderController3 = notificationActionsReorderController;
                        switch (i12) {
                            case 0:
                                String key = NotificationListItemKt.getKey(notificationListItem2);
                                notificationActionsReorderController3.getClass();
                                notificationActionsReorderController3.draggedKey$delegate.setValue(key);
                                notificationActionsReorderController3.draggedOffsetY$delegate.setFloatValue(0.0f);
                                notificationActionsReorderController3.dragDidMove = false;
                                return Unit.INSTANCE;
                            case 1:
                                return Boolean.valueOf(notificationActionsReorderController3.moveByStep(NotificationListItemKt.getKey(notificationListItem2), -1));
                            default:
                                return Boolean.valueOf(notificationActionsReorderController3.moveByStep(NotificationListItemKt.getKey(notificationListItem2), 1));
                        }
                    }
                };
                gapComposer2.updateRememberedValue(rememberedValue3);
            }
            Function0 function0 = (Function0) rememberedValue3;
            boolean z5 = i10 == 256 || ((i3 & 512) != 0 && gapComposer2.changedInstance(notificationActionsReorderController));
            Object rememberedValue4 = gapComposer2.rememberedValue();
            if (z5 || rememberedValue4 == neverEqualPolicy) {
                i4 = i10;
                i5 = i3;
                rowDragState = rowDragState2;
                i6 = i11;
                i7 = 1;
                RoomDatabase$closeBarrier$1 roomDatabase$closeBarrier$1 = new RoomDatabase$closeBarrier$1(0, notificationActionsReorderController, NotificationActionsReorderController.class, "endDrag", "endDrag()V", 0, 20);
                notificationActionsReorderController2 = notificationActionsReorderController;
                gapComposer2.updateRememberedValue(roomDatabase$closeBarrier$1);
                rememberedValue4 = roomDatabase$closeBarrier$1;
            } else {
                i5 = i3;
                i4 = i10;
                rowDragState = rowDragState2;
                i6 = i11;
                i7 = 1;
                notificationActionsReorderController2 = notificationActionsReorderController;
            }
            DragCallbacks dragCallbacks = new DragCallbacks(function0, (Function0) ((KFunction) rememberedValue4), function1);
            if (notificationListItem instanceof NotificationListItem.Action) {
                gapComposer2.startReplaceGroup(-996796253);
                NotificationListItem.Action action = (NotificationListItem.Action) notificationListItem;
                String stringResource = Operation$State.stringResource(gapComposer2, action.action.labelRes);
                MessageNotificationAction messageNotificationAction = action.action;
                ActionRowState actionRowState = new ActionRowState(i > notificationActionsReorderController2.cutoffIndexState$delegate.getIntValue() ? i7 : 0, notificationActionsReorderController2.canMove(getKey(notificationListItem), -1), notificationActionsReorderController2.canMove(getKey(notificationListItem), i7), rowDragState);
                Object[] objArr = new Object[i7];
                objArr[0] = stringResource;
                String stringResource2 = Operation$State.stringResource(R.string.accessibility_move_item_up, objArr, gapComposer2);
                Object[] objArr2 = new Object[i7];
                objArr2[0] = stringResource;
                String stringResource3 = Operation$State.stringResource(R.string.accessibility_move_item_down, objArr2, gapComposer2);
                int i12 = i4;
                if (i12 != 256) {
                    i8 = i5;
                    if ((i8 & 512) == 0 || !gapComposer2.changedInstance(notificationActionsReorderController2)) {
                        z = false;
                        int i13 = i6;
                        z2 = (i13 != 4 || ((i8 & 8) != 0 && gapComposer2.changedInstance(notificationListItem))) | z;
                        rememberedValue = gapComposer2.rememberedValue();
                        if (!z2 || rememberedValue == neverEqualPolicy) {
                            final int i14 = 1;
                            rememberedValue = new Function0() { // from class: com.fsck.k9.ui.settings.notificationactions.NotificationActionsSettingsScreenKt$$ExternalSyntheticLambda0
                                @Override // kotlin.jvm.functions.Function0
                                public final Object invoke() {
                                    int i122 = i14;
                                    NotificationListItem notificationListItem2 = notificationListItem;
                                    NotificationActionsReorderController notificationActionsReorderController3 = notificationActionsReorderController2;
                                    switch (i122) {
                                        case 0:
                                            String key = NotificationListItemKt.getKey(notificationListItem2);
                                            notificationActionsReorderController3.getClass();
                                            notificationActionsReorderController3.draggedKey$delegate.setValue(key);
                                            notificationActionsReorderController3.draggedOffsetY$delegate.setFloatValue(0.0f);
                                            notificationActionsReorderController3.dragDidMove = false;
                                            return Unit.INSTANCE;
                                        case 1:
                                            return Boolean.valueOf(notificationActionsReorderController3.moveByStep(NotificationListItemKt.getKey(notificationListItem2), -1));
                                        default:
                                            return Boolean.valueOf(notificationActionsReorderController3.moveByStep(NotificationListItemKt.getKey(notificationListItem2), 1));
                                    }
                                }
                            };
                            gapComposer2.updateRememberedValue(rememberedValue);
                        }
                        Function0 function02 = (Function0) rememberedValue;
                        z3 = (i13 != 4 || ((i8 & 8) != 0 && gapComposer2.changedInstance(notificationListItem))) | (i12 != 256 || ((i8 & 512) != 0 && gapComposer2.changedInstance(notificationActionsReorderController2)));
                        rememberedValue2 = gapComposer2.rememberedValue();
                        if (!z3 || rememberedValue2 == neverEqualPolicy) {
                            final int i15 = 2;
                            rememberedValue2 = new Function0() { // from class: com.fsck.k9.ui.settings.notificationactions.NotificationActionsSettingsScreenKt$$ExternalSyntheticLambda0
                                @Override // kotlin.jvm.functions.Function0
                                public final Object invoke() {
                                    int i122 = i15;
                                    NotificationListItem notificationListItem2 = notificationListItem;
                                    NotificationActionsReorderController notificationActionsReorderController3 = notificationActionsReorderController2;
                                    switch (i122) {
                                        case 0:
                                            String key = NotificationListItemKt.getKey(notificationListItem2);
                                            notificationActionsReorderController3.getClass();
                                            notificationActionsReorderController3.draggedKey$delegate.setValue(key);
                                            notificationActionsReorderController3.draggedOffsetY$delegate.setFloatValue(0.0f);
                                            notificationActionsReorderController3.dragDidMove = false;
                                            return Unit.INSTANCE;
                                        case 1:
                                            return Boolean.valueOf(notificationActionsReorderController3.moveByStep(NotificationListItemKt.getKey(notificationListItem2), -1));
                                        default:
                                            return Boolean.valueOf(notificationActionsReorderController3.moveByStep(NotificationListItemKt.getKey(notificationListItem2), 1));
                                    }
                                }
                            };
                            gapComposer2.updateRememberedValue(rememberedValue2);
                        }
                        gapComposer = gapComposer2;
                        NotificationActionRow(messageNotificationAction, stringResource, actionRowState, new MoveActions(stringResource2, stringResource3, function02, (Function0) rememberedValue2), dragCallbacks, modifier, gapComposer, (i8 << 3) & 458752);
                        modifier2 = modifier;
                        gapComposer.end(false);
                    }
                } else {
                    i8 = i5;
                }
                z = true;
                int i132 = i6;
                z2 = (i132 != 4 || ((i8 & 8) != 0 && gapComposer2.changedInstance(notificationListItem))) | z;
                rememberedValue = gapComposer2.rememberedValue();
                if (!z2) {
                }
                final int i142 = 1;
                rememberedValue = new Function0() { // from class: com.fsck.k9.ui.settings.notificationactions.NotificationActionsSettingsScreenKt$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        int i122 = i142;
                        NotificationListItem notificationListItem2 = notificationListItem;
                        NotificationActionsReorderController notificationActionsReorderController3 = notificationActionsReorderController2;
                        switch (i122) {
                            case 0:
                                String key = NotificationListItemKt.getKey(notificationListItem2);
                                notificationActionsReorderController3.getClass();
                                notificationActionsReorderController3.draggedKey$delegate.setValue(key);
                                notificationActionsReorderController3.draggedOffsetY$delegate.setFloatValue(0.0f);
                                notificationActionsReorderController3.dragDidMove = false;
                                return Unit.INSTANCE;
                            case 1:
                                return Boolean.valueOf(notificationActionsReorderController3.moveByStep(NotificationListItemKt.getKey(notificationListItem2), -1));
                            default:
                                return Boolean.valueOf(notificationActionsReorderController3.moveByStep(NotificationListItemKt.getKey(notificationListItem2), 1));
                        }
                    }
                };
                gapComposer2.updateRememberedValue(rememberedValue);
                Function0 function022 = (Function0) rememberedValue;
                if (i12 != 256) {
                }
                z3 = (i132 != 4 || ((i8 & 8) != 0 && gapComposer2.changedInstance(notificationListItem))) | (i12 != 256 || ((i8 & 512) != 0 && gapComposer2.changedInstance(notificationActionsReorderController2)));
                rememberedValue2 = gapComposer2.rememberedValue();
                if (!z3) {
                }
                final int i152 = 2;
                rememberedValue2 = new Function0() { // from class: com.fsck.k9.ui.settings.notificationactions.NotificationActionsSettingsScreenKt$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        int i122 = i152;
                        NotificationListItem notificationListItem2 = notificationListItem;
                        NotificationActionsReorderController notificationActionsReorderController3 = notificationActionsReorderController2;
                        switch (i122) {
                            case 0:
                                String key = NotificationListItemKt.getKey(notificationListItem2);
                                notificationActionsReorderController3.getClass();
                                notificationActionsReorderController3.draggedKey$delegate.setValue(key);
                                notificationActionsReorderController3.draggedOffsetY$delegate.setFloatValue(0.0f);
                                notificationActionsReorderController3.dragDidMove = false;
                                return Unit.INSTANCE;
                            case 1:
                                return Boolean.valueOf(notificationActionsReorderController3.moveByStep(NotificationListItemKt.getKey(notificationListItem2), -1));
                            default:
                                return Boolean.valueOf(notificationActionsReorderController3.moveByStep(NotificationListItemKt.getKey(notificationListItem2), 1));
                        }
                    }
                };
                gapComposer2.updateRememberedValue(rememberedValue2);
                gapComposer = gapComposer2;
                NotificationActionRow(messageNotificationAction, stringResource, actionRowState, new MoveActions(stringResource2, stringResource3, function022, (Function0) rememberedValue2), dragCallbacks, modifier, gapComposer, (i8 << 3) & 458752);
                modifier2 = modifier;
                gapComposer.end(false);
            } else {
                modifier2 = modifier;
                gapComposer = gapComposer2;
                int i16 = i5;
                RowDragState rowDragState3 = rowDragState;
                if (!(notificationListItem instanceof NotificationListItem.Cutoff)) {
                    throw ViewSizeResolver.CC.m(gapComposer, 937675067, false);
                }
                gapComposer.startReplaceGroup(937710525);
                NotificationCutoffRow(rowDragState3, dragCallbacks, modifier2, gapComposer, (i16 >> 6) & 896);
                gapComposer.end(false);
            }
        } else {
            gapComposer = gapComposer2;
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new ListItemKt$$ExternalSyntheticLambda0(notificationListItem, i, notificationActionsReorderController, function1, modifier2, i2);
        }
    }

    public static final void NotificationActionsSettingsScreen(String str, ImmutableList immutableList, int i, Function2 function2, Modifier modifier, Composer composer, int i2) {
        ImmutableList immutableList2;
        Modifier modifier2;
        NotificationActionsReorderController notificationActionsReorderController;
        str.getClass();
        immutableList.getClass();
        function2.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-697561686);
        int i3 = i2 | (gapComposer.changed(str) ? 4 : 2) | (gapComposer.changed(immutableList) ? 32 : 16) | (gapComposer.changed(i) ? 256 : 128) | (gapComposer.changedInstance(function2) ? 2048 : 1024) | 24576;
        if (gapComposer.shouldExecute(i3 & 1, (i3 & 9363) != 9362)) {
            int i4 = i3 >> 3;
            Object rememberedValue = gapComposer.rememberedValue();
            NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
            if (rememberedValue == neverEqualPolicy) {
                rememberedValue = new NotificationActionsReorderController(immutableList, i, function2);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            NotificationActionsReorderController notificationActionsReorderController2 = (NotificationActionsReorderController) rememberedValue;
            Integer valueOf = Integer.valueOf(i);
            boolean changedInstance = ((((i4 & 14) ^ 6) > 4 && gapComposer.changed(immutableList)) || (i4 & 6) == 4) | gapComposer.changedInstance(notificationActionsReorderController2) | ((((i4 & 112) ^ 48) > 32 && gapComposer.changed(i)) || (i4 & 48) == 32);
            Object rememberedValue2 = gapComposer.rememberedValue();
            if (changedInstance || rememberedValue2 == neverEqualPolicy) {
                notificationActionsReorderController = notificationActionsReorderController2;
                immutableList2 = immutableList;
                Preferences$getAccountsFlow$1 preferences$getAccountsFlow$1 = new Preferences$getAccountsFlow$1(notificationActionsReorderController, immutableList2, i, (Continuation) null, 16);
                gapComposer.updateRememberedValue(preferences$getAccountsFlow$1);
                rememberedValue2 = preferences$getAccountsFlow$1;
            } else {
                immutableList2 = immutableList;
                notificationActionsReorderController = notificationActionsReorderController2;
            }
            Updater.LaunchedEffect(immutableList2, valueOf, (Function2) rememberedValue2, gapComposer);
            modifier2 = Modifier.Companion.$$INSTANCE;
            NotificationActionsContent(str, notificationActionsReorderController, modifier2, gapComposer, (i3 & 14) | 448);
        } else {
            immutableList2 = immutableList;
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new LifecycleEffectKt$$ExternalSyntheticLambda0(str, immutableList2, i, function2, modifier2, i2, 9);
        }
    }

    public static final void NotificationCutoffRow(RowDragState rowDragState, DragCallbacks dragCallbacks, Modifier modifier, Composer composer, int i) {
        int i2;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(1338646436);
        if ((i & 6) == 0) {
            i2 = (gapComposer.changed(rowDragState) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer.changed(dragCallbacks) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= gapComposer.changed(modifier) ? 256 : 128;
        }
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 147) != 146)) {
            RowDragState rowDragState2 = new RowDragState(rowDragState.draggedOffsetY, 1.0f, rowDragState.isDragged);
            ((ThemeSpacings) gapComposer.consume(ThemeSpacingsKt.LocalThemeSpacings)).getClass();
            ((ThemeSizes) gapComposer.consume(ThemeSizesKt.LocalThemeSizes)).getClass();
            m947NotificationReorderRowEUb7tLY(rowDragState2, 16.0f, dragCallbacks, SizeKt.m228heightInVpY3zN4$default(modifier, 48.0f, 2), f33lambda$594985951, gapComposer, ((i2 << 3) & 896) | 24576);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new AlertDialogKt$$ExternalSyntheticLambda3(rowDragState, dragCallbacks, modifier, i, 27);
        }
    }

    /* renamed from: NotificationReorderRow-EUb7tLY, reason: not valid java name */
    public static final void m947NotificationReorderRowEUb7tLY(final RowDragState rowDragState, final float f, final DragCallbacks dragCallbacks, final Modifier modifier, final ComposableLambdaImpl composableLambdaImpl, Composer composer, final int i) {
        int i2;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(1109073266);
        int i3 = 4;
        if ((i & 6) == 0) {
            i2 = (gapComposer.changed(rowDragState) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer.changed(f) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= gapComposer.changed(dragCallbacks) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= gapComposer.changed(modifier) ? 2048 : 1024;
        }
        if ((i & 24576) == 0) {
            i2 |= gapComposer.changedInstance(composableLambdaImpl) ? 16384 : 8192;
        }
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 9363) != 9362)) {
            boolean z = rowDragState.isDragged;
            State animateFloatAsState = AnimateAsStateKt.animateFloatAsState(z ? 1.02f : 1.0f, null, "notificationRowDragScale", gapComposer, 3072, 22);
            float mo177toPx0680j_4 = z ? ((Density) gapComposer.consume(CompositionLocalsKt.LocalDensity)).mo177toPx0680j_4(12.0f) : 0.0f;
            Modifier alpha = ClipKt.alpha(modifier.then(SizeKt.FillWholeMaxWidth), rowDragState.alpha);
            boolean changed = gapComposer.changed(animateFloatAsState) | ((i2 & 14) == 4) | gapComposer.changed(mo177toPx0680j_4);
            Object rememberedValue = gapComposer.rememberedValue();
            if (changed || rememberedValue == Composer.Companion.Empty) {
                rememberedValue = new ThumbNode$$ExternalSyntheticLambda0(rowDragState, mo177toPx0680j_4, animateFloatAsState, i3);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            Modifier m132backgroundbw27NRU = ImageKt.m132backgroundbw27NRU(ColorKt.graphicsLayer(alpha, (Function1) rememberedValue).then(new ZIndexElement(z ? 1.0f : 0.0f)), ((ThemeColorScheme) gapComposer.consume(ThemeColorSchemeKt.LocalThemeColorScheme)).surface, ColorKt.RectangleShape);
            ((ThemeSpacings) gapComposer.consume(ThemeSpacingsKt.LocalThemeSpacings)).getClass();
            Modifier m222paddingqDBjuR0$default = OffsetKt.m222paddingqDBjuR0$default(m132backgroundbw27NRU, f, 0.0f, 0.0f, 0.0f, 10);
            final Function0 function0 = dragCallbacks.onDragStart;
            final Function1 function1 = dragCallbacks.onDrag;
            final Function0 function02 = dragCallbacks.onDragEnd;
            Modifier pointerInput = SuspendingPointerInputFilterKt.pointerInput(m222paddingqDBjuR0$default, Unit.INSTANCE, new PointerInputEventHandler() { // from class: com.fsck.k9.ui.settings.notificationactions.NotificationActionsSettingsScreenKt$immediateDragGesture$1
                @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                    AppBarKt$$ExternalSyntheticLambda0 appBarKt$$ExternalSyntheticLambda0 = new AppBarKt$$ExternalSyntheticLambda0(6, Function0.this);
                    Function0 function03 = function02;
                    return DragGestureDetectorKt.detectDragGestures(pointerInputScope, appBarKt$$ExternalSyntheticLambda0, new Handshake$$ExternalSyntheticLambda0(11, function03), new Handshake$$ExternalSyntheticLambda0(12, function03), new Updater$$ExternalSyntheticLambda0(9, function1), continuation);
                }
            });
            int i4 = ((i2 >> 3) & 7168) | 384;
            RowMeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(OffsetKt.f7Start, Alignment.Companion.CenterVertically, gapComposer, 48);
            long j = gapComposer.compositeKeyHashCode;
            int i5 = (int) (j ^ (j >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, pointerInput);
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
            Updater.m380setimpl(gapComposer, Integer.valueOf(i5), ComposeUiNode.Companion.SetCompositeKeyHash);
            Updater.m379reconcileimpl(gapComposer, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
            Updater.m380setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
            composableLambdaImpl.invoke(RowScopeInstance.INSTANCE, gapComposer, Integer.valueOf(((i4 >> 6) & 112) | 6));
            gapComposer.end(true);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new Function2() { // from class: com.fsck.k9.ui.settings.notificationactions.NotificationActionsSettingsScreenKt$$ExternalSyntheticLambda8
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    NotificationListItemKt.m947NotificationReorderRowEUb7tLY(RowDragState.this, f, dragCallbacks, modifier, composableLambdaImpl, (Composer) obj, Updater.updateChangedFlags(i | 1));
                    return Unit.INSTANCE;
                }
            };
        }
    }

    public static final String getKey(NotificationListItem notificationListItem) {
        notificationListItem.getClass();
        if (notificationListItem instanceof NotificationListItem.Action) {
            return "action:".concat(((NotificationListItem.Action) notificationListItem).action.token);
        }
        if (notificationListItem.equals(NotificationListItem.Cutoff.INSTANCE)) {
            return "cutoff";
        }
        UriKt$$ExternalSyntheticBUOutline0.m857m();
        return null;
    }
}
