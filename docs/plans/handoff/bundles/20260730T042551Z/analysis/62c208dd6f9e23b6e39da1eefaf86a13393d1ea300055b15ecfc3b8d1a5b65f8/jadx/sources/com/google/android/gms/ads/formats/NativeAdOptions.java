package com.google.android.gms.ads.formats;

import com.google.android.gms.ads.VideoOptions;

@Deprecated
/* loaded from: classes.dex */
public final class NativeAdOptions {
    public static final int ADCHOICES_BOTTOM_LEFT = 3;
    public static final int ADCHOICES_BOTTOM_RIGHT = 2;
    public static final int ADCHOICES_TOP_LEFT = 0;
    public static final int ADCHOICES_TOP_RIGHT = 1;
    public static final int NATIVE_MEDIA_ASPECT_RATIO_ANY = 1;
    public static final int NATIVE_MEDIA_ASPECT_RATIO_LANDSCAPE = 2;
    public static final int NATIVE_MEDIA_ASPECT_RATIO_PORTRAIT = 3;
    public static final int NATIVE_MEDIA_ASPECT_RATIO_SQUARE = 4;
    public static final int NATIVE_MEDIA_ASPECT_RATIO_UNKNOWN = 0;

    @Deprecated
    public static final int ORIENTATION_ANY = 0;

    @Deprecated
    public static final int ORIENTATION_LANDSCAPE = 2;

    @Deprecated
    public static final int ORIENTATION_PORTRAIT = 1;

    /* renamed from: do, reason: not valid java name */
    public final int f9543do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final VideoOptions f9544do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final boolean f9545do;

    /* renamed from: for, reason: not valid java name */
    public final int f9546for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public final boolean f9547for;

    /* renamed from: if, reason: not valid java name */
    public final int f9548if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final boolean f9549if;

    public @interface AdChoicesPlacement {
    }

    public static final class Builder {

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public VideoOptions f9551do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public boolean f9552do = false;

        /* renamed from: do, reason: not valid java name */
        public int f9550do = -1;

        /* renamed from: if, reason: not valid java name */
        public int f9555if = 0;

        /* renamed from: if, reason: not valid java name and collision with other field name */
        public boolean f9556if = false;

        /* renamed from: for, reason: not valid java name */
        public int f9553for = 1;

        /* renamed from: for, reason: not valid java name and collision with other field name */
        public boolean f9554for = false;

        public NativeAdOptions build() {
            return new NativeAdOptions(this);
        }

        public Builder setAdChoicesPlacement(@AdChoicesPlacement int i) {
            this.f9553for = i;
            return this;
        }

        @Deprecated
        public Builder setImageOrientation(int i) {
            this.f9550do = i;
            return this;
        }

        public Builder setMediaAspectRatio(@NativeMediaAspectRatio int i) {
            this.f9555if = i;
            return this;
        }

        public Builder setRequestCustomMuteThisAd(boolean z) {
            this.f9554for = z;
            return this;
        }

        public Builder setRequestMultipleImages(boolean z) {
            this.f9556if = z;
            return this;
        }

        public Builder setReturnUrlsForImageAssets(boolean z) {
            this.f9552do = z;
            return this;
        }

        public Builder setVideoOptions(VideoOptions videoOptions) {
            this.f9551do = videoOptions;
            return this;
        }
    }

    public @interface NativeMediaAspectRatio {
    }

    public /* synthetic */ NativeAdOptions(Builder builder) {
        this.f9545do = builder.f9552do;
        this.f9543do = builder.f9550do;
        this.f9548if = builder.f9555if;
        this.f9549if = builder.f9556if;
        this.f9546for = builder.f9553for;
        this.f9544do = builder.f9551do;
        this.f9547for = builder.f9554for;
    }

    public int getAdChoicesPlacement() {
        return this.f9546for;
    }

    @Deprecated
    public int getImageOrientation() {
        return this.f9543do;
    }

    public int getMediaAspectRatio() {
        return this.f9548if;
    }

    public VideoOptions getVideoOptions() {
        return this.f9544do;
    }

    public boolean shouldRequestMultipleImages() {
        return this.f9549if;
    }

    public boolean shouldReturnUrlsForImageAssets() {
        return this.f9545do;
    }

    public final boolean zza() {
        return this.f9547for;
    }
}
