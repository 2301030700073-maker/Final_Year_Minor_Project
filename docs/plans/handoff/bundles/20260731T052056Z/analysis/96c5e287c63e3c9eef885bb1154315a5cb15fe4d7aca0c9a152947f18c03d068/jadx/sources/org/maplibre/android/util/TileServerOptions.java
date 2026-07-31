package org.maplibre.android.util;

import android.os.Parcel;
import android.os.Parcelable;
import coil3.network.HttpException;
import org.maplibre.android.WellKnownTileServer;
import org.maplibre.android.util.DefaultStyle;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public class TileServerOptions implements Parcelable {
    public static final Parcelable.Creator<TileServerOptions> CREATOR = new DefaultStyle.AnonymousClass1(15);
    private String apiKeyParameterName;
    private boolean apiKeyRequired;
    private String baseURL;
    private String defaultStyle;
    private DefaultStyle[] defaultStyles;
    private String glyphsDomainName;
    private String glyphsTemplate;
    private String glyphsVersionPrefix;
    private String sourceDomainName;
    private String sourceTemplate;
    private String sourceVersionPrefix;
    private String spritesDomainName;
    private String spritesTemplate;
    private String spritesVersionPrefix;
    private String styleDomainName;
    private String styleTemplate;
    private String styleVersionPrefix;
    private String tileDomainName;
    private String tileTemplate;
    private String tileVersionPrefix;
    private String uriSchemeAlias;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: org.maplibre.android.util.TileServerOptions$2, reason: invalid class name */
    public abstract /* synthetic */ class AnonymousClass2 {
        public static final /* synthetic */ int[] $SwitchMap$org$maplibre$android$WellKnownTileServer;

        static {
            int[] iArr = new int[WellKnownTileServer.values().length];
            $SwitchMap$org$maplibre$android$WellKnownTileServer = iArr;
            try {
                iArr[WellKnownTileServer.Mapbox.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$maplibre$android$WellKnownTileServer[WellKnownTileServer.MapTiler.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$maplibre$android$WellKnownTileServer[WellKnownTileServer.MapLibre.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public TileServerOptions(Parcel parcel) {
        this.baseURL = parcel.readString();
        this.uriSchemeAlias = parcel.readString();
        this.sourceTemplate = parcel.readString();
        this.sourceDomainName = parcel.readString();
        this.sourceVersionPrefix = parcel.readString();
        this.styleTemplate = parcel.readString();
        this.styleDomainName = parcel.readString();
        this.styleVersionPrefix = parcel.readString();
        this.spritesTemplate = parcel.readString();
        this.spritesDomainName = parcel.readString();
        this.spritesVersionPrefix = parcel.readString();
        this.glyphsTemplate = parcel.readString();
        this.glyphsDomainName = parcel.readString();
        this.glyphsVersionPrefix = parcel.readString();
        this.tileTemplate = parcel.readString();
        this.tileDomainName = parcel.readString();
        this.tileVersionPrefix = parcel.readString();
        this.apiKeyParameterName = parcel.readString();
        this.apiKeyRequired = parcel.readByte() != 0;
        this.defaultStyle = parcel.readString();
        parcel.createTypedArray(DefaultStyle.CREATOR);
    }

    private static native TileServerOptions defaultConfiguration();

    public static TileServerOptions get(WellKnownTileServer wellKnownTileServer) {
        int i = AnonymousClass2.$SwitchMap$org$maplibre$android$WellKnownTileServer[wellKnownTileServer.ordinal()];
        if (i == 1) {
            return mapboxConfiguration();
        }
        if (i == 2) {
            return mapTilerConfiguration();
        }
        if (i == 3) {
            return mapLibreConfiguration();
        }
        throw new HttpException("Unknown tile server");
    }

    private static native TileServerOptions mapLibreConfiguration();

    private static native TileServerOptions mapTilerConfiguration();

    private static native TileServerOptions mapboxConfiguration();

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final DefaultStyle[] getDefaultStyles() {
        return this.defaultStyles;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.baseURL);
        parcel.writeString(this.uriSchemeAlias);
        parcel.writeString(this.sourceTemplate);
        parcel.writeString(this.sourceDomainName);
        parcel.writeString(this.sourceVersionPrefix);
        parcel.writeString(this.styleTemplate);
        parcel.writeString(this.styleDomainName);
        parcel.writeString(this.styleVersionPrefix);
        parcel.writeString(this.spritesTemplate);
        parcel.writeString(this.spritesDomainName);
        parcel.writeString(this.spritesVersionPrefix);
        parcel.writeString(this.glyphsTemplate);
        parcel.writeString(this.glyphsDomainName);
        parcel.writeString(this.glyphsVersionPrefix);
        parcel.writeString(this.tileTemplate);
        parcel.writeString(this.tileDomainName);
        parcel.writeString(this.tileVersionPrefix);
        parcel.writeString(this.apiKeyParameterName);
        parcel.writeByte(this.apiKeyRequired ? (byte) 1 : (byte) 0);
        parcel.writeString(this.defaultStyle);
        parcel.writeTypedArray(this.defaultStyles, 0);
    }

    public TileServerOptions(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, String str15, String str16, String str17, String str18, boolean z, String str19, DefaultStyle[] defaultStyleArr) {
        this.baseURL = str;
        this.uriSchemeAlias = str2;
        this.sourceTemplate = str3;
        this.sourceDomainName = str4;
        this.sourceVersionPrefix = str5;
        this.styleTemplate = str6;
        this.styleDomainName = str7;
        this.styleVersionPrefix = str8;
        this.spritesTemplate = str9;
        this.spritesDomainName = str10;
        this.spritesVersionPrefix = str11;
        this.glyphsTemplate = str12;
        this.glyphsDomainName = str13;
        this.glyphsVersionPrefix = str14;
        this.tileTemplate = str15;
        this.tileDomainName = str16;
        this.tileVersionPrefix = str17;
        this.apiKeyParameterName = str18;
        this.defaultStyles = defaultStyleArr;
        this.defaultStyle = str19;
        this.apiKeyRequired = z;
    }
}
