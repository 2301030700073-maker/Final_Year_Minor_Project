package net.thunderbird.feature.mail.message.list.ui.component.organism;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Modifier;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.thunderbird.feature.mail.message.list.preferences.MessageListPreferences;
import net.thunderbird.feature.mail.message.list.ui.component.config.MessageItemAccountIndicator;
import net.thunderbird.feature.mail.message.list.ui.state.MessageItemUi;
import okhttp3.CacheControl;
import okhttp3.Cookie;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class ReadMessageItemKt$$ExternalSyntheticLambda3 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ MessageItemUi f$0;
    public final /* synthetic */ MessageListPreferences f$1;
    public final /* synthetic */ MessageItemAccountIndicator f$2;
    public final /* synthetic */ Function0 f$3;
    public final /* synthetic */ Function0 f$4;
    public final /* synthetic */ Function0 f$5;
    public final /* synthetic */ Function1 f$6;
    public final /* synthetic */ Modifier f$7;
    public final /* synthetic */ int f$8;
    public final /* synthetic */ int f$9;

    public /* synthetic */ ReadMessageItemKt$$ExternalSyntheticLambda3(MessageItemUi messageItemUi, MessageListPreferences messageListPreferences, MessageItemAccountIndicator messageItemAccountIndicator, Function0 function0, Function0 function02, Function0 function03, Function1 function1, Modifier modifier, int i, int i2, int i3) {
        this.$r8$classId = i3;
        this.f$0 = messageItemUi;
        this.f$1 = messageListPreferences;
        this.f$2 = messageItemAccountIndicator;
        this.f$3 = function0;
        this.f$4 = function02;
        this.f$5 = function03;
        this.f$6 = function1;
        this.f$7 = modifier;
        this.f$8 = i;
        this.f$9 = i2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        int i2 = this.f$8;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                int updateChangedFlags = Updater.updateChangedFlags(i2 | 1);
                CacheControl.Companion.ReadMessageItem(this.f$0, this.f$1, this.f$2, this.f$3, this.f$4, this.f$5, this.f$6, this.f$7, (Composer) obj, updateChangedFlags, this.f$9);
                break;
            default:
                ((Integer) obj2).getClass();
                int updateChangedFlags2 = Updater.updateChangedFlags(i2 | 1);
                Cookie.Companion.UnreadMessageItem(this.f$0, this.f$1, this.f$2, this.f$3, this.f$4, this.f$5, this.f$6, this.f$7, (Composer) obj, updateChangedFlags2, this.f$9);
                break;
        }
        return unit;
    }
}
