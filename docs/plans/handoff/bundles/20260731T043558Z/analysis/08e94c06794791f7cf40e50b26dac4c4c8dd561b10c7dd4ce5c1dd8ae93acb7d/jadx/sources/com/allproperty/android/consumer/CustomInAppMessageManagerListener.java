package com.allproperty.android.consumer;

import android.net.Uri;
import com.allproperty.android.consumer.modules.EventEmitter;
import com.allproperty.android.consumer.modules.SplashScreen;
import com.braze.enums.inappmessage.ClickAction;
import com.braze.models.inappmessage.IInAppMessage;
import com.braze.models.inappmessage.MessageButton;
import com.braze.ui.inappmessage.BrazeInAppMessageManager;
import com.braze.ui.inappmessage.InAppMessageOperation;
import com.braze.ui.inappmessage.listeners.IInAppMessageManagerListener;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: CustomInAppMessageManagerListener.kt */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0018\u0010\b\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0010\u0010\f\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0002¨\u0006\u0011"}, d2 = {"Lcom/allproperty/android/consumer/CustomInAppMessageManagerListener;", "Lcom/braze/ui/inappmessage/listeners/IInAppMessageManagerListener;", "<init>", "()V", "beforeInAppMessageDisplayed", "Lcom/braze/ui/inappmessage/InAppMessageOperation;", "inAppMessage", "Lcom/braze/models/inappmessage/IInAppMessage;", "onInAppMessageButtonClicked", "", "button", "Lcom/braze/models/inappmessage/MessageButton;", "onInAppMessageClicked", "handleInAppBrowser", "", "uri", "Landroid/net/Uri;", "app_myPublicRelease"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class CustomInAppMessageManagerListener implements IInAppMessageManagerListener {
    @Override // com.braze.ui.inappmessage.listeners.IInAppMessageManagerListener
    public InAppMessageOperation beforeInAppMessageDisplayed(IInAppMessage inAppMessage) {
        Intrinsics.checkNotNullParameter(inAppMessage, "inAppMessage");
        if (SplashScreen.INSTANCE.isShowing()) {
            return InAppMessageOperation.DISPLAY_LATER;
        }
        return super.beforeInAppMessageDisplayed(inAppMessage);
    }

    @Override // com.braze.ui.inappmessage.listeners.IInAppMessageManagerListener
    public boolean onInAppMessageButtonClicked(IInAppMessage inAppMessage, MessageButton button) {
        Intrinsics.checkNotNullParameter(inAppMessage, "inAppMessage");
        Intrinsics.checkNotNullParameter(button, "button");
        boolean z = button.getClickAction() == ClickAction.URI && button.getOpenUriInWebview();
        Uri uri = button.getUri();
        if (z && uri != null) {
            handleInAppBrowser(uri);
            return true;
        }
        return super.onInAppMessageButtonClicked(inAppMessage, button);
    }

    @Override // com.braze.ui.inappmessage.listeners.IInAppMessageManagerListener
    public boolean onInAppMessageClicked(IInAppMessage inAppMessage) {
        Intrinsics.checkNotNullParameter(inAppMessage, "inAppMessage");
        Uri internalUri = inAppMessage.getInternalUri();
        if (inAppMessage.getInternalClickAction() == ClickAction.URI && inAppMessage.getOpenUriInWebView() && internalUri != null) {
            handleInAppBrowser(internalUri);
            return true;
        }
        return super.onInAppMessageClicked(inAppMessage);
    }

    private final void handleInAppBrowser(Uri uri) {
        BrazeInAppMessageManager.INSTANCE.getInstance().hideCurrentlyDisplayingInAppMessage(true);
        BrazeInAppMessageManager.INSTANCE.getInstance().resetAfterInAppMessageClose();
        EventEmitter companion = EventEmitter.INSTANCE.getInstance();
        if (companion != null) {
            String uri2 = uri.toString();
            Intrinsics.checkNotNullExpressionValue(uri2, "toString(...)");
            companion.sendNativeEvent(EventEmitter.IN_APP_BROWSER, uri2);
        }
    }
}
