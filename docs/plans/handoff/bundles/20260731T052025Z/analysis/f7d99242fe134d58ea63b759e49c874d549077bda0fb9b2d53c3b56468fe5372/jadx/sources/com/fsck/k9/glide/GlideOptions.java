package com.fsck.k9.glide;

import android.content.res.Resources;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.Option;
import com.bumptech.glide.load.engine.DiskCacheStrategy$2;
import com.bumptech.glide.load.resource.bitmap.CenterCrop;
import com.bumptech.glide.load.resource.bitmap.DownsampleStrategy$None;
import com.bumptech.glide.request.BaseRequestOptions;
import com.bumptech.glide.request.RequestOptions;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class GlideOptions extends RequestOptions {
    @Override // com.bumptech.glide.request.BaseRequestOptions
    public final BaseRequestOptions apply(BaseRequestOptions baseRequestOptions) {
        return (GlideOptions) super.apply(baseRequestOptions);
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    public final BaseRequestOptions autoClone() {
        return (GlideOptions) super.autoClone();
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    /* renamed from: clone */
    public final BaseRequestOptions mo925clone() {
        return (GlideOptions) super.mo925clone();
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    public final BaseRequestOptions decode(Class cls) {
        return (GlideOptions) super.decode(cls);
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    public final BaseRequestOptions diskCacheStrategy(DiskCacheStrategy$2 diskCacheStrategy$2) {
        return (GlideOptions) super.diskCacheStrategy(diskCacheStrategy$2);
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    public final BaseRequestOptions downsample(DownsampleStrategy$None downsampleStrategy$None) {
        return (GlideOptions) set(DownsampleStrategy$None.OPTION, downsampleStrategy$None);
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    public final BaseRequestOptions error() {
        return (GlideOptions) super.error();
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    public final BaseRequestOptions lock() {
        this.isLocked = true;
        return this;
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    public final BaseRequestOptions optionalCenterCrop() {
        return (GlideOptions) super.optionalCenterCrop();
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    public final BaseRequestOptions optionalCenterInside() {
        return (GlideOptions) super.optionalCenterInside();
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    public final BaseRequestOptions optionalFitCenter() {
        return (GlideOptions) super.optionalFitCenter();
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    public final BaseRequestOptions override(int i, int i2) {
        return (GlideOptions) super.override(i, i2);
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    public final BaseRequestOptions placeholder() {
        return (GlideOptions) super.placeholder();
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    public final BaseRequestOptions priority() {
        return (GlideOptions) super.priority();
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    public final BaseRequestOptions set(Option option, Object obj) {
        return (GlideOptions) super.set(option, obj);
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    public final BaseRequestOptions signature(Key key) {
        return (GlideOptions) super.signature(key);
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    public final BaseRequestOptions skipMemoryCache() {
        return (GlideOptions) super.skipMemoryCache();
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    public final BaseRequestOptions theme(Resources.Theme theme) {
        return (GlideOptions) super.theme(theme);
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    public final BaseRequestOptions transform$1(CenterCrop centerCrop) {
        return (GlideOptions) transform(centerCrop, true);
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    public final BaseRequestOptions useAnimationPool() {
        return (GlideOptions) super.useAnimationPool();
    }

    public final GlideOptions apply(RequestOptions requestOptions) {
        return (GlideOptions) super.apply((BaseRequestOptions) requestOptions);
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    /* renamed from: clone */
    public final Object mo925clone() {
        return (GlideOptions) super.mo925clone();
    }
}
