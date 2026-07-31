package net.thunderbird.feature.navigation.drawer.dropdown.ui;

import androidx.lifecycle.ViewModelKt;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.fsck.k9.preferences.DefaultDrawerConfigManager;
import com.skydoves.landscapist.ImageLoadKt$ImageLoad$1$1$1;
import java.util.Iterator;
import java.util.List;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.AbstractCollection;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.collections.immutable.ImmutableList;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.FlowKt__LimitKt$drop$$inlined$unsafeFlow$1;
import kotlinx.coroutines.flow.ReadonlyStateFlow;
import kotlinx.coroutines.flow.StateFlowImpl;
import net.thunderbird.core.ui.contract.mvi.BaseViewModel;
import net.thunderbird.feature.mail.folder.api.OutboxFolderManager$getOutboxFolderIdSync$1;
import net.thunderbird.feature.navigation.drawer.api.NavigationDrawerExternalContract$DrawerConfig;
import net.thunderbird.feature.navigation.drawer.dropdown.domain.entity.DisplayAccount;
import net.thunderbird.feature.navigation.drawer.dropdown.domain.entity.DisplayFolder;
import net.thunderbird.feature.navigation.drawer.dropdown.domain.entity.DisplayTreeFolder;
import net.thunderbird.feature.navigation.drawer.dropdown.domain.entity.MailDisplayAccount;
import net.thunderbird.feature.navigation.drawer.dropdown.domain.entity.MailDisplayFolder;
import net.thunderbird.feature.navigation.drawer.dropdown.domain.entity.UnifiedDisplayFolder;
import net.thunderbird.feature.navigation.drawer.dropdown.domain.usecase.GetDisplayAccounts;
import net.thunderbird.feature.navigation.drawer.dropdown.domain.usecase.GetDisplayFoldersForAccount;
import net.thunderbird.feature.navigation.drawer.dropdown.domain.usecase.GetDisplayTreeFolder;
import net.thunderbird.feature.navigation.drawer.dropdown.domain.usecase.GetDrawerConfig;
import net.thunderbird.feature.navigation.drawer.dropdown.domain.usecase.SyncAccount;
import net.thunderbird.feature.navigation.drawer.dropdown.domain.usecase.SyncAllAccounts;
import net.thunderbird.feature.navigation.drawer.dropdown.ui.DrawerContract$Effect;
import net.thunderbird.feature.navigation.drawer.dropdown.ui.DrawerContract$Event;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.Okio;
import org.jetbrains.compose.resources.StringResourcesKt$stringResource$str$3$1;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DrawerViewModel extends BaseViewModel {
    public final GetDisplayAccounts getDisplayAccounts;
    public final GetDisplayFoldersForAccount getDisplayFoldersForAccount;
    public final GetDisplayTreeFolder getDisplayTreeFolder;
    public final GetDrawerConfig getDrawerConfig;
    public final int maxNestingLevel;
    public final SyncAccount syncAccount;
    public final SyncAllAccounts syncAllAccounts;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: net.thunderbird.feature.navigation.drawer.dropdown.ui.DrawerViewModel$1, reason: invalid class name */
    public final class AnonymousClass1 extends SuspendLambda implements Function2 {
        public final /* synthetic */ int $r8$classId;
        public int label;
        public final /* synthetic */ DrawerViewModel this$0;

        /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
        /* renamed from: net.thunderbird.feature.navigation.drawer.dropdown.ui.DrawerViewModel$1$1, reason: invalid class name and collision with other inner class name */
        public final class C00041 extends SuspendLambda implements Function2 {
            public final /* synthetic */ int $r8$classId;
            public /* synthetic */ Object L$0;
            public final /* synthetic */ DrawerViewModel this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public /* synthetic */ C00041(int i, Continuation continuation, DrawerViewModel drawerViewModel) {
                super(2, continuation);
                this.$r8$classId = i;
                this.this$0 = drawerViewModel;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                int i = this.$r8$classId;
                DrawerViewModel drawerViewModel = this.this$0;
                switch (i) {
                    case 0:
                        C00041 c00041 = new C00041(0, continuation, drawerViewModel);
                        c00041.L$0 = obj;
                        return c00041;
                    default:
                        C00041 c000412 = new C00041(1, continuation, drawerViewModel);
                        c000412.L$0 = obj;
                        return c000412;
                }
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                int i = this.$r8$classId;
                Unit unit = Unit.INSTANCE;
                switch (i) {
                    case 0:
                        ((C00041) create((NavigationDrawerExternalContract$DrawerConfig) obj, (Continuation) obj2)).invokeSuspend(unit);
                        break;
                    default:
                        ((C00041) create((List) obj, (Continuation) obj2)).invokeSuspend(unit);
                        break;
                }
                return unit;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                Object value;
                Object obj2;
                Object value2;
                DrawerContract$State drawerContract$State;
                int i = this.$r8$classId;
                Unit unit = Unit.INSTANCE;
                DrawerViewModel drawerViewModel = this.this$0;
                Object obj3 = this.L$0;
                switch (i) {
                    case 0:
                        NavigationDrawerExternalContract$DrawerConfig navigationDrawerExternalContract$DrawerConfig = (NavigationDrawerExternalContract$DrawerConfig) obj3;
                        ResultKt.throwOnFailure(obj);
                        StateFlowImpl stateFlowImpl = drawerViewModel._state;
                        do {
                            value = stateFlowImpl.getValue();
                        } while (!stateFlowImpl.compareAndSet(value, DrawerContract$State.copy$default((DrawerContract$State) value, navigationDrawerExternalContract$DrawerConfig, false, null, null, null, null, null, null, false, false, 1022)));
                    default:
                        List list = (List) obj3;
                        ResultKt.throwOnFailure(obj);
                        Iterator it = list.iterator();
                        while (true) {
                            if (it.hasNext()) {
                                obj2 = it.next();
                                if (Intrinsics.areEqual(((DisplayAccount) obj2).getId(), ((DrawerContract$State) drawerViewModel.state.$$delegate_0.getValue()).selectedAccountId)) {
                                }
                            } else {
                                obj2 = null;
                            }
                        }
                        DisplayAccount displayAccount = (DisplayAccount) obj2;
                        if (displayAccount == null) {
                            displayAccount = (DisplayAccount) CollectionsKt.firstOrNull(list);
                        }
                        StateFlowImpl stateFlowImpl2 = drawerViewModel._state;
                        do {
                            value2 = stateFlowImpl2.getValue();
                            drawerContract$State = (DrawerContract$State) value2;
                            drawerContract$State.getClass();
                        } while (!stateFlowImpl2.compareAndSet(value2, DrawerContract$State.copy$default(drawerContract$State, null, false, Okio.toImmutableList(list), displayAccount != null ? displayAccount.getId() : null, null, null, null, null, false, false, 1011)));
                }
                return unit;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ AnonymousClass1(int i, Continuation continuation, DrawerViewModel drawerViewModel) {
            super(2, continuation);
            this.$r8$classId = i;
            this.this$0 = drawerViewModel;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            int i = this.$r8$classId;
            DrawerViewModel drawerViewModel = this.this$0;
            switch (i) {
                case 0:
                    return new AnonymousClass1(0, continuation, drawerViewModel);
                case 1:
                    return new AnonymousClass1(1, continuation, drawerViewModel);
                case 2:
                    return new AnonymousClass1(2, continuation, drawerViewModel);
                case 3:
                    return new AnonymousClass1(3, continuation, drawerViewModel);
                case 4:
                    return new AnonymousClass1(4, continuation, drawerViewModel);
                case 5:
                    return new AnonymousClass1(5, continuation, drawerViewModel);
                case 6:
                    return new AnonymousClass1(6, continuation, drawerViewModel);
                default:
                    return new AnonymousClass1(7, continuation, drawerViewModel);
            }
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            int i = this.$r8$classId;
            Unit unit = Unit.INSTANCE;
            CoroutineScope coroutineScope = (CoroutineScope) obj;
            Continuation continuation = (Continuation) obj2;
            switch (i) {
            }
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(unit);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object value;
            Object value2;
            Object value3;
            Object value4;
            Object value5;
            int i = this.$r8$classId;
            int i2 = 0;
            DrawerContract$Effect.CloseDrawer closeDrawer = DrawerContract$Effect.CloseDrawer.INSTANCE;
            Unit unit = Unit.INSTANCE;
            DrawerViewModel drawerViewModel = this.this$0;
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i3 = 1;
            Continuation continuation = null;
            switch (i) {
                case 0:
                    int i4 = this.label;
                    if (i4 == 0) {
                        ResultKt.throwOnFailure(obj);
                        ReadonlyStateFlow readonlyStateFlow = ((DefaultDrawerConfigManager) drawerViewModel.getDrawerConfig.configLoader.drawerConfigManager).drawerConfig;
                        C00041 c00041 = new C00041(i2, continuation, drawerViewModel);
                        this.label = 1;
                        if (FlowKt.collectLatest(readonlyStateFlow, c00041, this) == coroutineSingletons) {
                            break;
                        }
                    } else if (i4 != 1) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                        break;
                    } else {
                        ResultKt.throwOnFailure(obj);
                        break;
                    }
                    break;
                case 1:
                    int i5 = this.label;
                    if (i5 == 0) {
                        ResultKt.throwOnFailure(obj);
                        this.label = 1;
                        if (FlowKt.collectLatest(FlowKt.transformLatest(FlowKt.distinctUntilChanged(new FlowKt__LimitKt$drop$$inlined$unsafeFlow$1(drawerViewModel.state, 7)), new DrawerViewModel$loadFolders$$inlined$flatMapLatest$1(i3, continuation, drawerViewModel)), new C00041(i3, continuation, drawerViewModel), this) == coroutineSingletons) {
                            break;
                        }
                    } else if (i5 != 1) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                        break;
                    } else {
                        ResultKt.throwOnFailure(obj);
                        break;
                    }
                    break;
                case 2:
                    int i6 = this.label;
                    if (i6 == 0) {
                        ResultKt.throwOnFailure(obj);
                        this.label = 1;
                        if (FlowKt.transformLatest(FlowKt.distinctUntilChanged(new FlowKt__LimitKt$drop$$inlined$unsafeFlow$1(new FlowKt__LimitKt$drop$$inlined$unsafeFlow$1(drawerViewModel.state, 8), 3)), new DrawerViewModel$loadFolders$$inlined$flatMapLatest$1(i2, continuation, drawerViewModel)).collect(new ImageLoadKt$ImageLoad$1$1$1(13, drawerViewModel), this) == coroutineSingletons) {
                            break;
                        }
                    } else if (i6 != 1) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                        break;
                    } else {
                        ResultKt.throwOnFailure(obj);
                        break;
                    }
                    break;
                case 3:
                    int i7 = this.label;
                    if (i7 == 0) {
                        ResultKt.throwOnFailure(obj);
                        this.label = 1;
                        if (JobKt.delay(150L, this) == coroutineSingletons) {
                            break;
                        }
                    } else if (i7 != 1) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                        break;
                    } else {
                        ResultKt.throwOnFailure(obj);
                    }
                    StateFlowImpl stateFlowImpl = drawerViewModel._state;
                    do {
                        value = stateFlowImpl.getValue();
                    } while (!stateFlowImpl.compareAndSet(value, DrawerContract$State.copy$default((DrawerContract$State) value, null, !r11.showAccountSelector, null, null, null, null, null, null, !r11.showAccountSelection, false, 765)));
                case 4:
                    StateFlowImpl stateFlowImpl2 = drawerViewModel._state;
                    int i8 = this.label;
                    if (i8 == 0) {
                        ResultKt.throwOnFailure(obj);
                        do {
                            value2 = stateFlowImpl2.getValue();
                        } while (!stateFlowImpl2.compareAndSet(value2, DrawerContract$State.copy$default((DrawerContract$State) value2, null, false, null, null, null, null, null, null, false, true, 511)));
                        String str = ((DrawerContract$State) drawerViewModel.state.$$delegate_0.getValue()).selectedAccountId;
                        if (str != null) {
                            SyncAccount syncAccount = drawerViewModel.syncAccount;
                            syncAccount.getClass();
                            Flow flowOn = FlowKt.flowOn(FlowKt.callbackFlow(new StringResourcesKt$stringResource$str$3$1(syncAccount, str, continuation, 10)), syncAccount.coroutineContext);
                            this.label = 1;
                            if (FlowKt.collect(flowOn, this) == coroutineSingletons) {
                                break;
                            }
                        }
                    } else if (i8 != 1) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                        break;
                    } else {
                        ResultKt.throwOnFailure(obj);
                    }
                    do {
                        value3 = stateFlowImpl2.getValue();
                    } while (!stateFlowImpl2.compareAndSet(value3, DrawerContract$State.copy$default((DrawerContract$State) value3, null, false, null, null, null, null, null, null, false, false, 511)));
                case 5:
                    StateFlowImpl stateFlowImpl3 = drawerViewModel._state;
                    int i9 = this.label;
                    if (i9 == 0) {
                        ResultKt.throwOnFailure(obj);
                        do {
                            value4 = stateFlowImpl3.getValue();
                        } while (!stateFlowImpl3.compareAndSet(value4, DrawerContract$State.copy$default((DrawerContract$State) value4, null, false, null, null, null, null, null, null, false, true, 511)));
                        SyncAllAccounts syncAllAccounts = drawerViewModel.syncAllAccounts;
                        syncAllAccounts.getClass();
                        Flow flowOn2 = FlowKt.flowOn(FlowKt.callbackFlow(new OutboxFolderManager$getOutboxFolderIdSync$1(syncAllAccounts, continuation, 11)), syncAllAccounts.coroutineContext);
                        this.label = 1;
                        if (FlowKt.collect(flowOn2, this) == coroutineSingletons) {
                            break;
                        }
                    } else if (i9 != 1) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                        break;
                    } else {
                        ResultKt.throwOnFailure(obj);
                    }
                    do {
                        value5 = stateFlowImpl3.getValue();
                    } while (!stateFlowImpl3.compareAndSet(value5, DrawerContract$State.copy$default((DrawerContract$State) value5, null, false, null, null, null, null, null, null, false, false, 511)));
                case 6:
                    int i10 = this.label;
                    if (i10 == 0) {
                        ResultKt.throwOnFailure(obj);
                        this.label = 1;
                        if (JobKt.delay(250L, this) == coroutineSingletons) {
                            break;
                        }
                    } else if (i10 != 1) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                        break;
                    } else {
                        ResultKt.throwOnFailure(obj);
                    }
                    drawerViewModel.emitEffect(closeDrawer);
                    break;
                default:
                    int i11 = this.label;
                    if (i11 == 0) {
                        ResultKt.throwOnFailure(obj);
                        this.label = 1;
                        if (JobKt.delay(250L, this) == coroutineSingletons) {
                            break;
                        }
                    } else if (i11 != 1) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                        break;
                    } else {
                        ResultKt.throwOnFailure(obj);
                    }
                    drawerViewModel.emitEffect(closeDrawer);
                    break;
            }
            return unit;
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public DrawerViewModel(net.thunderbird.feature.navigation.drawer.dropdown.domain.usecase.GetDrawerConfig r13, net.thunderbird.feature.navigation.drawer.dropdown.domain.usecase.GetDisplayAccounts r14, net.thunderbird.feature.navigation.drawer.dropdown.domain.usecase.GetDisplayFoldersForAccount r15, net.thunderbird.feature.navigation.drawer.dropdown.domain.usecase.GetDisplayTreeFolder r16, net.thunderbird.feature.navigation.drawer.dropdown.domain.usecase.SyncAccount r17, net.thunderbird.feature.navigation.drawer.dropdown.domain.usecase.SyncAllAccounts r18) {
        /*
            r12 = this;
            net.thunderbird.feature.navigation.drawer.dropdown.ui.DrawerContract$State r0 = new net.thunderbird.feature.navigation.drawer.dropdown.ui.DrawerContract$State
            net.thunderbird.feature.navigation.drawer.api.NavigationDrawerExternalContract$DrawerConfig r1 = new net.thunderbird.feature.navigation.drawer.api.NavigationDrawerExternalContract$DrawerConfig
            r11 = 0
            r1.<init>(r11, r11, r11)
            net.thunderbird.feature.navigation.drawer.dropdown.domain.entity.DisplayTreeFolder r2 = new net.thunderbird.feature.navigation.drawer.dropdown.domain.entity.DisplayTreeFolder
            r5 = 0
            r6 = 0
            r3 = 0
            r4 = 0
            kotlinx.collections.immutable.implementations.immutableList.SmallPersistentVector r7 = kotlinx.collections.immutable.implementations.immutableList.SmallPersistentVector.EMPTY
            r2.<init>(r3, r4, r5, r6, r7)
            r3 = r7
            r9 = 0
            r10 = 0
            r5 = r2
            r2 = 1
            r7 = 0
            r8 = 0
            r6 = r3
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10)
            r12.<init>(r0)
            r12.getDrawerConfig = r13
            r12.getDisplayAccounts = r14
            r12.getDisplayFoldersForAccount = r15
            r13 = r16
            r12.getDisplayTreeFolder = r13
            r13 = r17
            r12.syncAccount = r13
            r13 = r18
            r12.syncAllAccounts = r13
            r13 = 2
            r12.maxNestingLevel = r13
            androidx.lifecycle.viewmodel.internal.CloseableCoroutineScope r14 = androidx.lifecycle.ViewModelKt.getViewModelScope(r12)
            net.thunderbird.feature.navigation.drawer.dropdown.ui.DrawerViewModel$1 r15 = new net.thunderbird.feature.navigation.drawer.dropdown.ui.DrawerViewModel$1
            r0 = 0
            r15.<init>(r11, r0, r12)
            r1 = 3
            kotlinx.coroutines.JobKt.launch$default(r14, r0, r0, r15, r1)
            androidx.lifecycle.viewmodel.internal.CloseableCoroutineScope r14 = androidx.lifecycle.ViewModelKt.getViewModelScope(r12)
            net.thunderbird.feature.navigation.drawer.dropdown.ui.DrawerViewModel$1 r15 = new net.thunderbird.feature.navigation.drawer.dropdown.ui.DrawerViewModel$1
            r15.<init>(r2, r0, r12)
            kotlinx.coroutines.JobKt.launch$default(r14, r0, r0, r15, r1)
            androidx.lifecycle.viewmodel.internal.CloseableCoroutineScope r14 = androidx.lifecycle.ViewModelKt.getViewModelScope(r12)
            net.thunderbird.feature.navigation.drawer.dropdown.ui.DrawerViewModel$1 r15 = new net.thunderbird.feature.navigation.drawer.dropdown.ui.DrawerViewModel$1
            r15.<init>(r13, r0, r12)
            kotlinx.coroutines.JobKt.launch$default(r14, r0, r0, r15, r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: net.thunderbird.feature.navigation.drawer.dropdown.ui.DrawerViewModel.<init>(net.thunderbird.feature.navigation.drawer.dropdown.domain.usecase.GetDrawerConfig, net.thunderbird.feature.navigation.drawer.dropdown.domain.usecase.GetDisplayAccounts, net.thunderbird.feature.navigation.drawer.dropdown.domain.usecase.GetDisplayFoldersForAccount, net.thunderbird.feature.navigation.drawer.dropdown.domain.usecase.GetDisplayTreeFolder, net.thunderbird.feature.navigation.drawer.dropdown.domain.usecase.SyncAccount, net.thunderbird.feature.navigation.drawer.dropdown.domain.usecase.SyncAllAccounts):void");
    }

    public static DisplayFolder findFolderById(DisplayTreeFolder displayTreeFolder, String str) {
        if (str != null) {
            DisplayFolder displayFolder = displayTreeFolder.displayFolder;
            if (Intrinsics.areEqual(displayFolder != null ? displayFolder.getId() : null, str)) {
                return displayTreeFolder.displayFolder;
            }
            Iterator it = displayTreeFolder.children.iterator();
            while (it.hasNext()) {
                DisplayFolder findFolderById = findFolderById((DisplayTreeFolder) it.next(), str);
                if (findFolderById != null) {
                    return findFolderById;
                }
            }
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // net.thunderbird.core.ui.contract.mvi.UnidirectionalViewModel
    public final void event(Object obj) {
        DrawerContract$Event drawerContract$Event = (DrawerContract$Event) obj;
        drawerContract$Event.getClass();
        boolean z = drawerContract$Event instanceof DrawerContract$Event.SelectAccount;
        int i = 3;
        ReadonlyStateFlow readonlyStateFlow = this.state;
        Object[] objArr = 0;
        Object[] objArr2 = 0;
        Object[] objArr3 = 0;
        Object[] objArr4 = 0;
        Object[] objArr5 = 0;
        if (z) {
            String str = ((DrawerContract$Event.SelectAccount) drawerContract$Event).accountId;
            if (Intrinsics.areEqual(str, ((DrawerContract$State) readonlyStateFlow.$$delegate_0.getValue()).selectedAccountId)) {
                return;
            }
            JobKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new OutboxFolderManager$getOutboxFolderIdSync$1((Object) this, (Object) str, (Continuation) (objArr5 == true ? 1 : 0), 12), 3);
            return;
        }
        if (drawerContract$Event instanceof DrawerContract$Event.SelectFolder) {
            selectFolder(((DrawerContract$Event.SelectFolder) drawerContract$Event).folderId);
            return;
        }
        if (drawerContract$Event instanceof DrawerContract$Event.OnAccountClick) {
            openAccount(((DrawerContract$Event.OnAccountClick) drawerContract$Event).account);
            return;
        }
        if (drawerContract$Event instanceof DrawerContract$Event.OnFolderClick) {
            DisplayFolder displayFolder = ((DrawerContract$Event.OnFolderClick) drawerContract$Event).folder;
            selectFolder(displayFolder.getId());
            if (displayFolder instanceof MailDisplayFolder) {
                MailDisplayFolder mailDisplayFolder = (MailDisplayFolder) displayFolder;
                String str2 = mailDisplayFolder.accountId;
                if (str2 != null) {
                    emitEffect(new DrawerContract$Effect.OpenFolder(mailDisplayFolder.folder.id, str2));
                }
            } else if (displayFolder instanceof UnifiedDisplayFolder) {
                emitEffect(DrawerContract$Effect.OpenUnifiedFolder.INSTANCE);
            }
            JobKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new AnonymousClass1(7, objArr4 == true ? 1 : 0, this), 3);
            return;
        }
        if (drawerContract$Event instanceof DrawerContract$Event.OnAccountViewClick) {
            ImmutableList immutableList = ((DrawerContract$State) readonlyStateFlow.$$delegate_0.getValue()).accounts;
            int indexOf = immutableList.indexOf(((DrawerContract$Event.OnAccountViewClick) drawerContract$Event).account);
            openAccount(indexOf != -1 ? indexOf == ((AbstractCollection) immutableList).getSize() + (-1) ? (DisplayAccount) immutableList.get(0) : (DisplayAccount) immutableList.get(indexOf + 1) : null);
            return;
        }
        if (drawerContract$Event.equals(DrawerContract$Event.OnAccountSelectorClick.INSTANCE)) {
            JobKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new AnonymousClass1(i, objArr3 == true ? 1 : 0, this), 3);
            return;
        }
        if (drawerContract$Event.equals(DrawerContract$Event.OnManageFoldersClick.INSTANCE)) {
            emitEffect(DrawerContract$Effect.OpenManageFolders.INSTANCE);
            return;
        }
        if (drawerContract$Event.equals(DrawerContract$Event.OnSettingsClick.INSTANCE)) {
            emitEffect(DrawerContract$Effect.OpenSettings.INSTANCE);
            return;
        }
        if (drawerContract$Event.equals(DrawerContract$Event.OnSyncAccount.INSTANCE)) {
            if (((DrawerContract$State) readonlyStateFlow.$$delegate_0.getValue()).isLoading || ((DrawerContract$State) readonlyStateFlow.$$delegate_0.getValue()).selectedAccountId == null) {
                return;
            }
            JobKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new AnonymousClass1(4, objArr2 == true ? 1 : 0, this), 3);
            return;
        }
        if (drawerContract$Event.equals(DrawerContract$Event.OnSyncAllAccounts.INSTANCE)) {
            if (((DrawerContract$State) readonlyStateFlow.$$delegate_0.getValue()).isLoading) {
                return;
            }
            JobKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new AnonymousClass1(5, objArr == true ? 1 : 0, this), 3);
        } else if (drawerContract$Event.equals(DrawerContract$Event.OnAddAccountClick.INSTANCE)) {
            emitEffect(DrawerContract$Effect.OpenAddAccount.INSTANCE);
        } else {
            UriKt$$ExternalSyntheticBUOutline0.m857m();
        }
    }

    public final void openAccount(DisplayAccount displayAccount) {
        if (displayAccount != null) {
            emitEffect(new DrawerContract$Effect.OpenAccount(displayAccount.getId()));
            if ((displayAccount instanceof MailDisplayAccount) && ((MailDisplayAccount) displayAccount).hasAutoExpandFolder) {
                JobKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new AnonymousClass1(6, null, this), 3);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void selectFolder(String str) {
        DisplayFolder displayFolder = null;
        if (str != null) {
            ReadonlyStateFlow readonlyStateFlow = this.state;
            Iterator<E> it = ((DrawerContract$State) readonlyStateFlow.$$delegate_0.getValue()).folders.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Object next = it.next();
                if (Intrinsics.areEqual(((DisplayFolder) next).getId(), str)) {
                    displayFolder = next;
                    break;
                }
            }
            displayFolder = displayFolder;
            if (displayFolder == null) {
                displayFolder = findFolderById(((DrawerContract$State) readonlyStateFlow.$$delegate_0.getValue()).rootFolder, str);
            }
        }
        DisplayFolder displayFolder2 = displayFolder;
        while (true) {
            StateFlowImpl stateFlowImpl = this._state;
            Object value = stateFlowImpl.getValue();
            DrawerContract$State drawerContract$State = (DrawerContract$State) value;
            drawerContract$State.getClass();
            String str2 = str;
            if (stateFlowImpl.compareAndSet(value, DrawerContract$State.copy$default(drawerContract$State, null, false, null, null, null, null, str2, displayFolder2, false, false, 831))) {
                return;
            } else {
                str = str2;
            }
        }
    }
}
