package com.fsck.k9.ui.messagelist;

import android.content.DialogInterface;
import android.os.Handler;
import android.os.Message;
import androidx.core.app.ActivityRecreator;
import java.lang.ref.WeakReference;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MessageListHandler extends Handler {
    public final /* synthetic */ int $r8$classId = 1;
    public WeakReference mFragment;

    public MessageListHandler(MessageListFragmentBridgeContract messageListFragmentBridgeContract) {
        this.mFragment = new WeakReference(messageListFragmentBridgeContract);
    }

    public void folderLoading(long j, boolean z) {
        sendMessage(Message.obtain(this, 1, z ? 1 : 0, 0, Long.valueOf(j)));
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        switch (this.$r8$classId) {
            case 0:
                MessageListFragmentBridgeContract messageListFragmentBridgeContract = (MessageListFragmentBridgeContract) this.mFragment.get();
                if (messageListFragmentBridgeContract != null) {
                    if (message.what == 4) {
                        messageListFragmentBridgeContract.remoteSearchFinished();
                        break;
                    } else if (messageListFragmentBridgeContract.getFragmentActivity() != null) {
                        int i = message.what;
                        if (i == 1) {
                            messageListFragmentBridgeContract.folderLoading(((Long) message.obj).longValue(), message.arg1 == 1);
                            break;
                        } else if (i == 2) {
                            messageListFragmentBridgeContract.updateTitle();
                            break;
                        } else if (i == 3) {
                            messageListFragmentBridgeContract.progress(message.arg1 == 1);
                            break;
                        }
                    }
                }
                break;
            default:
                int i2 = message.what;
                if (i2 != -3 && i2 != -2 && i2 != -1) {
                    if (i2 == 1) {
                        ((DialogInterface) message.obj).dismiss();
                        break;
                    }
                } else {
                    ((DialogInterface.OnClickListener) message.obj).onClick((DialogInterface) this.mFragment.get(), message.what);
                    break;
                }
                break;
        }
    }

    public void progress(boolean z) {
        sendMessage(Message.obtain(this, 3, z ? 1 : 0, 0));
    }

    public void updateFooter(String str) {
        post(new ActivityRecreator.AnonymousClass1(15, this, str, false));
    }

    public /* synthetic */ MessageListHandler() {
    }
}
