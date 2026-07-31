package org.wikipedia.places;

import android.content.Intent;
import android.location.Location;
import android.os.Parcelable;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;
import androidx.compose.ui.unit.DpKt;
import com.google.android.material.button.MaterialButtonToggleGroup;
import java.util.Map;
import org.maplibre.android.plugins.annotation.SymbolManager;
import org.wikipedia.R;
import org.wikipedia.databinding.FragmentPlacesBinding;
import org.wikipedia.page.LinkMovementMethodExt;
import org.wikipedia.page.PageTitle;
import org.wikipedia.settings.Prefs;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class PlacesFragment$$ExternalSyntheticLambda1 implements LinkMovementMethodExt.UrlHandler, ActivityResultCallback {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ PlacesFragment f$0;

    public /* synthetic */ PlacesFragment$$ExternalSyntheticLambda1(PlacesFragment placesFragment, int i) {
        this.$r8$classId = i;
        this.f$0 = placesFragment;
    }

    @Override // androidx.activity.result.ActivityResultCallback
    public void onActivityResult(Object obj) {
        int i = this.$r8$classId;
        PlacesFragment placesFragment = this.f$0;
        switch (i) {
            case 0:
                PlacesFragment.locationPermissionRequest$lambda$0(placesFragment, (Map) obj);
                break;
            case 1:
            default:
                ActivityResult activityResult = (ActivityResult) obj;
                String[] strArr = PlacesFragment.CLUSTER_FONT_STACK;
                activityResult.getClass();
                if (activityResult.resultCode == -1) {
                    Intent intent = activityResult.data;
                    if (intent != null ? intent.getBooleanExtra("langChanged", false) : false) {
                        placesFragment.annotationCache.clear();
                        placesFragment.getViewModel().highlightedPageTitle = null;
                        SymbolManager symbolManager = placesFragment.symbolManager;
                        if (symbolManager != null) {
                            symbolManager.annotations.clear();
                            symbolManager.updateSource();
                        }
                        PlacesFragmentViewModel viewModel = placesFragment.getViewModel();
                        Location location = placesFragment.lastLocation;
                        double latitude = location != null ? location.getLatitude() : 0.0d;
                        Location location2 = placesFragment.lastLocation;
                        viewModel.fetchNearbyPages(latitude, location2 != null ? location2.getLongitude() : 0.0d, placesFragment.getSearchRadius());
                        placesFragment.goToLocation(placesFragment.lastLocation, placesFragment.lastZoom);
                        break;
                    }
                }
                break;
            case 2:
                ActivityResult activityResult2 = (ActivityResult) obj;
                String[] strArr2 = PlacesFragment.CLUSTER_FONT_STACK;
                activityResult2.getClass();
                Intent intent2 = activityResult2.data;
                if (activityResult2.resultCode == 97) {
                    Location location3 = intent2 != null ? (Location) ((Parcelable) DpKt.getParcelableExtra(intent2, "location", Location.class)) : null;
                    location3.getClass();
                    PageTitle pageTitle = intent2 != null ? (PageTitle) ((Parcelable) DpKt.getParcelableExtra(intent2, "returnLinkTitle", PageTitle.class)) : null;
                    pageTitle.getClass();
                    placesFragment.getViewModel().highlightedPageTitle = pageTitle;
                    Prefs prefs = Prefs.INSTANCE;
                    Prefs.setPlacesWikiCode(pageTitle.wikiSite.languageCode);
                    placesFragment.goToLocation(location3, 15.9d);
                    placesFragment.getViewModel().fetchNearbyPages(location3.getLatitude(), location3.getLongitude(), placesFragment.getSearchRadius());
                    break;
                }
                break;
        }
    }

    @Override // org.wikipedia.page.LinkMovementMethodExt.UrlHandler
    public void onUrlClick(String str) {
        String[] strArr = PlacesFragment.CLUSTER_FONT_STACK;
        FragmentPlacesBinding fragmentPlacesBinding = this.f$0._binding;
        fragmentPlacesBinding.getClass();
        ((MaterialButtonToggleGroup) fragmentPlacesBinding.viewButtonsGroup).checkInternal(R.id.mapViewButton, true);
    }
}
