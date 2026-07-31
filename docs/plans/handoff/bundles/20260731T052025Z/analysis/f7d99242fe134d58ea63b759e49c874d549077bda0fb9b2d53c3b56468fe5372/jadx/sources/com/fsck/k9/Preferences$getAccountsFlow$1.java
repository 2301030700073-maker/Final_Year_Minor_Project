package com.fsck.k9;

import android.app.PendingIntent;
import android.content.Intent;
import android.net.Uri;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.runtime.MutableState;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.lifecycle.LiveDataScopeImpl;
import app.k9mail.feature.account.common.domain.entity.Account;
import app.k9mail.feature.settings.p000import.ui.PasswordPromptResult;
import app.k9mail.feature.settings.p000import.ui.SettingsImportViewModel;
import app.k9mail.legacy.di.DI$$ExternalSyntheticLambda0;
import com.fsck.k9.account.AccountRemover;
import com.fsck.k9.controller.push.PushController;
import com.fsck.k9.notification.NotificationActionService;
import com.fsck.k9.preferences.DefaultDrawerConfigManager;
import com.fsck.k9.ui.messagedetails.MessageDetailsViewModel;
import com.fsck.k9.ui.settings.SettingsViewModel;
import com.fsck.k9.ui.settings.account.AccountSettingsViewModel;
import com.fsck.k9.ui.settings.general.GeneralSettingsUiState;
import com.fsck.k9.ui.settings.general.GeneralSettingsViewModel;
import com.fsck.k9.ui.settings.notificationactions.NotificationActionsReorderController;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.collections.immutable.ImmutableList;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.channels.ProducerScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.internal.ChannelFlow;
import kotlinx.coroutines.flow.internal.ChannelFlowOperator;
import net.thunderbird.app.common.account.AccountCreator;
import net.thunderbird.core.android.account.LegacyAccountDto;
import net.thunderbird.core.ui.compose.designsystem.molecule.swipe.SwipeableRowState;
import net.thunderbird.core.ui.contract.mvi.BaseViewModel;
import net.thunderbird.feature.account.settings.impl.domain.AccountSettingsDomainContract$UpdateGeneralSettingCommand;
import net.thunderbird.feature.account.settings.impl.ui.fetchingMail.FetchingMailSettingsViewModel;
import net.thunderbird.feature.account.settings.impl.ui.general.GeneralSettingsContract$Event;
import net.thunderbird.feature.account.settings.impl.ui.readingMail.ReadingMailSettingsViewModel;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Preferences$getAccountsFlow$1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public /* synthetic */ Object L$0;
    public int label;
    public final /* synthetic */ Object this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ Preferences$getAccountsFlow$1(Object obj, Object obj2, int i, Continuation continuation, int i2) {
        super(2, continuation);
        this.$r8$classId = i2;
        this.L$0 = obj;
        this.this$0 = obj2;
        this.label = i;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        Object obj2 = this.this$0;
        switch (i) {
            case 0:
                Preferences$getAccountsFlow$1 preferences$getAccountsFlow$1 = new Preferences$getAccountsFlow$1((Preferences) obj2, continuation, 0);
                preferences$getAccountsFlow$1.L$0 = obj;
                return preferences$getAccountsFlow$1;
            case 1:
                return new Preferences$getAccountsFlow$1((PasswordPromptResult) this.L$0, (SettingsImportViewModel) obj2, continuation, 1);
            case 2:
                return new Preferences$getAccountsFlow$1((SettingsImportViewModel) this.L$0, (String) obj2, continuation, 2);
            case 3:
                return new Preferences$getAccountsFlow$1((AccountRemover) this.L$0, (String) obj2, continuation, 3);
            case 4:
                return new Preferences$getAccountsFlow$1((LegacyAccountDto) this.L$0, (PushController) obj2, continuation, 4);
            case 5:
                return new Preferences$getAccountsFlow$1((NotificationActionService) this.L$0, (Intent) obj2, this.label, continuation, 5);
            case 6:
                Preferences$getAccountsFlow$1 preferences$getAccountsFlow$12 = new Preferences$getAccountsFlow$1((DefaultDrawerConfigManager) obj2, continuation, 6);
                preferences$getAccountsFlow$12.L$0 = obj;
                return preferences$getAccountsFlow$12;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                return new Preferences$getAccountsFlow$1((Flow) this.L$0, (FlowCollector) obj2, continuation, 7);
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                Preferences$getAccountsFlow$1 preferences$getAccountsFlow$13 = new Preferences$getAccountsFlow$1((DI$$ExternalSyntheticLambda0) obj2, continuation, 8);
                preferences$getAccountsFlow$13.L$0 = obj;
                return preferences$getAccountsFlow$13;
            case 9:
                return new Preferences$getAccountsFlow$1((MessageDetailsViewModel) this.L$0, (PendingIntent) obj2, continuation, 9);
            case 10:
                return new Preferences$getAccountsFlow$1((SettingsViewModel) this.L$0, (LegacyAccountDto) obj2, this.label, continuation, 10);
            case 11:
                return new Preferences$getAccountsFlow$1((AccountSettingsViewModel) this.L$0, (String) obj2, continuation, 11);
            case BasicTextKt.ShiftMeta /* 12 */:
                return new Preferences$getAccountsFlow$1((AccountSettingsViewModel) this.L$0, (LegacyAccountDto) obj2, continuation, 12);
            case 13:
                return new Preferences$getAccountsFlow$1((GeneralSettingsViewModel) this.L$0, (Uri) obj2, continuation, 13);
            case 14:
                return new Preferences$getAccountsFlow$1((GeneralSettingsViewModel) this.L$0, (String) obj2, continuation, 14);
            case OffsetKt.Horizontal /* 15 */:
                return new Preferences$getAccountsFlow$1((GeneralSettingsViewModel) this.L$0, (GeneralSettingsUiState) obj2, continuation, 15);
            case 16:
                return new Preferences$getAccountsFlow$1((NotificationActionsReorderController) this.L$0, (ImmutableList) obj2, this.label, continuation, 16);
            case 17:
                return new Preferences$getAccountsFlow$1((Function1) this.L$0, (MutableState) obj2, continuation, 17);
            case 18:
                Preferences$getAccountsFlow$1 preferences$getAccountsFlow$14 = new Preferences$getAccountsFlow$1((ChannelFlow) obj2, continuation, 18);
                preferences$getAccountsFlow$14.L$0 = obj;
                return preferences$getAccountsFlow$14;
            case 19:
                Preferences$getAccountsFlow$1 preferences$getAccountsFlow$15 = new Preferences$getAccountsFlow$1((ChannelFlowOperator) obj2, continuation, 19);
                preferences$getAccountsFlow$15.L$0 = obj;
                return preferences$getAccountsFlow$15;
            case 20:
                Preferences$getAccountsFlow$1 preferences$getAccountsFlow$16 = new Preferences$getAccountsFlow$1((FlowCollector) obj2, continuation, 20);
                preferences$getAccountsFlow$16.L$0 = obj;
                return preferences$getAccountsFlow$16;
            case 21:
                return new Preferences$getAccountsFlow$1((AccountCreator) this.L$0, (Account) obj2, continuation, 21);
            case 22:
                return new Preferences$getAccountsFlow$1(obj2, this.L$0, continuation, 22, false);
            case 23:
                return new Preferences$getAccountsFlow$1(obj2, this.L$0, continuation, 23, false);
            case 24:
                return new Preferences$getAccountsFlow$1((SwipeableRowState) this.L$0, (Function1) obj2, continuation, 24);
            case 25:
                return new Preferences$getAccountsFlow$1(obj2, this.L$0, continuation, 25, false);
            case 26:
                return new Preferences$getAccountsFlow$1((FetchingMailSettingsViewModel) this.L$0, continuation, (Function0) obj2, 26);
            case 27:
                return new Preferences$getAccountsFlow$1((net.thunderbird.feature.account.settings.impl.ui.general.GeneralSettingsViewModel) this.L$0, (GeneralSettingsContract$Event.OnAvatarImagePicked) obj2, continuation, 27);
            case 28:
                return new Preferences$getAccountsFlow$1((net.thunderbird.feature.account.settings.impl.ui.general.GeneralSettingsViewModel) this.L$0, (AccountSettingsDomainContract$UpdateGeneralSettingCommand) obj2, continuation, 28);
            default:
                return new Preferences$getAccountsFlow$1((ReadingMailSettingsViewModel) this.L$0, continuation, (Function0) obj2, 29);
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                return ((Preferences$getAccountsFlow$1) create((ProducerScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 1:
                return ((Preferences$getAccountsFlow$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 2:
                return ((Preferences$getAccountsFlow$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 3:
                return ((Preferences$getAccountsFlow$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 4:
                return ((Preferences$getAccountsFlow$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 5:
                ((Preferences$getAccountsFlow$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
                return unit;
            case 6:
                return ((Preferences$getAccountsFlow$1) create((FlowCollector) obj, (Continuation) obj2)).invokeSuspend(unit);
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                return ((Preferences$getAccountsFlow$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                return ((Preferences$getAccountsFlow$1) create((LiveDataScopeImpl) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 9:
                return ((Preferences$getAccountsFlow$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 10:
                ((Preferences$getAccountsFlow$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
                return unit;
            case 11:
                return ((Preferences$getAccountsFlow$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case BasicTextKt.ShiftMeta /* 12 */:
                return ((Preferences$getAccountsFlow$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 13:
                return ((Preferences$getAccountsFlow$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 14:
                return ((Preferences$getAccountsFlow$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case OffsetKt.Horizontal /* 15 */:
                return ((Preferences$getAccountsFlow$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 16:
                ((Preferences$getAccountsFlow$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
                return unit;
            case 17:
                return ((Preferences$getAccountsFlow$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 18:
                return ((Preferences$getAccountsFlow$1) create((ProducerScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 19:
                return ((Preferences$getAccountsFlow$1) create((FlowCollector) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 20:
                return ((Preferences$getAccountsFlow$1) create(obj, (Continuation) obj2)).invokeSuspend(unit);
            case 21:
                return ((Preferences$getAccountsFlow$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 22:
                return ((Preferences$getAccountsFlow$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 23:
                return ((Preferences$getAccountsFlow$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 24:
                return ((Preferences$getAccountsFlow$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 25:
                return ((Preferences$getAccountsFlow$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 26:
                ((Preferences$getAccountsFlow$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
                return coroutineSingletons;
            case 27:
                return ((Preferences$getAccountsFlow$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 28:
                return ((Preferences$getAccountsFlow$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            default:
                ((Preferences$getAccountsFlow$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
                return coroutineSingletons;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:444:0x08cd, code lost:
    
        if (kotlin.ranges.RangesKt.awaitClose(r3, r7, r17) == r6) goto L396;
     */
    /* JADX WARN: Code restructure failed: missing block: B:446:?, code lost:
    
        return r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:448:0x08b1, code lost:
    
        if (((kotlinx.coroutines.channels.ProducerCoroutine) r3)._channel.send(r7, r17) == r6) goto L396;
     */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r18) {
        /*
            Method dump skipped, instructions count: 2348
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fsck.k9.Preferences$getAccountsFlow$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ Preferences$getAccountsFlow$1(Object obj, Object obj2, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.L$0 = obj;
        this.this$0 = obj2;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ Preferences$getAccountsFlow$1(Object obj, Object obj2, Continuation continuation, int i, boolean z) {
        super(2, continuation);
        this.$r8$classId = i;
        this.this$0 = obj;
        this.L$0 = obj2;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ Preferences$getAccountsFlow$1(Object obj, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.this$0 = obj;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ Preferences$getAccountsFlow$1(BaseViewModel baseViewModel, Continuation continuation, Function0 function0, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.L$0 = baseViewModel;
        this.this$0 = function0;
    }
}
