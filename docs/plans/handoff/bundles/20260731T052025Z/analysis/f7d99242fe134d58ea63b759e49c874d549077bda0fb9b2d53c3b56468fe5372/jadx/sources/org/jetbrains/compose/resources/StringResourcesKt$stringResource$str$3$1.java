package org.jetbrains.compose.resources;

import androidx.activity.compose.ManagedActivityResultLauncher;
import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.runtime.MutableState;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.lifecycle.ViewModel;
import app.k9mail.feature.launcher.navigation.FeatureLauncherNavHostKt$$ExternalSyntheticLambda2;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.channels.ProducerScope;
import kotlinx.coroutines.flow.FlowCollector;
import net.thunderbird.core.android.account.LegacyAccountDto;
import net.thunderbird.core.ui.compose.designsystem.molecule.swipe.fork.DragEvent;
import net.thunderbird.core.ui.compose.designsystem.molecule.swipe.fork.DraggableNode;
import net.thunderbird.core.ui.setting.SettingValue;
import net.thunderbird.feature.account.settings.impl.ui.general.GeneralSettingsViewModel;
import net.thunderbird.feature.mail.folder.api.RemoteFolder;
import net.thunderbird.feature.mail.message.list.internal.ui.dialog.SetupArchiveFolderDialogViewModel;
import net.thunderbird.feature.mail.message.list.ui.MessageListContract$ViewModel;
import net.thunderbird.feature.mail.message.list.ui.component.DefaultMessageListScope;
import net.thunderbird.feature.mail.message.list.ui.dialog.SetupArchiveFolderDialogContract$State;
import net.thunderbird.feature.navigation.drawer.dropdown.domain.usecase.GetDisplayAccounts;
import net.thunderbird.feature.navigation.drawer.dropdown.domain.usecase.SyncAccount;
import net.thunderbird.feature.thundermail.internal.common.ui.ThundermailOAuthViewModel;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class StringResourcesKt$stringResource$str$3$1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public Object $resource;
    public final /* synthetic */ Object $resourceReader;
    public /* synthetic */ Object L$0;
    public int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ StringResourcesKt$stringResource$str$3$1(ViewModel viewModel, Continuation continuation, Object obj, Object obj2, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.L$0 = viewModel;
        this.$resource = obj;
        this.$resourceReader = obj2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        Object obj2 = this.$resourceReader;
        switch (i) {
            case 0:
                StringResourcesKt$stringResource$str$3$1 stringResourcesKt$stringResource$str$3$1 = new StringResourcesKt$stringResource$str$3$1((StringResource) this.$resource, (DefaultAndroidResourceReader) obj2, continuation, 0);
                stringResourcesKt$stringResource$str$3$1.L$0 = obj;
                return stringResourcesKt$stringResource$str$3$1;
            case 1:
                StringResourcesKt$stringResource$str$3$1 stringResourcesKt$stringResource$str$3$12 = new StringResourcesKt$stringResource$str$3$1((DraggableNode) this.$resource, (DragEvent.DragStopped) obj2, continuation, 1);
                stringResourcesKt$stringResource$str$3$12.L$0 = obj;
                return stringResourcesKt$stringResource$str$3$12;
            case 2:
                return new StringResourcesKt$stringResource$str$3$1((SettingValue.Text) this.L$0, (MutableState) this.$resource, (MutableState) obj2, continuation, 2);
            case 3:
                return new StringResourcesKt$stringResource$str$3$1((GeneralSettingsViewModel) this.L$0, continuation, (Function0) this.$resource, (ManagedActivityResultLauncher) obj2, 3);
            case 4:
                return new StringResourcesKt$stringResource$str$3$1((DefaultMessageListScope) this.L$0, (LazyListState) this.$resource, (MutableState) obj2, continuation, 4);
            case 5:
                return new StringResourcesKt$stringResource$str$3$1((LazyListState) this.L$0, (Function1) this.$resource, (MutableState) obj2, continuation, 5);
            case 6:
                return new StringResourcesKt$stringResource$str$3$1((SetupArchiveFolderDialogViewModel) this.L$0, (RemoteFolder) this.$resource, (SetupArchiveFolderDialogContract$State.ChooseArchiveFolder) obj2, continuation, 6);
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                return new StringResourcesKt$stringResource$str$3$1((MessageListContract$ViewModel) this.L$0, continuation, (Function2) this.$resource, (DefaultMessageListScope) obj2, 7);
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                return new StringResourcesKt$stringResource$str$3$1((ProducerScope) this.L$0, (GetDisplayAccounts) this.$resource, (LegacyAccountDto) obj2, continuation, 8);
            case 9:
                StringResourcesKt$stringResource$str$3$1 stringResourcesKt$stringResource$str$3$13 = new StringResourcesKt$stringResource$str$3$1((GetDisplayAccounts) this.$resource, (LegacyAccountDto) obj2, continuation, 9);
                stringResourcesKt$stringResource$str$3$13.L$0 = obj;
                return stringResourcesKt$stringResource$str$3$13;
            case 10:
                StringResourcesKt$stringResource$str$3$1 stringResourcesKt$stringResource$str$3$14 = new StringResourcesKt$stringResource$str$3$1((SyncAccount) this.$resource, (String) obj2, continuation, 10);
                stringResourcesKt$stringResource$str$3$14.L$0 = obj;
                return stringResourcesKt$stringResource$str$3$14;
            case 11:
                return new StringResourcesKt$stringResource$str$3$1((ThundermailOAuthViewModel) this.L$0, continuation, (ManagedActivityResultLauncher) this.$resource, (FeatureLauncherNavHostKt$$ExternalSyntheticLambda2) obj2, 11);
            default:
                StringResourcesKt$stringResource$str$3$1 stringResourcesKt$stringResource$str$3$15 = new StringResourcesKt$stringResource$str$3$1((ThundermailOAuthViewModel) obj2, continuation);
                stringResourcesKt$stringResource$str$3$15.L$0 = obj;
                return stringResourcesKt$stringResource$str$3$15;
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                return ((StringResourcesKt$stringResource$str$3$1) create((ResourceEnvironment) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 1:
                return ((StringResourcesKt$stringResource$str$3$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 2:
                return ((StringResourcesKt$stringResource$str$3$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 3:
                ((StringResourcesKt$stringResource$str$3$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
                return coroutineSingletons;
            case 4:
                return ((StringResourcesKt$stringResource$str$3$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 5:
                return ((StringResourcesKt$stringResource$str$3$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 6:
                return ((StringResourcesKt$stringResource$str$3$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                ((StringResourcesKt$stringResource$str$3$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
                return coroutineSingletons;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                return ((StringResourcesKt$stringResource$str$3$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 9:
                return ((StringResourcesKt$stringResource$str$3$1) create((ProducerScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 10:
                return ((StringResourcesKt$stringResource$str$3$1) create((ProducerScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 11:
                ((StringResourcesKt$stringResource$str$3$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
                return coroutineSingletons;
            default:
                return ((StringResourcesKt$stringResource$str$3$1) create((FlowCollector) obj, (Continuation) obj2)).invokeSuspend(unit);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0045, code lost:
    
        if (r2 == r7) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x00ff, code lost:
    
        if (((kotlinx.coroutines.channels.ProducerCoroutine) r2)._channel.send(r6, r18) == r7) goto L47;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r19) {
        /*
            Method dump skipped, instructions count: 858
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jetbrains.compose.resources.StringResourcesKt$stringResource$str$3$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ StringResourcesKt$stringResource$str$3$1(Object obj, Object obj2, Object obj3, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.L$0 = obj;
        this.$resource = obj2;
        this.$resourceReader = obj3;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ StringResourcesKt$stringResource$str$3$1(Object obj, Object obj2, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.$resource = obj;
        this.$resourceReader = obj2;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StringResourcesKt$stringResource$str$3$1(ThundermailOAuthViewModel thundermailOAuthViewModel, Continuation continuation) {
        super(2, continuation);
        this.$r8$classId = 12;
        this.$resourceReader = thundermailOAuthViewModel;
    }
}
