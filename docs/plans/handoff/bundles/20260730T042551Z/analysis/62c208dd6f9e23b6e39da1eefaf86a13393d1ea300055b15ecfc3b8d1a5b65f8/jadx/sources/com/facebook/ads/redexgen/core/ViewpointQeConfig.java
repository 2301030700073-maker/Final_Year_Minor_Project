package com.facebook.ads.redexgen.core;

import com.facebook.kotlin.compilerplugins.dataclassgenerate.annotation.DataClassGenerate;
import com.google.android.gms.ads.RequestConfiguration;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\u0006\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\u0007\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\b\u001a\u00020\u00032\b\u0010\t\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\n\u001a\u00020\u000bHÖ\u0001J\t\u0010\f\u001a\u00020\rHÖ\u0001R\u0010\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lcom/instagram/common/viewpoint/core/ViewpointQeConfig;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "enableMultipleUsersPerManager", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "<init>", "(Z)V", "component1", "copy", "equals", "other", "hashCode", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "toString", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "fbandroid.java.com.instagram.common.viewpoint.core.core_an"}, k = 1, mv = {2, 0, 0}, xi = 48)
@DataClassGenerate
/* renamed from: com.facebook.ads.redexgen.X.Ni, reason: from Kotlin metadata */
/* loaded from: assets/audience_network.dex */
public final /* data */ class ViewpointQeConfig extends AbstractC1364Ll {
    public final boolean A00;

    public ViewpointQeConfig() {
        this(false, 1, null);
    }

    public final boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof ViewpointQeConfig) && this.A00 == ((ViewpointQeConfig) other).A00;
    }

    public final int hashCode() {
        return AbstractC1374Lv.A00(this.A00);
    }

    public final String toString() {
        return super.toString();
    }

    public ViewpointQeConfig(boolean z) {
        this.A00 = z;
    }

    public /* synthetic */ ViewpointQeConfig(boolean z, int i, AbstractC2547nl abstractC2547nl) {
        this((i & 1) != 0 ? false : z);
    }
}
