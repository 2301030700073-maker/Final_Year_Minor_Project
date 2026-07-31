package org.schabi.newpipe.download;

import androidx.appcompat.widget.Toolbar;
import io.reactivex.rxjava3.functions.Consumer;
import org.schabi.newpipe.R;
import org.schabi.newpipe.error.ErrorInfo;
import org.schabi.newpipe.error.ErrorUtil;
import org.schabi.newpipe.error.UserAction;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class DownloadDialog$$ExternalSyntheticLambda1 implements Toolbar.OnMenuItemClickListener, Consumer {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ DownloadDialog f$0;

    public /* synthetic */ DownloadDialog$$ExternalSyntheticLambda1(DownloadDialog downloadDialog, int i) {
        this.$r8$classId = i;
        this.f$0 = downloadDialog;
    }

    @Override // io.reactivex.rxjava3.functions.Consumer
    public void accept(Object obj) {
        int i = this.$r8$classId;
        UserAction userAction = UserAction.DOWNLOAD_OPEN_DIALOG;
        DownloadDialog downloadDialog = this.f$0;
        switch (i) {
            case 1:
                ErrorUtil.showSnackbar(downloadDialog.context, new ErrorInfo((Throwable) obj, userAction, "Downloading video stream size", downloadDialog.currentInfo));
                break;
            case 2:
                ErrorUtil.showSnackbar(downloadDialog.context, new ErrorInfo((Throwable) obj, userAction, "Downloading audio stream size", downloadDialog.currentInfo));
                break;
            case 3:
                ErrorUtil.showSnackbar(downloadDialog.context, new ErrorInfo((Throwable) obj, userAction, "Downloading subtitle stream size", downloadDialog.currentInfo));
                break;
            case 4:
                if (downloadDialog.dialogBinding.videoAudioGroup.getCheckedRadioButtonId() == R.id.video_button) {
                    downloadDialog.setupVideoSpinner();
                    break;
                }
                break;
            case 5:
                if (downloadDialog.dialogBinding.videoAudioGroup.getCheckedRadioButtonId() == R.id.audio_button) {
                    downloadDialog.setupAudioSpinner();
                    break;
                }
                break;
            default:
                if (downloadDialog.dialogBinding.videoAudioGroup.getCheckedRadioButtonId() == R.id.subtitle_button) {
                    downloadDialog.setupSubtitleSpinner();
                    break;
                }
                break;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0158, code lost:
    
        if (r3.getName() != null) goto L46;
     */
    /* JADX WARN: Removed duplicated region for block: B:50:0x022f  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0256  */
    @Override // androidx.appcompat.widget.Toolbar.OnMenuItemClickListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onMenuItemClick(android.view.MenuItem r11) {
        /*
            Method dump skipped, instructions count: 638
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.schabi.newpipe.download.DownloadDialog$$ExternalSyntheticLambda1.onMenuItemClick(android.view.MenuItem):boolean");
    }
}
