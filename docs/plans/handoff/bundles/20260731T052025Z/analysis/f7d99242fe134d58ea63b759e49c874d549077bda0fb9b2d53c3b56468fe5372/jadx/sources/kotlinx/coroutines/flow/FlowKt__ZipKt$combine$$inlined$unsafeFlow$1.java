package kotlinx.coroutines.flow;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FlowKt__ZipKt$combine$$inlined$unsafeFlow$1 implements Flow {
    public final /* synthetic */ Object $flow$inlined;
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Flow $this_combine$inlined;
    public final /* synthetic */ Object $transform$inlined;

    public /* synthetic */ FlowKt__ZipKt$combine$$inlined$unsafeFlow$1(Flow flow, Object obj, Object obj2, int i) {
        this.$r8$classId = i;
        this.$this_combine$inlined = flow;
        this.$flow$inlined = obj;
        this.$transform$inlined = obj2;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x002f  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x003c  */
    @Override // kotlinx.coroutines.flow.Flow
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object collect(kotlinx.coroutines.flow.FlowCollector r12, kotlin.coroutines.Continuation r13) {
        /*
            r11 = this;
            int r0 = r11.$r8$classId
            kotlin.Unit r1 = kotlin.Unit.INSTANCE
            java.lang.Object r2 = r11.$transform$inlined
            java.lang.Object r3 = r11.$flow$inlined
            kotlinx.coroutines.flow.Flow r4 = r11.$this_combine$inlined
            r5 = 0
            kotlin.coroutines.intrinsics.CoroutineSingletons r6 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            r7 = 1
            switch(r0) {
                case 0: goto L52;
                default: goto L11;
            }
        L11:
            boolean r0 = r13 instanceof com.fsck.k9.ui.messagelist.MessageListFragment$loadMessages$$inlined$map$1$1
            if (r0 == 0) goto L24
            r0 = r13
            com.fsck.k9.ui.messagelist.MessageListFragment$loadMessages$$inlined$map$1$1 r0 = (com.fsck.k9.ui.messagelist.MessageListFragment$loadMessages$$inlined$map$1$1) r0
            int r8 = r0.label
            r9 = -2147483648(0xffffffff80000000, float:-0.0)
            r10 = r8 & r9
            if (r10 == 0) goto L24
            int r8 = r8 - r9
            r0.label = r8
            goto L29
        L24:
            com.fsck.k9.ui.messagelist.MessageListFragment$loadMessages$$inlined$map$1$1 r0 = new com.fsck.k9.ui.messagelist.MessageListFragment$loadMessages$$inlined$map$1$1
            r0.<init>(r11, r13)
        L29:
            java.lang.Object r11 = r0.result
            int r13 = r0.label
            if (r13 == 0) goto L3c
            if (r13 != r7) goto L35
            kotlin.ResultKt.throwOnFailure(r11)
            goto L51
        L35:
            java.lang.String r11 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r11)
            r1 = r5
            goto L51
        L3c:
            kotlin.ResultKt.throwOnFailure(r11)
            kotlinx.coroutines.flow.FlowKt__LimitKt$dropWhile$1$1 r11 = new kotlinx.coroutines.flow.FlowKt__LimitKt$dropWhile$1$1
            com.fsck.k9.ui.messagelist.MessageListFragment r3 = (com.fsck.k9.ui.messagelist.MessageListFragment) r3
            net.thunderbird.feature.mail.message.list.preferences.MessageListPreferences r2 = (net.thunderbird.feature.mail.message.list.preferences.MessageListPreferences) r2
            r11.<init>(r12, r3, r2)
            r0.label = r7
            java.lang.Object r11 = r4.collect(r11, r0)
            if (r11 != r6) goto L51
            r1 = r6
        L51:
            return r1
        L52:
            kotlinx.coroutines.flow.Flow r3 = (kotlinx.coroutines.flow.Flow) r3
            r11 = 2
            kotlinx.coroutines.flow.Flow[] r11 = new kotlinx.coroutines.flow.Flow[r11]
            r0 = 0
            r11[r0] = r4
            r11[r7] = r3
            kotlinx.coroutines.flow.FlowKt__ZipKt$combine$1$1 r3 = new kotlinx.coroutines.flow.FlowKt__ZipKt$combine$1$1
            kotlin.jvm.functions.Function3 r2 = (kotlin.jvm.functions.Function3) r2
            r3.<init>(r2, r5, r0)
            kotlinx.coroutines.flow.FlowKt__ZipKt$nullArrayFactory$1 r0 = kotlinx.coroutines.flow.FlowKt__ZipKt$nullArrayFactory$1.INSTANCE
            java.lang.Object r11 = kotlinx.coroutines.flow.internal.CombineKt.combineInternal(r13, r0, r3, r12, r11)
            if (r11 != r6) goto L6c
            r1 = r11
        L6c:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__ZipKt$combine$$inlined$unsafeFlow$1.collect(kotlinx.coroutines.flow.FlowCollector, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
