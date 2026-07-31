package app.k9mail.core.android.common.camera;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import androidx.core.content.FileProvider;
import app.k9mail.core.android.common.camera.io.CaptureImageFileWriter;
import java.io.File;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CameraCaptureHandler {
    public final CaptureImageFileWriter captureImageFileWriter;
    public Uri capturedImageUri;

    public CameraCaptureHandler(CaptureImageFileWriter captureImageFileWriter) {
        this.captureImageFileWriter = captureImageFileWriter;
    }

    public final void openCamera(Activity activity) {
        Intent intent = new Intent("android.media.action.IMAGE_CAPTURE");
        String str = "IMG_" + System.currentTimeMillis() + ".jpg";
        Context context = this.captureImageFileWriter.context;
        File file = new File(context.getCacheDir(), "captureImage");
        file.mkdirs();
        Uri uriForFile = FileProvider.getUriForFile(context, context.getPackageName() + ".activity", new File(file, str));
        uriForFile.getClass();
        this.capturedImageUri = uriForFile;
        intent.putExtra("output", uriForFile);
        intent.addFlags(2);
        activity.startActivityForResult(intent, 6, null);
    }
}
