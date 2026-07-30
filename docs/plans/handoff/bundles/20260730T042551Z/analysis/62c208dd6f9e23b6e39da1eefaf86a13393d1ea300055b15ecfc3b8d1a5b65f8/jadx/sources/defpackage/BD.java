package defpackage;

import android.graphics.Bitmap;
import android.net.Uri;
import com.facebook.internal.AnalyticsEvents;
import com.facebook.internal.Utility;
import com.facebook.internal.Validate;
import com.facebook.share.model.ShareCameraEffectContent;
import com.facebook.share.model.ShareContent;
import com.facebook.share.model.ShareLinkContent;
import com.facebook.share.model.ShareMedia;
import com.facebook.share.model.ShareMediaContent;
import com.facebook.share.model.SharePhoto;
import com.facebook.share.model.SharePhotoContent;
import com.facebook.share.model.ShareStoryContent;
import com.facebook.share.model.ShareVideo;
import com.facebook.share.model.ShareVideoContent;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

/* loaded from: classes.dex */
public final class BD {

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final Cif f217do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final Cnew f218do = new Cnew();

    /* renamed from: do, reason: not valid java name */
    public static final Cfor f216do = new Cfor();

    /* renamed from: BD$do, reason: invalid class name */
    public static final class Cdo extends Cfor {
        @Override // defpackage.BD.Cfor
        /* renamed from: do, reason: not valid java name */
        public final void mo159do(ShareLinkContent shareLinkContent) {
            C0173Do.m401try(shareLinkContent, "linkContent");
            Utility utility = Utility.INSTANCE;
            if (!Utility.isNullOrEmpty(shareLinkContent.f9449const)) {
                throw new C3344mh("Cannot share link content with quote using the share api");
            }
        }

        @Override // defpackage.BD.Cfor
        /* renamed from: else, reason: not valid java name */
        public final void mo160else(ShareVideoContent shareVideoContent) {
            C0173Do.m401try(shareVideoContent, "videoContent");
            Utility utility = Utility.INSTANCE;
            if (!Utility.isNullOrEmpty(shareVideoContent.f9435break)) {
                throw new C3344mh("Cannot share video content with place IDs using the share api");
            }
            if (!Utility.isNullOrEmpty(((ShareContent) shareVideoContent).f9440do)) {
                throw new C3344mh("Cannot share video content with people IDs using the share api");
            }
            if (!Utility.isNullOrEmpty(shareVideoContent.f9437class)) {
                throw new C3344mh("Cannot share video content with referrer URL using the share api");
            }
        }

        @Override // defpackage.BD.Cfor
        /* renamed from: for, reason: not valid java name */
        public final void mo161for(ShareMediaContent shareMediaContent) {
            C0173Do.m401try(shareMediaContent, "mediaContent");
            throw new C3344mh("Cannot share ShareMediaContent using the share api");
        }

        @Override // defpackage.BD.Cfor
        /* renamed from: new, reason: not valid java name */
        public final void mo162new(SharePhoto sharePhoto) {
            C0173Do.m401try(sharePhoto, AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_PHOTO);
            Cnew cnew = BD.f218do;
            Uri uri = sharePhoto.f9464do;
            Bitmap bitmap = sharePhoto.f9463do;
            if (bitmap == null && uri == null) {
                throw new C3344mh("SharePhoto does not have a Bitmap or ImageUrl specified");
            }
            if (bitmap == null && Utility.isWebUri(uri)) {
                throw new C3344mh("Cannot set the ImageUrl of a SharePhoto to the Uri of an image on the web when sharing SharePhotoContent");
            }
        }
    }

    /* renamed from: BD$for, reason: invalid class name */
    public static class Cfor {
        /* renamed from: case, reason: not valid java name */
        public static void m163case(ShareVideo shareVideo) {
            Cnew cnew = BD.f218do;
            if (shareVideo == null) {
                throw new C3344mh("Cannot share a null ShareVideo");
            }
            Uri uri = shareVideo.f9477do;
            if (uri == null) {
                throw new C3344mh("ShareVideo does not have a LocalUrl specified");
            }
            if (!Utility.isContentUri(uri) && !Utility.isFileUri(uri)) {
                throw new C3344mh("ShareVideo must reference a video that is on the device");
            }
        }

        /* renamed from: do */
        public void mo159do(ShareLinkContent shareLinkContent) {
            C0173Do.m401try(shareLinkContent, "linkContent");
            Cnew cnew = BD.f218do;
            Uri uri = ((ShareContent) shareLinkContent).f9438do;
            if (uri != null && !Utility.isWebUri(uri)) {
                throw new C3344mh("Content Url must be an http:// or https:// url");
            }
        }

        /* renamed from: else */
        public void mo160else(ShareVideoContent shareVideoContent) {
            C0173Do.m401try(shareVideoContent, "videoContent");
            Cnew cnew = BD.f218do;
            m163case(shareVideoContent.f9482do);
            SharePhoto sharePhoto = shareVideoContent.f9481do;
            if (sharePhoto != null) {
                mo162new(sharePhoto);
            }
        }

        /* renamed from: for */
        public void mo161for(ShareMediaContent shareMediaContent) {
            C0173Do.m401try(shareMediaContent, "mediaContent");
            Cnew cnew = BD.f218do;
            List<ShareMedia<?, ?>> list = shareMediaContent.f9455if;
            if (list == null || list.isEmpty()) {
                throw new C3344mh("Must specify at least one medium in ShareMediaContent.");
            }
            if (list.size() > 6) {
                String format = String.format(Locale.ROOT, "Cannot add more than %d media.", Arrays.copyOf(new Object[]{6}, 1));
                C0173Do.m399new(format, "java.lang.String.format(locale, format, *args)");
                throw new C3344mh(format);
            }
            Iterator<ShareMedia<?, ?>> it = list.iterator();
            while (it.hasNext()) {
                m164if(it.next());
            }
        }

        /* renamed from: if, reason: not valid java name */
        public final void m164if(ShareMedia<?, ?> shareMedia) {
            C0173Do.m401try(shareMedia, "medium");
            Cnew cnew = BD.f218do;
            if (shareMedia instanceof SharePhoto) {
                mo162new((SharePhoto) shareMedia);
            } else if (shareMedia instanceof ShareVideo) {
                m163case((ShareVideo) shareMedia);
            } else {
                String format = String.format(Locale.ROOT, "Invalid media type: %s", Arrays.copyOf(new Object[]{shareMedia.getClass().getSimpleName()}, 1));
                C0173Do.m399new(format, "java.lang.String.format(locale, format, *args)");
                throw new C3344mh(format);
            }
        }

        /* renamed from: new */
        public void mo162new(SharePhoto sharePhoto) {
            C0173Do.m401try(sharePhoto, AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_PHOTO);
            Cnew cnew = BD.f218do;
            Bitmap bitmap = sharePhoto.f9463do;
            Uri uri = sharePhoto.f9464do;
            if (bitmap == null && uri == null) {
                throw new C3344mh("SharePhoto does not have a Bitmap or ImageUrl specified");
            }
            if (bitmap == null && Utility.isWebUri(uri)) {
                throw new C3344mh("Cannot set the ImageUrl of a SharePhoto to the Uri of an image on the web when sharing SharePhotoContent");
            }
            if (bitmap == null) {
                Utility utility = Utility.INSTANCE;
                if (Utility.isWebUri(uri)) {
                    return;
                }
            }
            Validate validate = Validate.INSTANCE;
            Validate.hasContentProvider(C3756th.m8299do());
        }

        /* renamed from: try, reason: not valid java name */
        public void mo165try(ShareStoryContent shareStoryContent) {
            BD.m157do(shareStoryContent, this);
        }
    }

    /* renamed from: BD$if, reason: invalid class name */
    public static final class Cif extends Cfor {
        @Override // defpackage.BD.Cfor
        /* renamed from: try */
        public final void mo165try(ShareStoryContent shareStoryContent) {
            BD.m157do(shareStoryContent, this);
        }
    }

    /* renamed from: BD$new, reason: invalid class name */
    public static final class Cnew extends Cfor {
        @Override // defpackage.BD.Cfor
        /* renamed from: else */
        public final void mo160else(ShareVideoContent shareVideoContent) {
            C0173Do.m401try(shareVideoContent, "videoContent");
            throw new C3344mh("Cannot share ShareVideoContent via web sharing dialogs");
        }

        @Override // defpackage.BD.Cfor
        /* renamed from: for */
        public final void mo161for(ShareMediaContent shareMediaContent) {
            C0173Do.m401try(shareMediaContent, "mediaContent");
            throw new C3344mh("Cannot share ShareMediaContent via web sharing dialogs");
        }

        @Override // defpackage.BD.Cfor
        /* renamed from: new */
        public final void mo162new(SharePhoto sharePhoto) {
            C0173Do.m401try(sharePhoto, AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_PHOTO);
            Cnew cnew = BD.f218do;
            if (sharePhoto.f9463do == null && sharePhoto.f9464do == null) {
                throw new C3344mh("SharePhoto does not have a Bitmap or ImageUrl specified");
            }
        }
    }

    static {
        new Cdo();
        f217do = new Cif();
    }

    /* renamed from: do, reason: not valid java name */
    public static final void m157do(ShareStoryContent shareStoryContent, Cfor cfor) {
        if (shareStoryContent != null) {
            SharePhoto sharePhoto = shareStoryContent.f9475do;
            ShareMedia<?, ?> shareMedia = shareStoryContent.f9474do;
            if (shareMedia != null || sharePhoto != null) {
                if (shareMedia != null) {
                    cfor.m164if(shareMedia);
                }
                if (sharePhoto != null) {
                    cfor.mo162new(sharePhoto);
                    return;
                }
                return;
            }
        }
        throw new C3344mh("Must pass the Facebook app a background asset, a sticker asset, or both");
    }

    /* renamed from: if, reason: not valid java name */
    public static void m158if(ShareContent shareContent, Cfor cfor) {
        if (shareContent == null) {
            throw new C3344mh("Must provide non-null content to share");
        }
        if (shareContent instanceof ShareLinkContent) {
            cfor.mo159do((ShareLinkContent) shareContent);
            return;
        }
        if (shareContent instanceof SharePhotoContent) {
            cfor.getClass();
            List<SharePhoto> list = ((SharePhotoContent) shareContent).f9471if;
            if (list == null || list.isEmpty()) {
                throw new C3344mh("Must specify at least one Photo in SharePhotoContent.");
            }
            if (list.size() > 6) {
                String format = String.format(Locale.ROOT, "Cannot add more than %d photos.", Arrays.copyOf(new Object[]{6}, 1));
                C0173Do.m399new(format, "java.lang.String.format(locale, format, *args)");
                throw new C3344mh(format);
            }
            Iterator<SharePhoto> it = list.iterator();
            while (it.hasNext()) {
                cfor.mo162new(it.next());
            }
            return;
        }
        if (shareContent instanceof ShareVideoContent) {
            cfor.mo160else((ShareVideoContent) shareContent);
            return;
        }
        if (shareContent instanceof ShareMediaContent) {
            cfor.mo161for((ShareMediaContent) shareContent);
            return;
        }
        if (shareContent instanceof ShareCameraEffectContent) {
            cfor.getClass();
            if (Utility.isNullOrEmpty(((ShareCameraEffectContent) shareContent).f9432const)) {
                throw new C3344mh("Must specify a non-empty effectId");
            }
        } else if (shareContent instanceof ShareStoryContent) {
            cfor.mo165try((ShareStoryContent) shareContent);
        }
    }
}
