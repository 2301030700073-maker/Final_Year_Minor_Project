package com.fsck.k9.activity.compose;

import android.content.ClipData;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import androidx.camera.core.ImageAnalysis$$ExternalSyntheticLambda3;
import androidx.fragment.app.Fragment;
import androidx.loader.app.LoaderManager;
import androidx.loader.app.LoaderManagerImpl;
import androidx.loader.content.AsyncTaskLoader;
import androidx.sqlite.SQLite;
import com.beetstra.jutf7.Base64Util;
import com.fsck.k9.R;
import com.fsck.k9.activity.MessageCompose;
import com.fsck.k9.activity.loader.AttachmentInfoLoader;
import com.fsck.k9.activity.misc.Attachment;
import com.fsck.k9.activity.misc.InlineAttachment;
import com.fsck.k9.fragment.ProgressDialogFragment;
import com.fsck.k9.mailstore.AttachmentViewInfo;
import com.fsck.k9.mailstore.MessageViewInfo;
import com.fsck.k9.message.Attachment;
import java.util.Iterator;
import java.util.LinkedHashMap;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AttachmentPresenter {
    public final Base64Util attachmentMvpView;
    public final Context context;
    public final MessageCompose listener;
    public final LoaderManagerImpl loaderManager;
    public final AnonymousClass1 mAttachmentContentLoaderCallback;
    public final AnonymousClass1 mAttachmentInfoLoaderCallback;
    public final AnonymousClass1 mInlineAttachmentContentLoaderCallback;
    public int nextLoaderId = 0;
    public int actionToPerformAfterWaiting = 1;
    public final LinkedHashMap attachments = new LinkedHashMap();
    public final LinkedHashMap inlineAttachments = new LinkedHashMap();

    /* JADX WARN: Type inference failed for: r0v1, types: [com.fsck.k9.activity.compose.AttachmentPresenter$1] */
    /* JADX WARN: Type inference failed for: r0v2, types: [com.fsck.k9.activity.compose.AttachmentPresenter$1] */
    /* JADX WARN: Type inference failed for: r2v0, types: [com.fsck.k9.activity.compose.AttachmentPresenter$1] */
    public AttachmentPresenter(Context context, Base64Util base64Util, LoaderManagerImpl loaderManagerImpl, MessageCompose messageCompose) {
        final int i = 0;
        final int i2 = 1;
        this.mAttachmentInfoLoaderCallback = new LoaderManager.LoaderCallbacks(this) { // from class: com.fsck.k9.activity.compose.AttachmentPresenter.1
            public final /* synthetic */ AttachmentPresenter this$0;

            {
                this.this$0 = this;
            }

            @Override // androidx.loader.app.LoaderManager.LoaderCallbacks
            public final AsyncTaskLoader onCreateLoader(int i3, Bundle bundle) {
                int i4 = i;
                AttachmentPresenter attachmentPresenter = this.this$0;
                switch (i4) {
                    case 0:
                        return new AttachmentInfoLoader(attachmentPresenter.context, (Attachment) attachmentPresenter.attachments.get((Uri) SQLite.getParcelable(bundle, "attachment", Uri.class)), 0);
                    case 1:
                        return new AttachmentInfoLoader(attachmentPresenter.context, (Attachment) attachmentPresenter.attachments.get((Uri) SQLite.getParcelable(bundle, "attachment", Uri.class)), 1);
                    default:
                        return new AttachmentInfoLoader(attachmentPresenter.context, ((InlineAttachment) attachmentPresenter.inlineAttachments.get((Uri) SQLite.getParcelable(bundle, "attachment", Uri.class))).attachment, 1);
                }
            }

            @Override // androidx.loader.app.LoaderManager.LoaderCallbacks
            public final void onLoadFinished(AsyncTaskLoader asyncTaskLoader, Object obj) {
                int i3 = i;
                Attachment.LoadingState loadingState = Attachment.LoadingState.COMPLETE;
                AttachmentPresenter attachmentPresenter = this.this$0;
                switch (i3) {
                    case 0:
                        com.fsck.k9.activity.misc.Attachment attachment = (com.fsck.k9.activity.misc.Attachment) obj;
                        int i4 = asyncTaskLoader.mId;
                        LoaderManagerImpl loaderManagerImpl2 = attachmentPresenter.loaderManager;
                        Base64Util base64Util2 = attachmentPresenter.attachmentMvpView;
                        loaderManagerImpl2.destroyLoader(i4);
                        LinkedHashMap linkedHashMap = attachmentPresenter.attachments;
                        Uri uri = attachment.uri;
                        if (linkedHashMap.containsKey(uri)) {
                            if (attachment.state != Attachment.LoadingState.METADATA) {
                                linkedHashMap.remove(uri);
                                base64Util2.removeAttachmentView(attachment);
                                break;
                            } else {
                                base64Util2.updateAttachmentView(attachment);
                                linkedHashMap.put(uri, attachment);
                                attachmentPresenter.initAttachmentContentLoader(attachment);
                                break;
                            }
                        }
                        break;
                    case 1:
                        com.fsck.k9.activity.misc.Attachment attachment2 = (com.fsck.k9.activity.misc.Attachment) obj;
                        int i5 = asyncTaskLoader.mId;
                        LoaderManagerImpl loaderManagerImpl3 = attachmentPresenter.loaderManager;
                        Base64Util base64Util3 = attachmentPresenter.attachmentMvpView;
                        loaderManagerImpl3.destroyLoader(i5);
                        LinkedHashMap linkedHashMap2 = attachmentPresenter.attachments;
                        Uri uri2 = attachment2.uri;
                        if (linkedHashMap2.containsKey(uri2)) {
                            if (attachment2.state == loadingState) {
                                base64Util3.updateAttachmentView(attachment2);
                                linkedHashMap2.put(uri2, attachment2);
                            } else {
                                linkedHashMap2.remove(uri2);
                                base64Util3.removeAttachmentView(attachment2);
                            }
                            new Handler().post(new Fragment.AnonymousClass1(29, attachmentPresenter));
                            break;
                        }
                        break;
                    default:
                        com.fsck.k9.activity.misc.Attachment attachment3 = (com.fsck.k9.activity.misc.Attachment) obj;
                        attachmentPresenter.loaderManager.destroyLoader(asyncTaskLoader.mId);
                        Attachment.LoadingState loadingState2 = attachment3.state;
                        Uri uri3 = attachment3.uri;
                        LinkedHashMap linkedHashMap3 = attachmentPresenter.inlineAttachments;
                        if (loadingState2 == loadingState) {
                            linkedHashMap3.put(uri3, new InlineAttachment(((InlineAttachment) linkedHashMap3.get(uri3)).contentId, attachment3));
                        } else {
                            linkedHashMap3.remove(uri3);
                        }
                        new Handler().post(new Fragment.AnonymousClass1(29, attachmentPresenter));
                        break;
                }
            }

            @Override // androidx.loader.app.LoaderManager.LoaderCallbacks
            public final void onLoaderReset(AsyncTaskLoader asyncTaskLoader) {
                int i3 = i;
            }

            private final void onLoaderReset$com$fsck$k9$activity$compose$AttachmentPresenter$1(AsyncTaskLoader asyncTaskLoader) {
            }

            private final void onLoaderReset$com$fsck$k9$activity$compose$AttachmentPresenter$2(AsyncTaskLoader asyncTaskLoader) {
            }

            private final void onLoaderReset$com$fsck$k9$activity$compose$AttachmentPresenter$3(AsyncTaskLoader asyncTaskLoader) {
            }
        };
        this.mAttachmentContentLoaderCallback = new LoaderManager.LoaderCallbacks(this) { // from class: com.fsck.k9.activity.compose.AttachmentPresenter.1
            public final /* synthetic */ AttachmentPresenter this$0;

            {
                this.this$0 = this;
            }

            @Override // androidx.loader.app.LoaderManager.LoaderCallbacks
            public final AsyncTaskLoader onCreateLoader(int i3, Bundle bundle) {
                int i4 = i2;
                AttachmentPresenter attachmentPresenter = this.this$0;
                switch (i4) {
                    case 0:
                        return new AttachmentInfoLoader(attachmentPresenter.context, (com.fsck.k9.activity.misc.Attachment) attachmentPresenter.attachments.get((Uri) SQLite.getParcelable(bundle, "attachment", Uri.class)), 0);
                    case 1:
                        return new AttachmentInfoLoader(attachmentPresenter.context, (com.fsck.k9.activity.misc.Attachment) attachmentPresenter.attachments.get((Uri) SQLite.getParcelable(bundle, "attachment", Uri.class)), 1);
                    default:
                        return new AttachmentInfoLoader(attachmentPresenter.context, ((InlineAttachment) attachmentPresenter.inlineAttachments.get((Uri) SQLite.getParcelable(bundle, "attachment", Uri.class))).attachment, 1);
                }
            }

            @Override // androidx.loader.app.LoaderManager.LoaderCallbacks
            public final void onLoadFinished(AsyncTaskLoader asyncTaskLoader, Object obj) {
                int i3 = i2;
                Attachment.LoadingState loadingState = Attachment.LoadingState.COMPLETE;
                AttachmentPresenter attachmentPresenter = this.this$0;
                switch (i3) {
                    case 0:
                        com.fsck.k9.activity.misc.Attachment attachment = (com.fsck.k9.activity.misc.Attachment) obj;
                        int i4 = asyncTaskLoader.mId;
                        LoaderManagerImpl loaderManagerImpl2 = attachmentPresenter.loaderManager;
                        Base64Util base64Util2 = attachmentPresenter.attachmentMvpView;
                        loaderManagerImpl2.destroyLoader(i4);
                        LinkedHashMap linkedHashMap = attachmentPresenter.attachments;
                        Uri uri = attachment.uri;
                        if (linkedHashMap.containsKey(uri)) {
                            if (attachment.state != Attachment.LoadingState.METADATA) {
                                linkedHashMap.remove(uri);
                                base64Util2.removeAttachmentView(attachment);
                                break;
                            } else {
                                base64Util2.updateAttachmentView(attachment);
                                linkedHashMap.put(uri, attachment);
                                attachmentPresenter.initAttachmentContentLoader(attachment);
                                break;
                            }
                        }
                        break;
                    case 1:
                        com.fsck.k9.activity.misc.Attachment attachment2 = (com.fsck.k9.activity.misc.Attachment) obj;
                        int i5 = asyncTaskLoader.mId;
                        LoaderManagerImpl loaderManagerImpl3 = attachmentPresenter.loaderManager;
                        Base64Util base64Util3 = attachmentPresenter.attachmentMvpView;
                        loaderManagerImpl3.destroyLoader(i5);
                        LinkedHashMap linkedHashMap2 = attachmentPresenter.attachments;
                        Uri uri2 = attachment2.uri;
                        if (linkedHashMap2.containsKey(uri2)) {
                            if (attachment2.state == loadingState) {
                                base64Util3.updateAttachmentView(attachment2);
                                linkedHashMap2.put(uri2, attachment2);
                            } else {
                                linkedHashMap2.remove(uri2);
                                base64Util3.removeAttachmentView(attachment2);
                            }
                            new Handler().post(new Fragment.AnonymousClass1(29, attachmentPresenter));
                            break;
                        }
                        break;
                    default:
                        com.fsck.k9.activity.misc.Attachment attachment3 = (com.fsck.k9.activity.misc.Attachment) obj;
                        attachmentPresenter.loaderManager.destroyLoader(asyncTaskLoader.mId);
                        Attachment.LoadingState loadingState2 = attachment3.state;
                        Uri uri3 = attachment3.uri;
                        LinkedHashMap linkedHashMap3 = attachmentPresenter.inlineAttachments;
                        if (loadingState2 == loadingState) {
                            linkedHashMap3.put(uri3, new InlineAttachment(((InlineAttachment) linkedHashMap3.get(uri3)).contentId, attachment3));
                        } else {
                            linkedHashMap3.remove(uri3);
                        }
                        new Handler().post(new Fragment.AnonymousClass1(29, attachmentPresenter));
                        break;
                }
            }

            @Override // androidx.loader.app.LoaderManager.LoaderCallbacks
            public final void onLoaderReset(AsyncTaskLoader asyncTaskLoader) {
                int i3 = i2;
            }

            private final void onLoaderReset$com$fsck$k9$activity$compose$AttachmentPresenter$1(AsyncTaskLoader asyncTaskLoader) {
            }

            private final void onLoaderReset$com$fsck$k9$activity$compose$AttachmentPresenter$2(AsyncTaskLoader asyncTaskLoader) {
            }

            private final void onLoaderReset$com$fsck$k9$activity$compose$AttachmentPresenter$3(AsyncTaskLoader asyncTaskLoader) {
            }
        };
        final int i3 = 2;
        this.mInlineAttachmentContentLoaderCallback = new LoaderManager.LoaderCallbacks(this) { // from class: com.fsck.k9.activity.compose.AttachmentPresenter.1
            public final /* synthetic */ AttachmentPresenter this$0;

            {
                this.this$0 = this;
            }

            @Override // androidx.loader.app.LoaderManager.LoaderCallbacks
            public final AsyncTaskLoader onCreateLoader(int i32, Bundle bundle) {
                int i4 = i3;
                AttachmentPresenter attachmentPresenter = this.this$0;
                switch (i4) {
                    case 0:
                        return new AttachmentInfoLoader(attachmentPresenter.context, (com.fsck.k9.activity.misc.Attachment) attachmentPresenter.attachments.get((Uri) SQLite.getParcelable(bundle, "attachment", Uri.class)), 0);
                    case 1:
                        return new AttachmentInfoLoader(attachmentPresenter.context, (com.fsck.k9.activity.misc.Attachment) attachmentPresenter.attachments.get((Uri) SQLite.getParcelable(bundle, "attachment", Uri.class)), 1);
                    default:
                        return new AttachmentInfoLoader(attachmentPresenter.context, ((InlineAttachment) attachmentPresenter.inlineAttachments.get((Uri) SQLite.getParcelable(bundle, "attachment", Uri.class))).attachment, 1);
                }
            }

            @Override // androidx.loader.app.LoaderManager.LoaderCallbacks
            public final void onLoadFinished(AsyncTaskLoader asyncTaskLoader, Object obj) {
                int i32 = i3;
                Attachment.LoadingState loadingState = Attachment.LoadingState.COMPLETE;
                AttachmentPresenter attachmentPresenter = this.this$0;
                switch (i32) {
                    case 0:
                        com.fsck.k9.activity.misc.Attachment attachment = (com.fsck.k9.activity.misc.Attachment) obj;
                        int i4 = asyncTaskLoader.mId;
                        LoaderManagerImpl loaderManagerImpl2 = attachmentPresenter.loaderManager;
                        Base64Util base64Util2 = attachmentPresenter.attachmentMvpView;
                        loaderManagerImpl2.destroyLoader(i4);
                        LinkedHashMap linkedHashMap = attachmentPresenter.attachments;
                        Uri uri = attachment.uri;
                        if (linkedHashMap.containsKey(uri)) {
                            if (attachment.state != Attachment.LoadingState.METADATA) {
                                linkedHashMap.remove(uri);
                                base64Util2.removeAttachmentView(attachment);
                                break;
                            } else {
                                base64Util2.updateAttachmentView(attachment);
                                linkedHashMap.put(uri, attachment);
                                attachmentPresenter.initAttachmentContentLoader(attachment);
                                break;
                            }
                        }
                        break;
                    case 1:
                        com.fsck.k9.activity.misc.Attachment attachment2 = (com.fsck.k9.activity.misc.Attachment) obj;
                        int i5 = asyncTaskLoader.mId;
                        LoaderManagerImpl loaderManagerImpl3 = attachmentPresenter.loaderManager;
                        Base64Util base64Util3 = attachmentPresenter.attachmentMvpView;
                        loaderManagerImpl3.destroyLoader(i5);
                        LinkedHashMap linkedHashMap2 = attachmentPresenter.attachments;
                        Uri uri2 = attachment2.uri;
                        if (linkedHashMap2.containsKey(uri2)) {
                            if (attachment2.state == loadingState) {
                                base64Util3.updateAttachmentView(attachment2);
                                linkedHashMap2.put(uri2, attachment2);
                            } else {
                                linkedHashMap2.remove(uri2);
                                base64Util3.removeAttachmentView(attachment2);
                            }
                            new Handler().post(new Fragment.AnonymousClass1(29, attachmentPresenter));
                            break;
                        }
                        break;
                    default:
                        com.fsck.k9.activity.misc.Attachment attachment3 = (com.fsck.k9.activity.misc.Attachment) obj;
                        attachmentPresenter.loaderManager.destroyLoader(asyncTaskLoader.mId);
                        Attachment.LoadingState loadingState2 = attachment3.state;
                        Uri uri3 = attachment3.uri;
                        LinkedHashMap linkedHashMap3 = attachmentPresenter.inlineAttachments;
                        if (loadingState2 == loadingState) {
                            linkedHashMap3.put(uri3, new InlineAttachment(((InlineAttachment) linkedHashMap3.get(uri3)).contentId, attachment3));
                        } else {
                            linkedHashMap3.remove(uri3);
                        }
                        new Handler().post(new Fragment.AnonymousClass1(29, attachmentPresenter));
                        break;
                }
            }

            @Override // androidx.loader.app.LoaderManager.LoaderCallbacks
            public final void onLoaderReset(AsyncTaskLoader asyncTaskLoader) {
                int i32 = i3;
            }

            private final void onLoaderReset$com$fsck$k9$activity$compose$AttachmentPresenter$1(AsyncTaskLoader asyncTaskLoader) {
            }

            private final void onLoaderReset$com$fsck$k9$activity$compose$AttachmentPresenter$2(AsyncTaskLoader asyncTaskLoader) {
            }

            private final void onLoaderReset$com$fsck$k9$activity$compose$AttachmentPresenter$3(AsyncTaskLoader asyncTaskLoader) {
            }
        };
        this.context = context;
        this.attachmentMvpView = base64Util;
        this.loaderManager = loaderManagerImpl;
        this.listener = messageCompose;
    }

    public final void addAttachment(Uri uri, String str, boolean z, boolean z2) {
        if (this.attachments.containsKey(uri)) {
            return;
        }
        int nextFreeLoaderId = getNextFreeLoaderId();
        uri.getClass();
        addAttachmentAndStartLoader(new com.fsck.k9.activity.misc.Attachment(uri, Attachment.LoadingState.URI_ONLY, nextFreeLoaderId, str, z, null, null, null, z2));
    }

    public final void addAttachmentAndStartLoader(com.fsck.k9.activity.misc.Attachment attachment) {
        this.attachments.put(attachment.uri, attachment);
        this.listener.changesMadeSinceLastSave = true;
        this.attachmentMvpView.addAttachmentView(attachment);
        Attachment.LoadingState loadingState = attachment.state;
        if (loadingState == Attachment.LoadingState.URI_ONLY) {
            initAttachmentInfoLoader(attachment);
        } else if (loadingState == Attachment.LoadingState.METADATA) {
            initAttachmentContentLoader(attachment);
        } else {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Attachment can only be added in URI_ONLY or METADATA state!");
        }
    }

    public final boolean checkOkForSendingOrDraftSaving() {
        String string;
        if (this.actionToPerformAfterWaiting == 1) {
            Iterator it = this.attachments.values().iterator();
            while (it.hasNext()) {
                AsyncTaskLoader loader = this.loaderManager.getLoader(((com.fsck.k9.activity.misc.Attachment) it.next()).loaderId);
                if (loader != null && loader.mStarted) {
                    this.actionToPerformAfterWaiting = 2;
                    MessageCompose messageCompose = (MessageCompose) this.attachmentMvpView.inverseAlphabet;
                    int ordinal = ImageAnalysis$$ExternalSyntheticLambda3.ordinal(2);
                    if (ordinal == 1) {
                        string = messageCompose.getString(R.string.fetching_attachment_dialog_title_send);
                    } else if (ordinal == 2) {
                        string = messageCompose.getString(R.string.fetching_attachment_dialog_title_save);
                    }
                    String string2 = messageCompose.getString(R.string.fetching_attachment_dialog_message);
                    ProgressDialogFragment progressDialogFragment = new ProgressDialogFragment();
                    Bundle bundle = new Bundle();
                    bundle.putString("title", string);
                    bundle.putString("message", string2);
                    progressDialogFragment.setArguments(bundle);
                    progressDialogFragment.show(messageCompose.getSupportFragmentManager(), "waitingForAttachment");
                    return true;
                }
            }
            return false;
        }
        return true;
    }

    public final int getNextFreeLoaderId() {
        int i = this.nextLoaderId;
        if (i < 63) {
            this.nextLoaderId = i + 1;
            return i | 64;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$1((Object) "more than 63 attachments? hum.");
        return 0;
    }

    public final void initAttachmentContentLoader(com.fsck.k9.activity.misc.Attachment attachment) {
        if (attachment.state != Attachment.LoadingState.METADATA) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("initAttachmentContentLoader can only be called for METADATA state!");
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putParcelable("attachment", attachment.uri);
        this.loaderManager.initLoader(attachment.loaderId, bundle, this.mAttachmentContentLoaderCallback);
    }

    public final void initAttachmentInfoLoader(com.fsck.k9.activity.misc.Attachment attachment) {
        if (attachment.state != Attachment.LoadingState.URI_ONLY) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("initAttachmentInfoLoader can only be called for URI_ONLY state!");
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putParcelable("attachment", attachment.uri);
        this.loaderManager.initLoader(attachment.loaderId, bundle, this.mAttachmentInfoLoaderCallback);
    }

    public final boolean loadAllAvailableAttachments(MessageViewInfo messageViewInfo) {
        boolean z = true;
        for (AttachmentViewInfo attachmentViewInfo : messageViewInfo.attachments) {
            boolean z2 = attachmentViewInfo.isContentAvailable;
            long j = attachmentViewInfo.size;
            String str = attachmentViewInfo.displayName;
            String str2 = attachmentViewInfo.mimeType;
            Uri uri = attachmentViewInfo.internalUri;
            if (z2) {
                boolean z3 = attachmentViewInfo.inlineAttachment;
                Attachment.LoadingState loadingState = Attachment.LoadingState.METADATA;
                if (z3) {
                    LinkedHashMap linkedHashMap = this.inlineAttachments;
                    if (linkedHashMap.containsKey(uri)) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Received the same attachmentViewInfo twice!");
                        return false;
                    }
                    int nextFreeLoaderId = getNextFreeLoaderId();
                    uri.getClass();
                    com.fsck.k9.activity.misc.Attachment attachment = new com.fsck.k9.activity.misc.Attachment(uri, loadingState, nextFreeLoaderId, str2, true, str, Long.valueOf(j), null, true);
                    InlineAttachment inlineAttachment = new InlineAttachment(attachmentViewInfo.part.getContentId(), attachment);
                    Uri uri2 = attachment.uri;
                    linkedHashMap.put(uri2, inlineAttachment);
                    Bundle bundle = new Bundle();
                    bundle.putParcelable("attachment", uri2);
                    this.loaderManager.initLoader(attachment.loaderId, bundle, this.mInlineAttachmentContentLoaderCallback);
                } else {
                    if (this.attachments.containsKey(uri)) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Received the same attachmentViewInfo twice!");
                        return false;
                    }
                    int nextFreeLoaderId2 = getNextFreeLoaderId();
                    uri.getClass();
                    addAttachmentAndStartLoader(new com.fsck.k9.activity.misc.Attachment(uri, loadingState, nextFreeLoaderId2, str2, true, str, Long.valueOf(j), null, true));
                }
            } else {
                z = false;
            }
        }
        return z;
    }

    public final void onActivityResult(int i, int i2, Intent intent) {
        if (i2 != 1) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1((Object) "onActivityResult must only be called for our request code");
            return;
        }
        if (i == -1 && intent != null) {
            ClipData clipData = intent.getClipData();
            if (clipData == null) {
                Uri data = intent.getData();
                if (data != null) {
                    addAttachment(data, null, false, false);
                    return;
                }
                return;
            }
            int itemCount = clipData.getItemCount();
            for (int i3 = 0; i3 < itemCount; i3++) {
                Uri uri = clipData.getItemAt(i3).getUri();
                if (uri != null) {
                    addAttachment(uri, null, false, false);
                }
            }
        }
    }
}
