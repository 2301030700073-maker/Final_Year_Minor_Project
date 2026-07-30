package com.google.android.gms.internal.ads;

import android.util.JsonReader;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.google.android.gms.ads.RequestConfiguration;

/* loaded from: classes.dex */
public final class zzfbq {
    private String zza;

    public zzfbq(JsonReader jsonReader) {
        char c;
        jsonReader.beginObject();
        String str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            int hashCode = nextName.hashCode();
            if (hashCode != -1724546052) {
                if (hashCode == 3059181 && nextName.equals("code")) {
                    c = 0;
                }
                c = 65535;
            } else {
                if (nextName.equals(ViewHierarchyConstants.DESC_KEY)) {
                    c = 1;
                }
                c = 65535;
            }
            if (c == 0) {
                jsonReader.nextInt();
            } else if (c != 1) {
                jsonReader.skipValue();
            } else {
                str = jsonReader.nextString();
            }
        }
        jsonReader.endObject();
        this.zza = str;
    }

    public final String zza() {
        return this.zza;
    }
}
