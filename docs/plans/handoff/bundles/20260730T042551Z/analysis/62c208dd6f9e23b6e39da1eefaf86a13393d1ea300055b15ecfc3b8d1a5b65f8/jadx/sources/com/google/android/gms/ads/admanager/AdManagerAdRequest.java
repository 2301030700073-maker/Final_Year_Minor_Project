package com.google.android.gms.ads.admanager;

import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.ads.AbstractAdRequestBuilder;
import com.google.android.gms.ads.AdRequest;
import java.util.List;

/* loaded from: classes.dex */
public final class AdManagerAdRequest extends AdRequest {

    public static final class Builder extends AbstractAdRequestBuilder<Builder> {
        public Builder addCategoryExclusion(String str) {
            this.f9488do.zzn(str);
            return this;
        }

        @Override // com.google.android.gms.ads.AbstractAdRequestBuilder
        public final /* bridge */ /* synthetic */ Builder addCustomTargeting(String str, String str2) {
            addCustomTargeting2(str, str2);
            return this;
        }

        public AdManagerAdRequest build() {
            return new AdManagerAdRequest(this);
        }

        @Override // com.google.android.gms.ads.AbstractAdRequestBuilder
        public final /* bridge */ /* synthetic */ Builder self() {
            return this;
        }

        @Override // com.google.android.gms.ads.AbstractAdRequestBuilder
        public Builder self() {
            return this;
        }

        public Builder setPublisherProvidedId(String str) {
            this.f9488do.zzB(str);
            return this;
        }

        @Override // com.google.android.gms.ads.AbstractAdRequestBuilder
        /* renamed from: addCustomTargeting, reason: avoid collision after fix types in other method */
        public Builder addCustomTargeting2(String str, String str2) {
            this.f9488do.zzp(str, str2);
            return this;
        }

        @Override // com.google.android.gms.ads.AbstractAdRequestBuilder
        public final /* bridge */ /* synthetic */ Builder addCustomTargeting(String str, List list) {
            addCustomTargeting2(str, (List<String>) list);
            return this;
        }

        @Override // com.google.android.gms.ads.AbstractAdRequestBuilder
        /* renamed from: addCustomTargeting, reason: avoid collision after fix types in other method */
        public Builder addCustomTargeting2(String str, List<String> list) {
            if (list != null) {
                this.f9488do.zzp(str, TextUtils.join(",", list));
            }
            return this;
        }
    }

    public /* synthetic */ AdManagerAdRequest(Builder builder) {
        super(builder);
    }

    @Override // com.google.android.gms.ads.AdRequest
    public Bundle getCustomTargeting() {
        return this.f9496do.zze();
    }

    public String getPublisherProvidedId() {
        return this.f9496do.zzl();
    }
}
