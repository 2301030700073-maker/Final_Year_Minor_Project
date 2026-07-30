package com.google.android.gms.ads.search;

import android.content.Context;
import android.os.Bundle;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.mediation.MediationAdapter;
import com.google.android.gms.ads.mediation.NetworkExtras;
import com.google.android.gms.ads.mediation.customevent.CustomEvent;

/* loaded from: classes.dex */
public final class DynamicHeightSearchAdRequest {

    /* renamed from: do, reason: not valid java name */
    public final SearchAdRequest f10132do;

    public static final class Builder {

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final zzb f10134do = new zzb();

        /* renamed from: do, reason: not valid java name */
        public final Bundle f10133do = new Bundle();

        public Builder addCustomEventExtrasBundle(Class<? extends CustomEvent> cls, Bundle bundle) {
            this.f10134do.zzb(cls, bundle);
            return this;
        }

        public Builder addNetworkExtras(NetworkExtras networkExtras) {
            this.f10134do.zzc(networkExtras);
            return this;
        }

        public Builder addNetworkExtrasBundle(Class<? extends MediationAdapter> cls, Bundle bundle) {
            this.f10134do.zzd(cls, bundle);
            return this;
        }

        public DynamicHeightSearchAdRequest build() {
            this.f10134do.zzd(AdMobAdapter.class, this.f10133do);
            return new DynamicHeightSearchAdRequest(this);
        }

        public Builder setAdBorderSelectors(String str) {
            this.f10133do.putString("csa_adBorderSelectors", str);
            return this;
        }

        public Builder setAdTest(boolean z) {
            this.f10133do.putString("csa_adtest", true != z ? "off" : "on");
            return this;
        }

        public Builder setAdjustableLineHeight(int i) {
            this.f10133do.putString("csa_adjustableLineHeight", Integer.toString(i));
            return this;
        }

        public Builder setAdvancedOptionValue(String str, String str2) {
            this.f10133do.putString(str, str2);
            return this;
        }

        public Builder setAttributionSpacingBelow(int i) {
            this.f10133do.putString("csa_attributionSpacingBelow", Integer.toString(i));
            return this;
        }

        public Builder setBorderSelections(String str) {
            this.f10133do.putString("csa_borderSelections", str);
            return this;
        }

        public Builder setChannel(String str) {
            this.f10133do.putString("csa_channel", str);
            return this;
        }

        public Builder setColorAdBorder(String str) {
            this.f10133do.putString("csa_colorAdBorder", str);
            return this;
        }

        public Builder setColorAdSeparator(String str) {
            this.f10133do.putString("csa_colorAdSeparator", str);
            return this;
        }

        public Builder setColorAnnotation(String str) {
            this.f10133do.putString("csa_colorAnnotation", str);
            return this;
        }

        public Builder setColorAttribution(String str) {
            this.f10133do.putString("csa_colorAttribution", str);
            return this;
        }

        public Builder setColorBackground(String str) {
            this.f10133do.putString("csa_colorBackground", str);
            return this;
        }

        public Builder setColorBorder(String str) {
            this.f10133do.putString("csa_colorBorder", str);
            return this;
        }

        public Builder setColorDomainLink(String str) {
            this.f10133do.putString("csa_colorDomainLink", str);
            return this;
        }

        public Builder setColorText(String str) {
            this.f10133do.putString("csa_colorText", str);
            return this;
        }

        public Builder setColorTitleLink(String str) {
            this.f10133do.putString("csa_colorTitleLink", str);
            return this;
        }

        public Builder setCssWidth(int i) {
            this.f10133do.putString("csa_width", Integer.toString(i));
            return this;
        }

        public Builder setDetailedAttribution(boolean z) {
            this.f10133do.putString("csa_detailedAttribution", Boolean.toString(z));
            return this;
        }

        public Builder setFontFamily(String str) {
            this.f10133do.putString("csa_fontFamily", str);
            return this;
        }

        public Builder setFontFamilyAttribution(String str) {
            this.f10133do.putString("csa_fontFamilyAttribution", str);
            return this;
        }

        public Builder setFontSizeAnnotation(int i) {
            this.f10133do.putString("csa_fontSizeAnnotation", Integer.toString(i));
            return this;
        }

        public Builder setFontSizeAttribution(int i) {
            this.f10133do.putString("csa_fontSizeAttribution", Integer.toString(i));
            return this;
        }

        public Builder setFontSizeDescription(int i) {
            this.f10133do.putString("csa_fontSizeDescription", Integer.toString(i));
            return this;
        }

        public Builder setFontSizeDomainLink(int i) {
            this.f10133do.putString("csa_fontSizeDomainLink", Integer.toString(i));
            return this;
        }

        public Builder setFontSizeTitle(int i) {
            this.f10133do.putString("csa_fontSizeTitle", Integer.toString(i));
            return this;
        }

        public Builder setHostLanguage(String str) {
            this.f10133do.putString("csa_hl", str);
            return this;
        }

        public Builder setIsClickToCallEnabled(boolean z) {
            this.f10133do.putString("csa_clickToCall", Boolean.toString(z));
            return this;
        }

        public Builder setIsLocationEnabled(boolean z) {
            this.f10133do.putString("csa_location", Boolean.toString(z));
            return this;
        }

        public Builder setIsPlusOnesEnabled(boolean z) {
            this.f10133do.putString("csa_plusOnes", Boolean.toString(z));
            return this;
        }

        public Builder setIsSellerRatingsEnabled(boolean z) {
            this.f10133do.putString("csa_sellerRatings", Boolean.toString(z));
            return this;
        }

        public Builder setIsSiteLinksEnabled(boolean z) {
            this.f10133do.putString("csa_siteLinks", Boolean.toString(z));
            return this;
        }

        public Builder setIsTitleBold(boolean z) {
            this.f10133do.putString("csa_titleBold", Boolean.toString(z));
            return this;
        }

        public Builder setIsTitleUnderlined(boolean z) {
            this.f10133do.putString("csa_noTitleUnderline", Boolean.toString(!z));
            return this;
        }

        public Builder setLocationColor(String str) {
            this.f10133do.putString("csa_colorLocation", str);
            return this;
        }

        public Builder setLocationFontSize(int i) {
            this.f10133do.putString("csa_fontSizeLocation", Integer.toString(i));
            return this;
        }

        public Builder setLongerHeadlines(boolean z) {
            this.f10133do.putString("csa_longerHeadlines", Boolean.toString(z));
            return this;
        }

        public Builder setNumber(int i) {
            this.f10133do.putString("csa_number", Integer.toString(i));
            return this;
        }

        public Builder setPage(int i) {
            this.f10133do.putString("csa_adPage", Integer.toString(i));
            return this;
        }

        public Builder setQuery(String str) {
            this.f10134do.zze(str);
            return this;
        }

        public Builder setStyleId(String str) {
            this.f10133do.putString("csa_styleId", str);
            return this;
        }

        public Builder setVerticalSpacing(int i) {
            this.f10133do.putString("csa_verticalSpacing", Integer.toString(i));
            return this;
        }
    }

    public /* synthetic */ DynamicHeightSearchAdRequest(Builder builder) {
        this.f10132do = new SearchAdRequest(builder.f10134do);
    }

    public <T extends CustomEvent> Bundle getCustomEventExtrasBundle(Class<T> cls) {
        return this.f10132do.getCustomEventExtrasBundle(cls);
    }

    public <T extends MediationAdapter> Bundle getNetworkExtrasBundle(Class<T> cls) {
        return this.f10132do.getNetworkExtrasBundle(cls);
    }

    public String getQuery() {
        return this.f10132do.getQuery();
    }

    public boolean isTestDevice(Context context) {
        return this.f10132do.isTestDevice(context);
    }
}
