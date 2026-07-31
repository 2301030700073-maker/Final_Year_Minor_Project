package com.fsck.k9.glide;

import android.content.res.Resources;
import android.net.Uri;
import com.bumptech.glide.RequestBuilder;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.Option;
import com.bumptech.glide.load.engine.DiskCacheStrategy$2;
import com.bumptech.glide.load.resource.bitmap.CenterCrop;
import com.bumptech.glide.load.resource.bitmap.DownsampleStrategy$None;
import com.bumptech.glide.request.BaseRequestOptions;
import com.bumptech.glide.request.RequestFutureTarget;
import java.io.File;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class GlideRequest extends RequestBuilder {
    @Override // com.bumptech.glide.RequestBuilder
    public final RequestBuilder addListener(RequestFutureTarget requestFutureTarget) {
        return (GlideRequest) super.addListener(requestFutureTarget);
    }

    @Override // com.bumptech.glide.RequestBuilder, com.bumptech.glide.request.BaseRequestOptions
    public final RequestBuilder apply(BaseRequestOptions baseRequestOptions) {
        return (GlideRequest) super.apply(baseRequestOptions);
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    public final BaseRequestOptions centerCrop() {
        return (GlideRequest) super.centerCrop();
    }

    @Override // com.bumptech.glide.RequestBuilder, com.bumptech.glide.request.BaseRequestOptions
    /* renamed from: clone */
    public final RequestBuilder mo925clone() {
        return (GlideRequest) super.mo925clone();
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    public final BaseRequestOptions decode(Class cls) {
        return (GlideRequest) super.decode(cls);
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    public final BaseRequestOptions diskCacheStrategy(DiskCacheStrategy$2 diskCacheStrategy$2) {
        return (GlideRequest) super.diskCacheStrategy(diskCacheStrategy$2);
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    public final BaseRequestOptions dontAnimate() {
        return (GlideRequest) super.dontAnimate();
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    public final BaseRequestOptions downsample(DownsampleStrategy$None downsampleStrategy$None) {
        return (GlideRequest) set(DownsampleStrategy$None.OPTION, downsampleStrategy$None);
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    public final BaseRequestOptions error() {
        return (GlideRequest) super.error();
    }

    @Override // com.bumptech.glide.RequestBuilder
    public final RequestBuilder load(Object obj) {
        return (GlideRequest) loadGeneric(obj);
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    public final BaseRequestOptions lock() {
        this.isLocked = true;
        return this;
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    public final BaseRequestOptions optionalCenterCrop() {
        return (GlideRequest) super.optionalCenterCrop();
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    public final BaseRequestOptions optionalCenterInside() {
        return (GlideRequest) super.optionalCenterInside();
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    public final BaseRequestOptions optionalFitCenter() {
        return (GlideRequest) super.optionalFitCenter();
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    public final BaseRequestOptions override(int i, int i2) {
        return (GlideRequest) super.override(i, i2);
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    public final BaseRequestOptions placeholder() {
        return (GlideRequest) super.placeholder();
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    public final BaseRequestOptions priority() {
        return (GlideRequest) super.priority();
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    public final BaseRequestOptions set(Option option, Object obj) {
        return (GlideRequest) super.set(option, obj);
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    public final BaseRequestOptions signature(Key key) {
        return (GlideRequest) super.signature(key);
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    public final BaseRequestOptions skipMemoryCache() {
        return (GlideRequest) super.skipMemoryCache();
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    public final BaseRequestOptions theme(Resources.Theme theme) {
        return (GlideRequest) super.theme(theme);
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    public final BaseRequestOptions transform$1(CenterCrop centerCrop) {
        return (GlideRequest) transform(centerCrop, true);
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    public final BaseRequestOptions useAnimationPool() {
        return (GlideRequest) super.useAnimationPool();
    }

    @Override // com.bumptech.glide.RequestBuilder, com.bumptech.glide.request.BaseRequestOptions
    public final BaseRequestOptions apply(BaseRequestOptions baseRequestOptions) {
        return (GlideRequest) super.apply(baseRequestOptions);
    }

    @Override // com.bumptech.glide.RequestBuilder, com.bumptech.glide.request.BaseRequestOptions
    /* renamed from: clone */
    public final BaseRequestOptions mo925clone() {
        return (GlideRequest) super.mo925clone();
    }

    @Override // com.bumptech.glide.RequestBuilder
    public final RequestBuilder load(Uri uri) {
        return (GlideRequest) super.load(uri);
    }

    @Override // com.bumptech.glide.RequestBuilder, com.bumptech.glide.request.BaseRequestOptions
    /* renamed from: clone */
    public final Object mo925clone() {
        return (GlideRequest) super.mo925clone();
    }

    @Override // com.bumptech.glide.RequestBuilder
    public final RequestBuilder load(File file) {
        return (GlideRequest) loadGeneric(file);
    }
}
