package com.facebook.internal;

import android.content.Context;
import android.net.Uri;
import com.google.android.gms.ads.RequestConfiguration;
import defpackage.C0173Do;
import defpackage.C2819gd;
import defpackage.C3756th;
import java.util.Arrays;
import java.util.Locale;

/* loaded from: classes.dex */
public final class ImageRequest {
    private static final String ACCESS_TOKEN_PARAM = "access_token";
    public static final Companion Companion = new Companion(null);
    private static final String HEIGHT_PARAM = "height";
    private static final String MIGRATION_PARAM = "migration_overrides";
    private static final String MIGRATION_VALUE = "{october_2012:true}";
    private static final String PATH = "%s/%s/picture";
    public static final int UNSPECIFIED_DIMENSION = 0;
    private static final String WIDTH_PARAM = "width";
    private final boolean allowCachedRedirects;
    private final Callback callback;
    private final Object callerTag;
    private final Context context;
    private final Uri imageUri;

    public static final class Builder {
        private boolean allowCachedRedirects;
        private Callback callback;
        private Object callerTag;
        private final Context context;
        private final Uri imageUri;

        public Builder(Context context, Uri uri) {
            C0173Do.m401try(context, "context");
            C0173Do.m401try(uri, "imageUri");
            this.context = context;
            this.imageUri = uri;
        }

        private final Context component1() {
            return this.context;
        }

        private final Uri component2() {
            return this.imageUri;
        }

        public static /* synthetic */ Builder copy$default(Builder builder, Context context, Uri uri, int i, Object obj) {
            if ((i & 1) != 0) {
                context = builder.context;
            }
            if ((i & 2) != 0) {
                uri = builder.imageUri;
            }
            return builder.copy(context, uri);
        }

        public final ImageRequest build() {
            Context context = this.context;
            Uri uri = this.imageUri;
            Callback callback = this.callback;
            boolean z = this.allowCachedRedirects;
            Object obj = this.callerTag;
            if (obj == null) {
                obj = new Object();
            } else if (obj == null) {
                throw new IllegalStateException("Required value was null.".toString());
            }
            return new ImageRequest(context, uri, callback, z, obj, null);
        }

        public final Builder copy(Context context, Uri uri) {
            C0173Do.m401try(context, "context");
            C0173Do.m401try(uri, "imageUri");
            return new Builder(context, uri);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Builder)) {
                return false;
            }
            Builder builder = (Builder) obj;
            return C0173Do.m394do(this.context, builder.context) && C0173Do.m394do(this.imageUri, builder.imageUri);
        }

        public int hashCode() {
            return this.imageUri.hashCode() + (this.context.hashCode() * 31);
        }

        public final Builder setAllowCachedRedirects(boolean z) {
            this.allowCachedRedirects = z;
            return this;
        }

        public final Builder setCallback(Callback callback) {
            this.callback = callback;
            return this;
        }

        public final Builder setCallerTag(Object obj) {
            this.callerTag = obj;
            return this;
        }

        public String toString() {
            return "Builder(context=" + this.context + ", imageUri=" + this.imageUri + ')';
        }
    }

    public interface Callback {
        void onCompleted(ImageResponse imageResponse);
    }

    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(C2819gd c2819gd) {
            this();
        }

        public final Uri getProfilePictureUri(String str, int i, int i2) {
            return getProfilePictureUri(str, i, i2, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        }

        public final Uri getProfilePictureUri(String str, int i, int i2, String str2) {
            Validate.notNullOrEmpty(str, "userId");
            int max = Math.max(i, 0);
            int max2 = Math.max(i2, 0);
            if (!((max == 0 && max2 == 0) ? false : true)) {
                throw new IllegalArgumentException("Either width or height must be greater than 0".toString());
            }
            Uri.Builder buildUpon = Uri.parse(ServerProtocol.getGraphUrlBase()).buildUpon();
            String format = String.format(Locale.US, ImageRequest.PATH, Arrays.copyOf(new Object[]{C3756th.m8306try(), str}, 2));
            C0173Do.m399new(format, "java.lang.String.format(locale, format, *args)");
            Uri.Builder path = buildUpon.path(format);
            if (max2 != 0) {
                path.appendQueryParameter("height", String.valueOf(max2));
            }
            if (max != 0) {
                path.appendQueryParameter("width", String.valueOf(max));
            }
            path.appendQueryParameter(ImageRequest.MIGRATION_PARAM, ImageRequest.MIGRATION_VALUE);
            if (!Utility.isNullOrEmpty(str2)) {
                path.appendQueryParameter("access_token", str2);
            } else if (!Utility.isNullOrEmpty(C3756th.m8301for()) && !Utility.isNullOrEmpty(C3756th.m8303if())) {
                path.appendQueryParameter("access_token", C3756th.m8303if() + '|' + C3756th.m8301for());
            }
            Uri build = path.build();
            C0173Do.m399new(build, "builder.build()");
            return build;
        }
    }

    private ImageRequest(Context context, Uri uri, Callback callback, boolean z, Object obj) {
        this.context = context;
        this.imageUri = uri;
        this.callback = callback;
        this.allowCachedRedirects = z;
        this.callerTag = obj;
    }

    public /* synthetic */ ImageRequest(Context context, Uri uri, Callback callback, boolean z, Object obj, C2819gd c2819gd) {
        this(context, uri, callback, z, obj);
    }

    public static final Uri getProfilePictureUri(String str, int i, int i2) {
        return Companion.getProfilePictureUri(str, i, i2);
    }

    public static final Uri getProfilePictureUri(String str, int i, int i2, String str2) {
        return Companion.getProfilePictureUri(str, i, i2, str2);
    }

    public final boolean getAllowCachedRedirects() {
        return this.allowCachedRedirects;
    }

    public final Callback getCallback() {
        return this.callback;
    }

    public final Object getCallerTag() {
        return this.callerTag;
    }

    public final Context getContext() {
        return this.context;
    }

    public final Uri getImageUri() {
        return this.imageUri;
    }

    public final boolean isCachedRedirectAllowed() {
        return this.allowCachedRedirects;
    }
}
