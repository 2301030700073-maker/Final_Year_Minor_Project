package com.fsck.k9.message.html;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import java.util.Map;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.text.Regex;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class UriMatcher {
    public static final Map SUPPORTED_URIS;
    public static final Regex URI_SCHEME;

    static {
        HttpUriParser httpUriParser = new HttpUriParser();
        GenericUriParser genericUriParser = new GenericUriParser();
        Map mapOf = MapsKt__MapsKt.mapOf(new Pair("http:", httpUriParser), new Pair("https:", httpUriParser), new Pair("mailto:", genericUriParser), new Pair("matrix:", genericUriParser), new Pair("rtsp:", httpUriParser), new Pair("xmpp:", genericUriParser));
        SUPPORTED_URIS = mapOf;
        URI_SCHEME = new Regex(CameraDevices$CC.m("(?:^|[\\s(\\n<])(", CollectionsKt.joinToString$default(mapOf.keySet(), "|", null, null, null, 62), ")"), 0);
    }
}
