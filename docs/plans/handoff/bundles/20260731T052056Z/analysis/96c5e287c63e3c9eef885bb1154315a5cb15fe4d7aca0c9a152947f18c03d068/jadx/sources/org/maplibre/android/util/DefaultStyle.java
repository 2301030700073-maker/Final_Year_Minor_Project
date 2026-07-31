package org.maplibre.android.util;

import android.graphics.Bitmap;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.location.Location;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.material.datepicker.DateValidatorPointForward;
import com.google.android.material.datepicker.Month;
import com.google.android.material.datepicker.SingleDateSelector;
import com.google.android.material.internal.ParcelableSparseArray;
import com.google.android.material.navigation.NavigationBarPresenter;
import java.util.ArrayList;
import org.maplibre.android.camera.CameraPosition;
import org.maplibre.android.geometry.LatLng;
import org.maplibre.android.geometry.LatLngBounds;
import org.maplibre.android.geometry.LatLngQuad;
import org.maplibre.android.geometry.LatLngSpan;
import org.maplibre.android.geometry.ProjectedMeters;
import org.maplibre.android.geometry.VisibleRegion;
import org.maplibre.android.location.LocationComponentOptions;
import org.maplibre.android.maps.MapLibreMapOptions;
import org.maplibre.android.offline.OfflineGeometryRegionDefinition;
import org.maplibre.android.offline.OfflineTilePyramidRegionDefinition;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.dataclient.discussiontools.ThreadItem;
import org.wikipedia.dataclient.page.PageSummary;
import org.wikipedia.feed.didyouknow.DidYouKnowCard;
import org.wikipedia.feed.didyouknow.DidYouKnowItem;
import org.wikipedia.feed.news.NewsItem;
import org.wikipedia.feed.topread.TopRead;
import org.wikipedia.feed.topread.TopReadCard;
import org.wikipedia.gallery.ArtistInfo;
import org.wikipedia.gallery.ExtMetadata;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public class DefaultStyle implements Parcelable {
    public static final Parcelable.Creator<DefaultStyle> CREATOR = new AnonymousClass1(0);
    private String name;
    private String url;
    private int version;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: org.maplibre.android.util.DefaultStyle$1, reason: invalid class name */
    public final class AnonymousClass1 implements Parcelable.Creator {
        public final /* synthetic */ int $r8$classId;

        public /* synthetic */ AnonymousClass1(int i) {
            this.$r8$classId = i;
        }

        @Override // android.os.Parcelable.Creator
        public final Object createFromParcel(Parcel parcel) {
            ArrayList arrayList = null;
            int i = 0;
            switch (this.$r8$classId) {
                case 0:
                    return new DefaultStyle(parcel);
                case 1:
                    return new DateValidatorPointForward(parcel.readLong());
                case 2:
                    return Month.create(parcel.readInt(), parcel.readInt());
                case 3:
                    SingleDateSelector singleDateSelector = new SingleDateSelector();
                    singleDateSelector.selectedItem = (Long) parcel.readValue(Long.class.getClassLoader());
                    return singleDateSelector;
                case 4:
                    NavigationBarPresenter.SavedState savedState = new NavigationBarPresenter.SavedState();
                    savedState.selectedItemId = parcel.readInt();
                    savedState.badgeSavedStates = (ParcelableSparseArray) parcel.readParcelable(NavigationBarPresenter.SavedState.class.getClassLoader());
                    return savedState;
                case 5:
                    parcel.getClass();
                    return new LatLng(parcel);
                case 6:
                    parcel.getClass();
                    LatLngBounds.Companion.getClass();
                    return new LatLngBounds(parcel.readDouble(), parcel.readDouble(), parcel.readDouble(), parcel.readDouble());
                case 7:
                    parcel.getClass();
                    return new LatLngQuad(new LatLng(parcel), new LatLng(parcel), new LatLng(parcel), new LatLng(parcel));
                case 8:
                    parcel.getClass();
                    LatLngSpan latLngSpan = new LatLngSpan();
                    latLngSpan.latitudeSpan = parcel.readDouble();
                    latLngSpan.longitudeSpan = parcel.readDouble();
                    return latLngSpan;
                case 9:
                    parcel.getClass();
                    ProjectedMeters projectedMeters = new ProjectedMeters();
                    projectedMeters.northing = parcel.readDouble();
                    projectedMeters.easting = parcel.readDouble();
                    return projectedMeters;
                case 10:
                    parcel.getClass();
                    return new VisibleRegion(parcel);
                case 11:
                    LocationComponentOptions locationComponentOptions = new LocationComponentOptions();
                    locationComponentOptions.accuracyAlpha = parcel.readFloat();
                    locationComponentOptions.accuracyColor = parcel.readInt();
                    locationComponentOptions.backgroundDrawableStale = parcel.readInt();
                    locationComponentOptions.backgroundStaleName = parcel.readString();
                    locationComponentOptions.foregroundDrawableStale = parcel.readInt();
                    locationComponentOptions.foregroundStaleName = parcel.readString();
                    locationComponentOptions.gpsDrawable = parcel.readInt();
                    locationComponentOptions.gpsName = parcel.readString();
                    locationComponentOptions.foregroundDrawable = parcel.readInt();
                    locationComponentOptions.foregroundName = parcel.readString();
                    locationComponentOptions.backgroundDrawable = parcel.readInt();
                    locationComponentOptions.backgroundName = parcel.readString();
                    locationComponentOptions.bearingDrawable = parcel.readInt();
                    locationComponentOptions.bearingName = parcel.readString();
                    locationComponentOptions.bearingTintColor = (Integer) parcel.readValue(Integer.class.getClassLoader());
                    locationComponentOptions.foregroundTintColor = (Integer) parcel.readValue(Integer.class.getClassLoader());
                    locationComponentOptions.backgroundTintColor = (Integer) parcel.readValue(Integer.class.getClassLoader());
                    locationComponentOptions.foregroundStaleTintColor = (Integer) parcel.readValue(Integer.class.getClassLoader());
                    locationComponentOptions.backgroundStaleTintColor = (Integer) parcel.readValue(Integer.class.getClassLoader());
                    locationComponentOptions.elevation = parcel.readFloat();
                    locationComponentOptions.enableStaleState = parcel.readByte() != 0;
                    locationComponentOptions.staleStateTimeout = parcel.readLong();
                    locationComponentOptions.padding = parcel.createIntArray();
                    locationComponentOptions.maxZoomIconScale = parcel.readFloat();
                    locationComponentOptions.minZoomIconScale = parcel.readFloat();
                    locationComponentOptions.trackingGesturesManagement = parcel.readByte() != 0;
                    locationComponentOptions.trackingInitialMoveThreshold = parcel.readFloat();
                    locationComponentOptions.trackingMultiFingerMoveThreshold = parcel.readFloat();
                    locationComponentOptions.trackingMultiFingerProtectedMoveArea = (RectF) parcel.readParcelable(RectF.class.getClassLoader());
                    locationComponentOptions.layerAbove = parcel.readString();
                    locationComponentOptions.layerBelow = parcel.readString();
                    locationComponentOptions.trackingAnimationDurationMultiplier = parcel.readFloat();
                    locationComponentOptions.compassAnimationEnabled = parcel.readByte() != 0;
                    locationComponentOptions.accuracyAnimationEnabled = parcel.readByte() != 0;
                    locationComponentOptions.pulseEnabled = (Boolean) parcel.readValue(Boolean.class.getClassLoader());
                    locationComponentOptions.pulseFadeEnabled = (Boolean) parcel.readValue(Boolean.class.getClassLoader());
                    locationComponentOptions.pulseColor = (Integer) parcel.readValue(Integer.class.getClassLoader());
                    locationComponentOptions.pulseSingleDuration = parcel.readFloat();
                    locationComponentOptions.pulseMaxRadius = parcel.readFloat();
                    locationComponentOptions.pulseAlpha = parcel.readFloat();
                    return locationComponentOptions;
                case 12:
                    MapLibreMapOptions mapLibreMapOptions = new MapLibreMapOptions();
                    mapLibreMapOptions.compassEnabled = true;
                    mapLibreMapOptions.fadeCompassFacingNorth = true;
                    mapLibreMapOptions.compassGravity = 8388661;
                    mapLibreMapOptions.logoEnabled = true;
                    mapLibreMapOptions.logoGravity = 8388691;
                    mapLibreMapOptions.attributionTintColor = -1;
                    mapLibreMapOptions.attributionEnabled = true;
                    mapLibreMapOptions.attributionGravity = 8388691;
                    mapLibreMapOptions.minZoom = 0.0d;
                    mapLibreMapOptions.maxZoom = 25.5d;
                    mapLibreMapOptions.minPitch = 0.0d;
                    mapLibreMapOptions.maxPitch = 60.0d;
                    mapLibreMapOptions.rotateGesturesEnabled = true;
                    mapLibreMapOptions.scrollGesturesEnabled = true;
                    mapLibreMapOptions.horizontalScrollGesturesEnabled = true;
                    mapLibreMapOptions.tiltGesturesEnabled = true;
                    mapLibreMapOptions.zoomGesturesEnabled = true;
                    mapLibreMapOptions.doubleTapGesturesEnabled = true;
                    mapLibreMapOptions.quickZoomGesturesEnabled = true;
                    mapLibreMapOptions.prefetchesTiles = true;
                    mapLibreMapOptions.prefetchZoomDelta = 4;
                    mapLibreMapOptions.zMediaOverlay = false;
                    mapLibreMapOptions.localIdeographFontFamilyEnabled = true;
                    mapLibreMapOptions.crossSourceCollisions = true;
                    mapLibreMapOptions.actionJournalEnabled = false;
                    mapLibreMapOptions.actionJournalPath = "";
                    mapLibreMapOptions.actionJournalLogFileSize = 1048576L;
                    mapLibreMapOptions.actionJournalLogFileCount = 5L;
                    mapLibreMapOptions.actionJournalRenderingReportInterval = 60;
                    mapLibreMapOptions.cameraPosition = (CameraPosition) parcel.readParcelable(CameraPosition.class.getClassLoader());
                    mapLibreMapOptions.debugActive = parcel.readByte() != 0;
                    mapLibreMapOptions.compassEnabled = parcel.readByte() != 0;
                    mapLibreMapOptions.compassGravity = parcel.readInt();
                    mapLibreMapOptions.compassMargins = parcel.createIntArray();
                    mapLibreMapOptions.fadeCompassFacingNorth = parcel.readByte() != 0;
                    Bitmap bitmap = (Bitmap) parcel.readParcelable(MapLibreMapOptions.class.getClassLoader());
                    if (bitmap != null) {
                        mapLibreMapOptions.compassImage = new BitmapDrawable(bitmap);
                    }
                    mapLibreMapOptions.logoEnabled = parcel.readByte() != 0;
                    mapLibreMapOptions.logoGravity = parcel.readInt();
                    mapLibreMapOptions.logoMargins = parcel.createIntArray();
                    mapLibreMapOptions.attributionEnabled = parcel.readByte() != 0;
                    mapLibreMapOptions.attributionGravity = parcel.readInt();
                    mapLibreMapOptions.attributionMargins = parcel.createIntArray();
                    mapLibreMapOptions.attributionTintColor = parcel.readInt();
                    mapLibreMapOptions.minZoom = parcel.readDouble();
                    mapLibreMapOptions.maxZoom = parcel.readDouble();
                    mapLibreMapOptions.minPitch = parcel.readDouble();
                    mapLibreMapOptions.maxPitch = parcel.readDouble();
                    mapLibreMapOptions.rotateGesturesEnabled = parcel.readByte() != 0;
                    mapLibreMapOptions.scrollGesturesEnabled = parcel.readByte() != 0;
                    mapLibreMapOptions.horizontalScrollGesturesEnabled = parcel.readByte() != 0;
                    mapLibreMapOptions.tiltGesturesEnabled = parcel.readByte() != 0;
                    mapLibreMapOptions.zoomGesturesEnabled = parcel.readByte() != 0;
                    mapLibreMapOptions.doubleTapGesturesEnabled = parcel.readByte() != 0;
                    mapLibreMapOptions.quickZoomGesturesEnabled = parcel.readByte() != 0;
                    mapLibreMapOptions.apiBaseUri = parcel.readString();
                    mapLibreMapOptions.textureMode = parcel.readByte() != 0;
                    mapLibreMapOptions.translucentTextureSurface = parcel.readByte() != 0;
                    mapLibreMapOptions.prefetchesTiles = parcel.readByte() != 0;
                    mapLibreMapOptions.prefetchZoomDelta = parcel.readInt();
                    mapLibreMapOptions.zMediaOverlay = parcel.readByte() != 0;
                    mapLibreMapOptions.localIdeographFontFamilyEnabled = parcel.readByte() != 0;
                    mapLibreMapOptions.localIdeographFontFamily = parcel.readString();
                    mapLibreMapOptions.localIdeographFontFamilies = parcel.createStringArray();
                    mapLibreMapOptions.pixelRatio = parcel.readFloat();
                    mapLibreMapOptions.foregroundLoadColor = parcel.readInt();
                    mapLibreMapOptions.crossSourceCollisions = parcel.readByte() != 0;
                    mapLibreMapOptions.actionJournalEnabled = parcel.readByte() != 0;
                    mapLibreMapOptions.actionJournalPath = parcel.readString();
                    mapLibreMapOptions.actionJournalLogFileSize = parcel.readLong();
                    mapLibreMapOptions.actionJournalLogFileCount = parcel.readLong();
                    mapLibreMapOptions.actionJournalRenderingReportInterval = parcel.readInt();
                    return mapLibreMapOptions;
                case IMAGE_VALUE:
                    parcel.getClass();
                    return new OfflineGeometryRegionDefinition(parcel);
                case LINEAR_PROGRESS_INDICATOR_VALUE:
                    parcel.getClass();
                    return new OfflineTilePyramidRegionDefinition(parcel);
                case 15:
                    return new TileServerOptions(parcel);
                case LAZY_VERTICAL_GRID_VALUE:
                    parcel.getClass();
                    return new WikiSite((Uri) parcel.readParcelable(WikiSite.class.getClassLoader()), parcel.readString());
                case VERTICAL_GRID_ITEM_VALUE:
                    parcel.getClass();
                    String readString = parcel.readString();
                    int readInt = parcel.readInt();
                    String readString2 = parcel.readString();
                    String readString3 = parcel.readString();
                    String readString4 = parcel.readString();
                    String readString5 = parcel.readString();
                    String readString6 = parcel.readString();
                    int readInt2 = parcel.readInt();
                    boolean z = parcel.readInt() != 0;
                    int readInt3 = parcel.readInt();
                    ArrayList arrayList2 = new ArrayList(readInt3);
                    while (i != readInt3) {
                        arrayList2.add(ThreadItem.CREATOR.createFromParcel(parcel));
                        i++;
                    }
                    return new ThreadItem(readString, readInt, readString2, readString3, readString4, readString5, readString6, readInt2, z, arrayList2, parcel.readString());
                case RADIO_GROUP_VALUE:
                    parcel.getClass();
                    PageSummary.NamespaceContainer createFromParcel = parcel.readInt() == 0 ? null : PageSummary.NamespaceContainer.CREATOR.createFromParcel(parcel);
                    PageSummary.Titles createFromParcel2 = parcel.readInt() == 0 ? null : PageSummary.Titles.CREATOR.createFromParcel(parcel);
                    String readString7 = parcel.readString();
                    PageSummary.Thumbnail createFromParcel3 = parcel.readInt() == 0 ? null : PageSummary.Thumbnail.CREATOR.createFromParcel(parcel);
                    String readString8 = parcel.readString();
                    String readString9 = parcel.readString();
                    PageSummary.Thumbnail createFromParcel4 = parcel.readInt() == 0 ? null : PageSummary.Thumbnail.CREATOR.createFromParcel(parcel);
                    String readString10 = parcel.readString();
                    String readString11 = parcel.readString();
                    String readString12 = parcel.readString();
                    Location location = (Location) parcel.readParcelable(PageSummary.class.getClassLoader());
                    String readString13 = parcel.readString();
                    int readInt4 = parcel.readInt();
                    long readLong = parcel.readLong();
                    String readString14 = parcel.readString();
                    long readLong2 = parcel.readLong();
                    long readLong3 = parcel.readLong();
                    if (parcel.readInt() != 0) {
                        int readInt5 = parcel.readInt();
                        arrayList = new ArrayList(readInt5);
                        while (i != readInt5) {
                            arrayList.add(PageSummary.ViewHistory.CREATOR.createFromParcel(parcel));
                            i++;
                        }
                    }
                    return new PageSummary(createFromParcel, createFromParcel2, readString7, createFromParcel3, readString8, readString9, createFromParcel4, readString10, readString11, readString12, location, readString13, readInt4, readLong, readString14, readLong2, readLong3, arrayList);
                case RADIO_BUTTON_VALUE:
                    parcel.getClass();
                    return new PageSummary.NamespaceContainer(parcel.readInt(), parcel.readString());
                case RADIO_ROW_VALUE:
                    parcel.getClass();
                    return new PageSummary.Thumbnail(parcel.readString(), parcel.readInt(), parcel.readInt());
                case RADIO_COLUMN_VALUE:
                    parcel.getClass();
                    return new PageSummary.Titles(parcel.readString(), parcel.readString());
                case SIZE_BOX_VALUE:
                    parcel.getClass();
                    return new PageSummary.ViewHistory(parcel.readString(), parcel.readFloat());
                case 23:
                    parcel.getClass();
                    int readInt6 = parcel.readInt();
                    ArrayList arrayList3 = new ArrayList(readInt6);
                    while (i != readInt6) {
                        arrayList3.add(DidYouKnowItem.CREATOR.createFromParcel(parcel));
                        i++;
                    }
                    return new DidYouKnowCard(arrayList3, parcel.readString(), WikiSite.CREATOR.createFromParcel(parcel));
                case 24:
                    parcel.getClass();
                    return new DidYouKnowItem(parcel.readString(), parcel.readString());
                case 25:
                    parcel.getClass();
                    String readString15 = parcel.readString();
                    int readInt7 = parcel.readInt();
                    ArrayList arrayList4 = new ArrayList(readInt7);
                    while (i != readInt7) {
                        arrayList4.add(parcel.readParcelable(NewsItem.class.getClassLoader()));
                        i++;
                    }
                    return new NewsItem(readString15, arrayList4);
                case 26:
                    parcel.getClass();
                    String readString16 = parcel.readString();
                    int readInt8 = parcel.readInt();
                    ArrayList arrayList5 = new ArrayList(readInt8);
                    while (i != readInt8) {
                        arrayList5.add(parcel.readParcelable(TopRead.class.getClassLoader()));
                        i++;
                    }
                    return new TopRead(readString16, arrayList5);
                case 27:
                    parcel.getClass();
                    return new TopReadCard(TopRead.CREATOR.createFromParcel(parcel), parcel.readInt(), WikiSite.CREATOR.createFromParcel(parcel));
                case 28:
                    parcel.getClass();
                    return new ArtistInfo(parcel.readString(), parcel.readString());
                default:
                    parcel.getClass();
                    return new ExtMetadata(parcel.readInt() == 0 ? null : ExtMetadata.Values.CREATOR.createFromParcel(parcel), parcel.readInt() == 0 ? null : ExtMetadata.Values.CREATOR.createFromParcel(parcel), parcel.readInt() == 0 ? null : ExtMetadata.Values.CREATOR.createFromParcel(parcel), parcel.readInt() == 0 ? null : ExtMetadata.Values.CREATOR.createFromParcel(parcel), parcel.readInt() == 0 ? null : ExtMetadata.Values.CREATOR.createFromParcel(parcel), parcel.readInt() == 0 ? null : ExtMetadata.Values.CREATOR.createFromParcel(parcel), parcel.readInt() == 0 ? null : ExtMetadata.Values.CREATOR.createFromParcel(parcel), parcel.readInt() == 0 ? null : ExtMetadata.Values.CREATOR.createFromParcel(parcel), parcel.readInt() != 0 ? ExtMetadata.Values.CREATOR.createFromParcel(parcel) : null);
            }
        }

        @Override // android.os.Parcelable.Creator
        public final Object[] newArray(int i) {
            switch (this.$r8$classId) {
                case 0:
                    return new DefaultStyle[i];
                case 1:
                    return new DateValidatorPointForward[i];
                case 2:
                    return new Month[i];
                case 3:
                    return new SingleDateSelector[i];
                case 4:
                    return new NavigationBarPresenter.SavedState[i];
                case 5:
                    return new LatLng[i];
                case 6:
                    return new LatLngBounds[i];
                case 7:
                    return new LatLngQuad[i];
                case 8:
                    return new LatLngSpan[i];
                case 9:
                    return new ProjectedMeters[i];
                case 10:
                    return new VisibleRegion[i];
                case 11:
                    return new LocationComponentOptions[i];
                case 12:
                    return new MapLibreMapOptions[i];
                case IMAGE_VALUE:
                    return new OfflineGeometryRegionDefinition[i];
                case LINEAR_PROGRESS_INDICATOR_VALUE:
                    return new OfflineTilePyramidRegionDefinition[i];
                case 15:
                    return new TileServerOptions[i];
                case LAZY_VERTICAL_GRID_VALUE:
                    return new WikiSite[i];
                case VERTICAL_GRID_ITEM_VALUE:
                    return new ThreadItem[i];
                case RADIO_GROUP_VALUE:
                    return new PageSummary[i];
                case RADIO_BUTTON_VALUE:
                    return new PageSummary.NamespaceContainer[i];
                case RADIO_ROW_VALUE:
                    return new PageSummary.Thumbnail[i];
                case RADIO_COLUMN_VALUE:
                    return new PageSummary.Titles[i];
                case SIZE_BOX_VALUE:
                    return new PageSummary.ViewHistory[i];
                case 23:
                    return new DidYouKnowCard[i];
                case 24:
                    return new DidYouKnowItem[i];
                case 25:
                    return new NewsItem[i];
                case 26:
                    return new TopRead[i];
                case 27:
                    return new TopReadCard[i];
                case 28:
                    return new ArtistInfo[i];
                default:
                    return new ExtMetadata[i];
            }
        }
    }

    public DefaultStyle(Parcel parcel) {
        this.url = parcel.readString();
        this.name = parcel.readString();
        this.version = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final String getName() {
        return this.name;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.url);
        parcel.writeString(this.name);
        parcel.writeInt(this.version);
    }

    public DefaultStyle(String str, String str2, int i) {
        this.url = str;
        this.name = str2;
        this.version = i;
    }
}
