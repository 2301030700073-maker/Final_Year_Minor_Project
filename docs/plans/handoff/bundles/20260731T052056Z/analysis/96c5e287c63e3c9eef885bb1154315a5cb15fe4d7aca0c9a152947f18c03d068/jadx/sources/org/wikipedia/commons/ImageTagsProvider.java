package org.wikipedia.commons;

import android.location.Location;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.collections.EmptyList;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonImpl;
import org.wikipedia.dataclient.wikidata.Claims;
import org.wikipedia.json.JsonUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ImageTagsProvider {
    public static final ImageTagsProvider INSTANCE = new ImageTagsProvider();

    public static List getDepictsClaims(Map map) {
        String str;
        Claims.DataValue dataValue;
        map.getClass();
        List list = (List) map.get("P180");
        ArrayList arrayList = null;
        if (list != null) {
            ArrayList arrayList2 = new ArrayList();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                Claims.MainSnak mainSnak = ((Claims.Claim) it.next()).mainSnak;
                if (mainSnak == null || (dataValue = mainSnak.dataValue) == null) {
                    str = null;
                } else {
                    String str2 = dataValue.type;
                    JsonElement jsonElement = dataValue.value;
                    str = "";
                    if (jsonElement != null) {
                        if ("string".equals(str2)) {
                            str = jsonElement.toString();
                        } else if ("wikibase-entityid".equals(str2)) {
                            JsonImpl jsonImpl = JsonUtil.json;
                            jsonImpl.getClass();
                            str = ((Claims.EntityIdValue) jsonImpl.decodeFromJsonElement(Claims.EntityIdValue.Companion.serializer(), jsonElement)).id;
                        } else if ("time".equals(str2)) {
                            JsonImpl jsonImpl2 = JsonUtil.json;
                            jsonImpl2.getClass();
                            str = ((Claims.TimeValue) jsonImpl2.decodeFromJsonElement(Claims.TimeValue.Companion.serializer(), jsonElement)).time;
                        } else if ("monolingualtext".equals(str2)) {
                            JsonImpl jsonImpl3 = JsonUtil.json;
                            jsonImpl3.getClass();
                            str = ((Claims.MonolingualTextValue) jsonImpl3.decodeFromJsonElement(Claims.MonolingualTextValue.Companion.serializer(), jsonElement)).text;
                        } else if ("globecoordinate".equals(str2)) {
                            JsonImpl jsonImpl4 = JsonUtil.json;
                            jsonImpl4.getClass();
                            Claims.GlobeCoordinateValue globeCoordinateValue = (Claims.GlobeCoordinateValue) jsonImpl4.decodeFromJsonElement(Claims.GlobeCoordinateValue.Companion.serializer(), jsonElement);
                            globeCoordinateValue.getClass();
                            Location location = new Location("");
                            location.setLatitude(globeCoordinateValue.latitude);
                            location.setLongitude(globeCoordinateValue.longitude);
                            location.setAltitude(globeCoordinateValue.altitude);
                            str = location.toString();
                            str.getClass();
                        }
                    }
                }
                if (str != null) {
                    arrayList2.add(str);
                }
            }
            arrayList = arrayList2;
        }
        return arrayList == null ? EmptyList.INSTANCE : arrayList;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(9:0|1|(2:3|(6:5|6|7|(1:(1:(7:11|12|13|(4:17|(5:20|(1:31)(1:24)|(3:26|27|28)(1:30)|29|18)|32|33)|(2:38|39)|42|43)(2:44|45))(2:46|47))(3:59|60|(2:62|56))|48|(3:50|42|43)(5:51|(1:53)(1:58)|54|(6:57|13|(5:15|17|(1:18)|32|33)|(3:35|38|39)|42|43)|56)))|64|6|7|(0)(0)|48|(0)(0)) */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00c0 A[Catch: Exception -> 0x00ee, TryCatch #0 {Exception -> 0x00ee, blocks: (B:12:0x002b, B:13:0x00a7, B:15:0x00ad, B:17:0x00b1, B:18:0x00ba, B:20:0x00c0, B:22:0x00ca, B:24:0x00ce, B:27:0x00d8, B:35:0x00df, B:38:0x00e6, B:47:0x003a, B:48:0x0064, B:51:0x0074, B:54:0x0099, B:60:0x0041), top: B:7:0x0023 }] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0074 A[Catch: Exception -> 0x00ee, TryCatch #0 {Exception -> 0x00ee, blocks: (B:12:0x002b, B:13:0x00a7, B:15:0x00ad, B:17:0x00b1, B:18:0x00ba, B:20:0x00c0, B:22:0x00ca, B:24:0x00ce, B:27:0x00d8, B:35:0x00df, B:38:0x00e6, B:47:0x003a, B:48:0x0064, B:51:0x0074, B:54:0x0099, B:60:0x0041), top: B:7:0x0023 }] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x003e  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0025  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object getImageTags(int r13, java.lang.String r14, kotlin.coroutines.jvm.internal.ContinuationImpl r15) {
        /*
            Method dump skipped, instructions count: 241
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.commons.ImageTagsProvider.getImageTags(int, java.lang.String, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}
