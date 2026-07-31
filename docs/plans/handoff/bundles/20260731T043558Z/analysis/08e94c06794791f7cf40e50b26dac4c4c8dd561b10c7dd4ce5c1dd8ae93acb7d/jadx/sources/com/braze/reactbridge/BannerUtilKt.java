package com.braze.reactbridge;

import com.braze.models.Banner;
import com.facebook.react.bridge.Arguments;
import com.facebook.react.bridge.WritableArray;
import com.facebook.react.bridge.WritableMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: BannerUtil.kt */
@Metadata(d1 = {"\u0000\u001a\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u0014\u0010\u0000\u001a\u00020\u00012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u001a\u000e\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0004¨\u0006\b"}, d2 = {"mapBanners", "Lcom/facebook/react/bridge/WritableArray;", "bannersList", "", "Lcom/braze/models/Banner;", "mapBanner", "Lcom/facebook/react/bridge/WritableMap;", Banner.BANNER_KEY, "braze_react-native-sdk_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class BannerUtilKt {
    public static final WritableArray mapBanners(List<Banner> bannersList) {
        Intrinsics.checkNotNullParameter(bannersList, "bannersList");
        WritableArray createArray = Arguments.createArray();
        for (Banner banner : (Banner[]) bannersList.toArray(new Banner[0])) {
            createArray.pushMap(mapBanner(banner));
        }
        Intrinsics.checkNotNull(createArray);
        return createArray;
    }

    public static final WritableMap mapBanner(Banner banner) {
        Intrinsics.checkNotNullParameter(banner, "banner");
        WritableMap createMap = Arguments.createMap();
        createMap.putString("trackingId", banner.getTrackingId());
        createMap.putString("placementId", banner.getPlacementId());
        createMap.putBoolean("isTestSend", banner.getIsTestSend());
        createMap.putBoolean("isControl", banner.getIsControl());
        createMap.putString(Banner.HTML, banner.getHtml());
        createMap.putDouble("expiresAt", banner.getExpirationTimestampSeconds());
        Intrinsics.checkNotNull(createMap);
        return createMap;
    }
}
