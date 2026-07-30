package com.amazonaws;

import com.google.android.gms.ads.RequestConfiguration;
import defpackage.Creturn;
import java.util.EnumMap;

/* loaded from: classes.dex */
public final class RequestClientOptions {

    /* renamed from: do, reason: not valid java name */
    public final EnumMap f8692do = new EnumMap(Marker.class);

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class Marker {

        /* renamed from: do, reason: not valid java name */
        public static final Marker f8693do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public static final /* synthetic */ Marker[] f8694do;

        static {
            Marker marker = new Marker();
            f8693do = marker;
            f8694do = new Marker[]{marker};
        }

        public static Marker valueOf(String str) {
            return (Marker) Enum.valueOf(Marker.class, str);
        }

        public static Marker[] values() {
            return (Marker[]) f8694do.clone();
        }
    }

    /* renamed from: do, reason: not valid java name */
    public final void m4983do(String str) {
        EnumMap enumMap = this.f8692do;
        Marker marker = Marker.f8693do;
        String str2 = (String) enumMap.get(marker);
        if (str2 == null) {
            str2 = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        if (!str2.contains(str)) {
            str2 = Creturn.m7982new(str2, " ", str);
        }
        enumMap.put((EnumMap) marker, (Marker) str2);
    }
}
