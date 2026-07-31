package com.fsck.k9.ui.messageview;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.AsyncTask;
import android.widget.Toast;
import androidx.navigation.internal.NavContext;
import com.fsck.k9.R;
import com.fsck.k9.mailstore.AttachmentViewInfo;
import com.fsck.k9.mailstore.LocalStore;
import com.fsck.k9.provider.AttachmentTempFileProvider;
import java.io.IOException;
import net.thunderbird.core.logging.legacy.Log;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AttachmentController$SaveAttachmentAsyncTask extends AsyncTask {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ LocalStore.AnonymousClass7 this$0;

    public /* synthetic */ AttachmentController$SaveAttachmentAsyncTask(LocalStore.AnonymousClass7 anonymousClass7, int i) {
        this.$r8$classId = i;
        this.this$0 = anonymousClass7;
    }

    @Override // android.os.AsyncTask
    public final Object doInBackground(Object[] objArr) {
        int i = this.$r8$classId;
        LocalStore.AnonymousClass7 anonymousClass7 = this.this$0;
        switch (i) {
            case 0:
                try {
                    LocalStore.AnonymousClass7.m937$$Nest$mwriteAttachment(anonymousClass7, ((Uri[]) objArr)[0]);
                    return Boolean.TRUE;
                } catch (IOException e) {
                    Log.e(e, "Error saving attachment", new Object[0]);
                    return Boolean.FALSE;
                }
            default:
                AttachmentViewInfo attachmentViewInfo = (AttachmentViewInfo) anonymousClass7.val$messages;
                try {
                    Context context = (Context) anonymousClass7.val$queryString;
                    Uri uri = attachmentViewInfo.internalUri;
                    String str = attachmentViewInfo.displayName;
                    return ((NavContext) anonymousClass7.this$0).getBestViewIntent(AttachmentTempFileProvider.createTempUriForContentUri(context, uri, str), str, attachmentViewInfo.mimeType);
                } catch (IOException e2) {
                    Log.e(e2, "Error creating temp file for attachment!", new Object[0]);
                    return null;
                }
        }
    }

    @Override // android.os.AsyncTask
    public final void onPostExecute(Object obj) {
        int i = this.$r8$classId;
        LocalStore.AnonymousClass7 anonymousClass7 = this.this$0;
        switch (i) {
            case 0:
                if (!((Boolean) obj).booleanValue()) {
                    Context context = (Context) anonymousClass7.val$queryString;
                    Toast.makeText(context, context.getString(R.string.message_view_status_attachment_not_saved), 1).show();
                    break;
                }
                break;
            default:
                Intent intent = (Intent) obj;
                AttachmentViewInfo attachmentViewInfo = (AttachmentViewInfo) anonymousClass7.val$messages;
                Context context2 = (Context) anonymousClass7.val$queryString;
                try {
                    context2.startActivity(intent);
                    break;
                } catch (ActivityNotFoundException e) {
                    Log.e(e, "Could not display attachment of type %s", attachmentViewInfo.mimeType);
                    Toast.makeText(context2, context2.getString(R.string.message_view_no_viewer, attachmentViewInfo.mimeType), 1).show();
                }
        }
    }
}
