package com.braze.models.response;

import com.braze.managers.o0;
import com.braze.models.inappmessage.InAppMessageBase;
import com.braze.support.JsonUtils;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class g extends a {
    public final JSONObject c;
    public final d d;
    public final i e;
    public final c f;
    public final InAppMessageBase g;
    public final ArrayList h;
    public final m i;
    public final ArrayList j;
    public final JSONArray k;
    public final String l;
    public final JSONArray m;
    public final long n;
    public final JSONObject o;
    public final o0 p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00df  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0128  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0146  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0152  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0163  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x015c  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x014b  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00fa A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public g(com.braze.requests.n r16, com.braze.communication.d r17, com.braze.managers.m r18) {
        /*
            Method dump skipped, instructions count: 367
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.braze.models.response.g.<init>(com.braze.requests.n, com.braze.communication.d, com.braze.managers.m):void");
    }

    public static final String a(g gVar) {
        return "Encountered Exception processing Content Cards response: " + gVar.c;
    }

    public static final String b(g gVar) {
        return "Found " + gVar.h.size() + " triggered actions in server response.";
    }

    public static final String a(JSONObject jSONObject) {
        return "Got server config: " + JsonUtils.getPrettyPrintedString(jSONObject);
    }

    public static final String b(JSONObject jSONObject) {
        return "Encountered Exception processing server config: " + jSONObject;
    }
}
