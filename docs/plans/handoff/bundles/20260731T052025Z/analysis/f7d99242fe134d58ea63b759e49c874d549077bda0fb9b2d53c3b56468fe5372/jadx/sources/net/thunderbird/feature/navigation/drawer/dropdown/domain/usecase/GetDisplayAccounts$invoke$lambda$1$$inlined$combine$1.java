package net.thunderbird.feature.navigation.drawer.dropdown.domain.usecase;

import androidx.compose.ui.unit.IntOffsetKt;
import app.k9mail.legacy.message.controller.MessageCounts;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import net.thunderbird.core.android.account.LegacyAccountDto;
import net.thunderbird.feature.account.avatar.Avatar;
import net.thunderbird.feature.navigation.drawer.dropdown.domain.entity.DisplayAccount;
import net.thunderbird.feature.navigation.drawer.dropdown.domain.entity.MailDisplayAccount;
import net.thunderbird.feature.navigation.drawer.dropdown.domain.entity.UnifiedDisplayAccount;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class GetDisplayAccounts$invoke$lambda$1$$inlined$combine$1 implements Flow {
    public final /* synthetic */ List $accounts$inlined;
    public final /* synthetic */ Map $accountsMap$inlined;
    public final /* synthetic */ Flow[] $flowArray$inlined;
    public final /* synthetic */ boolean $showUnifiedAccount$inlined;
    public final /* synthetic */ GetDisplayAccounts this$0;

    /* renamed from: net.thunderbird.feature.navigation.drawer.dropdown.domain.usecase.GetDisplayAccounts$invoke$lambda$1$$inlined$combine$1$1, reason: invalid class name */
    public final class AnonymousClass1 extends ContinuationImpl {
        public int label;
        public /* synthetic */ Object result;

        public AnonymousClass1(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return GetDisplayAccounts$invoke$lambda$1$$inlined$combine$1.this.collect(null, this);
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: net.thunderbird.feature.navigation.drawer.dropdown.domain.usecase.GetDisplayAccounts$invoke$lambda$1$$inlined$combine$1$3, reason: invalid class name */
    public final class AnonymousClass3 extends SuspendLambda implements Function3 {
        public final /* synthetic */ List $accounts$inlined;
        public final /* synthetic */ Map $accountsMap$inlined;
        public final /* synthetic */ boolean $showUnifiedAccount$inlined;
        public /* synthetic */ FlowCollector L$0;
        public /* synthetic */ Object[] L$1;
        public int label;
        public final /* synthetic */ GetDisplayAccounts this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass3(Continuation continuation, boolean z, GetDisplayAccounts getDisplayAccounts, List list, Map map) {
            super(3, continuation);
            this.$showUnifiedAccount$inlined = z;
            this.this$0 = getDisplayAccounts;
            this.$accounts$inlined = list;
            this.$accountsMap$inlined = map;
        }

        @Override // kotlin.jvm.functions.Function3
        public final Object invoke(Object obj, Object obj2, Object obj3) {
            AnonymousClass3 anonymousClass3 = new AnonymousClass3((Continuation) obj3, this.$showUnifiedAccount$inlined, this.this$0, this.$accounts$inlined, this.$accountsMap$inlined);
            anonymousClass3.L$0 = (FlowCollector) obj;
            anonymousClass3.L$1 = (Object[]) obj2;
            return anonymousClass3.invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            GetDisplayAccounts getDisplayAccounts;
            boolean z;
            FlowCollector flowCollector = this.L$0;
            Object[] objArr = this.L$1;
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                MessageCounts[] messageCountsArr = (MessageCounts[]) objArr;
                ArrayList arrayList = new ArrayList(messageCountsArr.length);
                int length = messageCountsArr.length;
                int i2 = 0;
                int i3 = 0;
                while (true) {
                    getDisplayAccounts = this.this$0;
                    if (i2 >= length) {
                        break;
                    }
                    MessageCounts messageCounts = messageCountsArr[i2];
                    int i4 = i3 + 1;
                    LegacyAccountDto legacyAccountDto = (LegacyAccountDto) this.$accounts$inlined.get(i3);
                    arrayList.add(new MailDisplayAccount(legacyAccountDto.uuid, legacyAccountDto.getDisplayName(), legacyAccountDto.getEmail(), legacyAccountDto.getChipColor(), (Avatar) getDisplayAccounts.avatarMapper.toDomain(legacyAccountDto.getAvatar()), legacyAccountDto.getAutoExpandFolderId() != null, messageCounts.unread, messageCounts.starred, Intrinsics.areEqual(this.$accountsMap$inlined.get(legacyAccountDto), Boolean.TRUE)));
                    i2++;
                    i3 = i4;
                }
                if (this.$showUnifiedAccount$inlined) {
                    getDisplayAccounts.getClass();
                    Iterator it = arrayList.iterator();
                    int i5 = 0;
                    while (it.hasNext()) {
                        i5 += ((DisplayAccount) it.next()).getUnreadMessageCount();
                    }
                    Iterator it2 = arrayList.iterator();
                    int i6 = 0;
                    while (it2.hasNext()) {
                        i6 += ((DisplayAccount) it2.next()).getStarredMessageCount();
                    }
                    if (!arrayList.isEmpty()) {
                        Iterator it3 = arrayList.iterator();
                        while (it3.hasNext()) {
                            if (((DisplayAccount) it3.next()).getHasError()) {
                                z = true;
                                break;
                            }
                        }
                    }
                    z = false;
                    arrayList = CollectionsKt.plus((Collection) IntOffsetKt.listOf(new UnifiedDisplayAccount(i5, i6, z)), (Iterable) arrayList);
                }
                this.L$0 = null;
                this.L$1 = null;
                this.label = 1;
                Object emit = flowCollector.emit(arrayList, this);
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                if (emit == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i != 1) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    public GetDisplayAccounts$invoke$lambda$1$$inlined$combine$1(Flow[] flowArr, boolean z, GetDisplayAccounts getDisplayAccounts, List list, Map map) {
        this.$flowArray$inlined = flowArr;
        this.$showUnifiedAccount$inlined = z;
        this.this$0 = getDisplayAccounts;
        this.$accounts$inlined = list;
        this.$accountsMap$inlined = map;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x002c  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x001f  */
    @Override // kotlinx.coroutines.flow.Flow
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object collect(kotlinx.coroutines.flow.FlowCollector r10, kotlin.coroutines.Continuation r11) {
        /*
            r9 = this;
            boolean r0 = r11 instanceof net.thunderbird.feature.navigation.drawer.dropdown.domain.usecase.GetDisplayAccounts$invoke$lambda$1$$inlined$combine$1.AnonymousClass1
            if (r0 == 0) goto L13
            r0 = r11
            net.thunderbird.feature.navigation.drawer.dropdown.domain.usecase.GetDisplayAccounts$invoke$lambda$1$$inlined$combine$1$1 r0 = (net.thunderbird.feature.navigation.drawer.dropdown.domain.usecase.GetDisplayAccounts$invoke$lambda$1$$inlined$combine$1.AnonymousClass1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            net.thunderbird.feature.navigation.drawer.dropdown.domain.usecase.GetDisplayAccounts$invoke$lambda$1$$inlined$combine$1$1 r0 = new net.thunderbird.feature.navigation.drawer.dropdown.domain.usecase.GetDisplayAccounts$invoke$lambda$1$$inlined$combine$1$1
            r0.<init>(r11)
        L18:
            java.lang.Object r11 = r0.result
            int r1 = r0.label
            r2 = 1
            if (r1 == 0) goto L2c
            if (r1 != r2) goto L25
            kotlin.ResultKt.throwOnFailure(r11)
            goto L4f
        L25:
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r9)
            r9 = 0
            return r9
        L2c:
            kotlin.ResultKt.throwOnFailure(r11)
            androidx.work.impl.constraints.WorkConstraintsTracker$track$$inlined$combine$1$2 r11 = new androidx.work.impl.constraints.WorkConstraintsTracker$track$$inlined$combine$1$2
            kotlinx.coroutines.flow.Flow[] r1 = r9.$flowArray$inlined
            r11.<init>(r1, r2)
            net.thunderbird.feature.navigation.drawer.dropdown.domain.usecase.GetDisplayAccounts$invoke$lambda$1$$inlined$combine$1$3 r3 = new net.thunderbird.feature.navigation.drawer.dropdown.domain.usecase.GetDisplayAccounts$invoke$lambda$1$$inlined$combine$1$3
            java.util.List r7 = r9.$accounts$inlined
            java.util.Map r8 = r9.$accountsMap$inlined
            r4 = 0
            boolean r5 = r9.$showUnifiedAccount$inlined
            net.thunderbird.feature.navigation.drawer.dropdown.domain.usecase.GetDisplayAccounts r6 = r9.this$0
            r3.<init>(r4, r5, r6, r7, r8)
            r0.label = r2
            java.lang.Object r9 = kotlinx.coroutines.flow.internal.CombineKt.combineInternal(r0, r11, r3, r10, r1)
            kotlin.coroutines.intrinsics.CoroutineSingletons r10 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r9 != r10) goto L4f
            return r10
        L4f:
            kotlin.Unit r9 = kotlin.Unit.INSTANCE
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: net.thunderbird.feature.navigation.drawer.dropdown.domain.usecase.GetDisplayAccounts$invoke$lambda$1$$inlined$combine$1.collect(kotlinx.coroutines.flow.FlowCollector, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
