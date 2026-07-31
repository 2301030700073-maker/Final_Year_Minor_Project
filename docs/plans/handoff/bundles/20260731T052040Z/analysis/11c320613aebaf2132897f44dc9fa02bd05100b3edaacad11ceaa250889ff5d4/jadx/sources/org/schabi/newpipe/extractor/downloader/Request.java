package org.schabi.newpipe.extractor.downloader;

import j$.util.DesugarCollections;
import j$.util.Objects;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import org.schabi.newpipe.extractor.localization.Localization;
import org.schabi.newpipe.streams.WebMReader;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class Request {
    public final byte[] dataToSend;
    public final Map headers;
    public final String httpMethod;
    public final Localization localization;
    public final String url;

    public Request(WebMReader.Segment segment) {
        String str = (String) segment.info;
        String str2 = (String) segment.tracks;
        LinkedHashMap linkedHashMap = (LinkedHashMap) segment.currentCluster;
        byte[] bArr = (byte[]) segment.ref;
        Localization localization = (Localization) segment.this$0;
        boolean z = segment.firstClusterInSegment;
        Objects.requireNonNull(str, "Request's httpMethod is null");
        this.httpMethod = str;
        Objects.requireNonNull(str2, "Request's url is null");
        this.url = str2;
        this.dataToSend = bArr;
        this.localization = localization;
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        if (linkedHashMap != null) {
            linkedHashMap2.putAll(linkedHashMap);
        }
        if (z && localization != null) {
            String languageCode = localization.getLanguageCode();
            if (!localization.getCountryCode().isEmpty()) {
                languageCode = localization.getLocalizationCode() + ", " + languageCode + ";q=0.9";
            }
            linkedHashMap2.putAll(Collections.singletonMap("Accept-Language", Collections.singletonList(languageCode)));
        }
        this.headers = DesugarCollections.unmodifiableMap(linkedHashMap2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && Request.class == obj.getClass()) {
            Request request = (Request) obj;
            if (this.httpMethod.equals(request.httpMethod) && this.url.equals(request.url) && this.headers.equals(request.headers) && Arrays.equals(this.dataToSend, request.dataToSend) && Objects.equals(this.localization, request.localization)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(this.dataToSend) + (Objects.hash(this.httpMethod, this.url, this.headers, this.localization) * 31);
    }
}
