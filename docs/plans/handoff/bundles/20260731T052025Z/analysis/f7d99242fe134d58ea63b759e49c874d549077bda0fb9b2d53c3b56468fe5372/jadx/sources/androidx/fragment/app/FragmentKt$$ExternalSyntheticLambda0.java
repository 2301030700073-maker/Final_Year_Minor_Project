package androidx.fragment.app;

import android.content.Intent;
import android.os.Bundle;
import com.fsck.k9.activity.MessageCompose;
import com.fsck.k9.ui.settings.account.AccountSettingsActivity;
import j$.util.Objects;
import java.util.regex.Pattern;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class FragmentKt$$ExternalSyntheticLambda0 implements FragmentResultListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ FragmentKt$$ExternalSyntheticLambda0(int i, Object obj) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // androidx.fragment.app.FragmentResultListener
    public final void onFragmentResult(String str, Bundle bundle) {
        int i = this.$r8$classId;
        Object obj = this.f$0;
        switch (i) {
            case 0:
                ((Function2) obj).invoke(str, bundle);
                break;
            case 1:
                MessageCompose messageCompose = (MessageCompose) obj;
                Pattern pattern = MessageCompose.PREFIX;
                if ("SentFolderNotFoundConfirmationDialogFragmentFactory_assign_sent_folder".equals(str)) {
                    String string = bundle.getString("SetupArchiveFolderDialogFragmentFactory_accountUuid");
                    Objects.requireNonNull(string);
                    Intent intent = new Intent(messageCompose, (Class<?>) AccountSettingsActivity.class);
                    intent.putExtra("accountUuid", string);
                    intent.putExtra("startScreen", "folders");
                    messageCompose.startActivity(intent);
                    break;
                }
                break;
            default:
                MessageCompose messageCompose2 = (MessageCompose) obj;
                Pattern pattern2 = MessageCompose.PREFIX;
                if ("SentFolderNotFoundConfirmationDialogFragmentFactory_send_and_delete".equals(str)) {
                    messageCompose2.ignoreSentFolderNotAssigned = true;
                    messageCompose2.performSendAfterChecks();
                    break;
                }
                break;
        }
    }
}
