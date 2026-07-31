package com.fsck.k9.ui.messagelist;

import androidx.compose.foundation.text.input.internal.AndroidLegacyPlatformTextInputServiceAdapter;
import androidx.compose.ui.focus.FocusRequester;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlinx.coroutines.flow.MutableSharedFlow;
import kotlinx.coroutines.flow.SharedFlowImpl;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class MessageListViewModel$$ExternalSyntheticLambda0 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ boolean f$1;

    public /* synthetic */ MessageListViewModel$$ExternalSyntheticLambda0(MessageListConfig messageListConfig, boolean z) {
        this.$r8$classId = 0;
        this.f$0 = messageListConfig;
        this.f$1 = z;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        MutableSharedFlow stylusHandwritingTrigger;
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Object obj = this.f$0;
        boolean z = this.f$1;
        switch (i) {
            case 0:
                break;
            case 1:
                Function0 function0 = (Function0) obj;
                if (z) {
                    function0.invoke();
                    break;
                }
                break;
            case 2:
                AndroidLegacyPlatformTextInputServiceAdapter androidLegacyPlatformTextInputServiceAdapter = (AndroidLegacyPlatformTextInputServiceAdapter) obj;
                if (z && (stylusHandwritingTrigger = androidLegacyPlatformTextInputServiceAdapter.getStylusHandwritingTrigger()) != null) {
                    ((SharedFlowImpl) stylusHandwritingTrigger).tryEmit(unit);
                    break;
                }
                break;
            default:
                FocusRequester focusRequester = (FocusRequester) obj;
                if (z) {
                    FocusRequester.m418requestFocus3ESFkO8$default(focusRequester);
                    break;
                }
                break;
        }
        return unit;
    }

    public /* synthetic */ MessageListViewModel$$ExternalSyntheticLambda0(int i, Object obj, boolean z) {
        this.$r8$classId = i;
        this.f$1 = z;
        this.f$0 = obj;
    }
}
