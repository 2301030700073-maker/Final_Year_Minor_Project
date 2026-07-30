package com.google.android.gms.ads.mediation;

import android.os.Bundle;
import android.view.View;
import com.google.android.gms.ads.nativead.NativeAd;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public abstract class NativeAdMapper {

    /* renamed from: case, reason: not valid java name */
    public String f9928case;

    /* renamed from: do, reason: not valid java name */
    public float f9929do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Bundle f9930do = new Bundle();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public View f9931do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public NativeAd.Image f9932do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Double f9933do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public String f9934do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public List f9935do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f9936do;

    /* renamed from: for, reason: not valid java name */
    public String f9937for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public boolean f9938for;

    /* renamed from: if, reason: not valid java name */
    public View f9939if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public String f9940if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public boolean f9941if;

    /* renamed from: new, reason: not valid java name */
    public String f9942new;

    /* renamed from: try, reason: not valid java name */
    public String f9943try;

    public View getAdChoicesContent() {
        return this.f9931do;
    }

    public final String getAdvertiser() {
        return this.f9942new;
    }

    public final String getBody() {
        return this.f9940if;
    }

    public final String getCallToAction() {
        return this.f9937for;
    }

    public float getCurrentTime() {
        return 0.0f;
    }

    public float getDuration() {
        return 0.0f;
    }

    public final Bundle getExtras() {
        return this.f9930do;
    }

    public final String getHeadline() {
        return this.f9934do;
    }

    public final NativeAd.Image getIcon() {
        return this.f9932do;
    }

    public final List<NativeAd.Image> getImages() {
        return this.f9935do;
    }

    public float getMediaContentAspectRatio() {
        return this.f9929do;
    }

    public final boolean getOverrideClickHandling() {
        return this.f9938for;
    }

    public final boolean getOverrideImpressionRecording() {
        return this.f9941if;
    }

    public final String getPrice() {
        return this.f9928case;
    }

    public final Double getStarRating() {
        return this.f9933do;
    }

    public final String getStore() {
        return this.f9943try;
    }

    public void handleClick(View view) {
    }

    public boolean hasVideoContent() {
        return this.f9936do;
    }

    public void recordImpression() {
    }

    public void setAdChoicesContent(View view) {
        this.f9931do = view;
    }

    public final void setAdvertiser(String str) {
        this.f9942new = str;
    }

    public final void setBody(String str) {
        this.f9940if = str;
    }

    public final void setCallToAction(String str) {
        this.f9937for = str;
    }

    public final void setExtras(Bundle bundle) {
        this.f9930do = bundle;
    }

    public void setHasVideoContent(boolean z) {
        this.f9936do = z;
    }

    public final void setHeadline(String str) {
        this.f9934do = str;
    }

    public final void setIcon(NativeAd.Image image) {
        this.f9932do = image;
    }

    public final void setImages(List<NativeAd.Image> list) {
        this.f9935do = list;
    }

    public void setMediaContentAspectRatio(float f) {
        this.f9929do = f;
    }

    public void setMediaView(View view) {
        this.f9939if = view;
    }

    public final void setOverrideClickHandling(boolean z) {
        this.f9938for = z;
    }

    public final void setOverrideImpressionRecording(boolean z) {
        this.f9941if = z;
    }

    public final void setPrice(String str) {
        this.f9928case = str;
    }

    public final void setStarRating(Double d) {
        this.f9933do = d;
    }

    public final void setStore(String str) {
        this.f9943try = str;
    }

    public void trackViews(View view, Map<String, View> map, Map<String, View> map2) {
    }

    public void untrackView(View view) {
    }

    public final View zza() {
        return this.f9939if;
    }
}
