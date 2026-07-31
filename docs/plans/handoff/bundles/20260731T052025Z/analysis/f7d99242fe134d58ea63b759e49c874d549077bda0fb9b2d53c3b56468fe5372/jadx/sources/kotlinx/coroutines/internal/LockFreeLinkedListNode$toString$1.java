package kotlinx.coroutines.internal;

import androidx.compose.runtime.State;
import com.fsck.k9.K9;
import com.fsck.k9.preferences.DefaultGeneralSettingsManager;
import com.fsck.k9.ui.messagelist.LegacyMessageListFragment;
import com.fsck.k9.ui.messagelist.MessageListAppearance;
import kotlin.jvm.internal.PropertyReference;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KCallable;
import kotlin.reflect.KProperty0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class LockFreeLinkedListNode$toString$1 extends PropertyReference implements KProperty0 {
    public final /* synthetic */ int $r8$classId;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ LockFreeLinkedListNode$toString$1(int i, int i2, Class cls, Object obj, String str, String str2) {
        super(obj, cls, str, str2, i);
        this.$r8$classId = i2;
    }

    @Override // kotlin.jvm.internal.CallableReference
    public final KCallable computeReflected() {
        Reflection.factory.getClass();
        return this;
    }

    @Override // kotlin.reflect.KProperty0
    public final Object get() {
        switch (this.$r8$classId) {
            case 0:
                return this.receiver.getClass().getSimpleName();
            case 1:
                return ((State) this.receiver).getValue();
            case 2:
                return ((State) this.receiver).getValue();
            case 3:
                return ((State) this.receiver).getValue();
            case 4:
                return ((State) this.receiver).getValue();
            default:
                LegacyMessageListFragment legacyMessageListFragment = (LegacyMessageListFragment) this.receiver;
                legacyMessageListFragment.getClass();
                return new MessageListAppearance(K9.fontSizes, legacyMessageListFragment.getMessageListSettings().previewLines, !legacyMessageListFragment.isOutbox() && ((DefaultGeneralSettingsManager) legacyMessageListFragment.getGeneralSettingsManager$2()).getConfig().display.inboxSettings.isShowMessageListStars, ((DefaultGeneralSettingsManager) legacyMessageListFragment.getGeneralSettingsManager$2()).getConfig().display.inboxSettings.isMessageListSenderAboveSubject, legacyMessageListFragment.getMessageListSettings().isShowContactPicture, legacyMessageListFragment.showingThreadedList, legacyMessageListFragment.getMessageListSettings().isUseBackgroundAsUnreadIndicator, legacyMessageListFragment.isShowAccountIndicator$1(), legacyMessageListFragment.getMessageListSettings().uiDensity, legacyMessageListFragment.getMessageListSettings().dateTimeFormat);
        }
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        return get();
    }
}
