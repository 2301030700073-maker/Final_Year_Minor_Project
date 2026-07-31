package com.fsck.k9.ui.choosefolder;

import com.fsck.k9.preferences.DefaultGeneralSettingsManager;
import de.cketti.changelog.ChangeLog;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.FlowKt__LimitKt$drop$$inlined$unsafeFlow$1;
import kotlinx.coroutines.flow.FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1;
import kotlinx.coroutines.flow.SafeFlow;
import net.thunderbird.core.android.account.LegacyAccountDto;
import net.thunderbird.feature.changelog.internal.RecentChangesViewModel;
import net.thunderbird.feature.navigation.drawer.dropdown.domain.usecase.GetDisplayAccounts;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ChooseFolderViewModel$special$$inlined$flatMapLatest$1 extends SuspendLambda implements Function3 {
    public final /* synthetic */ int $r8$classId;
    public /* synthetic */ FlowCollector L$0;
    public /* synthetic */ Object L$1;
    public int label;
    public final /* synthetic */ Object this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ ChooseFolderViewModel$special$$inlined$flatMapLatest$1(Continuation continuation, Object obj, int i) {
        super(3, continuation);
        this.$r8$classId = i;
        this.this$0 = obj;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Object obj4 = this.this$0;
        FlowCollector flowCollector = (FlowCollector) obj;
        Continuation continuation = (Continuation) obj3;
        switch (i) {
            case 0:
                ChooseFolderViewModel$special$$inlined$flatMapLatest$1 chooseFolderViewModel$special$$inlined$flatMapLatest$1 = new ChooseFolderViewModel$special$$inlined$flatMapLatest$1(continuation, (ChooseFolderViewModel) obj4, 0);
                chooseFolderViewModel$special$$inlined$flatMapLatest$1.L$0 = flowCollector;
                chooseFolderViewModel$special$$inlined$flatMapLatest$1.L$1 = obj2;
                return chooseFolderViewModel$special$$inlined$flatMapLatest$1.invokeSuspend(unit);
            case 1:
                ChooseFolderViewModel$special$$inlined$flatMapLatest$1 chooseFolderViewModel$special$$inlined$flatMapLatest$12 = new ChooseFolderViewModel$special$$inlined$flatMapLatest$1(continuation, (RecentChangesViewModel) obj4, 1);
                chooseFolderViewModel$special$$inlined$flatMapLatest$12.L$0 = flowCollector;
                chooseFolderViewModel$special$$inlined$flatMapLatest$12.L$1 = obj2;
                return chooseFolderViewModel$special$$inlined$flatMapLatest$12.invokeSuspend(unit);
            default:
                ChooseFolderViewModel$special$$inlined$flatMapLatest$1 chooseFolderViewModel$special$$inlined$flatMapLatest$13 = new ChooseFolderViewModel$special$$inlined$flatMapLatest$1(continuation, (GetDisplayAccounts) obj4, 2);
                chooseFolderViewModel$special$$inlined$flatMapLatest$13.L$0 = flowCollector;
                chooseFolderViewModel$special$$inlined$flatMapLatest$13.L$1 = obj2;
                return chooseFolderViewModel$special$$inlined$flatMapLatest$13.invokeSuspend(unit);
        }
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Flow flowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1;
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Object obj2 = this.this$0;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        switch (i) {
            case 0:
                FlowCollector flowCollector = this.L$0;
                Object obj3 = this.L$1;
                int i2 = this.label;
                if (i2 != 0) {
                    if (i2 == 1) {
                        ResultKt.throwOnFailure(obj);
                        break;
                    } else {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                        break;
                    }
                } else {
                    ResultKt.throwOnFailure(obj);
                    DisplayMode displayMode = (DisplayMode) obj3;
                    Flow displayFoldersFlow = ((ChooseFolderViewModel) obj2).folderRepository.getDisplayFoldersFlow(displayMode.account, displayMode.showHiddenFolders);
                    this.L$0 = null;
                    this.L$1 = null;
                    this.label = 1;
                    if (FlowKt.emitAll(this, displayFoldersFlow, flowCollector) == coroutineSingletons) {
                        break;
                    }
                }
                break;
            case 1:
                FlowCollector flowCollector2 = this.L$0;
                Object obj4 = this.L$1;
                int i3 = this.label;
                if (i3 != 0) {
                    if (i3 == 1) {
                        ResultKt.throwOnFailure(obj);
                        break;
                    } else {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                        break;
                    }
                } else {
                    ResultKt.throwOnFailure(obj);
                    ChangeLog changeLog = (ChangeLog) obj4;
                    int i4 = changeLog.lastVersionCode;
                    int i5 = changeLog.currentVersionCode;
                    Flow safeFlow = (i4 >= i5 || changeLog.firstVersionCode == i5) ? new SafeFlow(6, Boolean.FALSE) : FlowKt.distinctUntilChanged(new FlowKt__LimitKt$drop$$inlined$unsafeFlow$1(((DefaultGeneralSettingsManager) ((RecentChangesViewModel) obj2).generalSettingsManager).generalSettings, 5));
                    this.L$0 = null;
                    this.L$1 = null;
                    this.label = 1;
                    if (FlowKt.emitAll(this, safeFlow, flowCollector2) == coroutineSingletons) {
                        break;
                    }
                }
                break;
            default:
                FlowCollector flowCollector3 = this.L$0;
                Object obj5 = this.L$1;
                int i6 = this.label;
                if (i6 != 0) {
                    if (i6 == 1) {
                        ResultKt.throwOnFailure(obj);
                        break;
                    } else {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                        break;
                    }
                } else {
                    ResultKt.throwOnFailure(obj);
                    List list = (List) obj5;
                    GetDisplayAccounts getDisplayAccounts = (GetDisplayAccounts) obj2;
                    if (getDisplayAccounts.featureFlagProvider.m1030providedj3aFNw("display_in_app_notifications").isDisabledOrUnavailable()) {
                        int mapCapacity = MapsKt__MapsKt.mapCapacity(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list, 10));
                        if (mapCapacity < 16) {
                            mapCapacity = 16;
                        }
                        LinkedHashMap linkedHashMap = new LinkedHashMap(mapCapacity);
                        for (Object obj6 : list) {
                            linkedHashMap.put(obj6, Boolean.FALSE);
                        }
                        flowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1 = new SafeFlow(6, linkedHashMap);
                    } else {
                        ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list, 10));
                        Iterator it = list.iterator();
                        while (it.hasNext()) {
                            arrayList.add(((LegacyAccountDto) it.next()).uuid);
                        }
                        flowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1 = new FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1(7, new FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1(6, getDisplayAccounts.notificationStream.notifications, arrayList), list);
                    }
                    this.L$0 = null;
                    this.L$1 = null;
                    this.label = 1;
                    if (FlowKt.emitAll(this, flowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1, flowCollector3) == coroutineSingletons) {
                        break;
                    }
                }
                break;
        }
        return coroutineSingletons;
    }
}
