package org.schabi.newpipe.download;

import android.view.View;
import androidx.fragment.app.DialogFragment;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class LoadingDialog$$ExternalSyntheticLambda0 implements View.OnClickListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ DialogFragment f$0;

    public /* synthetic */ LoadingDialog$$ExternalSyntheticLambda0(DialogFragment dialogFragment, int i) {
        this.$r8$classId = i;
        this.f$0 = dialogFragment;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i = this.$r8$classId;
        DialogFragment dialogFragment = this.f$0;
        switch (i) {
            case 0:
                ((LoadingDialog) dialogFragment).dismissInternal(false, false);
                break;
            default:
                int i2 = DownloadDialog.$r8$clinit;
                ((DownloadDialog) dialogFragment).dismissInternal(false, false);
                break;
        }
    }
}
