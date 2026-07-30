package defpackage;

import android.app.Activity;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import com.facebook.AccessToken;
import com.facebook.appevents.InternalAppEventsLogger;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.facebook.internal.AnalyticsEvents;
import com.facebook.internal.AppCall;
import com.facebook.internal.CallbackManagerImpl;
import com.facebook.internal.DialogFeature;
import com.facebook.internal.DialogPresenter;
import com.facebook.internal.FacebookDialogBase;
import com.facebook.internal.FacebookRequestErrorClassification;
import com.facebook.internal.NativeAppCallAttachmentStore;
import com.facebook.internal.Utility;
import com.facebook.share.internal.ShareFeedContent;
import com.facebook.share.model.ShareCameraEffectContent;
import com.facebook.share.model.ShareContent;
import com.facebook.share.model.ShareHashtag;
import com.facebook.share.model.ShareLinkContent;
import com.facebook.share.model.ShareMediaContent;
import com.facebook.share.model.SharePhoto;
import com.facebook.share.model.SharePhotoContent;
import com.facebook.share.model.ShareStoryContent;
import com.facebook.share.model.ShareVideoContent;
import defpackage.BD;
import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;

/* loaded from: classes.dex */
public class DD extends FacebookDialogBase<ShareContent<?, ?>, C0247Ha> {

    /* renamed from: do, reason: not valid java name */
    public static final /* synthetic */ int f539do = 0;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ArrayList f540do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final boolean f541do;

    /* renamed from: DD$case, reason: invalid class name */
    public final class Ccase extends FacebookDialogBase<ShareContent<?, ?>, C0247Ha>.ModeHandler {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ DD f542do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public Object f543do;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Ccase(DD dd) {
            super(dd);
            C0173Do.m401try(dd, "this$0");
            this.f542do = dd;
            this.f543do = Cnew.NATIVE;
        }

        @Override // com.facebook.internal.FacebookDialogBase.ModeHandler
        public final boolean canShow(ShareContent<?, ?> shareContent, boolean z) {
            ShareContent<?, ?> shareContent2 = shareContent;
            C0173Do.m401try(shareContent2, "content");
            if (!(shareContent2 instanceof ShareStoryContent)) {
                return false;
            }
            int i = DD.f539do;
            DialogFeature m362do = Cif.m362do(shareContent2.getClass());
            return m362do != null && DialogPresenter.canPresentNativeDialogWithFeature(m362do);
        }

        @Override // com.facebook.internal.FacebookDialogBase.ModeHandler
        public final AppCall createAppCall(ShareContent<?, ?> shareContent) {
            ShareContent<?, ?> shareContent2 = shareContent;
            C0173Do.m401try(shareContent2, "content");
            BD.Cnew cnew = BD.f218do;
            BD.m158if(shareContent2, BD.f217do);
            DD dd = this.f542do;
            AppCall createBaseAppCall = dd.createBaseAppCall();
            boolean mo361if = dd.mo361if();
            int i = DD.f539do;
            DialogFeature m362do = Cif.m362do(shareContent2.getClass());
            if (m362do == null) {
                return null;
            }
            DialogPresenter.setupAppCallForNativeDialog(createBaseAppCall, new FD(createBaseAppCall, shareContent2, mo361if), m362do);
            return createBaseAppCall;
        }

        @Override // com.facebook.internal.FacebookDialogBase.ModeHandler
        public final Object getMode() {
            return this.f543do;
        }

        @Override // com.facebook.internal.FacebookDialogBase.ModeHandler
        public final void setMode(Object obj) {
            C0173Do.m401try(obj, "<set-?>");
            this.f543do = obj;
        }
    }

    /* renamed from: DD$do, reason: invalid class name */
    public final class Cdo extends FacebookDialogBase<ShareContent<?, ?>, C0247Ha>.ModeHandler {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ DD f544do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public Object f545do;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cdo(DD dd) {
            super(dd);
            C0173Do.m401try(dd, "this$0");
            this.f544do = dd;
            this.f545do = Cnew.NATIVE;
        }

        @Override // com.facebook.internal.FacebookDialogBase.ModeHandler
        public final boolean canShow(ShareContent<?, ?> shareContent, boolean z) {
            ShareContent<?, ?> shareContent2 = shareContent;
            C0173Do.m401try(shareContent2, "content");
            if (!(shareContent2 instanceof ShareCameraEffectContent)) {
                return false;
            }
            int i = DD.f539do;
            DialogFeature m362do = Cif.m362do(shareContent2.getClass());
            return m362do != null && DialogPresenter.canPresentNativeDialogWithFeature(m362do);
        }

        @Override // com.facebook.internal.FacebookDialogBase.ModeHandler
        public final AppCall createAppCall(ShareContent<?, ?> shareContent) {
            ShareContent<?, ?> shareContent2 = shareContent;
            C0173Do.m401try(shareContent2, "content");
            BD.m158if(shareContent2, BD.f216do);
            DD dd = this.f544do;
            AppCall createBaseAppCall = dd.createBaseAppCall();
            boolean mo361if = dd.mo361if();
            int i = DD.f539do;
            DialogFeature m362do = Cif.m362do(shareContent2.getClass());
            if (m362do == null) {
                return null;
            }
            DialogPresenter.setupAppCallForNativeDialog(createBaseAppCall, new CD(createBaseAppCall, shareContent2, mo361if), m362do);
            return createBaseAppCall;
        }

        @Override // com.facebook.internal.FacebookDialogBase.ModeHandler
        public final Object getMode() {
            return this.f545do;
        }

        @Override // com.facebook.internal.FacebookDialogBase.ModeHandler
        public final void setMode(Object obj) {
            C0173Do.m401try(obj, "<set-?>");
            this.f545do = obj;
        }
    }

    /* renamed from: DD$else, reason: invalid class name */
    public final class Celse extends FacebookDialogBase<ShareContent<?, ?>, C0247Ha>.ModeHandler {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ DD f546do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public Object f547do;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Celse(DD dd) {
            super(dd);
            C0173Do.m401try(dd, "this$0");
            this.f546do = dd;
            this.f547do = Cnew.WEB;
        }

        @Override // com.facebook.internal.FacebookDialogBase.ModeHandler
        public final boolean canShow(ShareContent<?, ?> shareContent, boolean z) {
            ShareContent<?, ?> shareContent2 = shareContent;
            C0173Do.m401try(shareContent2, "content");
            int i = DD.f539do;
            Class<?> cls = shareContent2.getClass();
            if (!ShareLinkContent.class.isAssignableFrom(cls)) {
                if (SharePhotoContent.class.isAssignableFrom(cls)) {
                    Date date = AccessToken.f9198new;
                    if (AccessToken.Cif.m5257for()) {
                    }
                }
                return false;
            }
            return true;
        }

        @Override // com.facebook.internal.FacebookDialogBase.ModeHandler
        public final AppCall createAppCall(ShareContent<?, ?> shareContent) {
            Bundle bundle;
            ShareContent<?, ?> shareContent2 = shareContent;
            C0173Do.m401try(shareContent2, "content");
            DD dd = this.f546do;
            DD.m360do(dd, dd.getActivityContext(), shareContent2, Cnew.WEB);
            AppCall createBaseAppCall = dd.createBaseAppCall();
            BD.m158if(shareContent2, BD.f218do);
            boolean z = shareContent2 instanceof ShareLinkContent;
            if (z) {
                ShareLinkContent shareLinkContent = (ShareLinkContent) shareContent2;
                bundle = new Bundle();
                Utility utility = Utility.INSTANCE;
                ShareHashtag shareHashtag = ((ShareContent) shareLinkContent).f9439do;
                Utility.putNonEmptyString(bundle, "hashtag", shareHashtag == null ? null : shareHashtag.f9447break);
                Utility.putUri(bundle, "href", ((ShareContent) shareLinkContent).f9438do);
                Utility.putNonEmptyString(bundle, "quote", shareLinkContent.f9449const);
            } else {
                if (!(shareContent2 instanceof SharePhotoContent)) {
                    return null;
                }
                SharePhotoContent sharePhotoContent = (SharePhotoContent) shareContent2;
                UUID callId = createBaseAppCall.getCallId();
                SharePhotoContent.Cdo cdo = new SharePhotoContent.Cdo();
                ((ShareContent.Cdo) cdo).f9441do = ((ShareContent) sharePhotoContent).f9438do;
                List<String> list = ((ShareContent) sharePhotoContent).f9440do;
                ((ShareContent.Cdo) cdo).f9444do = list == null ? null : DesugarCollections.unmodifiableList(list);
                ((ShareContent.Cdo) cdo).f9443do = sharePhotoContent.f9435break;
                cdo.f9446if = sharePhotoContent.f9436catch;
                cdo.f9445for = sharePhotoContent.f9437class;
                ((ShareContent.Cdo) cdo).f9442do = ((ShareContent) sharePhotoContent).f9439do;
                List<SharePhoto> list2 = sharePhotoContent.f9471if;
                cdo.m5532do(list2);
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                int size = list2.size() - 1;
                if (size >= 0) {
                    int i = 0;
                    while (true) {
                        int i2 = i + 1;
                        SharePhoto sharePhoto = list2.get(i);
                        Bitmap bitmap = sharePhoto.f9463do;
                        if (bitmap != null) {
                            NativeAppCallAttachmentStore.Attachment createAttachment = NativeAppCallAttachmentStore.createAttachment(callId, bitmap);
                            SharePhoto.Cdo m5531do = new SharePhoto.Cdo().m5531do(sharePhoto);
                            m5531do.f9468do = Uri.parse(createAttachment.getAttachmentUrl());
                            m5531do.f9467do = null;
                            sharePhoto = new SharePhoto(m5531do);
                            arrayList2.add(createAttachment);
                        }
                        arrayList.add(sharePhoto);
                        if (i2 > size) {
                            break;
                        }
                        i = i2;
                    }
                }
                cdo.f9472do.clear();
                cdo.m5532do(arrayList);
                NativeAppCallAttachmentStore.addAttachments(arrayList2);
                SharePhotoContent sharePhotoContent2 = new SharePhotoContent(cdo);
                bundle = new Bundle();
                Utility utility2 = Utility.INSTANCE;
                ShareHashtag shareHashtag2 = ((ShareContent) sharePhotoContent2).f9439do;
                Utility.putNonEmptyString(bundle, "hashtag", shareHashtag2 == null ? null : shareHashtag2.f9447break);
                Iterable iterable = sharePhotoContent2.f9471if;
                if (iterable == null) {
                    iterable = C0471Rf.f3217do;
                }
                Iterable iterable2 = iterable;
                ArrayList arrayList3 = new ArrayList(B8.c(iterable2));
                Iterator it = iterable2.iterator();
                while (it.hasNext()) {
                    arrayList3.add(String.valueOf(((SharePhoto) it.next()).f9464do));
                }
                Object[] array = arrayList3.toArray(new String[0]);
                if (array == null) {
                    throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
                }
                bundle.putStringArray("media", (String[]) array);
            }
            DialogPresenter dialogPresenter = DialogPresenter.INSTANCE;
            DialogPresenter.setupAppCallForWebDialog(createBaseAppCall, (z || (shareContent2 instanceof SharePhotoContent)) ? "share" : null, bundle);
            return createBaseAppCall;
        }

        @Override // com.facebook.internal.FacebookDialogBase.ModeHandler
        public final Object getMode() {
            return this.f547do;
        }

        @Override // com.facebook.internal.FacebookDialogBase.ModeHandler
        public final void setMode(Object obj) {
            C0173Do.m401try(obj, "<set-?>");
            this.f547do = obj;
        }
    }

    /* renamed from: DD$for, reason: invalid class name */
    public final class Cfor extends FacebookDialogBase<ShareContent<?, ?>, C0247Ha>.ModeHandler {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ DD f548do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public Object f549do;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cfor(DD dd) {
            super(dd);
            C0173Do.m401try(dd, "this$0");
            this.f548do = dd;
            this.f549do = Cnew.FEED;
        }

        @Override // com.facebook.internal.FacebookDialogBase.ModeHandler
        public final boolean canShow(ShareContent<?, ?> shareContent, boolean z) {
            ShareContent<?, ?> shareContent2 = shareContent;
            C0173Do.m401try(shareContent2, "content");
            return (shareContent2 instanceof ShareLinkContent) || (shareContent2 instanceof ShareFeedContent);
        }

        @Override // com.facebook.internal.FacebookDialogBase.ModeHandler
        public final AppCall createAppCall(ShareContent<?, ?> shareContent) {
            Bundle bundle;
            ShareContent<?, ?> shareContent2 = shareContent;
            C0173Do.m401try(shareContent2, "content");
            DD dd = this.f548do;
            DD.m360do(dd, dd.getActivityContext(), shareContent2, Cnew.FEED);
            AppCall createBaseAppCall = dd.createBaseAppCall();
            if (shareContent2 instanceof ShareLinkContent) {
                BD.m158if(shareContent2, BD.f218do);
                ShareLinkContent shareLinkContent = (ShareLinkContent) shareContent2;
                bundle = new Bundle();
                Utility utility = Utility.INSTANCE;
                Utility.putNonEmptyString(bundle, "link", Utility.getUriString(((ShareContent) shareLinkContent).f9438do));
                Utility.putNonEmptyString(bundle, "quote", shareLinkContent.f9449const);
                ShareHashtag shareHashtag = ((ShareContent) shareLinkContent).f9439do;
                Utility.putNonEmptyString(bundle, "hashtag", shareHashtag != null ? shareHashtag.f9447break : null);
            } else {
                if (!(shareContent2 instanceof ShareFeedContent)) {
                    return null;
                }
                ShareFeedContent shareFeedContent = (ShareFeedContent) shareContent2;
                bundle = new Bundle();
                Utility utility2 = Utility.INSTANCE;
                Utility.putNonEmptyString(bundle, "to", shareFeedContent.f9406const);
                Utility.putNonEmptyString(bundle, "link", shareFeedContent.f9407final);
                Utility.putNonEmptyString(bundle, "picture", shareFeedContent.f9408import);
                Utility.putNonEmptyString(bundle, "source", shareFeedContent.f9409native);
                Utility.putNonEmptyString(bundle, FacebookRequestErrorClassification.KEY_NAME, shareFeedContent.f9410super);
                Utility.putNonEmptyString(bundle, "caption", shareFeedContent.f9411throw);
                Utility.putNonEmptyString(bundle, ViewHierarchyConstants.DESC_KEY, shareFeedContent.f9412while);
            }
            DialogPresenter.setupAppCallForWebDialog(createBaseAppCall, "feed", bundle);
            return createBaseAppCall;
        }

        @Override // com.facebook.internal.FacebookDialogBase.ModeHandler
        public final Object getMode() {
            return this.f549do;
        }

        @Override // com.facebook.internal.FacebookDialogBase.ModeHandler
        public final void setMode(Object obj) {
            C0173Do.m401try(obj, "<set-?>");
            this.f549do = obj;
        }
    }

    /* renamed from: DD$if, reason: invalid class name */
    public static final class Cif {
        /* renamed from: do, reason: not valid java name */
        public static DialogFeature m362do(Class cls) {
            if (ShareLinkContent.class.isAssignableFrom(cls)) {
                return GD.SHARE_DIALOG;
            }
            if (SharePhotoContent.class.isAssignableFrom(cls)) {
                return GD.PHOTOS;
            }
            if (ShareVideoContent.class.isAssignableFrom(cls)) {
                return GD.VIDEO;
            }
            if (ShareMediaContent.class.isAssignableFrom(cls)) {
                return GD.MULTIMEDIA;
            }
            if (ShareCameraEffectContent.class.isAssignableFrom(cls)) {
                return J6.f1587do;
            }
            if (ShareStoryContent.class.isAssignableFrom(cls)) {
                return MD.f2137do;
            }
            return null;
        }
    }

    /* renamed from: DD$new, reason: invalid class name */
    public enum Cnew {
        AUTOMATIC,
        NATIVE,
        WEB,
        FEED;

        /* renamed from: values, reason: to resolve conflict with enum method */
        public static Cnew[] valuesCustom() {
            return (Cnew[]) Arrays.copyOf(values(), 4);
        }
    }

    /* renamed from: DD$try, reason: invalid class name */
    public final class Ctry extends FacebookDialogBase<ShareContent<?, ?>, C0247Ha>.ModeHandler {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ DD f555do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public Object f556do;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Ctry(DD dd) {
            super(dd);
            C0173Do.m401try(dd, "this$0");
            this.f555do = dd;
            this.f556do = Cnew.NATIVE;
        }

        /* JADX WARN: Code restructure failed: missing block: B:20:0x0043, code lost:
        
            if (com.facebook.internal.DialogPresenter.canPresentNativeDialogWithFeature(defpackage.GD.LINK_SHARE_QUOTES) != false) goto L28;
         */
        /* JADX WARN: Removed duplicated region for block: B:24:0x004b  */
        /* JADX WARN: Removed duplicated region for block: B:34:? A[RETURN, SYNTHETIC] */
        @Override // com.facebook.internal.FacebookDialogBase.ModeHandler
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final boolean canShow(com.facebook.share.model.ShareContent<?, ?> r4, boolean r5) {
            /*
                r3 = this;
                com.facebook.share.model.ShareContent r4 = (com.facebook.share.model.ShareContent) r4
                java.lang.String r0 = "content"
                defpackage.C0173Do.m401try(r4, r0)
                boolean r0 = r4 instanceof com.facebook.share.model.ShareCameraEffectContent
                r1 = 0
                if (r0 != 0) goto L63
                boolean r0 = r4 instanceof com.facebook.share.model.ShareStoryContent
                if (r0 == 0) goto L11
                goto L63
            L11:
                r0 = 1
                if (r5 != 0) goto L48
                com.facebook.share.model.ShareHashtag r5 = r4.f9439do
                if (r5 == 0) goto L21
                com.facebook.internal.DialogPresenter r5 = com.facebook.internal.DialogPresenter.INSTANCE
                GD r5 = defpackage.GD.HASHTAG
                boolean r5 = com.facebook.internal.DialogPresenter.canPresentNativeDialogWithFeature(r5)
                goto L22
            L21:
                r5 = 1
            L22:
                boolean r2 = r4 instanceof com.facebook.share.model.ShareLinkContent
                if (r2 == 0) goto L49
                r2 = r4
                com.facebook.share.model.ShareLinkContent r2 = (com.facebook.share.model.ShareLinkContent) r2
                java.lang.String r2 = r2.f9449const
                if (r2 == 0) goto L36
                int r2 = r2.length()
                if (r2 != 0) goto L34
                goto L36
            L34:
                r2 = 0
                goto L37
            L36:
                r2 = 1
            L37:
                if (r2 != 0) goto L49
                if (r5 == 0) goto L46
                com.facebook.internal.DialogPresenter r5 = com.facebook.internal.DialogPresenter.INSTANCE
                GD r5 = defpackage.GD.LINK_SHARE_QUOTES
                boolean r5 = com.facebook.internal.DialogPresenter.canPresentNativeDialogWithFeature(r5)
                if (r5 == 0) goto L46
                goto L48
            L46:
                r5 = 0
                goto L49
            L48:
                r5 = 1
            L49:
                if (r5 == 0) goto L63
                int r5 = defpackage.DD.f539do
                java.lang.Class r4 = r4.getClass()
                com.facebook.internal.DialogFeature r4 = defpackage.DD.Cif.m362do(r4)
                if (r4 == 0) goto L5f
                boolean r4 = com.facebook.internal.DialogPresenter.canPresentNativeDialogWithFeature(r4)
                if (r4 == 0) goto L5f
                r4 = 1
                goto L60
            L5f:
                r4 = 0
            L60:
                if (r4 == 0) goto L63
                r1 = 1
            L63:
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: defpackage.DD.Ctry.canShow(java.lang.Object, boolean):boolean");
        }

        @Override // com.facebook.internal.FacebookDialogBase.ModeHandler
        public final AppCall createAppCall(ShareContent<?, ?> shareContent) {
            ShareContent<?, ?> shareContent2 = shareContent;
            C0173Do.m401try(shareContent2, "content");
            DD dd = this.f555do;
            DD.m360do(dd, dd.getActivityContext(), shareContent2, Cnew.NATIVE);
            BD.m158if(shareContent2, BD.f216do);
            AppCall createBaseAppCall = dd.createBaseAppCall();
            boolean mo361if = dd.mo361if();
            int i = DD.f539do;
            DialogFeature m362do = Cif.m362do(shareContent2.getClass());
            if (m362do == null) {
                return null;
            }
            DialogPresenter.setupAppCallForNativeDialog(createBaseAppCall, new ED(createBaseAppCall, shareContent2, mo361if), m362do);
            return createBaseAppCall;
        }

        @Override // com.facebook.internal.FacebookDialogBase.ModeHandler
        public final Object getMode() {
            return this.f556do;
        }

        @Override // com.facebook.internal.FacebookDialogBase.ModeHandler
        public final void setMode(Object obj) {
            C0173Do.m401try(obj, "<set-?>");
            this.f556do = obj;
        }
    }

    static {
        new Cif();
        CallbackManagerImpl.RequestCodeOffset.Share.toRequestCode();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DD(Activity activity, int i) {
        super(activity, i);
        C0173Do.m401try(activity, "activity");
        this.f541do = true;
        this.f540do = O4.m1608for(new Ctry(this), new Cfor(this), new Celse(this), new Cdo(this), new Ccase(this));
        CallbackManagerImpl.Companion.registerStaticCallback(i, new HD(i));
    }

    /* renamed from: do, reason: not valid java name */
    public static final void m360do(DD dd, Activity activity, ShareContent shareContent, Cnew cnew) {
        if (dd.f541do) {
            cnew = Cnew.AUTOMATIC;
        }
        int ordinal = cnew.ordinal();
        String str = "unknown";
        String str2 = ordinal != 0 ? ordinal != 1 ? ordinal != 2 ? "unknown" : AnalyticsEvents.PARAMETER_SHARE_DIALOG_SHOW_WEB : AnalyticsEvents.PARAMETER_SHARE_DIALOG_SHOW_NATIVE : AnalyticsEvents.PARAMETER_SHARE_DIALOG_SHOW_AUTOMATIC;
        DialogFeature m362do = Cif.m362do(shareContent.getClass());
        if (m362do == GD.SHARE_DIALOG) {
            str = AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_STATUS;
        } else if (m362do == GD.PHOTOS) {
            str = AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_PHOTO;
        } else if (m362do == GD.VIDEO) {
            str = AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO;
        }
        InternalAppEventsLogger createInstance = InternalAppEventsLogger.Companion.createInstance(activity, C3756th.m8303if());
        Bundle bundle = new Bundle();
        bundle.putString("fb_share_dialog_show", str2);
        bundle.putString(AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_TYPE, str);
        createInstance.logEventImplicitly("fb_share_dialog_show", bundle);
    }

    @Override // com.facebook.internal.FacebookDialogBase
    public AppCall createBaseAppCall() {
        return new AppCall(getRequestCode(), null, 2, null);
    }

    @Override // com.facebook.internal.FacebookDialogBase
    public List<FacebookDialogBase<ShareContent<?, ?>, C0247Ha>.ModeHandler> getOrderedModeHandlers() {
        return this.f540do;
    }

    /* renamed from: if, reason: not valid java name */
    public boolean mo361if() {
        return false;
    }

    @Override // com.facebook.internal.FacebookDialogBase
    public void registerCallbackImpl(CallbackManagerImpl callbackManagerImpl, InterfaceC2940ih<C0247Ha> interfaceC2940ih) {
        C0173Do.m401try(callbackManagerImpl, "callbackManager");
        C0173Do.m401try(null, "callback");
        int requestCode = getRequestCode();
        callbackManagerImpl.registerCallback(requestCode, new ID(requestCode));
    }
}
