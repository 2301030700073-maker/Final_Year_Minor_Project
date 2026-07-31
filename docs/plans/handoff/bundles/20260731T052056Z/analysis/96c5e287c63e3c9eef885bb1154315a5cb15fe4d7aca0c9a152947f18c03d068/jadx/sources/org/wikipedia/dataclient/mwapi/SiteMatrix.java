package org.wikipedia.dataclient.mwapi;

import coil3.util.ContextsKt;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonImpl;
import kotlinx.serialization.json.JsonObject;
import org.wikipedia.dataclient.watch.Watch$$ExternalSyntheticLambda0;
import org.wikipedia.json.JsonUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Serializable
/* loaded from: classes.dex */
public final class SiteMatrix extends MwResponse {
    public final JsonObject sitematrix;
    public static final Companion Companion = new Companion();
    public static final Lazy[] $childSerializers = {ContextsKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Watch$$ExternalSyntheticLambda0(7)), null, null};

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public static List getSites(SiteMatrix siteMatrix) {
            SiteInfo siteInfo;
            siteMatrix.getClass();
            JsonObject jsonObject = siteMatrix.sitematrix;
            ArrayList arrayList = null;
            if (jsonObject != null) {
                ArrayList arrayList2 = new ArrayList();
                for (Map.Entry entry : jsonObject.content.entrySet()) {
                    String str = (String) entry.getKey();
                    JsonElement jsonElement = (JsonElement) entry.getValue();
                    if (Intrinsics.areEqual(str, "count")) {
                        siteInfo = null;
                    } else {
                        JsonImpl jsonImpl = JsonUtil.json;
                        jsonImpl.getClass();
                        siteInfo = (SiteInfo) jsonImpl.decodeFromJsonElement(SiteInfo.Companion.serializer(), jsonElement);
                    }
                    if (siteInfo != null) {
                        arrayList2.add(siteInfo);
                    }
                }
                arrayList = arrayList2;
            }
            return arrayList == null ? EmptyList.INSTANCE : arrayList;
        }

        public final KSerializer serializer() {
            return SiteMatrix$$serializer.INSTANCE;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public final class SiteInfo {
        public static final Companion Companion = new Companion();
        public final String code;
        public final String localname;
        public final String name;

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Companion {
            public final KSerializer serializer() {
                return SiteMatrix$SiteInfo$$serializer.INSTANCE;
            }
        }

        public /* synthetic */ SiteInfo(int i, String str, String str2, String str3) {
            if ((i & 1) == 0) {
                this.code = "";
            } else {
                this.code = str;
            }
            if ((i & 2) == 0) {
                this.name = "";
            } else {
                this.name = str2;
            }
            if ((i & 4) == 0) {
                this.localname = "";
            } else {
                this.localname = str3;
            }
        }
    }

    public /* synthetic */ SiteMatrix(int i, List list, String str, JsonObject jsonObject) {
        super(i, str, list);
        if ((i & 4) == 0) {
            this.sitematrix = null;
        } else {
            this.sitematrix = jsonObject;
        }
    }
}
