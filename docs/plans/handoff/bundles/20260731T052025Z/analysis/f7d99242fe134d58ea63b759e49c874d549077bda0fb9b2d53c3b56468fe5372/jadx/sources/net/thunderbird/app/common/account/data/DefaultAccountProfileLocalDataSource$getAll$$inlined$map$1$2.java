package net.thunderbird.app.common.account.data;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.flow.FlowCollector;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DefaultAccountProfileLocalDataSource$getAll$$inlined$map$1$2 implements FlowCollector {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ FlowCollector $this_unsafeFlow;
    public final /* synthetic */ DefaultAccountProfileLocalDataSource this$0;

    /* renamed from: net.thunderbird.app.common.account.data.DefaultAccountProfileLocalDataSource$getAll$$inlined$map$1$2$1, reason: invalid class name */
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
            return DefaultAccountProfileLocalDataSource$getAll$$inlined$map$1$2.this.emit(null, this);
        }
    }

    public /* synthetic */ DefaultAccountProfileLocalDataSource$getAll$$inlined$map$1$2(FlowCollector flowCollector, DefaultAccountProfileLocalDataSource defaultAccountProfileLocalDataSource, int i) {
        this.$r8$classId = i;
        this.$this_unsafeFlow = flowCollector;
        this.this$0 = defaultAccountProfileLocalDataSource;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x002f  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x008b  */
    @Override // kotlinx.coroutines.flow.FlowCollector
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object emit(java.lang.Object r12, kotlin.coroutines.Continuation r13) {
        /*
            r11 = this;
            int r0 = r11.$r8$classId
            kotlin.Unit r1 = kotlin.Unit.INSTANCE
            net.thunderbird.app.common.account.data.DefaultAccountProfileLocalDataSource r2 = r11.this$0
            kotlinx.coroutines.flow.FlowCollector r3 = r11.$this_unsafeFlow
            java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
            kotlin.coroutines.intrinsics.CoroutineSingletons r5 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            r6 = -2147483648(0xffffffff80000000, float:-0.0)
            r7 = 1
            r8 = 0
            switch(r0) {
                case 0: goto L64;
                default: goto L13;
            }
        L13:
            boolean r0 = r13 instanceof net.thunderbird.app.common.account.data.DefaultAccountProfileLocalDataSource$getById$$inlined$map$1$2$1
            if (r0 == 0) goto L24
            r0 = r13
            net.thunderbird.app.common.account.data.DefaultAccountProfileLocalDataSource$getById$$inlined$map$1$2$1 r0 = (net.thunderbird.app.common.account.data.DefaultAccountProfileLocalDataSource$getById$$inlined$map$1$2$1) r0
            int r9 = r0.label
            r10 = r9 & r6
            if (r10 == 0) goto L24
            int r9 = r9 - r6
            r0.label = r9
            goto L29
        L24:
            net.thunderbird.app.common.account.data.DefaultAccountProfileLocalDataSource$getById$$inlined$map$1$2$1 r0 = new net.thunderbird.app.common.account.data.DefaultAccountProfileLocalDataSource$getById$$inlined$map$1$2$1
            r0.<init>(r11, r13)
        L29:
            java.lang.Object r11 = r0.result
            int r13 = r0.label
            if (r13 == 0) goto L3a
            if (r13 != r7) goto L35
            kotlin.ResultKt.throwOnFailure(r11)
            goto L63
        L35:
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r4)
            r1 = r8
            goto L63
        L3a:
            kotlin.ResultKt.throwOnFailure(r11)
            net.thunderbird.core.android.account.LegacyAccount r12 = (net.thunderbird.core.android.account.LegacyAccount) r12
            if (r12 == 0) goto L5a
            net.thunderbird.feature.account.storage.legacy.mapper.DefaultAccountProfileDataMapper r11 = r2.dataMapper
            net.thunderbird.feature.account.storage.profile.ProfileDto r12 = r12.profile
            net.thunderbird.feature.account.profile.AccountProfile r8 = new net.thunderbird.feature.account.profile.AccountProfile
            net.thunderbird.feature.account.AccountId r13 = r12.id
            java.lang.String r2 = r12.name
            int r4 = r12.color
            net.thunderbird.feature.account.storage.legacy.mapper.DefaultAvatarDataMapper r11 = r11.avatarMapper
            net.thunderbird.feature.account.storage.profile.AvatarDto r12 = r12.avatar
            java.lang.Object r11 = r11.toDomain(r12)
            net.thunderbird.feature.account.avatar.Avatar r11 = (net.thunderbird.feature.account.avatar.Avatar) r11
            r8.<init>(r13, r2, r4, r11)
        L5a:
            r0.label = r7
            java.lang.Object r11 = r3.emit(r8, r0)
            if (r11 != r5) goto L63
            r1 = r5
        L63:
            return r1
        L64:
            boolean r0 = r13 instanceof net.thunderbird.app.common.account.data.DefaultAccountProfileLocalDataSource$getAll$$inlined$map$1$2.AnonymousClass1
            if (r0 == 0) goto L75
            r0 = r13
            net.thunderbird.app.common.account.data.DefaultAccountProfileLocalDataSource$getAll$$inlined$map$1$2$1 r0 = (net.thunderbird.app.common.account.data.DefaultAccountProfileLocalDataSource$getAll$$inlined$map$1$2.AnonymousClass1) r0
            int r9 = r0.label
            r10 = r9 & r6
            if (r10 == 0) goto L75
            int r9 = r9 - r6
            r0.label = r9
            goto L7a
        L75:
            net.thunderbird.app.common.account.data.DefaultAccountProfileLocalDataSource$getAll$$inlined$map$1$2$1 r0 = new net.thunderbird.app.common.account.data.DefaultAccountProfileLocalDataSource$getAll$$inlined$map$1$2$1
            r0.<init>(r13)
        L7a:
            java.lang.Object r11 = r0.result
            int r13 = r0.label
            if (r13 == 0) goto L8b
            if (r13 != r7) goto L86
            kotlin.ResultKt.throwOnFailure(r11)
            goto Ld1
        L86:
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r4)
            r1 = r8
            goto Ld1
        L8b:
            kotlin.ResultKt.throwOnFailure(r11)
            java.util.List r12 = (java.util.List) r12
            java.util.ArrayList r11 = new java.util.ArrayList
            r13 = 10
            int r13 = kotlin.collections.CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(r12, r13)
            r11.<init>(r13)
            java.util.Iterator r12 = r12.iterator()
        L9f:
            boolean r13 = r12.hasNext()
            if (r13 == 0) goto Lc8
            java.lang.Object r13 = r12.next()
            net.thunderbird.core.android.account.LegacyAccount r13 = (net.thunderbird.core.android.account.LegacyAccount) r13
            net.thunderbird.feature.account.storage.legacy.mapper.DefaultAccountProfileDataMapper r4 = r2.dataMapper
            net.thunderbird.feature.account.storage.profile.ProfileDto r13 = r13.profile
            net.thunderbird.feature.account.profile.AccountProfile r6 = new net.thunderbird.feature.account.profile.AccountProfile
            net.thunderbird.feature.account.AccountId r8 = r13.id
            java.lang.String r9 = r13.name
            int r10 = r13.color
            net.thunderbird.feature.account.storage.legacy.mapper.DefaultAvatarDataMapper r4 = r4.avatarMapper
            net.thunderbird.feature.account.storage.profile.AvatarDto r13 = r13.avatar
            java.lang.Object r13 = r4.toDomain(r13)
            net.thunderbird.feature.account.avatar.Avatar r13 = (net.thunderbird.feature.account.avatar.Avatar) r13
            r6.<init>(r8, r9, r10, r13)
            r11.add(r6)
            goto L9f
        Lc8:
            r0.label = r7
            java.lang.Object r11 = r3.emit(r11, r0)
            if (r11 != r5) goto Ld1
            r1 = r5
        Ld1:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: net.thunderbird.app.common.account.data.DefaultAccountProfileLocalDataSource$getAll$$inlined$map$1$2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
