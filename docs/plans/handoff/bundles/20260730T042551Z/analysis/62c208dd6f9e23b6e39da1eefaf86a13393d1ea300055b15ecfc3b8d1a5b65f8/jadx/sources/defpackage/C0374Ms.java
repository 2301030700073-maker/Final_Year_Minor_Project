package defpackage;

import android.app.Activity;
import android.os.Bundle;
import com.facebook.appevents.InternalAppEventsLogger;
import com.facebook.internal.AnalyticsEvents;
import com.facebook.internal.AppCall;
import com.facebook.internal.CallbackManagerImpl;
import com.facebook.internal.DialogPresenter;
import com.facebook.internal.FacebookDialogBase;
import com.facebook.share.model.ShareContent;
import com.facebook.share.model.ShareLinkContent;
import defpackage.BD;
import java.util.ArrayList;
import java.util.List;

/* renamed from: Ms, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0374Ms extends DD {

    /* renamed from: Ms$do, reason: invalid class name */
    public class Cdo extends FacebookDialogBase<ShareContent<?, ?>, C0247Ha>.ModeHandler {
        public Cdo() {
            super(C0374Ms.this);
        }

        @Override // com.facebook.internal.FacebookDialogBase.ModeHandler
        public final boolean canShow(ShareContent<?, ?> shareContent, boolean z) {
            ShareContent<?, ?> shareContent2 = shareContent;
            if (shareContent2 == null) {
                return false;
            }
            EnumC0396Ns enumC0396Ns = ShareLinkContent.class.isAssignableFrom(shareContent2.getClass()) ? EnumC0396Ns.MESSAGE_DIALOG : null;
            return enumC0396Ns != null && DialogPresenter.canPresentNativeDialogWithFeature(enumC0396Ns);
        }

        @Override // com.facebook.internal.FacebookDialogBase.ModeHandler
        public final AppCall createAppCall(ShareContent<?, ?> shareContent) {
            ShareContent<?, ?> shareContent2 = shareContent;
            BD.Cnew cnew = BD.f218do;
            BD.m158if(shareContent2, BD.f216do);
            C0374Ms c0374Ms = C0374Ms.this;
            AppCall createBaseAppCall = c0374Ms.createBaseAppCall();
            Activity activityContext = c0374Ms.getActivityContext();
            boolean isAssignableFrom = ShareLinkContent.class.isAssignableFrom(shareContent2.getClass());
            EnumC0396Ns enumC0396Ns = EnumC0396Ns.MESSAGE_DIALOG;
            EnumC0396Ns enumC0396Ns2 = isAssignableFrom ? enumC0396Ns : null;
            String str = enumC0396Ns2 == enumC0396Ns ? AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_STATUS : enumC0396Ns2 == EnumC0396Ns.MESSENGER_GENERIC_TEMPLATE ? AnalyticsEvents.PARAMETER_SHARE_MESSENGER_GENERIC_TEMPLATE : enumC0396Ns2 == EnumC0396Ns.MESSENGER_MEDIA_TEMPLATE ? AnalyticsEvents.PARAMETER_SHARE_MESSENGER_MEDIA_TEMPLATE : "unknown";
            InternalAppEventsLogger internalAppEventsLogger = new InternalAppEventsLogger(activityContext);
            Bundle bundle = new Bundle();
            bundle.putString(AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_TYPE, str);
            bundle.putString(AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_UUID, createBaseAppCall.getCallId().toString());
            bundle.putString(AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_PAGE_ID, shareContent2.f9436catch);
            internalAppEventsLogger.logEventImplicitly(AnalyticsEvents.EVENT_SHARE_MESSENGER_DIALOG_SHOW, bundle);
            C0352Ls c0352Ls = new C0352Ls(createBaseAppCall, shareContent2);
            if (!ShareLinkContent.class.isAssignableFrom(shareContent2.getClass())) {
                enumC0396Ns = null;
            }
            DialogPresenter.setupAppCallForNativeDialog(createBaseAppCall, c0352Ls, enumC0396Ns);
            return createBaseAppCall;
        }
    }

    static {
        CallbackManagerImpl.RequestCodeOffset.Message.toRequestCode();
    }

    public C0374Ms(Activity activity, int i) {
        super(activity, i);
        CallbackManagerImpl.Companion.registerStaticCallback(i, new HD(i));
    }

    @Override // defpackage.DD, com.facebook.internal.FacebookDialogBase
    public final AppCall createBaseAppCall() {
        return new AppCall(getRequestCode());
    }

    @Override // defpackage.DD, com.facebook.internal.FacebookDialogBase
    public final List<FacebookDialogBase<ShareContent<?, ?>, C0247Ha>.ModeHandler> getOrderedModeHandlers() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new Cdo());
        return arrayList;
    }

    @Override // defpackage.DD
    /* renamed from: if */
    public final boolean mo361if() {
        return false;
    }

    @Override // defpackage.DD, com.facebook.internal.FacebookDialogBase
    public final void registerCallbackImpl(CallbackManagerImpl callbackManagerImpl, InterfaceC2940ih<C0247Ha> interfaceC2940ih) {
        int requestCode = getRequestCode();
        if (!(callbackManagerImpl instanceof CallbackManagerImpl)) {
            throw new C3344mh("Unexpected CallbackManager, please use the provided Factory.");
        }
        callbackManagerImpl.registerCallback(requestCode, new ID(requestCode));
    }
}
