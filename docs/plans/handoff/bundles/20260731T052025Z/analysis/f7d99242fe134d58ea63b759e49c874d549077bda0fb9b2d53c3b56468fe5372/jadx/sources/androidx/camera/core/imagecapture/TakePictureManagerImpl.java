package androidx.camera.core.imagecapture;

import android.util.Log;
import androidx.camera.core.ForwardingImageProxy;
import androidx.camera.core.ImageCaptureException;
import androidx.camera.core.Preview$$ExternalSyntheticLambda0;
import androidx.camera.core.impl.Config;
import androidx.camera.core.impl.ImageReaderProxy;
import androidx.core.view.MenuHostHelper;
import androidx.room.util.DBUtil$$ExternalSyntheticBUOutline0;
import androidx.room.util.RelationUtil;
import androidx.transition.Transition;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Iterator;
import okhttp3.Dispatcher;
import okhttp3.internal.connection.RouteSelector;
import org.jsoup.helper.Validate;
import org.slf4j.helpers.Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class TakePictureManagerImpl implements ForwardingImageProxy.OnImageCloseListener {
    public Dispatcher mImagePipeline;
    public final ArrayList mIncompleteRequests;
    public final ArrayDeque mNewRequests = new ArrayDeque();
    public boolean mPaused = false;

    public TakePictureManagerImpl(Transition.AnonymousClass1 anonymousClass1) {
        Validate.checkMainThread();
        this.mIncompleteRequests = new ArrayList();
    }

    public final void abortRequests() {
        Validate.checkMainThread();
        new ImageCaptureException(3, "Camera is closed.", null);
        ArrayDeque arrayDeque = this.mNewRequests;
        Iterator it = arrayDeque.iterator();
        if (it.hasNext()) {
            throw Config.CC.m(it);
        }
        arrayDeque.clear();
        Iterator it2 = new ArrayList(this.mIncompleteRequests).iterator();
        if (it2.hasNext()) {
            Config.CC.m$1(it2.next());
            throw null;
        }
    }

    public final void issueNextRequest() {
        int maxImages;
        Validate.checkMainThread();
        Log.d("TakePictureManagerImpl", "Issue the next TakePictureRequest.");
        if (this.mPaused) {
            Log.d("TakePictureManagerImpl", "The class is paused.");
            return;
        }
        Dispatcher dispatcher = this.mImagePipeline;
        dispatcher.getClass();
        Validate.checkMainThread();
        MenuHostHelper menuHostHelper = (MenuHostHelper) dispatcher.readyAsyncCalls;
        menuHostHelper.getClass();
        Validate.checkMainThread();
        RelationUtil.checkState("The ImageReader is not initialized.", ((RouteSelector) menuHostHelper.mOnInvalidateMenuCallback) != null);
        RouteSelector routeSelector = (RouteSelector) menuHostHelper.mOnInvalidateMenuCallback;
        synchronized (routeSelector.address) {
            maxImages = ((ImageReaderProxy) routeSelector.routeDatabase).getMaxImages() - routeSelector.nextProxyIndex;
        }
        if (maxImages == 0) {
            Log.d("TakePictureManagerImpl", "Too many acquire images. Close image to be able to process next.");
        } else if (this.mNewRequests.poll() == null) {
            Log.d("TakePictureManagerImpl", "No new request.");
        } else {
            DBUtil$$ExternalSyntheticBUOutline0.m();
        }
    }

    @Override // androidx.camera.core.ForwardingImageProxy.OnImageCloseListener
    public final void onImageClose(ForwardingImageProxy forwardingImageProxy) {
        Util.mainThreadExecutor().execute(new Preview$$ExternalSyntheticLambda0(11, this));
    }
}
