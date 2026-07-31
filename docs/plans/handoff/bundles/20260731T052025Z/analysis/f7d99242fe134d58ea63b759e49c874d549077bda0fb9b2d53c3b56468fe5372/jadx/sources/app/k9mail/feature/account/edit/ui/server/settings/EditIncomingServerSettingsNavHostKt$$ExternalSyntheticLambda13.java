package app.k9mail.feature.account.edit.ui.server.settings;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Updater;
import androidx.datastore.preferences.protobuf.Utf8;
import androidx.work.Data;
import coil3.disk.DiskLruCache$$ExternalSyntheticLambda0;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class EditIncomingServerSettingsNavHostKt$$ExternalSyntheticLambda13 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ String f$0;
    public final /* synthetic */ DiskLruCache$$ExternalSyntheticLambda0 f$1;
    public final /* synthetic */ Function0 f$2;

    public /* synthetic */ EditIncomingServerSettingsNavHostKt$$ExternalSyntheticLambda13(String str, DiskLruCache$$ExternalSyntheticLambda0 diskLruCache$$ExternalSyntheticLambda0, Function0 function0, int i, int i2) {
        this.$r8$classId = i2;
        this.f$0 = str;
        this.f$1 = diskLruCache$$ExternalSyntheticLambda0;
        this.f$2 = function0;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Function0 function0 = this.f$2;
        DiskLruCache$$ExternalSyntheticLambda0 diskLruCache$$ExternalSyntheticLambda0 = this.f$1;
        String str = this.f$0;
        Composer composer = (Composer) obj;
        ((Integer) obj2).getClass();
        switch (i) {
            case 0:
                Utf8.SafeProcessor.EditIncomingServerSettingsNavHost(str, diskLruCache$$ExternalSyntheticLambda0, function0, composer, Updater.updateChangedFlags(1));
                break;
            default:
                Data.Companion.EditOutgoingServerSettingsNavHost(str, diskLruCache$$ExternalSyntheticLambda0, function0, composer, Updater.updateChangedFlags(1));
                break;
        }
        return unit;
    }
}
