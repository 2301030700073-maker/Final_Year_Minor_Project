package androidx.lifecycle;

import com.fsck.k9.ui.base.BaseActivity$sam$androidx_lifecycle_Observer$0;
import com.fsck.k9.ui.messagelist.MessageListLiveData;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MediatorLiveData$Source implements Observer {
    public final MessageListLiveData mLiveData;
    public final BaseActivity$sam$androidx_lifecycle_Observer$0 mObserver;
    public int mVersion = -1;

    public MediatorLiveData$Source(MessageListLiveData messageListLiveData, BaseActivity$sam$androidx_lifecycle_Observer$0 baseActivity$sam$androidx_lifecycle_Observer$0) {
        this.mLiveData = messageListLiveData;
        this.mObserver = baseActivity$sam$androidx_lifecycle_Observer$0;
    }

    @Override // androidx.lifecycle.Observer
    public final void onChanged(Object obj) {
        int i = this.mVersion;
        int i2 = this.mLiveData.mVersion;
        if (i != i2) {
            this.mVersion = i2;
            this.mObserver.onChanged(obj);
        }
    }
}
