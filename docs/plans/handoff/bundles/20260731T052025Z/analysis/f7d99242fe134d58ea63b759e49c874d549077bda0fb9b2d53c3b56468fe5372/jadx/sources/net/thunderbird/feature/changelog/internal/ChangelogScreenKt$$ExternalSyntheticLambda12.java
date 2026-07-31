package net.thunderbird.feature.changelog.internal;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Modifier;
import kotlin.Unit;
import kotlin.io.ByteStreamsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import net.thunderbird.feature.mail.message.list.ui.component.config.MessageItemLeadingConfiguration;
import org.jsoup.Jsoup;
import org.minidns.util.Base64;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class ChangelogScreenKt$$ExternalSyntheticLambda12 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ boolean f$1;
    public final /* synthetic */ Object f$2;
    public final /* synthetic */ Modifier f$3;

    public /* synthetic */ ChangelogScreenKt$$ExternalSyntheticLambda12(boolean z, MessageItemLeadingConfiguration messageItemLeadingConfiguration, Function0 function0, Modifier modifier, int i) {
        this.$r8$classId = 2;
        this.f$1 = z;
        this.f$0 = messageItemLeadingConfiguration;
        this.f$2 = function0;
        this.f$3 = modifier;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Object obj3 = this.f$2;
        Object obj4 = this.f$0;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                int updateChangedFlags = Updater.updateChangedFlags(1);
                Jsoup.ReleaseItemHeader((String) obj4, this.f$1, (String) obj3, this.f$3, (Composer) obj, updateChangedFlags);
                break;
            case 1:
                ((Integer) obj2).getClass();
                int updateChangedFlags2 = Updater.updateChangedFlags(1);
                Base64.RemoteFolderListItem((String) obj4, this.f$1, (Function0) obj3, this.f$3, (Composer) obj, updateChangedFlags2);
                break;
            default:
                ((Integer) obj2).getClass();
                int updateChangedFlags3 = Updater.updateChangedFlags(1);
                ByteStreamsKt.LeadingElements(this.f$1, (MessageItemLeadingConfiguration) obj4, (Function0) obj3, this.f$3, (Composer) obj, updateChangedFlags3);
                break;
        }
        return unit;
    }

    public /* synthetic */ ChangelogScreenKt$$ExternalSyntheticLambda12(String str, boolean z, Object obj, Modifier modifier, int i, int i2) {
        this.$r8$classId = i2;
        this.f$0 = str;
        this.f$1 = z;
        this.f$2 = obj;
        this.f$3 = modifier;
    }
}
