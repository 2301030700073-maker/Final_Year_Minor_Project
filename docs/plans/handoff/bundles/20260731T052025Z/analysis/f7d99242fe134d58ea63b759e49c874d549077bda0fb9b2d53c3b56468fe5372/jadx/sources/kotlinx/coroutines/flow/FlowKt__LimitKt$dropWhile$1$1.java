package kotlinx.coroutines.flow;

import com.fsck.k9.Preferences$getAccountsFlow$1;
import com.fsck.k9.ui.messagelist.MessageListFragment;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.internal.InlineList;
import net.thunderbird.feature.mail.message.list.preferences.MessageListPreferences;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FlowKt__LimitKt$dropWhile$1$1 implements FlowCollector {
    public final Object $matched;
    public final Object $predicate;
    public final /* synthetic */ int $r8$classId;
    public final Object $this_flow;

    public FlowKt__LimitKt$dropWhile$1$1(FlowCollector flowCollector, CoroutineContext coroutineContext) {
        this.$r8$classId = 6;
        this.$matched = coroutineContext;
        this.$this_flow = InlineList.threadContextElements(coroutineContext);
        this.$predicate = new Preferences$getAccountsFlow$1(flowCollector, null, 20);
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x01a8  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x0230  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x026d  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x0246  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x019b  */
    @Override // kotlinx.coroutines.flow.FlowCollector
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object emit(java.lang.Object r20, kotlin.coroutines.Continuation r21) {
        /*
            Method dump skipped, instructions count: 652
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__LimitKt$dropWhile$1$1.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public FlowKt__LimitKt$dropWhile$1$1(FlowCollector flowCollector, MessageListFragment messageListFragment, MessageListPreferences messageListPreferences) {
        this.$r8$classId = 5;
        this.$this_flow = flowCollector;
        this.$matched = messageListFragment;
        this.$predicate = messageListPreferences;
    }

    public /* synthetic */ FlowKt__LimitKt$dropWhile$1$1(Object obj, Object obj2, Object obj3, int i) {
        this.$r8$classId = i;
        this.$matched = obj;
        this.$this_flow = obj2;
        this.$predicate = obj3;
    }
}
